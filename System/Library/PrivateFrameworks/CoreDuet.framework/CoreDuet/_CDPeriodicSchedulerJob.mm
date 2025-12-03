@interface _CDPeriodicSchedulerJob
+ (_CDPeriodicSchedulerJob)jobWithInterval:(double)interval schedulerJobName:(id)name handler:(id)handler;
+ (_CDPeriodicSchedulerJob)jobWithPeriod:(int64_t)period schedulerJobName:(id)name handler:(id)handler;
- (_CDPeriodicSchedulerJob)initWithPeriod:(int64_t)period interval:(double)interval schedulerJobName:(id)name queue:(id)queue asynchronousHandler:(BOOL)handler handler:(id)a8;
- (void)setExecutionCriteria:(id)criteria;
@end

@implementation _CDPeriodicSchedulerJob

+ (_CDPeriodicSchedulerJob)jobWithPeriod:(int64_t)period schedulerJobName:(id)name handler:(id)handler
{
  if (period > 3)
  {
    if (period == 4)
    {
      v10 = 12 * *MEMORY[0x1E69E9CC8];
      goto LABEL_17;
    }

    if (period == 5)
    {
      v8 = 9 * *MEMORY[0x1E69E9CC8];
      goto LABEL_16;
    }

    if (period != 6)
    {
LABEL_12:
      v9 = MEMORY[0x1E69E9CF0];
      goto LABEL_14;
    }

    v9 = MEMORY[0x1E69E9CC0];
LABEL_14:
    v10 = *v9;
    goto LABEL_17;
  }

  if (period == 1)
  {
    v9 = MEMORY[0x1E69E9CC8];
    goto LABEL_14;
  }

  if (period == 2)
  {
    v9 = MEMORY[0x1E69E9CE0];
    goto LABEL_14;
  }

  if (period != 3)
  {
    goto LABEL_12;
  }

  v8 = 3 * *MEMORY[0x1E69E9CC8];
LABEL_16:
  v10 = 2 * v8;
LABEL_17:
  v11 = _CDPeriodicSchedulerDefaultQueueName;
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  handlerCopy = handler;
  nameCopy = name;
  v15 = dispatch_queue_create(v11, v12);

  v16 = [[_CDPeriodicSchedulerJob alloc] initWithPeriod:period interval:nameCopy schedulerJobName:v15 queue:0 asynchronousHandler:handlerCopy handler:v10];

  return v16;
}

+ (_CDPeriodicSchedulerJob)jobWithInterval:(double)interval schedulerJobName:(id)name handler:(id)handler
{
  v8 = _MAPIntervalToCDPeriod(interval);
  v9 = _CDPeriodicSchedulerDefaultQueueName;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  handlerCopy = handler;
  nameCopy = name;
  v13 = dispatch_queue_create(v9, v10);

  v14 = [[_CDPeriodicSchedulerJob alloc] initWithPeriod:v8 interval:nameCopy schedulerJobName:v13 queue:0 asynchronousHandler:handlerCopy handler:interval];

  return v14;
}

- (_CDPeriodicSchedulerJob)initWithPeriod:(int64_t)period interval:(double)interval schedulerJobName:(id)name queue:(id)queue asynchronousHandler:(BOOL)handler handler:(id)a8
{
  keys[6] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queueCopy = queue;
  v17 = a8;
  v30.receiver = self;
  v30.super_class = _CDPeriodicSchedulerJob;
  v18 = [(_CDPeriodicSchedulerJob *)&v30 init];
  v19 = v18;
  if (v18)
  {
    v18->_period = period;
    v18->_interval = interval;
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v19->_jobName, name);
    v19->_isHandlerAsynchronous = handler;
    v20 = MEMORY[0x193B00C50](v17);
    handler = v19->_handler;
    v19->_handler = v20;

    v22 = *MEMORY[0x1E69E9D88];
    keys[0] = *MEMORY[0x1E69E9CB0];
    keys[1] = v22;
    v23 = *MEMORY[0x1E69E9DC0];
    keys[2] = *MEMORY[0x1E69E9D68];
    keys[3] = v23;
    v24 = *MEMORY[0x1E69E9DA8];
    keys[4] = *MEMORY[0x1E69E9D58];
    keys[5] = v24;
    values[0] = xpc_int64_create(interval);
    values[1] = xpc_BOOL_create(1);
    values[2] = xpc_string_create(*MEMORY[0x1E69E9D70]);
    values[3] = xpc_BOOL_create(1);
    values[4] = xpc_BOOL_create(1);
    values[5] = xpc_BOOL_create(1);
    v25 = xpc_dictionary_create(keys, values, 6uLL);
    executionCriteria = v19->_executionCriteria;
    v19->_executionCriteria = v25;

    for (i = 5; i != -1; --i)
    {
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)setExecutionCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v6 = criteriaCopy;
  if (criteriaCopy)
  {
    v9 = criteriaCopy;
    v7 = xpc_equal(criteriaCopy, self->_executionCriteria);
    v6 = v9;
    if (!v7)
    {
      objc_storeStrong(&self->_executionCriteria, criteria);
      v8 = +[_CDPeriodicScheduler sharedInstance];
      [v8 updateExecutionCriteriaOnJob:self];

      v6 = v9;
    }
  }
}

@end