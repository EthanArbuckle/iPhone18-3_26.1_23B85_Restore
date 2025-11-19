@interface IOGPUMetalBuffer
- (BOOL)replaceBackingWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 deallocator:(id)a5;
- (BOOL)replaceBackingWithRanges:(id)a3 readOnly:(BOOL)a4;
- (IOGPUMetalBuffer)initWithDevice:(id)a3 addressRanges:(IOGPUAddressRange *)a4 addressRangeCount:(unint64_t)a5 length:(unint64_t)a6 options:(unint64_t)a7 gpuAddress:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10;
- (IOGPUMetalBuffer)initWithDevice:(id)a3 pointer:(void *)a4 length:(unint64_t)a5 alignment:(unsigned int)a6 options:(unint64_t)a7 sysMemSize:(unint64_t)a8 gpuAddress:(unint64_t)a9 gpuTag:(unint64_t)a10 placementSparsePageSize:(int64_t)a11 placementSparseResidencyBytes:(unint64_t)a12 args:(IOGPUNewResourceArgs *)a13 argsSize:(unsigned int)a14 deallocator:(id)aBlock;
- (IOGPUMetalBuffer)initWithHeap:(id)a3 resource:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6 gpuTag:(unint64_t)a7;
- (IOGPUMetalBuffer)initWithPrimaryBuffer:(id)a3 heapIndex:(signed __int16)a4 bufferIndex:(signed __int16)a5 bufferOffset:(unint64_t)a6 length:(unint64_t)a7 args:(IOGPUNewResourceArgs *)a8 argsSize:(unsigned int)a9 gpuTag:(unint64_t)a10;
- (__CFArray)copyAnnotations;
- (__IOSurface)_aneIOSurface;
- (id)formattedDescription:(unint64_t)a3;
- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6;
- (unint64_t)allocatedSize;
- (void)dealloc;
- (void)emitResourceInfoTraceEvent;
@end

@implementation IOGPUMetalBuffer

- (void)dealloc
{
  p_res = &self->super._res;
  v4 = *&self->super._anon_50[136];
  if (v4)
  {
    [(IOGPUMetalResource *)self makeAliasable];
    [*&p_res[3].var0 deallocHeapSubResource];
    v4 = *&p_res[3].var0;
  }

  primaryBuffer = self->_primaryBuffer;
  if (primaryBuffer)
  {
    [(__IOSurface *)p_res[1].info.iosurface deallocBufferSubData:primaryBuffer heapIndex:self->_primaryHeapIndex bufferIndex:self->_primaryBufferIndex bufferOffset:self->_primaryBufferOffset length:self->_length];
  }

  deallocator = self->_deallocator;
  if (deallocator)
  {
    deallocator[2](deallocator, self->_pointer, [(IOGPUMetalBuffer *)self length]);
    _Block_release(self->_deallocator);
    self->_deallocator = 0;
  }

  iosurface = self->_iosurface;
  if (iosurface)
  {
    CFRelease(iosurface);
  }

  aneIOSurface = self->_aneIOSurface;
  if (aneIOSurface)
  {
    CFRelease(aneIOSurface);
  }

  v9.receiver = self;
  v9.super_class = IOGPUMetalBuffer;
  [(IOGPUMetalResource *)&v9 dealloc];
}

