@interface MPCFuture
- (MPCFuture)initWithQueue:(id)queue;
- (id)description;
- (id)onCompletion:(id)completion;
- (id)onFailure:(id)failure;
- (id)onInvalid:(id)invalid;
- (id)onSuccess:(id)success;
- (void)_onQueue_finalize;
- (void)dealloc;
- (void)disconnect;
- (void)finishWithError:(id)error;
- (void)finishWithValue:(id)value;
- (void)invalidate;
@end

@implementation MPCFuture

- (void)_onQueue_finalize
{
  dispatch_assert_queue_V2(self->_accessQueue);
  self->_finalized = 1;
  successBlocks = self->_successBlocks;
  self->_successBlocks = 0;

  failureBlocks = self->_failureBlocks;
  self->_failureBlocks = 0;

  completionBlocks = self->_completionBlocks;
  self->_completionBlocks = 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p:", objc_opt_class(), self];
  v4 = v3;
  if (self->_debugLabel)
  {
    [v3 appendFormat:@" debugLabel=%@", self->_debugLabel];
  }

  if (self->_finalized)
  {
    [v4 appendFormat:@" finalized=YES"];
  }

  if (self->_invalid)
  {
    [v4 appendFormat:@" invalid=YES"];
  }

  if (self->_disconnected)
  {
    [v4 appendFormat:@" disconnected=YES"];
  }

  if (self->_error)
  {
    [v4 appendFormat:@" error=%@", self->_error];
  }

  [v4 appendString:@">"];

  return v4;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self->_finalized && !self->_invalid)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_FAULT, "Deallocating future that wasn't finalized or invalidated: %{public}@", buf, 0xCu);
    }
  }

  v4.receiver = self;
  v4.super_class = MPCFuture;
  [(MPCFuture *)&v4 dealloc];
}

- (void)disconnect
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MPCFuture_disconnect__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

uint64_t __23__MPCFuture_disconnect__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 10) & 1) == 0)
  {
    *(v1 + 10) = 1;
  }

  return result;
}

- (void)invalidate
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MPCFuture_invalidate__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __23__MPCFuture_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 9) & 1) == 0)
  {
    *(v1 + 9) = 1;
    v3 = [*(*(a1 + 32) + 80) objectEnumerator];
    v4 = [v3 allObjects];
    v5 = [v4 copy];

    v6 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23__MPCFuture_invalidate__block_invoke_2;
    block[3] = &unk_1E8239298;
    v11 = v5;
    v7 = v5;
    dispatch_async(v6, block);
    v8 = *(a1 + 32);
    v9 = *(v8 + 80);
    *(v8 + 80) = 0;
  }
}

void __23__MPCFuture_invalidate__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MPCFuture_finishWithError___block_invoke;
  block[3] = &unk_1E82391E8;
  v9 = errorCopy;
  v10 = a2;
  block[4] = self;
  v7 = errorCopy;
  dispatch_sync(accessQueue, block);
}

void __29__MPCFuture_finishWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MPCFuture.m" lineNumber:151 description:@"Finish with error on already finalized future."];

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 24), *(a1 + 40));
  v3 = [*(*(a1 + 32) + 64) copy];
  v4 = [*(*(a1 + 32) + 72) copy];
  v5 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MPCFuture_finishWithError___block_invoke_2;
  block[3] = &unk_1E82391C0;
  v10 = v3;
  v11 = *(a1 + 40);
  v12 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);
  [*(a1 + 32) _onQueue_finalize];
}

void __29__MPCFuture_finishWithError___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v16 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)finishWithValue:(id)value
{
  valueCopy = value;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MPCFuture_finishWithValue___block_invoke;
  block[3] = &unk_1E82391E8;
  v9 = valueCopy;
  v10 = a2;
  block[4] = self;
  v7 = valueCopy;
  dispatch_sync(accessQueue, block);
}

void __29__MPCFuture_finishWithValue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MPCFuture.m" lineNumber:132 description:@"Finish with value on already finalized future."];

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 16), *(a1 + 40));
  v3 = [*(*(a1 + 32) + 56) copy];
  v4 = [*(*(a1 + 32) + 72) copy];
  v5 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MPCFuture_finishWithValue___block_invoke_2;
  block[3] = &unk_1E82391C0;
  v10 = v3;
  v11 = *(a1 + 40);
  v12 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);
  [*(a1 + 32) _onQueue_finalize];
}

void __29__MPCFuture_finishWithValue___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v16 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

