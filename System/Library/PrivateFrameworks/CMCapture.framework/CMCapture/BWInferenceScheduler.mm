@interface BWInferenceScheduler
- (BWInferenceScheduler)init;
- (int)performInferencesForConnection:(unint64_t)a3 usingInputSampleBuffer:(opaqueCMSampleBuffer *)a4 attachingResultsToSampleBuffer:(opaqueCMSampleBuffer *)a5 skippingInferencesWithTypes:(id)a6;
- (int)prepareForInferenceRequirements:(id)a3 dependencyProviderSource:(id)a4 formatProvider:(id)a5 pixelBufferPoolProvider:(id)a6 connection:(unint64_t)a7 backPressureDrivenPipelining:(BOOL)a8 processingConfiguration:(id)a9;
- (uint64_t)_processJobsFromFramebuffer:(uint64_t)a3 usingInputSampleBuffer:(uint64_t)a4 inferencePropagationHandler:(__int128 *)a5 atExecutionTime:(void *)a6 forConnection:;
- (uint64_t)_queueForJob:(void *)a3 fromConnection:;
- (unint64_t)registerInferenceConnectionWithEngineDescription:(id)a3;
- (void)dealloc;
- (void)unregisterInferenceConnection:(unint64_t)a3;
@end

@implementation BWInferenceScheduler

- (BWInferenceScheduler)init
{
  v9.receiver = self;
  v9.super_class = BWInferenceScheduler;
  v2 = [(BWInferenceScheduler *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_connectionsLock._os_unfair_lock_opaque = 0;
    v2->_connectionsByIdentifier = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:0];
    FigThreadGetMachThreadPriorityValue();
    inactive = dispatch_workloop_create_inactive("com.apple.coremedia.inference");
    v3->_inferenceWorkloop = inactive;
    dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(v3->_inferenceWorkloop);
    FigThreadGetMachThreadPriorityValue();
    v5 = dispatch_workloop_create_inactive("com.apple.coremedia.inference-scaling");
    v3->_scalingWorkloop = v5;
    dispatch_workloop_set_autorelease_frequency(v5, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(v3->_scalingWorkloop);
    FigThreadGetMachThreadPriorityValue();
    v6 = dispatch_workloop_create_inactive("com.apple.coremedia.inference-submission");
    v3->_submissionWorkloop = v6;
    dispatch_workloop_set_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(v3->_submissionWorkloop);
    FigThreadGetMachThreadPriorityValue();
    v7 = dispatch_workloop_create_inactive("com.apple.coremedia.inference-completion");
    v3->_completionWorkloop = v7;
    dispatch_workloop_set_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(v3->_completionWorkloop);
    v3->_metalSubmissionQueue = FigDispatchQueueCreateTargetingPThreadRootQueueWithPriority();
    v3->_metalCompletionQueue = FigDispatchQueueCreateTargetingPThreadRootQueueWithPriority();
    v3->_transientInferenceQueue = FigDispatchQueueCreateTargetingPThreadRootQueueWithPriority();
    v3->_sharedE5ANEMemoryProvider = objc_alloc_init(BWInferenceSharedE5ANEMemoryProvider);
  }

  return v3;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_connectionsLock);

  os_unfair_lock_unlock(&self->_connectionsLock);
  dispatch_release(self->_inferenceWorkloop);
  dispatch_release(self->_scalingWorkloop);
  dispatch_release(self->_submissionWorkloop);
  dispatch_release(self->_completionWorkloop);
  dispatch_release(self->_metalSubmissionQueue);
  dispatch_release(self->_metalCompletionQueue);
  dispatch_release(self->_transientInferenceQueue);

  v3.receiver = self;
  v3.super_class = BWInferenceScheduler;
  [(BWInferenceScheduler *)&v3 dealloc];
}

- (unint64_t)registerInferenceConnectionWithEngineDescription:(id)a3
{
  v4 = [[BWInferenceSchedulerConnection alloc] initWithInferenceTargetQueue:self->_inferenceWorkloop scalingTargetQueue:self->_scalingWorkloop submissionTargetQueue:self->_submissionWorkloop completionTargetQueue:self->_completionWorkloop engineDescription:a3];
  v5 = [(BWInferenceSchedulerConnection *)v4 identifier];
  os_unfair_lock_lock(&self->_connectionsLock);
  [(NSMapTable *)self->_connectionsByIdentifier setObject:v4 forKey:v5];
  os_unfair_lock_unlock(&self->_connectionsLock);

  return v5;
}

