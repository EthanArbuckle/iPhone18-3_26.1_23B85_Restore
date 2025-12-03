@interface BWInferenceSchedulerJobList
- ($68DB802A49027383DCDE8531623B31A5)jobAtIndex:(unint64_t)index;
- (BWInferenceSchedulerJobList)initWithCapacity:(unint64_t)capacity;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
@end

@implementation BWInferenceSchedulerJobList

- (BWInferenceSchedulerJobList)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = BWInferenceSchedulerJobList;
  v4 = [(BWInferenceSchedulerJobList *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_jobCount = capacity;
    v6 = malloc_type_calloc(capacity, 0x18uLL, 0x1080040CC6EE3FDuLL);
    v5->_mutations = v5->_jobCount;
    v5->_orderedJobs = v6;
  }

  return v5;
}

- (void)dealloc
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(BWInferenceSchedulerJobList *)self countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(self);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);

        ++v6;
      }

      while (v4 != v6);
      v4 = [(BWInferenceSchedulerJobList *)self countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v4);
  }

  free(self->_orderedJobs);
  v8.receiver = self;
  v8.super_class = BWInferenceSchedulerJobList;
  [(BWInferenceSchedulerJobList *)&v8 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  state->var1 = objects;
  state->var2 = &self->_mutations;
  var0 = state->var0;
  if (state->var0 >= self->_jobCount || count == 0)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    orderedJobs = self->_orderedJobs;
    state->var0 = var0 + 1;
    objects[v8] = &orderedJobs[var0];
    v7 = v8 + 1;
    var0 = state->var0;
    v10 = state->var0 >= self->_jobCount || v7 >= count;
    ++v8;
  }

  while (!v10);
  return v7;
}

- ($68DB802A49027383DCDE8531623B31A5)jobAtIndex:(unint64_t)index
{
  if ([(BWInferenceSchedulerJobList *)self count]<= index)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Job index out of bounds" userInfo:0]);
  }

  return &self->_orderedJobs[index];
}

@end