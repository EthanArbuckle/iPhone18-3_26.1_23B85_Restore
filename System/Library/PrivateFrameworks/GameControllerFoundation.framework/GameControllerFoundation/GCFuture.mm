@interface GCFuture
+ (id)alloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)cancelledFuture;
+ (id)futureOnQueue:(id)queue withBlock:(id)block;
+ (id)futureWithBlock:(id)block;
+ (id)futureWithError:(id)error;
+ (id)futureWithLabel:(id)label block:(id)block;
+ (id)futureWithLabel:(id)label onQueue:(id)queue block:(id)block;
+ (id)futureWithOptions:(unsigned int)options block:(id)block;
+ (id)futureWithResult:(id)result;
- (BOOL)_setState:(int64_t)state result:(id)result error:(id)error;
- (GCFuture)init;
- (GCFuture)initWithError:(id)error;
- (GCFuture)initWithResult:(id)result;
- (id)_init;
- (id)_thenRequiringState:(int64_t)state onQueue:(id)queue withOptions:(unsigned int)options qosClass:(unsigned int)class relativePriority:(int)priority label:(id)label block:(id)block;
- (id)_thenSynchronouslyRequiringState:(int64_t)state onQueue:(id)queue withOptions:(unsigned int)options qosClass:(unsigned int)class relativePriority:(int)priority label:(id)label block:(id)block;
- (id)debugDescription;
- (id)description;
- (id)error;
- (id)initCancelled;
- (id)initOnQueue:(id)queue withBlock:(id)block;
- (id)initOnQueue:(id)queue withOptions:(unsigned int)options block:(id)block;
- (id)result;
- (id)resultIfFinished;
- (id)thenOnQueue:(id)queue with:(id)with;
- (id)thenOnQueue:(id)queue withResult:(id)result;
- (id)thenSynchronouslyOnQueue:(id)queue with:(id)with;
- (id)thenSynchronouslyWith:(id)with;
- (id)thenSynchronouslyWithResult:(id)result;
- (id)thenWith:(id)with;
- (id)thenWithResult:(id)result;
- (int64_t)waitForResult:(id *)result error:(id *)error;
- (void)_observeFinishOnQueue:(id)queue withOptions:(unsigned int)options qosClass:(unsigned int)class relativePriority:(int)priority block:(id)block;
- (void)dealloc;
- (void)failWithError:(void *)error;
- (void)observeCancellation:(id)cancellation;
- (void)observeFailure:(id)failure;
- (void)observeSuccess:(id)success;
- (void)observeSuccessOnQueue:(id)queue withBlock:(id)block;
- (void)succeedWithResult:(void *)result;
@end

@implementation GCFuture

+ (id)futureWithBlock:(id)block
{
  blockCopy = block;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v3);
  v5 = [[_GCAsyncFuture alloc] _initOnQueue:0 withOptions:blockCopy block:?];

  return v5;
}

+ (id)futureWithOptions:(unsigned int)options block:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v4);
  v7 = [[_GCAsyncFuture alloc] _initOnQueue:optionsCopy withOptions:blockCopy block:?];

  return v7;
}

+ (id)futureWithLabel:(id)label block:(id)block
{
  labelCopy = label;
  blockCopy = block;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v4);
  v8 = [[_GCAsyncFuture alloc] _initOnQueue:0 withOptions:blockCopy block:?];
  [v8 setLabel:labelCopy];

  return v8;
}

+ (id)futureWithLabel:(id)label onQueue:(id)queue block:(id)block
{
  labelCopy = label;
  queueCopy = queue;
  blockCopy = block;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v5);
  v11 = [[_GCAsyncFuture alloc] _initOnQueue:queueCopy withOptions:0 block:blockCopy];
  [v11 setLabel:labelCopy];

  return v11;
}

+ (id)futureOnQueue:(id)queue withBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v4);
  v8 = [(GCFuture *)[_GCAsyncFuture alloc] initOnQueue:queueCopy withBlock:blockCopy];

  return v8;
}

+ (id)futureWithError:(id)error
{
  errorCopy = error;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v3);
  v5 = [(GCFuture *)[_GCStaticFuture alloc] initWithError:errorCopy];

  return v5;
}

