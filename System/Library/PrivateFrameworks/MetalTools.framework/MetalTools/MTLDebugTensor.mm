@interface MTLDebugTensor
- (id)newTensorViewWithReshapedDescriptor:(id)descriptor error:(id *)error;
- (id)newTensorViewWithSlice:(MTLTensorSlice)slice error:(id *)error;
- (void)getBytes:(void *)bytes strides:(id)strides fromSlice:(MTLTensorSlice)slice;
- (void)getBytes:(void *)bytes strides:(id)strides fromSliceOrigin:(id)origin sliceDimensions:(id)dimensions;
- (void)replaceSlice:(MTLTensorSlice)slice withBytes:(const void *)bytes strides:(id)strides;
- (void)replaceSliceOrigin:(id)origin sliceDimensions:(id)dimensions withBytes:(const void *)bytes strides:(id)strides;
- (void)verifyGetBytesReplaceSliceWithContext:(_MTLMessageContext *)context strides:(id)strides slice:(MTLTensorSlice)slice;
@end

@implementation MTLDebugTensor

- (void)verifyGetBytesReplaceSliceWithContext:(_MTLMessageContext *)context strides:(id)strides slice:(MTLTensorSlice)slice
{
  var1 = slice.var1;
  if ([(MTLToolsResource *)self storageMode]== 2)
  {
    _MTLMessageContextPush_();
  }

  [(MTLToolsTensor *)self dimensions];
  verifySlice();

  MEMORY[0x282123EA0](context, 8, 0, var1, strides, "slice");
}

- (void)getBytes:(void *)bytes strides:(id)strides fromSliceOrigin:(id)origin sliceDimensions:(id)dimensions
{
  [(MTLToolsObject *)self baseObject:0];
  _MTLMessageContextBegin_();
  [(MTLDebugTensor *)self verifyGetBytesReplaceSliceWithContext:&v11 strides:strides slice:origin, dimensions];
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)replaceSliceOrigin:(id)origin sliceDimensions:(id)dimensions withBytes:(const void *)bytes strides:(id)strides
{
  [(MTLToolsObject *)self baseObject:0];
  _MTLMessageContextBegin_();
  [(MTLDebugTensor *)self verifyGetBytesReplaceSliceWithContext:&v11 strides:strides slice:origin, dimensions];
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)getBytes:(void *)bytes strides:(id)strides fromSlice:(MTLTensorSlice)slice
{
  var1 = slice.var1;
  var0 = slice.var0;
  [(MTLToolsObject *)self baseObject:0];
  _MTLMessageContextBegin_();
  [(MTLDebugTensor *)self verifyGetBytesReplaceSliceWithContext:&v10 strides:strides slice:var0, var1];
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)replaceSlice:(MTLTensorSlice)slice withBytes:(const void *)bytes strides:(id)strides
{
  var1 = slice.var1;
  var0 = slice.var0;
  [(MTLToolsObject *)self baseObject:0];
  _MTLMessageContextBegin_();
  [(MTLDebugTensor *)self verifyGetBytesReplaceSliceWithContext:&v10 strides:strides slice:var0, var1];
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (id)newTensorViewWithSlice:(MTLTensorSlice)slice error:(id *)error
{
  var1 = slice.var1;
  var0 = slice.var0;
  v14 = 0;
  v8 = objc_autoreleasePoolPush();
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v9)
  {
    v11 = 0;
    if (error)
    {
      goto LABEL_3;
    }

LABEL_5:
    objc_autoreleasePoolPop(v8);
    return v11;
  }

  v10 = v9;
  v11 = [(MTLToolsTensor *)[MTLDebugTensor alloc] initWithBaseObject:v9 parentTensor:self];

  if (!error)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = v14;
  objc_autoreleasePoolPop(v8);
  *error = v14;
  return v11;
}

- (id)newTensorViewWithReshapedDescriptor:(id)descriptor error:(id *)error
{
  v13 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v8)
  {
    v10 = 0;
    if (error)
    {
      goto LABEL_3;
    }

LABEL_5:
    objc_autoreleasePoolPop(v7);
    return v10;
  }

  v9 = v8;
  v10 = [(MTLToolsTensor *)[MTLDebugTensor alloc] initWithBaseObject:v8 parentTensor:self];

  if (!error)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = v13;
  objc_autoreleasePoolPop(v7);
  *error = v13;
  return v10;
}

@end