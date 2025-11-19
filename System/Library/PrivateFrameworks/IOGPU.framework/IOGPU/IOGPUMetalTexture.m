@interface IOGPUMetalTexture
+ (void)initNewTextureDataWithDevice:(id)a3 descriptor:(id)a4 sysMemSize:(unint64_t)a5 sysMemRowBytes:(unint64_t)a6 vidMemSize:(unint64_t)a7 vidMemRowBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9;
- (BOOL)isAliasable;
- (BOOL)isSparse;
- (IOGPUMetalBuffer)buffer;
- (IOGPUMetalResource)rootResource;
- (IOGPUMetalTexture)initWithBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6;
- (IOGPUMetalTexture)initWithBuffer:(id)a3 descriptor:(id)a4 sysMemOffset:(unint64_t)a5 sysMemRowBytes:(unint64_t)a6 vidMemSize:(unint64_t)a7 vidMemRowBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10;
- (IOGPUMetalTexture)initWithBuffer:(id)a3 descriptor:(id)a4 sysMemOffset:(unint64_t)a5 sysMemRowBytes:(unint64_t)a6 vidMemSize:(unint64_t)a7 vidMemRowBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10 isStrideTexture:(BOOL)a11;
- (IOGPUMetalTexture)initWithDevice:(id)a3 descriptor:(id)a4 iosurface:(__IOSurface *)a5 plane:(unsigned int)a6 field:(unsigned int)a7 args:(IOGPUNewResourceArgs *)a8 argsSize:(unsigned int)a9;
- (IOGPUMetalTexture)initWithDevice:(id)a3 descriptor:(id)a4 placementSparseBytes:(unint64_t)a5 placementSparsePageSize:(int64_t)a6 placementSparseMetaDataBytes:(unint64_t)a7 placementSparseResidencyBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10;
- (IOGPUMetalTexture)initWithDevice:(id)a3 descriptor:(id)a4 sysMemPointer:(void *)a5 sysMemSize:(unint64_t)a6 sysMemLength:(unint64_t)a7 sysMemRowBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10 deallocator:(id)aBlock;
- (IOGPUMetalTexture)initWithDevice:(id)a3 descriptor:(id)a4 sysMemSize:(unint64_t)a5 sysMemRowBytes:(unint64_t)a6 vidMemSize:(unint64_t)a7 vidMemRowBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10;
- (IOGPUMetalTexture)initWithHeap:(id)a3 resource:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6 device:(id)a7 descriptor:(id)a8;
- (IOGPUMetalTexture)initWithPrimaryBuffer:(id)a3 heapIndex:(signed __int16)a4 bufferIndex:(signed __int16)a5 bufferOffset:(unint64_t)a6 length:(unint64_t)a7 descriptor:(id)a8 sysMemRowBytes:(unint64_t)a9 vidMemSize:(unint64_t)a10 vidMemRowBytes:(unint64_t)a11 args:(IOGPUNewResourceArgs *)a12 argsSize:(unsigned int)a13;
- (IOGPUMetalTexture)initWithTextureInternal:(id)a3 pixelFormat:(unint64_t)a4 textureType:(unint64_t)a5 levels:(_NSRange)a6 slices:(_NSRange)a7 swizzle:(id)a8 compressedView:(BOOL)a9;
- (IOGPUMetalTexture)parentTexture;
- (__CFArray)copyAnnotations;
- (__IOSurface)iosurface;
- (id)formattedDescription:(unint64_t)a3;
- (id)newSharedTextureHandle;
- (unint64_t)allocatedSize;
- (unint64_t)bufferBytesPerRow;
- (unint64_t)bufferOffset;
- (unint64_t)hazardTrackingMode;
- (void)_setLabel:(id)a3;
- (void)copyFromPixels:(const void *)a3 rowBytes:(unint64_t)a4 imageBytes:(unint64_t)a5 toSlice:(unint64_t)a6 mipmapLevel:(unint64_t)a7 origin:(id *)a8 size:(id *)a9;
- (void)copyFromSlice:(unint64_t)a3 mipmapLevel:(unint64_t)a4 origin:(id *)a5 size:(id *)a6 toPixels:(void *)a7 rowBytes:(unint64_t)a8 imageBytes:(unint64_t)a9;
- (void)dealloc;
- (void)emitResourceInfoTraceEvent;
- (void)makeAliasable;
- (void)replaceRegion:(id *)a3 mipmapLevel:(unint64_t)a4 withBytes:(const void *)a5 bytesPerRow:(unint64_t)a6;
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

