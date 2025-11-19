@interface BWInferenceSchedulerFramebuffer
- (BWInferenceSchedulerFramebuffer)initWithGraph:(id)a3 jobList:(id)a4;
- (void)dealloc;
- (void)resetJobStatesWithPreventionBlock:(id)a3;
@end

@implementation BWInferenceSchedulerFramebuffer

- (BWInferenceSchedulerFramebuffer)initWithGraph:(id)a3 jobList:(id)a4
{
  v9.receiver = self;
  v9.super_class = BWInferenceSchedulerFramebuffer;
  v6 = [(BWInferenceSchedulerFramebuffer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->framebufferLock._os_unfair_lock_opaque = 0;
    v6->_jobs = a4;
    v7->_graph = a3;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSchedulerFramebuffer;
  [(BWInferenceSchedulerFramebuffer *)&v3 dealloc];
}

- (void)resetJobStatesWithPreventionBlock:(id)a3
{
  atomic_store(0, &self->failedJobStatus);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  jobs = self->_jobs;
  v5 = [(BWInferenceSchedulerJobList *)jobs countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(jobs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = v9[21];
        if ((*(a3 + 2))(a3, v9))
        {
          v11 = 4;
        }

        else
        {
          v11 = v10 == 0;
        }

        atomic_store(v11, v9 + 22);
        atomic_store(v10, v9 + 23);
      }

      v6 = [(BWInferenceSchedulerJobList *)jobs countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }
}

@end