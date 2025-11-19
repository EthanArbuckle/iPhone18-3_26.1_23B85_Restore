@interface BWFusionTrackerEspressoInferenceProvider
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7;
@end

@implementation BWFusionTrackerEspressoInferenceProvider

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7
{
  v10 = CMGetAttachment(a3, @"FusionTrackerInput", 0);
  if (v10)
  {
    v11 = [v10 highPriorityTrackerState];
  }

  else
  {
    v11 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [(BWEspressoInferenceProvider *)self inputMetadataRequirements];
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v27 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [objc_msgSend(v11 "sessionStorage")];
        if (!v18)
        {
          v19 = -31714;
          (*(a7 + 2))(a7, 4294935582, self);
          return v19;
        }

        [v18 getValue:{objc_msgSend(a4, "tensorForRequirement:", v17)}];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v26.receiver = self;
  v26.super_class = BWFusionTrackerEspressoInferenceProvider;
  v24 = *&a5->var0;
  var3 = a5->var3;
  return [(BWEspressoInferenceProvider *)&v26 submitForSampleBuffer:a3 usingStorage:a4 withSubmissionTime:&v24 workQueue:a6 completionHandler:a7];
}

@end