+ (id)futureWithResult:(id)result
{
  resultCopy = result;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v3);
  v5 = [(GCFuture *)[_GCStaticFuture alloc] initWithResult:resultCopy];

  return v5;
}

+ (id)cancelledFuture
{
  if (+[GCFuture cancelledFuture]::onceToken != -1)
  {
    +[GCFuture cancelledFuture];
  }

  v3 = +[GCFuture cancelledFuture]::CancelledFuture;

  return v3;
}

uint64_t __27__GCFuture_cancelledFuture__block_invoke()
{
  +[GCFuture cancelledFuture]::CancelledFuture = [(GCFuture *)[_GCStaticFuture alloc] initCancelled];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    if (__creatorFrameKey(void)::onceToken != -1)
    {
      +[GCFuture futureWithBlock:];
    }

    pthread_setspecific(__creatorFrameKey(void)::key, v3);
    __immutablePlaceholderFuture();
    return objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___GCFuture;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

+ (id)alloc
{
  if (objc_opt_class() == self)
  {
    if (__creatorFrameKey(void)::onceToken != -1)
    {
      +[GCFuture futureWithBlock:];
    }

    pthread_setspecific(__creatorFrameKey(void)::key, v2);
    __immutablePlaceholderFuture();
    return objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___GCFuture;
    return objc_msgSendSuper2(&v5, sel_allocWithZone_, 0);
  }
}

- (GCFuture)init
{
  [(GCFuture *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCFuture)initWithResult:(id)result
{
  resultCopy = result;
  v5 = [[_GCStaticFuture alloc] _initWithResult:resultCopy];

  return v5;
}

- (GCFuture)initWithError:(id)error
{
  errorCopy = error;
  v5 = [[_GCStaticFuture alloc] _initWithError:errorCopy];

  return v5;
}

- (id)initCancelled
{
  inited = [[_GCStaticFuture alloc] _initCancelled];

  return inited;
}

- (id)initOnQueue:(id)queue withOptions:(unsigned int)options block:(id)block
{
  optionsCopy = options;
  queueCopy = queue;
  blockCopy = block;
  v10 = [[_GCAsyncFuture alloc] _initOnQueue:queueCopy withOptions:optionsCopy block:blockCopy];

  return v10;
}

- (id)initOnQueue:(id)queue withBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v8 = [[_GCAsyncFuture alloc] _initOnQueue:queueCopy withOptions:0 block:blockCopy];

  return v8;
}

- (void)dealloc
{
  state = self->_state;
  if (state >= 3 && state != 254)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [(GCFuture *)self debugDescription];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:580 description:{@"Future deallocated without finishing: %@", v6}];
  }

  v7.receiver = self;
  v7.super_class = GCFuture;
  [(GCFuture *)&v7 dealloc];
}

- (id)debugDescription
{
  label = [(GCFuture *)self label];
  if ((self->_state + 2) > 4u)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E84152D8[(self->_state + 2)];
  }

  _creatorFrame = [(GCFuture *)self _creatorFrame];
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithFormat:@"<%@ %p", v8, self];

  if (label)
  {
    [v9 appendFormat:@" '%@'", label];
  }

  if (_creatorFrame)
  {
    if (dladdr(_creatorFrame, &v15))
    {
      if (v15.dli_fname)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        v11 = [v10 componentsSeparatedByString:@"/"];
        lastObject = [v11 lastObject];
      }

      else
      {
        lastObject = 0;
      }

      if (v15.dli_sname)
      {
        [v9 appendFormat:@" @0x%lx %@+%zu %s+%zu", _creatorFrame, lastObject, _creatorFrame - v15.dli_fbase, v15.dli_sname, _creatorFrame - v15.dli_saddr];
      }

      else
      {
        [v9 appendFormat:@" @0x%lx %@+%zu", _creatorFrame, lastObject, _creatorFrame - v15.dli_fbase];
      }
    }

    else
    {
      [v9 appendFormat:@" @0x%lx", _creatorFrame];
    }
  }

  [v9 appendFormat:@" [%@]", v4];
  if (self->_state == 1)
  {
    localizedDescription = [*&self->_flags localizedDescription];
    [v9 appendFormat:@": '%@'", localizedDescription];
  }

  [v9 appendString:@">"];

  return v9;
}

