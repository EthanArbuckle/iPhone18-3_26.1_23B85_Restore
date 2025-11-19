@interface GCFuture
+ (id)alloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)cancelledFuture;
+ (id)futureOnQueue:(id)a3 withBlock:(id)a4;
+ (id)futureWithBlock:(id)a3;
+ (id)futureWithError:(id)a3;
+ (id)futureWithLabel:(id)a3 block:(id)a4;
+ (id)futureWithLabel:(id)a3 onQueue:(id)a4 block:(id)a5;
+ (id)futureWithOptions:(unsigned int)a3 block:(id)a4;
+ (id)futureWithResult:(id)a3;
- (BOOL)_setState:(int64_t)a3 result:(id)a4 error:(id)a5;
- (GCFuture)init;
- (GCFuture)initWithError:(id)a3;
- (GCFuture)initWithResult:(id)a3;
- (id)_init;
- (id)_thenRequiringState:(int64_t)a3 onQueue:(id)a4 withOptions:(unsigned int)a5 qosClass:(unsigned int)a6 relativePriority:(int)a7 label:(id)a8 block:(id)a9;
- (id)_thenSynchronouslyRequiringState:(int64_t)a3 onQueue:(id)a4 withOptions:(unsigned int)a5 qosClass:(unsigned int)a6 relativePriority:(int)a7 label:(id)a8 block:(id)a9;
- (id)debugDescription;
- (id)description;
- (id)error;
- (id)initCancelled;
- (id)initOnQueue:(id)a3 withBlock:(id)a4;
- (id)initOnQueue:(id)a3 withOptions:(unsigned int)a4 block:(id)a5;
- (id)result;
- (id)resultIfFinished;
- (id)thenOnQueue:(id)a3 with:(id)a4;
- (id)thenOnQueue:(id)a3 withResult:(id)a4;
- (id)thenSynchronouslyOnQueue:(id)a3 with:(id)a4;
- (id)thenSynchronouslyWith:(id)a3;
- (id)thenSynchronouslyWithResult:(id)a3;
- (id)thenWith:(id)a3;
- (id)thenWithResult:(id)a3;
- (int64_t)waitForResult:(id *)a3 error:(id *)a4;
- (void)_observeFinishOnQueue:(id)a3 withOptions:(unsigned int)a4 qosClass:(unsigned int)a5 relativePriority:(int)a6 block:(id)a7;
- (void)dealloc;
- (void)failWithError:(void *)a1;
- (void)observeCancellation:(id)a3;
- (void)observeFailure:(id)a3;
- (void)observeSuccess:(id)a3;
- (void)observeSuccessOnQueue:(id)a3 withBlock:(id)a4;
- (void)succeedWithResult:(void *)a1;
@end

@implementation GCFuture

+ (id)futureWithBlock:(id)a3
{
  v4 = a3;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v3);
  v5 = [[_GCAsyncFuture alloc] _initOnQueue:0 withOptions:v4 block:?];

  return v5;
}

+ (id)futureWithOptions:(unsigned int)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v4);
  v7 = [[_GCAsyncFuture alloc] _initOnQueue:v5 withOptions:v6 block:?];

  return v7;
}

+ (id)futureWithLabel:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v4);
  v8 = [[_GCAsyncFuture alloc] _initOnQueue:0 withOptions:v7 block:?];
  [v8 setLabel:v6];

  return v8;
}

+ (id)futureWithLabel:(id)a3 onQueue:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v5);
  v11 = [[_GCAsyncFuture alloc] _initOnQueue:v9 withOptions:0 block:v10];
  [v11 setLabel:v8];

  return v11;
}

+ (id)futureOnQueue:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v4);
  v8 = [(GCFuture *)[_GCAsyncFuture alloc] initOnQueue:v6 withBlock:v7];

  return v8;
}

+ (id)futureWithError:(id)a3
{
  v4 = a3;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v3);
  v5 = [(GCFuture *)[_GCStaticFuture alloc] initWithError:v4];

  return v5;
}

+ (id)futureWithResult:(id)a3
{
  v4 = a3;
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v3);
  v5 = [(GCFuture *)[_GCStaticFuture alloc] initWithResult:v4];

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

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
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
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___GCFuture;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

+ (id)alloc
{
  if (objc_opt_class() == a1)
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
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___GCFuture;
    return objc_msgSendSuper2(&v5, sel_allocWithZone_, 0);
  }
}

