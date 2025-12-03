@interface IOGPUMetalTexture
+ (void)initNewTextureDataWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args;
- (BOOL)isAliasable;
- (BOOL)isSparse;
- (IOGPUMetalBuffer)buffer;
- (IOGPUMetalResource)rootResource;
- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0;
- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0 isStrideTexture:(BOOL)self1;
- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unsigned int)plane field:(unsigned int)field args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size;
- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor placementSparseBytes:(unint64_t)bytes placementSparsePageSize:(int64_t)size placementSparseMetaDataBytes:(unint64_t)dataBytes placementSparseResidencyBytes:(unint64_t)residencyBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0;
- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemPointer:(void *)pointer sysMemSize:(unint64_t)size sysMemLength:(unint64_t)length sysMemRowBytes:(unint64_t)bytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0 deallocator:(id)aBlock;
- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0;
- (IOGPUMetalTexture)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length device:(id)device descriptor:(id)descriptor;
- (IOGPUMetalTexture)initWithPrimaryBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length descriptor:(id)descriptor sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)self0 vidMemRowBytes:(unint64_t)self1 args:(IOGPUNewResourceArgs *)self2 argsSize:(unsigned int)self3;
- (IOGPUMetalTexture)initWithTextureInternal:(id)internal pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle compressedView:(BOOL)view;
- (IOGPUMetalTexture)parentTexture;
- (__CFArray)copyAnnotations;
- (__IOSurface)iosurface;
- (id)formattedDescription:(unint64_t)description;
- (id)newSharedTextureHandle;
- (unint64_t)allocatedSize;
- (unint64_t)bufferBytesPerRow;
- (unint64_t)bufferOffset;
- (unint64_t)hazardTrackingMode;
- (void)_setLabel:(id)label;
- (void)copyFromPixels:(const void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes toSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size;
- (void)copyFromSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size toPixels:(void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes;
- (void)dealloc;
- (void)emitResourceInfoTraceEvent;
- (void)makeAliasable;
- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row;
@end

@implementation IOGPUMetalTexture

- (unint64_t)hazardTrackingMode
{
  v4 = (*&self->super._anon_50[88] >> 8) & 3;
  if (v4)
  {
    return v4;
  }

  buffer = self->_buffer;
  if (!buffer)
  {
    buffer = self->_parentTexture;
    if (!buffer)
    {
      buffer = [(IOGPUMetalResource *)self heap];
      if (!buffer)
      {
        return 2;
      }
    }
  }

  return [(MTLHeap *)buffer hazardTrackingMode];
}

- (void)dealloc
{
  deallocator = self->_deallocator;
  if (deallocator)
  {
    deallocator[2](deallocator, self->_pointer, self->_length);
    _Block_release(self->_deallocator);
    self->_deallocator = 0;
  }

  if (*&self->super._anon_50[136])
  {
    if ((*&self->super._anon_50[88] & 0xF0) != 0x30)
    {
      [(IOGPUMetalTexture *)self makeAliasable];
      if (!self->_buffer && !self->_parentTexture)
      {
        [*&self->super._anon_50[136] deallocHeapSubResource];
      }
    }
  }

  if (self->_rootResourceIsSuballocatedBuffer)
  {
    [*&self->super._anon_50[32] deallocBufferSubData:self->_primaryBuffer heapIndex:self->_primaryHeapIndex bufferIndex:self->_primaryBufferIndex bufferOffset:self->_primaryBufferOffset length:self->_length];
  }

  iosurface = self->_iosurface;
  if (iosurface)
  {
    CFRelease(iosurface);
  }

  v5.receiver = self;
  v5.super_class = IOGPUMetalTexture;
  [(IOGPUMetalResource *)&v5 dealloc];
}

- (IOGPUMetalBuffer)buffer
{
  if (!self->_buffer)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture buffer];
  }

  return self->_buffer;
}

- (IOGPUMetalTexture)parentTexture
{
  if (!self->_parentTexture)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture parentTexture];
  }

  return self->_parentTexture;
}

- (unint64_t)bufferOffset
{
  if (self->_buffer)
  {
    return self->_bufferOffset;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)bufferBytesPerRow
{
  if (self->_buffer)
  {
    return self->_bufferBytesPerRow;
  }

  else
  {
    return 0;
  }
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
  v5.super_class = IOGPUMetalTexture;
  return [(IOGPUMetalResource *)&v5 allocatedSize];
}

- (__IOSurface)iosurface
{
  result = self->_iosurface;
  if (!result || self->_shareable)
  {
    return 0;
  }

  return result;
}

- (void)makeAliasable
{
  if (!self->_buffer && !self->_parentTexture)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = IOGPUMetalTexture;
    [(IOGPUMetalResource *)&v4 makeAliasable];
  }
}

