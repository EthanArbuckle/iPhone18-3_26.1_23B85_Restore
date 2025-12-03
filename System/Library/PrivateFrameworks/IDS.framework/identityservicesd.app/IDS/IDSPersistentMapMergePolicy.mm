@interface IDSPersistentMapMergePolicy
+ (id)ditchMemoryPolicy;
+ (id)prioritizeMemoryPolicy;
- (IDSPersistentMapMergePolicy)initWithPolicyBlock:(id)block;
- (IDSPersistentMapMergePolicy)initWithStandardPolicy:(unint64_t)policy;
- (id)processedDictionaryForDisk:(id)disk andMemory:(id)memory;
@end

@implementation IDSPersistentMapMergePolicy

+ (id)ditchMemoryPolicy
{
  v2 = [[self alloc] initWithStandardPolicy:0];

  return v2;
}

+ (id)prioritizeMemoryPolicy
{
  v2 = [[self alloc] initWithStandardPolicy:1];

  return v2;
}

- (IDSPersistentMapMergePolicy)initWithStandardPolicy:(unint64_t)policy
{
  v5.receiver = self;
  v5.super_class = IDSPersistentMapMergePolicy;
  result = [(IDSPersistentMapMergePolicy *)&v5 init];
  if (result)
  {
    result->_policy = policy;
  }

  return result;
}

- (IDSPersistentMapMergePolicy)initWithPolicyBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = [(IDSPersistentMapMergePolicy *)self initWithStandardPolicy:2];
    if (v5)
    {
      v6 = objc_retainBlock(blockCopy);
      block = v5->_block;
      v5->_block = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)processedDictionaryForDisk:(id)disk andMemory:(id)memory
{
  block = self->_block;
  if (block)
  {
    v6 = block[2](block, disk, memory);
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
    v6 = [NSAssertionHandler currentHandler:disk];
    v9 = 0;
  }

  return v9;
}

@end