- (id)onInvalid:(id)invalid
{
  invalidCopy = invalid;
  v5 = objc_alloc_init(MPCFutureInvalidationToken);
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MPCFuture_onInvalid___block_invoke;
  block[3] = &unk_1E8239198;
  block[4] = self;
  v14 = invalidCopy;
  v7 = v5;
  v13 = v7;
  v8 = invalidCopy;
  dispatch_async(accessQueue, block);
  v9 = v13;
  v10 = v7;

  return v7;
}

void __23__MPCFuture_onInvalid___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 9) == 1)
  {
    v3 = *(v2 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23__MPCFuture_onInvalid___block_invoke_2;
    block[3] = &unk_1E8239528;
    v10 = *(a1 + 48);
    dispatch_async(v3, block);
  }

  else
  {
    [*(a1 + 40) setFuture:?];
    v4 = *(*(a1 + 32) + 80);
    if (!v4)
    {
      v5 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v6 = *(a1 + 32);
      v7 = *(v6 + 80);
      *(v6 + 80) = v5;

      v4 = *(*(a1 + 32) + 80);
    }

    v8 = _Block_copy(*(a1 + 48));
    [v4 setObject:v8 forKey:*(a1 + 40)];
  }
}

- (id)onCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__MPCFuture_onCompletion___block_invoke;
  v8[3] = &unk_1E8239170;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accessQueue, v8);

  return self;
}

void __26__MPCFuture_onCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *(v2 + 16);
    v4 = *(*(a1 + 32) + 24);
    v5 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__MPCFuture_onCompletion___block_invoke_2;
    block[3] = &unk_1E8239198;
    v6 = *(a1 + 40);
    v16 = v4;
    v17 = v6;
    v15 = v3;
    v7 = v4;
    v8 = v3;
    dispatch_async(v5, block);
  }

  else
  {
    v9 = *(v2 + 72);
    if (!v9)
    {
      v10 = [MEMORY[0x1E695DF70] array];
      v11 = *(a1 + 32);
      v12 = *(v11 + 72);
      *(v11 + 72) = v10;

      v9 = *(*(a1 + 32) + 72);
    }

    v13 = _Block_copy(*(a1 + 40));
    [v9 addObject:v13];
  }
}

- (id)onFailure:(id)failure
{
  failureCopy = failure;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__MPCFuture_onFailure___block_invoke;
  v8[3] = &unk_1E8239170;
  v8[4] = self;
  v9 = failureCopy;
  v6 = failureCopy;
  dispatch_async(accessQueue, v8);

  return self;
}

void __23__MPCFuture_onFailure___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = v3;
      v5 = *(*(a1 + 32) + 48);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __23__MPCFuture_onFailure___block_invoke_2;
      block[3] = &unk_1E8239170;
      v6 = *(a1 + 40);
      v14 = v4;
      v15 = v6;
      v7 = v4;
      dispatch_async(v5, block);
    }
  }

  else
  {
    v8 = *(v2 + 64);
    if (!v8)
    {
      v9 = [MEMORY[0x1E695DF70] array];
      v10 = *(a1 + 32);
      v11 = *(v10 + 64);
      *(v10 + 64) = v9;

      v8 = *(*(a1 + 32) + 64);
    }

    v12 = _Block_copy(*(a1 + 40));
    [v8 addObject:v12];
  }
}

- (id)onSuccess:(id)success
{
  successCopy = success;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__MPCFuture_onSuccess___block_invoke;
  v8[3] = &unk_1E8239170;
  v8[4] = self;
  v9 = successCopy;
  v6 = successCopy;
  dispatch_async(accessQueue, v8);

  return self;
}

void __23__MPCFuture_onSuccess___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    if (!*(v2 + 24))
    {
      v3 = *(v2 + 16);
      v4 = *(*(a1 + 32) + 48);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __23__MPCFuture_onSuccess___block_invoke_2;
      block[3] = &unk_1E8239170;
      v5 = *(a1 + 40);
      v13 = v3;
      v14 = v5;
      v6 = v3;
      dispatch_async(v4, block);
    }
  }

  else
  {
    v7 = *(v2 + 56);
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      *(v9 + 56) = v8;

      v7 = *(*(a1 + 32) + 56);
    }

    v11 = _Block_copy(*(a1 + 40));
    [v7 addObject:v11];
  }
}

- (MPCFuture)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = MPCFuture;
  v6 = [(MPCFuture *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.MediaPlaybackCore/MPCFuture.accessQueue", v7);
    accessQueue = v6->_accessQueue;
    v6->_accessQueue = v8;

    objc_storeStrong(&v6->_calloutQueue, queue);
  }

  return v6;
}

@end