- (id)description
{
  label = [(GCFuture *)self label];
  _creatorFrame = [(GCFuture *)self _creatorFrame];
  v5 = _creatorFrame;
  state = self->_state;
  if (_creatorFrame)
  {
    v7 = label == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  v9 = MEMORY[0x1E696AEC0];
  if (self->_state > 1u)
  {
    if (state == 2)
    {
      if (v8)
      {
        v14 = objc_opt_class();
        v11 = NSStringFromClass(v14);
        v12 = [v9 stringWithFormat:@"<%@ '%@' @0x%lx [succeeded]>", v11, label, v5];
        goto LABEL_47;
      }

      if (_creatorFrame)
      {
        v21 = objc_opt_class();
        v11 = NSStringFromClass(v21);
        v12 = [v9 stringWithFormat:@"<%@ @0x%lx [succeeded]>", v11, v5];
        goto LABEL_47;
      }

      v27 = objc_opt_class();
      v11 = NSStringFromClass(v27);
      if (label)
      {
        [v9 stringWithFormat:@"<%@ '%@' [succeeded]>", v11, label];
      }

      else
      {
        [v9 stringWithFormat:@"<%@ [succeeded]>", v11];
      }
    }

    else if (state == 254)
    {
      if (v8)
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v9 stringWithFormat:@"<%@ '%@' @0x%lx [pending]>", v11, label, v5];
LABEL_47:
        v33 = v12;
        goto LABEL_48;
      }

      if (_creatorFrame)
      {
        v22 = objc_opt_class();
        v11 = NSStringFromClass(v22);
        v12 = [v9 stringWithFormat:@"<%@ @0x%lx [pending]>", v11, v5];
        goto LABEL_47;
      }

      v28 = objc_opt_class();
      v11 = NSStringFromClass(v28);
      if (label)
      {
        [v9 stringWithFormat:@"<%@ '%@' [pending]>", v11, label];
      }

      else
      {
        [v9 stringWithFormat:@"<%@ [pending]>", v11];
      }
    }

    else
    {
      if (v8)
      {
        v15 = objc_opt_class();
        v11 = NSStringFromClass(v15);
        v12 = [v9 stringWithFormat:@"<%@ '%@' @0x%lx [running]>", v11, label, v5];
        goto LABEL_47;
      }

      if (_creatorFrame)
      {
        v23 = objc_opt_class();
        v11 = NSStringFromClass(v23);
        v12 = [v9 stringWithFormat:@"<%@ @0x%lx [running]>", v11, v5];
        goto LABEL_47;
      }

      v29 = objc_opt_class();
      v11 = NSStringFromClass(v29);
      if (label)
      {
        [v9 stringWithFormat:@"<%@ '%@' [running]>", v11, label];
      }

      else
      {
        [v9 stringWithFormat:@"<%@ [running]>", v11];
      }
    }

    goto LABEL_39;
  }

  if (!self->_state)
  {
    if (v8)
    {
      v13 = objc_opt_class();
      v11 = NSStringFromClass(v13);
      v12 = [v9 stringWithFormat:@"<%@ '%@' @0x%lx [cancelled]>", v11, label, v5];
      goto LABEL_47;
    }

    if (_creatorFrame)
    {
      v24 = objc_opt_class();
      v11 = NSStringFromClass(v24);
      v12 = [v9 stringWithFormat:@"<%@ @0x%lx [cancelled]>", v11, v5];
      goto LABEL_47;
    }

    v30 = objc_opt_class();
    v11 = NSStringFromClass(v30);
    if (label)
    {
      [v9 stringWithFormat:@"<%@ '%@' [cancelled]>", v11, label];
    }

    else
    {
      [v9 stringWithFormat:@"<%@ [cancelled]>", v11];
    }

    v12 = LABEL_39:;
    goto LABEL_47;
  }

  if (v8)
  {
    v16 = objc_opt_class();
    v11 = NSStringFromClass(v16);
    domain = [*&self->_flags domain];
    code = [*&self->_flags code];
    localizedDescription = [*&self->_flags localizedDescription];
    v20 = [v9 stringWithFormat:@"<%@ '%@' @0x%lx [failed]: %@/%zu '%@'>", v11, label, v5, domain, code, localizedDescription];
  }

  else if (_creatorFrame)
  {
    v25 = objc_opt_class();
    v11 = NSStringFromClass(v25);
    domain = [*&self->_flags domain];
    code2 = [*&self->_flags code];
    localizedDescription = [*&self->_flags localizedDescription];
    v20 = [v9 stringWithFormat:@"<%@ @0x%lx [failed]: %@/%zu '%@'>", v11, v5, domain, code2, localizedDescription];
  }

  else
  {
    v31 = objc_opt_class();
    v11 = NSStringFromClass(v31);
    domain = [*&self->_flags domain];
    code3 = [*&self->_flags code];
    localizedDescription = [*&self->_flags localizedDescription];
    if (label)
    {
      [v9 stringWithFormat:@"<%@ '%@' [failed]: %@/%zu '%@'>", v11, label, domain, code3, localizedDescription];
    }

    else
    {
      [v9 stringWithFormat:@"<%@ [failed]: %@/%zu '%@'>", v11, domain, code3, localizedDescription];
    }
    v20 = ;
  }

  v33 = v20;

