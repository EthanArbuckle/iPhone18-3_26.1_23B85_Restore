@interface VCPCNNBlurAnalyzerEspresso
+ (id)sharedModel:(id)model;
+ (id)sharedModelPoolWithRevision:(unint64_t)revision;
- (VCPCNNBlurAnalyzerEspresso)initWithRevision:(unint64_t)revision;
- (float)calculateScoreFromNetworkOutputV2:(float *)v2;
- (float)getInputBuffer:(int)buffer srcWidth:(int)width cnnInputHeight:(int *)height cnnInputWidth:(int *)inputWidth;
- (int)computeSharpnessScore:(float *)score textureness:(char *)textureness contrast:(float)contrast imgWidth:(int)width cancel:(id)cancel;
- (int)prepareModelForSourceWidth:(int)width andSourceHeight:(int)height;
- (void)copyBufferFrom:(char *)from fromStride:(int64_t)stride toPtr:(float *)ptr toStride:(int64_t)toStride toWidth:(int)width toHeight:(int)height;
- (void)dealloc;
@end

@implementation VCPCNNBlurAnalyzerEspresso

+ (id)sharedModelPoolWithRevision:(unint64_t)revision
{
  revision = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPCNNBlurAnalyzerEspresso.sharedModelPool-%lu", revision];
  v5 = +[VCPSharedInstanceManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__VCPCNNBlurAnalyzerEspresso_sharedModelPoolWithRevision___block_invoke;
  v8[3] = &__block_descriptor_40_e20___VCPObjectPool_8__0l;
  v8[4] = revision;
  v6 = [v5 sharedInstanceWithIdentifier:revision andCreationBlock:v8];

  return v6;
}

id __58__VCPCNNBlurAnalyzerEspresso_sharedModelPoolWithRevision___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__VCPCNNBlurAnalyzerEspresso_sharedModelPoolWithRevision___block_invoke_2;
  v3[3] = &__block_descriptor_40_e26___VCPCNNModelEspresso_8__0l;
  v3[4] = *(a1 + 32);
  v1 = [VCPObjectPool objectPoolWithAllocator:v3];

  return v1;
}

VCPCNNModelEspresso *__58__VCPCNNBlurAnalyzerEspresso_sharedModelPoolWithRevision___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v3 = [v2 resourceURL];

  if (*(a1 + 32) == 2)
  {
    v4 = @"cnn_blurV2.espresso.net";
  }

  else
  {
    v4 = @"cnn_blur.espresso.net";
  }

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4 relativeToURL:v3];
  v6 = [[VCPCNNModelEspresso alloc] initWithParameters:v5 inputNames:0 outputNames:0 properties:0];

  return v6;
}