- (id)formattedDescription:(unint64_t)a3
{
  v26[84] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = [(IOGPUMetalResource *)self retainedLabel];
  v7 = MEMORY[0x1E696AEC0];
  v25.receiver = self;
  v25.super_class = IOGPUMetalTexture;
  v8 = [(IOGPUMetalTexture *)&v25 description];
  v26[0] = v5;
  v26[1] = @"label =";
  if (v6)
  {
    v9 = v6;
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
    v18 = [(IOGPUMetalTexture *)parentTexture formattedDescription:a3 + 4];
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
  v19 = [(IOGPUMetalTexture *)self buffer];
  if (!v19)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v26[68] = v19;
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

- (void)_setLabel:(id)a3
{
  v5.receiver = self;
  v5.super_class = IOGPUMetalTexture;
  [(IOGPUMetalResource *)&v5 _setLabel:?];
  if (self->_shareable)
  {
    IOSurfaceSetValue(self->_iosurface, *MEMORY[0x1E696CF98], a3);
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
  v6 = [(IOGPUMetalResource *)self label];

  return [v4 initWithIOSurface:iosurface label:v6];
}

+ (void)initNewTextureDataWithDevice:(id)a3 descriptor:(id)a4 sysMemSize:(unint64_t)a5 sysMemRowBytes:(unint64_t)a6 vidMemSize:(unint64_t)a7 vidMemRowBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9
{
  a9->var0.var16.var0.var3.var1 = 0;
  *&a9->var0.var14 = 0u;
  *&a9->var0.var16.var4.var1 = 0u;
  *&a9->var0.var6 = 0u;
  *&a9->var0.var12 = 0u;
  *&a9->var0.var0 = 0u;
  v10 = [a4 descriptorPrivate];
  if (*(v10 + 72))
  {
    +[IOGPUMetalTexture initNewTextureDataWithDevice:descriptor:sysMemSize:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:];
  }

  v11 = (*(v10 + 112) & 0xFLL) == 1;
  a9->var0.var0 = 0;
  a9->var0.var1 = v11 << 10;
  v12 = *(v10 + 24);
  a9->var0.var2 = *(v10 + 16);
  v13 = *v10;
  a9->var0.var3 = v12;
  a9->var0.var11 = *(v10 + 144);
  if (v13 == 6)
  {
    a9->var0.var4 = 6 * *(v10 + 56);
  }

  else
  {
    if (v13 == 3)
    {
      v14 = *(v10 + 56);
    }

    else
    {
      if (v13 == 1)
      {
        a9->var0.var3 = *(v10 + 56);
        goto LABEL_11;
      }

      v14 = *(v10 + 32);
    }

    a9->var0.var4 = v14;
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

  a9->var0.var6 = v15;
  a9->var0.var7 = *(v10 + 40);
  a9->var0.var9 = 1;
  v16 = *(v10 + 8);
  MTLPixelFormatGetInfoForDevice();
  a9->var0.var9 = 0;
  if (*(v10 + 64))
  {
    v17 = 64;
  }

  else
  {
    v17 = 0;
  }

  a9->var0.var10 = v17;
  *&a9->var0.var16.var0.var0 = 0uLL;
  a9->var0.var16.var0.var2 = a5;
}

- (IOGPUMetalTexture)initWithDevice:(id)a3 descriptor:(id)a4 sysMemSize:(unint64_t)a5 sysMemRowBytes:(unint64_t)a6 vidMemSize:(unint64_t)a7 vidMemRowBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10
{
  v17 = [a4 descriptorPrivate];
  v25 = *v17;
  [IOGPUMetalTexture initNewTextureDataWithDevice:a3 descriptor:a4 sysMemSize:a5 sysMemRowBytes:a6 vidMemSize:a7 vidMemRowBytes:a8 args:a9];
  v18 = [(IOGPUMetalResource *)self initWithDevice:a3 options:*(v17 + 112) args:a9 argsSize:a10];
  v19 = v18;
  if (v18)
  {
    v18->_textureType = *v17;
    v20 = 6;
    v18->_width = *(v17 + 16);
    if (v25 - 5 >= 2)
    {
      v20 = 1;
    }

    v18->_height = *(v17 + 24);
    v18->_depth = *(v17 + 32);
    v18->_mipmapLevelCount = *(v17 + 40);
    v18->_sampleCount = *(v17 + 48);
    v18->_arrayLength = *(v17 + 56);
    v18->_numFaces = v20;
    v18->_pixelFormat = *(v17 + 8);
    v18->_usage = *(v17 + 192);
    if (*(v17 + 72))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemSize:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:];
    }

    v18->_rotation = 0;
    v18->_swizzle = *(v17 + 84);
    v18->_writeSwizzleEnabled = *(v17 + 88);
    v18->_isCompressed = 0;
    v18->_shareable = 0;
    if (*(v17 + 80))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemSize:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:];
    }

    v18->_framebufferOnly = 0;
    v18->_isDrawable = *(v17 + 81);
    v18->_allowGPUOptimizedContents = *(v17 + 128);
    v18->_placementSparsePageSize = *(v17 + 184);
    if (*__globalGPUCommPage)
    {
      [a3 deviceRef];
      v21 = *&v19->super._anon_50[48];
      v22 = v19->_height | (v19->_width << 32);
      v23 = ((v19->_placementSparsePageSize != 0) << 52) | ((v19->_textureType & 0xF) << 48) | (v19->_pixelFormat << 32);
      [a3 registryID];
      IOGPUDeviceTraceEvent();
    }
  }

  return v19;
}

