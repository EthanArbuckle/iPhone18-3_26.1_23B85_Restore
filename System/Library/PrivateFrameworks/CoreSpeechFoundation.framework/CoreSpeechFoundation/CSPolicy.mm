@interface CSPolicy
- (BOOL)_checkAllConditionsEnabled;
- (BOOL)isEnabled;
- (CSPolicy)init;
- (void)CSEventMonitorDidReceiveEvent:(id)event;
- (void)addConditions:(id)conditions;
- (void)dealloc;
- (void)notifyCallback:(BOOL)callback option:(unint64_t)option;
- (void)notifyCallbackWithOption:(unint64_t)option;
- (void)setCallback:(id)callback;
- (void)subscribeEventMonitor:(id)monitor;
@end

@implementation CSPolicy

- (BOOL)_checkAllConditionsEnabled
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_conditions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (!(*(*(*(&v10 + 1) + 8 * i) + 16))(*(*(&v10 + 1) + 8 * i)))
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __21__CSPolicy_isEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _checkAllConditionsEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__CSPolicy_isEnabled__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (CSPolicy)init
{
  v10.receiver = self;
  v10.super_class = CSPolicy;
  v2 = [(CSPolicy *)&v10 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    monitors = v2->_monitors;
    v2->_monitors = array;

    array2 = [MEMORY[0x1E695DF70] array];
    conditions = v2->_conditions;
    v2->_conditions = array2;

    v7 = dispatch_queue_create("Serial CSPolicy queue", 0);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)CSEventMonitorDidReceiveEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy type] == 1;
  type = [eventCopy type];

  queue = self->_queue;
  if (type == 2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__CSPolicy_CSEventMonitorDidReceiveEvent___block_invoke;
    block[3] = &unk_1E865CC58;
    block[4] = self;
    block[5] = v5 | 2;
    dispatch_sync(queue, block);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__CSPolicy_CSEventMonitorDidReceiveEvent___block_invoke_2;
    v8[3] = &unk_1E865CC58;
    v8[4] = self;
    v8[5] = v5;
    dispatch_async(queue, v8);
  }
}

void *__42__CSPolicy_CSEventMonitorDidReceiveEvent___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[3];
  if (v3)
  {
    v4 = [result _checkAllConditionsEnabled];
    v5 = *(a1 + 40);
    v6 = *(v3 + 16);

    return v6(v3, v4, v5);
  }

  return result;
}

void *__42__CSPolicy_CSEventMonitorDidReceiveEvent___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[3];
  if (v3)
  {
    v4 = [result _checkAllConditionsEnabled];
    v5 = *(a1 + 40);
    v6 = *(v3 + 16);

    return v6(v3, v4, v5);
  }

  return result;
}

- (void)notifyCallbackWithOption:(unint64_t)option
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__CSPolicy_notifyCallbackWithOption___block_invoke;
  v4[3] = &unk_1E865CC58;
  v4[4] = self;
  v4[5] = option;
  dispatch_async(queue, v4);
}

void *__37__CSPolicy_notifyCallbackWithOption___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[3];
  if (v3)
  {
    v4 = [result _checkAllConditionsEnabled];
    v5 = *(a1 + 40);
    v6 = *(v3 + 16);

    return v6(v3, v4, v5);
  }

  return result;
}

- (void)notifyCallback:(BOOL)callback option:(unint64_t)option
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CSPolicy_notifyCallback_option___block_invoke;
  block[3] = &unk_1E865B2B8;
  callbackCopy = callback;
  block[4] = self;
  block[5] = option;
  dispatch_async(queue, block);
}

uint64_t __34__CSPolicy_notifyCallback_option___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 40));
  }

  return result;
}

- (void)subscribeEventMonitor:(id)monitor
{
  monitorCopy = monitor;
  v5 = monitorCopy;
  if (monitorCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__CSPolicy_subscribeEventMonitor___block_invoke;
    v7[3] = &unk_1E865C970;
    v8 = monitorCopy;
    selfCopy = self;
    dispatch_sync(queue, v7);
  }
}

uint64_t __34__CSPolicy_subscribeEventMonitor___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObserver:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);

  return [v3 addObject:v2];
}

- (void)addConditions:(id)conditions
{
  conditionsCopy = conditions;
  v5 = conditionsCopy;
  if (conditionsCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__CSPolicy_addConditions___block_invoke;
    v7[3] = &unk_1E865CB90;
    v7[4] = self;
    v8 = conditionsCopy;
    dispatch_sync(queue, v7);
  }
}

void __26__CSPolicy_addConditions___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = MEMORY[0x1E12BA300](*(a1 + 40));
  [v1 addObject:v2];
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__CSPolicy_dealloc__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = CSPolicy;
  [(CSPolicy *)&v4 dealloc];
}

void __19__CSPolicy_dealloc__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
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

        [*(*(&v8 + 1) + 8 * v6++) removeObserver:{*(a1 + 32), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setCallback:(id)callback
{
  callbackCopy = callback;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __24__CSPolicy_setCallback___block_invoke;
  v7[3] = &unk_1E865CB90;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(queue, v7);
}

uint64_t __24__CSPolicy_setCallback___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E12BA300](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x1EEE66BB8]();
}

@end