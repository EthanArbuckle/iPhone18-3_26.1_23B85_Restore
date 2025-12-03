@interface CaptureMTLResidencySet
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)containsAllocation:(id)allocation;
- (CaptureMTLResidencySet)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSArray)allAllocations;
- (NSArray)allCommittedAllocations;
- (NSString)description;
- (unint64_t)generationForAllocation:(id)allocation;
- (unint64_t)streamReference;
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
- (void)touch;
@end

@implementation CaptureMTLResidencySet

- (void)requestResidency
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLResidencySetSPI *)self->_baseObject requestResidency];
  v4 = v14;
  *(v14 + 8) = -15223;
  v5 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v7 = *(*(&v13 + 1) + 24);
    v8 = BYTE10(v15);
    ++BYTE10(v15);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLResidencySet *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- (unint64_t)generationForAllocation:(id)allocation
{
  baseObject = self->_baseObject;
  baseObject = [allocation baseObject];
  v5 = [(MTLResidencySetSPI *)baseObject generationForAllocation:baseObject];

  return v5;
}

- (void)endResidency
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLResidencySetSPI *)self->_baseObject endResidency];
  v4 = v14;
  *(v14 + 8) = -15230;
  v5 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v7 = *(*(&v13 + 1) + 24);
    v8 = BYTE10(v15);
    ++BYTE10(v15);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLResidencySet *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15231;
  v5 = BYTE9(v16);
  if (BYTE9(v16) > 0x38uLL)
  {
    v7 = *(*(&v14 + 1) + 24);
    v8 = BYTE10(v16);
    ++BYTE10(v16);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v15 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v16));
    BYTE9(v16) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLResidencySet *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v13.receiver = self;
  v13.super_class = CaptureMTLResidencySet;
  [(CaptureMTLResidencySet *)&v13 dealloc];
}

- (BOOL)containsAllocation:(id)allocation
{
  baseObject = self->_baseObject;
  baseObject = [allocation baseObject];
  LOBYTE(baseObject) = [(MTLResidencySetSPI *)baseObject containsAllocation:baseObject];

  return baseObject;
}

- (void)setExpiredGeneration:(unint64_t)generation
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLResidencySet_setExpiredGeneration", "Residency Set API", 0, 0);
  baseObject = self->_baseObject;

  [(MTLResidencySetSPI *)baseObject setExpiredGeneration:generation];
}

- (void)setCurrentGeneration:(unint64_t)generation
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLResidencySet_setCurrentGeneration", "Residency Set API", 0, 0);
  baseObject = self->_baseObject;

  [(MTLResidencySetSPI *)baseObject setCurrentGeneration:generation];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLResidencySetSPI *)baseObject conformsToProtocol:protocolCopy];

  if (&OBJC_PROTOCOL___CaptureMTLObject == protocolCopy)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = CaptureMTLResidencySet;
  v3 = [(CaptureMTLResidencySet *)&v7 description];
  v4 = [(MTLResidencySetSPI *)self->_baseObject description];
  v5 = [NSString stringWithFormat:@"%@ -> %@", v3, v4];

  return v5;
}

- (unint64_t)streamReference
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    return traceStream->var0;
  }

  else
  {
    return 0;
  }
}

- (void)touch
{
  traceStream = self->_traceStream;
  v3 = mach_absolute_time();
  if (traceStream)
  {
    v4 = atomic_load(&traceStream[1].var1);
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong(&traceStream[1].var1, &v5, v4 & 0x3F | v3 & 0xFFFFFFFFFFFFFFC0);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }
}

- (void)commit
{
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSMutableSet *)selfCopy->_tempAllocations allObjects];
  v5 = [allObjects copy];
  committedAllocations = selfCopy->_committedAllocations;
  selfCopy->_committedAllocations = v5;

  objc_sync_exit(selfCopy);
  [(MTLResidencySetSPI *)selfCopy->_baseObject commit];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    traceStream = selfCopy->_traceStream;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v17);
    v8 = v18;
    *(v18 + 8) = -15220;
    v9 = BYTE9(v19);
    if (BYTE9(v19) > 0x38uLL)
    {
      v11 = *(*(&v17 + 1) + 24);
      v12 = BYTE10(v19);
      ++BYTE10(v19);
      v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x800000000) + 16;
      v9 = v12;
    }

    else
    {
      v10 = (v8 + BYTE9(v19));
      BYTE9(v19) += 8;
    }

    *(v8 + 13) = v9;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    *v10 = var0;
    s();
    *v15 = v16;
    *(v15 + 8) = BYTE8(v19);
    *(v18 + 15) |= 8u;
  }
}