- (id)formattedDescription:(unint64_t)a3
{
  v16[21] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = [(IOGPUMetalResource *)self retainedLabel];
  v6 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = IOGPUMetalBuffer;
  v7 = [(IOGPUMetalBuffer *)&v15 description];
  v16[0] = v4;
  v16[1] = @"label =";
  v8 = @"<none>";
  if (v5)
  {
    v8 = v5;
  }

  v16[2] = v8;
  v16[3] = v4;
  v16[4] = @"length =";
  v16[5] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_length];
  v16[6] = v4;
  v16[7] = @"cpuCacheMode =";
  v9 = *&self->super._anon_50[104];
  v16[8] = MTLCPUCacheModeString();
  v16[9] = v4;
  v16[10] = @"storageMode =";
  v10 = *&self->super._anon_50[96];
  v16[11] = MTLStorageModeString();
  v16[12] = v4;
  v16[13] = @"hazardTrackingMode =";
  [(IOGPUMetalResource *)self hazardTrackingMode];
  v16[14] = MTLHazardTrackingModeString();
  v16[15] = v4;
  v16[16] = @"resourceOptions =";
  [(IOGPUMetalResource *)self resourceOptions];
  v16[17] = MTLResourceOptionsString();
  v16[18] = v4;
  v16[19] = @"purgeableState =";
  v11 = *&self->super._anon_50[120];
  v16[20] = MTLPurgeableStateString();
  v12 = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 21), "componentsJoinedByString:", @" "];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (unint64_t)allocatedSize
{
  if (self->_primaryBuffer)
  {
    return self->_length;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = IOGPUMetalBuffer;
  return [(IOGPUMetalResource *)&v5 allocatedSize];
}

- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 288) = 7085;
  result = [(IOGPUMetalBuffer *)self newTextureWithDescriptor:a3 offset:a4 bytesPerRow:a5, a6];
  *(StatusReg + 288) = 0;
  return result;
}

- (IOGPUMetalBuffer)initWithDevice:(id)a3 pointer:(void *)a4 length:(unint64_t)a5 alignment:(unsigned int)a6 options:(unint64_t)a7 sysMemSize:(unint64_t)a8 gpuAddress:(unint64_t)a9 gpuTag:(unint64_t)a10 placementSparsePageSize:(int64_t)a11 placementSparseResidencyBytes:(unint64_t)a12 args:(IOGPUNewResourceArgs *)a13 argsSize:(unsigned int)a14 deallocator:(id)aBlock
{
  a13->var0.var16.var0.var3.var1 = 0;
  *&a13->var0.var14 = 0u;
  *&a13->var0.var16.var4.var1 = 0u;
  *&a13->var0.var6 = 0u;
  *&a13->var0.var12 = 0u;
  *&a13->var0.var0 = 0u;
  if (a4 && ((a7 & 0xF0) == 0x20 || (a7 & 0xF0) == 0x30))
  {
    MTLReportFailure();
  }

  if (a8 < a5)
  {

    return 0;
  }

  v31 = a3;
  if ((a7 & 0xF) >= 2)
  {
    [IOGPUMetalBuffer initWithDevice:pointer:length:alignment:options:sysMemSize:gpuAddress:gpuTag:placementSparsePageSize:placementSparseResidencyBytes:args:argsSize:deallocator:];
  }

  if (a4)
  {
    v23 = 0;
  }

  else
  {
    v23 = a7 & 0xF;
  }

  v24 = a7 >> 4;
  if ((v24 | 2) == 2)
  {
    if (a11)
    {
LABEL_13:
      a8 = a12;
      if (v24 != 2)
      {
        [IOGPUMetalBuffer initWithDevice:pointer:length:alignment:options:sysMemSize:gpuAddress:gpuTag:placementSparsePageSize:placementSparseResidencyBytes:args:argsSize:deallocator:];
      }

      v25 = [v31 sparseTileSizeInBytesForSparsePageSize:{a11, v30}];
      a13->var0.var0 = 64;
      a13->var0.var16.var0.var3.var0 = v25;
      v26 = (a5 + v25 - 1) & -v25;
      a13->var0.var16.var0.var0 = v26;
      if (v26 < a5)
      {
        [IOGPUMetalBuffer initWithDevice:pointer:length:alignment:options:sysMemSize:gpuAddress:gpuTag:placementSparsePageSize:placementSparseResidencyBytes:args:argsSize:deallocator:];
      }

      goto LABEL_19;
    }
  }

  else
  {
    v30 = a7 >> 4;
    MTLReportFailure();
    if (a11)
    {
      goto LABEL_13;
    }
  }

  a13->var0.var0 = (a4 != 0) << 7;
  a13->var0.var16.var0.var0 = a4;
  a13->var0.var16.var0.var1 = a4;
LABEL_19:
  a13->var0.var16.var0.var2 = a8;
  a13->var0.var1 = (v23 == 1) << 10;
  *&a13->var0.var2 = 65537;
  a13->var0.var4 = 1;
  *&a13->var0.var6 = 16777473;
  a13->var0.var14 = a6;
  if (a9)
  {
    a13->var0.var12 = a9;
    a13->var0.var13 = a5;
  }

  a13->var0.var15 = HIDWORD(a10);
  if ((a7 & 0x10000) == 0)
  {
    a13->var0.var10 = 64;
  }

  v22 = [(IOGPUMetalResource *)self initWithDevice:v31 options:a7 args:a13 argsSize:a14, v30];
  if (v22)
  {
    v22->_length = a5;
    if (aBlock)
    {
      v22->_pointer = a4;
      v22->_deallocator = _Block_copy(aBlock);
    }

    v22->_placementSparsePageSize = a11;
    if (*__globalGPUCommPage)
    {
      [v31 deviceRef];
      v27 = *&v22->super._anon_50[48];
      v28 = (v23 << 48) | ((v22->_placementSparsePageSize != 0) << 52) | (v24 << 32);
      [v31 registryID];
      IOGPUDeviceTraceEvent();
    }
  }

  return v22;
}