- (void)unregisterInferenceConnection:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_connectionsLock);
  [(NSMapTable *)self->_connectionsByIdentifier removeObjectForKey:a3];

  os_unfair_lock_unlock(&self->_connectionsLock);
}

uint64_t __137__BWInferenceScheduler_performInferencesForConnection_usingInputSampleBuffer_attachingResultsToSampleBuffer_skippingInferencesWithTypes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 32) objectForKey:a2];
  result = [a2 conformsToProtocol:&unk_1F2257088];
  if (!result)
  {
    goto LABEL_14;
  }

  if (!v6)
  {
    if ([*(a1 + 40) count] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(*(a1 + 40), "containsObject:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(a2, "inferenceType"))))
    {
      v6 = 0x1F219E590;
    }

    else
    {
      v8 = *(a1 + 72);
      v12 = *(a1 + 80);
      v13 = *(a1 + 96);
      v6 = [a2 preventionReasonWithSampleBuffer:v8 executionTime:&v12];
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    [*(a1 + 32) setObject:v6 forKey:a2];
  }

LABEL_9:
  if ([*(a1 + 32) objectForKey:a2] || (objc_msgSend(a2, "mustExecuteWhenAllowed") & 1) == 0)
  {
    v9 = 56;
  }

  else
  {
    v9 = 48;
  }

  result = [*(a1 + v9) unionSet:a3];
LABEL_14:
  if (v6)
  {
    v10 = [*(a1 + 64) graph];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __137__BWInferenceScheduler_performInferencesForConnection_usingInputSampleBuffer_attachingResultsToSampleBuffer_skippingInferencesWithTypes___block_invoke_2;
    v11[3] = &unk_1E799B5D0;
    v11[4] = *(a1 + 32);
    v11[5] = v6;
    return [v10 enumerateVideoDestinationsFromJob:a2 withBlock:v11];
  }

  return result;
}

uint64_t __137__BWInferenceScheduler_performInferencesForConnection_usingInputSampleBuffer_attachingResultsToSampleBuffer_skippingInferencesWithTypes___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *a2;
  v4 = [*(a1 + 32) objectForKey:*a2];
  v5 = [v3 conformsToProtocol:&unk_1F2257088];
  v6 = [*(a1 + 40) containsObject:v3];
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return (v7 | v6) & 1;
}

void __137__BWInferenceScheduler_performInferencesForConnection_usingInputSampleBuffer_attachingResultsToSampleBuffer_skippingInferencesWithTypes___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = 2;
  atomic_compare_exchange_strong((a2 + 22), &v4, 3u);
  if (v4 == 2)
  {
    v24[16] = v2;
    v24[17] = v3;
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = [*a2 propagatable];
    v10 = [*(a1 + 32) graph];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __137__BWInferenceScheduler_performInferencesForConnection_usingInputSampleBuffer_attachingResultsToSampleBuffer_skippingInferencesWithTypes___block_invoke_5;
    v24[3] = &unk_1E799B5D0;
    v24[4] = *(a1 + 32);
    v24[5] = v8;
    [v10 enumerateVideoDestinationsFromJob:v7 withBlock:v24];
    if (v9)
    {
      v11 = [*(a1 + 40) objectForKey:v7];
      if (([v11 isEqualToString:@"Scheduling"] & 1) == 0)
      {
        v12 = [v7 type];
        v13 = [v8 inferenceStorage];
        if (v11 || (v14 = v13, ([*(a1 + 48) containsObject:v7] & 1) != 0))
        {
          v15 = [BWInferenceResult alloc];
          v22 = *(a1 + 80);
          v23 = *(a1 + 96);
          v16 = [(BWInferenceResult *)v15 initWithInferenceType:v12 preventionReason:v11 atTimestamp:&v22];
        }

        else
        {
          v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v9 propagateInferenceResultsToInferenceDictionary:v17 usingStorage:v14 inputSampleBuffer:*(a1 + 64) propagationSampleBuffer:*(a1 + 72)];
          if (v12 == 104)
          {
            v18 = [*(a1 + 56) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 104)}];
            v19 = [objc_msgSend(v18 "inferences")];
            v20 = [objc_msgSend(v18 "inferences")];
            if (v19 && ![v17 objectForKeyedSubscript:0x1F219E990])
            {
              [v17 setObject:v19 forKeyedSubscript:0x1F219E990];
            }

            if (v20)
            {
              if (![v17 objectForKeyedSubscript:0x1F219E9B0])
              {
                [v17 setObject:v20 forKeyedSubscript:0x1F219E9B0];
              }
            }
          }

          v21 = [BWInferenceResult alloc];
          v22 = *(a1 + 80);
          v23 = *(a1 + 96);
          v16 = [(BWInferenceResult *)v21 initWithInferenceType:v12 inferences:v17 atTimestamp:&v22];
        }

        [*(a1 + 56) setObject:v16 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v12)}];
      }
    }

    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }
}

