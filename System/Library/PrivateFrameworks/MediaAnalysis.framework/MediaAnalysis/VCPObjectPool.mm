@interface VCPObjectPool
+ (VCPObjectPool)objectPoolWithAllocator:(id)allocator;
- (VCPObjectPool)initWithAllocator:(id)allocator;
- (id)getObject;
- (void)returnObject:(id)object;
@end

@implementation VCPObjectPool

- (VCPObjectPool)initWithAllocator:(id)allocator
{
  allocatorCopy = allocator;
  v11.receiver = self;
  v11.super_class = VCPObjectPool;
  v5 = [(VCPObjectPool *)&v11 init];
  if (v5)
  {
    v6 = _Block_copy(allocatorCopy);
    allocator = v5->_allocator;
    v5->_allocator = v6;

    array = [MEMORY[0x1E695DF70] array];
    objects = v5->_objects;
    v5->_objects = array;
  }

  return v5;
}

+ (VCPObjectPool)objectPoolWithAllocator:(id)allocator
{
  allocatorCopy = allocator;
  v4 = [objc_alloc(objc_opt_class()) initWithAllocator:allocatorCopy];

  return v4;
}

- (id)getObject
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableArray *)selfCopy->_objects count])
  {
    v3 = [VCPLoaned alloc];
    v4 = [(NSMutableArray *)selfCopy->_objects objectAtIndexedSubscript:0];
    v5 = [(VCPLoaned *)v3 initWithObject:v4 fromPool:selfCopy];

    [(NSMutableArray *)selfCopy->_objects removeObjectAtIndex:0];
  }

  else
  {
    v6 = (*(selfCopy->_allocator + 2))();
    if (v6)
    {
      v5 = [[VCPLoaned alloc] initWithObject:v6 fromPool:selfCopy];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPObjectPool failed to allocate object", v8, 2u);
      }

      v5 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)returnObject:(id)object
{
  obj = self;
  objectCopy = object;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_objects addObject:objectCopy];

  objc_sync_exit(obj);
}

@end