- (IOGPUMetalBuffer)initWithHeap:(id)a3 resource:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6 gpuTag:(unint64_t)a7
{
  if (!a3)
  {
    [IOGPUMetalBuffer initWithHeap:resource:offset:length:gpuTag:];
  }

  if (!a4)
  {
    [IOGPUMetalBuffer initWithHeap:resource:offset:length:gpuTag:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalBuffer initWithHeap:resource:offset:length:gpuTag:];
  }

  v13 = [(IOGPUMetalResource *)self initWithResource:a4];
  v14 = v13;
  if (v13)
  {
    v13->_length = a6;
    *&v13->super._anon_50[136] = a3;
    *&v14->super._anon_50[144] = a4;
    *&v14->super._anon_50[152] = a5;
    *&v14->super._anon_50[160] = a6;
    v14->super._anon_50[168] = 0;
    if (![a3 type])
    {
      v14->super._anon_50[168] = 1;
    }

    *&v14->super._anon_50[80] += a5;
    *&v14->super._anon_50[24] = (*&v14->super._anon_50[24] + a5) | a7;
    if (*__globalGPUCommPage)
    {
      [*&v14->super._anon_50[32] deviceRef];
      v15 = *&v14->super._anon_50[48];
      v16 = vshlq_u64(*&v14->super._anon_50[96], xmmword_1CA0CCC70);
      [*&v14->super._anon_50[32] registryID];
      v17 = *(*(*&v14->super._anon_50[136] + 56) + 128);
      IOGPUDeviceTraceEvent();
    }
  }

  return v14;
}

