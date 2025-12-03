@interface CPLEngineResourceDownloadTask
+ (void)initialize;
- (CPLEngineResourceDownloadTask)initWithResource:(id)resource taskIdentifier:(id)identifier target:(id)target launchHandler:(id)handler cancelHandler:(id)cancelHandler didStartHandler:(id)startHandler progressHandler:(id)progressHandler completionHandler:(id)self0;
- (CPLEngineTransportResourcesDownloadTask)transportTask;
- (NSData)transportScope;
- (void)associateCloudResource:(id)resource ofRecord:(id)record;
- (void)cancelTask;
- (void)noteActiveQueuesStatusAtEnqueingTime:(id)time;
- (void)noteStateDidProgress:(unint64_t)progress;
@end

@implementation CPLEngineResourceDownloadTask

- (CPLEngineTransportResourcesDownloadTask)transportTask
{
  WeakRetained = objc_loadWeakRetained(&self->_transportTask);

  return WeakRetained;
}

- (void)noteActiveQueuesStatusAtEnqueingTime:(id)time
{
  v4 = [time copy];
  activeQueuesStatusAtEnqueingTime = self->_activeQueuesStatusAtEnqueingTime;
  self->_activeQueuesStatusAtEnqueingTime = v4;

  MEMORY[0x1EEE66BB8](v4, activeQueuesStatusAtEnqueingTime);
}

- (void)noteStateDidProgress:(unint64_t)progress
{
  v45 = *MEMORY[0x1E69E9840];
  if ([(CPLEngineResourceDownloadTask *)self willGenerateReport])
  {
    v5 = [(NSMutableArray *)self->_stateProgressDates count];
    if (v5 >= progress)
    {
      v6 = v5;
      date = [MEMORY[0x1E695DF00] date];
      while (v6 <= progress)
      {
        [(NSMutableArray *)self->_stateProgressDates addObject:date];
        ++v6;
      }

      if (progress != 3)
      {
        goto LABEL_24;
      }

      resource = [(CPLResourceTransferTask *)self resource];
      v9 = [@"[launch]" mutableCopy];
      v10 = [(NSMutableArray *)self->_stateProgressDates objectAtIndexedSubscript:0];
      v11 = off_1E861CD38;
      for (i = 1; i != 4; ++i)
      {
        v13 = v10;
        v10 = [(NSMutableArray *)self->_stateProgressDates objectAtIndexedSubscript:i];
        [v10 timeIntervalSinceDate:v13];
        v14 = *v11++;
        [v9 appendFormat:@"-( %.1fs)-[%@]", v15, v14];
      }

      v16 = MEMORY[0x1E696AAF0];
      identity = [resource identity];
      v28 = [v16 stringFromByteCount:objc_msgSend(identity countStyle:{"fileSize"), 1}];

      v27 = +[CPLResource shortDescriptionForResourceType:](CPLResource, "shortDescriptionForResourceType:", [resource resourceType]);
      v18 = [(NSMutableArray *)self->_stateProgressDates objectAtIndexedSubscript:0];
      v26 = [CPLDateFormatter stringFromDate:v18];

      if (self->_preemptingCount)
      {
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n- Preempted %lu times", self->_preemptingCount];
      }

      else
      {
        v19 = &stru_1F57BD298;
      }

      if (self->_activeQueuesStatusAtEnqueingTime)
      {
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n- Competing tasks when enqueued:\n%@", self->_activeQueuesStatusAtEnqueingTime];
      }

      else
      {
        v20 = &stru_1F57BD298;
      }

      if (self->_transportIdentifier)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = __CPLProgressOSLogDomain();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            itemScopedIdentifier = [resource itemScopedIdentifier];
            transportIdentifier = self->_transportIdentifier;
            *buf = 138414082;
            v30 = v27;
            v31 = 2112;
            v32 = v28;
            v33 = 2112;
            v34 = itemScopedIdentifier;
            v35 = 2112;
            v36 = v9;
            v37 = 2112;
            v38 = v26;
            v39 = 2112;
            v40 = transportIdentifier;
            v41 = 2112;
            v42 = v20;
            v43 = 2112;
            v44 = v19;
            _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "[%@ (%@) %@]: %@ [launch: %@] [transport ID: %@]%@%@", buf, 0x52u);
          }

LABEL_22:
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLProgressOSLogDomain();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          itemScopedIdentifier2 = [resource itemScopedIdentifier];
          *buf = 138413826;
          v30 = v27;
          v31 = 2112;
          v32 = v28;
          v33 = 2112;
          v34 = itemScopedIdentifier2;
          v35 = 2112;
          v36 = v9;
          v37 = 2112;
          v38 = v26;
          v39 = 2112;
          v40 = v20;
          v41 = 2112;
          v42 = v19;
          _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "[%@ (%@) %@]: %@ [launch: %@]%@%@", buf, 0x48u);
        }

        goto LABEL_22;
      }

LABEL_24:
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)cancelTask
{
  v3.receiver = self;
  v3.super_class = CPLEngineResourceDownloadTask;
  [(CPLResourceTransferTask *)&v3 cancelTask];
  (*(self->_cancelHandler + 2))();
}

