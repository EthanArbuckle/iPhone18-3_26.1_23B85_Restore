@interface IOGPUMetalBuffer
- (BOOL)replaceBackingWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocator:(id)deallocator;
- (BOOL)replaceBackingWithRanges:(id)ranges readOnly:(BOOL)only;
- (IOGPUMetalBuffer)initWithDevice:(id)device addressRanges:(IOGPUAddressRange *)ranges addressRangeCount:(unint64_t)count length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0;
- (IOGPUMetalBuffer)initWithDevice:(id)device pointer:(void *)pointer length:(unint64_t)length alignment:(unsigned int)alignment options:(unint64_t)options sysMemSize:(unint64_t)size gpuAddress:(unint64_t)address gpuTag:(unint64_t)self0 placementSparsePageSize:(int64_t)self1 placementSparseResidencyBytes:(unint64_t)self2 args:(IOGPUNewResourceArgs *)self3 argsSize:(unsigned int)self4 deallocator:(id)aBlock;
- (IOGPUMetalBuffer)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length gpuTag:(unint64_t)tag;
- (IOGPUMetalBuffer)initWithPrimaryBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size gpuTag:(unint64_t)self0;
- (__CFArray)copyAnnotations;
- (__IOSurface)_aneIOSurface;
- (id)formattedDescription:(unint64_t)description;
- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
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

- (id)formattedDescription:(unint64_t)description
{
  v16[21] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  retainedLabel = [(IOGPUMetalResource *)self retainedLabel];
  v6 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = IOGPUMetalBuffer;
  v7 = [(IOGPUMetalBuffer *)&v15 description];
  v16[0] = v4;
  v16[1] = @"label =";
  v8 = @"<none>";
  if (retainedLabel)
  {
    v8 = retainedLabel;
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

- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 288) = 7085;
  result = [(IOGPUMetalBuffer *)self newTextureWithDescriptor:descriptor offset:offset bytesPerRow:row, image];
  *(StatusReg + 288) = 0;
  return result;
}

- (IOGPUMetalBuffer)initWithDevice:(id)device pointer:(void *)pointer length:(unint64_t)length alignment:(unsigned int)alignment options:(unint64_t)options sysMemSize:(unint64_t)size gpuAddress:(unint64_t)address gpuTag:(unint64_t)self0 placementSparsePageSize:(int64_t)self1 placementSparseResidencyBytes:(unint64_t)self2 args:(IOGPUNewResourceArgs *)self3 argsSize:(unsigned int)self4 deallocator:(id)aBlock
{
  args->var0.var16.var0.var3.var1 = 0;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var12 = 0u;
  *&args->var0.var0 = 0u;
  if (pointer && ((options & 0xF0) == 0x20 || (options & 0xF0) == 0x30))
  {
    MTLReportFailure();
  }

  if (size < length)
  {

    return 0;
  }

  deviceCopy = device;
  if ((options & 0xF) >= 2)
  {
    [IOGPUMetalBuffer initWithDevice:pointer:length:alignment:options:sysMemSize:gpuAddress:gpuTag:placementSparsePageSize:placementSparseResidencyBytes:args:argsSize:deallocator:];
  }

  if (pointer)
  {
    v23 = 0;
  }

  else
  {
    v23 = options & 0xF;
  }

  v24 = options >> 4;
  if ((v24 | 2) == 2)
  {
    if (pageSize)
    {
LABEL_13:
      size = bytes;
      if (v24 != 2)
      {
        [IOGPUMetalBuffer initWithDevice:pointer:length:alignment:options:sysMemSize:gpuAddress:gpuTag:placementSparsePageSize:placementSparseResidencyBytes:args:argsSize:deallocator:];
      }

      v25 = [deviceCopy sparseTileSizeInBytesForSparsePageSize:{pageSize, v30}];
      args->var0.var0 = 64;
      args->var0.var16.var0.var3.var0 = v25;
      v26 = (length + v25 - 1) & -v25;
      args->var0.var16.var0.var0 = v26;
      if (v26 < length)
      {
        [IOGPUMetalBuffer initWithDevice:pointer:length:alignment:options:sysMemSize:gpuAddress:gpuTag:placementSparsePageSize:placementSparseResidencyBytes:args:argsSize:deallocator:];
      }

      goto LABEL_19;
    }
  }

  else
  {
    v30 = options >> 4;
    MTLReportFailure();
    if (pageSize)
    {
      goto LABEL_13;
    }
  }

  args->var0.var0 = (pointer != 0) << 7;
  args->var0.var16.var0.var0 = pointer;
  args->var0.var16.var0.var1 = pointer;
LABEL_19:
  args->var0.var16.var0.var2 = size;
  args->var0.var1 = (v23 == 1) << 10;
  *&args->var0.var2 = 65537;
  args->var0.var4 = 1;
  *&args->var0.var6 = 16777473;
  args->var0.var14 = alignment;
  if (address)
  {
    args->var0.var12 = address;
    args->var0.var13 = length;
  }

  args->var0.var15 = HIDWORD(tag);
  if ((options & 0x10000) == 0)
  {
    args->var0.var10 = 64;
  }

  v22 = [(IOGPUMetalResource *)self initWithDevice:deviceCopy options:options args:args argsSize:argsSize, v30];
  if (v22)
  {
    v22->_length = length;
    if (aBlock)
    {
      v22->_pointer = pointer;
      v22->_deallocator = _Block_copy(aBlock);
    }

    v22->_placementSparsePageSize = pageSize;
    if (*__globalGPUCommPage)
    {
      [deviceCopy deviceRef];
      v27 = *&v22->super._anon_50[48];
      v28 = (v23 << 48) | ((v22->_placementSparsePageSize != 0) << 52) | (v24 << 32);
      [deviceCopy registryID];
      IOGPUDeviceTraceEvent();
    }
  }

  return v22;
}

