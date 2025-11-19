@interface VCPImageSaliencyAnalyzerBinary
- (float)getInputBuffer:(int)a3 srcWidth:(int)a4 cnnInputHeight:(int *)a5 cnnInputWidth:(int *)a6;
- (int)getSalientRegions:(id)a3;
- (int)prepareModelForSourceWidth:(int)a3 andSourceHeight:(int)a4;
@end

@implementation VCPImageSaliencyAnalyzerBinary

- (int)prepareModelForSourceWidth:(int)a3 andSourceHeight:(int)a4
{
  v5 = [VCPCNNMetalContext supportGPU:*&a3];
  v6 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v7 = [v6 resourceURL];

  v8 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_saliency_binary.dat" relativeToURL:v7];
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

- (float)getInputBuffer:(int)a3 srcWidth:(int)a4 cnnInputHeight:(int *)a5 cnnInputWidth:(int *)a6
{
  v6 = *&a4;
  *a5 = a3;
  *a6 = a4;
  v8 = *a5;
  v9 = [(VCPCNNModel *)self->_model getGPUContext];
  v10 = [VCPCNNData cnnDataWithPlane:4 height:v8 width:v6 context:v9];
  input = self->_input;
  self->_input = v10;

  [(VCPCNNData *)self->_input allocBuffers:1];
  v12 = self->_input;

  return [(VCPCNNData *)v12 data];
}

- (int)getSalientRegions:(id)a3
{
  v4 = [(VCPCNNModel *)self->_model dynamicForward:self->_input paramFileUrl:self->_modelURL cancel:a3];
  if (!v4)
  {
    v5 = [(VCPCNNModel *)self->_model output];
    v6 = [v5 size];
    v7 = [v6 objectAtIndexedSubscript:1];
    v8 = [v7 intValue];

    v9 = [(VCPCNNModel *)self->_model output];
    v10 = [v9 size];
    v11 = [v10 objectAtIndexedSubscript:2];
    v12 = [v11 intValue];

    v13 = [(VCPCNNModel *)self->_model output];
    v4 = -[VCPImageSaliencyAnalyzer generateSalientRegion:outHeight:outWidth:](self, "generateSalientRegion:outHeight:outWidth:", [v13 data], v8, v12);
  }

  return v4;
}

@end