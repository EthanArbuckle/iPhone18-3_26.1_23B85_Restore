@interface CaptureMTLResidencySet
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)containsAllocation:(id)a3;
- (CaptureMTLResidencySet)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (NSArray)allAllocations;
- (NSArray)allCommittedAllocations;
- (NSString)description;
- (unint64_t)generationForAllocation:(id)a3;
- (unint64_t)streamReference;
- (void)addAllocation:(id)a3;
- (void)addAllocations:(const void *)a3 count:(unint64_t)a4;
- (void)commit;
- (void)dealloc;
- (void)endResidency;
- (void)removeAllAllocations;
- (void)removeAllocation:(id)a3;
- (void)removeAllocations:(const void *)a3 count:(unint64_t)a4;
- (void)requestResidency;
- (void)setCurrentGeneration:(unint64_t)a3;
- (void)setExpiredGeneration:(unint64_t)a3;
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
  v9 = [(CaptureMTLResidencySet *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
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

- (unint64_t)generationForAllocation:(id)a3
{
  baseObject = self->_baseObject;
  v4 = [a3 baseObject];
  v5 = [(MTLResidencySetSPI *)baseObject generationForAllocation:v4];

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
  v9 = [(CaptureMTLResidencySet *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
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
  v9 = [(CaptureMTLResidencySet *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
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

- (BOOL)containsAllocation:(id)a3
{
  baseObject = self->_baseObject;
  v4 = [a3 baseObject];
  LOBYTE(baseObject) = [(MTLResidencySetSPI *)baseObject containsAllocation:v4];

  return baseObject;
}

- (void)setExpiredGeneration:(unint64_t)a3
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLResidencySet_setExpiredGeneration", "Residency Set API", 0, 0);
  baseObject = self->_baseObject;

  [(MTLResidencySetSPI *)baseObject setExpiredGeneration:a3];
}

- (void)setCurrentGeneration:(unint64_t)a3
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLResidencySet_setCurrentGeneration", "Residency Set API", 0, 0);
  baseObject = self->_baseObject;

  [(MTLResidencySetSPI *)baseObject setCurrentGeneration:a3];
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLResidencySetSPI *)baseObject conformsToProtocol:v4];

  if (&OBJC_PROTOCOL___CaptureMTLObject == v4)
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
  v3 = self;
  objc_sync_enter(v3);
  v4 = [(NSMutableSet *)v3->_tempAllocations allObjects];
  v5 = [v4 copy];
  committedAllocations = v3->_committedAllocations;
  v3->_committedAllocations = v5;

  objc_sync_exit(v3);
  [(MTLResidencySetSPI *)v3->_baseObject commit];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    traceStream = v3->_traceStream;
    GTTraceContext_pushEncoderWithStream(v3->_traceContext, &v17);
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
    v13 = [(CaptureMTLResidencySet *)v3 traceStream];
    if (v13)
    {
      var0 = v13->var0;
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
  v2 = [(NSMutableSet *)self->_tempAllocations allObjects];
  v3 = [v2 copy];

  return v3;
}

- (void)removeAllAllocations
{
  ResidencySetTakeSnapshotInternal(self, 0);
  v3 = self;
  objc_sync_enter(v3);
  [(NSMutableSet *)v3->_tempAllocations removeAllObjects];
  objc_sync_exit(v3);

  [(MTLResidencySetSPI *)v3->_baseObject removeAllAllocations];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    traceStream = v3->_traceStream;
    GTTraceContext_pushEncoderWithStream(v3->_traceContext, &v14);
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
    v10 = [(CaptureMTLResidencySet *)v3 traceStream];
    if (v10)
    {
      var0 = v10->var0;
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

- (void)removeAllocations:(const void *)a3 count:(unint64_t)a4
{
  ResidencySetTakeSnapshotInternal(self, 0);
  v7 = self;
  objc_sync_enter(v7);
  if (a4)
  {
    v8 = a3;
    v9 = a4;
    do
    {
      [(NSMutableSet *)v7->_tempAllocations removeObject:*v8++];
      --v9;
    }

    while (v9);
  }

  objc_sync_exit(v7);

  baseObject = v7->_baseObject;
  v11 = 8 * a4;
  __chkstk_darwin(v12, v13);
  bzero(&v29 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  if (a4)
  {
    v14 = a3;
    v15 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = a4;
    do
    {
      *v15++ = [*v14++ baseObject];
      --v16;
    }

    while (v16);
  }

  [(MTLResidencySetSPI *)baseObject removeAllocations:&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    traceStream = v7->_traceStream;
    GTTraceContext_pushEncoderWithStream(v7->_traceContext, &v29);
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
    v23 = [(CaptureMTLResidencySet *)v7 traceStream];
    if (v23)
    {
      var0 = v23->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v23, v24);
    bzero(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
    v26 = StreamArray(&v29, (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, a4);
    *v20 = var0;
    *(v20 + 1) = a4;
    v20[16] = v26;
    *(v20 + 17) = 0;
    *(v20 + 5) = 0;
    s();
    *v27 = v28;
    *(v27 + 8) = BYTE8(v31);
    *(v30 + 15) |= 8u;
  }
}

- (void)removeAllocation:(id)a3
{
  v4 = a3;
  ResidencySetTakeSnapshotInternal(self, 0);
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableSet *)v5->_tempAllocations removeObject:v4];
  objc_sync_exit(v5);

  baseObject = v5->_baseObject;
  v7 = [v4 baseObject];
  [(MTLResidencySetSPI *)baseObject removeAllocation:v7];

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    traceStream = v5->_traceStream;
    GTTraceContext_pushEncoderWithStream(v5->_traceContext, &v20);
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
    v14 = [(CaptureMTLResidencySet *)v5 traceStream];
    if (v14)
    {
      var0 = v14->var0;
    }

    else
    {
      var0 = 0;
    }

    v16 = [v4 traceStream];
    if (v16)
    {
      v17 = *v16;
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

- (void)addAllocations:(const void *)a3 count:(unint64_t)a4
{
  ResidencySetTakeSnapshotInternal(self, 0);
  v7 = self;
  objc_sync_enter(v7);
  if (a4)
  {
    v8 = a3;
    v9 = a4;
    do
    {
      [(NSMutableSet *)v7->_tempAllocations addObject:*v8++];
      --v9;
    }

    while (v9);
  }

  objc_sync_exit(v7);

  baseObject = v7->_baseObject;
  v11 = 8 * a4;
  __chkstk_darwin(v12, v13);
  bzero(&v29 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  if (a4)
  {
    v14 = a3;
    v15 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = a4;
    do
    {
      *v15++ = [*v14++ baseObject];
      --v16;
    }

    while (v16);
  }

  [(MTLResidencySetSPI *)baseObject addAllocations:&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    traceStream = v7->_traceStream;
    GTTraceContext_pushEncoderWithStream(v7->_traceContext, &v29);
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
    v23 = [(CaptureMTLResidencySet *)v7 traceStream];
    if (v23)
    {
      var0 = v23->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v23, v24);
    bzero(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
    v26 = StreamArray(&v29, (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, a4);
    *v20 = var0;
    *(v20 + 1) = a4;
    v20[16] = v26;
    *(v20 + 17) = 0;
    *(v20 + 5) = 0;
    s();
    *v27 = v28;
    *(v27 + 8) = BYTE8(v31);
    *(v30 + 15) |= 8u;
  }
}

- (void)addAllocation:(id)a3
{
  v4 = a3;
  ResidencySetTakeSnapshotInternal(self, 0);
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableSet *)v5->_tempAllocations addObject:v4];
  objc_sync_exit(v5);

  baseObject = v5->_baseObject;
  v7 = [v4 baseObject];
  [(MTLResidencySetSPI *)baseObject addAllocation:v7];

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    traceStream = v5->_traceStream;
    GTTraceContext_pushEncoderWithStream(v5->_traceContext, &v20);
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
    v14 = [(CaptureMTLResidencySet *)v5 traceStream];
    if (v14)
    {
      var0 = v14->var0;
    }

    else
    {
      var0 = 0;
    }

    v16 = [v4 traceStream];
    if (v16)
    {
      v17 = *v16;
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

- (CaptureMTLResidencySet)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = CaptureMTLResidencySet;
  v9 = [(CaptureMTLResidencySet *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    objc_storeStrong(&v10->_captureDevice, a4);
    v11 = [v8 traceContext];
    v10->_traceContext = v11;
    v12 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v11, v12, v10);

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