@interface NSError(EmailFoundationAdditions)
- (id)ef_initWithDomain:()EmailFoundationAdditions code:underlyingError:;
- (id)ef_match;
- (id)ef_underlyingError;
- (uint64_t)ef_isCancelledError;
- (uint64_t)ef_isConnectionInterruptedError;
- (uint64_t)ef_isInvalidInputError;
- (uint64_t)ef_isNotSupportedError;
- (uint64_t)ef_isTemporarilyUnavailableError;
- (uint64_t)ef_isTimeoutError;
- (void)ef_secureCodableError;
@end

@implementation NSError(EmailFoundationAdditions)

- (id)ef_match
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__NSError_EmailFoundationAdditions__ef_match__block_invoke;
  aBlock[3] = &unk_1E8249020;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);

  return v1;
}

- (id)ef_initWithDomain:()EmailFoundationAdditions code:underlyingError:
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v15 = *MEMORY[0x1E696AA08];
    v16[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 initWithDomain:v8 code:a4 userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (uint64_t)ef_isCancelledError
{
  v1 = [a1 ef_match];
  v2 = v1[2](v1, *MEMORY[0x1E696A250], 3072);

  return v2;
}

- (uint64_t)ef_isTimeoutError
{
  v1 = [a1 ef_match];
  v2 = (v1)[2](v1, @"EFErrorDomain", 1000000);

  return v2;
}

- (uint64_t)ef_isNotSupportedError
{
  v1 = [a1 ef_match];
  v2 = (v1)[2](v1, @"EFErrorDomain", 1000001);

  return v2;
}

- (uint64_t)ef_isConnectionInterruptedError
{
  v1 = [a1 ef_match];
  v2 = (v1)[2](v1, @"EFErrorDomain", 1000002);

  return v2;
}

- (uint64_t)ef_isTemporarilyUnavailableError
{
  v1 = [a1 ef_match];
  v2 = (v1)[2](v1, @"EFErrorDomain", 1000003);

  return v2;
}

- (uint64_t)ef_isInvalidInputError
{
  v1 = [a1 ef_match];
  v2 = (v1)[2](v1, @"EFErrorDomain", 1000004);

  return v2;
}

- (id)ef_underlyingError
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  return v2;
}

- (void)ef_secureCodableError
{
  v1 = a1;
  v2 = [a1 userInfo];
  if ([v2 count])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __58__NSError_EmailFoundationAdditions__ef_secureCodableError__block_invoke;
    v13 = &unk_1E8249070;
    v4 = v3;
    v14 = v4;
    v15 = &v16;
    [v2 enumerateKeysAndObjectsUsingBlock:&v10];
    if (*(v17 + 24) == 1)
    {
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v6 = [v1 domain];
      v7 = [v5 initWithDomain:v6 code:objc_msgSend(v1 userInfo:{"code"), v4}];
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v1 = v7;
  }

  v8 = v1;

  return v1;
}

@end