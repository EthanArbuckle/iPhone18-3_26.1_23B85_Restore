@interface CATOperation
+ (id)callStackSymbols;
- (BOOL)isReady;
- (BOOL)whenStateIs:(int)is atomicallySwapWith:(int)with;
- (CATOperation)init;
- (id)description;
- (id)stateDescription;
- (void)addTarget:(id)target selector:(SEL)selector forOperationEvents:(unint64_t)events userInfo:(id)info delegateQueue:(id)queue;
- (void)endOperationSuccessfullyIfNeeded;
- (void)endOperationWithError:(id)error;
- (void)endOperationWithResultObject:(id)object;
- (void)finalizeOperation;
- (void)operationWillEnqueueOntoOperationQueue:(id)queue;
- (void)start;
@end

@implementation CATOperation

- (CATOperation)init
{
  v13.receiver = self;
  v13.super_class = CATOperation;
  v2 = [(CATOperation *)&v13 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    createdDate = v2->_createdDate;
    v2->_createdDate = date;

    uUID = [MEMORY[0x277CCAD78] UUID];
    UUID = v2->_UUID;
    v2->_UUID = uUID;

    v2->_completedUnitCount = -1;
    v2->_totalUnitCount = -1;
    v7 = objc_opt_new();
    mLock = v2->mLock;
    v2->mLock = v7;

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p", objc_opt_class(), v2];
    [(NSLock *)v2->mLock setName:v9];

    v10 = [[_CATObserverManager alloc] initWithOperation:v2];
    mObserverManager = v2->mObserverManager;
    v2->mObserverManager = v10;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(CATOperation *)self name];
  uUID = [(CATOperation *)self UUID];
  uUIDString = [uUID UUIDString];
  stateDescription = [(CATOperation *)self stateDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p { name = %@, ID = %@, state = %@, completed = %ld/%ld }>", v4, self, name, uUIDString, stateDescription, -[CATOperation completedUnitCount](self, "completedUnitCount"), -[CATOperation totalUnitCount](self, "totalUnitCount")];

  return v9;
}

- (id)stateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = aA[![(CATOperation *)self isAsynchronous]];
  v5 = atomic_load(&self->mState);
  return [v3 stringWithFormat:@"%c%c%c [%ld]", v4, aReeeef[v5], aC[!-[CATOperation isCanceled](self, "isCanceled")], -[CATOperation queuePriority](self, "queuePriority")];
}

- (BOOL)isReady
{
  if ([(CATOperation *)self whenStateIs:0 atomicallySwapWith:1])
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(CATOperation *)self setEnqueuedDate:date];

    [(CATOperation *)self setPhase:1];
  }

  v5.receiver = self;
  v5.super_class = CATOperation;
  return [(CATOperation *)&v5 isReady];
}

- (void)start
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v3 = atomic_load((v1 + 256));
  [currentHandler handleFailureInMethod:v0 object:v1 file:@"CATOperation.m" lineNumber:250 description:{@"%@ cannot transition to '_CATOperationStateRunning' from state (%d).", v1, v3}];
}

- (void)endOperationSuccessfullyIfNeeded
{
  obj = [objc_opt_class() callStackSymbols];
  [(NSLock *)self->mLock lock];
  if ([(CATOperation *)self whenStateIs:3 atomicallySwapWith:4])
  {
    objc_storeStrong(&self->mCallStackSymbols, obj);
    [(NSLock *)self->mLock unlock];
    [(CATOperation *)self finalizeOperation];
  }

  else
  {
    [(NSLock *)self->mLock unlock];
  }
}

- (void)endOperationWithResultObject:(id)object
{
  objectCopy = object;
  callStackSymbols = [objc_opt_class() callStackSymbols];
  [(NSLock *)self->mLock lock];
  if ([(CATOperation *)self whenStateIs:3 atomicallySwapWith:4])
  {
    objc_storeStrong(&self->mCallStackSymbols, callStackSymbols);
    [(NSLock *)self->mLock unlock];
    [(CATOperation *)self setResultObject:objectCopy];
    [(CATOperation *)self finalizeOperation];
  }

  else
  {
    v6 = atomic_load(&self->mState);
    [(NSLock *)self->mLock unlock];
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = NSStringFromSelector(a2);
    v9 = v8;
    if (v6 > 4)
    {
      [currentHandler handleFailureInMethod:a2 object:self file:@"CATOperation.m" lineNumber:311 description:{@"%@ cannot call %@ when operation is already finished. Previous call:\n%@", self, v8, self->mCallStackSymbols}];
    }

    else
    {
      v10 = atomic_load(&self->mState);
      [currentHandler handleFailureInMethod:a2 object:self file:@"CATOperation.m" lineNumber:307 description:{@"%@ cannot call %@ when operation's state is %ld", self, v8, v10}];
    }
  }
}