- (VCPCNNBlurAnalyzerEspresso)initWithRevision:(unint64_t)revision
{
  v12.receiver = self;
  v12.super_class = VCPCNNBlurAnalyzerEspresso;
  v4 = [(VCPCNNBlurAnalyzer *)&v12 initWithRevision:?];
  if (v4)
  {
    v5 = [VCPCNNBlurAnalyzerEspresso sharedModelPoolWithRevision:revision];
    getObject = [v5 getObject];
    modelEspresso = v4->_modelEspresso;
    v4->_modelEspresso = getObject;

    v8 = v4->_modelEspresso;
    if (v8)
    {
      resConfig = v4->_resConfig;
      v4->_resConfig = &stru_1F496CB30;

      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;

  return v10;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPCNNBlurAnalyzerEspresso;
  [(VCPCNNBlurAnalyzerEspresso *)&v4 dealloc];
}

+ (id)sharedModel:(id)model
{
  modelCopy = model;
  v4 = +[VCPSharedInstanceManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__VCPCNNBlurAnalyzerEspresso_sharedModel___block_invoke;
  v8[3] = &unk_1E834CF10;
  v5 = modelCopy;
  v9 = v5;
  v6 = [v4 sharedInstanceWithIdentifier:@"VCPBlurEspresso" andCreationBlock:v8];

  return v6;
}

VCPCNNModelEspresso *__42__VCPCNNBlurAnalyzerEspresso_sharedModel___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:*(a1 + 32) inputNames:0 outputNames:0 properties:0];

  return v1;
}

- (float)calculateScoreFromNetworkOutputV2:(float *)v2
{
  v5 = 0;
  v11 = *MEMORY[0x1E69E9840];
  *&v3 = 0;
  do
  {
    v9 = v3;
    v6 = expf(v2[v5]);
    v3 = v9;
    v10.f32[v5] = v6;
    *&v3 = *&v9 + v6;
    ++v5;
  }

  while (v5 != 4);
  v7 = vmulq_f32(vdivq_f32(v10, vdupq_lane_s32(*&v3, 0)), xmmword_1C9F629B0);
  return (((v7.f32[0] + 0.0) + v7.f32[1]) + v7.f32[2]) + v7.f32[3];
}

- (int)prepareModelForSourceWidth:(int)width andSourceHeight:(int)height
{
  if (self->_srcWidth == width && self->_srcHeight == height)
  {
    return 0;
  }

  if (height == 299 && width == 299)
  {
    resConfig = self->_resConfig;
    v10 = @"res_299x299";
  }

  else if (height == width)
  {
    resConfig = self->_resConfig;
    v10 = @"res_400x400";
  }

  else
  {
    resConfig = self->_resConfig;
    if (height >= width)
    {
      v10 = @"res_300x400";
    }

    else
    {
      v10 = @"res_400x300";
    }
  }

  self->_resConfig = &v10->isa;

  object = [(VCPLoaned *)self->_modelEspresso object];
  v7 = [object prepareModelWithConfig:self->_resConfig];

  if (!v7)
  {
    self->_srcHeight = 0;
    self->_srcWidth = 0;
    inputData = self->_inputData;
    if (inputData)
    {
      MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
    }

    object2 = [(VCPLoaned *)self->_modelEspresso object];
    v14 = object2;
    if (object2)
    {
      [object2 inputBlob];
      v15 = v27;
    }

    else
    {
      v15 = 0;
    }

    object3 = [(VCPLoaned *)self->_modelEspresso object];
    v17 = object3;
    if (object3)
    {
      [object3 inputBlob];
      v18 = v26;
    }

    else
    {
      v18 = 0;
    }

    object4 = [(VCPLoaned *)self->_modelEspresso object];
    v20 = object4;
    if (object4)
    {
      [object4 inputBlob];
      v21 = v25;
    }

    else
    {
      v21 = 0;
    }

    v22 = v18 * v15 * v21;
    if (v22 >> 62)
    {
      v23 = -1;
    }

    else
    {
      v23 = 4 * v22;
    }

    self->_inputData = operator new[](v23, MEMORY[0x1E69E5398]);

    if (self->_inputData)
    {
      v7 = 0;
      self->_srcWidth = width;
      self->_srcHeight = height;
    }

    else
    {
      return -108;
    }
  }

  return v7;
}

- (float)getInputBuffer:(int)buffer srcWidth:(int)width cnnInputHeight:(int *)height cnnInputWidth:(int *)inputWidth
{
  v9 = [(VCPLoaned *)self->_modelEspresso object:*&buffer];
  v10 = v9;
  if (v9)
  {
    [v9 inputBlob];
    v11 = v17;
  }

  else
  {
    v11 = 0;
    v16 = 0;
  }

  *height = v11;

  object = [(VCPLoaned *)self->_modelEspresso object];
  v13 = object;
  if (object)
  {
    [object inputBlob];
    v14 = v16;
  }

  else
  {
    v14 = 0;
  }

  *inputWidth = v14;

  return self->_inputData;
}

- (int)computeSharpnessScore:(float *)score textureness:(char *)textureness contrast:(float)contrast imgWidth:(int)width cancel:(id)cancel
{
  v7 = *&width;
  cancelCopy = cancel;
  v13 = cancelCopy;
  if (cancelCopy && ((*(cancelCopy + 2))(cancelCopy) & 1) != 0)
  {
    v14 = -128;
  }

  else
  {
    object = [(VCPLoaned *)self->_modelEspresso object];
    v14 = [object espressoForward:self->_inputData];

    if (!v14)
    {
      if ([(VCPCNNBlurAnalyzer *)self getRevision]== 2)
      {
        object2 = [(VCPLoaned *)self->_modelEspresso object];
        v17 = object2;
        if (object2)
        {
          [object2 outputBlob];
          v18 = v35;
        }

        else
        {
          v18 = 0;
          v45 = 0;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
        }

        [(VCPCNNBlurAnalyzerEspresso *)self calculateScoreFromNetworkOutputV2:v18, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45];
        *score = v22;
      }

      else
      {
        object3 = [(VCPLoaned *)self->_modelEspresso object];
        v20 = object3;
        if (object3)
        {
          [object3 outputBlob];
          v21 = v41;
        }

        else
        {
          v21 = 0;
          v45 = 0;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
        }

        object4 = [(VCPLoaned *)self->_modelEspresso object];
        v24 = object4;
        if (object4)
        {
          [object4 outputBlob];
          v25 = DWORD2(v40);
        }

        else
        {
          v25 = 0;
          v45 = 0;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
        }

        object5 = [(VCPLoaned *)self->_modelEspresso object];
        v27 = object5;
        if (object5)
        {
          [object5 outputBlob];
          v28 = v40;
        }

        else
        {
          v28 = 0;
          v45 = 0;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
        }

        object6 = [(VCPLoaned *)self->_modelEspresso object];
        v30 = object6;
        if (object6)
        {
          [object6 outputBlob];
          v32 = v35;
        }

        else
        {
          v32 = 0;
          v45 = 0;
          HIDWORD(v31) = 0;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
        }

        *&v31 = contrast;
        [(VCPCNNBlurAnalyzer *)self calculateScoreFromNetworkOutput:v32 outChannel:v21 outHeight:v25 outWidth:v28 textureness:textureness contrast:v7 imgWidth:v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45];
        *score = v33;
      }

      v14 = 0;
    }
  }

  return v14;
}

- (void)copyBufferFrom:(char *)from fromStride:(int64_t)stride toPtr:(float *)ptr toStride:(int64_t)toStride toWidth:(int)width toHeight:(int)height
{
  v8 = *&height;
  v9 = *&width;
  if ([(VCPCNNBlurAnalyzer *)self getRevision]== 2)
  {
    if (v8 >= 1)
    {
      v16 = 0;
      v17 = 0.0;
      fromCopy = from;
      do
      {
        if (v9 >= 1)
        {
          v19 = 0;
          do
          {
            LOBYTE(v15) = fromCopy[v19];
            v15 = LODWORD(v15);
            v17 = v17 + v15;
            ++v19;
          }

          while (v9 != v19);
        }

        fromCopy += stride;
        ++v16;
      }

      while (v16 != v8);
      v20 = v17 / ((v9 * 255.0) * v8);
      v21 = 0;
      v22 = 4 * toStride;
      if (v20 >= 0.1)
      {
        do
        {
          if (v9 >= 1)
          {
            v24 = 0;
            do
            {
              LOBYTE(v20) = from[v24];
              v20 = LODWORD(v20) / 255.0;
              ptr[v24++] = v20;
            }

            while (v9 != v24);
          }

          from += stride;
          ++v21;
          ptr = (ptr + v22);
        }

        while (v21 != v8);
      }

      else
      {
        do
        {
          if (v9 >= 1)
          {
            v23 = 0;
            do
            {
              LOBYTE(v20) = from[v23];
              v20 = (LODWORD(v20) + LODWORD(v20)) / 255.0;
              ptr[v23++] = v20;
            }

            while (v9 != v23);
          }

          from += stride;
          ++v21;
          ptr = (ptr + v22);
        }

        while (v21 != v8);
      }
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = VCPCNNBlurAnalyzerEspresso;
    [(VCPCNNBlurAnalyzer *)&v25 copyBufferFrom:from fromStride:stride toPtr:ptr toStride:toStride toWidth:v9 toHeight:v8];
  }
}

@end