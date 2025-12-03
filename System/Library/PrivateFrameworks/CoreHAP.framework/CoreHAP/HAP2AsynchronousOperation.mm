@interface HAP2AsynchronousOperation
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
- (BOOL)isCancelled;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (HAP2AsynchronousOperation)init;
- (HAP2AsynchronousOperation)initWithName:(id)name optionalActivity:(id)activity;
- (NSError)error;
- (void)_setFinalStateWithError:(int)error cancelled:;
- (void)cancel;
- (void)main;
- (void)start;
@end

@implementation HAP2AsynchronousOperation

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"executing"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"finished") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"cancelled") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"isExecuting") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"isFinished") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"isCancelled"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___HAP2AsynchronousOperation;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

- (void)_setFinalStateWithError:(int)error cancelled:
{
  v5 = a2;
  if (self)
  {
    [self willChangeValueForKey:@"isExecuting"];
    [self willChangeValueForKey:@"isFinished"];
    if (v5)
    {
      [self willChangeValueForKey:@"isCancelled"];
    }

    v6 = self[34];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __63__HAP2AsynchronousOperation__setFinalStateWithError_cancelled___block_invoke;
    v15 = &unk_2786D5268;
    selfCopy = self;
    errorCopy = error;
    v7 = v5;
    v17 = v7;
    [v6 performWritingBlock:&v12];
    if (v5)
    {
      [self didChangeValueForKey:@"isCancelled"];
    }

    [self didChangeValueForKey:@"isFinished"];
    [self didChangeValueForKey:@"isExecuting"];
    activity = [self activity];
    v9 = activity;
    if (error)
    {
      v10 = @"Canceled";
    }

    else
    {
      if (v5)
      {
        [activity markWithFormat:@"Finished with error: %@", v7, v12, v13, v14, v15, selfCopy];
LABEL_12:

        activity2 = [self activity];
        [activity2 invalidate];

        goto LABEL_13;
      }

      v10 = @"Finished";
    }

    [activity markWithReason:v10];
    goto LABEL_12;
  }

LABEL_13:
}

void __63__HAP2AsynchronousOperation__setFinalStateWithError_cancelled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 249) & 1) == 0)
  {
    if (*(a1 + 48) == 1)
    {
      *(v1 + 250) = 1;
      v1 = *(a1 + 32);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      objc_storeStrong((v1 + 256), v3);
      v1 = *(a1 + 32);
    }

    if (*(v1 + 248) == 1)
    {
      *(v1 + 248) = 0;
      *(*(a1 + 32) + 249) = 1;
    }
  }
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
  [(HAP2AsynchronousOperation *)self cancelWithError:v3];
}

- (void)main
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)start
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9649;
  v19 = __Block_byref_object_dispose__9650;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  [(HAP2AsynchronousOperation *)self willChangeValueForKey:@"isExecuting"];
  [(HAP2AsynchronousOperation *)self willChangeValueForKey:@"isFinished"];
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v4 = propertyLock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__HAP2AsynchronousOperation_start__block_invoke;
  v10[3] = &unk_2786D4688;
  v10[4] = self;
  v10[5] = &v15;
  v10[6] = &v11;
  [(HAP2PropertyLock *)v4 performWritingBlock:v10];

  [(HAP2AsynchronousOperation *)self didChangeValueForKey:@"isExecuting"];
  [(HAP2AsynchronousOperation *)self didChangeValueForKey:@"isFinished"];
  v5 = v16[5];
  if (v5)
  {
    objc_exception_throw(v5);
  }

  if (*(v12 + 24) == 1)
  {
    activity = [(HAP2AsynchronousOperation *)self activity];
    [activity begin];
    activity2 = [(HAP2AsynchronousOperation *)self activity];

    activity3 = [(HAP2AsynchronousOperation *)self activity];
    [activity3 markWithReason:@"Started"];

    v8 = objc_autoreleasePoolPush();
    [(HAP2AsynchronousOperation *)self main];
    objc_autoreleasePoolPop(v8);
    __HMFActivityScopeLeave();
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

uint64_t __34__HAP2AsynchronousOperation_start__block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[248] == 1)
  {
    v3 = MEMORY[0x277CBEAD8];
    v4 = *MEMORY[0x277CBE660];
    v5 = @"Operation is already executing.";
LABEL_10:
    v8 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    return MEMORY[0x2821F96F8]();
  }

  result = [v2 isReady];
  if ((result & 1) == 0)
  {
    v3 = MEMORY[0x277CBEAD8];
    v4 = *MEMORY[0x277CBE660];
    v5 = @"Operation is not ready.";
    goto LABEL_10;
  }

  v7 = a1[4];
  if (v7[250] == 1)
  {
    v7[249] = 1;
    v7 = a1[4];
  }

  if ((v7[249] & 1) == 0)
  {
    v7[248] = 1;
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

- (NSError)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__9649;
  v12 = __Block_byref_object_dispose__9650;
  v13 = 0;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__HAP2AsynchronousOperation_error__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)isCancelled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v11 = 0;
  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HAP2AsynchronousOperation_isCancelled__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)isFinished
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v11 = 0;
  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HAP2AsynchronousOperation_isFinished__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)isExecuting
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v11 = 0;
  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HAP2AsynchronousOperation_isExecuting__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (HAP2AsynchronousOperation)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(HAP2AsynchronousOperation *)self initWithName:v4];

  return v5;
}

- (HAP2AsynchronousOperation)initWithName:(id)name optionalActivity:(id)activity
{
  nameCopy = name;
  activityCopy = activity;
  v12.receiver = self;
  v12.super_class = HAP2AsynchronousOperation;
  v8 = [(HAP2AsynchronousOperation *)&v12 init];
  if (v8)
  {
    v9 = [HAP2PropertyLock lockWithName:@"HAP2AsynchronousOperation.propertyLock"];
    propertyLock = v8->_propertyLock;
    v8->_propertyLock = v9;

    if (!activityCopy)
    {
      activityCopy = [objc_alloc(MEMORY[0x277D0F770]) initWithName:nameCopy parent:0 options:16];
    }

    objc_storeStrong(&v8->_activity, activityCopy);
    [(HAP2AsynchronousOperation *)v8 setName:nameCopy];
  }

  return v8;
}

@end