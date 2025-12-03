@interface CNEqualsBuilder
+ (BOOL)evaluateBuilderBlock:(id)block remainingBlocks:(char *)blocks;
+ (BOOL)isObject:(id)object equalToOther:(id)other;
+ (BOOL)isObject:(id)object equalToOther:(id)other withBlocks:(id)blocks;
+ (BOOL)isObject:(id)object kindOfClass:(Class)class andEqualToObject:(id)toObject withBlocks:(id)blocks;
+ (BOOL)isObject:(id)object memberOfClass:(Class)class andEqualToObject:(id)toObject withBlocks:(id)blocks;
+ (BOOL)isObject:(id)object memberOfSameClassAndEqualTo:(id)to withBlocks:(id)blocks;
+ (BOOL)isString:(id)string localizedCaseInsensitiveEqualToOther:(id)other;
@end

@implementation CNEqualsBuilder

+ (BOOL)isObject:(id)object equalToOther:(id)other withBlocks:(id)blocks
{
  objectCopy = object;
  otherCopy = other;
  blocksCopy = blocks;
  if (objectCopy == otherCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [self evaluateBuilderBlock:blocksCopy remainingBlocks:&v13];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (BOOL)isObject:(id)object kindOfClass:(Class)class andEqualToObject:(id)toObject withBlocks:(id)blocks
{
  objectCopy = object;
  toObjectCopy = toObject;
  blocksCopy = blocks;
  if (toObjectCopy == objectCopy)
  {
    v12 = 1;
  }

  else if (objc_opt_isKindOfClass())
  {
    v12 = [self evaluateBuilderBlock:blocksCopy remainingBlocks:&v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)isObject:(id)object memberOfClass:(Class)class andEqualToObject:(id)toObject withBlocks:(id)blocks
{
  objectCopy = object;
  toObjectCopy = toObject;
  blocksCopy = blocks;
  if (toObjectCopy == objectCopy)
  {
    v13 = 1;
  }

  else if ([objectCopy isMemberOfClass:class])
  {
    v13 = [self evaluateBuilderBlock:blocksCopy remainingBlocks:&v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)isObject:(id)object memberOfSameClassAndEqualTo:(id)to withBlocks:(id)blocks
{
  objectCopy = object;
  toCopy = to;
  blocksCopy = blocks;
  if (toCopy == objectCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [self evaluateBuilderBlock:blocksCopy remainingBlocks:&v13];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (BOOL)evaluateBuilderBlock:(id)block remainingBlocks:(char *)blocks
{
  blockCopy = block;
  blocksCopy = blocks;
  v6 = _Block_copy(blockCopy);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = v7;
      v9 = v7[2](v7);
      v10 = blocksCopy;
      blocksCopy += 8;
      v7 = _Block_copy(*v10);

      if (v9)
      {
        v11 = v7 == 0;
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

+ (BOOL)isObject:(id)object equalToOther:(id)other
{
  if (object | other)
  {
    return [object isEqual:other];
  }

  else
  {
    return 1;
  }
}

+ (BOOL)isString:(id)string localizedCaseInsensitiveEqualToOther:(id)other
{
  if (string)
  {
    stringCopy = string;
  }

  else
  {
    stringCopy = &stru_1EF441028;
  }

  if (other)
  {
    otherCopy = other;
  }

  else
  {
    otherCopy = &stru_1EF441028;
  }

  return [(__CFString *)stringCopy localizedCaseInsensitiveCompare:otherCopy]== 0;
}

@end