- (id)formattedDescription:(unint64_t)description
{
  v26[84] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  retainedLabel = [(IOGPUMetalResource *)self retainedLabel];
  v7 = MEMORY[0x1E696AEC0];
  v25.receiver = self;
  v25.super_class = IOGPUMetalTexture;
  v8 = [(IOGPUMetalTexture *)&v25 description];
  v26[0] = v5;
  v26[1] = @"label =";
  if (retainedLabel)
  {
    v9 = retainedLabel;
  }

  else
  {
    v9 = @"<none>";
  }

  v26[2] = v9;
  v26[3] = v5;
  v26[4] = @"textureType =";
  textureType = self->_textureType;
  v26[5] = MTLTextureTypeString();
  v26[6] = v5;
  v26[7] = @"pixelFormat =";
  pixelFormat = self->_pixelFormat;
  v26[8] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName()];
  v26[9] = v5;
  v26[10] = @"width =";
  v26[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_width];
  v26[12] = v5;
  v26[13] = @"height =";
  v26[14] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_height];
  v26[15] = v5;
  v26[16] = @"depth =";
  v26[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_depth];
  v26[18] = v5;
  v26[19] = @"arrayLength =";
  v26[20] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_arrayLength];
  v26[21] = v5;
  v26[22] = @"mipmapLevelCount =";
  v26[23] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mipmapLevelCount];
  v26[24] = v5;
  v26[25] = @"sampleCount =";
  v26[26] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sampleCount];
  v26[27] = v5;
  v26[28] = @"cpuCacheMode =";
  v12 = *&self->super._anon_50[104];
  v26[29] = MTLCPUCacheModeString();
  v26[30] = v5;
  v26[31] = @"storageMode =";
  v13 = *&self->super._anon_50[96];
  v26[32] = MTLStorageModeString();
  v26[33] = v5;
  v26[34] = @"hazardTrackingMode =";
  [(IOGPUMetalTexture *)self hazardTrackingMode];
  v26[35] = MTLHazardTrackingModeString();
  v26[36] = v5;
  v26[37] = @"resourceOptions =";
  [(IOGPUMetalResource *)self resourceOptions];
  v26[38] = MTLResourceOptionsString();
  v26[39] = v5;
  v26[40] = @"usage =";
  usage = self->_usage;
  v26[41] = MTLTextureUsageString();
  v26[42] = v5;
  v26[43] = @"shareable =";
  v26[44] = [MEMORY[0x1E696AD98] numberWithBool:self->_shareable];
  v26[45] = v5;
  v26[46] = @"framebufferOnly =";
  v26[47] = [MEMORY[0x1E696AD98] numberWithBool:self->_framebufferOnly];
  v26[48] = v5;
  v26[49] = @"purgeableState =";
  v15 = *&self->super._anon_50[120];
  v26[50] = MTLPurgeableStateString();
  v26[51] = v5;
  v26[52] = @"swizzle =";
  swizzle = self->_swizzle;
  v26[53] = MTLTextureSwizzleString();
  v26[54] = v5;
  v26[55] = @"isCompressed =";
  v26[56] = [MEMORY[0x1E696AD98] numberWithBool:self->_isCompressed];
  v26[57] = v5;
  v26[58] = @"parentTexture =";
  parentTexture = self->_parentTexture;
  if (parentTexture)
  {
    v18 = [(IOGPUMetalTexture *)parentTexture formattedDescription:description + 4];
  }

  else
  {
    v18 = @"<null>";
  }

  v26[59] = v18;
  v26[60] = v5;
  v26[61] = @"parentRelativeLevel =";
  v26[62] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_parentRelativeLevel];
  v26[63] = v5;
  v26[64] = @"parentRelativeSlice =";
  v26[65] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_parentRelativeSlice];
  v26[66] = v5;
  v26[67] = @"buffer =";
  buffer = [(IOGPUMetalTexture *)self buffer];
  if (!buffer)
  {
    buffer = [MEMORY[0x1E695DFB0] null];
  }

  v26[68] = buffer;
  v26[69] = v5;
  v26[70] = @"bufferOffset =";
  v26[71] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IOGPUMetalTexture bufferOffset](self, "bufferOffset")}];
  v26[72] = v5;
  v26[73] = @"bufferBytesPerRow =";
  v26[74] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IOGPUMetalTexture bufferBytesPerRow](self, "bufferBytesPerRow")}];
  v26[75] = v5;
  v26[76] = @"iosurface =";
  v26[77] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self->_iosurface];
  v26[78] = v5;
  v26[79] = @"iosurfacePlane =";
  v26[80] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_iosurfacePlane];
  v26[81] = v5;
  allowGPUOptimizedContents = self->_allowGPUOptimizedContents;
  v26[82] = @"allowGPUOptimizedContents =";
  if (allowGPUOptimizedContents)
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v26[83] = v21;
  v22 = [v7 stringWithFormat:@"%@%@", v8, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v26, 84), "componentsJoinedByString:", @" "];

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)_setLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = IOGPUMetalTexture;
  [(IOGPUMetalResource *)&v5 _setLabel:?];
  if (self->_shareable)
  {
    IOSurfaceSetValue(self->_iosurface, *MEMORY[0x1E696CF98], label);
  }
}

- (IOGPUMetalResource)rootResource
{
  parentTexture = self->_parentTexture;
  if (!parentTexture)
  {
    return &self->_buffer->super;
  }

  return &parentTexture->super;
}

- (BOOL)isAliasable
{
  buffer = self->_buffer;
  if (buffer)
  {
    return [buffer isAliasable];
  }

  buffer = self->_parentTexture;
  if (buffer)
  {
    return [buffer isAliasable];
  }

  else
  {
    return (self->super._anon_50[168] & 1) == 0;
  }
}

- (id)newSharedTextureHandle
{
  if (!self->_shareable)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x1E6974180]);
  iosurface = self->_iosurface;
  label = [(IOGPUMetalResource *)self label];

  return [v4 initWithIOSurface:iosurface label:label];
}

+ (void)initNewTextureDataWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args
{
  args->var0.var16.var0.var3.var1 = 0;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var12 = 0u;
  *&args->var0.var0 = 0u;
  descriptorPrivate = [descriptor descriptorPrivate];
  if (*(descriptorPrivate + 72))
  {
    +[IOGPUMetalTexture initNewTextureDataWithDevice:descriptor:sysMemSize:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:];
  }

  v11 = (*(descriptorPrivate + 112) & 0xFLL) == 1;
  args->var0.var0 = 0;
  args->var0.var1 = v11 << 10;
  v12 = *(descriptorPrivate + 24);
  args->var0.var2 = *(descriptorPrivate + 16);
  v13 = *descriptorPrivate;
  args->var0.var3 = v12;
  args->var0.var11 = *(descriptorPrivate + 144);
  if (v13 == 6)
  {
    args->var0.var4 = 6 * *(descriptorPrivate + 56);
  }

  else
  {
    if (v13 == 3)
    {
      v14 = *(descriptorPrivate + 56);
    }

    else
    {
      if (v13 == 1)
      {
        args->var0.var3 = *(descriptorPrivate + 56);
        goto LABEL_11;
      }

      v14 = *(descriptorPrivate + 32);
    }

    args->var0.var4 = v14;
  }

LABEL_11:
  if ((v13 - 5) >= 2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 6;
  }

  args->var0.var6 = v15;
  args->var0.var7 = *(descriptorPrivate + 40);
  args->var0.var9 = 1;
  v16 = *(descriptorPrivate + 8);
  MTLPixelFormatGetInfoForDevice();
  args->var0.var9 = 0;
  if (*(descriptorPrivate + 64))
  {
    v17 = 64;
  }

  else
  {
    v17 = 0;
  }

  args->var0.var10 = v17;
  *&args->var0.var16.var0.var0 = 0uLL;
  args->var0.var16.var0.var2 = size;
}

- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0
{
  descriptorPrivate = [descriptor descriptorPrivate];
  v25 = *descriptorPrivate;
  [IOGPUMetalTexture initNewTextureDataWithDevice:device descriptor:descriptor sysMemSize:size sysMemRowBytes:bytes vidMemSize:memSize vidMemRowBytes:rowBytes args:args];
  v18 = [(IOGPUMetalResource *)self initWithDevice:device options:*(descriptorPrivate + 112) args:args argsSize:argsSize];
  v19 = v18;
  if (v18)
  {
    v18->_textureType = *descriptorPrivate;
    v20 = 6;
    v18->_width = *(descriptorPrivate + 16);
    if (v25 - 5 >= 2)
    {
      v20 = 1;
    }

    v18->_height = *(descriptorPrivate + 24);
    v18->_depth = *(descriptorPrivate + 32);
    v18->_mipmapLevelCount = *(descriptorPrivate + 40);
    v18->_sampleCount = *(descriptorPrivate + 48);
    v18->_arrayLength = *(descriptorPrivate + 56);
    v18->_numFaces = v20;
    v18->_pixelFormat = *(descriptorPrivate + 8);
    v18->_usage = *(descriptorPrivate + 192);
    if (*(descriptorPrivate + 72))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemSize:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:];
    }

    v18->_rotation = 0;
    v18->_swizzle = *(descriptorPrivate + 84);
    v18->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v18->_isCompressed = 0;
    v18->_shareable = 0;
    if (*(descriptorPrivate + 80))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemSize:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:];
    }

    v18->_framebufferOnly = 0;
    v18->_isDrawable = *(descriptorPrivate + 81);
    v18->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    v18->_placementSparsePageSize = *(descriptorPrivate + 184);
    if (*__globalGPUCommPage)
    {
      [device deviceRef];
      v21 = *&v19->super._anon_50[48];
      v22 = v19->_height | (v19->_width << 32);
      v23 = ((v19->_placementSparsePageSize != 0) << 52) | ((v19->_textureType & 0xF) << 48) | (v19->_pixelFormat << 32);
      [device registryID];
      IOGPUDeviceTraceEvent();
    }
  }

  return v19;
}

- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemPointer:(void *)pointer sysMemSize:(unint64_t)size sysMemLength:(unint64_t)length sysMemRowBytes:(unint64_t)bytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0 deallocator:(id)aBlock
{
  descriptorPrivate = [descriptor descriptorPrivate];
  v18 = *(descriptorPrivate + 112);
  v28 = *descriptorPrivate;
  [IOGPUMetalTexture initNewTextureDataWithDevice:device descriptor:descriptor sysMemSize:size sysMemRowBytes:bytes vidMemSize:0 vidMemRowBytes:0 args:args];
  args->var0.var0 = 128;
  args->var0.var16.var0.var0 = pointer;
  args->var0.var16.var0.var1 = pointer;
  deviceCopy = device;
  v19 = [(IOGPUMetalResource *)self initWithDevice:device options:v18 args:args argsSize:argsSize];
  v20 = v19;
  if (v19)
  {
    v19->_textureType = *descriptorPrivate;
    v21 = 6;
    v19->_width = *(descriptorPrivate + 16);
    if (v28 - 5 >= 2)
    {
      v21 = 1;
    }

    v19->_height = *(descriptorPrivate + 24);
    v19->_depth = *(descriptorPrivate + 32);
    v19->_mipmapLevelCount = *(descriptorPrivate + 40);
    v19->_sampleCount = *(descriptorPrivate + 48);
    v19->_arrayLength = *(descriptorPrivate + 56);
    v19->_numFaces = v21;
    v19->_pixelFormat = *(descriptorPrivate + 8);
    v19->_usage = *(descriptorPrivate + 192);
    if (*(descriptorPrivate + 72))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemPointer:sysMemSize:sysMemLength:sysMemRowBytes:args:argsSize:deallocator:];
    }

    v19->_rotation = 0;
    v19->_swizzle = *(descriptorPrivate + 84);
    v19->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v19->_shareable = 0;
    if (*(descriptorPrivate + 80))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemPointer:sysMemSize:sysMemLength:sysMemRowBytes:args:argsSize:deallocator:];
    }

    v19->_framebufferOnly = 0;
    v19->_isDrawable = *(descriptorPrivate + 81);
    if (aBlock)
    {
      v19->_length = length;
      v19->_pointer = pointer;
      v19->_deallocator = _Block_copy(aBlock);
    }

    v20->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    if (*(descriptorPrivate + 184))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemPointer:sysMemSize:sysMemLength:sysMemRowBytes:args:argsSize:deallocator:];
    }

    if (*__globalGPUCommPage)
    {
      [device deviceRef];
      v22 = *&v20->super._anon_50[48];
      v23 = v20->_height | (v20->_width << 32);
      v24 = ((v20->_textureType & 0xF) << 48) | (v20->_pixelFormat << 32);
      [deviceCopy registryID];
      IOGPUDeviceTraceEvent();
    }
  }

  return v20;
}

- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unsigned int)plane field:(unsigned int)field args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size
{
  args->var0.var16.var0.var3.var1 = 0;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var12 = 0u;
  *&args->var0.var0 = 0u;
  descriptorPrivate = [descriptor descriptorPrivate];
  v14 = descriptorPrivate;
  if (*(descriptorPrivate + 72) >= 5uLL)
  {
    v38 = *(descriptorPrivate + 72);
    MTLReportFailure();
  }

  v15 = IOSurfaceCopyValue(iosurface, *MEMORY[0x1E696CEF8]);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69743D0]] != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v14 + 8);
  MTLPixelFormatGetInfoForDevice();
  v19 = *(v14 + 72);
  deviceCopy = device;
  if (v19 <= 4 && ((1 << v19) & 0x1A) != 0)
  {
    v20 = (v14 + 16);
    v21 = (v14 + 24);
    v22 = (v14 + 24);
    v23 = (v14 + 16);
  }

  else
  {
    v21 = (v14 + 16);
    v22 = (v14 + 24);
    v20 = (v14 + 16);
    v23 = (v14 + 24);
  }

  v24 = *v21;
  v25 = *v23;
  if (!iosurface)
  {
    [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
  }

  if (IOSurfaceGetPlaneCount(iosurface) == 0 && !v17)
  {
    IOSurfaceGetBaseAddress(iosurface);
    IOSurfaceGetBytesPerRow(iosurface);
    _mtlValidateStrideTextureParameters();
    if (plane)
    {
      [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
    }

    [descriptor pixelFormat];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    IOSurfaceGetBytesPerRow(iosurface);
    IOSurfaceGetAllocSize(iosurface);
    IOSurfaceGetBytesPerRow(iosurface);
    *(v14 + 56);
    IOSurfaceGetHeight(iosurface);
    IOSurfaceGetElementHeight(iosurface);
    if (!IOSurfaceAllowsPixelSizeCasting(iosurface) && IOSurfaceGetBytesPerElement(iosurface))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
    }
  }

  v26 = *v14;
  if ((*v14 - 7) < 0xFFFFFFFFFFFFFFFELL)
  {
    v27 = 1;
  }

  else
  {
    v27 = 6;
  }

  v28 = (*v14 - 7) < 0xFFFFFFFFFFFFFFFELL || v17;
  if ((v28 & 1) == 0)
  {
    [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
  }

  *&args->var0.var0 = 130;
  args->var0.var2 = *v20;
  args->var0.var3 = *v22;
  if (v26 == 6)
  {
    args->var0.var4 = 6 * *(v14 + 56);
    v29 = deviceCopy;
  }

  else
  {
    v29 = deviceCopy;
    if (v26 == 3)
    {
      v30 = *(v14 + 56);
    }

    else
    {
      if (v26 == 1)
      {
        args->var0.var3 = *(v14 + 56);
        goto LABEL_33;
      }

      v30 = *(v14 + 32);
    }

    args->var0.var4 = v30;
  }

LABEL_33:
  args->var0.var6 = v27;
  args->var0.var7 = *(v14 + 40);
  args->var0.var9 = 0;
  args->var0.var10 = 0;
  args->var0.var16.var1.var0 = IOSurfaceGetID(iosurface);
  args->var0.var16.var1.var1 = plane;
  args->var0.var16.var0.var1 = field;
  v31 = [(IOGPUMetalResource *)self initWithDevice:v29 options:*(v14 + 112) args:args argsSize:size];
  v32 = v31;
  if (v31)
  {
    v31->_textureType = *v14;
    v31->_width = *(v14 + 16);
    v31->_height = *(v14 + 24);
    v31->_depth = *(v14 + 32);
    v31->_mipmapLevelCount = *(v14 + 40);
    v31->_sampleCount = *(v14 + 48);
    v31->_arrayLength = *(v14 + 56);
    v31->_numFaces = v27;
    v31->_pixelFormat = *(v14 + 8);
    v31->_usage = *(v14 + 192);
    v33 = *(v14 + 72);
    if (v33 && (*(v14 + 80) & 1) == 0)
    {
      [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
    }

    v31->_rotation = v33;
    v31->_swizzle = *(v14 + 84);
    v31->_writeSwizzleEnabled = *(v14 + 88);
    v31->_shareable = v17;
    if (v17)
    {
      *&v31->super._anon_50[40] = IOSurfaceCopyValue(iosurface, *MEMORY[0x1E696CF98]);
    }

    v32->_framebufferOnly = *(v14 + 80);
    CFRetain(iosurface);
    v32->_iosurface = iosurface;
    v32->_iosurfacePlane = plane;
    v32->_isDrawable = *(v14 + 81);
    v32->super._res.info.iosurface = iosurface;
    *(&v32->super._res.var1 + 3) = field;
    *&v32->super._res.var0 = IOSurfaceGetAllocSize(iosurface) & 0xFFFFFFFFFFFFFFLL | (*(&v32->super._res.var1 + 3) << 56);
    v32->_allowGPUOptimizedContents = *(v14 + 128);
    if (*(v14 + 184))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
    }

    if (*__globalGPUCommPage)
    {
      [v29 deviceRef];
      v34 = *&v32->super._anon_50[48];
      v35 = v32->_height | (v32->_width << 32);
      v36 = ((v32->_textureType & 0xF) << 48) | (v32->_pixelFormat << 32);
      [v29 registryID];
      IOGPUDeviceTraceEvent();
    }
  }

  return v32;
}

- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor placementSparseBytes:(unint64_t)bytes placementSparsePageSize:(int64_t)size placementSparseMetaDataBytes:(unint64_t)dataBytes placementSparseResidencyBytes:(unint64_t)residencyBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0
{
  descriptorPrivate = [descriptor descriptorPrivate];
  if ((*descriptorPrivate - 5) >= 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = 6;
  }

  [IOGPUMetalTexture initNewTextureDataWithDevice:device descriptor:descriptor sysMemSize:0 sysMemRowBytes:0 vidMemSize:0 vidMemRowBytes:0 args:args];
  if (*(descriptorPrivate + 208) != 2)
  {
    [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
  }

  v19 = [device sparseTileSizeInBytesForSparsePageSize:size];
  args->var0.var0 = 64;
  args->var0.var16.var0.var3.var0 = v19;
  v20 = (bytes + v19 - 1) & -v19;
  args->var0.var16.var0.var0 = v20;
  if (v20 < bytes)
  {
    [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
  }

  args->var0.var16.var0.var1 = dataBytes;
  args->var0.var16.var0.var2 = residencyBytes;
  v21 = [(IOGPUMetalResource *)self initWithDevice:device options:*(descriptorPrivate + 112) args:args argsSize:argsSize];
  v22 = v21;
  if (v21)
  {
    v21->_textureType = *descriptorPrivate;
    v21->_width = *(descriptorPrivate + 16);
    v21->_height = *(descriptorPrivate + 24);
    v21->_depth = *(descriptorPrivate + 32);
    v21->_mipmapLevelCount = *(descriptorPrivate + 40);
    v21->_sampleCount = *(descriptorPrivate + 48);
    v21->_arrayLength = *(descriptorPrivate + 56);
    v21->_numFaces = v18;
    v21->_pixelFormat = *(descriptorPrivate + 8);
    v21->_usage = *(descriptorPrivate + 192);
    if (*(descriptorPrivate + 72))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
    }

    v21->_rotation = 0;
    v21->_swizzle = *(descriptorPrivate + 84);
    v21->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v21->_isCompressed = 0;
    v21->_shareable = 0;
    if (*(descriptorPrivate + 80))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
    }

    v21->_framebufferOnly = 0;
    v21->_isDrawable = *(descriptorPrivate + 81);
    v21->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    v21->_placementSparsePageSize = *(descriptorPrivate + 184);
    if (*__globalGPUCommPage)
    {
      [device deviceRef];
      v23 = *&v22->super._anon_50[48];
      v24 = v22->_height | (v22->_width << 32);
      textureType = v22->_textureType;
      v26 = v22->_pixelFormat << 32;
      [device registryID];
      IOGPUDeviceTraceEvent();
    }
  }

  return v22;
}

- (IOGPUMetalTexture)initWithTextureInternal:(id)internal pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle compressedView:(BOOL)view
{
  if (!internal)
  {
    [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
  }

  length = levels.length;
  location = levels.location;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
  }

  v15 = MTLTextureSwizzleChannelsToKey();
  _mtlValidateMTLTextureSwizzleKey();
  [internal device];
  LOBYTE(v30) = view;
  _mtlValidateArgumentsForTextureViewOnDevice();
  v16 = [(IOGPUMetalResource *)self initWithResource:internal, v30];
  if (v16)
  {
    v16->_parentTexture = internal;
    v16->_buffer = [internal buffer];
    v16->_parentRelativeLevel = location;
    v16->_parentRelativeSlice = slices.location;
    if (v16->_buffer)
    {
      if (length != 1)
      {
        [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
      }

      if (slices.length != 1)
      {
        [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
      }
    }

    v16->_bufferOffset = [internal bufferOffset];
    v16->_bufferBytesPerRow = [internal bufferBytesPerRow];
    v16->_textureType = type;
    v17 = *(internal + 50) >> location;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v16->_width = v17;
    v18 = *(internal + 51) >> location;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v16->_height = v18;
    v19 = *(internal + 52) >> location;
    if (v19 <= 1)
    {
      v19 = 1;
    }

    v16->_depth = v19;
    v16->_pixelFormat = format;
    v16->_usage = *(internal + 48);
    v20 = 6;
    if (type - 5 >= 2)
    {
      v20 = 1;
    }

    v16->_numFaces = v20;
    v16->_arrayLength = slices.length / v20;
    v16->_mipmapLevelCount = length;
    v16->_sampleCount = *(internal + 54);
    v16->_rotation = *(internal + 49);
    v16->_swizzle = v15;
    v16->_writeSwizzleEnabled = *(internal + 340);
    if ([objc_msgSend(internal "device")] && v16->_swizzle != 84148994)
    {
      if (!v16->_usage)
      {
        [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
      }

      [internal device];
      writeSwizzleEnabled = v16->_writeSwizzleEnabled;
      v16->_usage &= ~MTLGetDisallowedTextureUsagesWhenSwizzling();
      _mtlValidateTextureUsage();
    }

    v16->_shareable = 0;
    v16->_framebufferOnly = *(internal + 457);
    v16->_iosurface = *(internal + 44);
    v16->_iosurfacePlane = *(internal + 45);
    v16->_isDrawable = *(internal + 458);
    v16->_allowGPUOptimizedContents = *(internal + 512);
    v22 = *(internal + 27);
    v23 = *(internal + 28);
    *&v16->super._anon_50[136] = v22;
    *&v16->super._anon_50[144] = v23;
    *&v16->super._anon_50[152] = *(internal + 232);
    v16->super._anon_50[168] = *(internal + 248);
    *&v16->super._anon_50[80] = *(internal + 20);
    *&v16->super._anon_50[24] = *(internal + 13);
    iosurface = v16->_iosurface;
    if (iosurface != v16->super._res.info.iosurface)
    {
      [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
    }

    if (iosurface)
    {
      CFRetain(iosurface);
    }

    v16->_placementSparsePageSize = *(internal + 65);
    if (*__globalGPUCommPage)
    {
      [*&v16->super._anon_50[32] deviceRef];
      v25 = *&v16->super._anon_50[48];
      v26 = v16->_height | (v16->_width << 32);
      v27 = ((v16->_textureType & 0xF) << 48) | (v16->_pixelFormat << 32);
      [*&v16->super._anon_50[32] registryID];
      v28 = *&v16->_parentTexture->super._anon_50[48];
      IOGPUDeviceTraceEvent();
    }
  }

  return v16;
}

- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0 isStrideTexture:(BOOL)self1
{
  if (!buffer)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:sysMemOffset:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:isStrideTexture:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:sysMemOffset:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:isStrideTexture:];
  }

  sizeCopy = size;
  textureCopy = texture;
  device = [buffer device];
  *&args->var0.var0 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var12 = 0u;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  args->var0.var16.var0.var3.var1 = 0;
  descriptorPrivate = [descriptor descriptorPrivate];
  v20 = descriptorPrivate;
  v21 = *descriptorPrivate;
  if ((*descriptorPrivate - 5) >= 2)
  {
    v22 = 1;
  }

  else
  {
    v22 = 6;
  }

  if (texture)
  {
    v23 = descriptorPrivate[2];
    v24 = *(buffer + 20);
    _mtlValidateStrideTextureParameters();
    v25 = [(IOGPUMetalResource *)self initWithResource:buffer];
    v26 = v25;
    if (!v25)
    {
      return v26;
    }

    *&v25->super._anon_50[24] += offset;
    goto LABEL_27;
  }

  if (descriptorPrivate[9])
  {
    v40 = descriptorPrivate[9];
    MTLReportFailure();
    v21 = *v20;
  }

  args->var0.var0 = (v20[26] != 2) << 7;
  args->var0.var1 = 0;
  v27 = v20[3];
  args->var0.var2 = v20[2];
  args->var0.var3 = v27;
  switch(v21)
  {
    case 6:
      LODWORD(v28) = *(v20 + 14) * v22;
      break;
    case 3:
      v28 = v20[7];
      break;
    case 1:
      args->var0.var3 = v20[7];
      goto LABEL_19;
    default:
      v28 = v20[4];
      break;
  }

  args->var0.var4 = v28;
LABEL_19:
  args->var0.var6 = v22;
  args->var0.var7 = v20[5];
  args->var0.var9 = 1;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v29 = v20[1];
  MTLPixelFormatGetInfoForDevice();
  args->var0.var9 = 0;
  if (*(v20 + 64))
  {
    v30 = 64;
  }

  else
  {
    v30 = 0;
  }

  args->var0.var10 = v30;
  v31 = *(buffer + 20);
  args->var0.var16.var0.var0 = v31 + offset;
  args->var0.var16.var0.var1 = v31;
  args->var0.var16.var0.var2 = [buffer resourceSize];
  v32 = *(buffer + 20);
  if (v32)
  {
    args->var0.var16.var0.var3.var0 = v32;
    args->var0.var10 |= 0x800u;
  }

  v33 = *(buffer + 23) | (16 * *(buffer + 22));
  v34 = *(buffer + 21) & 0x300;
  v42.receiver = self;
  v42.super_class = IOGPUMetalTexture;
  v35 = [(IOGPUMetalResource *)&v42 initWithDevice:device options:v33 | v34 args:args argsSize:argsSize];
  v26 = v35;
  if (v35)
  {
    v35->super._anon_50[128] = 0;
    if (!sizeCopy)
    {
      bufferCopy = 0;
      textureCopy = 0;
      goto LABEL_28;
    }

    textureCopy = 0;
LABEL_27:
    bufferCopy = buffer;
LABEL_28:
    v26->_buffer = bufferCopy;
    v26->_bufferOffset = offset;
    v26->_bufferBytesPerRow = bytes;
    v26->_textureType = *v20;
    v26->_width = v20[2];
    v26->_height = v20[3];
    v26->_depth = v20[4];
    v26->_mipmapLevelCount = v20[5];
    v26->_sampleCount = v20[6];
    v26->_arrayLength = v20[7];
    v26->_numFaces = v22;
    v26->_pixelFormat = v20[1];
    v26->_usage = v20[24];
    if (v20[9])
    {
      [IOGPUMetalTexture initWithBuffer:descriptor:sysMemOffset:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:isStrideTexture:];
    }

    v26->_rotation = 0;
    v26->_swizzle = *(v20 + 21);
    v26->_writeSwizzleEnabled = *(v20 + 88);
    v26->_shareable = 0;
    if (*(v20 + 80))
    {
      [IOGPUMetalTexture initWithBuffer:descriptor:sysMemOffset:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:isStrideTexture:];
    }

    v26->_framebufferOnly = 0;
    v26->_isDrawable = *(v20 + 81);
    v26->_allowGPUOptimizedContents = *(v20 + 128);
    v37 = *(buffer + 27);
    v38 = *(buffer + 28);
    *&v26->super._anon_50[136] = v37;
    *&v26->super._anon_50[144] = v38;
    *&v26->super._anon_50[152] = *(buffer + 232);
    v26->super._anon_50[168] = *(buffer + 248);
    if (textureCopy && v37)
    {
      *&v26->super._anon_50[24] = *(buffer + 13) + offset;
    }

    *&v26->super._anon_50[80] = *(buffer + 20) + offset;
    v26->_placementSparsePageSize = [buffer placementSparsePageSize];
  }

  return v26;
}

- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0
{
  BYTE4(v11) = 1;
  LODWORD(v11) = argsSize;
  return [(IOGPUMetalTexture *)self initWithBuffer:buffer descriptor:descriptor sysMemOffset:offset sysMemRowBytes:bytes vidMemSize:size vidMemRowBytes:rowBytes args:args argsSize:v11 isStrideTexture:?];
}

- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  if (!buffer)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
  }

  [buffer device];
  descriptorPrivate = [descriptor descriptorPrivate];
  v12 = *(descriptorPrivate + 16);
  v13 = *(buffer + 20);
  _mtlValidateStrideTextureParameters();
  v14 = [(IOGPUMetalResource *)self initWithResource:buffer];
  if (v14)
  {
    v14->_buffer = buffer;
    v14->_bufferOffset = offset;
    v14->_bufferBytesPerRow = row;
    v14->_textureType = *descriptorPrivate;
    v14->_width = *(descriptorPrivate + 16);
    v14->_height = *(descriptorPrivate + 24);
    v14->_depth = *(descriptorPrivate + 32);
    v14->_mipmapLevelCount = *(descriptorPrivate + 40);
    v14->_sampleCount = *(descriptorPrivate + 48);
    v14->_arrayLength = *(descriptorPrivate + 56);
    v15 = 6;
    if ((*descriptorPrivate - 5) >= 2)
    {
      v15 = 1;
    }

    v14->_numFaces = v15;
    v14->_pixelFormat = *(descriptorPrivate + 8);
    v14->_usage = *(descriptorPrivate + 192);
    if (*(descriptorPrivate + 72))
    {
      [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
    }

    v14->_rotation = 0;
    v14->_swizzle = *(descriptorPrivate + 84);
    v14->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v14->_shareable = 0;
    if (*(descriptorPrivate + 80))
    {
      [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
    }

    v14->_framebufferOnly = 0;
    v14->_isDrawable = *(descriptorPrivate + 81);
    v14->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    v16 = *(buffer + 27);
    v17 = *(buffer + 28);
    *&v14->super._anon_50[136] = v16;
    *&v14->super._anon_50[144] = v17;
    *&v14->super._anon_50[152] = *(buffer + 232);
    v14->super._anon_50[168] = *(buffer + 248);
    if (v16)
    {
      v18 = *(buffer + 13);
    }

    else
    {
      v18 = *&v14->super._anon_50[24];
    }

    *&v14->super._anon_50[24] = v18 + offset;
    *&v14->super._anon_50[80] = *(buffer + 20) + offset;
    v14->_placementSparsePageSize = [buffer placementSparsePageSize];
  }

  return v14;
}

- (IOGPUMetalTexture)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length device:(id)device descriptor:(id)descriptor
{
  if (!heap)
  {
    [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
  }

  descriptorPrivate = [descriptor descriptorPrivate];
  if (resource)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
    }

    v16 = [(IOGPUMetalResource *)self initWithResource:resource];
  }

  else
  {
    v16 = [(IOGPUMetalResource *)self initMemoryless:device descriptor:descriptor];
  }

  v17 = v16;
  if (v16)
  {
    v16->_textureType = *descriptorPrivate;
    v16->_width = *(descriptorPrivate + 16);
    v16->_height = *(descriptorPrivate + 24);
    v16->_depth = *(descriptorPrivate + 32);
    v16->_mipmapLevelCount = *(descriptorPrivate + 40);
    v16->_sampleCount = *(descriptorPrivate + 48);
    v16->_arrayLength = *(descriptorPrivate + 56);
    v18 = 6;
    if ((*descriptorPrivate - 5) >= 2)
    {
      v18 = 1;
    }

    v16->_numFaces = v18;
    v16->_pixelFormat = *(descriptorPrivate + 8);
    v16->_usage = *(descriptorPrivate + 192);
    if (*(descriptorPrivate + 72))
    {
      [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
    }

    v16->_rotation = 0;
    v16->_swizzle = *(descriptorPrivate + 84);
    v16->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v16->_shareable = 0;
    if (*(descriptorPrivate + 80))
    {
      [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
    }

    v16->_framebufferOnly = 0;
    v16->_isDrawable = *(descriptorPrivate + 81);
    v16->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    *&v16->super._anon_50[136] = heap;
    *&v17->super._anon_50[144] = resource;
    if (resource)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = 0;
    }

    *&v17->super._anon_50[152] = offset;
    *&v17->super._anon_50[160] = lengthCopy;
    v17->super._anon_50[168] = 0;
    if (![heap type])
    {
      v17->super._anon_50[168] = 1;
    }

    if (resource)
    {
      *&v17->super._anon_50[80] = *(resource + 20) + offset;
      *&v17->super._anon_50[24] += offset;
    }
  }

  return v17;
}

- (IOGPUMetalTexture)initWithPrimaryBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length descriptor:(id)descriptor sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)self0 vidMemRowBytes:(unint64_t)self1 args:(IOGPUNewResourceArgs *)self2 argsSize:(unsigned int)self3
{
  BYTE4(v19) = 0;
  LODWORD(v19) = argsSize;
  result = [(IOGPUMetalTexture *)self initWithBuffer:buffer descriptor:descriptor sysMemOffset:offset sysMemRowBytes:bytes vidMemSize:size vidMemRowBytes:rowBytes args:args argsSize:v19 isStrideTexture:?];
  if (result)
  {
    result->_rootResourceIsSuballocatedBuffer = 1;
    result->_primaryBuffer = buffer;
    result->_primaryHeapIndex = index;
    result->_primaryBufferIndex = bufferIndex;
    result->_primaryBufferOffset = offset;
    result->_length = length;
  }

  return result;
}

- (void)copyFromSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size toPixels:(void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes
{
  *v11 = origin->var2;
  v9 = *&origin->var0;
  *&v11[8] = *size;
  v10[0] = v9;
  v10[1] = *v11;
  v10[2] = *&v11[16];
  v10[3] = v9;
  [(IOGPUMetalTexture *)self getBytes:pixels bytesPerRow:bytes bytesPerImage:imageBytes fromRegion:v10 mipmapLevel:level slice:slice];
}

- (void)copyFromPixels:(const void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes toSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size
{
  *v11 = origin->var2;
  v9 = *&origin->var0;
  *&v11[8] = *size;
  v10[0] = v9;
  v10[1] = *v11;
  v10[2] = *&v11[16];
  v10[3] = v9;
  [(IOGPUMetalTexture *)self replaceRegion:v10 mipmapLevel:level slice:slice withBytes:pixels bytesPerRow:bytes bytesPerImage:imageBytes];
}

- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row
{
  v6 = *&region->var0.var2;
  v7[0] = *&region->var0.var0;
  v7[1] = v6;
  v7[2] = *&region->var1.var1;
  [(IOGPUMetalTexture *)self replaceRegion:v7 mipmapLevel:level slice:0 withBytes:bytes bytesPerRow:row bytesPerImage:0];
}

- (__CFArray)copyAnnotations
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(IOGPUMetalResource *)self annotateResource:Mutable];
  if (self->_framebufferOnly)
  {
    v4 = @"Renderbuffer";
  }

  else
  {
    v4 = @"Texture";
  }

  CFDictionaryAddValue(Mutable, @"Type", v4);
  v5 = objc_autoreleasePoolPush();
  v6 = CFStringCreateMutable(0, 512);
  CFStringAppendFormat(v6, 0, @"%s", "IOGPUMetalTexture");
  textureType = self->_textureType;
  if (textureType >= 0xA)
  {
    goto LABEL_59;
  }

  CFStringAppendFormat(v6, 0, @", %s", off_1E8362D28[textureType]);
  v8 = self->_textureType;
  if (v8 <= 6)
  {
    if ((v8 - 2) < 5)
    {
      CFStringAppendFormat(v6, 0, @", %ld x %ld", self->_width, self->_height);
      goto LABEL_17;
    }

    if (v8 < 2)
    {
      goto LABEL_13;
    }

    goto LABEL_59;
  }

  switch(v8)
  {
    case 7:
      depth = self->_depth;
      break;
    case 8:
      depth = self->_arrayLength;
      break;
    case 9:
LABEL_13:
      CFStringAppendFormat(v6, 0, @", %ld", self->_width);
      goto LABEL_17;
    default:
LABEL_59:
      v28 = MTLReleaseAssertionFailure();
      return [(IOGPUMetalTexture *)v28 isSparse];
  }

  CFStringAppendFormat(v6, 0, @", %ld x %ld x %ld", self->_width, self->_height, depth);
LABEL_17:
  pixelFormat = self->_pixelFormat;
  Name = MTLPixelFormatGetName();
  CFStringAppendFormat(v6, 0, @", %s", Name + 14);
  if (self->_mipmapLevelCount >= 2)
  {
    CFStringAppendFormat(v6, 0, @", %d mipmaps", self->_mipmapLevelCount);
  }

  if (self->_arrayLength >= 2)
  {
    if (self->_textureType - 2 >= 6)
    {
      p_depth = &self->_depth;
    }

    else
    {
      p_depth = &self->_height;
    }

    CFStringAppendFormat(v6, 0, @", %d array slices", *p_depth);
  }

  if (self->_sampleCount >= 2)
  {
    CFStringAppendFormat(v6, 0, @", %d samples", self->_sampleCount);
  }

  string = [MEMORY[0x1E696AD60] string];
  v14 = string;
  usage = self->_usage;
  if (!usage)
  {
    [string appendString:@" none"];
    usage = self->_usage;
  }

  if ((~usage & 3) == 0)
  {
    v16 = @" srw";
LABEL_34:
    [v14 appendString:v16];
    goto LABEL_35;
  }

  if (usage)
  {
    [v14 appendString:@" sr"];
    usage = self->_usage;
  }

  if ((usage & 2) != 0)
  {
    v16 = @" sw";
    goto LABEL_34;
  }

LABEL_35:
  v17 = self->_usage;
  if ((v17 & 4) != 0)
  {
    [v14 appendString:@" rt"];
    v17 = self->_usage;
    if ((v17 & 0x10) == 0)
    {
LABEL_37:
      if ((v17 & 0x4000) == 0)
      {
        goto LABEL_38;
      }

LABEL_57:
      [v14 appendString:@" nca"];
      v17 = self->_usage;
      if ((v17 & 0x10000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((v17 & 0x10) == 0)
  {
    goto LABEL_37;
  }

  [v14 appendString:@" pfv"];
  v17 = self->_usage;
  if ((v17 & 0x4000) != 0)
  {
    goto LABEL_57;
  }

LABEL_38:
  if ((v17 & 0x10000) != 0)
  {
LABEL_39:
    [v14 appendString:@" bwo"];
    v17 = self->_usage;
  }

LABEL_40:
  CFStringAppendFormat(v6, 0, @", usage (%05x)%@", v17, v14);
  CFStringAppendFormat(v6, 0, @", handle (%05llx)", [(IOGPUMetalTexture *)self gpuResourceID]);
  if (self->_length)
  {
    CFStringAppendFormat(v6, 0, @", size %lluB", self->_length);
  }

  if (*&self->super._anon_50[136])
  {
    CFStringAppendFormat(v6, 0, @", heap (+%llx)", *&self->super._anon_50[152]);
  }

  if (self->_primaryBuffer)
  {
    CFStringAppendFormat(v6, 0, @", suballoc (+%llx)", self->_primaryBufferOffset);
  }

  swizzle = self->_swizzle;
  if (swizzle != 84148994)
  {
    CFStringAppendFormat(v6, 0, @", swizzle %c%c%c%c", copyAnnotations_kLetter[swizzle % 6u], copyAnnotations_kLetter[BYTE1(swizzle) % 6u], copyAnnotations_kLetter[BYTE2(swizzle) % 6u], copyAnnotations_kLetter[(HIBYTE(swizzle) - 6 * ((171 * HIBYTE(swizzle)) >> 10))]);
  }

  parentTexture = self->_parentTexture;
  if (parentTexture)
  {
    CFStringAppendFormat(v6, 0, @", view (parent %05llx, slice %d, level %d)", [(IOGPUMetalTexture *)parentTexture gpuResourceID], self->_parentRelativeSlice, self->_parentRelativeLevel);
  }

  buffer = self->_buffer;
  if (buffer)
  {
    gpuAddress = [(IOGPUMetalResource *)buffer gpuAddress];
    bufferOffset = self->_bufferOffset;
    CFStringAppendFormat(v6, 0, @", buffer (parent %012llx, offset %lluB, stride %lluB)", gpuAddress, bufferOffset, self->_bufferBytesPerRow);
  }

  retainedLabel = [(IOGPUMetalResource *)self retainedLabel];
  if (retainedLabel)
  {
    v24 = retainedLabel;
    CFStringAppendFormat(v6, 0, @", %s", [retainedLabel UTF8String]);
  }

  CFDictionaryAddValue(Mutable, @"Description", v6);
  CFRelease(v6);
  objc_autoreleasePoolPop(v5);
  v25 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v26 = [(IOGPUMetalResource *)self copyAnnotationDictionary:*&self->super._anon_50[8] obj_key_name:@"OpenGLObjects" obj_dict:Mutable];
  CFArrayAppendValue(v25, v26);
  CFRelease(v26);
  CFRelease(Mutable);
  return v25;
}

- (BOOL)isSparse
{
  heap = [(IOGPUMetalResource *)self heap];
  if (heap)
  {
    LOBYTE(heap) = [(MTLHeap *)heap type]== 2;
  }

  return heap;
}

- (void)emitResourceInfoTraceEvent
{
  if (*&self->super._anon_50[32])
  {
    if (!self->_buffer)
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