- (GCFuture)init
{
  [(GCFuture *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCFuture)initWithResult:(id)a3
{
  v4 = a3;
  v5 = [[_GCStaticFuture alloc] _initWithResult:v4];

  return v5;
}

- (GCFuture)initWithError:(id)a3
{
  v4 = a3;
  v5 = [[_GCStaticFuture alloc] _initWithError:v4];

  return v5;
}

- (id)initCancelled
{
  inited = [[_GCStaticFuture alloc] _initCancelled];

  return inited;
}

- (id)initOnQueue:(id)a3 withOptions:(unsigned int)a4 block:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [[_GCAsyncFuture alloc] _initOnQueue:v8 withOptions:v6 block:v9];

  return v10;
}

- (id)initOnQueue:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_GCAsyncFuture alloc] _initOnQueue:v6 withOptions:0 block:v7];

  return v8;
}

- (void)dealloc
{
  state = self->_state;
  if (state >= 3 && state != 254)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [(GCFuture *)self debugDescription];
    [v5 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:580 description:{@"Future deallocated without finishing: %@", v6}];
  }

  v7.receiver = self;
  v7.super_class = GCFuture;
  [(GCFuture *)&v7 dealloc];
}

- (id)debugDescription
{
  v3 = [(GCFuture *)self label];
  if ((self->_state + 2) > 4u)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E84152D8[(self->_state + 2)];
  }

  v5 = [(GCFuture *)self _creatorFrame];
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithFormat:@"<%@ %p", v8, self];

  if (v3)
  {
    [v9 appendFormat:@" '%@'", v3];
  }

  if (v5)
  {
    if (dladdr(v5, &v15))
    {
      if (v15.dli_fname)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        v11 = [v10 componentsSeparatedByString:@"/"];
        v12 = [v11 lastObject];
      }

      else
      {
        v12 = 0;
      }

      if (v15.dli_sname)
      {
        [v9 appendFormat:@" @0x%lx %@+%zu %s+%zu", v5, v12, v5 - v15.dli_fbase, v15.dli_sname, v5 - v15.dli_saddr];
      }

      else
      {
        [v9 appendFormat:@" @0x%lx %@+%zu", v5, v12, v5 - v15.dli_fbase];
      }
    }

    else
    {
      [v9 appendFormat:@" @0x%lx", v5];
    }
  }

  [v9 appendFormat:@" [%@]", v4];
  if (self->_state == 1)
  {
    v13 = [*&self->_flags localizedDescription];
    [v9 appendFormat:@": '%@'", v13];
  }

  [v9 appendString:@">"];

  return v9;
}

- (id)description
{
  v3 = [(GCFuture *)self label];
  v4 = [(GCFuture *)self _creatorFrame];
  v5 = v4;
  state = self->_state;
  if (v4)
  {
    v7 = v3 == 0;
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
        v12 = [v9 stringWithFormat:@"<%@ '%@' @0x%lx [succeeded]>", v11, v3, v5];
        goto LABEL_47;
      }

      if (v4)
      {
        v21 = objc_opt_class();
        v11 = NSStringFromClass(v21);
        v12 = [v9 stringWithFormat:@"<%@ @0x%lx [succeeded]>", v11, v5];
        goto LABEL_47;
      }

      v27 = objc_opt_class();
      v11 = NSStringFromClass(v27);
      if (v3)
      {
        [v9 stringWithFormat:@"<%@ '%@' [succeeded]>", v11, v3];
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
        v12 = [v9 stringWithFormat:@"<%@ '%@' @0x%lx [pending]>", v11, v3, v5];
LABEL_47:
        v33 = v12;
        goto LABEL_48;
      }

      if (v4)
      {
        v22 = objc_opt_class();
        v11 = NSStringFromClass(v22);
        v12 = [v9 stringWithFormat:@"<%@ @0x%lx [pending]>", v11, v5];
        goto LABEL_47;
      }

      v28 = objc_opt_class();
      v11 = NSStringFromClass(v28);
      if (v3)
      {
        [v9 stringWithFormat:@"<%@ '%@' [pending]>", v11, v3];
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
        v12 = [v9 stringWithFormat:@"<%@ '%@' @0x%lx [running]>", v11, v3, v5];
        goto LABEL_47;
      }

      if (v4)
      {
        v23 = objc_opt_class();
        v11 = NSStringFromClass(v23);
        v12 = [v9 stringWithFormat:@"<%@ @0x%lx [running]>", v11, v5];
        goto LABEL_47;
      }

      v29 = objc_opt_class();
      v11 = NSStringFromClass(v29);
      if (v3)
      {
        [v9 stringWithFormat:@"<%@ '%@' [running]>", v11, v3];
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
      v12 = [v9 stringWithFormat:@"<%@ '%@' @0x%lx [cancelled]>", v11, v3, v5];
      goto LABEL_47;
    }

    if (v4)
    {
      v24 = objc_opt_class();
      v11 = NSStringFromClass(v24);
      v12 = [v9 stringWithFormat:@"<%@ @0x%lx [cancelled]>", v11, v5];
      goto LABEL_47;
    }

    v30 = objc_opt_class();
    v11 = NSStringFromClass(v30);
    if (v3)
    {
      [v9 stringWithFormat:@"<%@ '%@' [cancelled]>", v11, v3];
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
    v17 = [*&self->_flags domain];
    v18 = [*&self->_flags code];
    v19 = [*&self->_flags localizedDescription];
    v20 = [v9 stringWithFormat:@"<%@ '%@' @0x%lx [failed]: %@/%zu '%@'>", v11, v3, v5, v17, v18, v19];
  }

  else if (v4)
  {
    v25 = objc_opt_class();
    v11 = NSStringFromClass(v25);
    v17 = [*&self->_flags domain];
    v26 = [*&self->_flags code];
    v19 = [*&self->_flags localizedDescription];
    v20 = [v9 stringWithFormat:@"<%@ @0x%lx [failed]: %@/%zu '%@'>", v11, v5, v17, v26, v19];
  }

  else
  {
    v31 = objc_opt_class();
    v11 = NSStringFromClass(v31);
    v17 = [*&self->_flags domain];
    v32 = [*&self->_flags code];
    v19 = [*&self->_flags localizedDescription];
    if (v3)
    {
      [v9 stringWithFormat:@"<%@ '%@' [failed]: %@/%zu '%@'>", v11, v3, v17, v32, v19];
    }

    else
    {
      [v9 stringWithFormat:@"<%@ [failed]: %@/%zu '%@'>", v11, v17, v32, v19];
    }
    v20 = ;
  }

  v33 = v20;

LABEL_48:

  return v33;
}

