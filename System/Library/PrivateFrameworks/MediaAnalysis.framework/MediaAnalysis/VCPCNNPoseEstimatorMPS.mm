@interface VCPCNNPoseEstimatorMPS
- (VCPCNNPoseEstimatorMPS)init;
- (int)computePoseScore:(float *)score;
@end

@implementation VCPCNNPoseEstimatorMPS

- (VCPCNNPoseEstimatorMPS)init
{
  v3 = +[VCPCNNMetalContext supportGPU];
  if (+[VCPCNNMetalContext supportVectorForward])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v35.receiver = self;
  v35.super_class = VCPCNNPoseEstimatorMPS;
  v6 = [(VCPCNNPoseEstimatorMPS *)&v35 init];
  if (!v6)
  {
    goto LABEL_35;
  }

  v7 = [[VCPCNNModel alloc] initWithParameters:1 useGPU:v3];
  model = v6->_model;
  v6->_model = v7;

  v9 = v6->_model;
  if (!v9)
  {
LABEL_21:
    v16 = 0;
LABEL_36:
    v13 = v16;
    goto LABEL_37;
  }

  getGPUContext = [(VCPCNNModel *)v9 getGPUContext];
  v11 = [VCPCNNData cnnDataWithPlane:1 height:40 width:40 context:getGPUContext];
  input = v6->_input;
  v6->_input = v11;

  [(VCPCNNData *)v6->_input allocBuffers:1];
  v13 = [VCPCNNConvBlock convBlockWithFilterSize:5 filterNum:20 chunk:v5 reLU:1 padding:0];
  if ([(VCPCNNModel *)v6->_model add:v13])
  {
LABEL_20:

    goto LABEL_21;
  }

  v14 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:v5];
  if ([(VCPCNNModel *)v6->_model add:v14])
  {
LABEL_19:

    goto LABEL_20;
  }

  v34 = [VCPCNNConvBlock convBlockWithFilterSize:3 filterNum:48 chunk:v5 reLU:1 padding:0];
  if ([(VCPCNNModel *)v6->_model add:v34])
  {
LABEL_18:

    goto LABEL_19;
  }

  v33 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:v5];
  if ([(VCPCNNModel *)v6->_model add:v33])
  {
LABEL_17:

    goto LABEL_18;
  }

  v32 = [VCPCNNConvBlock convBlockWithFilterSize:3 filterNum:64 chunk:v5 reLU:1 padding:0];
  if ([(VCPCNNModel *)v6->_model add:v32])
  {
LABEL_16:

    goto LABEL_17;
  }

  v15 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:v5];
  if ([(VCPCNNModel *)v6->_model add:v15])
  {

    goto LABEL_16;
  }

  v17 = [VCPCNNConvBlock convBlockWithFilterSize:2 filterNum:64 chunk:v5 reLU:1 padding:0];
  if ([(VCPCNNModel *)v6->_model add:v17]|| !v3 && (v21 = [[VCPCNNFlattenBlock alloc] initWithParameters:v4], v22 = [(VCPCNNModel *)v6->_model add:v21], v21, v22))
  {
    v18 = v15;
    v19 = 0;
    v20 = 4;
  }

  else
  {
    v18 = v15;
    v23 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:100 NeuronType:1];
    if ([(VCPCNNModel *)v6->_model add:v23])
    {
      v19 = 0;
      v20 = 4;
    }

    else
    {
      v31 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:5 NeuronType:0];
      if ([(VCPCNNModel *)v6->_model add:v31])
      {
        v19 = 0;
        v20 = 4;
      }

      else
      {
        vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
        resourceURL = [vcp_mediaAnalysisBundle resourceURL];

        v29 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_pose.dat" relativeToURL:resourceURL];
        v25 = v6->_model;
        v26 = [(VCPCNNData *)v6->_input size];
        LODWORD(v25) = [(VCPCNNModel *)v25 prepareNetworkFromURL:v29 withInputSize:v26];

        v27 = v25 != 0;
        v19 = v25 == 0;
        v20 = 4 * v27;
      }
    }
  }

  if ((v20 | 4) == 4)
  {
    if (!v19)
    {
      goto LABEL_21;
    }

LABEL_35:
    v16 = v6;
    goto LABEL_36;
  }

LABEL_37:

  return v13;
}

- (int)computePoseScore:(float *)score
{
  normalization = [(VCPCNNData *)self->_input normalization];
  if (normalization)
  {
    return normalization;
  }

  normalization = [(VCPCNNModel *)self->_model forward:self->_input];
  if (normalization)
  {
    return normalization;
  }

  output = [(VCPCNNModel *)self->_model output];
  softmax = [output softmax];

  if (!softmax)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      output2 = [(VCPCNNModel *)self->_model output];
      v12 = [output2 size];
      v13 = [v12 count];

      output3 = [(VCPCNNModel *)self->_model output];
      v15 = output3;
      if (v13 <= v9)
      {
        break;
      }

      v16 = [output3 size];
      v17 = [v16 objectAtIndexedSubscript:v9];
      v10 *= [v17 intValue];

      ++v9;
    }

    memcpy(score, [output3 data], 4 * v10);

    return 0;
  }

  return softmax;
}

@end