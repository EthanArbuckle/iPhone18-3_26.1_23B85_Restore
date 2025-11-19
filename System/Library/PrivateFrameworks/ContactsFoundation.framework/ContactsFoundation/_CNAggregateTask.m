@interface _CNAggregateTask
- (BOOL)cancel;
- (_CNAggregateTask)initWithName:(id)a3 tasks:(id)a4;
- (id)description;
- (id)run:(id *)a3;
- (id)runSubtask:(id)a3 error:(id *)a4;
- (void)cancelSubtasks;
@end

@implementation _CNAggregateTask

- (_CNAggregateTask)initWithName:(id)a3 tasks:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _CNAggregateTask;
  v7 = [(CNTask *)&v12 initWithName:a3];
  if (v7)
  {
    v8 = [v6 copy];
    tasks = v7->_tasks;
    v7->_tasks = v8;

    v10 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [(CNTask *)self name];
  v4 = [(_CNAggregateTask *)self tasks];
  v5 = [CNDescriptionBuilder descriptionForObject:self withNamesAndObjects:@"name", v3, @"subtasks", v4, 0];

  return v5;
}

- (id)run:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFB0] null];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(_CNAggregateTask *)self tasks];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
LABEL_3:
    v11 = 0;
    v12 = v9;
    v13 = v5;
    while (1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v19 + 1) + 8 * v11);
      v18 = v12;
      v5 = [(_CNAggregateTask *)self runSubtask:v14 error:&v18];
      v9 = v18;

      if (!v5)
      {
        break;
      }

      ++v11;
      v12 = v9;
      v13 = v5;
      if (v8 == v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

  v15 = [CNFoundationError ifResultIsNil:v5 setOutputError:a3 toError:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)runSubtask:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(CNTask *)self isCancelled])
  {
    v7 = +[CNFoundationError userCanceledError];
    if (a4)
    {
      v7 = v7;
      *a4 = v7;
    }

    v8 = 0;
  }

  else
  {
    v8 = [v6 run:a4];
  }

  return v8;
}

- (BOOL)cancel
{
  v5.receiver = self;
  v5.super_class = _CNAggregateTask;
  v3 = [(CNTask *)&v5 cancel];
  if (v3)
  {
    [(_CNAggregateTask *)self cancelSubtasks];
  }

  return v3;
}

- (void)cancelSubtasks
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(_CNAggregateTask *)self tasks];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end