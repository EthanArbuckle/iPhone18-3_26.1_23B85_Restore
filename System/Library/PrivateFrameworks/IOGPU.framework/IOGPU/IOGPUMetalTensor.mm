@interface IOGPUMetalTensor
- (BOOL)isTensorViewableWithReshapedDescriptor:(id)a3;
- (IOGPUMetalTensor)initWithBuffer:(id)a3;
- (id)newTensorViewWithReshapedDescriptor:(id)a3 error:(id *)a4;
- (id)newTensorViewWithSlice:(MTLTensorSlice)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation IOGPUMetalTensor

- (IOGPUMetalTensor)initWithBuffer:(id)a3
{
  v6.receiver = self;
  v6.super_class = IOGPUMetalTensor;
  v4 = [(IOGPUMetalResource *)&v6 initWithResource:?];
  if (v4)
  {
    v4->_buffer = a3;
    v4->_allocatedSize = [a3 allocatedSize];
  }

  return v4;
}

- (void)dealloc
{
  v4.receiver = self;
  v4.super_class = IOGPUMetalTensor;
  [(IOGPUMetalResource *)&v4 dealloc];
  buffer = self->_buffer;
  if (buffer)
  {
  }
}

- (id)newTensorViewWithSlice:(MTLTensorSlice)a3 error:(id *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v29[16] = *MEMORY[0x1E69E9840];
  if (![(IOGPUMetalTensor *)self buffer])
  {
    if (a4)
    {
      v25 = @"This operation is only permitted for tensors created with a buffer or an IOSurface";
      goto LABEL_26;
    }

LABEL_27:
    v24 = 0;
    goto LABEL_28;
  }

  v8 = [(MTLTensorExtents *)[(IOGPUMetalTensor *)self dimensions] rank];
  if ([var0 rank] != v8 || objc_msgSend(var1, "rank") != v8)
  {
LABEL_22:
    if (a4)
    {
      v25 = @"Specified slice is out of bounds with respect to this tensor";
LABEL_26:
      v24 = 0;
      *a4 = errorWithMessage(v25);
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [var0 extentAtDimensionIndex:v9];
      v12 = [var1 extentAtDimensionIndex:v9] + v11;
      if (v12 > [(MTLTensorExtents *)[(IOGPUMetalTensor *)self dimensions] extentAtDimensionIndex:v9])
      {
        goto LABEL_22;
      }

      v9 = ++v10;
    }

    while (v8 > v10);
  }

  v28 = a4;
  v13 = [(MTLTensorExtents *)[(IOGPUMetalTensor *)self dimensions] rank];
  v14 = objc_opt_new();
  [v14 setDataType:{-[IOGPUMetalTensor dataType](self, "dataType")}];
  [v14 setUsage:{-[IOGPUMetalTensor usage](self, "usage")}];
  [v14 setStrides:{-[IOGPUMetalTensor strides](self, "strides")}];
  v15 = [(_MTLResource *)self bufferOffset];
  if (v13)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = [(MTLTensorExtents *)[(IOGPUMetalTensor *)self strides] extentAtDimensionIndex:v16];
      v19 = [var0 extentAtDimensionIndex:v16];
      v20 = [(IOGPUMetalTensor *)self dataType];
      if (v20 > 0x31)
      {
        goto LABEL_14;
      }

      if (((1 << v20) & 0x220000008) != 0)
      {
        v21 = 4;
        goto LABEL_18;
      }

      if (((1 << v20) & 0x22000010000) == 0)
      {
        break;
      }

LABEL_15:
      v21 = 2;
LABEL_18:
      v15 += v19 * v18 * v21;
      v29[v16] = [var1 extentAtDimensionIndex:v16];
      v16 = ++v17;
      if (v13 <= v17)
      {
        goto LABEL_19;
      }
    }

    if (((1 << v20) & 0x2200000000000) != 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    if (v20 != 121)
    {
LABEL_17:
      v21 = 1;
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_19:
  v22 = [objc_alloc(MEMORY[0x1E69741B0]) initWithRank:v13 extents:v29];
  [v14 setDimensions:v22];

  v23 = [(MTLBuffer *)[(IOGPUMetalTensor *)self buffer] newTensorWithDescriptor:v14 offset:v15 error:v28];
  v24 = v23;
  if (v23)
  {
    *(v23 + 304) = self;
  }

LABEL_28:
  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)isTensorViewableWithReshapedDescriptor:(id)a3
{
  v5 = [a3 usage];
  if (v5 != [(IOGPUMetalTensor *)self usage])
  {
    return 0;
  }

  v6 = [a3 dataType];
  if (v6 != [(IOGPUMetalTensor *)self dataType])
  {
    return 0;
  }

  v7 = [(IOGPUMetalTensor *)self dimensions];
  if ([(MTLTensorExtents *)v7 rank])
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
    do
    {
      v10 *= [(MTLTensorExtents *)v7 extentAtDimensionIndex:v8];
      v8 = ++v9;
    }

    while ([(MTLTensorExtents *)v7 rank]> v9);
  }

  else
  {
    v10 = 1;
  }

  v12 = [(MTLTensorExtents *)[(IOGPUMetalTensor *)self strides] rank];
  if (v12)
  {
    v13 = v12;
    v14 = [(MTLTensorExtents *)[(IOGPUMetalTensor *)self strides] extentAtDimensionIndex:0]== 1;
    if (v13 != 1)
    {
      v15 = 1;
      v16 = 1;
      do
      {
        v17 = [(MTLTensorExtents *)[(IOGPUMetalTensor *)self strides] extentAtDimensionIndex:v15];
        v18 = v15 - 1;
        v19 = [(MTLTensorExtents *)[(IOGPUMetalTensor *)self strides] extentAtDimensionIndex:v18];
        v14 &= v17 == [(MTLTensorExtents *)[(IOGPUMetalTensor *)self dimensions] extentAtDimensionIndex:v18]* v19;
        v15 = ++v16;
      }

      while (v13 > v16);
    }
  }

  else
  {
    v14 = 1;
  }

  v20 = [a3 dimensions];
  if ([v20 rank])
  {
    v21 = 0;
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= [v20 extentAtDimensionIndex:v21];
      v21 = ++v22;
    }

    while ([v20 rank] > v22);
  }

  else
  {
    v23 = 1;
  }

  if (v10 == v23)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