- (NSArray)allCommittedAllocations
{
  v2 = [(NSArray *)self->_committedAllocations copy];

  return v2;
}

- (NSArray)allAllocations
{
  allObjects = [(NSMutableSet *)self->_tempAllocations allObjects];
  v3 = [allObjects copy];

  return v3;
}

- (void)removeAllAllocations
{
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_tempAllocations removeAllObjects];
  objc_sync_exit(selfCopy);

  [(MTLResidencySetSPI *)selfCopy->_baseObject removeAllAllocations];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    traceStream = selfCopy->_traceStream;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v14);
    v5 = v15;
    *(v15 + 8) = -15208;
    v6 = BYTE9(v16);
    if (BYTE9(v16) > 0x38uLL)
    {
      v8 = *(*(&v14 + 1) + 24);
      v9 = BYTE10(v16);
      ++BYTE10(v16);
      v7 = GTTraceMemPool_allocateBytes(v8, *(&v15 + 1), v9 | 0x800000000) + 16;
      v6 = v9;
    }

    else
    {
      v7 = (v5 + BYTE9(v16));
      BYTE9(v16) += 8;
    }

    *(v5 + 13) = v6;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    *v7 = var0;
    s();
    *v12 = v13;
    *(v12 + 8) = BYTE8(v16);
    *(v15 + 15) |= 8u;
  }
}

- (void)removeAllocations:(const void *)allocations count:(unint64_t)count
{
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (count)
  {
    allocationsCopy = allocations;
    countCopy = count;
    do
    {
      [(NSMutableSet *)selfCopy->_tempAllocations removeObject:*allocationsCopy++];
      --countCopy;
    }

    while (countCopy);
  }

  objc_sync_exit(selfCopy);

  baseObject = selfCopy->_baseObject;
  v11 = 8 * count;
  __chkstk_darwin(v12, v13);
  bzero(&v29 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    allocationsCopy2 = allocations;
    v15 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy2 = count;
    do
    {
      *v15++ = [*allocationsCopy2++ baseObject];
      --countCopy2;
    }

    while (countCopy2);
  }

  [(MTLResidencySetSPI *)baseObject removeAllocations:&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    traceStream = selfCopy->_traceStream;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v29);
    v18 = v30;
    *(v30 + 8) = -15206;
    v19 = BYTE9(v31);
    if (BYTE9(v31) > 0x28uLL)
    {
      v21 = *(*(&v29 + 1) + 24);
      v22 = BYTE10(v31);
      ++BYTE10(v31);
      v20 = GTTraceMemPool_allocateBytes(v21, *(&v30 + 1), v22 | 0x1800000000) + 16;
      v19 = v22;
    }

    else
    {
      v20 = (v18 + BYTE9(v31));
      BYTE9(v31) += 24;
    }

    *(v18 + 13) = v19;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v24);
    bzero(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
    v26 = StreamArray(&v29, (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), allocations, count);
    *v20 = var0;
    *(v20 + 1) = count;
    v20[16] = v26;
    *(v20 + 17) = 0;
    *(v20 + 5) = 0;
    s();
    *v27 = v28;
    *(v27 + 8) = BYTE8(v31);
    *(v30 + 15) |= 8u;
  }
}

- (void)removeAllocation:(id)allocation
{
  allocationCopy = allocation;
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_tempAllocations removeObject:allocationCopy];
  objc_sync_exit(selfCopy);

  baseObject = selfCopy->_baseObject;
  baseObject = [allocationCopy baseObject];
  [(MTLResidencySetSPI *)baseObject removeAllocation:baseObject];

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    traceStream = selfCopy->_traceStream;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v20);
    v9 = v21;
    *(v21 + 8) = -15207;
    v10 = BYTE9(v22);
    if (BYTE9(v22) > 0x30uLL)
    {
      v12 = *(*(&v20 + 1) + 24);
      v13 = BYTE10(v22);
      ++BYTE10(v22);
      v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x1000000000) + 16;
      v10 = v13;
    }

    else
    {
      v11 = (v9 + BYTE9(v22));
      BYTE9(v22) += 16;
    }

    *(v9 + 13) = v10;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [allocationCopy traceStream];
    if (traceStream2)
    {
      v17 = *traceStream2;
    }

    else
    {
      v17 = 0;
    }

    *v11 = var0;
    *(v11 + 1) = v17;
    s();
    *v18 = v19;
    *(v18 + 8) = BYTE8(v22);
    *(v21 + 15) |= 8u;
  }
}