- (IOGPUMetalTexture)initWithDevice:(id)a3 descriptor:(id)a4 sysMemPointer:(void *)a5 sysMemSize:(unint64_t)a6 sysMemLength:(unint64_t)a7 sysMemRowBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10 deallocator:(id)aBlock
{
  v17 = [a4 descriptorPrivate];
  v18 = *(v17 + 112);
  v28 = *v17;
  [IOGPUMetalTexture initNewTextureDataWithDevice:a3 descriptor:a4 sysMemSize:a6 sysMemRowBytes:a8 vidMemSize:0 vidMemRowBytes:0 args:a9];
  a9->var0.var0 = 128;
  a9->var0.var16.var0.var0 = a5;
  a9->var0.var16.var0.var1 = a5;
  v26 = a3;
  v19 = [(IOGPUMetalResource *)self initWithDevice:a3 options:v18 args:a9 argsSize:a10];
  v20 = v19;
  if (v19)
  {
    v19->_textureType = *v17;
    v21 = 6;
    v19->_width = *(v17 + 16);
    if (v28 - 5 >= 2)
    {
      v21 = 1;
    }

    v19->_height = *(v17 + 24);
    v19->_depth = *(v17 + 32);
    v19->_mipmapLevelCount = *(v17 + 40);
    v19->_sampleCount = *(v17 + 48);
    v19->_arrayLength = *(v17 + 56);
    v19->_numFaces = v21;
    v19->_pixelFormat = *(v17 + 8);
    v19->_usage = *(v17 + 192);
    if (*(v17 + 72))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemPointer:sysMemSize:sysMemLength:sysMemRowBytes:args:argsSize:deallocator:];
    }

    v19->_rotation = 0;
    v19->_swizzle = *(v17 + 84);
    v19->_writeSwizzleEnabled = *(v17 + 88);
    v19->_shareable = 0;
    if (*(v17 + 80))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemPointer:sysMemSize:sysMemLength:sysMemRowBytes:args:argsSize:deallocator:];
    }

    v19->_framebufferOnly = 0;
    v19->_isDrawable = *(v17 + 81);
    if (aBlock)
    {
      v19->_length = a7;
      v19->_pointer = a5;
      v19->_deallocator = _Block_copy(aBlock);
    }

    v20->_allowGPUOptimizedContents = *(v17 + 128);
    if (*(v17 + 184))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemPointer:sysMemSize:sysMemLength:sysMemRowBytes:args:argsSize:deallocator:];
    }

    if (*__globalGPUCommPage)
    {
      [a3 deviceRef];
      v22 = *&v20->super._anon_50[48];
      v23 = v20->_height | (v20->_width << 32);
      v24 = ((v20->_textureType & 0xF) << 48) | (v20->_pixelFormat << 32);
      [v26 registryID];
      IOGPUDeviceTraceEvent();
    }
  }

  return v20;
}