- (IOGPUMetalBuffer)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length gpuTag:(unint64_t)tag
{
  if (!heap)
  {
    [IOGPUMetalBuffer initWithHeap:resource:offset:length:gpuTag:];
  }

  if (!resource)
  {
    [IOGPUMetalBuffer initWithHeap:resource:offset:length:gpuTag:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalBuffer initWithHeap:resource:offset:length:gpuTag:];
  }

  v13 = [(IOGPUMetalResource *)self initWithResource:resource];
  v14 = v13;
  if (v13)
  {
    v13->_length = length;
    *&v13->super._anon_50[136] = heap;
    *&v14->super._anon_50[144] = resource;
    *&v14->super._anon_50[152] = offset;
    *&v14->super._anon_50[160] = length;
    v14->super._anon_50[168] = 0;
    if (![heap type])
    {
      v14->super._anon_50[168] = 1;
    }

    *&v14->super._anon_50[80] += offset;
    *&v14->super._anon_50[24] = (*&v14->super._anon_50[24] + offset) | tag;
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

- (IOGPUMetalBuffer)initWithPrimaryBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size gpuTag:(unint64_t)self0
{
  self->_primaryBuffer = buffer;
  self->_primaryHeapIndex = index;
  self->_primaryBufferIndex = bufferIndex;
  self->_primaryBufferOffset = offset;
  self->_length = length;
  args->var0.var16.var0.var3.var1 = 0;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var12 = 0u;
  *&args->var0.var0 = 0u;
  v12 = buffer + 32;
  args->var0.var0 = *(*(buffer + 18) + 52) | 0x80;
  *&args->var0.var2 = 65537;
  args->var0.var4 = 1;
  *&args->var0.var6 = 16777473;
  args->var0.var16.var0.var0 = *(buffer + 20) + offset;
  args->var0.var16.var0.var1 = *(buffer + 20);
  args->var0.var16.var0.var2 = *(buffer + 43);
  args->var0.var16.var0.var3.var0 = *(buffer + 20);
  args->var0.var10 = 2048;
  args->var0.var15 = HIDWORD(tag);
  v13 = -[IOGPUMetalResource initWithDevice:options:args:argsSize:](self, "initWithDevice:options:args:argsSize:", [buffer device], *(buffer + 21), args, size);
  v14 = v13;
  if (v13)
  {
    p_res = &v13->super._res;
    v13->super._anon_50[128] = 0;
    if (args->var0.var16.var0.var0 != *&v13->super._anon_50[80])
    {
      [IOGPUMetalBuffer initWithPrimaryBuffer:heapIndex:bufferIndex:bufferOffset:length:args:argsSize:gpuTag:];
    }

    if (*&v13->super._anon_50[24] != ((*(v12 + 9) + offset) | tag))
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

- (IOGPUMetalBuffer)initWithDevice:(id)device addressRanges:(IOGPUAddressRange *)ranges addressRangeCount:(unint64_t)count length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0
{
  *&args->var0.var0 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  args->var0.var16.var0.var3.var1 = 0;
  *&args->var0.var12 = 0u;
  *&args->var0.var0 = 128;
  *&args->var0.var2 = 65537;
  args->var0.var4 = 1;
  *&args->var0.var6 = 16777473;
  args->var0.var16.var0.var0 = ranges;
  args->var0.var16.var0.var1 = count;
  args->var0.var10 |= 0x200000u;
  v17.receiver = self;
  v17.super_class = IOGPUMetalBuffer;
  v12 = [(IOGPUMetalResource *)&v17 initWithDevice:device options:options args:args argsSize:size];
  v13 = v12;
  if (v12)
  {
    v12->_length = length;
    if (*__globalGPUCommPage)
    {
      [device deviceRef];
      v14 = *&v13->super._anon_50[48];
      length = v13->_length;
      [device registryID];
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

  retainedLabel = [(IOGPUMetalResource *)self retainedLabel];
  if (retainedLabel)
  {
    v9 = retainedLabel;
    CFStringAppendFormat(v4, 0, @", %s", [retainedLabel UTF8String]);
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

- (BOOL)replaceBackingWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocator:(id)deallocator
{
  v8 = IOGPUResourceReplaceBackingWithBytes([(IOGPUMetalResource *)self resourceRef], copy, length);
  if (!v8)
  {
    deallocator = self->_deallocator;
    if (deallocator)
    {
      deallocator[2](deallocator, self->_pointer, [(IOGPUMetalBuffer *)self length]);
      _Block_release(self->_deallocator);
      self->_deallocator = 0;
    }

    if (deallocator)
    {
      self->_deallocator = _Block_copy(deallocator);
    }

    self->_pointer = copy;
    *&self->super._anon_50[80] = copy;
  }

  return v8 == 0;
}

- (BOOL)replaceBackingWithRanges:(id)ranges readOnly:(BOOL)only
{
  v8 = 0;
  v5 = IOGPUResourceReplaceBackingWithRanges(-[IOGPUMetalResource resourceRef](self, "resourceRef"), [ranges ranges], objc_msgSend(ranges, "count"), only, 1, &v8);
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