@interface PipelineStatePromise
- (BOOL)timesOutWaitingForPipelineStates:(double)states;
- (PipelineStatePromise)initWithDispatchGroup:(id)group pipelineStates:(id)states errors:(id)errors;
- (id)errorForFunction:(id)function;
- (id)pipelineStateForFunction:(id)function;
@end

@implementation PipelineStatePromise

- (PipelineStatePromise)initWithDispatchGroup:(id)group pipelineStates:(id)states errors:(id)errors
{
  groupCopy = group;
  statesCopy = states;
  errorsCopy = errors;
  v15.receiver = self;
  v15.super_class = PipelineStatePromise;
  v12 = [(PipelineStatePromise *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->group, group);
    objc_storeStrong(&v13->pipelineStates, states);
    objc_storeStrong(&v13->errors, errors);
  }

  return v13;
}

- (BOOL)timesOutWaitingForPipelineStates:(double)states
{
  v3 = atomic_load(&self->initialization_completed);
  if ((v3 & 1) == 0)
  {
    v5 = dispatch_group_wait(self->group, states);
    result = 1;
    if (v5)
    {
      return result;
    }

    atomic_store(1u, &self->initialization_completed);
  }

  return 0;
}

- (id)pipelineStateForFunction:(id)function
{
  functionCopy = function;
  [(PipelineStatePromise *)self timesOutWaitingForPipelineStates:1.84467441e19];
  v5 = [(NSMapTable *)self->pipelineStates objectForKey:functionCopy];

  return v5;
}

- (id)errorForFunction:(id)function
{
  functionCopy = function;
  [(PipelineStatePromise *)self timesOutWaitingForPipelineStates:1.84467441e19];
  v5 = [(NSMapTable *)self->errors objectForKey:functionCopy];

  return v5;
}

@end