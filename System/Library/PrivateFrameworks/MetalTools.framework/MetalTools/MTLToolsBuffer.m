@interface MTLToolsBuffer
- (BOOL)detachBacking;
- (BOOL)replaceBackingWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 deallocator:(id)a5;
- (__IOSurface)_aneIOSurface;
- (__IOSurface)iosurface;
- (id)formattedDescription:(unint64_t)a3;
- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6;
- (id)newTensorWithDescriptor:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5;
- (int64_t)sparseBufferTier;
- (unint64_t)gpuAddress;
- (unint64_t)length;
- (unint64_t)parentGPUAddress;
- (unint64_t)parentGPUSize;
- (void)addDebugMarker:(id)a3 range:(_NSRange)a4;
- (void)contents;
- (void)dealloc;
- (void)didModifyRange:(_NSRange)a3;
- (void)removeAllDebugMarkers;
- (void)setParentGPUAddress:(unint64_t)a3;
- (void)setParentGPUSize:(unint64_t)a3;
@end

@implementation MTLToolsBuffer

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsBuffer;
  [(MTLToolsResource *)&v2 dealloc];
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

- (unint64_t)length
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 length];
}

- (unint64_t)gpuAddress
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuAddress];
}

- (unint64_t)parentGPUAddress
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 parentGPUAddress];
}

- (void)setParentGPUAddress:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setParentGPUAddress:a3];
}

- (unint64_t)parentGPUSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 parentGPUSize];
}

- (void)setParentGPUSize:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setParentGPUSize:a3];
}

- (void)contents
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 contents];
}

- (void)didModifyRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 didModifyRange:{location, length}];
}

- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [(MTLToolsResource *)[MTLToolsTexture alloc] initWithBaseObject:result parent:self];

    return v9;
  }

  return result;
}

- (__IOSurface)_aneIOSurface
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 _aneIOSurface];
}

- (void)addDebugMarker:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(MTLToolsObject *)self baseObject];

  [v7 addDebugMarker:a3 range:{location, length}];
}

- (void)removeAllDebugMarkers
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 removeAllDebugMarkers];
}

- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [[MTLToolsTexture alloc] initWithBaseObject:result parent:[(MTLToolsObject *)self device] buffer:self];

    return v8;
  }

  return result;
}

- (id)newTensorWithDescriptor:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [[MTLToolsTensor alloc] initWithBaseObject:result buffer:self];

    return v8;
  }

  return result;
}

- (__IOSurface)iosurface
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 iosurface];
}

- (BOOL)detachBacking
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 detachBacking];
}

- (BOOL)replaceBackingWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 deallocator:(id)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 replaceBackingWithBytesNoCopy:a3 length:a4 deallocator:a5];
}

- (int64_t)sparseBufferTier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 sparseBufferTier];
}

@end