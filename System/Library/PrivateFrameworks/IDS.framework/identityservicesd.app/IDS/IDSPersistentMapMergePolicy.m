@interface IDSPersistentMapMergePolicy
+ (id)ditchMemoryPolicy;
+ (id)prioritizeMemoryPolicy;
- (IDSPersistentMapMergePolicy)initWithPolicyBlock:(id)a3;
- (IDSPersistentMapMergePolicy)initWithStandardPolicy:(unint64_t)a3;
- (id)processedDictionaryForDisk:(id)a3 andMemory:(id)a4;
@end

@implementation IDSPersistentMapMergePolicy

+ (id)ditchMemoryPolicy
{
  v2 = [[a1 alloc] initWithStandardPolicy:0];

  return v2;
}

+ (id)prioritizeMemoryPolicy
{
  v2 = [[a1 alloc] initWithStandardPolicy:1];

  return v2;
}

- (IDSPersistentMapMergePolicy)initWithStandardPolicy:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = IDSPersistentMapMergePolicy;
  result = [(IDSPersistentMapMergePolicy *)&v5 init];
  if (result)
  {
    result->_policy = a3;
  }

  return result;
}

- (IDSPersistentMapMergePolicy)initWithPolicyBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(IDSPersistentMapMergePolicy *)self initWithStandardPolicy:2];
    if (v5)
    {
      v6 = objc_retainBlock(v4);
      block = v5->_block;
      v5->_block = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)processedDictionaryForDisk:(id)a3 andMemory:(id)a4
{
  block = self->_block;
  if (block)
  {
    v6 = block[2](block, a3, a4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v6 = v7;
    }

    else
    {
      v7 = [v6 mutableCopy];
    }

    v9 = v7;
  }

  else
  {
    v6 = [NSAssertionHandler currentHandler:a3];
    v9 = 0;
  }

  return v9;
}

@end