LABEL_48:

  return v33;
}

- (BOOL)_setState:(int64_t)state result:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v11 = errorCopy;
  if (state < 0)
  {
    if (state == -2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:704 description:{@"Attempted to transition to the pending state.\n%@", self}];
      goto LABEL_19;
    }

    if (state == -1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:708 description:{@"Attempted to transition to the running state.\n%@", self}];
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!state)
  {
    atomic_store(1u, &self->_state + 3);
    if (errorCopy)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:713 description:{@"Attempted to transition to the cancelled state, but provided an error (%@).\n%@", v11, self}];

      if (!resultCopy)
      {
        goto LABEL_20;
      }
    }

    else if (!resultCopy)
    {
      goto LABEL_20;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:714 description:{@"Attempted to transition to the cancelled state, but provided a result (%@).\n%@", resultCopy, self}];
    goto LABEL_19;
  }

  if (state == 1)
  {
    if (errorCopy)
    {
      if (!resultCopy)
      {
        goto LABEL_20;
      }
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:718 description:{@"Attempted to transition to the failed state, but did not provide an error.\n%@", self}];

      if (!resultCopy)
      {
        goto LABEL_20;
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:719 description:{@"Attempted to transition to the failed state, but provided a result (%@).\n%@", resultCopy, self}];
    goto LABEL_19;
  }

  if (state != 2)
  {
LABEL_18:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:728 description:{@"Attempted to transition to an invalid state (%ld).\n%@", state, self}];
    goto LABEL_19;
  }

  if (!errorCopy)
  {
    if (resultCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:723 description:{@"Attempted to transition to the succeeded state, but provided an error (%@).\n%@", resultCopy, self}];

  if (!resultCopy)
  {
LABEL_7:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:724 description:{@"Attempted to transition to the succeeded state, but did not provide a result.\n%@", self}];
LABEL_19:
  }

LABEL_20:
  os_unfair_lock_lock_with_options();
  state = self->_state;
  if (state <= 0xFD)
  {
    if (self->_state)
    {
      if (state == 1)
      {
        os_unfair_lock_unlock(&self->_lock);
        if (state == 2)
        {
          currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler5 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:760 description:{@"Attempted to transition to the succeeded state from the failed state.\n%@", self}];
          goto LABEL_46;
        }

        if (state == 1)
        {
          currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler5 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:761 description:{@"Attempted to transition to the failed state twice.\n%@", self}];
          goto LABEL_46;
        }

LABEL_35:
        v16 = 0;
        goto LABEL_36;
      }

      if (state == 2)
      {
        os_unfair_lock_unlock(&self->_lock);
        if (state == 2)
        {
          currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler5 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:768 description:{@"Attempted to transition to the succeeded state twice.\n%@", self}];
          goto LABEL_46;
        }

        if (state == 1)
        {
          currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler5 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:769 description:{@"Attempted to transition to the failed state from the succeeded state.\n%@", self}];
LABEL_46:

          goto LABEL_35;
        }

        goto LABEL_35;
      }
    }