- (IOGPUMetalBuffer)initWithPrimaryBuffer:(id)a3 heapIndex:(signed __int16)a4 bufferIndex:(signed __int16)a5 bufferOffset:(unint64_t)a6 length:(unint64_t)a7 args:(IOGPUNewResourceArgs *)a8 argsSize:(unsigned int)a9 gpuTag:(unint64_t)a10
{
  self->_primaryBuffer = a3;
  self->_primaryHeapIndex = a4;
  self->_primaryBufferIndex = a5;
  self->_primaryBufferOffset = a6;
  self->_length = a7;
  a8->var0.var16.var0.var3.var1 = 0;
  *&a8->var0.var14 = 0u;
  *&a8->var0.var16.var4.var1 = 0u;
  *&a8->var0.var6 = 0u;
  *&a8->var0.var12 = 0u;
  *&a8->var0.var0 = 0u;
  v12 = a3 + 32;
  a8->var0.var0 = *(*(a3 + 18) + 52) | 0x80;
  *&a8->var0.var2 = 65537;
  a8->var0.var4 = 1;
  *&a8->var0.var6 = 16777473;
  a8->var0.var16.var0.var0 = *(a3 + 20) + a6;
  a8->var0.var16.var0.var1 = *(a3 + 20);
  a8->var0.var16.var0.var2 = *(a3 + 43);
  a8->var0.var16.var0.var3.var0 = *(a3 + 20);
  a8->var0.var10 = 2048;
  a8->var0.var15 = HIDWORD(a10);
  v13 = -[IOGPUMetalResource initWithDevice:options:args:argsSize:](self, "initWithDevice:options:args:argsSize:", [a3 device], *(a3 + 21), a8, a9);
  v14 = v13;
  if (v13)
  {
    p_res = &v13->super._res;
    v13->super._anon_50[128] = 0;
    if (a8->var0.var16.var0.var0 != *&v13->super._anon_50[80])
    {
      [IOGPUMetalBuffer initWithPrimaryBuffer:heapIndex:bufferIndex:bufferOffset:length:args:argsSize:gpuTag:];
    }

    if (*&v13->super._anon_50[24] != ((*(v12 + 9) + a6) | a10))
    {
      [IOGPUMetalBuffer initWithPrimaryBuffer:heapIndex:bufferIndex:bufferOffset:length:args:argsSize:gpuTag:];
    }

    if (*__globalGPUCommPage)
    {
      [*&v13->super._anon_50[32] deviceRef];
      v16 = p_res[2].vendor.reserved[0];
      v17 = vshlq_u64(*p_res[3].vendor.reserved, xmmword_1CA0CCC70);
      [(__IOSurface *)p_res[1].info.iosurface registryID];
      v18 = *(v12 + 12);
      IOGPUDeviceTraceEvent();
    }
  }

  return v14;
}

- (IOGPUMetalBuffer)initWithDevice:(id)a3 addressRanges:(IOGPUAddressRange *)a4 addressRangeCount:(unint64_t)a5 length:(unint64_t)a6 options:(unint64_t)a7 gpuAddress:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10
{
  *&a9->var0.var0 = 0u;
  *&a9->var0.var6 = 0u;
  *&a9->var0.var14 = 0u;
  *&a9->var0.var16.var4.var1 = 0u;
  a9->var0.var16.var0.var3.var1 = 0;
  *&a9->var0.var12 = 0u;
  *&a9->var0.var0 = 128;
  *&a9->var0.var2 = 65537;
  a9->var0.var4 = 1;
  *&a9->var0.var6 = 16777473;
  a9->var0.var16.var0.var0 = a4;
  a9->var0.var16.var0.var1 = a5;
  a9->var0.var10 |= 0x200000u;
  v17.receiver = self;
  v17.super_class = IOGPUMetalBuffer;
  v12 = [(IOGPUMetalResource *)&v17 initWithDevice:a3 options:a7 args:a9 argsSize:a10];
  v13 = v12;
  if (v12)
  {
    v12->_length = a6;
    if (*__globalGPUCommPage)
    {
      [a3 deviceRef];
      v14 = *&v13->super._anon_50[48];
      length = v13->_length;
      [a3 registryID];
      IOGPUDeviceTraceEvent();
    }
  }

  return v13;
}

