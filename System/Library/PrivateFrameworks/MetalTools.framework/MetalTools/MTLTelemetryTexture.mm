@interface MTLTelemetryTexture
- (MTLTelemetryTexture)initWithBaseTexture:(id)texture device:(id)device buffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (MTLTelemetryTexture)initWithBaseTexture:(id)texture device:(id)device descriptor:(id)descriptor;
- (MTLTelemetryTexture)initWithBaseTexture:(id)texture device:(id)device descriptor:(id)descriptor plane:(unint64_t)plane;
- (MTLTelemetryTexture)initWithBaseTexture:(id)texture device:(id)device texture:(id)a5 descriptor:(id)descriptor;
- (MTLTelemetryTexture)initWithBaseTexture:(id)texture device:(id)device texture:(id)a5 pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)self0;
- (id)newTextureViewWithPixelFormat:(unint64_t)format;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle;
- (void)accumTextureDistribution:(id)distribution category:(unint64_t)category pixelFormat:(unint64_t)format baseAddr:(unint64_t)addr rowBytes:(unint64_t)bytes isLinear:(BOOL)linear;
- (void)initMipmapClipType;
@end

@implementation MTLTelemetryTexture

- (void)accumTextureDistribution:(id)distribution category:(unint64_t)category pixelFormat:(unint64_t)format baseAddr:(unint64_t)addr rowBytes:(unint64_t)bytes isLinear:(BOOL)linear
{
  categoryCopy = category;
  textureType = [distribution textureType];
  queue = self->_telemetryDevice->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__MTLTelemetryTexture_accumTextureDistribution_category_pixelFormat_baseAddr_rowBytes_isLinear___block_invoke;
  block[3] = &unk_2787B3EF8;
  v18 = categoryCopy;
  v19 = textureType;
  block[4] = self;
  block[5] = distribution;
  linearCopy = linear;
  block[6] = format;
  block[7] = bytes;
  block[8] = addr;
  dispatch_sync(queue, block);
}

