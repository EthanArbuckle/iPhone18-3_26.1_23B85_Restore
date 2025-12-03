@interface MTLDebugTexture
- (BOOL)evaluateSloppyUsage:(unint64_t)usage;
- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device buffer:(id)buffer offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image descriptor:(id)descriptor;
- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device buffer:(id)buffer offset:(unint64_t)offset bytesPerRow:(unint64_t)row descriptor:(id)descriptor;
- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device placementSparsePageSize:(int64_t)size;
- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device plane:(unint64_t)plane;
- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device texture:(id)a5;
- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device texture:(id)a5 pixelFormat:(unint64_t)format;
- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device texture:(id)a5 pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices;
- (MTLDebugTexture)initWithBaseTexture:(id)texture heap:(id)heap device:(id)device;
- (id).cxx_construct;
- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice;
- (id)newTextureViewWithDescriptor:(id)descriptor;
- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index;
- (uint64_t)dealloc;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (void)addUsedRenderTarget:(unint64_t)target slices:(_NSRange)slices;
- (void)dealloc;
- (void)getBytes:(void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image fromRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)getBytes:(void *)bytes bytesPerRow:(unint64_t)row fromRegion:(id *)region mipmapLevel:(unint64_t)level;
- (void)makeAliasable;
- (void)removeUsedRenderTarget:(unint64_t)target slices:(_NSRange)slices;
- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice withBytes:(const void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row;
@end

@implementation MTLDebugTexture

- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device buffer:(id)buffer offset:(unint64_t)offset bytesPerRow:(unint64_t)row descriptor:(id)descriptor
{
  v20.receiver = self;
  v20.super_class = MTLDebugTexture;
  v13 = [(MTLToolsTexture *)&v20 initWithBaseObject:texture parent:device buffer:buffer];
  if (v13)
  {
    *(v13 + 33) = [[MTLDebugResource alloc] initWithBaseObject:texture];
    cpuCacheMode = [texture cpuCacheMode];
    *(v13 + 5) = cpuCacheMode | (16 * [texture storageMode]);
    *(v13 + 17) = 0;
    *(v13 + 34) = offset;
    *(v13 + 35) = row;
    *(v13 + 36) = 0;
    atomic_store(0, v13 + 36);
    v13[148] = 0;
    [device originalObject];
    [texture pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v13 + 15) = v19;
    *(v13 + 88) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v16;
    v13[256] = 0;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v13 + 27, 0, 0);
    *(v13 + 38) = [descriptor placementSparsePageSize];
  }

  return v13;
}

- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device buffer:(id)buffer offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image descriptor:(id)descriptor
{
  v22.receiver = self;
  v22.super_class = MTLDebugTexture;
  v14 = [(MTLToolsTexture *)&v22 initWithBaseObject:texture parent:device buffer:buffer];
  if (v14)
  {
    *(v14 + 33) = [[MTLDebugResource alloc] initWithBaseObject:texture];
    cpuCacheMode = [texture cpuCacheMode];
    *(v14 + 5) = cpuCacheMode | (16 * [texture storageMode]);
    *(v14 + 17) = 0;
    *(v14 + 34) = offset;
    *(v14 + 35) = row;
    *(v14 + 36) = image;
    atomic_store(0, v14 + 36);
    v14[148] = 0;
    [device originalObject];
    [texture pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v14 + 15) = v21;
    *(v14 + 88) = v19;
    *(v14 + 104) = v20;
    *(v14 + 72) = v18;
    v14[256] = 1;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v14 + 27, 0, 0);
    *(v14 + 38) = [descriptor placementSparsePageSize];
  }

  return v14;
}

- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device plane:(unint64_t)plane
{
  v15.receiver = self;
  v15.super_class = MTLDebugTexture;
  v8 = [MTLToolsResource initWithBaseObject:sel_initWithBaseObject_parent_ parent:?];
  if (v8)
  {
    *(v8 + 33) = [[MTLDebugResource alloc] initWithBaseObject:texture];
    cpuCacheMode = [texture cpuCacheMode];
    *(v8 + 5) = cpuCacheMode | (16 * [texture storageMode]);
    *(v8 + 17) = 0;
    *(v8 + 37) = plane;
    atomic_store(0, v8 + 36);
    v8[148] = 0;
    [device originalObject];
    [texture pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v8 + 15) = v14;
    *(v8 + 88) = v12;
    *(v8 + 104) = v13;
    *(v8 + 72) = v11;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v8 + 27, 0, 0);
  }

  return v8;
}

