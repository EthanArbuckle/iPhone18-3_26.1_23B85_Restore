@interface VCPCNNPoseEstimatorEspresso
+ (id)sharedModel:(id)model;
- (VCPCNNPoseEstimatorEspresso)init;
- (int)computePoseScore:(float *)score;
- (void)dealloc;
@end

@implementation VCPCNNPoseEstimatorEspresso

- (VCPCNNPoseEstimatorEspresso)init
{
  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  resourceURL = [vcp_mediaAnalysisBundle resourceURL];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_facepose.espresso.net" relativeToURL:resourceURL];
  v14.receiver = self;
  v14.super_class = VCPCNNPoseEstimatorEspresso;
  v6 = [(VCPCNNPoseEstimatorEspresso *)&v14 init];
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

+ (id)sharedModel:(id)model
{
  modelCopy = model;
  v4 = +[VCPSharedInstanceManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__VCPCNNPoseEstimatorEspresso_sharedModel___block_invoke;
  v8[3] = &unk_1E834CF10;
  v5 = modelCopy;
  v9 = v5;
  v6 = [v4 sharedInstanceWithIdentifier:@"VCPPoseEspresso" andCreationBlock:v8];

  return v6;
}

VCPCNNModelEspresso *__43__VCPCNNPoseEstimatorEspresso_sharedModel___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:*(a1 + 32) inputNames:0 outputNames:0 properties:0];

  return v1;
}

- (int)computePoseScore:(float *)score
{
  [(VCPCNNModelEspresso *)self->_modelEspresso normalization:self->_inputData];
  result = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
  if (!result)
  {
    result = [(VCPCNNModelEspresso *)self->_modelEspresso softmax];
    if (!result)
    {
      modelEspresso = self->_modelEspresso;
      if (modelEspresso)
      {
        [(VCPCNNModelEspresso *)modelEspresso outputBlob];
        v7 = self->_modelEspresso;
        v8 = v16;
        if (v7)
        {
          [(VCPCNNModelEspresso *)v7 outputBlob];
          v9 = self->_modelEspresso;
          if (v9)
          {
            [(VCPCNNModelEspresso *)v9 outputBlob];
            v10 = self->_modelEspresso;
            v11 = 4 * v15 * v14;
            if (v10)
            {
              [(VCPCNNModelEspresso *)v10 outputBlob];
              v12 = v13;
LABEL_11:
              memcpy(score, v8, v12 * v11);
              return 0;
            }

LABEL_10:
            v12 = 0;
            goto LABEL_11;
          }
        }
      }

      else
      {
        v8 = 0;
      }

      v11 = 0;
      goto LABEL_10;
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
  v4.super_class = VCPCNNPoseEstimatorEspresso;
  [(VCPCNNPoseEstimatorEspresso *)&v4 dealloc];
}

@end