uint64_t __96__MTLTelemetryTexture_accumTextureDistribution_category_pixelFormat_baseAddr_rowBytes_isLinear___block_invoke(uint64_t a1)
{
  v2 = &std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::piecewise_construct_t const&,std::tuple<MTLPixelFormat const&>,std::tuple<>>((*(*(a1 + 32) + 88) + 224), (a1 + 48))[192 * *(a1 + 72) + 24 * *(a1 + 76)];
  v3 = [*(*(a1 + 32) + 80) width];
  if (v3)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      if (*(v2 + 13) < v3)
      {
        *(v2 + 13) = v3;
      }

      if (*(v2 + 12) <= v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(v2 + 13) = v3;
    }

    *(v2 + 12) = v3;
LABEL_9:
    v2[7] += v3;
    *(v2 + 16) = v4 + 1;
  }

  v5 = [*(*(a1 + 32) + 80) height];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = *(v2 + 22);
  if (v6)
  {
    if (*(v2 + 19) < v5)
    {
      *(v2 + 19) = v5;
    }

    if (*(v2 + 18) <= v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(v2 + 19) = v5;
  }

  *(v2 + 18) = v5;
LABEL_18:
  v2[10] += v5;
  *(v2 + 22) = v6 + 1;
LABEL_19:
  v7 = [*(*(a1 + 32) + 80) depth];
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = *(v2 + 28);
  if (v8)
  {
    if (*(v2 + 25) < v7)
    {
      *(v2 + 25) = v7;
    }

    if (*(v2 + 24) <= v7)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *(v2 + 25) = v7;
  }

  *(v2 + 24) = v7;
LABEL_27:
  v2[13] += v7;
  *(v2 + 28) = v8 + 1;
LABEL_28:
  v9 = [*(*(a1 + 32) + 80) mipmapLevelCount];
  if (!v9)
  {
    goto LABEL_37;
  }

  v10 = *(v2 + 34);
  if (v10)
  {
    if (*(v2 + 31) < v9)
    {
      *(v2 + 31) = v9;
    }

    if (*(v2 + 30) <= v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    *(v2 + 31) = v9;
  }

  *(v2 + 30) = v9;
LABEL_36:
  v2[16] += v9;
  *(v2 + 34) = v10 + 1;
LABEL_37:
  v11 = [*(*(a1 + 32) + 80) sampleCount];
  if (!v11)
  {
    goto LABEL_46;
  }

  v12 = *(v2 + 40);
  if (v12)
  {
    if (*(v2 + 37) < v11)
    {
      *(v2 + 37) = v11;
    }

    if (*(v2 + 36) <= v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    *(v2 + 37) = v11;
  }

  *(v2 + 36) = v11;
LABEL_45:
  v2[19] += v11;
  *(v2 + 40) = v12 + 1;
LABEL_46:
  v13 = [*(*(a1 + 32) + 80) arrayLength];
  if (!v13)
  {
    goto LABEL_55;
  }

  v14 = *(v2 + 46);
  if (v14)
  {
    if (*(v2 + 43) < v13)
    {
      *(v2 + 43) = v13;
    }

    if (*(v2 + 42) <= v13)
    {
      goto LABEL_54;
    }
  }

  else
  {
    *(v2 + 43) = v13;
  }

  *(v2 + 42) = v13;
LABEL_54:
  v2[22] += v13;
  *(v2 + 46) = v14 + 1;
LABEL_55:
  if ([*(a1 + 40) isFramebufferOnly])
  {
    ++*(v2 + 7);
  }

  if (([*(a1 + 40) usage] & 2) != 0)
  {
    ++*(v2 + 8);
  }

  result = [*(a1 + 40) usage];
  if ((result & 4) != 0)
  {
    ++*(v2 + 9);
  }

  if (*(a1 + 80) == 1)
  {
    v16 = *(a1 + 56);
    if (!v16)
    {
      goto LABEL_71;
    }

    v17 = *(v2 + 52);
    if (v17)
    {
      if (*(v2 + 49) < v16)
      {
        *(v2 + 49) = v16;
      }

      if (*(v2 + 48) <= v16)
      {
        goto LABEL_70;
      }
    }

    else
    {
      *(v2 + 49) = v16;
    }

    *(v2 + 48) = v16;
LABEL_70:
    v2[25] += v16;
    *(v2 + 52) = v17 + 1;
LABEL_71:
    if (((*(a1 + 64) | v16) & 0x3FLL) != 0)
    {
      ++*(v2 + 10);
    }
  }

  ++*(v2 + 6);
  return result;
}

- (void)initMipmapClipType
{
  width = [(MTLToolsTexture *)self width];
  if (width <= [(MTLToolsTexture *)self height])
  {
    height = [(MTLToolsTexture *)self height];
  }

  else
  {
    height = [(MTLToolsTexture *)self width];
  }

  if (height <= [(MTLToolsTexture *)self depth])
  {
    [(MTLToolsTexture *)self depth];
  }

  else
  {
    width2 = [(MTLToolsTexture *)self width];
    if (width2 <= [(MTLToolsTexture *)self height])
    {
      [(MTLToolsTexture *)self height];
    }

    else
    {
      [(MTLToolsTexture *)self width];
    }
  }

  v6 = _mtlNumMipmapLevelsForSize();
  if (v6 <= [(MTLToolsTexture *)self mipmapLevelCount])
  {
    self->mipmapClipType = 0;
  }

  else
  {
    if ([(MTLToolsTexture *)self mipmapLevelCount]< 2)
    {
      if ([(MTLToolsTexture *)self parentRelativeLevel])
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 3;
    }

    self->mipmapClipType = v7;
  }
}

- (MTLTelemetryTexture)initWithBaseTexture:(id)texture device:(id)device buffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  v16.receiver = self;
  v16.super_class = MTLTelemetryTexture;
  v14 = [MTLToolsTexture initWithBaseObject:sel_initWithBaseObject_parent_buffer_ parent:? buffer:?];
  if (v14)
  {
    v14->_telemetryDescriptor = [descriptor copy];
    v14->_telemetryDevice = device;
    if ([device enableTelemetry])
    {
      [(MTLTelemetryTexture *)v14 initMipmapClipType];
      -[MTLTelemetryTexture accumTextureDistribution:category:pixelFormat:baseAddr:rowBytes:isLinear:](v14, "accumTextureDistribution:category:pixelFormat:baseAddr:rowBytes:isLinear:", texture, 1, [texture pixelFormat], objc_msgSend(buffer, "contents") + offset, row, 1);
    }
  }

  return v14;
}

- (MTLTelemetryTexture)initWithBaseTexture:(id)texture device:(id)device descriptor:(id)descriptor plane:(unint64_t)plane
{
  v14.receiver = self;
  v14.super_class = MTLTelemetryTexture;
  plane = [(MTLToolsResource *)&v14 initWithBaseObject:texture parent:device, descriptor, plane];
  if (plane)
  {
    plane->_telemetryDescriptor = [descriptor copy];
    plane->_telemetryDevice = device;
    if ([device enableTelemetry])
    {
      [(MTLTelemetryTexture *)plane initMipmapClipType];
      v10 = [-[MTLToolsObject baseObject](plane "baseObject")];
      pixelFormat = [texture pixelFormat];
      BaseAddress = IOSurfaceGetBaseAddress(v10);
      [(MTLTelemetryTexture *)plane accumTextureDistribution:texture category:3 pixelFormat:pixelFormat baseAddr:BaseAddress rowBytes:IOSurfaceGetBytesPerRow(v10) isLinear:1];
    }
  }

  return plane;
}

- (MTLTelemetryTexture)initWithBaseTexture:(id)texture device:(id)device descriptor:(id)descriptor
{
  v8 = [(MTLTelemetryTexture *)self initWithBaseTexture:texture device:device descriptor:descriptor plane:0];
  if (v8)
  {
    v8->_telemetryDescriptor = [descriptor copy];
    v8->_telemetryDevice = device;
    if ([device enableTelemetry])
    {
      [(MTLTelemetryTexture *)v8 initMipmapClipType];
      -[MTLTelemetryTexture accumTextureDistribution:category:pixelFormat:baseAddr:rowBytes:isLinear:](v8, "accumTextureDistribution:category:pixelFormat:baseAddr:rowBytes:isLinear:", texture, 0, [texture pixelFormat], 0, 0, 0);
    }
  }

  return v8;
}

- (MTLTelemetryTexture)initWithBaseTexture:(id)texture device:(id)device texture:(id)a5 descriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTLTelemetryTexture;
  v8 = [(MTLToolsTexture *)&v10 initWithBaseObject:texture parent:device parentTexture:a5];
  if (v8)
  {
    v8->_telemetryDescriptor = [descriptor copy];
    v8->_telemetryDevice = device;
    if ([device enableTelemetry])
    {
      [(MTLTelemetryTexture *)v8 initMipmapClipType];
    }
  }

  return v8;
}

