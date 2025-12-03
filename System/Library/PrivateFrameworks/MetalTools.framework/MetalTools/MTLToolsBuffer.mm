@interface MTLToolsBuffer
- (BOOL)detachBacking;
- (BOOL)replaceBackingWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocator:(id)deallocator;
- (__IOSurface)_aneIOSurface;
- (__IOSurface)iosurface;
- (id)formattedDescription:(unint64_t)description;
- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (id)newTensorWithDescriptor:(id)descriptor offset:(unint64_t)offset error:(id *)error;
- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (int64_t)sparseBufferTier;
- (unint64_t)gpuAddress;
- (unint64_t)length;
- (unint64_t)parentGPUAddress;
- (unint64_t)parentGPUSize;
- (void)addDebugMarker:(id)marker range:(_NSRange)range;
- (void)contents;
- (void)dealloc;
- (void)didModifyRange:(_NSRange)range;
- (void)removeAllDebugMarkers;
- (void)setParentGPUAddress:(unint64_t)address;
- (void)setParentGPUSize:(unint64_t)size;
@end

@implementation MTLToolsBuffer

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsBuffer;
  [(MTLToolsResource *)&v2 dealloc];
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

- (unint64_t)length
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject length];
}

- (unint64_t)gpuAddress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuAddress];
}

- (unint64_t)parentGPUAddress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject parentGPUAddress];
}

- (void)setParentGPUAddress:(unint64_t)address
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setParentGPUAddress:address];
}

- (unint64_t)parentGPUSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject parentGPUSize];
}

- (void)setParentGPUSize:(unint64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setParentGPUSize:size];
}

- (void)contents
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject contents];
}

- (void)didModifyRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject didModifyRange:{location, length}];
}

- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject _aneIOSurface];
}

- (void)addDebugMarker:(id)marker range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject addDebugMarker:marker range:{location, length}];
}

- (void)removeAllDebugMarkers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject removeAllDebugMarkers];
}

- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
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

- (id)newTensorWithDescriptor:(id)descriptor offset:(unint64_t)offset error:(id *)error
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject iosurface];
}

- (BOOL)detachBacking
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject detachBacking];
}

- (BOOL)replaceBackingWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocator:(id)deallocator
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject replaceBackingWithBytesNoCopy:copy length:length deallocator:deallocator];
}

- (int64_t)sparseBufferTier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject sparseBufferTier];
}

@end