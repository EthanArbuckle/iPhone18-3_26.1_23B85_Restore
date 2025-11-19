@interface MTLDebugTensor
- (id)newTensorViewWithReshapedDescriptor:(id)a3 error:(id *)a4;
- (id)newTensorViewWithSlice:(MTLTensorSlice)a3 error:(id *)a4;
- (void)getBytes:(void *)a3 strides:(id)a4 fromSlice:(MTLTensorSlice)a5;
- (void)getBytes:(void *)a3 strides:(id)a4 fromSliceOrigin:(id)a5 sliceDimensions:(id)a6;
- (void)replaceSlice:(MTLTensorSlice)a3 withBytes:(const void *)a4 strides:(id)a5;
- (void)replaceSliceOrigin:(id)a3 sliceDimensions:(id)a4 withBytes:(const void *)a5 strides:(id)a6;
- (void)verifyGetBytesReplaceSliceWithContext:(_MTLMessageContext *)a3 strides:(id)a4 slice:(MTLTensorSlice)a5;
@end

@implementation MTLDebugTensor

- (void)verifyGetBytesReplaceSliceWithContext:(_MTLMessageContext *)a3 strides:(id)a4 slice:(MTLTensorSlice)a5
{
  var1 = a5.var1;
  if ([(MTLToolsResource *)self storageMode]== 2)
  {
    _MTLMessageContextPush_();
  }

  [(MTLToolsTensor *)self dimensions];
  verifySlice();

  MEMORY[0x282123EA0](a3, 8, 0, var1, a4, "slice");
}

- (void)getBytes:(void *)a3 strides:(id)a4 fromSliceOrigin:(id)a5 sliceDimensions:(id)a6
{
  [(MTLToolsObject *)self baseObject:0];
  _MTLMessageContextBegin_();
  [(MTLDebugTensor *)self verifyGetBytesReplaceSliceWithContext:&v11 strides:a4 slice:a5, a6];
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)replaceSliceOrigin:(id)a3 sliceDimensions:(id)a4 withBytes:(const void *)a5 strides:(id)a6
{
  [(MTLToolsObject *)self baseObject:0];
  _MTLMessageContextBegin_();
  [(MTLDebugTensor *)self verifyGetBytesReplaceSliceWithContext:&v11 strides:a6 slice:a3, a4];
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)getBytes:(void *)a3 strides:(id)a4 fromSlice:(MTLTensorSlice)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  [(MTLToolsObject *)self baseObject:0];
  _MTLMessageContextBegin_();
  [(MTLDebugTensor *)self verifyGetBytesReplaceSliceWithContext:&v10 strides:a4 slice:var0, var1];
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)replaceSlice:(MTLTensorSlice)a3 withBytes:(const void *)a4 strides:(id)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  [(MTLToolsObject *)self baseObject:0];
  _MTLMessageContextBegin_();
  [(MTLDebugTensor *)self verifyGetBytesReplaceSliceWithContext:&v10 strides:a5 slice:var0, var1];
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (id)newTensorViewWithSlice:(MTLTensorSlice)a3 error:(id *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v14 = 0;
  v8 = objc_autoreleasePoolPush();
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v9)
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    objc_autoreleasePoolPop(v8);
    return v11;
  }

  v10 = v9;
  v11 = [(MTLToolsTensor *)[MTLDebugTensor alloc] initWithBaseObject:v9 parentTensor:self];

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = v14;
  objc_autoreleasePoolPop(v8);
  *a4 = v14;
  return v11;
}

- (id)newTensorViewWithReshapedDescriptor:(id)a3 error:(id *)a4
{
  v13 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v8)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    objc_autoreleasePoolPop(v7);
    return v10;
  }

  v9 = v8;
  v10 = [(MTLToolsTensor *)[MTLDebugTensor alloc] initWithBaseObject:v8 parentTensor:self];

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = v13;
  objc_autoreleasePoolPop(v7);
  *a4 = v13;
  return v10;
}

@end