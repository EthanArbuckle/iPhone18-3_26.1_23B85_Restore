@interface MBStatefulEngine
- (BOOL)cancelWithError:(id)error;
- (BOOL)handleCancelation:(id *)cancelation;
- (BOOL)hasError;
- (MBRetryStrategy)retryStrategy;
- (MBStatefulEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager;
- (void)cleanUpAfterError:(id)error;
- (void)makeStateTransition;
- (void)performRetryablePhase:(id)phase;
- (void)replenishRetryTokens;
@end

@implementation MBStatefulEngine

- (MBStatefulEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager
{
  v8.receiver = self;
  v8.super_class = MBStatefulEngine;
  v5 = [(MBEngine *)&v8 initWithSettingsContext:context debugContext:debugContext domainManager:manager];
  v6 = v5;
  if (v5)
  {
    [(MBStatefulEngine *)v5 setShouldAdvanceState:1];
  }

  return v6;
}

- (BOOL)hasError
{
  engineError = [(MBStatefulEngine *)self engineError];
  v3 = engineError != 0;

  return v3;
}

- (BOOL)handleCancelation:(id *)cancelation
{
  isCanceled = [(MBEngine *)self isCanceled];
  if (isCanceled)
  {
    cancelError = [(MBEngine *)self cancelError];
    if (!cancelError)
    {
      __assert_rtn("[MBStatefulEngine handleCancelation:]", "MBStatefulEngine.m", 43, "cancelError");
    }

    v7 = cancelError;
    [(MBStatefulEngine *)self cleanUpAfterError:cancelError];
    if (cancelation)
    {
      v8 = v7;
      *cancelation = v7;
    }
  }

  return isCanceled;
}

- (BOOL)cancelWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = MBStatefulEngine;
  v4 = [(MBEngine *)&v7 cancelWithError:error];
  if (!v4)
  {
    retryStrategy = [(MBStatefulEngine *)self retryStrategy];
    [retryStrategy cancel];
  }

  return v4;
}

- (void)cleanUpAfterError:(id)error
{
  if (!self->_cleanedUp)
  {
    [(MBStatefulEngine *)self cleanUpOnceAfterError:error];
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

- (void)performRetryablePhase:(id)phase
{
  phaseCopy = phase;
  injectedError = [(MBStatefulEngine *)self injectedError];

  if (injectedError)
  {
    [(MBStatefulEngine *)self setIsFinished:1];
    injectedError2 = [(MBStatefulEngine *)self injectedError];
    [(MBStatefulEngine *)self setEngineError:injectedError2];

    injectedError3 = [(MBStatefulEngine *)self injectedError];
    [(MBStatefulEngine *)self cleanUpAfterError:injectedError3];
  }

  else
  {
    retryStrategy = [(MBStatefulEngine *)self retryStrategy];
    [retryStrategy reset];

    watchdog = [(MBEngine *)self watchdog];
    [watchdog resume];

    v10 = objc_autoreleasePoolPush();
    v36 = 0;
    v11 = [(MBStatefulEngine *)self handleCancelation:&v36];
    v12 = v36;
    if (v11)
    {
LABEL_4:
      [(MBStatefulEngine *)self setIsFinished:1, selfCopy2, v32];
      [(MBStatefulEngine *)self setEngineError:v12];
    }

    else
    {
      v13 = MBError_ptr;
      while (1)
      {
        v35 = 0;
        v14 = [(MBStatefulEngine *)self engineWillTransitionToNextState:&v35, selfCopy2, v32];
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
        v17 = phaseCopy[2](phaseCopy, &v34);
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
              selfCopy3 = v19;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
              v31 = v19;
              _MBLog();
            }
          }

          v13 = MBError_ptr;
        }

        retryStrategy2 = [(MBStatefulEngine *)self retryStrategy];
        v24 = [retryStrategy2 shouldRetryAfterError:v16];

        if ((v24 & 1) == 0)
        {
          break;
        }

        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Retrying transition for %{public}@ after error: %@", buf, 0x16u);
          selfCopy2 = self;
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
          selfCopy3 = self;
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
  retryStrategy = [(MBStatefulEngine *)self retryStrategy];
  [retryStrategy replenishRetryTokens];
}

- (MBRetryStrategy)retryStrategy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  retryStrategy = selfCopy->_retryStrategy;
  if (!retryStrategy)
  {
    v4 = [MBRetryStrategy alloc];
    debugContext = [(MBEngine *)selfCopy debugContext];
    v6 = [(MBRetryStrategy *)v4 initWithDebugContext:debugContext networkAvailabilityProvider:selfCopy engineMode:[(MBEngine *)selfCopy engineMode] restoreType:[(MBEngine *)selfCopy restoreType]];
    v7 = selfCopy->_retryStrategy;
    selfCopy->_retryStrategy = v6;

    retryStrategy = selfCopy->_retryStrategy;
  }

  v8 = retryStrategy;
  objc_sync_exit(selfCopy);

  return v8;
}

@end