uint64_t __137__BWInferenceScheduler_performInferencesForConnection_usingInputSampleBuffer_attachingResultsToSampleBuffer_skippingInferencesWithTypes___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, void *a5)
{
  result = [objc_msgSend(*(a1 + 32) "jobs")];
  if (!atomic_load((result + 22)))
  {
    v10 = result;
    v11 = *(result + 8);
    v12 = [*(a1 + 40) pixelBufferForRequirement:a2];
    if (v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v12 = [*(a1 + 40) pixelBufferForRequirement:{objc_msgSend(a2, "uncompressedRequirement")}]) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v12 = objc_msgSend(*(a1 + 40), "pixelBufferForRequirement:", objc_msgSend(a2, "sourceVideoRequirement"))) != 0)
    {
      v13 = v12;
      [v11 setPixelBuffer:v12 forRequirement:a5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 setPixelBuffer:v13 forRequirement:{objc_msgSend(a5, "uncompressedRequirement")}];
      }

      v14 = 0;
      v15 = 0;
    }

    else
    {
      v15 = -31717;
      v14 = 1;
    }

    [v11 setInputSampleBufferAttachments:{objc_msgSend(*(a1 + 40), "inputSampleBufferAttachments")}];
    result = [v11 setMutableInferenceMetadata:{objc_msgSend(*(a1 + 40), "mutableInferenceMetadata")}];
    if (v14)
    {
      atomic_store(v15, (*(a1 + 32) + 12));
    }

    else if (atomic_fetch_add((v10 + 23), 0xFFu) == 1)
    {
      v16 = 0;
      atomic_compare_exchange_strong((v10 + 22), &v16, 1u);
    }
  }

  return result;
}

- (uint64_t)_queueForJob:(void *)a3 fromConnection:
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a2 + 20);
  if (v4 <= 2)
  {
    if (v4 == 2)
    {
      if ([*a2 submittable])
      {

        return [a3 submissionQueue];
      }

      else
      {

        return [a3 inferenceQueue];
      }
    }

    if (*(a2 + 20))
    {
      if (v4 != 1)
      {
        return 0;
      }

      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D920];
      v8 = @"Attempted to get a target queue for a job with BWInferenceSchedulerJobTypeExtractor. Extractors are expected to run synchronously on the calling thread";
    }

    else
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D920];
      v8 = @"Attemped to get a target queue for a job with BWInferenceSchedulerJobTypeInvalid";
    }

    objc_exception_throw([v6 exceptionWithName:v7 reason:v8 userInfo:0]);
  }

  if (v4 != 3)
  {
    return 0;
  }

  return [a3 scalingQueue];
}

