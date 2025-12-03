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
- (MTLToolsTexture)initWithBaseObject:(id)object parent:(id)parent buffer:(id)buffer;
- (MTLToolsTexture)initWithBaseObject:(id)object parent:(id)parent parentTexture:(id)texture;
- (__IOSurface)iosurface;
- (id)formattedDescription:(unint64_t)description;
- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice;
- (id)newSharedTextureHandle;
- (id)newTextureViewWithDescriptor:(id)descriptor;
- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index;
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
- (void)copyFromPixels:(const void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes toSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size;
- (void)copyFromSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size toPixels:(void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes;
- (void)dealloc;
- (void)generateMipmapLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)getBytes:(void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image fromRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice withBytes:(const void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row;
@end

@implementation MTLToolsTexture

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLToolsTexture;
  [(MTLToolsResource *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)description
{
  v11[3] = *MEMORY[0x277D85DE8];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x277CCACA8];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v11[0] = v5;
  v11[1] = @"label =";
  if ([(MTLToolsResource *)self label])
  {
    label = [(MTLToolsResource *)self label];
  }

  else
  {
    label = @"<none>";
  }

  v11[2] = label;
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v11, 3), "componentsJoinedByString:", @" "];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (MTLToolsTexture)initWithBaseObject:(id)object parent:(id)parent parentTexture:(id)texture
{
  v8.receiver = self;
  v8.super_class = MTLToolsTexture;
  v6 = [(MTLToolsResource *)&v8 initWithBaseObject:object parent:texture];
  if (v6)
  {
    v6->_parentTexture = texture;
    v6->_buffer = [texture buffer];
  }

  return v6;
}

- (MTLToolsTexture)initWithBaseObject:(id)object parent:(id)parent buffer:(id)buffer
{
  v8.receiver = self;
  v8.super_class = MTLToolsTexture;
  v6 = [(MTLToolsResource *)&v8 initWithBaseObject:object parent:buffer];
  if (v6)
  {
    v6->_buffer = buffer;
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
    parentTexture = [(MTLToolsTexture *)self parentTexture];

    return [(MTLTexture *)parentTexture realRootResource];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuHandle];
}

- (MTLResourceID)gpuResourceID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuResourceID];
}

- (unint64_t)parentRelativeLevel
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject parentRelativeLevel];
}

- (unint64_t)parentRelativeSlice
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject parentRelativeSlice];
}

- (unint64_t)bufferOffset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject bufferOffset];
}

- (unint64_t)bufferBytesPerRow
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject bufferBytesPerRow];
}

- ($14D77461FF5D83CAEC4252578BA76F85)swizzle
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject swizzle];
}

- (unsigned)swizzleKey
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject swizzleKey];
}

- (unint64_t)resourceIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceIndex];
}

- (unint64_t)gpuAddress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuAddress];
}

- (BOOL)isCompressed
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isCompressed];
}

- (int64_t)compressionFeedback
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject compressionFeedback];
}

- (int64_t)compressionType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject compressionType];
}

- (unint64_t)compressionFootprint
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject compressionFootprint];
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
  [(MTLToolsTexture *)self getBytes:pixels bytesPerRow:bytes bytesPerImage:imageBytes fromRegion:v10 mipmapLevel:level slice:slice];
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
  [(MTLToolsTexture *)self replaceRegion:v10 mipmapLevel:level slice:slice withBytes:pixels bytesPerRow:bytes bytesPerImage:imageBytes];
}

- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row
{
  v6 = *&region->var0.var2;
  v7[0] = *&region->var0.var0;
  v7[1] = v6;
  v7[2] = *&region->var1.var1;
  [(MTLToolsTexture *)self replaceRegion:v7 mipmapLevel:level slice:0 withBytes:bytes bytesPerRow:row bytesPerImage:0];
}

- (unint64_t)textureType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject textureType];
}

- (unint64_t)pixelFormat
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject pixelFormat];
}

- (unint64_t)usage
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject usage];
}

- (unint64_t)width
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject width];
}

- (unint64_t)height
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject height];
}

- (unint64_t)depth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject depth];
}

- (unint64_t)mipmapLevelCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject mipmapLevelCount];
}

- (unint64_t)sampleCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject sampleCount];
}

- (unint64_t)arrayLength
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject arrayLength];
}

- (BOOL)isShareable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isShareable];
}

- (BOOL)isSparse
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isSparse];
}

- (BOOL)isFramebufferOnly
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isFramebufferOnly];
}

- (unint64_t)sparseSurfaceDefaultValue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject sparseSurfaceDefaultValue];
}

- (unint64_t)firstMipmapInTail
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject firstMipmapInTail];
}

- (unint64_t)tailSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject tailSizeInBytes];
}

- (unint64_t)tailSizeInBytes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject tailSizeInBytes];
}

- (BOOL)allowGPUOptimizedContents
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject allowGPUOptimizedContents];
}

- (void)getBytes:(void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image fromRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v15 = *&region->var0.var2;
  v16[0] = *&region->var0.var0;
  v16[1] = v15;
  v16[2] = *&region->var1.var1;
  [baseObject getBytes:bytes bytesPerRow:row bytesPerImage:image fromRegion:v16 mipmapLevel:level slice:slice];
}

- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice withBytes:(const void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v15 = *&region->var0.var2;
  v16[0] = *&region->var0.var0;
  v16[1] = v15;
  v16[2] = *&region->var1.var1;
  [baseObject replaceRegion:v16 mipmapLevel:level slice:slice withBytes:bytes bytesPerRow:row bytesPerImage:image];
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index
{
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

  v10 = [[MTLToolsTexture alloc] initWithBaseObject:v8 parent:self->super.super._device parentTexture:self];

  return v10;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index
{
  length = slices.length;
  location = slices.location;
  v9 = levels.length;
  v10 = levels.location;
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

  v17 = [[MTLToolsTexture alloc] initWithBaseObject:index parent:self->super.super._device parentTexture:self];

  return v17;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index
{
  length = slices.length;
  location = slices.location;
  v10 = levels.length;
  v11 = levels.location;
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

  v18 = [[MTLToolsTexture alloc] initWithBaseObject:index parent:[(MTLToolsObject *)self device] parentTexture:self];

  return v18;
}

- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice
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

- (id)newTextureViewWithDescriptor:(id)descriptor
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject writeAccessPattern];
}

- (BOOL)canGenerateMipmapLevels
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject canGenerateMipmapLevels];
}

- (void)generateMipmapLevel:(unint64_t)level slice:(unint64_t)slice
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject generateMipmapLevel:level slice:slice];
}

- (int64_t)sparseTextureTier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject sparseTextureTier];
}

- (unint64_t)rotation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject rotation];
}

- (id)newSharedTextureHandle
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newSharedTextureHandle];
}

- (__IOSurface)iosurface
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject iosurface];
}

- (unint64_t)iosurfacePlane
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject iosurfacePlane];
}

- (unint64_t)numFaces
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject numFaces];
}

- (BOOL)isDrawable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isDrawable];
}

- (unint64_t)uniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject uniqueIdentifier];
}

- (unint64_t)colorSpaceConversionMatrix
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject colorSpaceConversionMatrix];
}

@end