- (__CFArray)copyAnnotations
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(IOGPUMetalResource *)self annotateResource:Mutable];
  CFDictionaryAddValue(Mutable, @"Type", @"Buffer");
  v4 = CFStringCreateMutable(0, 512);
  CFStringAppendFormat(v4, 0, @"%s", "IOGPUMetalBuffer ");
  v5 = objc_autoreleasePoolPush();
  v6 = *&self->super._anon_50[88];
  v7 = [objc_msgSend(MTLResourceOptionsString() stringByReplacingOccurrencesOfString:@"MTLResource" withString:{&stru_1F49C0120), "stringByReplacingOccurrencesOfString:withString:", @"Mode", &stru_1F49C0120}];
  CFStringAppend(v4, v7);
  CFStringAppendFormat(v4, 0, @", handle (%012llx)", [(IOGPUMetalResource *)self gpuAddress]);
  objc_autoreleasePoolPop(v5);
  CFStringAppendFormat(v4, 0, @", size %lluB", self->_length);
  if (*&self->super._anon_50[136])
  {
    CFStringAppendFormat(v4, 0, @", heap (+%llx)", *&self->super._anon_50[152]);
  }

  if (self->_primaryBuffer)
  {
    CFStringAppendFormat(v4, 0, @", suballoc (+%llx)", self->_primaryBufferOffset);
  }

  v8 = [(IOGPUMetalResource *)self retainedLabel];
  if (v8)
  {
    v9 = v8;
    CFStringAppendFormat(v4, 0, @", %s", [v8 UTF8String]);
  }

  CFDictionaryAddValue(Mutable, @"Description", v4);
  CFRelease(v4);
  v10 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v11 = *&self->super._anon_50[8];
  v12 = *&self->super._anon_50[16];
  v13 = 1;
  do
  {
    v14 = v13;
    if (v11)
    {
      v15 = [(IOGPUMetalResource *)self copyAnnotationDictionary:v11 obj_key_name:@"OpenGLObjects" obj_dict:Mutable];
      CFArrayAppendValue(v10, v15);
      CFRelease(v15);
    }

    v13 = 0;
    v11 = v12;
  }

  while ((v14 & 1) != 0);
  CFRelease(Mutable);
  return v10;
}

- (__IOSurface)_aneIOSurface
{
  p_res = &self->super._res;
  os_unfair_lock_lock(&self->super._anon_50[172]);
  aneIOSurface = self->_aneIOSurface;
  if (!aneIOSurface)
  {
    if (self->_primaryBuffer)
    {
      p_primaryBufferOffset = &self->_primaryBufferOffset;
    }

    else
    {
      p_primaryBufferOffset = &p_res[4].vendor.reserved[1];
    }

    aneIOSurface = IOGPUResourceCreateIOSurface([(IOGPUMetalResource *)self resourceRef], *p_primaryBufferOffset, self->_length);
    self->_aneIOSurface = aneIOSurface;
  }

  os_unfair_lock_unlock(&p_res[4].vendor.reserved[3] + 1);
  return aneIOSurface;
}

- (BOOL)replaceBackingWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 deallocator:(id)a5
{
  v8 = IOGPUResourceReplaceBackingWithBytes([(IOGPUMetalResource *)self resourceRef], a3, a4);
  if (!v8)
  {
    deallocator = self->_deallocator;
    if (deallocator)
    {
      deallocator[2](deallocator, self->_pointer, [(IOGPUMetalBuffer *)self length]);
      _Block_release(self->_deallocator);
      self->_deallocator = 0;
    }

    if (a5)
    {
      self->_deallocator = _Block_copy(a5);
    }

    self->_pointer = a3;
    *&self->super._anon_50[80] = a3;
  }

  return v8 == 0;
}

- (BOOL)replaceBackingWithRanges:(id)a3 readOnly:(BOOL)a4
{
  v8 = 0;
  v5 = IOGPUResourceReplaceBackingWithRanges(-[IOGPUMetalResource resourceRef](self, "resourceRef"), [a3 ranges], objc_msgSend(a3, "count"), a4, 1, &v8);
  if (!v5)
  {
    deallocator = self->_deallocator;
    if (deallocator)
    {
      deallocator[2](deallocator, self->_pointer, [(IOGPUMetalBuffer *)self length]);
      _Block_release(self->_deallocator);
      self->_deallocator = 0;
    }

    self->_pointer = 0;
    *&self->super._anon_50[80] = v8;
  }

  return v5 == 0;
}

- (void)emitResourceInfoTraceEvent
{
  if (*&self->super._anon_50[32])
  {
    if (!self->_primaryBuffer)
    {
      v2 = *&self->super._anon_50[136];
      if (v2)
      {
        v3 = *(v2 + 56);
      }
    }

    if (*__globalGPUCommPage)
    {
      v4 = *&self->super._anon_50[48];
      v5 = *&self->super._res.var0;
      IOGPUDeviceTraceEvent();
    }
  }
}

@end