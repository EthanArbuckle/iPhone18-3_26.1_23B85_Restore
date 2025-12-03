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
  aBlock[4] = self;
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

  v12 = [self initWithDomain:v8 code:a4 userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (uint64_t)ef_isCancelledError
{
  ef_match = [self ef_match];
  v2 = ef_match[2](ef_match, *MEMORY[0x1E696A250], 3072);

  return v2;
}

- (uint64_t)ef_isTimeoutError
{
  ef_match = [self ef_match];
  v2 = (ef_match)[2](ef_match, @"EFErrorDomain", 1000000);

  return v2;
}

- (uint64_t)ef_isNotSupportedError
{
  ef_match = [self ef_match];
  v2 = (ef_match)[2](ef_match, @"EFErrorDomain", 1000001);

  return v2;
}

- (uint64_t)ef_isConnectionInterruptedError
{
  ef_match = [self ef_match];
  v2 = (ef_match)[2](ef_match, @"EFErrorDomain", 1000002);

  return v2;
}

- (uint64_t)ef_isTemporarilyUnavailableError
{
  ef_match = [self ef_match];
  v2 = (ef_match)[2](ef_match, @"EFErrorDomain", 1000003);

  return v2;
}

- (uint64_t)ef_isInvalidInputError
{
  ef_match = [self ef_match];
  v2 = (ef_match)[2](ef_match, @"EFErrorDomain", 1000004);

  return v2;
}

- (id)ef_underlyingError
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  return v2;
}

- (void)ef_secureCodableError
{
  selfCopy = self;
  userInfo = [self userInfo];
  if ([userInfo count])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(userInfo, "count")}];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __58__NSError_EmailFoundationAdditions__ef_secureCodableError__block_invoke;
    v13 = &unk_1E8249070;
    v4 = v3;
    v14 = v4;
    v15 = &v16;
    [userInfo enumerateKeysAndObjectsUsingBlock:&v10];
    if (*(v17 + 24) == 1)
    {
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      domain = [selfCopy domain];
      v7 = [v5 initWithDomain:domain code:objc_msgSend(selfCopy userInfo:{"code"), v4}];
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
    selfCopy = v7;
  }

  v8 = selfCopy;

  return selfCopy;
}

@end