- (id)newTensorViewWithReshapedDescriptor:(id)a3 error:(id *)a4
{
  v24[16] = *MEMORY[0x1E69E9840];
  if (![(IOGPUMetalTensor *)self buffer])
  {
    if (!a4)
    {
      goto LABEL_25;
    }

    v14 = @"This operation is only permitted for tensors created with a buffer or an IOSurface";
LABEL_22:
    v22 = errorWithMessage(v14);
    result = 0;
    *a4 = v22;
    goto LABEL_26;
  }

  v7 = [a3 usage];
  if (v7 != [(IOGPUMetalTensor *)self usage])
  {
    if (a4)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = [a3 usage] - 1;
      if (v16 > 3)
      {
        v17 = "";
      }

      else
      {
        v17 = off_1E8362E38[v16];
      }

      v20 = [(IOGPUMetalTensor *)self usage];
      if (v20 - 1 > 3)
      {
        v21 = "";
      }

      else
      {
        v21 = off_1E8362E38[v20 - 1];
      }

      v14 = [v15 stringWithFormat:@"Descriptor usage (%s) does not match tensor usage (%s)", v17, v21];
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v8 = [a3 dataType];
  if (v8 != [(IOGPUMetalTensor *)self dataType])
  {
    if (!a4)
    {
      goto LABEL_25;
    }

    v18 = MEMORY[0x1E696AEC0];
    v19 = tensorDataTypeToString([a3 dataType]);
    v14 = [v18 stringWithFormat:@"Descriptor data type (%s) does not match tensor data type (%s)", v19, tensorDataTypeToString(-[IOGPUMetalTensor dataType](self, "dataType"))];
    goto LABEL_22;
  }

  if (![(IOGPUMetalTensor *)self isTensorViewableWithReshapedDescriptor:a3])
  {
    if (a4)
    {
      v14 = @"This tensor is not viewable with the given descriptor";
      goto LABEL_22;
    }

LABEL_25:
    result = 0;
    goto LABEL_26;
  }

  v24[0] = 1;
  if ([objc_msgSend(a3 "dimensions")] >= 2)
  {
    v9 = 1;
    v10 = 1;
    do
    {
      v11 = v24[v9 - 1];
      v24[v9] = [objc_msgSend(a3 "dimensions")] * v11;
      v9 = ++v10;
    }

    while ([objc_msgSend(a3 "dimensions")] > v10);
  }

  v12 = [objc_alloc(MEMORY[0x1E69741B0]) initWithRank:objc_msgSend(objc_msgSend(a3 extents:{"dimensions"), "rank"), v24}];
  [a3 setStrides:v12];

  result = [(MTLBuffer *)[(IOGPUMetalTensor *)self buffer] newTensorWithDescriptor:a3 offset:[(_MTLResource *)self bufferOffset] error:a4];
  if (result)
  {
    *(result + 38) = self;
  }

LABEL_26:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

@end