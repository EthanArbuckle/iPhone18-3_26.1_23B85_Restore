@interface MTLDebugTexture
- (BOOL)evaluateSloppyUsage:(unint64_t)a3;
- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 buffer:(id)a5 offset:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 descriptor:(id)a9;
- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 buffer:(id)a5 offset:(unint64_t)a6 bytesPerRow:(unint64_t)a7 descriptor:(id)a8;
- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 placementSparsePageSize:(int64_t)a5;
- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 plane:(unint64_t)a5;
- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 texture:(id)a5;
- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 texture:(id)a5 pixelFormat:(unint64_t)a6;
- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 texture:(id)a5 pixelFormat:(unint64_t)a6 textureType:(unint64_t)a7 levels:(_NSRange)a8 slices:(_NSRange)a9;
- (MTLDebugTexture)initWithBaseTexture:(id)a3 heap:(id)a4 device:(id)a5;
- (id).cxx_construct;
- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 level:(unint64_t)a5 slice:(unint64_t)a6;
- (id)newTextureViewWithDescriptor:(id)a3;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 resourceIndex:(unint64_t)a7;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7 resourceIndex:(unint64_t)a8;
- (uint64_t)dealloc;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (void)addUsedRenderTarget:(unint64_t)a3 slices:(_NSRange)a4;
- (void)dealloc;
- (void)getBytes:(void *)a3 bytesPerRow:(unint64_t)a4 bytesPerImage:(unint64_t)a5 fromRegion:(id *)a6 mipmapLevel:(unint64_t)a7 slice:(unint64_t)a8;
- (void)getBytes:(void *)a3 bytesPerRow:(unint64_t)a4 fromRegion:(id *)a5 mipmapLevel:(unint64_t)a6;
- (void)makeAliasable;
- (void)removeUsedRenderTarget:(unint64_t)a3 slices:(_NSRange)a4;
- (void)replaceRegion:(id *)a3 mipmapLevel:(unint64_t)a4 slice:(unint64_t)a5 withBytes:(const void *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8;
- (void)replaceRegion:(id *)a3 mipmapLevel:(unint64_t)a4 withBytes:(const void *)a5 bytesPerRow:(unint64_t)a6;
@end

@implementation MTLDebugTexture

- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 buffer:(id)a5 offset:(unint64_t)a6 bytesPerRow:(unint64_t)a7 descriptor:(id)a8
{
  v20.receiver = self;
  v20.super_class = MTLDebugTexture;
  v13 = [(MTLToolsTexture *)&v20 initWithBaseObject:a3 parent:a4 buffer:a5];
  if (v13)
  {
    *(v13 + 33) = [[MTLDebugResource alloc] initWithBaseObject:a3];
    v14 = [a3 cpuCacheMode];
    *(v13 + 5) = v14 | (16 * [a3 storageMode]);
    *(v13 + 17) = 0;
    *(v13 + 34) = a6;
    *(v13 + 35) = a7;
    *(v13 + 36) = 0;
    atomic_store(0, v13 + 36);
    v13[148] = 0;
    [a4 originalObject];
    [a3 pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v13 + 15) = v19;
    *(v13 + 88) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v16;
    v13[256] = 0;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v13 + 27, 0, 0);
    *(v13 + 38) = [a8 placementSparsePageSize];
  }

  return v13;
}

- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 buffer:(id)a5 offset:(unint64_t)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 descriptor:(id)a9
{
  v22.receiver = self;
  v22.super_class = MTLDebugTexture;
  v14 = [(MTLToolsTexture *)&v22 initWithBaseObject:a3 parent:a4 buffer:a5];
  if (v14)
  {
    *(v14 + 33) = [[MTLDebugResource alloc] initWithBaseObject:a3];
    v16 = [a3 cpuCacheMode];
    *(v14 + 5) = v16 | (16 * [a3 storageMode]);
    *(v14 + 17) = 0;
    *(v14 + 34) = a6;
    *(v14 + 35) = a7;
    *(v14 + 36) = a8;
    atomic_store(0, v14 + 36);
    v14[148] = 0;
    [a4 originalObject];
    [a3 pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v14 + 15) = v21;
    *(v14 + 88) = v19;
    *(v14 + 104) = v20;
    *(v14 + 72) = v18;
    v14[256] = 1;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v14 + 27, 0, 0);
    *(v14 + 38) = [a9 placementSparsePageSize];
  }

  return v14;
}

- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 plane:(unint64_t)a5
{
  v15.receiver = self;
  v15.super_class = MTLDebugTexture;
  v8 = [MTLToolsResource initWithBaseObject:sel_initWithBaseObject_parent_ parent:?];
  if (v8)
  {
    *(v8 + 33) = [[MTLDebugResource alloc] initWithBaseObject:a3];
    v9 = [a3 cpuCacheMode];
    *(v8 + 5) = v9 | (16 * [a3 storageMode]);
    *(v8 + 17) = 0;
    *(v8 + 37) = a5;
    atomic_store(0, v8 + 36);
    v8[148] = 0;
    [a4 originalObject];
    [a3 pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v8 + 15) = v14;
    *(v8 + 88) = v12;
    *(v8 + 104) = v13;
    *(v8 + 72) = v11;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v8 + 27, 0, 0);
  }

  return v8;
}

- (MTLDebugTexture)initWithBaseTexture:(id)a3 heap:(id)a4 device:(id)a5
{
  v14.receiver = self;
  v14.super_class = MTLDebugTexture;
  v7 = [(MTLToolsResource *)&v14 initWithBaseObject:a3 parent:a4 heap:a4];
  if (v7)
  {
    *(v7 + 33) = [[MTLDebugResource alloc] initWithBaseObject:a3];
    v8 = [a3 cpuCacheMode];
    *(v7 + 5) = v8 | (16 * [a3 storageMode]);
    *(v7 + 17) = 0;
    *(v7 + 37) = 0;
    atomic_store(0, v7 + 36);
    v7[148] = 0;
    [a5 originalObject];
    [a3 pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v7 + 15) = v13;
    *(v7 + 88) = v11;
    *(v7 + 104) = v12;
    *(v7 + 72) = v10;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v7 + 27, 0, 0);
  }

  return v7;
}

- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 placementSparsePageSize:(int64_t)a5
{
  v15.receiver = self;
  v15.super_class = MTLDebugTexture;
  v8 = [MTLToolsResource initWithBaseObject:sel_initWithBaseObject_parent_ parent:?];
  if (v8)
  {
    *(v8 + 33) = [[MTLDebugResource alloc] initWithBaseObject:a3];
    v9 = [a3 cpuCacheMode];
    *(v8 + 5) = v9 | (16 * [a3 storageMode]);
    *(v8 + 17) = 0;
    *(v8 + 37) = 0;
    atomic_store(0, v8 + 36);
    v8[148] = 0;
    [a4 originalObject];
    [a3 pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v8 + 15) = v14;
    *(v8 + 88) = v12;
    *(v8 + 104) = v13;
    *(v8 + 72) = v11;
    *(v8 + 38) = a5;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v8 + 27, 0, 0);
  }

  return v8;
}

- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 texture:(id)a5
{
  v14.receiver = self;
  v14.super_class = MTLDebugTexture;
  v7 = [(MTLToolsTexture *)&v14 initWithBaseObject:a3 parent:a4 parentTexture:a5];
  if (v7)
  {
    *(v7 + 33) = [[MTLDebugResource alloc] initWithBaseObject:a3];
    atomic_store(0, v7 + 36);
    v7[148] = 0;
    v8 = [a3 cpuCacheMode];
    *(v7 + 5) = v8 | (16 * [a3 storageMode]);
    *(v7 + 17) = 0;
    [a4 originalObject];
    [a3 pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v7 + 15) = v13;
    *(v7 + 88) = v11;
    *(v7 + 104) = v12;
    *(v7 + 72) = v10;
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(v7 + 27, 0, 0);
  }

  return v7;
}

- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 texture:(id)a5 pixelFormat:(unint64_t)a6
{
  v8 = [(MTLDebugTexture *)self initWithBaseTexture:a3 device:a4 texture:a5, a6];
  if (v8)
  {
    [a4 originalObject];
    [a3 pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v8 + 15) = v13;
    *(v8 + 88) = v11;
    *(v8 + 104) = v12;
    *(v8 + 72) = v10;
  }

  return v8;
}

- (MTLDebugTexture)initWithBaseTexture:(id)a3 device:(id)a4 texture:(id)a5 pixelFormat:(unint64_t)a6 textureType:(unint64_t)a7 levels:(_NSRange)a8 slices:(_NSRange)a9
{
  v11 = [(MTLDebugTexture *)self initWithBaseTexture:a3 device:a4 texture:a5, a6, a7];
  if (v11)
  {
    [a4 originalObject];
    [a3 pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    *(v11 + 15) = v16;
    *(v11 + 88) = v14;
    *(v11 + 104) = v15;
    *(v11 + 72) = v13;
  }

  return v11;
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
    v3 = [(MTLToolsObject *)self baseObject];

    [v3 makeAliasable];
  }
}

