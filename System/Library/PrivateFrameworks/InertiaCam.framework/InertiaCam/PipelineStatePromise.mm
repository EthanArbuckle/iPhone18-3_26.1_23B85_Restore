@interface PipelineStatePromise
- (BOOL)timesOutWaitingForPipelineStates:(double)a3;
- (PipelineStatePromise)initWithDispatchGroup:(id)a3 pipelineStates:(id)a4 errors:(id)a5;
- (id)errorForFunction:(id)a3;
- (id)pipelineStateForFunction:(id)a3;
@end

@implementation PipelineStatePromise

- (PipelineStatePromise)initWithDispatchGroup:(id)a3 pipelineStates:(id)a4 errors:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PipelineStatePromise;
  v12 = [(PipelineStatePromise *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->group, a3);
    objc_storeStrong(&v13->pipelineStates, a4);
    objc_storeStrong(&v13->errors, a5);
  }

  return v13;
}

- (BOOL)timesOutWaitingForPipelineStates:(double)a3
{
  v3 = atomic_load(&self->initialization_completed);
  if ((v3 & 1) == 0)
  {
    v5 = dispatch_group_wait(self->group, a3);
    result = 1;
    if (v5)
    {
      return result;
    }

    atomic_store(1u, &self->initialization_completed);
  }

  return 0;
}

- (id)pipelineStateForFunction:(id)a3
{
  v4 = a3;
  [(PipelineStatePromise *)self timesOutWaitingForPipelineStates:1.84467441e19];
  v5 = [(NSMapTable *)self->pipelineStates objectForKey:v4];

  return v5;
}

- (id)errorForFunction:(id)a3
{
  v4 = a3;
  [(PipelineStatePromise *)self timesOutWaitingForPipelineStates:1.84467441e19];
  v5 = [(NSMapTable *)self->errors objectForKey:v4];

  return v5;
}

@end