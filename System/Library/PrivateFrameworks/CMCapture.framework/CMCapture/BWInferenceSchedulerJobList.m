@interface BWInferenceSchedulerJobList
- ($68DB802A49027383DCDE8531623B31A5)jobAtIndex:(unint64_t)a3;
- (BWInferenceSchedulerJobList)initWithCapacity:(unint64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
@end

@implementation BWInferenceSchedulerJobList

- (BWInferenceSchedulerJobList)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = BWInferenceSchedulerJobList;
  v4 = [(BWInferenceSchedulerJobList *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_jobCount = a3;
    v6 = malloc_type_calloc(a3, 0x18uLL, 0x1080040CC6EE3FDuLL);
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

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  a3->var1 = a4;
  a3->var2 = &self->_mutations;
  var0 = a3->var0;
  if (a3->var0 >= self->_jobCount || a5 == 0)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    orderedJobs = self->_orderedJobs;
    a3->var0 = var0 + 1;
    a4[v8] = &orderedJobs[var0];
    v7 = v8 + 1;
    var0 = a3->var0;
    v10 = a3->var0 >= self->_jobCount || v7 >= a5;
    ++v8;
  }

  while (!v10);
  return v7;
}

- ($68DB802A49027383DCDE8531623B31A5)jobAtIndex:(unint64_t)a3
{
  if ([(BWInferenceSchedulerJobList *)self count]<= a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Job index out of bounds" userInfo:0]);
  }

  return &self->_orderedJobs[a3];
}

@end