LABEL_32:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_35;
  }

  if (state - 254 > 1)
  {
    goto LABEL_32;
  }

  self->_state = state;
  if (resultCopy)
  {
    v15 = resultCopy;
  }

  else
  {
    v15 = v11;
  }

  objc_storeStrong(&self->_flags, v15);
  __dmb(0xBu);
  os_unfair_lock_unlock(&self->_lock);
  v16 = 1;
LABEL_36:

  return v16;
}

- (void)succeedWithResult:(void *)result
{
  v3 = a2;
  if (result)
  {
    [result _setState:2 result:v3 error:0];
  }
}

- (void)failWithError:(void *)error
{
  v3 = a2;
  if (error)
  {
    [error _setState:1 result:0 error:v3];
  }
}

- (void)_observeFinishOnQueue:(id)queue withOptions:(unsigned int)options qosClass:(unsigned int)class relativePriority:(int)priority block:(id)block
{
  optionsCopy = options;
  queueCopy = queue;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:796 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  if (![(GCFuture *)self _checkFinished:0])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:797 description:{@"Subclass must implement %s", sel_getName(a2)}];
  }

  state = self->_state;
  if (state == 2)
  {
    v16 = *&self->_flags;
  }

  else
  {
    v16 = 0;
  }

  if (self->_state == 1)
  {
    v17 = *&self->_flags;
  }

  else
  {
    v17 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__GCFuture__observeFinishOnQueue_withOptions_qosClass_relativePriority_block___block_invoke;
  aBlock[3] = &unk_1E8415060;
  v30 = blockCopy;
  v31 = state;
  if ((optionsCopy & 4) != 0)
  {
    v18 = optionsCopy & 2 | 0x24;
  }

  else
  {
    v18 = (optionsCopy & 2);
  }

  v28 = v16;
  v29 = v17;
  v19 = v17;
  v20 = v16;
  v21 = blockCopy;
  v22 = _Block_copy(aBlock);
  if (queueCopy)
  {
    if (class && v18)
    {
      v23 = dispatch_block_create_with_qos_class(v18, class, priority, v22);
    }

    else
    {
      if (!v18)
      {
LABEL_22:
        dispatch_async(queueCopy, v22);
        goto LABEL_23;
      }

      v23 = dispatch_block_create(v18, v22);
    }

    v24 = v23;

    v22 = v24;
    goto LABEL_22;
  }

  dispatch_block_perform(v18, v22);
LABEL_23:
}

uint64_t __78__GCFuture__observeFinishOnQueue_withOptions_qosClass_relativePriority_block___block_invoke(void *a1)
{
  v1 = a1[7];
  v2 = a1[4];
  v3 = a1[5];
  return __GCFUTURE_IS_CALLING_OUT_TO_AN_OBSERVER__(a1[6]);
}

- (void)observeSuccess:(id)success
{
  successCopy = success;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__GCFuture_observeSuccess___block_invoke;
  v6[3] = &unk_1E8415088;
  v7 = successCopy;
  v5 = successCopy;
  [(GCFuture *)self observeFinish:v6];
}

void __27__GCFuture_observeSuccess___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)observeSuccessOnQueue:(id)queue withBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__GCFuture_observeSuccessOnQueue_withBlock___block_invoke;
  v8[3] = &unk_1E8415088;
  v9 = blockCopy;
  v7 = blockCopy;
  [(GCFuture *)self observeFinishOnQueue:queue withBlock:v8];
}

void __44__GCFuture_observeSuccessOnQueue_withBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)observeFailure:(id)failure
{
  failureCopy = failure;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__GCFuture_observeFailure___block_invoke;
  v6[3] = &unk_1E8415088;
  v7 = failureCopy;
  v5 = failureCopy;
  [(GCFuture *)self observeFinish:v6];
}

void __27__GCFuture_observeFailure___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2 == 1)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)observeCancellation:(id)cancellation
{
  cancellationCopy = cancellation;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__GCFuture_observeCancellation___block_invoke;
  v6[3] = &unk_1E8415088;
  v7 = cancellationCopy;
  v5 = cancellationCopy;
  [(GCFuture *)self observeFinish:v6];
}

