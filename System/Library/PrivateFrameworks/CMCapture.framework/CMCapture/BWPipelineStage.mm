@interface BWPipelineStage
+ (BWPipelineStage)pipelineStageWithName:(id)a3 priority:(unsigned int)a4;
+ (BWPipelineStage)pipelineStageWithName:(id)a3 priority:(unsigned int)a4 discardsLateSampleData:(BOOL)a5;
+ (BWPipelineStage)pipelineStageWithName:(id)a3 priority:(unsigned int)a4 workgroup:(id)a5;
+ (BWPipelineStage)pipelineStageWithName:(id)a3 priority:(unsigned int)a4 workgroup:(id)a5 discardsLateSampleData:(BOOL)a6;
+ (uint64_t)_setCurrentPipelineStage:(uint64_t)a1;
+ (void)_currentPipelineStage;
- (id)_serviceQueuedMessages;
- (id)description;
- (void)_initWithName:(int)a3 priority:(OS_os_workgroup *)a4 workgroup:(int)a5 discardsLateSampleData:;
- (void)dealloc;
- (void)sendMessage:(id)a3 toInput:(id)a4;
- (void)sendMessagesToInput:(id)a3 messageProvider:(id)a4;
@end

@implementation BWPipelineStage

+ (void)_currentPipelineStage
{
  objc_opt_self();
  if (_getCurrentPipelineStageKey_onceToken != -1)
  {
    +[BWPipelineStage _setCurrentPipelineStage:];
  }

  v0 = _getCurrentPipelineStageKey_key;

  return pthread_getspecific(v0);
}

- (id)_serviceQueuedMessages
{
  if (result)
  {
    v1 = result;
    [BWPipelineStage _setCurrentPipelineStage:?];
    while ([v1[3] count])
    {
      v2 = [v1[3] objectAtIndexedSubscript:0];
      [v1[3] removeObjectAtIndex:0];
      v3 = [v1[4] objectAtIndexedSubscript:0];
      [v1[4] removeObjectAtIndex:0];
      [v3 handleMessage:v2];
    }

    return [BWPipelineStage _setCurrentPipelineStage:?];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPipelineStage;
  [(BWPipelineStage *)&v3 dealloc];
}

+ (BWPipelineStage)pipelineStageWithName:(id)a3 priority:(unsigned int)a4
{
  v4 = [[BWPipelineStage alloc] _initWithName:a3 priority:a4 workgroup:0 discardsLateSampleData:0];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> %@", NSStringFromClass(v4), self, self->_name];
}

- (void)sendMessage:(id)a3 toInput:(id)a4
{
  if (!a4)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"input not provided";
    goto LABEL_16;
  }

  if (!a3)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"message is nil";
LABEL_16:
    objc_exception_throw([v9 exceptionWithName:v10 reason:v11 userInfo:0]);
  }

  if (self && +[BWPipelineStage _currentPipelineStage]== self)
  {
    [(NSMutableArray *)self->_queuedMessages addObject:a3];
    inputsForQueuedMessages = self->_inputsForQueuedMessages;

    [(NSMutableArray *)inputsForQueuedMessages addObject:a4];
  }

  else if (([BWPipelineStage sendMessage:a3 toInput:self]& 1) != 0)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3052000000;
    v14[3] = __Block_byref_object_copy__9;
    v14[4] = __Block_byref_object_dispose__9;
    v14[5] = a3;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3052000000;
    v13[3] = __Block_byref_object_copy__9;
    v13[4] = __Block_byref_object_dispose__9;
    v13[5] = a4;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__BWPipelineStage_sendMessage_toInput___block_invoke;
    block[3] = &unk_1E7990C68;
    block[4] = self;
    block[5] = v14;
    block[6] = v13;
    executionGroup = self->_executionGroup;
    if (executionGroup)
    {
      dispatch_group_async(executionGroup, self->_executionQueue, block);
    }

    else
    {
      dispatch_async(self->_executionQueue, block);
    }

    _Block_object_dispose(v13, 8);
    _Block_object_dispose(v14, 8);
  }
}

id *__39__BWPipelineStage_sendMessage_toInput___block_invoke(void *a1)
{
  [*(a1[4] + 24) addObject:*(*(a1[5] + 8) + 40)];
  [*(a1[4] + 32) addObject:*(*(a1[6] + 8) + 40)];

  v2 = a1[4];

  return [(BWPipelineStage *)v2 _serviceQueuedMessages];
}