uint64_t __133__BWInferenceScheduler__processJobsFromFramebuffer_usingInputSampleBuffer_inferencePropagationHandler_atExecutionTime_forConnection___block_invoke(uint64_t result)
{
  if (!atomic_load((*(result + 32) + 12)))
  {
    v2 = result;
    v3 = 1;
    atomic_compare_exchange_strong((*(result + 80) + 22), &v3, 2u);
    if (v3 == 1)
    {
      dispatch_group_enter(*(result + 40));
      v5 = *(v2 + 80);
      v4 = *(v2 + 88);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __133__BWInferenceScheduler__processJobsFromFramebuffer_usingInputSampleBuffer_inferencePropagationHandler_atExecutionTime_forConnection___block_invoke_2;
      v14[3] = &unk_1E799B670;
      v6 = *(v2 + 48);
      v7 = *(v2 + 32);
      v8 = *(v2 + 40);
      v14[4] = *(v2 + 56);
      v14[5] = v7;
      v16 = *(v2 + 112);
      v9 = *(v2 + 64);
      v14[8] = *(v2 + 72);
      v14[9] = v4;
      v15 = *(v2 + 96);
      v14[10] = v5;
      v14[6] = v9;
      v14[7] = v8;
      v12 = *(v2 + 96);
      v13 = *(v2 + 112);
      v10 = *(v5 + 8);
      v11 = [*v5 submittable];
      result = [*v5 executable];
      if (v11)
      {
        v19 = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __scheduler_job_invoke_block_invoke;
        v22 = &unk_1E799B6C0;
        v23 = v14;
        v24 = v5;
        v17 = v12;
        v18 = v13;
        return [v11 submitForSampleBuffer:v4 usingStorage:v10 withSubmissionTime:&v17 workQueue:v6 completionHandler:&v19];
      }

      else if (result)
      {
        v19 = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __scheduler_job_invoke_block_invoke_2;
        v22 = &unk_1E799B6C0;
        v23 = v14;
        v24 = v5;
        v17 = v12;
        v18 = v13;
        return [result executeOnSampleBuffer:v4 usingStorage:v10 withExecutionTime:&v17 completionHandler:&v19];
      }
    }
  }

  return result;
}

void __133__BWInferenceScheduler__processJobsFromFramebuffer_usingInputSampleBuffer_inferencePropagationHandler_atExecutionTime_forConnection___block_invoke_2(void *a1, unsigned int a2)
{
  if (a2)
  {
    atomic_store(a2, (a1[5] + 12));
  }

  else
  {
    __133__BWInferenceScheduler__processJobsFromFramebuffer_usingInputSampleBuffer_inferencePropagationHandler_atExecutionTime_forConnection___block_invoke_2_cold_1(a1);
  }

  [*(a1[10] + 8) clear];
  v3 = a1[7];

  dispatch_group_leave(v3);
}