uint64_t __32__GCFuture_observeCancellation___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)resultIfFinished
{
  if ([(GCFuture *)self _checkFinished:0]&& self->_state == 2)
  {
    v3 = *&self->_flags;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)waitForResult:(id *)result error:(id *)error
{
  [(GCFuture *)self _checkFinished:1];
  state = self->_state;
  if (self->_state)
  {
    if (state != 1)
    {
      state = 2;
      if (!result)
      {
        return state;
      }

      goto LABEL_4;
    }

    state = 1;
    result = error;
    if (error)
    {
LABEL_4:
      *result = *&self->_flags;
    }
  }

  return state;
}

- (id)error
{
  [(GCFuture *)self _checkFinished:1];
  if (self->_state == 1)
  {
    v3 = *&self->_flags;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)result
{
  [(GCFuture *)self _checkFinished:1];
  if (self->_state == 2)
  {
    v3 = *&self->_flags;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_thenRequiringState:(int64_t)state onQueue:(id)queue withOptions:(unsigned int)options qosClass:(unsigned int)class relativePriority:(int)priority label:(id)label block:(id)block
{
  queueCopy = queue;
  labelCopy = label;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:940 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v19 = [_GCAsyncFuture alloc];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __90__GCFuture__thenRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke;
  v25[3] = &unk_1E8415100;
  v25[4] = self;
  v20 = queueCopy;
  optionsCopy = options;
  classCopy = class;
  priorityCopy = priority;
  v26 = v20;
  stateCopy = state;
  v21 = blockCopy;
  v27 = v21;
  v29 = a2;
  v22 = [(GCFuture *)v19 initOnQueue:0 withOptions:0 block:v25];

  return v22;
}

void __90__GCFuture__thenRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v7 = *(a1 + 76);
  v8 = *(a1 + 80);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__GCFuture__thenRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke_2;
  v13[3] = &unk_1E84150D8;
  v9 = *(a1 + 48);
  v16 = *(a1 + 56);
  v13[4] = v4;
  v14 = v3;
  v10 = v9;
  v11 = *(a1 + 64);
  v15 = v10;
  v17 = v11;
  v12 = v3;
  [v4 observeFinishOnQueue:v5 withOptions:v6 qosClass:v7 relativePriority:v8 block:v13];
}

void __90__GCFuture__thenRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  if (v10 == 2)
  {
    if (a2 == 2)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (v10 == 1)
  {
    if (a2 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    v12 = [*(a1 + 40) future];
    [v12 _setState:a2 result:v7 error:v8];

    goto LABEL_13;
  }

  if (!v10 && a2)
  {
    goto LABEL_12;
  }

LABEL_9:
  v11 = (*(*(a1 + 48) + 16))();
  if (!v11)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"GCFuture.mm" lineNumber:972 description:@"Assertion failed: next != nullptr"];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__GCFuture__thenRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke_3;
  v14[3] = &unk_1E84150B0;
  v15 = *(a1 + 40);
  [v11 observeFinish:v14];

LABEL_13:
}

void __90__GCFuture__thenRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) future];
  [v8 _setState:a2 result:v9 error:v7];
}

- (id)_thenSynchronouslyRequiringState:(int64_t)state onQueue:(id)queue withOptions:(unsigned int)options qosClass:(unsigned int)class relativePriority:(int)priority label:(id)label block:(id)block
{
  queueCopy = queue;
  labelCopy = label;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:988 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v19 = [_GCAsyncFuture alloc];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __103__GCFuture__thenSynchronouslyRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke;
  v25[3] = &unk_1E8415150;
  v25[4] = self;
  v20 = queueCopy;
  optionsCopy = options;
  classCopy = class;
  priorityCopy = priority;
  v26 = v20;
  stateCopy = state;
  v21 = blockCopy;
  v27 = v21;
  v22 = [(GCFuture *)v19 initOnQueue:0 withOptions:0 block:v25];

  return v22;
}

void __103__GCFuture__thenSynchronouslyRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v7 = *(a1 + 68);
  v8 = *(a1 + 72);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __103__GCFuture__thenSynchronouslyRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke_2;
  v11[3] = &unk_1E8415128;
  v9 = *(a1 + 48);
  v14 = *(a1 + 56);
  v11[4] = v4;
  v12 = v3;
  v13 = v9;
  v10 = v3;
  [v4 observeFinishOnQueue:v5 withOptions:v6 qosClass:v7 relativePriority:v8 block:v11];
}