- (IOGPUMetalTexture)initWithDevice:(id)a3 descriptor:(id)a4 iosurface:(__IOSurface *)a5 plane:(unsigned int)a6 field:(unsigned int)a7 args:(IOGPUNewResourceArgs *)a8 argsSize:(unsigned int)a9
{
  a8->var0.var16.var0.var3.var1 = 0;
  *&a8->var0.var14 = 0u;
  *&a8->var0.var16.var4.var1 = 0u;
  *&a8->var0.var6 = 0u;
  *&a8->var0.var12 = 0u;
  *&a8->var0.var0 = 0u;
  v13 = [a4 descriptorPrivate];
  v14 = v13;
  if (*(v13 + 72) >= 5uLL)
  {
    v38 = *(v13 + 72);
    MTLReportFailure();
  }

  v15 = IOSurfaceCopyValue(a5, *MEMORY[0x1E696CEF8]);
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
  v40 = a3;
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
  if (!a5)
  {
    [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
  }

  if (IOSurfaceGetPlaneCount(a5) == 0 && !v17)
  {
    IOSurfaceGetBaseAddress(a5);
    IOSurfaceGetBytesPerRow(a5);
    _mtlValidateStrideTextureParameters();
    if (a6)
    {
      [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
    }

    [a4 pixelFormat];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    IOSurfaceGetBytesPerRow(a5);
    IOSurfaceGetAllocSize(a5);
    IOSurfaceGetBytesPerRow(a5);
    *(v14 + 56);
    IOSurfaceGetHeight(a5);
    IOSurfaceGetElementHeight(a5);
    if (!IOSurfaceAllowsPixelSizeCasting(a5) && IOSurfaceGetBytesPerElement(a5))
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

  *&a8->var0.var0 = 130;
  a8->var0.var2 = *v20;
  a8->var0.var3 = *v22;
  if (v26 == 6)
  {
    a8->var0.var4 = 6 * *(v14 + 56);
    v29 = v40;
  }

  else
  {
    v29 = v40;
    if (v26 == 3)
    {
      v30 = *(v14 + 56);
    }

    else
    {
      if (v26 == 1)
      {
        a8->var0.var3 = *(v14 + 56);
        goto LABEL_33;
      }

      v30 = *(v14 + 32);
    }

    a8->var0.var4 = v30;
  }

LABEL_33:
  a8->var0.var6 = v27;
  a8->var0.var7 = *(v14 + 40);
  a8->var0.var9 = 0;
  a8->var0.var10 = 0;
  a8->var0.var16.var1.var0 = IOSurfaceGetID(a5);
  a8->var0.var16.var1.var1 = a6;
  a8->var0.var16.var0.var1 = a7;
  v31 = [(IOGPUMetalResource *)self initWithDevice:v29 options:*(v14 + 112) args:a8 argsSize:a9];
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
      *&v31->super._anon_50[40] = IOSurfaceCopyValue(a5, *MEMORY[0x1E696CF98]);
    }

    v32->_framebufferOnly = *(v14 + 80);
    CFRetain(a5);
    v32->_iosurface = a5;
    v32->_iosurfacePlane = a6;
    v32->_isDrawable = *(v14 + 81);
    v32->super._res.info.iosurface = a5;
    *(&v32->super._res.var1 + 3) = a7;
    *&v32->super._res.var0 = IOSurfaceGetAllocSize(a5) & 0xFFFFFFFFFFFFFFLL | (*(&v32->super._res.var1 + 3) << 56);
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

- (IOGPUMetalTexture)initWithDevice:(id)a3 descriptor:(id)a4 placementSparseBytes:(unint64_t)a5 placementSparsePageSize:(int64_t)a6 placementSparseMetaDataBytes:(unint64_t)a7 placementSparseResidencyBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10
{
  v17 = [a4 descriptorPrivate];
  if ((*v17 - 5) >= 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = 6;
  }

  [IOGPUMetalTexture initNewTextureDataWithDevice:a3 descriptor:a4 sysMemSize:0 sysMemRowBytes:0 vidMemSize:0 vidMemRowBytes:0 args:a9];
  if (*(v17 + 208) != 2)
  {
    [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
  }

  v19 = [a3 sparseTileSizeInBytesForSparsePageSize:a6];
  a9->var0.var0 = 64;
  a9->var0.var16.var0.var3.var0 = v19;
  v20 = (a5 + v19 - 1) & -v19;
  a9->var0.var16.var0.var0 = v20;
  if (v20 < a5)
  {
    [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
  }

  a9->var0.var16.var0.var1 = a7;
  a9->var0.var16.var0.var2 = a8;
  v21 = [(IOGPUMetalResource *)self initWithDevice:a3 options:*(v17 + 112) args:a9 argsSize:a10];
  v22 = v21;
  if (v21)
  {
    v21->_textureType = *v17;
    v21->_width = *(v17 + 16);
    v21->_height = *(v17 + 24);
    v21->_depth = *(v17 + 32);
    v21->_mipmapLevelCount = *(v17 + 40);
    v21->_sampleCount = *(v17 + 48);
    v21->_arrayLength = *(v17 + 56);
    v21->_numFaces = v18;
    v21->_pixelFormat = *(v17 + 8);
    v21->_usage = *(v17 + 192);
    if (*(v17 + 72))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
    }

    v21->_rotation = 0;
    v21->_swizzle = *(v17 + 84);
    v21->_writeSwizzleEnabled = *(v17 + 88);
    v21->_isCompressed = 0;
    v21->_shareable = 0;
    if (*(v17 + 80))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
    }

    v21->_framebufferOnly = 0;
    v21->_isDrawable = *(v17 + 81);
    v21->_allowGPUOptimizedContents = *(v17 + 128);
    v21->_placementSparsePageSize = *(v17 + 184);
    if (*__globalGPUCommPage)
    {
      [a3 deviceRef];
      v23 = *&v22->super._anon_50[48];
      v24 = v22->_height | (v22->_width << 32);
      textureType = v22->_textureType;
      v26 = v22->_pixelFormat << 32;
      [a3 registryID];
      IOGPUDeviceTraceEvent();
    }
  }

  return v22;
}

- (IOGPUMetalTexture)initWithTextureInternal:(id)a3 pixelFormat:(unint64_t)a4 textureType:(unint64_t)a5 levels:(_NSRange)a6 slices:(_NSRange)a7 swizzle:(id)a8 compressedView:(BOOL)a9
{
  if (!a3)
  {
    [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
  }

  length = a6.length;
  location = a6.location;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
  }

  v15 = MTLTextureSwizzleChannelsToKey();
  _mtlValidateMTLTextureSwizzleKey();
  [a3 device];
  LOBYTE(v30) = a9;
  _mtlValidateArgumentsForTextureViewOnDevice();
  v16 = [(IOGPUMetalResource *)self initWithResource:a3, v30];
  if (v16)
  {
    v16->_parentTexture = a3;
    v16->_buffer = [a3 buffer];
    v16->_parentRelativeLevel = location;
    v16->_parentRelativeSlice = a7.location;
    if (v16->_buffer)
    {
      if (length != 1)
      {
        [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
      }

      if (a7.length != 1)
      {
        [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
      }
    }

    v16->_bufferOffset = [a3 bufferOffset];
    v16->_bufferBytesPerRow = [a3 bufferBytesPerRow];
    v16->_textureType = a5;
    v17 = *(a3 + 50) >> location;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v16->_width = v17;
    v18 = *(a3 + 51) >> location;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v16->_height = v18;
    v19 = *(a3 + 52) >> location;
    if (v19 <= 1)
    {
      v19 = 1;
    }

    v16->_depth = v19;
    v16->_pixelFormat = a4;
    v16->_usage = *(a3 + 48);
    v20 = 6;
    if (a5 - 5 >= 2)
    {
      v20 = 1;
    }

    v16->_numFaces = v20;
    v16->_arrayLength = a7.length / v20;
    v16->_mipmapLevelCount = length;
    v16->_sampleCount = *(a3 + 54);
    v16->_rotation = *(a3 + 49);
    v16->_swizzle = v15;
    v16->_writeSwizzleEnabled = *(a3 + 340);
    if ([objc_msgSend(a3 "device")] && v16->_swizzle != 84148994)
    {
      if (!v16->_usage)
      {
        [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
      }

      [a3 device];
      writeSwizzleEnabled = v16->_writeSwizzleEnabled;
      v16->_usage &= ~MTLGetDisallowedTextureUsagesWhenSwizzling();
      _mtlValidateTextureUsage();
    }

    v16->_shareable = 0;
    v16->_framebufferOnly = *(a3 + 457);
    v16->_iosurface = *(a3 + 44);
    v16->_iosurfacePlane = *(a3 + 45);
    v16->_isDrawable = *(a3 + 458);
    v16->_allowGPUOptimizedContents = *(a3 + 512);
    v22 = *(a3 + 27);
    v23 = *(a3 + 28);
    *&v16->super._anon_50[136] = v22;
    *&v16->super._anon_50[144] = v23;
    *&v16->super._anon_50[152] = *(a3 + 232);
    v16->super._anon_50[168] = *(a3 + 248);
    *&v16->super._anon_50[80] = *(a3 + 20);
    *&v16->super._anon_50[24] = *(a3 + 13);
    iosurface = v16->_iosurface;
    if (iosurface != v16->super._res.info.iosurface)
    {
      [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
    }

    if (iosurface)
    {
      CFRetain(iosurface);
    }

    v16->_placementSparsePageSize = *(a3 + 65);
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

- (IOGPUMetalTexture)initWithBuffer:(id)a3 descriptor:(id)a4 sysMemOffset:(unint64_t)a5 sysMemRowBytes:(unint64_t)a6 vidMemSize:(unint64_t)a7 vidMemRowBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10 isStrideTexture:(BOOL)a11
{
  if (!a3)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:sysMemOffset:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:isStrideTexture:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:sysMemOffset:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:isStrideTexture:];
  }

  v41 = a7;
  v17 = a11;
  v18 = [a3 device];
  *&a9->var0.var0 = 0u;
  *&a9->var0.var6 = 0u;
  *&a9->var0.var12 = 0u;
  *&a9->var0.var14 = 0u;
  *&a9->var0.var16.var4.var1 = 0u;
  a9->var0.var16.var0.var3.var1 = 0;
  v19 = [a4 descriptorPrivate];
  v20 = v19;
  v21 = *v19;
  if ((*v19 - 5) >= 2)
  {
    v22 = 1;
  }

  else
  {
    v22 = 6;
  }

  if (a11)
  {
    v23 = v19[2];
    v24 = *(a3 + 20);
    _mtlValidateStrideTextureParameters();
    v25 = [(IOGPUMetalResource *)self initWithResource:a3];
    v26 = v25;
    if (!v25)
    {
      return v26;
    }

    *&v25->super._anon_50[24] += a5;
    goto LABEL_27;
  }

  if (v19[9])
  {
    v40 = v19[9];
    MTLReportFailure();
    v21 = *v20;
  }

  a9->var0.var0 = (v20[26] != 2) << 7;
  a9->var0.var1 = 0;
  v27 = v20[3];
  a9->var0.var2 = v20[2];
  a9->var0.var3 = v27;
  switch(v21)
  {
    case 6:
      LODWORD(v28) = *(v20 + 14) * v22;
      break;
    case 3:
      v28 = v20[7];
      break;
    case 1:
      a9->var0.var3 = v20[7];
      goto LABEL_19;
    default:
      v28 = v20[4];
      break;
  }

  a9->var0.var4 = v28;
LABEL_19:
  a9->var0.var6 = v22;
  a9->var0.var7 = v20[5];
  a9->var0.var9 = 1;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v29 = v20[1];
  MTLPixelFormatGetInfoForDevice();
  a9->var0.var9 = 0;
  if (*(v20 + 64))
  {
    v30 = 64;
  }

  else
  {
    v30 = 0;
  }

  a9->var0.var10 = v30;
  v31 = *(a3 + 20);
  a9->var0.var16.var0.var0 = v31 + a5;
  a9->var0.var16.var0.var1 = v31;
  a9->var0.var16.var0.var2 = [a3 resourceSize];
  v32 = *(a3 + 20);
  if (v32)
  {
    a9->var0.var16.var0.var3.var0 = v32;
    a9->var0.var10 |= 0x800u;
  }

  v33 = *(a3 + 23) | (16 * *(a3 + 22));
  v34 = *(a3 + 21) & 0x300;
  v42.receiver = self;
  v42.super_class = IOGPUMetalTexture;
  v35 = [(IOGPUMetalResource *)&v42 initWithDevice:v18 options:v33 | v34 args:a9 argsSize:a10];
  v26 = v35;
  if (v35)
  {
    v35->super._anon_50[128] = 0;
    if (!v41)
    {
      v36 = 0;
      v17 = 0;
      goto LABEL_28;
    }

    v17 = 0;
LABEL_27:
    v36 = a3;
LABEL_28:
    v26->_buffer = v36;
    v26->_bufferOffset = a5;
    v26->_bufferBytesPerRow = a6;
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
    v37 = *(a3 + 27);
    v38 = *(a3 + 28);
    *&v26->super._anon_50[136] = v37;
    *&v26->super._anon_50[144] = v38;
    *&v26->super._anon_50[152] = *(a3 + 232);
    v26->super._anon_50[168] = *(a3 + 248);
    if (v17 && v37)
    {
      *&v26->super._anon_50[24] = *(a3 + 13) + a5;
    }

    *&v26->super._anon_50[80] = *(a3 + 20) + a5;
    v26->_placementSparsePageSize = [a3 placementSparsePageSize];
  }

  return v26;
}

- (IOGPUMetalTexture)initWithBuffer:(id)a3 descriptor:(id)a4 sysMemOffset:(unint64_t)a5 sysMemRowBytes:(unint64_t)a6 vidMemSize:(unint64_t)a7 vidMemRowBytes:(unint64_t)a8 args:(IOGPUNewResourceArgs *)a9 argsSize:(unsigned int)a10
{
  BYTE4(v11) = 1;
  LODWORD(v11) = a10;
  return [(IOGPUMetalTexture *)self initWithBuffer:a3 descriptor:a4 sysMemOffset:a5 sysMemRowBytes:a6 vidMemSize:a7 vidMemRowBytes:a8 args:a9 argsSize:v11 isStrideTexture:?];
}

- (IOGPUMetalTexture)initWithBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6
{
  if (!a3)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
  }

  [a3 device];
  v11 = [a4 descriptorPrivate];
  v12 = *(v11 + 16);
  v13 = *(a3 + 20);
  _mtlValidateStrideTextureParameters();
  v14 = [(IOGPUMetalResource *)self initWithResource:a3];
  if (v14)
  {
    v14->_buffer = a3;
    v14->_bufferOffset = a5;
    v14->_bufferBytesPerRow = a6;
    v14->_textureType = *v11;
    v14->_width = *(v11 + 16);
    v14->_height = *(v11 + 24);
    v14->_depth = *(v11 + 32);
    v14->_mipmapLevelCount = *(v11 + 40);
    v14->_sampleCount = *(v11 + 48);
    v14->_arrayLength = *(v11 + 56);
    v15 = 6;
    if ((*v11 - 5) >= 2)
    {
      v15 = 1;
    }

    v14->_numFaces = v15;
    v14->_pixelFormat = *(v11 + 8);
    v14->_usage = *(v11 + 192);
    if (*(v11 + 72))
    {
      [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
    }

    v14->_rotation = 0;
    v14->_swizzle = *(v11 + 84);
    v14->_writeSwizzleEnabled = *(v11 + 88);
    v14->_shareable = 0;
    if (*(v11 + 80))
    {
      [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
    }

    v14->_framebufferOnly = 0;
    v14->_isDrawable = *(v11 + 81);
    v14->_allowGPUOptimizedContents = *(v11 + 128);
    v16 = *(a3 + 27);
    v17 = *(a3 + 28);
    *&v14->super._anon_50[136] = v16;
    *&v14->super._anon_50[144] = v17;
    *&v14->super._anon_50[152] = *(a3 + 232);
    v14->super._anon_50[168] = *(a3 + 248);
    if (v16)
    {
      v18 = *(a3 + 13);
    }

    else
    {
      v18 = *&v14->super._anon_50[24];
    }

    *&v14->super._anon_50[24] = v18 + a5;
    *&v14->super._anon_50[80] = *(a3 + 20) + a5;
    v14->_placementSparsePageSize = [a3 placementSparsePageSize];
  }

  return v14;
}

- (IOGPUMetalTexture)initWithHeap:(id)a3 resource:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6 device:(id)a7 descriptor:(id)a8
{
  if (!a3)
  {
    [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
  }

  v15 = [a8 descriptorPrivate];
  if (a4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
    }

    v16 = [(IOGPUMetalResource *)self initWithResource:a4];
  }

  else
  {
    v16 = [(IOGPUMetalResource *)self initMemoryless:a7 descriptor:a8];
  }

  v17 = v16;
  if (v16)
  {
    v16->_textureType = *v15;
    v16->_width = *(v15 + 16);
    v16->_height = *(v15 + 24);
    v16->_depth = *(v15 + 32);
    v16->_mipmapLevelCount = *(v15 + 40);
    v16->_sampleCount = *(v15 + 48);
    v16->_arrayLength = *(v15 + 56);
    v18 = 6;
    if ((*v15 - 5) >= 2)
    {
      v18 = 1;
    }

    v16->_numFaces = v18;
    v16->_pixelFormat = *(v15 + 8);
    v16->_usage = *(v15 + 192);
    if (*(v15 + 72))
    {
      [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
    }

    v16->_rotation = 0;
    v16->_swizzle = *(v15 + 84);
    v16->_writeSwizzleEnabled = *(v15 + 88);
    v16->_shareable = 0;
    if (*(v15 + 80))
    {
      [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
    }

    v16->_framebufferOnly = 0;
    v16->_isDrawable = *(v15 + 81);
    v16->_allowGPUOptimizedContents = *(v15 + 128);
    *&v16->super._anon_50[136] = a3;
    *&v17->super._anon_50[144] = a4;
    if (a4)
    {
      v19 = a6;
    }

    else
    {
      v19 = 0;
    }

    *&v17->super._anon_50[152] = a5;
    *&v17->super._anon_50[160] = v19;
    v17->super._anon_50[168] = 0;
    if (![a3 type])
    {
      v17->super._anon_50[168] = 1;
    }

    if (a4)
    {
      *&v17->super._anon_50[80] = *(a4 + 20) + a5;
      *&v17->super._anon_50[24] += a5;
    }
  }

  return v17;
}

- (IOGPUMetalTexture)initWithPrimaryBuffer:(id)a3 heapIndex:(signed __int16)a4 bufferIndex:(signed __int16)a5 bufferOffset:(unint64_t)a6 length:(unint64_t)a7 descriptor:(id)a8 sysMemRowBytes:(unint64_t)a9 vidMemSize:(unint64_t)a10 vidMemRowBytes:(unint64_t)a11 args:(IOGPUNewResourceArgs *)a12 argsSize:(unsigned int)a13
{
  BYTE4(v19) = 0;
  LODWORD(v19) = a13;
  result = [(IOGPUMetalTexture *)self initWithBuffer:a3 descriptor:a8 sysMemOffset:a6 sysMemRowBytes:a9 vidMemSize:a10 vidMemRowBytes:a11 args:a12 argsSize:v19 isStrideTexture:?];
  if (result)
  {
    result->_rootResourceIsSuballocatedBuffer = 1;
    result->_primaryBuffer = a3;
    result->_primaryHeapIndex = a4;
    result->_primaryBufferIndex = a5;
    result->_primaryBufferOffset = a6;
    result->_length = a7;
  }

  return result;
}

- (void)copyFromSlice:(unint64_t)a3 mipmapLevel:(unint64_t)a4 origin:(id *)a5 size:(id *)a6 toPixels:(void *)a7 rowBytes:(unint64_t)a8 imageBytes:(unint64_t)a9
{
  *v11 = a5->var2;
  v9 = *&a5->var0;
  *&v11[8] = *a6;
  v10[0] = v9;
  v10[1] = *v11;
  v10[2] = *&v11[16];
  v10[3] = v9;
  [(IOGPUMetalTexture *)self getBytes:a7 bytesPerRow:a8 bytesPerImage:a9 fromRegion:v10 mipmapLevel:a4 slice:a3];
}

- (void)copyFromPixels:(const void *)a3 rowBytes:(unint64_t)a4 imageBytes:(unint64_t)a5 toSlice:(unint64_t)a6 mipmapLevel:(unint64_t)a7 origin:(id *)a8 size:(id *)a9
{
  *v11 = a8->var2;
  v9 = *&a8->var0;
  *&v11[8] = *a9;
  v10[0] = v9;
  v10[1] = *v11;
  v10[2] = *&v11[16];
  v10[3] = v9;
  [(IOGPUMetalTexture *)self replaceRegion:v10 mipmapLevel:a7 slice:a6 withBytes:a3 bytesPerRow:a4 bytesPerImage:a5];
}

- (void)replaceRegion:(id *)a3 mipmapLevel:(unint64_t)a4 withBytes:(const void *)a5 bytesPerRow:(unint64_t)a6
{
  v6 = *&a3->var0.var2;
  v7[0] = *&a3->var0.var0;
  v7[1] = v6;
  v7[2] = *&a3->var1.var1;
  [(IOGPUMetalTexture *)self replaceRegion:v7 mipmapLevel:a4 slice:0 withBytes:a5 bytesPerRow:a6 bytesPerImage:0];
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

  v13 = [MEMORY[0x1E696AD60] string];
  v14 = v13;
  usage = self->_usage;
  if (!usage)
  {
    [v13 appendString:@" none"];
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
    v21 = [(IOGPUMetalResource *)buffer gpuAddress];
    bufferOffset = self->_bufferOffset;
    CFStringAppendFormat(v6, 0, @", buffer (parent %012llx, offset %lluB, stride %lluB)", v21, bufferOffset, self->_bufferBytesPerRow);
  }

  v23 = [(IOGPUMetalResource *)self retainedLabel];
  if (v23)
  {
    v24 = v23;
    CFStringAppendFormat(v6, 0, @", %s", [v23 UTF8String]);
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
  v2 = [(IOGPUMetalResource *)self heap];
  if (v2)
  {
    LOBYTE(v2) = [(MTLHeap *)v2 type]== 2;
  }

  return v2;
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