@interface VCPObjectPool
+ (VCPObjectPool)objectPoolWithAllocator:(id)a3;
- (VCPObjectPool)initWithAllocator:(id)a3;
- (id)getObject;
- (void)returnObject:(id)a3;
@end

@implementation VCPObjectPool

- (VCPObjectPool)initWithAllocator:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VCPObjectPool;
  v5 = [(VCPObjectPool *)&v11 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    allocator = v5->_allocator;
    v5->_allocator = v6;

    v8 = [MEMORY[0x1E695DF70] array];
    objects = v5->_objects;
    v5->_objects = v8;
  }

  return v5;
}

+ (VCPObjectPool)objectPoolWithAllocator:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithAllocator:v3];

  return v4;
}

- (id)getObject
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(NSMutableArray *)v2->_objects count])
  {
    v3 = [VCPLoaned alloc];
    v4 = [(NSMutableArray *)v2->_objects objectAtIndexedSubscript:0];
    v5 = [(VCPLoaned *)v3 initWithObject:v4 fromPool:v2];

    [(NSMutableArray *)v2->_objects removeObjectAtIndex:0];
  }

  else
  {
    v6 = (*(v2->_allocator + 2))();
    if (v6)
    {
      v5 = [[VCPLoaned alloc] initWithObject:v6 fromPool:v2];
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

  objc_sync_exit(v2);

  return v5;
}

- (void)returnObject:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_objects addObject:v4];

  objc_sync_exit(obj);
}

@end