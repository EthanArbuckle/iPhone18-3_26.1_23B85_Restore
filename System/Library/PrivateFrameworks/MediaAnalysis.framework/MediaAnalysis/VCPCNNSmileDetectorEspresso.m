@interface VCPCNNSmileDetectorEspresso
+ (id)sharedModel:(id)a3;
- (VCPCNNSmileDetectorEspresso)init;
- (int)computeSmileScore:(float *)a3;
- (void)dealloc;
@end

@implementation VCPCNNSmileDetectorEspresso

- (VCPCNNSmileDetectorEspresso)init
{
  v3 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v4 = [v3 resourceURL];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_smile.espresso.net" relativeToURL:v4];
  v14.receiver = self;
  v14.super_class = VCPCNNSmileDetectorEspresso;
  v6 = [(VCPCNNSmileDetectorEspresso *)&v14 init];
  if (!v6 || (v7 = operator new[](0x1900uLL, MEMORY[0x1E69E5398]), (v6->_inputData = v7) != 0) && ([objc_opt_class() sharedModel:v5], v8 = objc_claimAutoreleasedReturnValue(), modelEspresso = v6->_modelEspresso, v6->_modelEspresso = v8, modelEspresso, (v10 = v6->_modelEspresso) != 0) && !-[VCPCNNModelEspresso prepareModelWithConfig:](v10, "prepareModelWithConfig:", &stru_1F496CB30))
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v12;
}

+ (id)sharedModel:(id)a3
{
  v3 = a3;
  v4 = +[VCPSharedInstanceManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__VCPCNNSmileDetectorEspresso_sharedModel___block_invoke;
  v8[3] = &unk_1E834CF10;
  v5 = v3;
  v9 = v5;
  v6 = [v4 sharedInstanceWithIdentifier:@"VCPSmileEspresso" andCreationBlock:v8];

  return v6;
}

VCPCNNModelEspresso *__43__VCPCNNSmileDetectorEspresso_sharedModel___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:*(a1 + 32) inputNames:0 outputNames:0 properties:0];

  return v1;
}

- (int)computeSmileScore:(float *)a3
{
  result = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
  if (!result)
  {
    result = [(VCPCNNModelEspresso *)self->_modelEspresso softmax];
    if (!result)
    {
      [(VCPCNNModelEspresso *)self->_modelEspresso outputBlob];
      result = 0;
      *a3 = *(v6 + 4);
    }
  }

  return result;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPCNNSmileDetectorEspresso;
  [(VCPCNNSmileDetectorEspresso *)&v4 dealloc];
}

@end