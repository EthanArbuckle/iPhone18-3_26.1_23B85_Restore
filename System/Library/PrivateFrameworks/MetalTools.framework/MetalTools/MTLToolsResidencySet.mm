@interface MTLToolsResidencySet
- (MTLToolsResidencySet)initWithBaseObject:(id)object parent:(id)parent;
- (NSArray)allCommittedAllocations;
- (NSString)label;
- (unint64_t)allocatedSize;
- (unint64_t)allocationCount;
- (unint64_t)currentGeneration;
- (unint64_t)expiredGeneration;
- (unint64_t)generationForAllocation:(id)allocation;
- (void)addAllocation:(id)allocation;
- (void)addAllocations:(const void *)allocations count:(unint64_t)count;
- (void)commit;
- (void)dealloc;
- (void)endResidency;
- (void)removeAllAllocations;
- (void)removeAllocation:(id)allocation;
- (void)removeAllocations:(const void *)allocations count:(unint64_t)count;
- (void)requestResidency;
- (void)setCurrentGeneration:(unint64_t)generation;
- (void)setExpiredGeneration:(unint64_t)generation;
@end

@implementation MTLToolsResidencySet

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (unint64_t)allocatedSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject allocatedSize];
}

- (void)endResidency
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endResidency];
}

- (void)requestResidency
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject requestResidency];
}

- (unint64_t)currentGeneration
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject currentGeneration];
}

- (void)setCurrentGeneration:(unint64_t)generation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setCurrentGeneration:generation];
}

- (unint64_t)expiredGeneration
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject expiredGeneration];
}

- (void)setExpiredGeneration:(unint64_t)generation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setExpiredGeneration:generation];
}

