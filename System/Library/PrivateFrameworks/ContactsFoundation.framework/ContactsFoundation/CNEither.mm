@interface CNEither
+ (CNEither)eitherWithBlock:(id)a3;
+ (CNEither)eitherWithBool:(BOOL)a3 error:(id)a4;
+ (CNEither)eitherWithLeft:(id)a3;
+ (CNEither)eitherWithLeft:(id)a3 right:(id)a4;
+ (CNEither)eitherWithRight:(id)a3;
+ (id)firstLeftInLazyChain:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLeft;
- (BOOL)isRight;
- (CNEither)initWithCoder:(id)a3;
- (CNEither)initWithLeft:(id)a3 right:(id)a4;
- (id)description;
- (id)left;
- (id)right;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNEither

- (id)right
{
  v2 = [(CNEither *)self pair];
  v3 = [v2 second];

  return v3;
}

- (id)left
{
  v2 = [(CNEither *)self pair];
  v3 = [v2 first];

  return v3;
}

- (BOOL)isLeft
{
  v2 = [(CNEither *)self left];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isRight
{
  v2 = [(CNEither *)self right];
  v3 = v2 != 0;

  return v3;
}

+ (CNEither)eitherWithLeft:(id)a3 right:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithLeft:v7 right:v6];

  return v8;
}

+ (CNEither)eitherWithLeft:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_0 != -1)
    {
      +[CNEither eitherWithLeft:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_0;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_0, OS_LOG_TYPE_FAULT))
    {
      [(CNEither *)v5 eitherWithLeft:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [a1 eitherWithLeft:v4 right:0];

  return v13;
}

+ (CNEither)eitherWithRight:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_0 != -1)
    {
      +[CNEither eitherWithLeft:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_0;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_0, OS_LOG_TYPE_FAULT))
    {
      [(CNEither *)v5 eitherWithRight:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [a1 eitherWithLeft:0 right:v4];

  return v13;
}

+ (CNEither)eitherWithBool:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [CNEither alloc];
  if (v4)
  {
    v7 = MEMORY[0x1E695E118];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CNEither *)v6 initWithLeft:v7 right:v5];

  return v8;
}

+ (CNEither)eitherWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v5 = v3[2](v3, &v9);
  v6 = v9;
  v7 = [CNEither eitherWithLeft:v5 right:v6];

  objc_autoreleasePoolPop(v4);

  return v7;
}

+ (id)firstLeftInLazyChain:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    if (CNGuardOSLog_cn_once_token_0_0 != -1)
    {
      +[CNEither eitherWithLeft:];
    }

    v4 = CNGuardOSLog_cn_once_object_0_0;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_0, OS_LOG_TYPE_FAULT))
    {
      [(CNEither *)v4 firstLeftInLazyChain:v5, v6, v7, v8, v9, v10, v11];
    }
  }

  if (![v3 count])
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"no either blocks passed to firstLeftInLazyChain" userInfo:0];
    objc_exception_throw(v21);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v23;
LABEL_9:
    v17 = 0;
    v18 = v15;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v15 = (*(*(*(&v22 + 1) + 8 * v17) + 16))(*(*(&v22 + 1) + 8 * v17));

      if ((*(CNEitherIsLeft + 2))(CNEitherIsLeft, v15))
      {
        break;
      }

      ++v17;
      v18 = v15;
      if (v14 == v17)
      {
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

- (CNEither)initWithLeft:(id)a3 right:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CNEither;
  v8 = [(CNEither *)&v13 init];
  if (v8)
  {
    v9 = [CNPair pairWithFirst:v6 second:v7];
    pair = v8->_pair;
    v8->_pair = v9;

    v11 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [(CNEither *)self left];
  v5 = [v3 appendName:@"left" object:v4];

  v6 = [(CNEither *)self right];
  v7 = [v3 appendName:@"right" object:v6];

  v8 = [v3 build];

  return v8;
}

- (unint64_t)hash
{
  aBlock[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __16__CNEither_hash__block_invoke;
  v6[3] = &unk_1E6ED5F00;
  v6[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __16__CNEither_hash__block_invoke_2;
  aBlock[3] = &unk_1E6ED5F00;
  v2 = _Block_copy(aBlock);
  v3 = [CNHashBuilder hashWithBlocks:v6, v2, 0];

  return v3;
}

unint64_t __16__CNEither_hash__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) left];
  v2 = [CNHashBuilder objectHash:v1];

  return v2;
}

unint64_t __16__CNEither_hash__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) right];
  v2 = [CNHashBuilder objectHash:v1];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 1;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (pair = self->_pair, pair | v4->_pair) && ![(CNPair *)pair isEqual:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

- (CNEither)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"left"];
  v6 = [v4 decodeObjectForKey:@"right"];

  v7 = [(CNEither *)self initWithLeft:v5 right:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CNEither *)self left];
  [v4 encodeObject:v5 forKey:@"left"];

  v6 = [(CNEither *)self right];
  [v4 encodeObject:v6 forKey:@"right"];
}

@end