- (void)addAllocations:(const void *)allocations count:(unint64_t)count
{
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (count)
  {
    allocationsCopy = allocations;
    countCopy = count;
    do
    {
      [(NSMutableSet *)selfCopy->_tempAllocations addObject:*allocationsCopy++];
      --countCopy;
    }

    while (countCopy);
  }

  objc_sync_exit(selfCopy);

  baseObject = selfCopy->_baseObject;
  v11 = 8 * count;
  __chkstk_darwin(v12, v13);
  bzero(&v29 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    allocationsCopy2 = allocations;
    v15 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy2 = count;
    do
    {
      *v15++ = [*allocationsCopy2++ baseObject];
      --countCopy2;
    }

    while (countCopy2);
  }

  [(MTLResidencySetSPI *)baseObject addAllocations:&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    traceStream = selfCopy->_traceStream;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v29);
    v18 = v30;
    *(v30 + 8) = -15211;
    v19 = BYTE9(v31);
    if (BYTE9(v31) > 0x28uLL)
    {
      v21 = *(*(&v29 + 1) + 24);
      v22 = BYTE10(v31);
      ++BYTE10(v31);
      v20 = GTTraceMemPool_allocateBytes(v21, *(&v30 + 1), v22 | 0x1800000000) + 16;
      v19 = v22;
    }

    else
    {
      v20 = (v18 + BYTE9(v31));
      BYTE9(v31) += 24;
    }

    *(v18 + 13) = v19;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v24);
    bzero(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
    v26 = StreamArray(&v29, (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), allocations, count);
    *v20 = var0;
    *(v20 + 1) = count;
    v20[16] = v26;
    *(v20 + 17) = 0;
    *(v20 + 5) = 0;
    s();
    *v27 = v28;
    *(v27 + 8) = BYTE8(v31);
    *(v30 + 15) |= 8u;
  }
}

- (void)addAllocation:(id)allocation
{
  allocationCopy = allocation;
  ResidencySetTakeSnapshotInternal(self, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_tempAllocations addObject:allocationCopy];
  objc_sync_exit(selfCopy);

  baseObject = selfCopy->_baseObject;
  baseObject = [allocationCopy baseObject];
  [(MTLResidencySetSPI *)baseObject addAllocation:baseObject];

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    traceStream = selfCopy->_traceStream;
    GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v20);
    v9 = v21;
    *(v21 + 8) = -15212;
    v10 = BYTE9(v22);
    if (BYTE9(v22) > 0x30uLL)
    {
      v12 = *(*(&v20 + 1) + 24);
      v13 = BYTE10(v22);
      ++BYTE10(v22);
      v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x1000000000) + 16;
      v10 = v13;
    }

    else
    {
      v11 = (v9 + BYTE9(v22));
      BYTE9(v22) += 16;
    }

    *(v9 + 13) = v10;
    traceStream = [(CaptureMTLResidencySet *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [allocationCopy traceStream];
    if (traceStream2)
    {
      v17 = *traceStream2;
    }

    else
    {
      v17 = 0;
    }

    *v11 = var0;
    *(v11 + 1) = v17;
    s();
    *v18 = v19;
    *(v18 + 8) = BYTE8(v22);
    *(v21 + 15) |= 8u;
  }
}

- (CaptureMTLResidencySet)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = CaptureMTLResidencySet;
  v9 = [(CaptureMTLResidencySet *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v12, v10);

    v13 = +[NSMutableSet set];
    tempAllocations = v10->_tempAllocations;
    v10->_tempAllocations = v13;

    committedAllocations = v10->_committedAllocations;
    v10->_committedAllocations = 0;

    v10->_snapshotCreated = (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2;
  }

  return v10;
}

@end