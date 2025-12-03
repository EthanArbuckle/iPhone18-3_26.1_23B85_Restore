@interface VCPCNNFaceLandmarkDetectorMPS
- (VCPCNNFaceLandmarkDetectorMPS)init;
- (int)computeLandmarks:(float *)landmarks;
@end

@implementation VCPCNNFaceLandmarkDetectorMPS

- (VCPCNNFaceLandmarkDetectorMPS)init
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
  v35.super_class = VCPCNNFaceLandmarkDetectorMPS;
  v6 = [(VCPCNNFaceLandmarkDetectorMPS *)&v35 init];
  if (!v6)
  {
    goto LABEL_35;
  }

  v7 = [[VCPCNNModel alloc] initWithParameters:1 useGPU:v3];
  modelLandmarks = v6->_modelLandmarks;
  v6->_modelLandmarks = v7;

  v9 = v6->_modelLandmarks;
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
  faceInput = v6->_faceInput;
  v6->_faceInput = v11;

  [(VCPCNNData *)v6->_faceInput allocBuffers:1];
  v13 = [VCPCNNConvBlock convBlockWithFilterSize:5 filterNum:20 chunk:v5 reLU:1 padding:0];
  if ([(VCPCNNModel *)v6->_modelLandmarks add:v13])
  {
LABEL_20:

    goto LABEL_21;
  }

  v14 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:v5];
  if ([(VCPCNNModel *)v6->_modelLandmarks add:v14])
  {
LABEL_19:

    goto LABEL_20;
  }

  v34 = [VCPCNNConvBlock convBlockWithFilterSize:3 filterNum:48 chunk:v5 reLU:1 padding:0];
  if ([(VCPCNNModel *)v6->_modelLandmarks add:v34])
  {
LABEL_18:

    goto LABEL_19;
  }

  v33 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:v5];
  if ([(VCPCNNModel *)v6->_modelLandmarks add:v33])
  {
LABEL_17:

    goto LABEL_18;
  }

  v32 = [VCPCNNConvBlock convBlockWithFilterSize:3 filterNum:64 chunk:v5 reLU:1 padding:0];
  if ([(VCPCNNModel *)v6->_modelLandmarks add:v32])
  {
LABEL_16:

    goto LABEL_17;
  }

  v15 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:v5];
  if ([(VCPCNNModel *)v6->_modelLandmarks add:v15])
  {

    goto LABEL_16;
  }

  v17 = [VCPCNNConvBlock convBlockWithFilterSize:2 filterNum:64 chunk:v5 reLU:1 padding:0];
  if ([(VCPCNNModel *)v6->_modelLandmarks add:v17]|| !v3 && (v21 = [[VCPCNNFlattenBlock alloc] initWithParameters:v4], v22 = [(VCPCNNModel *)v6->_modelLandmarks add:v21], v21, v22))
  {
    v18 = v15;
    v19 = 0;
    v20 = 4;
  }

  else
  {
    v18 = v15;
    v23 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:100 NeuronType:1];
    if ([(VCPCNNModel *)v6->_modelLandmarks add:v23])
    {
      v19 = 0;
      v20 = 4;
    }

    else
    {
      v31 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:14 NeuronType:1];
      if ([(VCPCNNModel *)v6->_modelLandmarks add:v31])
      {
        v19 = 0;
        v20 = 4;
      }

      else
      {
        vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
        resourceURL = [vcp_mediaAnalysisBundle resourceURL];

        v29 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_lm.dat" relativeToURL:resourceURL];
        v25 = v6->_modelLandmarks;
        v26 = [(VCPCNNData *)v6->_faceInput size];
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

- (int)computeLandmarks:(float *)landmarks
{
  result = [(VCPCNNData *)self->_faceInput normalization];
  if (!result)
  {
    result = [(VCPCNNModel *)self->_modelLandmarks forward:self->_faceInput];
    if (!result)
    {
      v6 = 0;
      v7 = 1;
      while (1)
      {
        output = [(VCPCNNModel *)self->_modelLandmarks output];
        v9 = [output size];
        v10 = [v9 count];

        output2 = [(VCPCNNModel *)self->_modelLandmarks output];
        v12 = output2;
        if (v10 <= v6)
        {
          break;
        }

        v13 = [output2 size];
        v14 = [v13 objectAtIndexedSubscript:v6];
        v7 *= [v14 intValue];

        ++v6;
      }

      memcpy(landmarks, [output2 data], 4 * v7);

      return 0;
    }
  }

  return result;
}

@end