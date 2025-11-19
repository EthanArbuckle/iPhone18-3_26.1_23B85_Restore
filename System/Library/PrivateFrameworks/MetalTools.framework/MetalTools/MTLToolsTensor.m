@interface MTLToolsTensor
- (BOOL)isTensorViewableWithReshapedDescriptor:(id)a3;
- (MTLResourceID)gpuResourceID;
- (MTLTensorExtents)dimensions;
- (MTLTensorExtents)strides;
- (MTLToolsTensor)initWithBaseObject:(id)a3 buffer:(id)a4;
- (MTLToolsTensor)initWithBaseObject:(id)a3 parentTensor:(id)a4;
- (id)newTensorViewWithReshapedDescriptor:(id)a3 error:(id *)a4;
- (id)newTensorViewWithSlice:(MTLTensorSlice)a3 error:(id *)a4;
- (id)wrapChildTensor:(id)a3;
- (int64_t)dataType;
- (unint64_t)bufferOffset;
- (unint64_t)offset;
- (unint64_t)resourceIndex;
- (unint64_t)usage;
- (void)dealloc;
- (void)getBytes:(void *)a3 strides:(id)a4 fromSlice:(MTLTensorSlice)a5;
- (void)getBytes:(void *)a3 strides:(id)a4 fromSliceOrigin:(id)a5 sliceDimensions:(id)a6;
- (void)replaceSlice:(MTLTensorSlice)a3 withBytes:(const void *)a4 strides:(id)a5;
- (void)replaceSliceOrigin:(id)a3 sliceDimensions:(id)a4 withBytes:(const void *)a5 strides:(id)a6;
@end

@implementation MTLToolsTensor

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLToolsTensor;
  [(MTLToolsResource *)&v3 dealloc];
}

- (MTLToolsTensor)initWithBaseObject:(id)a3 parentTensor:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTLToolsTensor;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:a3 parent:?];
  if (v5)
  {
    v5->_parentTensor = a4;
    if ([a4 buffer])
    {
      v5->_buffer = [a4 buffer];
    }
  }

  return v5;
}

- (MTLToolsTensor)initWithBaseObject:(id)a3 buffer:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTLToolsTensor;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:a3 parent:?];
  if (v5)
  {
    v5->_buffer = a4;
  }

  return v5;
}

- (unint64_t)bufferOffset
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 bufferOffset];
}

- (MTLResourceID)gpuResourceID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuResourceID];
}

- (MTLTensorExtents)dimensions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 dimensions];
}

- (int64_t)dataType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 dataType];
}

- (unint64_t)usage
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 usage];
}

- (unint64_t)offset
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 offset];
}

- (MTLTensorExtents)strides
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 strides];
}

- (unint64_t)resourceIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceIndex];
}

- (id)wrapChildTensor:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [[MTLToolsTensor alloc] initWithBaseObject:a3 parentTensor:self];

  return v4;
}

- (id)newTensorViewWithSlice:(MTLTensorSlice)a3 error:(id *)a4
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return [(MTLToolsTensor *)self wrapChildTensor:v5];
}

- (BOOL)isTensorViewableWithReshapedDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 isTensorViewableWithReshapedDescriptor:a3];
}

- (id)newTensorViewWithReshapedDescriptor:(id)a3 error:(id *)a4
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return [(MTLToolsTensor *)self wrapChildTensor:v5];
}

- (void)replaceSlice:(MTLTensorSlice)a3 withBytes:(const void *)a4 strides:(id)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = [(MTLToolsObject *)self baseObject];

  [v9 replaceSlice:var0 withBytes:var1 strides:{a4, a5}];
}

- (void)getBytes:(void *)a3 strides:(id)a4 fromSlice:(MTLTensorSlice)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v9 = [(MTLToolsObject *)self baseObject];

  [v9 getBytes:a3 strides:a4 fromSlice:{var0, var1}];
}

- (void)getBytes:(void *)a3 strides:(id)a4 fromSliceOrigin:(id)a5 sliceDimensions:(id)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 getBytes:a3 strides:a4 fromSliceOrigin:a5 sliceDimensions:a6];
}

- (void)replaceSliceOrigin:(id)a3 sliceDimensions:(id)a4 withBytes:(const void *)a5 strides:(id)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 replaceSliceOrigin:a3 sliceDimensions:a4 withBytes:a5 strides:a6];
}

@end