void __103__GCFuture__thenSynchronouslyRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  if (v10 > 2 || v10 == a2)
  {
    if (!a2)
    {
      [*(a1 + 40) cancel];
    }

    v12 = v8;
    v13 = *(a1 + 48);
    v14 = [*(a1 + 40) future];
    v20 = v12;
    v15 = (*(v13 + 16))(v13, a2, v7, v14 + 15, &v20);
    v16 = v20;

    v17 = [*(a1 + 40) future];
    LOBYTE(v12) = atomic_load_explicit(v17 + 15, memory_order_acquire);

    if (v12)
    {
      v18 = [*(a1 + 40) future];
      [v18 _setState:0 result:0 error:0];
    }

    else if (v15)
    {
      v18 = [*(a1 + 40) future];
      [v18 _setState:2 result:v15 error:0];
    }

    else
    {
      if (!v16)
      {
        __103__GCFuture__thenSynchronouslyRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke_2_cold_1();
      }

      v18 = [*(a1 + 40) future];
      [v18 _setState:1 result:0 error:v16];
    }
  }

  else
  {
    v19 = [*(a1 + 40) future];
    [v19 _setState:a2 result:v7 error:v8];
  }
}

- (id)thenWith:(id)with
{
  withCopy = with;
  if (!withCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:1039 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v6 = [_GCAsyncFuture alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __21__GCFuture_thenWith___block_invoke;
  v11[3] = &unk_1E84151A0;
  v11[4] = self;
  v7 = withCopy;
  v12 = v7;
  v13 = a2;
  v8 = [(_GCAsyncFuture *)v6 _initOnQueue:0 withOptions:v11 block:?];

  return v8;
}

void __21__GCFuture_thenWith___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __21__GCFuture_thenWith___block_invoke_2;
  v8[3] = &unk_1E8415178;
  v8[4] = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v9 = v3;
  v7 = v3;
  [v4 observeFinish:v8];
}

void __21__GCFuture_thenWith___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(*(a1 + 48) + 16))();
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"GCFuture.mm" lineNumber:1048 description:@"Assertion failed: next != nullptr"];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__GCFuture_thenWith___block_invoke_3;
  v5[3] = &unk_1E84150B0;
  v6 = *(a1 + 40);
  [v3 observeFinish:v5];
}

void __21__GCFuture_thenWith___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) future];
  [v8 _setState:a2 result:v9 error:v7];
}

- (id)thenWithResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:1057 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v6 = [_GCAsyncFuture alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__GCFuture_thenWithResult___block_invoke;
  v11[3] = &unk_1E84151A0;
  v11[4] = self;
  v7 = resultCopy;
  v12 = v7;
  v13 = a2;
  v8 = [(_GCAsyncFuture *)v6 _initOnQueue:0 withOptions:v11 block:?];

  return v8;
}

void __27__GCFuture_thenWithResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __27__GCFuture_thenWithResult___block_invoke_2;
  v8[3] = &unk_1E8415128;
  v8[4] = v4;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 observeFinish:v8];
}

void __27__GCFuture_thenWithResult___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (a2 == 2)
  {
    v10 = (*(*(a1 + 48) + 16))();
    if (!v10)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"GCFuture.mm" lineNumber:1074 description:@"Assertion failed: next != nullptr"];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __27__GCFuture_thenWithResult___block_invoke_3;
    v12[3] = &unk_1E84150B0;
    v13 = *(a1 + 40);
    [v10 observeFinish:v12];
  }

  else if (a2 == 1)
  {
    [*(a1 + 40) failWithError:v8];
  }

  else
  {
    [*(a1 + 40) cancel];
  }
}

void __27__GCFuture_thenWithResult___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) future];
  [v8 _setState:a2 result:v9 error:v7];
}

