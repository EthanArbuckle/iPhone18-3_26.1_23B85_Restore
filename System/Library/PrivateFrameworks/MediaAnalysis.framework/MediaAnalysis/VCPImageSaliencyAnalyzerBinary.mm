@interface VCPImageSaliencyAnalyzerBinary
- (float)getInputBuffer:(int)buffer srcWidth:(int)width cnnInputHeight:(int *)height cnnInputWidth:(int *)inputWidth;
- (int)getSalientRegions:(id)regions;
- (int)prepareModelForSourceWidth:(int)width andSourceHeight:(int)height;
@end

@implementation VCPImageSaliencyAnalyzerBinary

- (int)prepareModelForSourceWidth:(int)width andSourceHeight:(int)height
{
  v5 = [VCPCNNMetalContext supportGPU:*&width];
  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  resourceURL = [vcp_mediaAnalysisBundle resourceURL];

  v8 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_saliency_binary.dat" relativeToURL:resourceURL];
  modelURL = self->_modelURL;
  self->_modelURL = v8;

  v10 = [[VCPCNNModel alloc] initWithParameters:1 useGPU:v5];
  model = self->_model;
  self->_model = v10;

  if (self->_model)
  {
    v12 = [[VCPCNNConvBlockBinary alloc] initWithParameters:3 filterNum:32 convType:0 reLU:0 padding:1];
    v13 = [(VCPCNNModel *)self->_model add:v12];
    if (!v13)
    {
      v14 = [[VCPCNNConvBlockBinary alloc] initWithParameters:3 filterNum:32 convType:1 reLU:0 padding:1];
      v13 = [(VCPCNNModel *)self->_model add:v14];
      if (!v13)
      {
        v15 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:self->super._chunk];
        v13 = [(VCPCNNModel *)self->_model add:v15];
        if (!v13)
        {
          v27 = [[VCPCNNConvBlockBinary alloc] initWithParameters:3 filterNum:64 convType:1 reLU:0 padding:1];
          v13 = [(VCPCNNModel *)self->_model add:v27];
          if (!v13)
          {
            v26 = [[VCPCNNConvBlockBinary alloc] initWithParameters:3 filterNum:64 convType:1 reLU:0 padding:1];
            v13 = [(VCPCNNModel *)self->_model add:v26];
            if (!v13)
            {
              v25 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:self->super._chunk];
              v13 = [(VCPCNNModel *)self->_model add:v25];
              if (!v13)
              {
                v24 = [[VCPCNNConvBlockBinary alloc] initWithParameters:3 filterNum:128 convType:1 reLU:0 padding:1];
                v13 = [(VCPCNNModel *)self->_model add:v24];
                if (!v13)
                {
                  v23 = [[VCPCNNConvBlockBinary alloc] initWithParameters:3 filterNum:128 convType:1 reLU:0 padding:1];
                  v13 = [(VCPCNNModel *)self->_model add:v23];
                  if (!v13)
                  {
                    v22 = [[VCPCNNConvBlockBinary alloc] initWithParameters:3 filterNum:128 convType:1 reLU:0 padding:1];
                    v13 = [(VCPCNNModel *)self->_model add:v22];
                    if (!v13)
                    {
                      v16 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:self->super._chunk];
                      v13 = [(VCPCNNModel *)self->_model add:v16];
                      if (!v13)
                      {
                        v17 = [[VCPCNNConvBlockBinary alloc] initWithParameters:3 filterNum:256 convType:1 reLU:0 padding:1];
                        v13 = [(VCPCNNModel *)self->_model add:v17];
                        if (!v13)
                        {
                          v21 = [[VCPCNNConvBlockBinary alloc] initWithParameters:3 filterNum:256 convType:1 reLU:0 padding:1];
                          v13 = [(VCPCNNModel *)self->_model add:v21];
                          if (!v13)
                          {
                            v20 = [[VCPCNNConvBlockBinary alloc] initWithParameters:3 filterNum:256 convType:1 reLU:0 padding:1];
                            v13 = [(VCPCNNModel *)self->_model add:v20];
                            if (!v13)
                            {
                              v18 = [[VCPCNNConvBlockBinary alloc] initWithParameters:1 filterNum:1 convType:1 reLU:1 padding:1];
                              v13 = [(VCPCNNModel *)self->_model add:v18];
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v13 = -108;
  }

  return v13;
}

- (float)getInputBuffer:(int)buffer srcWidth:(int)width cnnInputHeight:(int *)height cnnInputWidth:(int *)inputWidth
{
  v6 = *&width;
  *height = buffer;
  *inputWidth = width;
  v8 = *height;
  getGPUContext = [(VCPCNNModel *)self->_model getGPUContext];
  v10 = [VCPCNNData cnnDataWithPlane:4 height:v8 width:v6 context:getGPUContext];
  input = self->_input;
  self->_input = v10;

  [(VCPCNNData *)self->_input allocBuffers:1];
  v12 = self->_input;

  return [(VCPCNNData *)v12 data];
}

- (int)getSalientRegions:(id)regions
{
  v4 = [(VCPCNNModel *)self->_model dynamicForward:self->_input paramFileUrl:self->_modelURL cancel:regions];
  if (!v4)
  {
    output = [(VCPCNNModel *)self->_model output];
    v6 = [output size];
    v7 = [v6 objectAtIndexedSubscript:1];
    intValue = [v7 intValue];

    output2 = [(VCPCNNModel *)self->_model output];
    v10 = [output2 size];
    v11 = [v10 objectAtIndexedSubscript:2];
    intValue2 = [v11 intValue];

    output3 = [(VCPCNNModel *)self->_model output];
    v4 = -[VCPImageSaliencyAnalyzer generateSalientRegion:outHeight:outWidth:](self, "generateSalientRegion:outHeight:outWidth:", [output3 data], intValue, intValue2);
  }

  return v4;
}

@end