- (int)prepareForInferenceRequirements:(id)a3 dependencyProviderSource:(id)a4 formatProvider:(id)a5 pixelBufferPoolProvider:(id)a6 connection:(unint64_t)a7 backPressureDrivenPipelining:(BOOL)a8 processingConfiguration:(id)a9
{
  v9 = a8;
  v81 = a6;
  v13 = [[BWInferenceSchedulerFramebufferBuilder alloc] initWithInferenceRequirements:a3 dependencyProvider:a4 formatProvider:a5 processingConfiguration:a9];
  v14 = [(BWInferenceSchedulerFramebufferBuilder *)v13 newFramebuffer];

  if (!v14)
  {
    LODWORD(v33) = -31760;

    goto LABEL_71;
  }

  HIDWORD(v73) = v9;
  os_unfair_lock_lock(&self->_connectionsLock);
  v15 = [(NSMapTable *)self->_connectionsByIdentifier objectForKey:a7];
  v74 = v14;
  [v15 setFramebuffer:v14];
  v76 = v15;
  v16 = v15;
  v75 = self;
  os_unfair_lock_unlock(&self->_connectionsLock);
  v17 = [a4 providedVideoRequirementsByAttachedMediaKey];
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = v17;
  v19 = [v17 countByEnumeratingWithState:&v143 objects:v142 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v144;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v144 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = [obj objectForKeyedSubscript:*(*(&v143 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 addObject:v23];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v143 objects:v142 count:16];
    }

    while (v20);
  }

  v24 = [MEMORY[0x1E695DFA8] set];
  v87 = [v76 coordinator];
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v77 = [v74 jobs];
  v84 = v24;
  v79 = [v77 countByEnumeratingWithState:&v138 objects:v137 count:16];
  if (v79)
  {
    v78 = *v139;
LABEL_13:
    v25 = 0;
LABEL_14:
    if (*v139 != v78)
    {
      objc_enumerationMutation(v77);
    }

    v26 = *(*(&v138 + 1) + 8 * v25);
    v27 = *v26;
    v28 = [*v26 submittable];
    v29 = [v27 executable];
    v30 = [v27 sharedResourcePreparator];
    v31 = v30;
    if (v28)
    {
      if (v30)
      {
        if ([objc_msgSend(v27 "sharedResourcePreparator")] == 1)
        {
          v32 = [v31 prepareForSubmissionWithWorkQueue:objc_msgSend(v76 sharedANEMemoryProvider:{"completionQueue"), v75->_sharedE5ANEMemoryProvider}];
          goto LABEL_26;
        }

LABEL_27:
        v34 = [v27 newStorage];
        v26[1] = v34;
        if (v34)
        {
          v80 = v25;
          v135 = 0u;
          v136 = 0u;
          v133 = 0u;
          v134 = 0u;
          v82 = v26;
          v83 = [v26[1] requirementsNeedingPixelBufferPools];
          v35 = [v83 countByEnumeratingWithState:&v133 objects:v132 count:16];
          if (!v35)
          {
            goto LABEL_49;
          }

          v36 = v35;
          v37 = *v134;
          while (1)
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v134 != v37)
              {
                objc_enumerationMutation(v83);
              }

              v39 = *(*(&v133 + 1) + 8 * j);
              v40 = [obj objectForKeyedSubscript:{objc_msgSend(v39, "attachedMediaKey")}];
              v41 = [v40 isEqual:v39];
              v49 = v40;
              if (v41)
              {
LABEL_44:
                v62 = [v49 attachedMediaKey];
                if (v62)
                {
                  [*(v82 + 8) setPixelBufferPool:objc_msgSend(v81 forRequirement:{"preparedOutputPixelBufferPoolForAttachedMediaKey:format:", v62, objc_msgSend(objc_msgSend(v40, "videoFormat"), "underlyingVideoFormat")), v39}];
                  continue;
                }
              }

              else
              {
                v130 = 0u;
                v131 = 0u;
                v128 = 0u;
                v129 = 0u;
                v50 = OUTLINED_FUNCTION_0_99(v41, v42, v43, v44, v45, v46, v47, v48, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, obj, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
                if (v50)
                {
                  v51 = v50;
                  v52 = *v129;
                  while (2)
                  {
                    for (k = 0; k != v51; ++k)
                    {
                      if (*v129 != v52)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v49 = *(*(&v128 + 1) + 8 * k);
                      v54 = [objc_msgSend(v49 "sourceVideoRequirement")];
                      if (v54)
                      {
                        v24 = v84;
                        goto LABEL_44;
                      }
                    }

                    v51 = OUTLINED_FUNCTION_0_99(v54, v55, v56, v57, v58, v59, v60, v61, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, obj, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
                    v24 = v84;
                    if (v51)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              [v87 requestPixelBufferPoolForRequirement:v39 size:{objc_msgSend(v39, "count")}];
              [v24 addObject:{objc_msgSend(v39, "attachedMediaKey")}];
            }

            v36 = [v83 countByEnumeratingWithState:&v133 objects:v132 count:16];
            if (!v36)
            {
LABEL_49:
              v25 = v80 + 1;
              if (v80 + 1 == v79)
              {
                v79 = [v77 countByEnumeratingWithState:&v138 objects:v137 count:16];
                if (!v79)
                {
                  goto LABEL_51;
                }

                goto LABEL_13;
              }

              goto LABEL_14;
            }
          }
        }

        LODWORD(v33) = -31702;
        goto LABEL_69;
      }

      v32 = [v28 prepareForSubmissionWithWorkQueue:{objc_msgSend(v76, "completionQueue")}];
    }

    else
    {
      if (!v29)
      {
        goto LABEL_27;
      }

      if (v30)
      {
        if ([objc_msgSend(v27 "sharedResourcePreparator")] != 1)
        {
          goto LABEL_27;
        }

        v32 = [v31 prepareForExecutionWithSharedANEMemoryProvider:v75->_sharedE5ANEMemoryProvider];
      }

      else
      {
        v32 = [v29 prepareForExecution];
      }
    }

LABEL_26:
    LODWORD(v33) = v32;
    if (v32)
    {
      goto LABEL_69;
    }

    goto LABEL_27;
  }

LABEL_51:
  [v87 preparePixelBufferPoolsWithBackPressureDrivenPipelining:HIDWORD(v73)];
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v14 = v74;
  obja = [v74 jobs];
  v33 = [obja countByEnumeratingWithState:&v124 objects:&v108 count:16];
  if (v33)
  {
    v63 = *v125;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v125 != v63)
        {
          objc_enumerationMutation(obja);
        }

        v65 = *(*(&v124 + 1) + 8 * m);
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v66 = [*(v65 + 8) requirementsNeedingPixelBufferPools];
        v67 = [v66 countByEnumeratingWithState:&v104 objects:&v88 count:16];
        if (v67)
        {
          v68 = v67;
          v69 = *v105;
          do
          {
            for (n = 0; n != v68; ++n)
            {
              if (*v105 != v69)
              {
                objc_enumerationMutation(v66);
              }

              v71 = *(*(&v104 + 1) + 8 * n);
              if ([v84 containsObject:{objc_msgSend(v71, "attachedMediaKey")}])
              {
                [*(v65 + 8) setPixelBufferPool:objc_msgSend(v87 forRequirement:{"pixelBufferPoolForFormat:", objc_msgSend(v71, "videoFormat")), v71}];
              }
            }

            v68 = [v66 countByEnumeratingWithState:&v104 objects:&v88 count:16];
          }

          while (v68);
        }
      }

      v33 = [obja countByEnumeratingWithState:&v124 objects:&v108 count:16];
    }

    while (v33);
LABEL_69:
    v14 = v74;
  }