- (BOOL)_setState:(int64_t)a3 result:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (a3 < 0)
  {
    if (a3 == -2)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:704 description:{@"Attempted to transition to the pending state.\n%@", self}];
      goto LABEL_19;
    }

    if (a3 == -1)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:708 description:{@"Attempted to transition to the running state.\n%@", self}];
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!a3)
  {
    atomic_store(1u, &self->_state + 3);
    if (v10)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:713 description:{@"Attempted to transition to the cancelled state, but provided an error (%@).\n%@", v11, self}];

      if (!v9)
      {
        goto LABEL_20;
      }
    }

    else if (!v9)
    {
      goto LABEL_20;
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:714 description:{@"Attempted to transition to the cancelled state, but provided a result (%@).\n%@", v9, self}];
    goto LABEL_19;
  }

  if (a3 == 1)
  {
    if (v10)
    {
      if (!v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:718 description:{@"Attempted to transition to the failed state, but did not provide an error.\n%@", self}];

      if (!v9)
      {
        goto LABEL_20;
      }
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:719 description:{@"Attempted to transition to the failed state, but provided a result (%@).\n%@", v9, self}];
    goto LABEL_19;
  }

  if (a3 != 2)
  {
LABEL_18:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:728 description:{@"Attempted to transition to an invalid state (%ld).\n%@", a3, self}];
    goto LABEL_19;
  }

  if (!v10)
  {
    if (v9)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:723 description:{@"Attempted to transition to the succeeded state, but provided an error (%@).\n%@", v9, self}];

  if (!v9)
  {
LABEL_7:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:724 description:{@"Attempted to transition to the succeeded state, but did not provide a result.\n%@", self}];
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
        if (a3 == 2)
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:760 description:{@"Attempted to transition to the succeeded state from the failed state.\n%@", self}];
          goto LABEL_46;
        }

        if (a3 == 1)
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:761 description:{@"Attempted to transition to the failed state twice.\n%@", self}];
          goto LABEL_46;
        }

LABEL_35:
        v16 = 0;
        goto LABEL_36;
      }

      if (state == 2)
      {
        os_unfair_lock_unlock(&self->_lock);
        if (a3 == 2)
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:768 description:{@"Attempted to transition to the succeeded state twice.\n%@", self}];
          goto LABEL_46;
        }

        if (a3 == 1)
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:769 description:{@"Attempted to transition to the failed state from the succeeded state.\n%@", self}];
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

  self->_state = a3;
  if (v9)
  {
    v15 = v9;
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

- (void)succeedWithResult:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    [a1 _setState:2 result:v3 error:0];
  }
}

- (void)failWithError:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    [a1 _setState:1 result:0 error:v3];
  }
}

