@interface BWInferenceSchedulerInference
- (BWInferenceCacheable)cacheable;
- (BWInferenceExecutable)executable;
- (BWInferencePropagatable)propagatable;
- (BWInferenceSchedulerInference)initWithInferenceRequirement:(id)requirement;
- (BWInferenceSharedResourcePreparatory)sharedResourcePreparator;
- (BWInferenceSubmittable)submittable;
- (NSString)customInferenceIdentifier;
- (NSString)description;
- (id)newStorage;
- (id)preventionReasonWithSampleBuffer:(opaqueCMSampleBuffer *)buffer executionTime:(id *)time;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler;
- (int)prepareForExecution;
- (int)prepareForExecutionWithSharedANEMemoryProvider:(id)provider;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)prepareForSubmissionWithWorkQueue:(id)queue sharedANEMemoryProvider:(id)provider;
- (int)reconcileWithPlaceholderProvider:(id)provider;
- (int)sharedResourceType;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation BWInferenceSchedulerInference

- (BWInferenceSchedulerInference)initWithInferenceRequirement:(id)requirement
{
  v11.receiver = self;
  v11.super_class = BWInferenceSchedulerInference;
  v4 = [(BWInferenceSchedulerInference *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_identifier = atomic_fetch_add(&sequentialUniqueID, 1uLL);
    provider = [requirement provider];
    v5->_provider = provider;
    if ([(BWInferenceProvider *)provider conformsToProtocol:&unk_1F2257088])
    {
      v7 = v5->_provider;
    }

    else
    {
      v7 = 0;
    }

    v5->_preventable = v7;
    [(BWInferenceProvider *)v7 mustExecuteWhenAllowed];
    v5->_mustExecuteWhenAllowed = 1;
    configuration = [requirement configuration];
    v5->_priority = [configuration priority];
    [configuration maximumFramesPerSecond];
    v5->_maximumFramesPerSecond = v9;
    v5->_propagatesFrameRatePrevention = [configuration propagatesFrameRatePrevention];
    atomic_store(0, &v5->_previousExecutionTimeInSeconds);
    v5->_inferenceType = [configuration inferenceType];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSchedulerInference;
  [(BWInferenceSchedulerInference *)&v3 dealloc];
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = BWInferenceSchedulerInference;
  return [(NSString *)[(BWInferenceSchedulerInference *)&v3 description] stringByAppendingFormat:@" provider: %@", self->_provider];
}

- (NSString)customInferenceIdentifier
{
  provider = [(BWInferenceSchedulerInference *)self provider];

  return [(BWInferenceProvider *)provider customInferenceIdentifier];
}

- (id)newStorage
{
  provider = [(BWInferenceSchedulerInference *)self provider];

  return [(BWInferenceProvider *)provider newStorage];
}

- (BWInferenceCacheable)cacheable
{
  if ([(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] cacheable])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (BWInferenceExecutable)executable
{
  if ([(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] executable])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (BWInferenceSubmittable)submittable
{
  if ([(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] submittable])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (BWInferenceSharedResourcePreparatory)sharedResourcePreparator
{
  if ([(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] sharedResourcePreparator])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (BWInferencePropagatable)propagatable
{
  provider = [(BWInferenceSchedulerInference *)self provider];

  return [(BWInferenceProvider *)provider propagatable];
}

- (int)reconcileWithPlaceholderProvider:(id)provider
{
  cacheable = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] cacheable];

  return [cacheable reconcileWithPlaceholderProvider:provider];
}

- (int)prepareForExecution
{
  executable = [(BWInferenceSchedulerInference *)self executable];
  if (executable)
  {
    executable2 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] executable];

    LODWORD(executable) = [executable2 prepareForExecution];
  }

  return executable;
}

uint64_t __104__BWInferenceSchedulerInference_executeOnSampleBuffer_usingStorage_withExecutionTime_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 32) + 48);
  v6 = *(a1 + 48);
  atomic_exchange(v4, COERCE_UNSIGNED_INT64(CMTimeGetSeconds(&v6)));
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 32));
  }

  return result;
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  submittable = [(BWInferenceSchedulerInference *)self submittable];
  if (submittable)
  {
    submittable2 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] submittable];

    LODWORD(submittable) = [submittable2 prepareForSubmissionWithWorkQueue:queue];
  }

  return submittable;
}

uint64_t __115__BWInferenceSchedulerInference_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 32) + 48);
  v6 = *(a1 + 48);
  atomic_exchange(v4, COERCE_UNSIGNED_INT64(CMTimeGetSeconds(&v6)));
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 32));
  }

  return result;
}

