@interface VCPCNNBlurAnalyzerEspresso
+ (id)sharedModel:(id)a3;
+ (id)sharedModelPoolWithRevision:(unint64_t)a3;
- (VCPCNNBlurAnalyzerEspresso)initWithRevision:(unint64_t)a3;
- (float)calculateScoreFromNetworkOutputV2:(float *)a3;
- (float)getInputBuffer:(int)a3 srcWidth:(int)a4 cnnInputHeight:(int *)a5 cnnInputWidth:(int *)a6;
- (int)computeSharpnessScore:(float *)a3 textureness:(char *)a4 contrast:(float)a5 imgWidth:(int)a6 cancel:(id)a7;
- (int)prepareModelForSourceWidth:(int)a3 andSourceHeight:(int)a4;
- (void)copyBufferFrom:(char *)a3 fromStride:(int64_t)a4 toPtr:(float *)a5 toStride:(int64_t)a6 toWidth:(int)a7 toHeight:(int)a8;
- (void)dealloc;
@end

@implementation VCPCNNBlurAnalyzerEspresso

+ (id)sharedModelPoolWithRevision:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPCNNBlurAnalyzerEspresso.sharedModelPool-%lu", a3];
  v5 = +[VCPSharedInstanceManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__VCPCNNBlurAnalyzerEspresso_sharedModelPoolWithRevision___block_invoke;
  v8[3] = &__block_descriptor_40_e20___VCPObjectPool_8__0l;
  v8[4] = a3;
  v6 = [v5 sharedInstanceWithIdentifier:v4 andCreationBlock:v8];

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

- (VCPCNNBlurAnalyzerEspresso)initWithRevision:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = VCPCNNBlurAnalyzerEspresso;
  v4 = [(VCPCNNBlurAnalyzer *)&v12 initWithRevision:?];
  if (v4)
  {
    v5 = [VCPCNNBlurAnalyzerEspresso sharedModelPoolWithRevision:a3];
    v6 = [v5 getObject];
    modelEspresso = v4->_modelEspresso;
    v4->_modelEspresso = v6;

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

+ (id)sharedModel:(id)a3
{
  v3 = a3;
  v4 = +[VCPSharedInstanceManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__VCPCNNBlurAnalyzerEspresso_sharedModel___block_invoke;
  v8[3] = &unk_1E834CF10;
  v5 = v3;
  v9 = v5;
  v6 = [v4 sharedInstanceWithIdentifier:@"VCPBlurEspresso" andCreationBlock:v8];

  return v6;
}

VCPCNNModelEspresso *__42__VCPCNNBlurAnalyzerEspresso_sharedModel___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:*(a1 + 32) inputNames:0 outputNames:0 properties:0];

  return v1;
}

- (float)calculateScoreFromNetworkOutputV2:(float *)a3
{
  v5 = 0;
  v11 = *MEMORY[0x1E69E9840];
  *&v3 = 0;
  do
  {
    v9 = v3;
    v6 = expf(a3[v5]);
    v3 = v9;
    v10.f32[v5] = v6;
    *&v3 = *&v9 + v6;
    ++v5;
  }

  while (v5 != 4);
  v7 = vmulq_f32(vdivq_f32(v10, vdupq_lane_s32(*&v3, 0)), xmmword_1C9F629B0);
  return (((v7.f32[0] + 0.0) + v7.f32[1]) + v7.f32[2]) + v7.f32[3];
}

- (int)prepareModelForSourceWidth:(int)a3 andSourceHeight:(int)a4
{
  if (self->_srcWidth == a3 && self->_srcHeight == a4)
  {
    return 0;
  }

  if (a4 == 299 && a3 == 299)
  {
    resConfig = self->_resConfig;
    v10 = @"res_299x299";
  }

  else if (a4 == a3)
  {
    resConfig = self->_resConfig;
    v10 = @"res_400x400";
  }

  else
  {
    resConfig = self->_resConfig;
    if (a4 >= a3)
    {
      v10 = @"res_300x400";
    }

    else
    {
      v10 = @"res_400x300";
    }
  }

  self->_resConfig = &v10->isa;

  v11 = [(VCPLoaned *)self->_modelEspresso object];
  v7 = [v11 prepareModelWithConfig:self->_resConfig];

  if (!v7)
  {
    self->_srcHeight = 0;
    self->_srcWidth = 0;
    inputData = self->_inputData;
    if (inputData)
    {
      MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
    }

    v13 = [(VCPLoaned *)self->_modelEspresso object];
    v14 = v13;
    if (v13)
    {
      [v13 inputBlob];
      v15 = v27;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(VCPLoaned *)self->_modelEspresso object];
    v17 = v16;
    if (v16)
    {
      [v16 inputBlob];
      v18 = v26;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(VCPLoaned *)self->_modelEspresso object];
    v20 = v19;
    if (v19)
    {
      [v19 inputBlob];
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
      self->_srcWidth = a3;
      self->_srcHeight = a4;
    }

    else
    {
      return -108;
    }
  }

  return v7;
}

- (float)getInputBuffer:(int)a3 srcWidth:(int)a4 cnnInputHeight:(int *)a5 cnnInputWidth:(int *)a6
{
  v9 = [(VCPLoaned *)self->_modelEspresso object:*&a3];
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

  *a5 = v11;

  v12 = [(VCPLoaned *)self->_modelEspresso object];
  v13 = v12;
  if (v12)
  {
    [v12 inputBlob];
    v14 = v16;
  }

  else
  {
    v14 = 0;
  }

  *a6 = v14;

  return self->_inputData;
}

- (int)computeSharpnessScore:(float *)a3 textureness:(char *)a4 contrast:(float)a5 imgWidth:(int)a6 cancel:(id)a7
{
  v7 = *&a6;
  v12 = a7;
  v13 = v12;
  if (v12 && ((*(v12 + 2))(v12) & 1) != 0)
  {
    v14 = -128;
  }

  else
  {
    v15 = [(VCPLoaned *)self->_modelEspresso object];
    v14 = [v15 espressoForward:self->_inputData];

    if (!v14)
    {
      if ([(VCPCNNBlurAnalyzer *)self getRevision]== 2)
      {
        v16 = [(VCPLoaned *)self->_modelEspresso object];
        v17 = v16;
        if (v16)
        {
          [v16 outputBlob];
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
        *a3 = v22;
      }

      else
      {
        v19 = [(VCPLoaned *)self->_modelEspresso object];
        v20 = v19;
        if (v19)
        {
          [v19 outputBlob];
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

        v23 = [(VCPLoaned *)self->_modelEspresso object];
        v24 = v23;
        if (v23)
        {
          [v23 outputBlob];
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

        v26 = [(VCPLoaned *)self->_modelEspresso object];
        v27 = v26;
        if (v26)
        {
          [v26 outputBlob];
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

        v29 = [(VCPLoaned *)self->_modelEspresso object];
        v30 = v29;
        if (v29)
        {
          [v29 outputBlob];
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

        *&v31 = a5;
        [(VCPCNNBlurAnalyzer *)self calculateScoreFromNetworkOutput:v32 outChannel:v21 outHeight:v25 outWidth:v28 textureness:a4 contrast:v7 imgWidth:v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45];
        *a3 = v33;
      }

      v14 = 0;
    }
  }

  return v14;
}

- (void)copyBufferFrom:(char *)a3 fromStride:(int64_t)a4 toPtr:(float *)a5 toStride:(int64_t)a6 toWidth:(int)a7 toHeight:(int)a8
{
  v8 = *&a8;
  v9 = *&a7;
  if ([(VCPCNNBlurAnalyzer *)self getRevision]== 2)
  {
    if (v8 >= 1)
    {
      v16 = 0;
      v17 = 0.0;
      v18 = a3;
      do
      {
        if (v9 >= 1)
        {
          v19 = 0;
          do
          {
            LOBYTE(v15) = v18[v19];
            v15 = LODWORD(v15);
            v17 = v17 + v15;
            ++v19;
          }

          while (v9 != v19);
        }

        v18 += a4;
        ++v16;
      }

      while (v16 != v8);
      v20 = v17 / ((v9 * 255.0) * v8);
      v21 = 0;
      v22 = 4 * a6;
      if (v20 >= 0.1)
      {
        do
        {
          if (v9 >= 1)
          {
            v24 = 0;
            do
            {
              LOBYTE(v20) = a3[v24];
              v20 = LODWORD(v20) / 255.0;
              a5[v24++] = v20;
            }

            while (v9 != v24);
          }

          a3 += a4;
          ++v21;
          a5 = (a5 + v22);
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
              LOBYTE(v20) = a3[v23];
              v20 = (LODWORD(v20) + LODWORD(v20)) / 255.0;
              a5[v23++] = v20;
            }

            while (v9 != v23);
          }

          a3 += a4;
          ++v21;
          a5 = (a5 + v22);
        }

        while (v21 != v8);
      }
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = VCPCNNBlurAnalyzerEspresso;
    [(VCPCNNBlurAnalyzer *)&v25 copyBufferFrom:a3 fromStride:a4 toPtr:a5 toStride:a6 toWidth:v9 toHeight:v8];
  }
}

@end