LABEL_71:
  return v33;
}

- (int)performInferencesForConnection:(unint64_t)a3 usingInputSampleBuffer:(opaqueCMSampleBuffer *)a4 attachingResultsToSampleBuffer:(opaqueCMSampleBuffer *)a5 skippingInferencesWithTypes:(id)a6
{
  os_unfair_lock_lock(&self->_connectionsLock);
  v11 = [(NSMapTable *)self->_connectionsByIdentifier objectForKey:a3];
  v12 = [v11 framebuffer];
  v44 = self;
  group = [v11 coordinationGroup];
  os_unfair_lock_unlock(&self->_connectionsLock);
  v13 = CMGetAttachment(a4, *off_1E798A420, 0);
  memset(&v72, 0, sizeof(v72));
  if (v13)
  {
    CMTimeMakeFromDictionary(&v72, v13);
  }

  else
  {
    CMSampleBufferGetPresentationTimeStamp(&v72, a4);
  }

  v14 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:{objc_msgSend(objc_msgSend(v12, "jobs"), "count")}];
  v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = [v12 graph];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __137__BWInferenceScheduler_performInferencesForConnection_usingInputSampleBuffer_attachingResultsToSampleBuffer_skippingInferencesWithTypes___block_invoke;
  v70[3] = &unk_1E799B5F8;
  v70[4] = v14;
  v70[5] = a6;
  v71 = v72;
  v70[6] = v16;
  v70[7] = v15;
  v70[8] = v12;
  v70[9] = a4;
  [v17 visitProvidersWithBlock:v70];
  v18 = [v15 mutableCopy];
  [v18 minusSet:v16];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __137__BWInferenceScheduler_performInferencesForConnection_usingInputSampleBuffer_attachingResultsToSampleBuffer_skippingInferencesWithTypes___block_invoke_3;
  v69[3] = &unk_1E799B620;
  v69[4] = v14;
  v69[5] = v18;
  [v12 resetJobStatesWithPreventionBlock:v69];
  v19 = [CMGetAttachment(a5 @"Inferences"];
  if (!v19)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v60 = __137__BWInferenceScheduler_performInferencesForConnection_usingInputSampleBuffer_attachingResultsToSampleBuffer_skippingInferencesWithTypes___block_invoke_4;
  v61 = &unk_1E799B648;
  v62 = v12;
  v63 = v14;
  v66 = a4;
  v43 = a5;
  v67 = a5;
  v64 = v18;
  v47 = v19;
  v65 = v19;
  v68 = v72;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v46 = v12;
  v20 = [v12 jobs];
  v21 = [v20 countByEnumeratingWithState:&v55 objects:v54 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v56;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v56 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v55 + 1) + 8 * i);
        v26 = *(v25 + 8);
        v27 = atomic_load((v25 + 22));
        if (v27 == 4)
        {
          atomic_compare_exchange_strong((v25 + 22), &v27, 2u);
          if (v27 != 4)
          {
            continue;
          }

          goto LABEL_18;
        }

        if (v27 == 1)
        {
          v28 = [*v25 extractable];
          if (v28)
          {
            v29 = 1;
            atomic_compare_exchange_strong((v25 + 22), &v29, 2u);
            if (v29 == 1)
            {
              v30 = [v28 extractFromSampleBuffer:a4 usingVideoRequirements:0 metadataRequirements:0 toStorage:v26];
              if (v30)
              {
                v38 = v30;
                v40 = v46;
                v39 = v11;
                v41 = group;
                goto LABEL_32;
              }

LABEL_18:
              v60(v59, v25);
              [v26 clear];
              continue;
            }
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v55 objects:v54 count:16];
    }

    while (v22);
  }

  v53 = v72;
  v40 = v46;
  v39 = v11;
  [(BWInferenceScheduler *)v44 _processJobsFromFramebuffer:v46 usingInputSampleBuffer:a4 inferencePropagationHandler:v59 atExecutionTime:&v53.value forConnection:v11];
  v41 = group;
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v38 = atomic_load(v46 + 3);
  if (v38)
  {
LABEL_32:
    v36 = v47;
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v31 = [v46 jobs];
    v32 = [v31 countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v50;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v50 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [*(*(*(&v49 + 1) + 8 * j) + 8) clear];
        }

        v33 = [v31 countByEnumeratingWithState:&v49 objects:v48 count:16];
      }

      while (v33);
    }

    v36 = v47;
    if ([v47 count])
    {
      v37 = [v47 copy];
      CMSetAttachment(v43, @"Inferences", v37, 1u);

      v36 = v47;
    }

    v38 = 0;
  }

  return v38;
}

