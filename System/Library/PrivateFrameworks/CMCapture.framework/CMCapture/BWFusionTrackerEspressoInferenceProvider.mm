@interface BWFusionTrackerEspressoInferenceProvider
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
@end

@implementation BWFusionTrackerEspressoInferenceProvider

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  v10 = CMGetAttachment(buffer, @"FusionTrackerInput", 0);
  if (v10)
  {
    highPriorityTrackerState = [v10 highPriorityTrackerState];
  }

  else
  {
    highPriorityTrackerState = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  inputMetadataRequirements = [(BWEspressoInferenceProvider *)self inputMetadataRequirements];
  v13 = [(NSArray *)inputMetadataRequirements countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(inputMetadataRequirements);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [objc_msgSend(highPriorityTrackerState "sessionStorage")];
        if (!v18)
        {
          v19 = -31714;
          (*(handler + 2))(handler, 4294935582, self);
          return v19;
        }

        [v18 getValue:{objc_msgSend(storage, "tensorForRequirement:", v17)}];
      }

      v14 = [(NSArray *)inputMetadataRequirements countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v26.receiver = self;
  v26.super_class = BWFusionTrackerEspressoInferenceProvider;
  v24 = *&time->var0;
  var3 = time->var3;
  return [(BWEspressoInferenceProvider *)&v26 submitForSampleBuffer:buffer usingStorage:storage withSubmissionTime:&v24 workQueue:queue completionHandler:handler];
}

@end