- (int)sharedResourceType
{
  sharedResourcePreparator = [(BWInferenceSchedulerInference *)self sharedResourcePreparator];
  if (sharedResourcePreparator)
  {
    sharedResourcePreparator2 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] sharedResourcePreparator];

    LODWORD(sharedResourcePreparator) = [sharedResourcePreparator2 sharedResourceType];
  }

  return sharedResourcePreparator;
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue sharedANEMemoryProvider:(id)provider
{
  sharedResourcePreparator = [(BWInferenceSchedulerInference *)self sharedResourcePreparator];
  if (sharedResourcePreparator)
  {
    sharedResourcePreparator2 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] sharedResourcePreparator];

    LODWORD(sharedResourcePreparator) = [sharedResourcePreparator2 prepareForSubmissionWithWorkQueue:queue sharedANEMemoryProvider:provider];
  }

  return sharedResourcePreparator;
}

- (int)prepareForExecutionWithSharedANEMemoryProvider:(id)provider
{
  sharedResourcePreparator = [(BWInferenceSchedulerInference *)self sharedResourcePreparator];
  if (sharedResourcePreparator)
  {
    sharedResourcePreparator2 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] sharedResourcePreparator];

    LODWORD(sharedResourcePreparator) = [sharedResourcePreparator2 prepareForExecutionWithSharedANEMemoryProvider:provider];
  }

  return sharedResourcePreparator;
}

- (id)preventionReasonWithSampleBuffer:(opaqueCMSampleBuffer *)buffer executionTime:(id *)time
{
  memset(&v19, 0, sizeof(v19));
  if (self)
  {
    [(BWInferenceSchedulerInference *)self previousExecutionTime];
  }

  if (self->_maximumFramesPerSecond > 0.00000011921 && (v19.flags & 1) != 0 && (time->var2 & 1) != 0 && (lhs = *time, v16 = v19, CMTimeSubtract(&time, &lhs, &v16), v7 = 0.949999999 / CMTimeGetSeconds(&time), self->_maximumFramesPerSecond < v7))
  {
    v15 = &BWInferencePreventionReasonFrameRate;
    if (!self->_propagatesFrameRatePrevention)
    {
      v15 = BWInferencePreventionReasonScheduling;
    }

    return *v15;
  }

  else
  {
    preventionReasons = [(BWInferenceProvider *)self->_provider preventionReasons];
    v9 = @"BlurryInputBuffer";
    if (![preventionReasons containsObject:@"BlurryInputBuffer"] || ((v10 = CMGetAttachment(buffer, *off_1E798A3C8, 0), v11 = objc_msgSend(objc_msgSend(v10, "objectForKeyedSubscript:", *off_1E798B0A8), "intValue"), objc_msgSend(objc_msgSend(v10, "objectForKeyedSubscript:", *off_1E798B320), "intValue") == 1) ? (v12 = v11 == 4) : (v12 = 1), v12))
    {
      v9 = @"FilteredInputBuffer";
      if (![preventionReasons containsObject:@"FilteredInputBuffer"] || (objc_msgSend(CMGetAttachment(buffer, @"FiltersApplied", 0), "BOOLValue") & 1) == 0)
      {
        preventable = self->_preventable;
        if (preventable)
        {
          time = *time;
          return [(BWInferencePreventable *)preventable preventionReasonWithSampleBuffer:buffer executionTime:&time];
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v9;
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler
{
  if (![(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] executable])
  {
    return -31710;
  }

  OUTLINED_FUNCTION_8_7();
  v16 = 3221225472;
  v17 = __104__BWInferenceSchedulerInference_executeOnSampleBuffer_usingStorage_withExecutionTime_completionHandler___block_invoke;
  v18 = &unk_1E799A000;
  v21 = *&time->var0;
  var3 = time->var3;
  selfCopy = self;
  handlerCopy = handler;
  v13 = *&time->var0;
  v14 = time->var3;
  return [v11 executeOnSampleBuffer:buffer usingStorage:storage withExecutionTime:&v13 completionHandler:v15];
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  submittable = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] submittable];
  if (![submittable submittable])
  {
    return -31710;
  }

  OUTLINED_FUNCTION_8_7();
  v18 = 3221225472;
  v19 = __115__BWInferenceSchedulerInference_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
  v20 = &unk_1E799A000;
  v23 = *&time->var0;
  var3 = time->var3;
  selfCopy = self;
  handlerCopy = handler;
  v15 = *&time->var0;
  v16 = time->var3;
  return [submittable submitForSampleBuffer:buffer usingStorage:storage withSubmissionTime:&v15 workQueue:queue completionHandler:v17];
}

@end