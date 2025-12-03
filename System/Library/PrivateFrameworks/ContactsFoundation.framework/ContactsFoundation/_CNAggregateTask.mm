@interface _CNAggregateTask
- (BOOL)cancel;
- (_CNAggregateTask)initWithName:(id)name tasks:(id)tasks;
- (id)description;
- (id)run:(id *)run;
- (id)runSubtask:(id)subtask error:(id *)error;
- (void)cancelSubtasks;
@end

@implementation _CNAggregateTask

- (_CNAggregateTask)initWithName:(id)name tasks:(id)tasks
{
  tasksCopy = tasks;
  v12.receiver = self;
  v12.super_class = _CNAggregateTask;
  v7 = [(CNTask *)&v12 initWithName:name];
  if (v7)
  {
    v8 = [tasksCopy copy];
    tasks = v7->_tasks;
    v7->_tasks = v8;

    v10 = v7;
  }

  return v7;
}

- (id)description
{
  name = [(CNTask *)self name];
  tasks = [(_CNAggregateTask *)self tasks];
  v5 = [CNDescriptionBuilder descriptionForObject:self withNamesAndObjects:@"name", name, @"subtasks", tasks, 0];

  return v5;
}

- (id)run:(id *)run
{
  v24 = *MEMORY[0x1E69E9840];
  null = [MEMORY[0x1E695DFB0] null];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  tasks = [(_CNAggregateTask *)self tasks];
  v7 = [tasks countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
LABEL_3:
    v11 = 0;
    v12 = v9;
    v13 = null;
    while (1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(tasks);
      }

      v14 = *(*(&v19 + 1) + 8 * v11);
      v18 = v12;
      null = [(_CNAggregateTask *)self runSubtask:v14 error:&v18];
      v9 = v18;

      if (!null)
      {
        break;
      }

      ++v11;
      v12 = v9;
      v13 = null;
      if (v8 == v11)
      {
        v8 = [tasks countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = [CNFoundationError ifResultIsNil:null setOutputError:run toError:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)runSubtask:(id)subtask error:(id *)error
{
  subtaskCopy = subtask;
  if ([(CNTask *)self isCancelled])
  {
    v7 = +[CNFoundationError userCanceledError];
    if (error)
    {
      v7 = v7;
      *error = v7;
    }

    v8 = 0;
  }

  else
  {
    v8 = [subtaskCopy run:error];
  }

  return v8;
}

- (BOOL)cancel
{
  v5.receiver = self;
  v5.super_class = _CNAggregateTask;
  cancel = [(CNTask *)&v5 cancel];
  if (cancel)
  {
    [(_CNAggregateTask *)self cancelSubtasks];
  }

  return cancel;
}

- (void)cancelSubtasks
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  tasks = [(_CNAggregateTask *)self tasks];
  v3 = [tasks countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(tasks);
        }

        [*(*(&v8 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [tasks countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end