@interface MTLToolsTexture
- ($14D77461FF5D83CAEC4252578BA76F85)swizzle;
- (BOOL)allowGPUOptimizedContents;
- (BOOL)canGenerateMipmapLevels;
- (BOOL)isCompressed;
- (BOOL)isDrawable;
- (BOOL)isFramebufferOnly;
- (BOOL)isShareable;
- (BOOL)isSparse;
- (MTLResource)rootResource;
- (MTLResourceID)gpuResourceID;
- (MTLToolsTexture)initWithBaseObject:(id)a3 parent:(id)a4 buffer:(id)a5;
- (MTLToolsTexture)initWithBaseObject:(id)a3 parent:(id)a4 parentTexture:(id)a5;
- (__IOSurface)iosurface;
- (id)formattedDescription:(unint64_t)a3;
- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 level:(unint64_t)a5 slice:(unint64_t)a6;
- (id)newSharedTextureHandle;
- (id)newTextureViewWithDescriptor:(id)a3;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 resourceIndex:(unint64_t)a7;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7 resourceIndex:(unint64_t)a8;
- (id)realRootResource;
- (int64_t)compressionFeedback;
- (int64_t)compressionType;
- (int64_t)sparseTextureTier;
- (int64_t)writeAccessPattern;
- (unint64_t)arrayLength;
- (unint64_t)bufferBytesPerRow;
- (unint64_t)bufferOffset;
- (unint64_t)colorSpaceConversionMatrix;
- (unint64_t)compressionFootprint;
- (unint64_t)depth;
- (unint64_t)firstMipmapInTail;
- (unint64_t)gpuAddress;
- (unint64_t)gpuHandle;
- (unint64_t)height;
- (unint64_t)iosurfacePlane;
- (unint64_t)mipmapLevelCount;
- (unint64_t)numFaces;
- (unint64_t)parentRelativeLevel;
- (unint64_t)parentRelativeSlice;
- (unint64_t)pixelFormat;
- (unint64_t)resourceIndex;
- (unint64_t)rotation;
- (unint64_t)sampleCount;
- (unint64_t)sparseSurfaceDefaultValue;
- (unint64_t)tailSize;
- (unint64_t)tailSizeInBytes;
- (unint64_t)textureType;
- (unint64_t)uniqueIdentifier;
- (unint64_t)usage;
- (unint64_t)width;
- (unsigned)swizzleKey;
- (void)copyFromPixels:(const void *)a3 rowBytes:(unint64_t)a4 imageBytes:(unint64_t)a5 toSlice:(unint64_t)a6 mipmapLevel:(unint64_t)a7 origin:(id *)a8 size:(id *)a9;
- (void)copyFromSlice:(unint64_t)a3 mipmapLevel:(unint64_t)a4 origin:(id *)a5 size:(id *)a6 toPixels:(void *)a7 rowBytes:(unint64_t)a8 imageBytes:(unint64_t)a9;
- (void)dealloc;
- (void)generateMipmapLevel:(unint64_t)a3 slice:(unint64_t)a4;
- (void)getBytes:(void *)a3 bytesPerRow:(unint64_t)a4 bytesPerImage:(unint64_t)a5 fromRegion:(id *)a6 mipmapLevel:(unint64_t)a7 slice:(unint64_t)a8;
- (void)replaceRegion:(id *)a3 mipmapLevel:(unint64_t)a4 slice:(unint64_t)a5 withBytes:(const void *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8;
- (void)replaceRegion:(id *)a3 mipmapLevel:(unint64_t)a4 withBytes:(const void *)a5 bytesPerRow:(unint64_t)a6;
@end

@implementation MTLToolsTexture

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLToolsTexture;
  [(MTLToolsResource *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x277CCACA8];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v11[0] = v5;
  v11[1] = @"label =";
  if ([(MTLToolsResource *)self label])
  {
    v8 = [(MTLToolsResource *)self label];
  }

  else
  {
    v8 = @"<none>";
  }

  v11[2] = v8;
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v11, 3), "componentsJoinedByString:", @" "];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (MTLToolsTexture)initWithBaseObject:(id)a3 parent:(id)a4 parentTexture:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTLToolsTexture;
  v6 = [(MTLToolsResource *)&v8 initWithBaseObject:a3 parent:a5];
  if (v6)
  {
    v6->_parentTexture = a5;
    v6->_buffer = [a5 buffer];
  }

  return v6;
}

