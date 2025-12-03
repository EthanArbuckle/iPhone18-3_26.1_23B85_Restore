@interface MCMResultPromise
- (BOOL)complete;
- (MCMResult)result;
- (MCMResultPromise)init;
- (MCMResultPromise)initWithCompletion:(id)completion;
- (NSMutableArray)warnings;
- (id)completion;
- (void)completeWithResult:(id)result;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_result;
  if (!v3)
  {
    _os_crash();
    __break(1u);
  }

  v4 = v3;
  objc_sync_exit(selfCopy);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)completeWithResult:(id)result
{
  v13 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_complete)
  {
    _os_crash();
    __break(1u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    warnings = [(MCMResultPromise *)selfCopy warnings];
    v7 = [warnings copy];
    [resultCopy _attachWarnings:v7];
  }

  objc_storeStrong(&selfCopy->_result, result);
  selfCopy->_complete = 1;
  completion = [(MCMResultPromise *)selfCopy completion];
  objc_sync_exit(selfCopy);

  if (completion)
  {
    v9 = (completion)[2](completion, selfCopy->_result);
    result = selfCopy->_result;
    selfCopy->_result = v9;
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

- (MCMResultPromise)initWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = MCMResultPromise;
  v5 = [(MCMResultPromise *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = v5->_result;
    v5->_result = 0;

    v8 = _Block_copy(completionCopy);
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