- (id)thenOnQueue:(id)queue with:(id)with
{
  queueCopy = queue;
  withCopy = with;
  if (!withCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:1088 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v9 = [_GCAsyncFuture alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __29__GCFuture_thenOnQueue_with___block_invoke;
  v15[3] = &unk_1E84151C8;
  v15[4] = self;
  v10 = queueCopy;
  v16 = v10;
  v11 = withCopy;
  v17 = v11;
  v18 = a2;
  v12 = [(_GCAsyncFuture *)v9 _initOnQueue:0 withOptions:v15 block:?];

  return v12;
}

void __29__GCFuture_thenOnQueue_with___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__GCFuture_thenOnQueue_with___block_invoke_2;
  v9[3] = &unk_1E8415178;
  v9[4] = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11 = v6;
  v12 = v7;
  v10 = v3;
  v8 = v3;
  [v4 observeFinishOnQueue:v5 withBlock:v9];
}

void __29__GCFuture_thenOnQueue_with___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(*(a1 + 48) + 16))();
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"GCFuture.mm" lineNumber:1097 description:@"Assertion failed: next != nullptr"];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__GCFuture_thenOnQueue_with___block_invoke_3;
  v5[3] = &unk_1E84150B0;
  v6 = *(a1 + 40);
  [v3 observeFinish:v5];
}

void __29__GCFuture_thenOnQueue_with___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) future];
  [v8 _setState:a2 result:v9 error:v7];
}

- (id)thenOnQueue:(id)queue withResult:(id)result
{
  queueCopy = queue;
  resultCopy = result;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:1106 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v9 = [_GCAsyncFuture alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__GCFuture_thenOnQueue_withResult___block_invoke;
  v15[3] = &unk_1E84151C8;
  v15[4] = self;
  v10 = queueCopy;
  v16 = v10;
  v11 = resultCopy;
  v17 = v11;
  v18 = a2;
  v12 = [(_GCAsyncFuture *)v9 _initOnQueue:0 withOptions:v15 block:?];

  return v12;
}

void __35__GCFuture_thenOnQueue_withResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__GCFuture_thenOnQueue_withResult___block_invoke_2;
  v9[3] = &unk_1E8415128;
  v9[4] = v4;
  v10 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  [v4 observeFinishOnQueue:v5 withBlock:v9];
}

void __35__GCFuture_thenOnQueue_withResult___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (a2 == 2)
  {
    v10 = (*(*(a1 + 48) + 16))();
    if (!v10)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"GCFuture.mm" lineNumber:1123 description:@"Assertion failed: next != nullptr"];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__GCFuture_thenOnQueue_withResult___block_invoke_3;
    v12[3] = &unk_1E84150B0;
    v13 = *(a1 + 40);
    [v10 observeFinish:v12];
  }

  else if (a2 == 1)
  {
    [*(a1 + 40) failWithError:v8];
  }

  else
  {
    [*(a1 + 40) cancel];
  }
}

void __35__GCFuture_thenOnQueue_withResult___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) future];
  [v8 _setState:a2 result:v9 error:v7];
}

- (id)thenSynchronouslyOnQueue:(id)queue with:(id)with
{
  v4 = [(GCFuture *)self _thenSynchronouslyRequiringState:-128 onQueue:queue withOptions:0 qosClass:0 relativePriority:0 label:0 block:with];

  return v4;
}

- (id)thenSynchronouslyWith:(id)with
{
  v3 = [(GCFuture *)self _thenSynchronouslyRequiringState:-128 onQueue:0 withOptions:0 qosClass:0 relativePriority:0 label:0 block:with];

  return v3;
}

- (id)thenSynchronouslyWithResult:(id)result
{
  resultCopy = result;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__GCFuture_thenSynchronouslyWithResult___block_invoke;
  v8[3] = &unk_1E84151F0;
  v9 = resultCopy;
  v5 = resultCopy;
  v6 = [(GCFuture *)self _thenSynchronouslyRequiringState:-128 onQueue:0 withOptions:0 qosClass:0 relativePriority:0 label:0 block:v8];

  return v6;
}

id __40__GCFuture_thenSynchronouslyWithResult___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

- (id)_init
{
  if (result)
  {
    v1.receiver = result;
    v1.super_class = GCFuture;
    result = objc_msgSendSuper2(&v1, sel_init);
    *(result + 2) = 0;
    *(result + 12) = -2;
  }

  return result;
}

@end