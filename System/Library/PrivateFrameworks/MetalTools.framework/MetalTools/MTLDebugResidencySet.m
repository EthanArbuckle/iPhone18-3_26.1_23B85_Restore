@interface MTLDebugResidencySet
- (BOOL)containsAllocation:(id)a3;
- (MTLDebugResidencySet)initWithResidencySet:(id)a3 device:(id)a4;
- (id)allAllocations;
- (id)allCommittedAllocations;
- (unint64_t)allocatedSize;
- (unint64_t)allocationCount;
- (unint64_t)currentGeneration;
- (unint64_t)expiredGeneration;
- (unint64_t)generationForAllocation:(id)a3;
- (void)addAllocation:(id)a3;
- (void)addAllocations:(const void *)a3 count:(unint64_t)a4;
- (void)commit;
- (void)endResidency;
- (void)removeAllAllocations;
- (void)removeAllocation:(id)a3;
- (void)removeAllocations:(const void *)a3 count:(unint64_t)a4;
- (void)requestResidency;
- (void)setCurrentGeneration:(unint64_t)a3;
- (void)setExpiredGeneration:(unint64_t)a3;
- (void)validateAllocation:(id)a3;
- (void)validateHeap:(id)a3;
- (void)validateResource:(id)a3;
@end

@implementation MTLDebugResidencySet

- (MTLDebugResidencySet)initWithResidencySet:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v5 initWithBaseObject:a3 parent:a4];
  if (result)
  {
    atomic_store(0, &result->_accessStatus.__a_.__a_value);
  }

  return result;
}

- (void)validateHeap:(id)a3
{
  if (a3)
  {
    if ([a3 type] == 2)
    {
      [MTLDebugResidencySet validateHeap:];
    }
  }
}

- (void)validateResource:(id)a3
{
  if (a3)
  {
    if ([a3 storageMode] == 3)
    {
      [MTLDebugResidencySet validateResource:];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [a3 isSparse] && !objc_msgSend(a3, "placementSparsePageSize"))
    {
      [MTLDebugResidencySet validateResource:];
    }
  }
}

- (void)validateAllocation:(id)a3
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

          [(MTLDebugResidencySet *)self validateResource:a3];
        }

        else
        {

          [(MTLDebugResidencySet *)self validateHeap:a3];
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

- (void)addAllocations:(const void *)a3 count:(unint64_t)a4
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  if (a4)
  {
    v7 = 0;
    do
    {
      if (!a3[v7])
      {
        v9 = v7;
        MTLReportFailure();
        v8 = a3[v7];
      }

      [(MTLDebugResidencySet *)self validateAllocation:v9];
      ++v7;
    }

    while (a4 != v7);
  }

  v10.receiver = self;
  v10.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v10 addAllocations:a3 count:a4];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (void)removeAllocations:(const void *)a3 count:(unint64_t)a4
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  if (a4)
  {
    v7 = 0;
    do
    {
      if (!a3[v7])
      {
        v8 = v7;
        MTLReportFailure();
      }

      ++v7;
    }

    while (a4 != v7);
  }

  v9.receiver = self;
  v9.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v9 removeAllocations:a3 count:a4, v8];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (void)addAllocation:(id)a3
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  if (!a3)
  {
    MTLReportFailure();
  }

  [(MTLDebugResidencySet *)self validateAllocation:a3];
  v5.receiver = self;
  v5.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v5 addAllocation:a3];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

- (void)removeAllocation:(id)a3
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  if (!a3)
  {
    MTLReportFailure();
  }

  v5.receiver = self;
  v5.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v5 removeAllocation:a3];
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

- (BOOL)containsAllocation:(id)a3
{
  if ((atomic_fetch_add(&self->_accessStatus, 1u) & 0x80000000) != 0)
  {
    MTLReportFailure();
  }

  v6.receiver = self;
  v6.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v6 containsAllocation:a3];
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

- (unint64_t)generationForAllocation:(id)a3
{
  if ((atomic_fetch_add(&self->_accessStatus, 1u) & 0x80000000) != 0)
  {
    MTLReportFailure();
  }

  v6.receiver = self;
  v6.super_class = MTLDebugResidencySet;
  result = [(MTLToolsResidencySet *)&v6 generationForAllocation:a3];
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

- (void)setCurrentGeneration:(unint64_t)a3
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  v5.receiver = self;
  v5.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v5 setCurrentGeneration:a3];
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

- (void)setExpiredGeneration:(unint64_t)a3
{
  if (atomic_fetch_or(&self->_accessStatus, 0x80000000))
  {
    MTLReportFailure();
  }

  v5.receiver = self;
  v5.super_class = MTLDebugResidencySet;
  [(MTLToolsResidencySet *)&v5 setExpiredGeneration:a3];
  atomic_fetch_and(&self->_accessStatus, 0x7FFFFFFFu);
}

@end