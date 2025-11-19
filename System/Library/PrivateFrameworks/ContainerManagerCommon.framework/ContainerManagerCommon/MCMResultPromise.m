@interface MCMResultPromise
- (BOOL)complete;
- (MCMResult)result;
- (MCMResultPromise)init;
- (MCMResultPromise)initWithCompletion:(id)a3;
- (NSMutableArray)warnings;
- (id)completion;
- (void)completeWithResult:(id)a3;
@end

@implementation MCMResultPromise

- (NSMutableArray)warnings
{
  result = self->_warnings;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)completion
{
  result = self->_completion;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)complete
{
  result = self->_complete;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMResult)result
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_result;
  if (!v3)
  {
    _os_crash();
    __break(1u);
  }

  v4 = v3;
  objc_sync_exit(v2);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)completeWithResult:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_complete)
  {
    _os_crash();
    __break(1u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MCMResultPromise *)v5 warnings];
    v7 = [v6 copy];
    [v12 _attachWarnings:v7];
  }

  objc_storeStrong(&v5->_result, a3);
  v5->_complete = 1;
  v8 = [(MCMResultPromise *)v5 completion];
  objc_sync_exit(v5);

  if (v8)
  {
    v9 = (v8)[2](v8, v5->_result);
    result = v5->_result;
    v5->_result = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (MCMResultPromise)init
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MCMResultPromise;
  v2 = [(MCMResultPromise *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2->_result;
    v2->_result = 0;

    completion = v3->_completion;
    v3->_completion = 0;

    v3->_complete = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    warnings = v3->_warnings;
    v3->_warnings = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (MCMResultPromise)initWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MCMResultPromise;
  v5 = [(MCMResultPromise *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = v5->_result;
    v5->_result = 0;

    v8 = _Block_copy(v4);
    completion = v6->_completion;
    v6->_completion = v8;

    v6->_complete = 0;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    warnings = v6->_warnings;
    v6->_warnings = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

@end