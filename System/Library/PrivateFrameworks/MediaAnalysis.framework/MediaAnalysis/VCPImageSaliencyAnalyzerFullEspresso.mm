@interface VCPImageSaliencyAnalyzerFullEspresso
+ (id)sharedModel:(id)a3;
- (float)getInputBuffer:(int)a3 srcWidth:(int)a4 cnnInputHeight:(int *)a5 cnnInputWidth:(int *)a6;
- (int)getSalientRegions:(id)a3;
- (int)prepareModelForSourceWidth:(int)a3 andSourceHeight:(int)a4;
- (void)dealloc;
@end

@implementation VCPImageSaliencyAnalyzerFullEspresso

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPImageSaliencyAnalyzerFullEspresso;
  [(VCPImageSaliencyAnalyzerFullEspresso *)&v4 dealloc];
}

- (int)prepareModelForSourceWidth:(int)a3 andSourceHeight:(int)a4
{
  v7 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v8 = [v7 resourceURL];

  v9 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_saliency.espresso.net" relativeToURL:v8];
  if (!self->_modelEspresso)
  {
    v10 = [objc_opt_class() sharedModel:v9];
    modelEspresso = self->_modelEspresso;
    self->_modelEspresso = v10;

    if (!self->_modelEspresso)
    {
      goto LABEL_25;
    }
  }

  if (self->_srcWidth == a3 && self->_srcHeight == a4)
  {
    v12 = 0;
    goto LABEL_26;
  }

  if (a4 == a3)
  {
    resConfig = self->_resConfig;
    v14 = @"res_0";
  }

  else
  {
    resConfig = self->_resConfig;
    if (a4 >= a3)
    {
      v14 = @"res_2";
    }

    else
    {
      v14 = @"res_1";
    }
  }

  self->_resConfig = &v14->isa;

  v12 = [(VCPCNNModelEspresso *)self->_modelEspresso prepareModelWithConfig:self->_resConfig];
  if (!v12)
  {
    self->_srcHeight = 0;
    self->_srcWidth = 0;
    inputData = self->_inputData;
    if (inputData)
    {
      MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
    }

    v16 = self->_modelEspresso;
    if (v16 && ([(VCPCNNModelEspresso *)v16 inputBlob], (v17 = self->_modelEspresso) != 0))
    {
      [(VCPCNNModelEspresso *)v17 inputBlob];
      v18 = self->_modelEspresso;
      v19 = v26 * v27;
      if (v18)
      {
        [(VCPCNNModelEspresso *)v18 inputBlob];
        v20 = v25;
        goto LABEL_20;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = 0;
LABEL_20:
    v21 = v19 * v20;
    if (v21 >> 62)
    {
      v22 = -1;
    }

    else
    {
      v22 = 4 * v21;
    }

    v23 = operator new[](v22, MEMORY[0x1E69E5398]);
    self->_inputData = v23;
    if (v23)
    {
      v12 = 0;
      self->_srcWidth = a3;
      self->_srcHeight = a4;
      goto LABEL_26;
    }

LABEL_25:
    v12 = -108;
  }

LABEL_26:

  return v12;
}

+ (id)sharedModel:(id)a3
{
  v3 = a3;
  v4 = +[VCPSharedInstanceManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__VCPImageSaliencyAnalyzerFullEspresso_sharedModel___block_invoke;
  v8[3] = &unk_1E834CF10;
  v5 = v3;
  v9 = v5;
  v6 = [v4 sharedInstanceWithIdentifier:@"VCPSaliencyFullEspresso" andCreationBlock:v8];

  return v6;
}

VCPCNNModelEspresso *__52__VCPImageSaliencyAnalyzerFullEspresso_sharedModel___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:*(a1 + 32) inputNames:0 outputNames:0 properties:0];

  return v1;
}

- (float)getInputBuffer:(int)a3 srcWidth:(int)a4 cnnInputHeight:(int *)a5 cnnInputWidth:(int *)a6
{
  modelEspresso = self->_modelEspresso;
  if (modelEspresso)
  {
    [(VCPCNNModelEspresso *)modelEspresso inputBlob:*&a3];
    v10 = v15;
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
  v11 = self->_modelEspresso;
  if (v11)
  {
    [(VCPCNNModelEspresso *)v11 inputBlob];
    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

  *a6 = v12;
  return self->_inputData;
}

- (int)getSalientRegions:(id)a3
{
  v4 = a3;
  modelEspresso = self->_modelEspresso;
  if (modelEspresso)
  {
    [(VCPCNNModelEspresso *)modelEspresso outputBlob];
    v6 = self->_modelEspresso;
    v7 = DWORD2(v18);
    if (v6)
    {
      [(VCPCNNModelEspresso *)v6 outputBlob];
      v8 = v18;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
      if (!v4)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4[2](v4))
  {
    v9 = -128;
    goto LABEL_15;
  }

LABEL_10:
  v9 = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
  if (!v9)
  {
    v10 = self->_modelEspresso;
    if (v10)
    {
      [(VCPCNNModelEspresso *)v10 outputBlob];
      v11 = v13;
    }

    else
    {
      v11 = 0;
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
    }

    v9 = [(VCPImageSaliencyAnalyzer *)self generateSalientRegion:v11 outHeight:v7 outWidth:v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23];
  }

LABEL_15:

  return v9;
}

@end