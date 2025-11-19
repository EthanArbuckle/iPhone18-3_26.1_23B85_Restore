@interface BWInferenceSchedulerInference
- (BWInferenceCacheable)cacheable;
- (BWInferenceExecutable)executable;
- (BWInferencePropagatable)propagatable;
- (BWInferenceSchedulerInference)initWithInferenceRequirement:(id)a3;
- (BWInferenceSharedResourcePreparatory)sharedResourcePreparator;
- (BWInferenceSubmittable)submittable;
- (NSString)customInferenceIdentifier;
- (NSString)description;
- (id)newStorage;
- (id)preventionReasonWithSampleBuffer:(opaqueCMSampleBuffer *)a3 executionTime:(id *)a4;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6;
- (int)prepareForExecution;
- (int)prepareForExecutionWithSharedANEMemoryProvider:(id)a3;
- (int)prepareForSubmissionWithWorkQueue:(id)a3;
- (int)prepareForSubmissionWithWorkQueue:(id)a3 sharedANEMemoryProvider:(id)a4;
- (int)reconcileWithPlaceholderProvider:(id)a3;
- (int)sharedResourceType;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7;
- (void)dealloc;
@end

@implementation BWInferenceSchedulerInference

- (BWInferenceSchedulerInference)initWithInferenceRequirement:(id)a3
{
  v11.receiver = self;
  v11.super_class = BWInferenceSchedulerInference;
  v4 = [(BWInferenceSchedulerInference *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_identifier = atomic_fetch_add(&sequentialUniqueID, 1uLL);
    v6 = [a3 provider];
    v5->_provider = v6;
    if ([(BWInferenceProvider *)v6 conformsToProtocol:&unk_1F2257088])
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
    v8 = [a3 configuration];
    v5->_priority = [v8 priority];
    [v8 maximumFramesPerSecond];
    v5->_maximumFramesPerSecond = v9;
    v5->_propagatesFrameRatePrevention = [v8 propagatesFrameRatePrevention];
    atomic_store(0, &v5->_previousExecutionTimeInSeconds);
    v5->_inferenceType = [v8 inferenceType];
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
  v2 = [(BWInferenceSchedulerInference *)self provider];

  return [(BWInferenceProvider *)v2 customInferenceIdentifier];
}

- (id)newStorage
{
  v2 = [(BWInferenceSchedulerInference *)self provider];

  return [(BWInferenceProvider *)v2 newStorage];
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
  v2 = [(BWInferenceSchedulerInference *)self provider];

  return [(BWInferenceProvider *)v2 propagatable];
}

- (int)reconcileWithPlaceholderProvider:(id)a3
{
  v4 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] cacheable];

  return [v4 reconcileWithPlaceholderProvider:a3];
}

- (int)prepareForExecution
{
  v3 = [(BWInferenceSchedulerInference *)self executable];
  if (v3)
  {
    v4 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] executable];

    LODWORD(v3) = [v4 prepareForExecution];
  }

  return v3;
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

- (int)prepareForSubmissionWithWorkQueue:(id)a3
{
  v5 = [(BWInferenceSchedulerInference *)self submittable];
  if (v5)
  {
    v6 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] submittable];

    LODWORD(v5) = [v6 prepareForSubmissionWithWorkQueue:a3];
  }

  return v5;
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
  v3 = [(BWInferenceSchedulerInference *)self sharedResourcePreparator];
  if (v3)
  {
    v4 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] sharedResourcePreparator];

    LODWORD(v3) = [v4 sharedResourceType];
  }

  return v3;
}

- (int)prepareForSubmissionWithWorkQueue:(id)a3 sharedANEMemoryProvider:(id)a4
{
  v7 = [(BWInferenceSchedulerInference *)self sharedResourcePreparator];
  if (v7)
  {
    v8 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] sharedResourcePreparator];

    LODWORD(v7) = [v8 prepareForSubmissionWithWorkQueue:a3 sharedANEMemoryProvider:a4];
  }

  return v7;
}

- (int)prepareForExecutionWithSharedANEMemoryProvider:(id)a3
{
  v5 = [(BWInferenceSchedulerInference *)self sharedResourcePreparator];
  if (v5)
  {
    v6 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] sharedResourcePreparator];

    LODWORD(v5) = [v6 prepareForExecutionWithSharedANEMemoryProvider:a3];
  }

  return v5;
}

- (id)preventionReasonWithSampleBuffer:(opaqueCMSampleBuffer *)a3 executionTime:(id *)a4
{
  memset(&v19, 0, sizeof(v19));
  if (self)
  {
    [(BWInferenceSchedulerInference *)self previousExecutionTime];
  }

  if (self->_maximumFramesPerSecond > 0.00000011921 && (v19.flags & 1) != 0 && (a4->var2 & 1) != 0 && (lhs = *a4, v16 = v19, CMTimeSubtract(&time, &lhs, &v16), v7 = 0.949999999 / CMTimeGetSeconds(&time), self->_maximumFramesPerSecond < v7))
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
    v8 = [(BWInferenceProvider *)self->_provider preventionReasons];
    v9 = @"BlurryInputBuffer";
    if (![v8 containsObject:@"BlurryInputBuffer"] || ((v10 = CMGetAttachment(a3, *off_1E798A3C8, 0), v11 = objc_msgSend(objc_msgSend(v10, "objectForKeyedSubscript:", *off_1E798B0A8), "intValue"), objc_msgSend(objc_msgSend(v10, "objectForKeyedSubscript:", *off_1E798B320), "intValue") == 1) ? (v12 = v11 == 4) : (v12 = 1), v12))
    {
      v9 = @"FilteredInputBuffer";
      if (![v8 containsObject:@"FilteredInputBuffer"] || (objc_msgSend(CMGetAttachment(a3, @"FiltersApplied", 0), "BOOLValue") & 1) == 0)
      {
        preventable = self->_preventable;
        if (preventable)
        {
          time = *a4;
          return [(BWInferencePreventable *)preventable preventionReasonWithSampleBuffer:a3 executionTime:&time];
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

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6
{
  if (![(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] executable])
  {
    return -31710;
  }

  OUTLINED_FUNCTION_8_7();
  v16 = 3221225472;
  v17 = __104__BWInferenceSchedulerInference_executeOnSampleBuffer_usingStorage_withExecutionTime_completionHandler___block_invoke;
  v18 = &unk_1E799A000;
  v21 = *&a5->var0;
  var3 = a5->var3;
  v19 = self;
  v20 = a6;
  v13 = *&a5->var0;
  v14 = a5->var3;
  return [v11 executeOnSampleBuffer:a3 usingStorage:a4 withExecutionTime:&v13 completionHandler:v15];
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7
{
  v13 = [(BWInferenceProvider *)[(BWInferenceSchedulerInference *)self provider] submittable];
  if (![v13 submittable])
  {
    return -31710;
  }

  OUTLINED_FUNCTION_8_7();
  v18 = 3221225472;
  v19 = __115__BWInferenceSchedulerInference_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
  v20 = &unk_1E799A000;
  v23 = *&a5->var0;
  var3 = a5->var3;
  v21 = self;
  v22 = a7;
  v15 = *&a5->var0;
  v16 = a5->var3;
  return [v13 submitForSampleBuffer:a3 usingStorage:a4 withSubmissionTime:&v15 workQueue:a6 completionHandler:v17];
}

@end