- (void)associateCloudResource:(id)resource ofRecord:(id)record
{
  resourceCopy = resource;
  recordCopy = record;
  cloudResource = self->_cloudResource;
  self->_cloudResource = resourceCopy;
  v10 = resourceCopy;

  cloudRecord = self->_cloudRecord;
  self->_cloudRecord = recordCopy;
}

- (NSData)transportScope
{
  transportScopeMapping = self->_transportScopeMapping;
  if (!transportScopeMapping)
  {
    __assert_rtn("[CPLEngineResourceDownloadTask transportScope]", "CPLEngineResourceDownloadTask.m", 95, "_transportScopeMapping");
  }

  itemScopedIdentifier = [(CPLResource *)self->_cloudResource itemScopedIdentifier];
  scopeIdentifier = [itemScopedIdentifier scopeIdentifier];
  v5 = [(CPLTransportScopeMapping *)transportScopeMapping objectForKeyedSubscript:scopeIdentifier];

  return v5;
}

- (CPLEngineResourceDownloadTask)initWithResource:(id)resource taskIdentifier:(id)identifier target:(id)target launchHandler:(id)handler cancelHandler:(id)cancelHandler didStartHandler:(id)startHandler progressHandler:(id)progressHandler completionHandler:(id)self0
{
  targetCopy = target;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  startHandlerCopy = startHandler;
  progressHandlerCopy = progressHandler;
  completionHandlerCopy = completionHandler;
  v56.receiver = self;
  v56.super_class = CPLEngineResourceDownloadTask;
  v23 = [(CPLResourceTransferTask *)&v56 initWithResource:resource taskIdentifier:identifier];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_target, target);
    if (_CPLEngineResourceDownloadTaskReportStateProgress == 1)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
      stateProgressDates = v24->_stateProgressDates;
      v24->_stateProgressDates = v25;

      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __150__CPLEngineResourceDownloadTask_initWithResource_taskIdentifier_target_launchHandler_cancelHandler_didStartHandler_progressHandler_completionHandler___block_invoke;
      v54[3] = &unk_1E861CCC8;
      v55 = handlerCopy;
      v27 = [v54 copy];
      launchHandler = v24->_launchHandler;
      v24->_launchHandler = v27;

      v29 = [cancelHandlerCopy copy];
      cancelHandler = v24->_cancelHandler;
      v24->_cancelHandler = v29;

      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __150__CPLEngineResourceDownloadTask_initWithResource_taskIdentifier_target_launchHandler_cancelHandler_didStartHandler_progressHandler_completionHandler___block_invoke_2;
      v52[3] = &unk_1E861CCC8;
      v53 = startHandlerCopy;
      v31 = [v52 copy];
      didStartHandler = v24->_didStartHandler;
      v24->_didStartHandler = v31;

      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __150__CPLEngineResourceDownloadTask_initWithResource_taskIdentifier_target_launchHandler_cancelHandler_didStartHandler_progressHandler_completionHandler___block_invoke_3;
      v50[3] = &unk_1E861CCF0;
      v51 = progressHandlerCopy;
      v33 = [v50 copy];
      progressHandler = v24->_progressHandler;
      v24->_progressHandler = v33;

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __150__CPLEngineResourceDownloadTask_initWithResource_taskIdentifier_target_launchHandler_cancelHandler_didStartHandler_progressHandler_completionHandler___block_invoke_4;
      v48[3] = &unk_1E861CD18;
      v49 = completionHandlerCopy;
      v35 = [v48 copy];
      completionHandler = v24->_completionHandler;
      v24->_completionHandler = v35;

      v37 = v55;
    }

    else
    {
      v38 = [handlerCopy copy];
      v39 = v24->_launchHandler;
      v24->_launchHandler = v38;

      v40 = [cancelHandlerCopy copy];
      v41 = v24->_cancelHandler;
      v24->_cancelHandler = v40;

      v42 = [startHandlerCopy copy];
      v43 = v24->_didStartHandler;
      v24->_didStartHandler = v42;

      v44 = [progressHandlerCopy copy];
      v45 = v24->_progressHandler;
      v24->_progressHandler = v44;

      v46 = [completionHandlerCopy copy];
      v37 = v24->_completionHandler;
      v24->_completionHandler = v46;
    }
  }

  return v24;
}

void __150__CPLEngineResourceDownloadTask_initWithResource_taskIdentifier_target_launchHandler_cancelHandler_didStartHandler_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 noteStateDidProgress:0];
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __150__CPLEngineResourceDownloadTask_initWithResource_taskIdentifier_target_launchHandler_cancelHandler_didStartHandler_progressHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 noteStateDidProgress:1];
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __150__CPLEngineResourceDownloadTask_initWithResource_taskIdentifier_target_launchHandler_cancelHandler_didStartHandler_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, float a3)
{
  v6 = a2;
  [v6 noteStateDidProgress:2];
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6, a3);
  }
}

void __150__CPLEngineResourceDownloadTask_initWithResource_taskIdentifier_target_launchHandler_cancelHandler_didStartHandler_progressHandler_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [v7 noteStateDidProgress:3];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    _CPLEngineResourceDownloadTaskReportStateProgress = [standardUserDefaults BOOLForKey:@"CPLReportDownloadStateProgress"];

    if (_CPLEngineResourceDownloadTaskReportStateProgress == 1 && (_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLProgressOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Will report high priority download stats", v4, 2u);
      }
    }
  }
}

@end