- (uint64_t)_processJobsFromFramebuffer:(uint64_t)a3 usingInputSampleBuffer:(uint64_t)a4 inferencePropagationHandler:(__int128 *)a5 atExecutionTime:(void *)a6 forConnection:
{
  if (result)
  {
    if (!atomic_load(a2 + 3))
    {
      v8 = result;
      v9 = [a6 coordinationGroup];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = [a2 jobs];
      result = [v10 countByEnumeratingWithState:&v30 objects:v29 count:16];
      if (result)
      {
        v11 = result;
        v12 = 0;
        v13 = *v31;
        v20 = v26;
        do
        {
          v14 = 0;
          do
          {
            if (*v31 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v30 + 1) + 8 * v14);
            v16 = atomic_load((v15 + 22));
            if (v16 == 1)
            {
              v17 = *(v15 + 20);
              if (v17 != v12)
              {
                v18 = [(BWInferenceScheduler *)v8 _queueForJob:a6 fromConnection:?];
                v19 = [a6 completionQueue];
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                v26[0] = __133__BWInferenceScheduler__processJobsFromFramebuffer_usingInputSampleBuffer_inferencePropagationHandler_atExecutionTime_forConnection___block_invoke;
                v26[1] = &unk_1E799B698;
                v26[2] = a2;
                v26[3] = v9;
                v26[8] = v15;
                v26[9] = a3;
                v27 = *a5;
                v28 = *(a5 + 2);
                v26[4] = v19;
                v26[5] = v8;
                v26[6] = a6;
                v26[7] = a4;
                dispatch_group_async(v9, v18, block);
                v12 = v17;
              }
            }

            ++v14;
          }

          while (v11 != v14);
          result = [v10 countByEnumeratingWithState:&v30 objects:v29 count:16];
          v11 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

uint64_t __133__BWInferenceScheduler__processJobsFromFramebuffer_usingInputSampleBuffer_inferencePropagationHandler_atExecutionTime_forConnection___block_invoke_2_cold_1(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v8 = *(a1 + 88);
  v9 = *(a1 + 104);
  return [(BWInferenceScheduler *)v2 _processJobsFromFramebuffer:v3 usingInputSampleBuffer:v4 inferencePropagationHandler:v5 atExecutionTime:&v8 forConnection:v6];
}

@end