- (MTLDebugTexture)initWithBaseTexture:(id)texture heap:(id)heap device:(id)device
{
  v14.receiver = self;
  v14.super_class = MTLDebugTexture;
  v7 = [(MTLToolsResource *)&v14 initWithBaseObject:texture parent:heap heap:heap];
  if (v7)
  {
    *(v7 + 33) = [[MTLDebugResource alloc] initWithBaseObject:texture];
    cpuCacheMode = [texture cpuCacheMode];
    *(v7 + 5) = cpuCacheMode | (16 * [texture storageMode]);
    *(v7 + 17) = 0;
    *(v7 + 37) = 0;
    atomic_store(0, v7 + 36);
    v7[148] = 0;
    [device originalObject];
    [texture pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v7 + 15) = v13;
    *(v7 + 88) = v11;
    *(v7 + 104) = v12;
    *(v7 + 72) = v10;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v7 + 27, 0, 0);
  }

  return v7;
}

- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device placementSparsePageSize:(int64_t)size
{
  v15.receiver = self;
  v15.super_class = MTLDebugTexture;
  v8 = [MTLToolsResource initWithBaseObject:sel_initWithBaseObject_parent_ parent:?];
  if (v8)
  {
    *(v8 + 33) = [[MTLDebugResource alloc] initWithBaseObject:texture];
    cpuCacheMode = [texture cpuCacheMode];
    *(v8 + 5) = cpuCacheMode | (16 * [texture storageMode]);
    *(v8 + 17) = 0;
    *(v8 + 37) = 0;
    atomic_store(0, v8 + 36);
    v8[148] = 0;
    [device originalObject];
    [texture pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v8 + 15) = v14;
    *(v8 + 88) = v12;
    *(v8 + 104) = v13;
    *(v8 + 72) = v11;
    *(v8 + 38) = size;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v8 + 27, 0, 0);
  }

  return v8;
}

- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device texture:(id)a5
{
  v14.receiver = self;
  v14.super_class = MTLDebugTexture;
  v7 = [(MTLToolsTexture *)&v14 initWithBaseObject:texture parent:device parentTexture:a5];
  if (v7)
  {
    *(v7 + 33) = [[MTLDebugResource alloc] initWithBaseObject:texture];
    atomic_store(0, v7 + 36);
    v7[148] = 0;
    cpuCacheMode = [texture cpuCacheMode];
    *(v7 + 5) = cpuCacheMode | (16 * [texture storageMode]);
    *(v7 + 17) = 0;
    [device originalObject];
    [texture pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v7 + 15) = v13;
    *(v7 + 88) = v11;
    *(v7 + 104) = v12;
    *(v7 + 72) = v10;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v7 + 27, 0, 0);
  }

  return v7;
}

- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device texture:(id)a5 pixelFormat:(unint64_t)format
{
  format = [(MTLDebugTexture *)self initWithBaseTexture:texture device:device texture:a5, format];
  if (format)
  {
    [device originalObject];
    [texture pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(format + 15) = v13;
    *(format + 88) = v11;
    *(format + 104) = v12;
    *(format + 72) = v10;
  }

  return format;
}

- (MTLDebugTexture)initWithBaseTexture:(id)texture device:(id)device texture:(id)a5 pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices
{
  type = [(MTLDebugTexture *)self initWithBaseTexture:texture device:device texture:a5, format, type];
  if (type)
  {
    [device originalObject];
    [texture pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(type + 15) = v16;
    *(type + 88) = v14;
    *(type + 104) = v15;
    *(type + 72) = v13;
  }

  return type;
}

- (void)dealloc
{
  if (*(self + 17) && ![(MTLDebugTexture *)self evaluateSloppyUsage:?]&& +[MTLDebugDevice complainAboutSloppyTextureUsage])
  {
    [(MTLDebugTexture *)self dealloc];
  }

  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(self + 27);

  v3.receiver = self;
  v3.super_class = MTLDebugTexture;
  [(MTLToolsTexture *)&v3 dealloc];
}

- (void)makeAliasable
{
  if ([(MTLToolsTexture *)self isSparse])
  {
    [MTLDebugTexture makeAliasable];
  }

  if ([-[MTLToolsObject baseObject](self "baseObject")] == 3)
  {
    [MTLDebugTexture makeAliasable];
  }

  if (![-[MTLToolsObject baseObject](self "baseObject")])
  {
    [MTLDebugTexture makeAliasable];
  }

  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    [MTLDebugTexture makeAliasable];
  }

  if (![-[MTLToolsObject baseObject](self "baseObject")])
  {
    baseObject = [(MTLToolsObject *)self baseObject];

    [baseObject makeAliasable];
  }
}

- (BOOL)evaluateSloppyUsage:(unint64_t)usage
{
  usage = [(MTLToolsTexture *)self usage];
  v6 = ([(MTLToolsTexture *)self usage]& 0x10000) == 0 || (usage & 2) == 0;
  v7 = usage | 2;
  if (v6)
  {
    v7 = usage;
  }

  return (v7 & 0x17) == usage;
}

- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice withBytes:(const void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  *v18 = *&region->var0.var0;
  *&v18[16] = region->var0.var2;
  var1 = region->var1;
  _validateReplaceRegion(self, v18, &var1, slice, level, bytes, row, 1, image, v17);
  [(MTLToolsResource *)self validateCPUWriteable];
  baseObject = [(MTLToolsObject *)self baseObject];
  v16 = *&region->var0.var2;
  *v18 = *&region->var0.var0;
  *&v18[16] = v16;
  v19 = *&region->var1.var1;
  [baseObject replaceRegion:v18 mipmapLevel:level slice:slice withBytes:bytes bytesPerRow:row bytesPerImage:image];
}

- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row
{
  *v14 = *&region->var0.var0;
  *&v14[16] = region->var0.var2;
  var1 = region->var1;
  _validateReplaceRegion(self, v14, &var1, 0, level, bytes, row, 0, 0, v13);
  [(MTLToolsResource *)self validateCPUWriteable];
  baseObject = [(MTLToolsObject *)self baseObject];
  v12 = *&region->var0.var2;
  *v14 = *&region->var0.var0;
  *&v14[16] = v12;
  v15 = *&region->var1.var1;
  [baseObject replaceRegion:v14 mipmapLevel:level withBytes:bytes bytesPerRow:row];
}

- (void)getBytes:(void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image fromRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice
{
  *v18 = *&region->var0.var0;
  *&v18[16] = region->var0.var2;
  var1 = region->var1;
  _validateGetBytes(self, v18, &var1, slice, level, bytes, row, 1, image, v17);
  [(MTLToolsResource *)self validateCPUReadable];
  baseObject = [(MTLToolsObject *)self baseObject];
  v16 = *&region->var0.var2;
  *v18 = *&region->var0.var0;
  *&v18[16] = v16;
  v19 = *&region->var1.var1;
  [baseObject getBytes:bytes bytesPerRow:row bytesPerImage:image fromRegion:v18 mipmapLevel:level slice:slice];
}

- (void)getBytes:(void *)bytes bytesPerRow:(unint64_t)row fromRegion:(id *)region mipmapLevel:(unint64_t)level
{
  *v14 = *&region->var0.var0;
  *&v14[16] = region->var0.var2;
  var1 = region->var1;
  _validateGetBytes(self, v14, &var1, 0, level, bytes, row, 0, 0, v13);
  [(MTLToolsResource *)self validateCPUReadable];
  baseObject = [(MTLToolsObject *)self baseObject];
  v12 = *&region->var0.var2;
  *v14 = *&region->var0.var0;
  *&v14[16] = v12;
  v15 = *&region->var1.var1;
  [baseObject getBytes:bytes bytesPerRow:row fromRegion:v14 mipmapLevel:level];
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index
{
  _validateTextureView(self, format, [(MTLToolsTexture *)self textureType]);
  baseObject = [(MTLToolsObject *)self baseObject];
  if (index)
  {
    v8 = [baseObject newTextureViewWithPixelFormat:format resourceIndex:index];
  }

  else
  {
    v8 = [baseObject newTextureViewWithPixelFormat:format];
  }

  v9 = v8;
  if (!v8)
  {
    return 0;
  }

  v10 = [[MTLDebugTexture alloc] initWithBaseTexture:v8 device:[(MTLToolsObject *)self device] texture:self pixelFormat:format];

  return v10;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index
{
  length = slices.length;
  location = slices.location;
  v9 = levels.length;
  v10 = levels.location;
  _validateTextureView(self, format, type);
  baseObject = [(MTLToolsObject *)self baseObject];
  if (index)
  {
    index = [baseObject newTextureViewWithPixelFormat:format textureType:type levels:v10 slices:v9 resourceIndex:location, length, index];
  }

  else
  {
    index = [baseObject newTextureViewWithPixelFormat:format textureType:type levels:v10 slices:v9, location, length];
  }

  v16 = index;
  if (!index)
  {
    return 0;
  }

  v17 = [[MTLDebugTexture alloc] initWithBaseTexture:index device:[(MTLToolsObject *)self device] texture:self pixelFormat:format textureType:type levels:v10 slices:v9, location, length];

  return v17;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index
{
  length = slices.length;
  location = slices.location;
  v10 = levels.length;
  v11 = levels.location;
  _validateTextureView(self, format, type);
  baseObject = [(MTLToolsObject *)self baseObject];
  if (index)
  {
    index = [baseObject newTextureViewWithPixelFormat:format textureType:type levels:v11 slices:v10 swizzle:location resourceIndex:length, *&swizzle, index];
  }

  else
  {
    index = [baseObject newTextureViewWithPixelFormat:format textureType:type levels:v11 slices:v10 swizzle:location, length, *&swizzle];
  }

  v17 = index;
  if (!index)
  {
    return 0;
  }

  v18 = [[MTLDebugTexture alloc] initWithBaseTexture:index device:[(MTLToolsObject *)self device] texture:self pixelFormat:format textureType:type levels:v11 slices:v10, location, length];

  return v18;
}

- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice
{
  _validateTextureView(self, format, type);
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v12 = result;
    v13 = [[MTLDebugTexture alloc] initWithBaseTexture:result device:[(MTLToolsObject *)self device] texture:self pixelFormat:format textureType:type levels:level slices:1, slice, 1];

    return v13;
  }

  return result;
}

- (id)newTextureViewWithDescriptor:(id)descriptor
{
  _validateTextureView(self, [descriptor pixelFormat], objc_msgSend(descriptor, "textureType"));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  writeAccessPattern = [(MTLToolsTexture *)self writeAccessPattern];
  writeAccessPattern2 = [descriptor writeAccessPattern];
  if (writeAccessPattern != writeAccessPattern2 && ![(MTLToolsTexture *)self allowGPUOptimizedContents])
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor writeAccessPattern] == 2 && -[MTLToolsTexture usage](self, "usage") == 4)
  {
    _MTLMessageContextPush_();
  }

  if (writeAccessPattern != writeAccessPattern2 && ([(MTLToolsTexture *)self compressionFeedback]& 2) != 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [MTLDebugTexture alloc];
  device = [(MTLToolsObject *)self device];
  pixelFormat = [descriptor pixelFormat];
  textureType = [descriptor textureType];
  levels = [descriptor levels];
  v15 = v14;
  slices = [descriptor slices];
  v18 = [(MTLDebugTexture *)v9 initWithBaseTexture:v8 device:device texture:self pixelFormat:pixelFormat textureType:textureType levels:levels slices:v15, slices, v17];

  return v18;
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    _MTLMessageContextPush_();
  }

  if (state != 1)
  {
    if (state != 2)
    {
      if (atomic_load(self + 36))
      {
        _MTLMessageContextPush_();
      }
    }

    *(self + 148) = 1;
  }

  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)addUsedRenderTarget:(unint64_t)target slices:(_NSRange)slices
{
  length = slices.length;
  location = slices.location;
  selfCopy = self;
  parentTexture = [(MTLToolsTexture *)self parentTexture];
  if (parentTexture)
  {
    do
    {
      v9 = parentTexture;
      target += [(MTLToolsTexture *)selfCopy parentRelativeLevel];
      location += [(MTLToolsTexture *)selfCopy parentRelativeSlice];
      parentTexture = [v9 parentTexture];
      selfCopy = v9;
    }

    while (parentTexture);
  }

  else
  {
    v9 = selfCopy;
  }

  v11[0] = target;
  v11[1] = location;
  v11[2] = length;
  std::mutex::lock((v9 + 152));
  v10 = std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::find<SubView>(v9 + 27, v11);
  if (v10)
  {
    ++v10[5];
  }

  else
  {
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__emplace_unique_key_args<SubView,SubView const&,int>(v9 + 27, v11);
  }

  std::mutex::unlock((v9 + 152));
}

- (void)removeUsedRenderTarget:(unint64_t)target slices:(_NSRange)slices
{
  length = slices.length;
  location = slices.location;
  selfCopy = self;
  parentTexture = [(MTLToolsTexture *)self parentTexture];
  if (parentTexture)
  {
    do
    {
      v9 = parentTexture;
      target += [(MTLToolsTexture *)selfCopy parentRelativeLevel];
      location += [(MTLToolsTexture *)selfCopy parentRelativeSlice];
      parentTexture = [v9 parentTexture];
      selfCopy = v9;
    }

    while (parentTexture);
  }

  else
  {
    v9 = selfCopy;
  }

  v12[0] = target;
  v12[1] = location;
  v12[2] = length;
  std::mutex::lock((v9 + 152));
  v10 = std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::find<SubView>(v9 + 27, v12);
  if (v10)
  {
    v11 = v10[5] - 1;
    v10[5] = v11;
    if (!v11)
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(v9 + 27, v10);
    }
  }

  std::mutex::unlock((v9 + 152));
}

- (id).cxx_construct
{
  *(self + 19) = 850045863;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 26) = 0;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 62) = 1065353216;
  return self;
}

- (uint64_t)dealloc
{
  [self usage];
  v4 = *a2;
  return MTLReportFailure();
}

@end