- (void)endOperationWithError:(id)error
{
  errorCopy = error;
  callStackSymbols = [objc_opt_class() callStackSymbols];
  if (!errorCopy)
  {
    [CATOperation endOperationWithError:];
  }

  [(NSLock *)self->mLock lock];
  if ([(CATOperation *)self whenStateIs:3 atomicallySwapWith:4])
  {
    objc_storeStrong(&self->mCallStackSymbols, callStackSymbols);
    [(NSLock *)self->mLock unlock];
    [(CATOperation *)self setError:errorCopy];
    [(CATOperation *)self finalizeOperation];
  }

  else
  {
    v6 = atomic_load(&self->mState);
    [(NSLock *)self->mLock unlock];
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = NSStringFromSelector(a2);
    v9 = v8;
    if (v6 > 4)
    {
      [currentHandler handleFailureInMethod:a2 object:self file:@"CATOperation.m" lineNumber:336 description:{@"%@ cannot call %@ when operation is already finished. Previous call:\n%@", self, v8, self->mCallStackSymbols}];
    }

    else
    {
      v10 = atomic_load(&self->mState);
      [currentHandler handleFailureInMethod:a2 object:self file:@"CATOperation.m" lineNumber:332 description:{@"%@ cannot call %@ when operation's state is %ld", self, v8, v10}];
    }
  }
}

+ (id)callStackSymbols
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"CATCaptureCallStackSymbols"];
  v4 = v3;
  v5 = MEMORY[0x277CBEC28];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  bOOLValue = [v6 BOOLValue];
  if (bOOLValue)
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v9 = [callStackSymbols copy];

    v10 = [v9 subarrayWithRange:{1, objc_msgSend(v9, "count") - 1}];
  }

  else
  {
    v10 = &unk_28560C270;
  }

  return v10;
}

- (void)finalizeOperation
{
  [(CATOperation *)self operationWillFinish];
  if ([(CATOperation *)self whenStateIs:4 atomicallySwapWith:5])
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(CATOperation *)self setFinishedDate:date];

    [(CATOperation *)self willChangeValueForKey:@"isExecuting"];
    [(CATOperation *)self willChangeValueForKey:@"isFinished"];
    [(CATOperation *)self setPhase:3];
    [(CATOperation *)self didChangeValueForKey:@"isFinished"];
    [(CATOperation *)self didChangeValueForKey:@"isExecuting"];
    [(CATOperation *)self operationDidFinish];
    mObserverManager = self->mObserverManager;

    [(_CATObserverManager *)mObserverManager operationDidFinish:self];
  }
}

- (void)operationWillEnqueueOntoOperationQueue:(id)queue
{
  if ([(CATOperation *)self whenStateIs:0 atomicallySwapWith:1])
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(CATOperation *)self setEnqueuedDate:date];

    [(CATOperation *)self setPhase:1];
  }
}

- (BOOL)whenStateIs:(int)is atomicallySwapWith:(int)with
{
  isCopy = is;
  atomic_compare_exchange_strong(&self->mState, &isCopy, with);
  return isCopy == is;
}

- (void)addTarget:(id)target selector:(SEL)selector forOperationEvents:(unint64_t)events userInfo:(id)info delegateQueue:(id)queue
{
  queueCopy = queue;
  infoCopy = info;
  targetCopy = target;
  v15 = [[_CATOperationTargetSelectorObserver alloc] initWithTarget:targetCopy selector:selector events:events userInfo:infoCopy delegateQueue:queueCopy];

  [(CATOperation *)self addObserver:v15];
}

- (void)endOperationWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

@end