- (MTLToolsResidencySet)initWithBaseObject:(id)object parent:(id)parent
{
  v6.receiver = self;
  v6.super_class = MTLToolsResidencySet;
  v4 = [(MTLToolsObject *)&v6 initWithBaseObject:object parent:parent];
  if (v4)
  {
    v4->_allocations = objc_alloc_init(MEMORY[0x277CBEB58]);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  committedAllocations = self->_committedAllocations;
  if (committedAllocations)
  {
    v4 = (committedAllocations + 2);
    for (i = committedAllocations + 2; ; i[2])
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    v6 = *v4;
    if (*v4)
    {
      do
      {
        v7 = *v6;
        operator delete(v6);
        v6 = v7;
      }

      while (v7);
    }

    v8 = *committedAllocations;
    *committedAllocations = 0;
    if (v8)
    {
      operator delete(v8);
    }

    MEMORY[0x2318E4940](committedAllocations, 0x10A0C408EF24B1CLL);
  }

  v9.receiver = self;
  v9.super_class = MTLToolsResidencySet;
  [(MTLToolsObject *)&v9 dealloc];
}

- (void)addAllocations:(const void *)allocations count:(unint64_t)count
{
  std::vector<objc_object  {objcproto13MTLAllocation}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      v8 = allocations[v7];
      [(NSMutableSet *)self->_allocations addObject:v8];
      [(NSMutableSet *)self->_pendingRemoves removeObject:v8];
      [(NSMutableSet *)self->_pendingAdds addObject:v8];
      baseObject = [v8 baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 addAllocations:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)removeAllocations:(const void *)allocations count:(unint64_t)count
{
  countCopy = count;
  std::vector<objc_object  {objcproto13MTLAllocation}*>::vector[abi:ne200100](__p, count);
  if (countCopy)
  {
    for (i = 0; i != countCopy; ++i)
    {
      baseObject = [allocations[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 removeAllocations:__p[0] count:countCopy];
  for (; countCopy; --countCopy)
  {
    v10 = *allocations;
    [(NSMutableSet *)self->_allocations removeObject:*allocations];
    [(NSMutableSet *)self->_pendingAdds removeObject:v10];
    [(NSMutableSet *)self->_pendingRemoves addObject:v10];
    ++allocations;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)addAllocation:(id)allocation
{
  [(NSMutableSet *)self->_allocations addObject:?];
  [(NSMutableSet *)self->_pendingRemoves removeObject:allocation];
  [(NSMutableSet *)self->_pendingAdds addObject:allocation];
  baseObject = [allocation baseObject];
  baseObject2 = [(MTLToolsObject *)self baseObject];

  [baseObject2 addAllocation:baseObject];
}

- (void)removeAllocation:(id)allocation
{
  [-[MTLToolsObject baseObject](self "baseObject")];
  [(NSMutableSet *)self->_allocations removeObject:allocation];
  [(NSMutableSet *)self->_pendingAdds removeObject:allocation];
  pendingRemoves = self->_pendingRemoves;

  [(NSMutableSet *)pendingRemoves addObject:allocation];
}

- (unint64_t)generationForAllocation:(id)allocation
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [allocation baseObject];

  return [baseObject generationForAllocation:baseObject2];
}

- (void)removeAllAllocations
{
  [-[MTLToolsObject baseObject](self "baseObject")];

  self->_pendingRemoves = [(NSMutableSet *)self->_allocations mutableCopy];
  [(NSMutableSet *)self->_pendingAdds removeAllObjects];
  allocations = self->_allocations;

  [(NSMutableSet *)allocations removeAllObjects];
}

- (NSArray)allCommittedAllocations
{
  committedAllocations = self->_committedAllocations;
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:committedAllocations[3]];
  for (i = committedAllocations[2]; i; i = *i)
  {
    [(NSArray *)v3 addObject:i[2]];
  }

  return v3;
}

- (unint64_t)allocationCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject allocationCount];
}

- (void)commit
{
  v52 = *MEMORY[0x277D85DE8];
  v39 = [-[MTLToolsObject baseObject](self "baseObject")];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v37 = [-[MTLToolsObject baseObject](self "baseObject")];
  obj = self->_pendingAdds;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v3)
  {
    v40 = *v46;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v45 + 1) + 8 * i);
        committedAllocations = self->_committedAllocations;
        v49 = v5;
        if (v7)
        {
          v7[3] = 0;
          *(v7 + 32) = 0;
          continue;
        }

        v8 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
        v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v8 >> 47) ^ v8);
        v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
        v11 = committedAllocations[1];
        if (!*&v11)
        {
          goto LABEL_24;
        }

        v12 = vcnt_s8(v11);
        v12.i16[0] = vaddlv_u8(v12);
        if (v12.u32[0] > 1uLL)
        {
          v13 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
          if (v10 >= *&v11)
          {
            v13 = v10 % *&v11;
          }
        }

        else
        {
          v13 = (*&v11 - 1) & v10;
        }

        v14 = *(*committedAllocations + 8 * v13);
        if (!v14 || (v15 = *v14) == 0)
        {
LABEL_24:
          operator new();
        }

        while (1)
        {
          v16 = v15[1];
          if (v16 == v10)
          {
            break;
          }

          if (v12.u32[0] > 1uLL)
          {
            if (v16 >= *&v11)
            {
              v16 %= *&v11;
            }
          }

          else
          {
            v16 &= *&v11 - 1;
          }

          if (v16 != v13)
          {
            goto LABEL_24;
          }

LABEL_23:
          v15 = *v15;
          if (!v15)
          {
            goto LABEL_24;
          }
        }

        if (v15[2] != v5)
        {
          goto LABEL_23;
        }

        v17 = v5;
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v3);
  }

  [(NSMutableSet *)self->_pendingAdds removeAllObjects];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  pendingRemoves = self->_pendingRemoves;
  v19 = [(NSMutableSet *)pendingRemoves countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v19)
  {
    v20 = *v42;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(pendingRemoves);
        }

        v22 = self->_committedAllocations;
        v49 = *(*(&v41 + 1) + 8 * j);
        if (v23)
        {
          v23[3] = v39;
          *(v23 + 32) = 1;
        }
      }

      v19 = [(NSMutableSet *)pendingRemoves countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v19);
  }

  [(NSMutableSet *)self->_pendingRemoves removeAllObjects];
  v24 = self->_committedAllocations;
  v25 = v24[2];
  if (v25)
  {
    while (*(v25 + 32) != 1 || v25[3] > v37)
    {
      v26 = *v25;
LABEL_68:
      v25 = v26;
      if (!v26)
      {
        goto LABEL_69;
      }
    }

    v27 = v24[1];
    v28 = v25[1];
    v29 = vcnt_s8(v27);
    v29.i16[0] = vaddlv_u8(v29);
    if (v29.u32[0] > 1uLL)
    {
      if (v28 >= *&v27)
      {
        v28 %= *&v27;
      }
    }

    else
    {
      v28 &= *&v27 - 1;
    }

    v26 = *v25;
    v30 = *(*v24 + 8 * v28);
    do
    {
      v31 = v30;
      v30 = *v30;
    }

    while (v30 != v25);
    if (v31 == v24 + 2)
    {
      goto LABEL_72;
    }

    v32 = v31[1];
    if (v29.u32[0] > 1uLL)
    {
      if (v32 >= *&v27)
      {
        v32 %= *&v27;
      }
    }

    else
    {
      v32 &= *&v27 - 1;
    }

    v33 = *v25;
    if (v32 != v28)
    {
LABEL_72:
      if (v26)
      {
        v34 = v26[1];
        if (v29.u32[0] > 1uLL)
        {
          v35 = v26[1];
          if (v34 >= *&v27)
          {
            v35 = v34 % *&v27;
          }
        }

        else
        {
          v35 = v34 & (*&v27 - 1);
        }

        v33 = *v25;
        if (v35 == v28)
        {
          goto LABEL_61;
        }
      }

      *(*v24 + 8 * v28) = 0;
      v33 = *v25;
    }

    if (!v33)
    {
LABEL_67:
      *v31 = v33;
      *v25 = 0;
      --v24[3];
      operator delete(v25);
      goto LABEL_68;
    }

    v34 = *(v33 + 8);
LABEL_61:
    if (v29.u32[0] > 1uLL)
    {
      if (v34 >= *&v27)
      {
        v34 %= *&v27;
      }
    }

    else
    {
      v34 &= *&v27 - 1;
    }

    if (v34 != v28)
    {
      *(*v24 + 8 * v34) = v31;
      v33 = *v25;
    }

    goto LABEL_67;
  }

LABEL_69:
  [-[MTLToolsObject baseObject](self "baseObject")];
  v36 = *MEMORY[0x277D85DE8];
}

@end