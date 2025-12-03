@interface VCPImageSaliencyAnalyzerFullEspresso
+ (id)sharedModel:(id)model;
- (float)getInputBuffer:(int)buffer srcWidth:(int)width cnnInputHeight:(int *)height cnnInputWidth:(int *)inputWidth;
- (int)getSalientRegions:(id)regions;
- (int)prepareModelForSourceWidth:(int)width andSourceHeight:(int)height;
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

- (int)prepareModelForSourceWidth:(int)width andSourceHeight:(int)height
{
  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  resourceURL = [vcp_mediaAnalysisBundle resourceURL];

  v9 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_saliency.espresso.net" relativeToURL:resourceURL];
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

  if (self->_srcWidth == width && self->_srcHeight == height)
  {
    v12 = 0;
    goto LABEL_26;
  }

  if (height == width)
  {
    resConfig = self->_resConfig;
    v14 = @"res_0";
  }

  else
  {
    resConfig = self->_resConfig;
    if (height >= width)
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
      self->_srcWidth = width;
      self->_srcHeight = height;
      goto LABEL_26;
    }

LABEL_25:
    v12 = -108;
  }

LABEL_26:

  return v12;
}

+ (id)sharedModel:(id)model
{
  modelCopy = model;
  v4 = +[VCPSharedInstanceManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__VCPImageSaliencyAnalyzerFullEspresso_sharedModel___block_invoke;
  v8[3] = &unk_1E834CF10;
  v5 = modelCopy;
  v9 = v5;
  v6 = [v4 sharedInstanceWithIdentifier:@"VCPSaliencyFullEspresso" andCreationBlock:v8];

  return v6;
}

VCPCNNModelEspresso *__52__VCPImageSaliencyAnalyzerFullEspresso_sharedModel___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:*(a1 + 32) inputNames:0 outputNames:0 properties:0];

  return v1;
}

- (float)getInputBuffer:(int)buffer srcWidth:(int)width cnnInputHeight:(int *)height cnnInputWidth:(int *)inputWidth
{
  modelEspresso = self->_modelEspresso;
  if (modelEspresso)
  {
    [(VCPCNNModelEspresso *)modelEspresso inputBlob:*&buffer];
    v10 = v15;
  }

  else
  {
    v10 = 0;
  }

  *height = v10;
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

  *inputWidth = v12;
  return self->_inputData;
}

- (int)getSalientRegions:(id)regions
{
  regionsCopy = regions;
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
      if (!regionsCopy)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
      if (!regionsCopy)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    if (!regionsCopy)
    {
      goto LABEL_10;
    }
  }

  if (regionsCopy[2](regionsCopy))
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