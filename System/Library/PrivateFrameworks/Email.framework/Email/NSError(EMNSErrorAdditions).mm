@interface NSError(EMNSErrorAdditions)
+ (id)em_internalErrorWithReason:()EMNSErrorAdditions;
+ (id)em_internalErrorWithReason:()EMNSErrorAdditions userInfo:;
+ (id)em_itemNotFoundErrorWithItemID:()EMNSErrorAdditions;
+ (uint64_t)em_itemTimeoutError;
- (uint64_t)em_isInternalError;
- (uint64_t)em_isItemNotFoundError;
@end

@implementation NSError(EMNSErrorAdditions)

+ (id)em_itemNotFoundErrorWithItemID:()EMNSErrorAdditions
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_registerEMErrorDomainUserInfoValueProvider_onceToken != -1)
  {
    +[NSError(EMNSErrorAdditions) em_itemNotFoundErrorWithItemID:];
  }

  if (v4)
  {
    v12 = @"itemID";
    v13[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v10 = @"itemID";
    v6 = [MEMORY[0x1E695DFB0] null];
    v11 = v6;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  v7 = [a1 errorWithDomain:@"EMErrorDomain" code:1024 userInfo:v5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (uint64_t)em_itemTimeoutError
{
  if (_registerEMErrorDomainUserInfoValueProvider_onceToken != -1)
  {
    +[NSError(EMNSErrorAdditions) em_itemNotFoundErrorWithItemID:];
  }

  return [a1 errorWithDomain:@"EMErrorDomain" code:1026 userInfo:0];
}

+ (id)em_internalErrorWithReason:()EMNSErrorAdditions
{
  v3 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:a3 userInfo:0];

  return v3;
}

+ (id)em_internalErrorWithReason:()EMNSErrorAdditions userInfo:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_registerEMErrorDomainUserInfoValueProvider_onceToken != -1)
  {
    +[NSError(EMNSErrorAdditions) em_itemNotFoundErrorWithItemID:];
  }

  if (v7)
  {
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v9 = v8;
  v10 = *MEMORY[0x1E699B760];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E699B760]];

  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:v10];
    v13 = [v12 mutableCopy];

    [v13 setObject:v6 forKeyedSubscript:@"reason"];
    v9 = v13;
  }

  else
  {
    v18 = @"reason";
    v19[0] = v6;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v9 setObject:v14 forKeyedSubscript:v10];
  }

  v15 = [a1 errorWithDomain:@"EMErrorDomain" code:1 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (uint64_t)em_isItemNotFoundError
{
  v1 = [a1 ef_match];
  v2 = (v1)[2](v1, @"EMErrorDomain", 1024);

  return v2;
}

- (uint64_t)em_isInternalError
{
  v1 = [a1 ef_match];
  v2 = (v1)[2](v1, @"EMErrorDomain", 1);

  return v2;
}

@end