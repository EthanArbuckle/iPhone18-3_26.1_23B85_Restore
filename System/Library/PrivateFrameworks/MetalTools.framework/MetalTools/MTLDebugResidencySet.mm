@interface MTLDebugResidencySet
- (BOOL)containsAllocation:(id)allocation;
- (MTLDebugResidencySet)initWithResidencySet:(id)set device:(id)device;
- (id)allAllocations;
- (id)allCommittedAllocations;
- (unint64_t)allocatedSize;
- (unint64_t)allocationCount;
- (unint64_t)currentGeneration;
- (unint64_t)expiredGeneration;
- (unint64_t)generationForAllocation:(id)allocation;
- (void)addAllocation:(id)allocation;
- (void)addAllocations:(const void *)allocations count:(unint64_t)count;
- (void)commit;
- (void)endResidency;
- (void)removeAllAllocations;
- (void)removeAllocation:(id)allocation;
- (void)removeAllocations:(const void *)allocations count:(unint64_t)count;
- (void)requestResidency;
- (void)setCurrentGeneration:(unint64_t)generation;
- (void)setExpiredGeneration:(unint64_t)generation;
- (void)validateAllocation:(id)allocation;
- (void)validateHeap:(id)heap;
- (void)validateResource:(id)resource;
@end

@implementation MTLDebugResidencySet

- (MTLDebugResidencySet)initWithResidencySet:(id)set device:(id)device
{
  v5.receiver = self;
  v5.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v5 initWithBaseObject:set parent:device];
  if (result)
  {
    atomic_store(0, &result->_accessStatus.__a_.__a_value);
  }

  return result;
}

- (void)validateHeap:(id)heap
{
  if (heap)
  {
    if ([heap type] == 2)
    {
      [MTLDebugResidencySet validateHeap:];
    }
  }
}

- (void)validateResource:(id)resource
{
  if (resource)
  {
    if ([resource storageMode] == 3)
    {
      [MTLDebugResidencySet validateResource:];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [resource isSparse] && !objc_msgSend(resource, "placementSparsePageSize"))
    {
      [MTLDebugResidencySet validateResource:];
    }
  }
}

- (void)validateAllocation:(id)allocation
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (objc_opt_respondsToSelector())
        {

          [(MTLDebugResidencySet *)self validateResource:allocation];
        }

        else
        {

          [(MTLDebugResidencySet *)self validateHeap:allocation];
        }
      }
    }
  }
}

- (unint64_t)allocatedSize
{
  if ((atomic_fetch_add(&self->_accessStatus, 1u) & 0x80000000) != 0)
  {
    MTLReportFailure();
  }

  v4.receiver = self;
  v4.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v4 allocatedSize];
  atomic_fetch_add(&self->_accessStatus, 0xFFFFFFFF);
  return result;
}

- (void)endResidency
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  v3.receiver = self;
  v3.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v3 endResidency];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (void)commit
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  v3.receiver = self;
  v3.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v3 commit];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (void)requestResidency
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  v3.receiver = self;
  v3.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v3 requestResidency];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (void)addAllocations:(const void *)allocations count:(unint64_t)count
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  if (count)
  {
    v7 = 0;
    do
    {
      if (!allocations[v7])
      {
        v9 = v7;
        MTLReportFailure();
        v8 = allocations[v7];
      }

      [(MTLDebugResidencySet *)self validateAllocation:v9];
      ++v7;
    }

    while (count != v7);
  }

  v10.receiver = self;
  v10.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v10 addAllocations:allocations count:count];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (void)removeAllocations:(const void *)allocations count:(unint64_t)count
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  if (count)
  {
    v7 = 0;
    do
    {
      if (!allocations[v7])
      {
        v8 = v7;
        MTLReportFailure();
      }

      ++v7;
    }

    while (count != v7);
  }

  v9.receiver = self;
  v9.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v9 removeAllocations:allocations count:count, v8];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (void)addAllocation:(id)allocation
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  if (!allocation)
  {
    MTLReportFailure();
  }

  [(MTLDebugResidencySet *)self validateAllocation:allocation];
  v5.receiver = self;
  v5.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v5 addAllocation:allocation];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (void)removeAllocation:(id)allocation
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  if (!allocation)
  {
    MTLReportFailure();
  }

  v5.receiver = self;
  v5.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v5 removeAllocation:allocation];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (void)removeAllAllocations
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  v3.receiver = self;
  v3.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v3 removeAllAllocations];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (unint64_t)allocationCount
{
  if ((atomic_fetch_add(&self->_accessStatus, 1u) & 0x80000000) != 0)
  {
    MTLReportFailure();
  }

  v4.receiver = self;
  v4.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v4 allocationCount];
  atomic_fetch_add(&self->_accessStatus, 0xFFFFFFFF);
  return result;
}

- (BOOL)containsAllocation:(id)allocation
{
  if ((atomic_fetch_add(&self->_accessStatus, 1u) & 0x80000000) != 0)
  {
    MTLReportFailure();
  }

  v6.receiver = self;
  v6.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v6 containsAllocation:allocation];
  atomic_fetch_add(&self->_accessStatus, 0xFFFFFFFF);
  return result;
}

- (id)allAllocations
{
  if ((atomic_fetch_add(&self->_accessStatus, 1u) & 0x80000000) != 0)
  {
    MTLReportFailure();
  }

  v4.receiver = self;
  v4.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v4 allAllocations];
  atomic_fetch_add(&self->_accessStatus, 0xFFFFFFFF);
  return result;
}

- (id)allCommittedAllocations
{
  if ((atomic_fetch_add(&self->_accessStatus, 1u) & 0x80000000) != 0)
  {
    MTLReportFailure();
  }

  v4.receiver = self;
  v4.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v4 allCommittedAllocations];
  atomic_fetch_add(&self->_accessStatus, 0xFFFFFFFF);
  return result;
}

- (unint64_t)generationForAllocation:(id)allocation
{
  if ((atomic_fetch_add(&self->_accessStatus, 1u) & 0x80000000) != 0)
  {
    MTLReportFailure();
  }

  v6.receiver = self;
  v6.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v6 generationForAllocation:allocation];
  atomic_fetch_add(&self->_accessStatus, 0xFFFFFFFF);
  return result;
}

- (unint64_t)currentGeneration
{
  if ((atomic_fetch_add(&self->_accessStatus, 1u) & 0x80000000) != 0)
  {
    MTLReportFailure();
  }

  v4.receiver = self;
  v4.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v4 currentGeneration];
  atomic_fetch_add(&self->_accessStatus, 0xFFFFFFFF);
  return result;
}

- (void)setCurrentGeneration:(unint64_t)generation
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  v5.receiver = self;
  v5.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v5 setCurrentGeneration:generation];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (unint64_t)expiredGeneration
{
  if ((atomic_fetch_add(&self->_accessStatus, 1u) & 0x80000000) != 0)
  {
    MTLReportFailure();
  }

  v4.receiver = self;
  v4.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v4 expiredGeneration];
  atomic_fetch_add(&self->_accessStatus, 0xFFFFFFFF);
  return result;
}

- (void)setExpiredGeneration:(unint64_t)generation
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  v5.receiver = self;
  v5.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v5 setExpiredGeneration:generation];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

@end