- (BOOL)evaluateSloppyUsage:(unint64_t)a3
{
  v5 = [(MTLToolsTexture *)self usage];
  v6 = ([(MTLToolsTexture *)self usage]& 0x10000) == 0 || (a3 & 2) == 0;
  v7 = v5 | 2;
  if (v6)
  {
    v7 = v5;
  }

  return (v7 & 0x17) == a3;
}

- (void)replaceRegion:(id *)a3 mipmapLevel:(unint64_t)a4 slice:(unint64_t)a5 withBytes:(const void *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8
{
  *v18 = *&a3->var0.var0;
  *&v18[16] = a3->var0.var2;
  var1 = a3->var1;
  _validateReplaceRegion(self, v18, &var1, a5, a4, a6, a7, 1, a8, v17);
  [(MTLToolsResource *)self validateCPUWriteable];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = *&a3->var0.var2;
  *v18 = *&a3->var0.var0;
  *&v18[16] = v16;
  v19 = *&a3->var1.var1;
  [v15 replaceRegion:v18 mipmapLevel:a4 slice:a5 withBytes:a6 bytesPerRow:a7 bytesPerImage:a8];
}

- (void)replaceRegion:(id *)a3 mipmapLevel:(unint64_t)a4 withBytes:(const void *)a5 bytesPerRow:(unint64_t)a6
{
  *v14 = *&a3->var0.var0;
  *&v14[16] = a3->var0.var2;
  var1 = a3->var1;
  _validateReplaceRegion(self, v14, &var1, 0, a4, a5, a6, 0, 0, v13);
  [(MTLToolsResource *)self validateCPUWriteable];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = *&a3->var0.var2;
  *v14 = *&a3->var0.var0;
  *&v14[16] = v12;
  v15 = *&a3->var1.var1;
  [v11 replaceRegion:v14 mipmapLevel:a4 withBytes:a5 bytesPerRow:a6];
}

- (void)getBytes:(void *)a3 bytesPerRow:(unint64_t)a4 bytesPerImage:(unint64_t)a5 fromRegion:(id *)a6 mipmapLevel:(unint64_t)a7 slice:(unint64_t)a8
{
  *v18 = *&a6->var0.var0;
  *&v18[16] = a6->var0.var2;
  var1 = a6->var1;
  _validateGetBytes(self, v18, &var1, a8, a7, a3, a4, 1, a5, v17);
  [(MTLToolsResource *)self validateCPUReadable];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = *&a6->var0.var2;
  *v18 = *&a6->var0.var0;
  *&v18[16] = v16;
  v19 = *&a6->var1.var1;
  [v15 getBytes:a3 bytesPerRow:a4 bytesPerImage:a5 fromRegion:v18 mipmapLevel:a7 slice:a8];
}

- (void)getBytes:(void *)a3 bytesPerRow:(unint64_t)a4 fromRegion:(id *)a5 mipmapLevel:(unint64_t)a6
{
  *v14 = *&a5->var0.var0;
  *&v14[16] = a5->var0.var2;
  var1 = a5->var1;
  _validateGetBytes(self, v14, &var1, 0, a6, a3, a4, 0, 0, v13);
  [(MTLToolsResource *)self validateCPUReadable];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = *&a5->var0.var2;
  *v14 = *&a5->var0.var0;
  *&v14[16] = v12;
  v15 = *&a5->var1.var1;
  [v11 getBytes:a3 bytesPerRow:a4 fromRegion:v14 mipmapLevel:a6];
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
  _validateTextureView(self, a3, [(MTLToolsTexture *)self textureType]);
  v7 = [(MTLToolsObject *)self baseObject];
  if (a4)
  {
    v8 = [v7 newTextureViewWithPixelFormat:a3 resourceIndex:a4];
  }

  else
  {
    v8 = [v7 newTextureViewWithPixelFormat:a3];
  }

  v9 = v8;
  if (!v8)
  {
    return 0;
  }

  v10 = [[MTLDebugTexture alloc] initWithBaseTexture:v8 device:[(MTLToolsObject *)self device] texture:self pixelFormat:a3];

  return v10;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 resourceIndex:(unint64_t)a7
{
  length = a6.length;
  location = a6.location;
  v9 = a5.length;
  v10 = a5.location;
  _validateTextureView(self, a3, a4);
  v14 = [(MTLToolsObject *)self baseObject];
  if (a7)
  {
    v15 = [v14 newTextureViewWithPixelFormat:a3 textureType:a4 levels:v10 slices:v9 resourceIndex:location, length, a7];
  }

  else
  {
    v15 = [v14 newTextureViewWithPixelFormat:a3 textureType:a4 levels:v10 slices:v9, location, length];
  }

  v16 = v15;
  if (!v15)
  {
    return 0;
  }

  v17 = [[MTLDebugTexture alloc] initWithBaseTexture:v15 device:[(MTLToolsObject *)self device] texture:self pixelFormat:a3 textureType:a4 levels:v10 slices:v9, location, length];

  return v17;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7 resourceIndex:(unint64_t)a8
{
  length = a6.length;
  location = a6.location;
  v10 = a5.length;
  v11 = a5.location;
  _validateTextureView(self, a3, a4);
  v15 = [(MTLToolsObject *)self baseObject];
  if (a8)
  {
    v16 = [v15 newTextureViewWithPixelFormat:a3 textureType:a4 levels:v11 slices:v10 swizzle:location resourceIndex:length, *&a7, a8];
  }

  else
  {
    v16 = [v15 newTextureViewWithPixelFormat:a3 textureType:a4 levels:v11 slices:v10 swizzle:location, length, *&a7];
  }

  v17 = v16;
  if (!v16)
  {
    return 0;
  }

  v18 = [[MTLDebugTexture alloc] initWithBaseTexture:v16 device:[(MTLToolsObject *)self device] texture:self pixelFormat:a3 textureType:a4 levels:v11 slices:v10, location, length];

  return v18;
}

- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 level:(unint64_t)a5 slice:(unint64_t)a6
{
  _validateTextureView(self, a3, a4);
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v12 = result;
    v13 = [[MTLDebugTexture alloc] initWithBaseTexture:result device:[(MTLToolsObject *)self device] texture:self pixelFormat:a3 textureType:a4 levels:a5 slices:1, a6, 1];

    return v13;
  }

  return result;
}

- (id)newTextureViewWithDescriptor:(id)a3
{
  _validateTextureView(self, [a3 pixelFormat], objc_msgSend(a3, "textureType"));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v5 = [(MTLToolsTexture *)self writeAccessPattern];
  v6 = [a3 writeAccessPattern];
  if (v5 != v6 && ![(MTLToolsTexture *)self allowGPUOptimizedContents])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 writeAccessPattern] == 2 && -[MTLToolsTexture usage](self, "usage") == 4)
  {
    _MTLMessageContextPush_();
  }

  if (v5 != v6 && ([(MTLToolsTexture *)self compressionFeedback]& 2) != 0)
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
  v10 = [(MTLToolsObject *)self device];
  v11 = [a3 pixelFormat];
  v12 = [a3 textureType];
  v13 = [a3 levels];
  v15 = v14;
  v16 = [a3 slices];
  v18 = [(MTLDebugTexture *)v9 initWithBaseTexture:v8 device:v10 texture:self pixelFormat:v11 textureType:v12 levels:v13 slices:v15, v16, v17];

  return v18;
}

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    _MTLMessageContextPush_();
  }

  if (a3 != 1)
  {
    if (a3 != 2)
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

- (void)addUsedRenderTarget:(unint64_t)a3 slices:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = self;
  v8 = [(MTLToolsTexture *)self parentTexture];
  if (v8)
  {
    do
    {
      v9 = v8;
      a3 += [(MTLToolsTexture *)v7 parentRelativeLevel];
      location += [(MTLToolsTexture *)v7 parentRelativeSlice];
      v8 = [v9 parentTexture];
      v7 = v9;
    }

    while (v8);
  }

  else
  {
    v9 = v7;
  }

  v11[0] = a3;
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

- (void)removeUsedRenderTarget:(unint64_t)a3 slices:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = self;
  v8 = [(MTLToolsTexture *)self parentTexture];
  if (v8)
  {
    do
    {
      v9 = v8;
      a3 += [(MTLToolsTexture *)v7 parentRelativeLevel];
      location += [(MTLToolsTexture *)v7 parentRelativeSlice];
      v8 = [v9 parentTexture];
      v7 = v9;
    }

    while (v8);
  }

  else
  {
    v9 = v7;
  }

  v12[0] = a3;
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
  [a1 usage];
  v4 = *a2;
  return MTLReportFailure();
}

@end