- (MTLTelemetryTexture)initWithBaseTexture:(id)texture device:(id)device texture:(id)a5 pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)self0
{
  v14 = [(MTLTelemetryTexture *)self initWithBaseTexture:texture device:device texture:a5 descriptor:self->_telemetryDescriptor];
  if (v14 && [device enableTelemetry])
  {
    queue = v14->_telemetryDevice->queue;
    if (type - 5 >= 2)
    {
      length = slices.length;
    }

    else
    {
      length = slices.length / 6;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__MTLTelemetryTexture_initWithBaseTexture_device_texture_pixelFormat_textureType_levels_slices_swizzle___block_invoke;
    block[3] = &unk_2787B3F20;
    v20 = 2;
    typeCopy = type;
    block[6] = format;
    block[7] = length;
    slicesCopy = slices;
    block[4] = v14;
    block[5] = a5;
    dispatch_sync(queue, block);
  }

  return v14;
}

uint64_t __104__MTLTelemetryTexture_initWithBaseTexture_device_texture_pixelFormat_textureType_levels_slices_swizzle___block_invoke(uint64_t a1)
{
  v2 = &std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::piecewise_construct_t const&,std::tuple<MTLPixelFormat const&>,std::tuple<>>((*(*(a1 + 32) + 88) + 224), (a1 + 48))[192 * *(a1 + 80) + 24 * *(a1 + 84)];
  v3 = [*(*(a1 + 32) + 80) width];
  if (v3)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      if (*(v2 + 13) < v3)
      {
        *(v2 + 13) = v3;
      }

      if (*(v2 + 12) <= v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(v2 + 13) = v3;
    }

    *(v2 + 12) = v3;
LABEL_9:
    v2[7] += v3;
    *(v2 + 16) = v4 + 1;
  }

  v5 = [*(*(a1 + 32) + 80) height];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = *(v2 + 22);
  if (v6)
  {
    if (*(v2 + 19) < v5)
    {
      *(v2 + 19) = v5;
    }

    if (*(v2 + 18) <= v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(v2 + 19) = v5;
  }

  *(v2 + 18) = v5;
LABEL_18:
  v2[10] += v5;
  *(v2 + 22) = v6 + 1;
LABEL_19:
  v7 = [*(*(a1 + 32) + 80) depth];
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = *(v2 + 28);
  if (v8)
  {
    if (*(v2 + 25) < v7)
    {
      *(v2 + 25) = v7;
    }

    if (*(v2 + 24) <= v7)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *(v2 + 25) = v7;
  }

  *(v2 + 24) = v7;
LABEL_27:
  v2[13] += v7;
  *(v2 + 28) = v8 + 1;
LABEL_28:
  v9 = *(a1 + 56);
  if (!v9)
  {
    goto LABEL_37;
  }

  v10 = *(v2 + 34);
  if (v10)
  {
    if (*(v2 + 31) < v9)
    {
      *(v2 + 31) = v9;
    }

    if (*(v2 + 30) <= v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    *(v2 + 31) = v9;
  }

  *(v2 + 30) = v9;
LABEL_36:
  v2[16] += v9;
  *(v2 + 34) = v10 + 1;
LABEL_37:
  v11 = [*(*(a1 + 32) + 80) sampleCount];
  if (!v11)
  {
    goto LABEL_46;
  }

  v12 = *(v2 + 40);
  if (v12)
  {
    if (*(v2 + 37) < v11)
    {
      *(v2 + 37) = v11;
    }

    if (*(v2 + 36) <= v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    *(v2 + 37) = v11;
  }

  *(v2 + 36) = v11;
LABEL_45:
  v2[19] += v11;
  *(v2 + 40) = v12 + 1;
LABEL_46:
  v13 = *(a1 + 72);
  if (!v13)
  {
    goto LABEL_55;
  }

  v14 = *(v2 + 46);
  if (v14)
  {
    if (*(v2 + 43) < v13)
    {
      *(v2 + 43) = v13;
    }

    if (*(v2 + 42) <= v13)
    {
      goto LABEL_54;
    }
  }

  else
  {
    *(v2 + 43) = v13;
  }

  *(v2 + 42) = v13;
LABEL_54:
  v2[22] += v13;
  *(v2 + 46) = v14 + 1;
LABEL_55:
  if ([*(a1 + 40) isFramebufferOnly])
  {
    ++*(v2 + 7);
  }

  if (([*(a1 + 40) usage] & 2) != 0)
  {
    ++*(v2 + 8);
  }

  result = [*(a1 + 40) usage];
  if ((result & 4) != 0)
  {
    ++*(v2 + 9);
  }

  ++*(v2 + 6);
  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = -[MTLTelemetryTexture initWithBaseTexture:device:texture:pixelFormat:textureType:levels:slices:swizzle:]([MTLTelemetryTexture alloc], "initWithBaseTexture:device:texture:pixelFormat:textureType:levels:slices:swizzle:", v6, -[MTLToolsObject device](self, "device"), self, format, [v6 textureType], 0, objc_msgSend(v6, "arrayLength"), 0, 0, 84148994);

    return v7;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices
{
  length = slices.length;
  location = slices.location;
  v8 = levels.length;
  v9 = levels.location;
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v14 = result;
    84148994 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:[(MTLToolsObject *)self device] texture:self pixelFormat:format textureType:type levels:v9 slices:v8 swizzle:location, length, 84148994];

    return 84148994;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle
{
  length = slices.length;
  location = slices.location;
  v9 = levels.length;
  v10 = levels.location;
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v15 = result;
    v16 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:[(MTLToolsObject *)self device] texture:self pixelFormat:format textureType:type levels:v10 slices:v9 swizzle:location, length, *&swizzle];

    return v16;
  }

  return result;
}

@end