- (MTLToolsTexture)initWithBaseObject:(id)a3 parent:(id)a4 buffer:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTLToolsTexture;
  v6 = [(MTLToolsResource *)&v8 initWithBaseObject:a3 parent:a5];
  if (v6)
  {
    v6->_buffer = a5;
    v6->_parentTexture = 0;
  }

  return v6;
}

- (id)realRootResource
{
  if ([(MTLToolsTexture *)self buffer])
  {

    return [(MTLToolsTexture *)self buffer];
  }

  else if ([(MTLToolsTexture *)self parentTexture])
  {
    v4 = [(MTLToolsTexture *)self parentTexture];

    return [(MTLTexture *)v4 realRootResource];
  }

  else
  {
    return self;
  }
}

- (MTLResource)rootResource
{
  parentTexture = self->_parentTexture;
  if (!parentTexture)
  {
    return self->_buffer;
  }

  return parentTexture;
}

- (unint64_t)gpuHandle
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuHandle];
}

- (MTLResourceID)gpuResourceID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuResourceID];
}

- (unint64_t)parentRelativeLevel
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 parentRelativeLevel];
}

- (unint64_t)parentRelativeSlice
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 parentRelativeSlice];
}

- (unint64_t)bufferOffset
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 bufferOffset];
}

- (unint64_t)bufferBytesPerRow
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 bufferBytesPerRow];
}

- ($14D77461FF5D83CAEC4252578BA76F85)swizzle
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 swizzle];
}

- (unsigned)swizzleKey
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 swizzleKey];
}

- (unint64_t)resourceIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceIndex];
}

- (unint64_t)gpuAddress
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuAddress];
}

- (BOOL)isCompressed
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isCompressed];
}

- (int64_t)compressionFeedback
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 compressionFeedback];
}

- (int64_t)compressionType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 compressionType];
}

- (unint64_t)compressionFootprint
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 compressionFootprint];
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
  [(MTLToolsTexture *)self getBytes:a7 bytesPerRow:a8 bytesPerImage:a9 fromRegion:v10 mipmapLevel:a4 slice:a3];
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
  [(MTLToolsTexture *)self replaceRegion:v10 mipmapLevel:a7 slice:a6 withBytes:a3 bytesPerRow:a4 bytesPerImage:a5];
}

- (void)replaceRegion:(id *)a3 mipmapLevel:(unint64_t)a4 withBytes:(const void *)a5 bytesPerRow:(unint64_t)a6
{
  v6 = *&a3->var0.var2;
  v7[0] = *&a3->var0.var0;
  v7[1] = v6;
  v7[2] = *&a3->var1.var1;
  [(MTLToolsTexture *)self replaceRegion:v7 mipmapLevel:a4 slice:0 withBytes:a5 bytesPerRow:a6 bytesPerImage:0];
}

- (unint64_t)textureType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 textureType];
}

- (unint64_t)pixelFormat
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 pixelFormat];
}

- (unint64_t)usage
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 usage];
}

- (unint64_t)width
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 width];
}

- (unint64_t)height
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 height];
}

- (unint64_t)depth
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 depth];
}

- (unint64_t)mipmapLevelCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 mipmapLevelCount];
}

- (unint64_t)sampleCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 sampleCount];
}

- (unint64_t)arrayLength
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 arrayLength];
}

- (BOOL)isShareable
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isShareable];
}

