@interface _CUTUnsafePromise
- (_CUTUnsafePromise)init;
- (_CUTUnsafePromise)initWithResult:(id)result;
- (void)_fulfillWithResult:(id)result;
- (void)registerResultBlock:(id)block;
@end

@implementation _CUTUnsafePromise

- (_CUTUnsafePromise)init
{
  v7.receiver = self;
  v7.super_class = _CUTUnsafePromise;
  _init = [(CUTUnsafePromise *)&v7 _init];
  v3 = _init;
  if (_init)
  {
    _init->_done = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resultBlocks = v3->_resultBlocks;
    v3->_resultBlocks = v4;
  }

  return v3;
}

- (_CUTUnsafePromise)initWithResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = _CUTUnsafePromise;
  _init = [(CUTUnsafePromise *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    _init->_done = 1;
    objc_storeStrong(&_init->_result, result);
  }

  return v7;
}

- (void)_fulfillWithResult:(id)result
{
  v18 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if ([(_CUTUnsafePromise *)self done])
  {
    sub_1B2330F88(a2, self);
  }

  [(_CUTUnsafePromise *)self setDone:1];
  [(_CUTUnsafePromise *)self setResult:resultCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_resultBlocks;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v13 + 1) + 8 * v10) + 16))(*(*(&v13 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  resultBlocks = self->_resultBlocks;
  self->_resultBlocks = 0;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)registerResultBlock:(id)block
{
  blockCopy = block;
  if ([(_CUTUnsafePromise *)self done])
  {
    result = [(_CUTUnsafePromise *)self result];
    blockCopy[2](blockCopy, result);
  }

  else
  {
    resultBlocks = self->_resultBlocks;
    result = MEMORY[0x1B2746240](blockCopy);
    [(NSMutableArray *)resultBlocks addObject:result];
  }
}

@end