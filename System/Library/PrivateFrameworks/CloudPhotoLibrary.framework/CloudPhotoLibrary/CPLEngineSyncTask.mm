@interface CPLEngineSyncTask
+ (id)taskWithEngineLibrary:(id)a3 session:(id)a4;
- (CPLEngineSyncTask)initWithEngineLibrary:(id)a3 session:(id)a4;
- (NSString)phaseDescription;
- (NSString)taskIdentifier;
- (id)description;
- (id)phaseDescriptionLastChangeDate:(id *)a3;
- (unint64_t)diskPressureState;
- (void)cancel;
- (void)launch;
- (void)launchTransportTask:(id)a3 withTransportGroup:(id)a4;
- (void)setPhaseDescription:(id)a3;
- (void)setThroughputReporter:(id)a3;
- (void)taskDidFinishWithError:(id)a3;
- (void)taskDidProgress:(float)a3 userInfo:(id)a4;
- (void)withThroughputReporter:(id)a3;
@end

@implementation CPLEngineSyncTask

- (void)launch
{
  v7 = *MEMORY[0x1E69E9840];
  [(CPLEngineSyncTask *)self withThroughputReporter:&__block_literal_global_15642];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLTaskOSLogDomain_15620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      v6 = self;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEBUG, "%@ launched", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v22 = 0;
  v3 = [(CPLEngineSyncTask *)self phaseDescriptionLastChangeDate:&v22];
  v4 = v22;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      [v4 timeIntervalSinceNow];
      if (v6 < -10.0)
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = objc_opt_class();
        v9 = [(CPLEngineSyncTask *)self taskIdentifier];
        v10 = [CPLDateFormatter stringForTimeIntervalAgo:v5 now:0];
        [v7 stringWithFormat:@"<%@ %@ %@ %@>", v8, v9, v3, v10];
        v16 = LABEL_9:;

        goto LABEL_12;
      }
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v9 = [(CPLEngineSyncTask *)self taskIdentifier];
    [v11 stringWithFormat:@"<%@ %@ %@>", v12, v9, v3];
  }

  else
  {
    if (v4)
    {
      [v4 timeIntervalSinceNow];
      if (v13 < -10.0)
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = objc_opt_class();
        v9 = [(CPLEngineSyncTask *)self taskIdentifier];
        v10 = [CPLDateFormatter stringForTimeIntervalAgo:v5 now:0];
        [v14 stringWithFormat:@"<%@ %@ %@>", v15, v9, v10, v21];
        goto LABEL_9;
      }
    }

    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v9 = [(CPLEngineSyncTask *)self taskIdentifier];
    [v17 stringWithFormat:@"<%@ %@>", v18, v9, v20];
  }
  v16 = ;
LABEL_12:

  return v16;
}

- (void)setPhaseDescription:(id)a3
{
  v4 = [a3 copy];
  os_unfair_lock_lock(&self->_phaseDescriptionLock);
  phaseDescription = self->_phaseDescription;
  self->_phaseDescription = v4;
  v6 = v4;

  v7 = [MEMORY[0x1E695DF00] date];
  lastChangeDateForPhaseDescription = self->_lastChangeDateForPhaseDescription;
  self->_lastChangeDateForPhaseDescription = v7;

  os_unfair_lock_unlock(&self->_phaseDescriptionLock);
}

- (NSString)phaseDescription
{
  os_unfair_lock_lock(&self->_phaseDescriptionLock);
  v3 = self->_phaseDescription;
  os_unfair_lock_unlock(&self->_phaseDescriptionLock);

  return v3;
}

- (id)phaseDescriptionLastChangeDate:(id *)a3
{
  os_unfair_lock_lock(&self->_phaseDescriptionLock);
  lastChangeDateForPhaseDescription = self->_lastChangeDateForPhaseDescription;
  v6 = self->_phaseDescription;
  v7 = lastChangeDateForPhaseDescription;
  os_unfair_lock_unlock(&self->_phaseDescriptionLock);
  v8 = v7;
  *a3 = v7;

  return v6;
}

- (void)taskDidProgress:(float)a3 userInfo:(id)a4
{
  v6 = a4;
  v8 = [(CPLEngineSyncTask *)self delegate];
  *&v7 = a3;
  [v8 task:self didProgress:v6 userInfo:v7];
}

