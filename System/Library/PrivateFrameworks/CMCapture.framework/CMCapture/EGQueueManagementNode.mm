@interface EGQueueManagementNode
- (uint64_t)_handleInput:(uint64_t)input queue:(uint64_t)queue sync:;
- (uint64_t)_syncForInput:(uint64_t)result;
- (void)_handleAllInputOnQueue:(char)queue sync:;
- (void)dealloc;
- (void)receiveData:(id)data fromInput:(id)input;
- (void)receiveData:(id)data fromInputGroup:(id)group;
@end

@implementation EGQueueManagementNode

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGQueueManagementNode;
  [(EGNode *)&v3 dealloc];
}

- (void)_handleAllInputOnQueue:(char)queue sync:
{
  if (result)
  {
    v5 = result;
    v6 = result[9];
    if (v6)
    {
    }

    result = a2;
    v5[9] = result;
    *(v5 + 80) = queue;
  }

  return result;
}

- (uint64_t)_handleInput:(uint64_t)input queue:(uint64_t)queue sync:
{
  if (result)
  {
    v7 = result;
    v8 = *(result + 88);
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(v7 + 88) = v8;
    }

    [v8 setObject:input forKeyedSubscript:{objc_msgSend(a2, "name")}];
    if (!*(v7 + 96))
    {
      *(v7 + 96) = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:queue];
    v10 = *(v7 + 96);
    name = [a2 name];

    return [v10 setObject:v9 forKeyedSubscript:name];
  }

  return result;
}

- (uint64_t)_syncForInput:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = [*(result + 96) objectForKeyedSubscript:{objc_msgSend(a2, "name")}];
    if (v3)
    {

      return [v3 BOOLValue];
    }

    else
    {
      return *(v2 + 80);
    }
  }

  return result;
}

- (void)receiveData:(id)data fromInput:(id)input
{
  if (self)
  {
    allInputQueue = -[NSMutableDictionary objectForKeyedSubscript:](self->_queuesBySpecificInputName, "objectForKeyedSubscript:", [input name]);
    if (!allInputQueue)
    {
      allInputQueue = self->_allInputQueue;
    }
  }

  else
  {
    allInputQueue = 0;
  }

  v7 = [(EGQueueManagementNode *)self _syncForInput:input];
  v8 = MEMORY[0x1E696AEC0];
  name = [(EGNode *)self name];
  name2 = [input name];
  [v8 stringWithFormat:@"[%@.%@]"];
  if (!allInputQueue || (v7 & 1) != 0)
  {
    OUTLINED_FUNCTION_1_115();

    [v17 queueManagedReceiveData:? fromInput:?];
  }

  else
  {
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_2_105(v9, v10, v11, v12, v13, v14, v15, v16, name, name2, v21, v22, 3221225472, __47__EGQueueManagementNode_receiveData_fromInput___block_invoke, &unk_1E798FD58, v23, v24, v25);
    OUTLINED_FUNCTION_1_115();
  }
}

- (void)receiveData:(id)data fromInputGroup:(id)group
{
  if (self)
  {
    allInputQueue = -[NSMutableDictionary objectForKeyedSubscript:](self->_queuesBySpecificInputName, "objectForKeyedSubscript:", [group name]);
    if (!allInputQueue)
    {
      allInputQueue = self->_allInputQueue;
    }
  }

  else
  {
    allInputQueue = 0;
  }

  v7 = [(EGQueueManagementNode *)self _syncForInput:group];
  v8 = MEMORY[0x1E696AEC0];
  name = [(EGNode *)self name];
  name2 = [group name];
  [v8 stringWithFormat:@"[%@.%@]"];
  if (!allInputQueue || (v7 & 1) != 0)
  {
    OUTLINED_FUNCTION_1_115();

    [v17 queueManagedReceiveData:? fromInputGroup:?];
  }

  else
  {
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_2_105(v9, v10, v11, v12, v13, v14, v15, v16, name, name2, v21, v22, 3221225472, __52__EGQueueManagementNode_receiveData_fromInputGroup___block_invoke, &unk_1E798FD58, v23, v24, v25);
    OUTLINED_FUNCTION_1_115();
  }
}

@end