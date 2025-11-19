@interface MBStatefulEngine
- (BOOL)cancelWithError:(id)a3;
- (BOOL)handleCancelation:(id *)a3;
- (BOOL)hasError;
- (MBRetryStrategy)retryStrategy;
- (MBStatefulEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4 domainManager:(id)a5;
- (void)cleanUpAfterError:(id)a3;
- (void)makeStateTransition;
- (void)performRetryablePhase:(id)a3;
- (void)replenishRetryTokens;
@end

@implementation MBStatefulEngine

- (MBStatefulEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4 domainManager:(id)a5
{
  v8.receiver = self;
  v8.super_class = MBStatefulEngine;
  v5 = [(MBEngine *)&v8 initWithSettingsContext:a3 debugContext:a4 domainManager:a5];
  v6 = v5;
  if (v5)
  {
    [(MBStatefulEngine *)v5 setShouldAdvanceState:1];
  }

  return v6;
}

- (BOOL)hasError
{
  v2 = [(MBStatefulEngine *)self engineError];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)handleCancelation:(id *)a3
{
  v5 = [(MBEngine *)self isCanceled];
  if (v5)
  {
    v6 = [(MBEngine *)self cancelError];
    if (!v6)
    {
      __assert_rtn("[MBStatefulEngine handleCancelation:]", "MBStatefulEngine.m", 43, "cancelError");
    }

    v7 = v6;
    [(MBStatefulEngine *)self cleanUpAfterError:v6];
    if (a3)
    {
      v8 = v7;
      *a3 = v7;
    }
  }

  return v5;
}

- (BOOL)cancelWithError:(id)a3
{
  v7.receiver = self;
  v7.super_class = MBStatefulEngine;
  v4 = [(MBEngine *)&v7 cancelWithError:a3];
  if (!v4)
  {
    v5 = [(MBStatefulEngine *)self retryStrategy];
    [v5 cancel];
  }

  return v4;
}

- (void)cleanUpAfterError:(id)a3
{
  if (!self->_cleanedUp)
  {
    [(MBStatefulEngine *)self cleanUpOnceAfterError:a3];
    self->_cleanedUp = 1;
  }
}

- (void)makeStateTransition
{
  if (![(MBStatefulEngine *)self isFinished]&& [(MBStatefulEngine *)self shouldAdvanceState])
  {

    [(MBStatefulEngine *)self makeStateTransition];
  }
}

- (void)performRetryablePhase:(id)a3
{
  v4 = a3;
  v5 = [(MBStatefulEngine *)self injectedError];

  if (v5)
  {
    [(MBStatefulEngine *)self setIsFinished:1];
    v6 = [(MBStatefulEngine *)self injectedError];
    [(MBStatefulEngine *)self setEngineError:v6];

    v7 = [(MBStatefulEngine *)self injectedError];
    [(MBStatefulEngine *)self cleanUpAfterError:v7];
  }

  else
  {
    v8 = [(MBStatefulEngine *)self retryStrategy];
    [v8 reset];

    v9 = [(MBEngine *)self watchdog];
    [v9 resume];

    v10 = objc_autoreleasePoolPush();
    v36 = 0;
    v11 = [(MBStatefulEngine *)self handleCancelation:&v36];
    v12 = v36;
    if (v11)
    {
LABEL_4:
      [(MBStatefulEngine *)self setIsFinished:1, v30, v32];
      [(MBStatefulEngine *)self setEngineError:v12];
    }

    else
    {
      v13 = MBError_ptr;
      while (1)
      {
        v35 = 0;
        v14 = [(MBStatefulEngine *)self engineWillTransitionToNextState:&v35, v30, v32];
        v15 = v35;
        v16 = v15;
        if ((v14 & 1) == 0)
        {
          [(MBStatefulEngine *)self setIsFinished:1];
          [(MBStatefulEngine *)self setEngineError:v16];
LABEL_20:
          v27 = v12;
          goto LABEL_21;
        }

        v34 = 0;
        v17 = v4[2](v4, &v34);
        v18 = v34;
        v16 = v18;
        if (v17)
        {
          goto LABEL_20;
        }

        if (!v18)
        {
          v19 = [v13[101] stringWithFormat:@"block returned NO without setting an out error: %@", self];
          if (MBIsInternalInstall())
          {
            v20 = v13;
            v21 = +[NSAssertionHandler currentHandler];
            v22 = [v20[101] stringWithUTF8String:"-[MBStatefulEngine performRetryablePhase:]"];
            [v21 handleFailureInFunction:v22 file:@"MBStatefulEngine.m" lineNumber:130 description:v19];
          }

          else
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v38 = v19;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
              v31 = v19;
              _MBLog();
            }
          }

          v13 = MBError_ptr;
        }

        v23 = [(MBStatefulEngine *)self retryStrategy];
        v24 = [v23 shouldRetryAfterError:v16];

        if ((v24 & 1) == 0)
        {
          break;
        }

        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v38 = self;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Retrying transition for %{public}@ after error: %@", buf, 0x16u);
          v30 = self;
          v32 = v16;
          _MBLog();
        }

        objc_autoreleasePoolPop(v10);
        v10 = objc_autoreleasePoolPush();
        v36 = 0;
        v26 = [(MBStatefulEngine *)self handleCancelation:&v36];
        v12 = v36;
        if (v26)
        {
          goto LABEL_4;
        }
      }

      v33 = v12;
      v28 = [(MBStatefulEngine *)self handleCancelation:&v33];
      v27 = v33;

      if (v28)
      {
        [(MBStatefulEngine *)self setIsFinished:1];
        [(MBStatefulEngine *)self setEngineError:v27];
      }

      else
      {
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v38 = self;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Not retrying transition for %{public}@ after error: %@", buf, 0x16u);
          _MBLog();
        }

        [(MBStatefulEngine *)self setIsFinished:1];
        [(MBStatefulEngine *)self setEngineError:v16];
        [(MBStatefulEngine *)self cleanUpAfterError:v16];
      }

LABEL_21:
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)replenishRetryTokens
{
  v2 = [(MBStatefulEngine *)self retryStrategy];
  [v2 replenishRetryTokens];
}

- (MBRetryStrategy)retryStrategy
{
  v2 = self;
  objc_sync_enter(v2);
  retryStrategy = v2->_retryStrategy;
  if (!retryStrategy)
  {
    v4 = [MBRetryStrategy alloc];
    v5 = [(MBEngine *)v2 debugContext];
    v6 = [(MBRetryStrategy *)v4 initWithDebugContext:v5 networkAvailabilityProvider:v2 engineMode:[(MBEngine *)v2 engineMode] restoreType:[(MBEngine *)v2 restoreType]];
    v7 = v2->_retryStrategy;
    v2->_retryStrategy = v6;

    retryStrategy = v2->_retryStrategy;
  }

  v8 = retryStrategy;
  objc_sync_exit(v2);

  return v8;
}

@end