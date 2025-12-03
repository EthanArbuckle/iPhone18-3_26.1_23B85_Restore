@interface MTLToolsTensor
- (BOOL)isTensorViewableWithReshapedDescriptor:(id)descriptor;
- (MTLResourceID)gpuResourceID;
- (MTLTensorExtents)dimensions;
- (MTLTensorExtents)strides;
- (MTLToolsTensor)initWithBaseObject:(id)object buffer:(id)buffer;
- (MTLToolsTensor)initWithBaseObject:(id)object parentTensor:(id)tensor;
- (id)newTensorViewWithReshapedDescriptor:(id)descriptor error:(id *)error;
- (id)newTensorViewWithSlice:(MTLTensorSlice)slice error:(id *)error;
- (id)wrapChildTensor:(id)tensor;
- (int64_t)dataType;
- (unint64_t)bufferOffset;
- (unint64_t)offset;
- (unint64_t)resourceIndex;
- (unint64_t)usage;
- (void)dealloc;
- (void)getBytes:(void *)bytes strides:(id)strides fromSlice:(MTLTensorSlice)slice;
- (void)getBytes:(void *)bytes strides:(id)strides fromSliceOrigin:(id)origin sliceDimensions:(id)dimensions;
- (void)replaceSlice:(MTLTensorSlice)slice withBytes:(const void *)bytes strides:(id)strides;
- (void)replaceSliceOrigin:(id)origin sliceDimensions:(id)dimensions withBytes:(const void *)bytes strides:(id)strides;
@end

@implementation MTLToolsTensor

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLToolsTensor;
  [(MTLToolsResource *)&v3 dealloc];
}

- (MTLToolsTensor)initWithBaseObject:(id)object parentTensor:(id)tensor
{
  v7.receiver = self;
  v7.super_class = MTLToolsTensor;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:object parent:?];
  if (v5)
  {
    v5->_parentTensor = tensor;
    if ([tensor buffer])
    {
      v5->_buffer = [tensor buffer];
    }
  }

  return v5;
}

- (MTLToolsTensor)initWithBaseObject:(id)object buffer:(id)buffer
{
  v7.receiver = self;
  v7.super_class = MTLToolsTensor;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:object parent:?];
  if (v5)
  {
    v5->_buffer = buffer;
  }

  return v5;
}

- (unint64_t)bufferOffset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject bufferOffset];
}

- (MTLResourceID)gpuResourceID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuResourceID];
}

- (MTLTensorExtents)dimensions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject dimensions];
}

- (int64_t)dataType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject dataType];
}

- (unint64_t)usage
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject usage];
}

- (unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject offset];
}

- (MTLTensorExtents)strides
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject strides];
}

- (unint64_t)resourceIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceIndex];
}

- (id)wrapChildTensor:(id)tensor
{
  if (!tensor)
  {
    return 0;
  }

  v4 = [[MTLToolsTensor alloc] initWithBaseObject:tensor parentTensor:self];

  return v4;
}

- (id)newTensorViewWithSlice:(MTLTensorSlice)slice error:(id *)error
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return [(MTLToolsTensor *)self wrapChildTensor:v5];
}

- (BOOL)isTensorViewableWithReshapedDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isTensorViewableWithReshapedDescriptor:descriptor];
}

- (id)newTensorViewWithReshapedDescriptor:(id)descriptor error:(id *)error
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return [(MTLToolsTensor *)self wrapChildTensor:v5];
}

- (void)replaceSlice:(MTLTensorSlice)slice withBytes:(const void *)bytes strides:(id)strides
{
  var1 = slice.var1;
  var0 = slice.var0;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject replaceSlice:var0 withBytes:var1 strides:{bytes, strides}];
}

- (void)getBytes:(void *)bytes strides:(id)strides fromSlice:(MTLTensorSlice)slice
{
  var1 = slice.var1;
  var0 = slice.var0;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject getBytes:bytes strides:strides fromSlice:{var0, var1}];
}

- (void)getBytes:(void *)bytes strides:(id)strides fromSliceOrigin:(id)origin sliceDimensions:(id)dimensions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject getBytes:bytes strides:strides fromSliceOrigin:origin sliceDimensions:dimensions];
}

- (void)replaceSliceOrigin:(id)origin sliceDimensions:(id)dimensions withBytes:(const void *)bytes strides:(id)strides
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject replaceSliceOrigin:origin sliceDimensions:dimensions withBytes:bytes strides:strides];
}

@end