- (void)sendMessagesToInput:(id)a3 messageProvider:(id)a4
{
  if (!a3)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"input not provided";
    goto LABEL_12;
  }

  if (!a4)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"messageProvider is nil";
    goto LABEL_12;
  }

  if (self && +[BWPipelineStage _currentPipelineStage]== self)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Already executing on pipeline stage";
LABEL_12:
    objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3052000000;
  v12[3] = __Block_byref_object_copy__9;
  v12[4] = __Block_byref_object_dispose__9;
  v12[5] = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__BWPipelineStage_sendMessagesToInput_messageProvider___block_invoke;
  block[3] = &unk_1E7990C90;
  block[4] = self;
  block[5] = a4;
  block[6] = v12;
  executionGroup = self->_executionGroup;
  if (executionGroup)
  {
    dispatch_group_async(executionGroup, self->_executionQueue, block);
  }

  else
  {
    dispatch_async(self->_executionQueue, block);
  }

  _Block_object_dispose(v12, 8);
}

+ (uint64_t)_setCurrentPipelineStage:(uint64_t)a1
{
  objc_opt_self();
  if (_getCurrentPipelineStageKey_onceToken != -1)
  {
    +[BWPipelineStage _setCurrentPipelineStage:];
  }

  v3 = _getCurrentPipelineStageKey_key;

  return pthread_setspecific(v3, a2);
}

- (void)_initWithName:(int)a3 priority:(OS_os_workgroup *)a4 workgroup:(int)a5 discardsLateSampleData:
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {

    return 0;
  }

  v14.receiver = a1;
  v14.super_class = BWPipelineStage;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  if (v9)
  {
    v9[5] = [a2 copy];
    *(v9 + 12) = a3;
    v10 = [a2 cStringUsingEncoding:4];
    v11 = v10;
    if (a4)
    {
      inactive = dispatch_workloop_create_inactive(v10);
      FigThreadGetMachThreadPriorityValue();
      dispatch_workloop_set_scheduler_priority();
      dispatch_workloop_set_os_workgroup(inactive, a4);
      dispatch_activate(inactive);
      v9[1] = dispatch_queue_create_with_target_V2(v11, 0, inactive);
      dispatch_release(inactive);
    }

    else
    {
      v9[1] = FigDispatchQueueCreateWithPriority();
    }

    v9[3] = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9[4] = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a5)
    {
      v9[2] = dispatch_group_create();
    }
  }

  return v9;
}

+ (BWPipelineStage)pipelineStageWithName:(id)a3 priority:(unsigned int)a4 discardsLateSampleData:(BOOL)a5
{
  v5 = [[BWPipelineStage alloc] _initWithName:a3 priority:a4 workgroup:0 discardsLateSampleData:a5];

  return v5;
}

+ (BWPipelineStage)pipelineStageWithName:(id)a3 priority:(unsigned int)a4 workgroup:(id)a5
{
  v5 = [[BWPipelineStage alloc] _initWithName:a3 priority:a4 workgroup:a5 discardsLateSampleData:0];

  return v5;
}

+ (BWPipelineStage)pipelineStageWithName:(id)a3 priority:(unsigned int)a4 workgroup:(id)a5 discardsLateSampleData:(BOOL)a6
{
  v6 = [[BWPipelineStage alloc] _initWithName:a3 priority:a4 workgroup:a5 discardsLateSampleData:a6];

  return v6;
}

id *__55__BWPipelineStage_sendMessagesToInput_messageProvider___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = (*(a1[5] + 16))();
  if (v3)
  {
    v4 = v3;
    [*(a1[4] + 24) addObjectsFromArray:v3];
    if ([v4 count])
    {
      v5 = 0;
      do
      {
        [*(a1[4] + 32) addObject:*(*(a1[6] + 8) + 40)];
        ++v5;
      }

      while ([v4 count] > v5);
    }
  }

  objc_autoreleasePoolPop(v2);
  v6 = a1[4];

  return [(BWPipelineStage *)v6 _serviceQueuedMessages];
}

- (uint64_t)sendMessage:(uint64_t)a1 toInput:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 2 && (v2 = *(a2 + 16)) != 0)
  {
    if (dispatch_group_wait(v2, 0))
    {
      v3 = 0;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

@end