- (BOOL)isSparse
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isSparse];
}

- (BOOL)isFramebufferOnly
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isFramebufferOnly];
}

- (unint64_t)sparseSurfaceDefaultValue
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 sparseSurfaceDefaultValue];
}

- (unint64_t)firstMipmapInTail
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 firstMipmapInTail];
}

- (unint64_t)tailSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 tailSizeInBytes];
}

- (unint64_t)tailSizeInBytes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 tailSizeInBytes];
}

- (BOOL)allowGPUOptimizedContents
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 allowGPUOptimizedContents];
}

- (void)getBytes:(void *)a3 bytesPerRow:(unint64_t)a4 bytesPerImage:(unint64_t)a5 fromRegion:(id *)a6 mipmapLevel:(unint64_t)a7 slice:(unint64_t)a8
{
  v14 = [(MTLToolsObject *)self baseObject];
  v15 = *&a6->var0.var2;
  v16[0] = *&a6->var0.var0;
  v16[1] = v15;
  v16[2] = *&a6->var1.var1;
  [v14 getBytes:a3 bytesPerRow:a4 bytesPerImage:a5 fromRegion:v16 mipmapLevel:a7 slice:a8];
}

- (void)replaceRegion:(id *)a3 mipmapLevel:(unint64_t)a4 slice:(unint64_t)a5 withBytes:(const void *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8
{
  v14 = [(MTLToolsObject *)self baseObject];
  v15 = *&a3->var0.var2;
  v16[0] = *&a3->var0.var0;
  v16[1] = v15;
  v16[2] = *&a3->var1.var1;
  [v14 replaceRegion:v16 mipmapLevel:a4 slice:a5 withBytes:a6 bytesPerRow:a7 bytesPerImage:a8];
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
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

  v10 = [[MTLToolsTexture alloc] initWithBaseObject:v8 parent:self->super.super._device parentTexture:self];

  return v10;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 resourceIndex:(unint64_t)a7
{
  length = a6.length;
  location = a6.location;
  v9 = a5.length;
  v10 = a5.location;
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

  v17 = [[MTLToolsTexture alloc] initWithBaseObject:v15 parent:self->super.super._device parentTexture:self];

  return v17;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7 resourceIndex:(unint64_t)a8
{
  length = a6.length;
  location = a6.location;
  v10 = a5.length;
  v11 = a5.location;
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

  v18 = [[MTLToolsTexture alloc] initWithBaseObject:v16 parent:[(MTLToolsObject *)self device] parentTexture:self];

  return v18;
}

- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 level:(unint64_t)a5 slice:(unint64_t)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLToolsTexture alloc] initWithBaseObject:result parent:[(MTLToolsObject *)self device] parentTexture:self];

    return v9;
  }

  return result;
}

- (id)newTextureViewWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [[MTLToolsTexture alloc] initWithBaseObject:result parent:[(MTLToolsObject *)self device] parentTexture:self];

    return v6;
  }

  return result;
}

- (int64_t)writeAccessPattern
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 writeAccessPattern];
}

- (BOOL)canGenerateMipmapLevels
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 canGenerateMipmapLevels];
}

- (void)generateMipmapLevel:(unint64_t)a3 slice:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 generateMipmapLevel:a3 slice:a4];
}

- (int64_t)sparseTextureTier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 sparseTextureTier];
}

- (unint64_t)rotation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 rotation];
}

- (id)newSharedTextureHandle
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 newSharedTextureHandle];
}

- (__IOSurface)iosurface
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 iosurface];
}

- (unint64_t)iosurfacePlane
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 iosurfacePlane];
}

- (unint64_t)numFaces
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 numFaces];
}

- (BOOL)isDrawable
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isDrawable];
}

- (unint64_t)uniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 uniqueIdentifier];
}

- (unint64_t)colorSpaceConversionMatrix
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 colorSpaceConversionMatrix];
}

@end