- (void)taskDidFinishWithError:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_hasFinishedTask)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLTaskOSLogDomain_15620();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138412546;
        v16 = self;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "%@ called %@ twice", buf, 0x16u);
      }
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncTask.m"];
    v14 = NSStringFromSelector(a2);
    [v12 handleFailureInMethod:a2 object:self file:v13 lineNumber:111 description:{@"%@ called %@ twice", self, v14}];

    abort();
  }

  v6 = v5;
  self->_hasFinishedTask = 1;
  if (!v5)
  {
    if ([(CPLEngineSyncTask *)self isCancelled])
    {
      v6 = +[CPLErrors operationCancelledError];
    }

    else
    {
      v6 = 0;
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLTaskOSLogDomain_15620();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "%@ did finish with error: %@", buf, 0x16u);
    }
  }

  [(CPLEngineSyncTask *)self withThroughputReporter:&__block_literal_global_16_15627];
  v8 = [(CPLEngineSyncTask *)self delegate];
  [v8 task:self didFinishWithError:v6];

  [(CPLEngineSyncTask *)self setDelegate:0];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)withThroughputReporter:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __44__CPLEngineSyncTask_withThroughputReporter___block_invoke;
  v9 = &unk_1E861AA50;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_throughputReporterLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_throughputReporterLock);
}

uint64_t __44__CPLEngineSyncTask_withThroughputReporter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[4])
  {
    v3 = [v2 taskIdentifier];
    if ([v3 hasPrefix:@"engine.sync."])
    {
      v4 = [v3 substringFromIndex:12];

      v3 = v4;
    }

    v5 = [*(*(a1 + 32) + 72) makeThroughputReporterForCategory:v3];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    v8 = *(*(a1 + 32) + 32);
  }

  v9 = *(*(a1 + 40) + 16);

  return v9();
}

- (void)setThroughputReporter:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __43__CPLEngineSyncTask_setThroughputReporter___block_invoke;
  v9 = &unk_1E861B290;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_throughputReporterLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_throughputReporterLock);
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLTaskOSLogDomain_15620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      v6 = self;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEBUG, "%@ has been cancelled", &v5, 0xCu);
    }
  }

  [(CPLEngineSyncTask *)self _setCancelled:1];
  [(CPLEngineSyncTask *)self withThroughputReporter:&__block_literal_global_6_15640];
  v4 = *MEMORY[0x1E69E9840];
}

- (NSString)taskIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncTask.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:72 description:{@"%@ should be overridden by %@", v6, objc_opt_class()}];

  abort();
}

- (unint64_t)diskPressureState
{
  v2 = [(CPLEngineSyncTask *)self engineLibrary];
  v3 = [v2 systemMonitor];
  v4 = [v3 diskPressureState];

  return v4;
}

- (void)launchTransportTask:(id)a3 withTransportGroup:(id)a4
{
  v8 = a3;
  v6 = a4;
  [v8 setForeground:{-[CPLEngineSyncTask foreground](self, "foreground")}];
  [v8 setForcedTask:{-[CPLEngineSyncTask forceSync](self, "forceSync")}];
  [v8 setTransportUserIdentifier:self->_transportUserIdentifier];
  [v8 setTransportGroup:v6];

  v7 = [(CPLEngineSyncTask *)self session];
  [v8 runWithinSyncSession:v7];

  if ([(CPLEngineSyncTask *)self isCancelled])
  {
    [v8 cancel];
  }
}

- (CPLEngineSyncTask)initWithEngineLibrary:(id)a3 session:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CPLEngineSyncTask;
  v9 = [(CPLEngineSyncTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_engineLibrary, a3);
    objc_storeStrong(&v10->_session, a4);
    v10->_phaseDescriptionLock._os_unfair_lock_opaque = 0;
    v10->_throughputReporterLock._os_unfair_lock_opaque = 0;
    v11 = [MEMORY[0x1E695DF00] date];
    lastChangeDateForPhaseDescription = v10->_lastChangeDateForPhaseDescription;
    v10->_lastChangeDateForPhaseDescription = v11;
  }

  return v10;
}

+ (id)taskWithEngineLibrary:(id)a3 session:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithEngineLibrary:v7 session:v6];

  return v8;
}

@end