- (void)_observeFinishOnQueue:(id)a3 withOptions:(unsigned int)a4 qosClass:(unsigned int)a5 relativePriority:(int)a6 block:(id)a7
{
  v10 = a4;
  v13 = a3;
  v14 = a7;
  if (!v14)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:796 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  if (![(GCFuture *)self _checkFinished:0])
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:797 description:{@"Subclass must implement %s", sel_getName(a2)}];
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
  v30 = v14;
  v31 = state;
  if ((v10 & 4) != 0)
  {
    v18 = v10 & 2 | 0x24;
  }

  else
  {
    v18 = (v10 & 2);
  }

  v28 = v16;
  v29 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v14;
  v22 = _Block_copy(aBlock);
  if (v13)
  {
    if (a5 && v18)
    {
      v23 = dispatch_block_create_with_qos_class(v18, a5, a6, v22);
    }

    else
    {
      if (!v18)
      {
LABEL_22:
        dispatch_async(v13, v22);
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

- (void)observeSuccess:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__GCFuture_observeSuccess___block_invoke;
  v6[3] = &unk_1E8415088;
  v7 = v4;
  v5 = v4;
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

- (void)observeSuccessOnQueue:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__GCFuture_observeSuccessOnQueue_withBlock___block_invoke;
  v8[3] = &unk_1E8415088;
  v9 = v6;
  v7 = v6;
  [(GCFuture *)self observeFinishOnQueue:a3 withBlock:v8];
}

void __44__GCFuture_observeSuccessOnQueue_withBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)observeFailure:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__GCFuture_observeFailure___block_invoke;
  v6[3] = &unk_1E8415088;
  v7 = v4;
  v5 = v4;
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

- (void)observeCancellation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__GCFuture_observeCancellation___block_invoke;
  v6[3] = &unk_1E8415088;
  v7 = v4;
  v5 = v4;
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

- (int64_t)waitForResult:(id *)a3 error:(id *)a4
{
  [(GCFuture *)self _checkFinished:1];
  state = self->_state;
  if (self->_state)
  {
    if (state != 1)
    {
      state = 2;
      if (!a3)
      {
        return state;
      }

      goto LABEL_4;
    }

    state = 1;
    a3 = a4;
    if (a4)
    {
LABEL_4:
      *a3 = *&self->_flags;
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

- (id)_thenRequiringState:(int64_t)a3 onQueue:(id)a4 withOptions:(unsigned int)a5 qosClass:(unsigned int)a6 relativePriority:(int)a7 label:(id)a8 block:(id)a9
{
  v16 = a4;
  v17 = a8;
  v18 = a9;
  if (!v18)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:940 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v19 = [_GCAsyncFuture alloc];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __90__GCFuture__thenRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke;
  v25[3] = &unk_1E8415100;
  v25[4] = self;
  v20 = v16;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v26 = v20;
  v28 = a3;
  v21 = v18;
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

- (id)_thenSynchronouslyRequiringState:(int64_t)a3 onQueue:(id)a4 withOptions:(unsigned int)a5 qosClass:(unsigned int)a6 relativePriority:(int)a7 label:(id)a8 block:(id)a9
{
  v16 = a4;
  v17 = a8;
  v18 = a9;
  if (!v18)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:988 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v19 = [_GCAsyncFuture alloc];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __103__GCFuture__thenSynchronouslyRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke;
  v25[3] = &unk_1E8415150;
  v25[4] = self;
  v20 = v16;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v26 = v20;
  v28 = a3;
  v21 = v18;
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

- (id)thenWith:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:1039 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v6 = [_GCAsyncFuture alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __21__GCFuture_thenWith___block_invoke;
  v11[3] = &unk_1E84151A0;
  v11[4] = self;
  v7 = v5;
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

- (id)thenWithResult:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:1057 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v6 = [_GCAsyncFuture alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__GCFuture_thenWithResult___block_invoke;
  v11[3] = &unk_1E84151A0;
  v11[4] = self;
  v7 = v5;
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

- (id)thenOnQueue:(id)a3 with:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:1088 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v9 = [_GCAsyncFuture alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __29__GCFuture_thenOnQueue_with___block_invoke;
  v15[3] = &unk_1E84151C8;
  v15[4] = self;
  v10 = v7;
  v16 = v10;
  v11 = v8;
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

- (id)thenOnQueue:(id)a3 withResult:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:1106 description:{@"Invalid parameter not satisfying: %s", "block != nil"}];
  }

  v9 = [_GCAsyncFuture alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__GCFuture_thenOnQueue_withResult___block_invoke;
  v15[3] = &unk_1E84151C8;
  v15[4] = self;
  v10 = v7;
  v16 = v10;
  v11 = v8;
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

- (id)thenSynchronouslyOnQueue:(id)a3 with:(id)a4
{
  v4 = [(GCFuture *)self _thenSynchronouslyRequiringState:-128 onQueue:a3 withOptions:0 qosClass:0 relativePriority:0 label:0 block:a4];

  return v4;
}

- (id)thenSynchronouslyWith:(id)a3
{
  v3 = [(GCFuture *)self _thenSynchronouslyRequiringState:-128 onQueue:0 withOptions:0 qosClass:0 relativePriority:0 label:0 block:a3];

  return v3;
}

- (id)thenSynchronouslyWithResult:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__GCFuture_thenSynchronouslyWithResult___block_invoke;
  v8[3] = &unk_1E84151F0;
  v9 = v4;
  v5 = v4;
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