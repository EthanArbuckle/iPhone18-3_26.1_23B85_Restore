@interface VCPCNNBlurAnalyzerMPS
- (VCPCNNBlurAnalyzerMPS)init;
- (float)getInputBuffer:(int)buffer srcWidth:(int)width cnnInputHeight:(int *)height cnnInputWidth:(int *)inputWidth;
- (int)computeSharpnessScore:(float *)score textureness:(char *)textureness contrast:(float)contrast imgWidth:(int)width cancel:(id)cancel;
- (int)prepareModelForSourceWidth:(int)width andSourceHeight:(int)height;
@end

@implementation VCPCNNBlurAnalyzerMPS

- (VCPCNNBlurAnalyzerMPS)init
{
  v8.receiver = self;
  v8.super_class = VCPCNNBlurAnalyzerMPS;
  v2 = [(VCPCNNBlurAnalyzer *)&v8 init];
  if (v2)
  {
    vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    resourceURL = [vcp_mediaAnalysisBundle resourceURL];

    v5 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_blur.dat" relativeToURL:resourceURL];
    modelURL = v2->_modelURL;
    v2->_modelURL = v5;
  }

  return v2;
}

- (int)prepareModelForSourceWidth:(int)width andSourceHeight:(int)height
{
  if (![VCPCNNMetalContext supportGPU:*&width])
  {
    return -50;
  }

  v5 = [[VCPCNNModel alloc] initWithParameters:1 useGPU:1];
  model = self->_model;
  self->_model = v5;

  if (!self->_model)
  {
    return -108;
  }

  v7 = [VCPCNNConvBlock convBlockWithFilterSize:5 filterNum:20 chunk:1 reLU:1 padding:0];
  v8 = [(VCPCNNModel *)self->_model add:v7];
  if (!v8)
  {
    v9 = [VCPCNNConvBlock convBlockWithFilterSize:3 filterNum:32 chunk:1 reLU:1 padding:0];
    v8 = [(VCPCNNModel *)self->_model add:v9];
    if (!v8)
    {
      v10 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:1];
      v8 = [(VCPCNNModel *)self->_model add:v10];
      if (!v8)
      {
        v11 = [VCPCNNConvBlock convBlockWithFilterSize:3 filterNum:64 chunk:1 reLU:1 padding:0];
        v8 = [(VCPCNNModel *)self->_model add:v11];
        if (!v8)
        {
          v12 = [VCPCNNConvBlock convBlockWithFilterSize:3 filterNum:64 chunk:1 reLU:1 padding:0];
          v8 = [(VCPCNNModel *)self->_model add:v12];
          if (!v8)
          {
            v13 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:1];
            v8 = [(VCPCNNModel *)self->_model add:v13];
            if (!v8)
            {
              v16 = [VCPCNNConvBlock convBlockWithFilterSize:4 filterNum:100 chunk:1 reLU:1 padding:0];
              v8 = [(VCPCNNModel *)self->_model add:v16];
              if (!v8)
              {
                v14 = [VCPCNNConvBlock convBlockWithFilterSize:1 filterNum:36 chunk:1 reLU:0 padding:0];
                v8 = [(VCPCNNModel *)self->_model add:v14];
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

- (float)getInputBuffer:(int)buffer srcWidth:(int)width cnnInputHeight:(int *)height cnnInputWidth:(int *)inputWidth
{
  v6 = *&width;
  *height = buffer;
  *inputWidth = width;
  v8 = *height;
  getGPUContext = [(VCPCNNModel *)self->_model getGPUContext];
  v10 = [VCPCNNData cnnDataWithPlane:1 height:v8 width:v6 context:getGPUContext];
  input = self->_input;
  self->_input = v10;

  [(VCPCNNData *)self->_input allocBuffers:1];
  v12 = self->_input;

  return [(VCPCNNData *)v12 data];
}

- (int)computeSharpnessScore:(float *)score textureness:(char *)textureness contrast:(float)contrast imgWidth:(int)width cancel:(id)cancel
{
  v7 = *&width;
  v12 = [(VCPCNNModel *)self->_model dynamicForward:self->_input paramFileUrl:self->_modelURL cancel:cancel];
  if (!v12)
  {
    output = [(VCPCNNModel *)self->_model output];
    data = [output data];
    output2 = [(VCPCNNModel *)self->_model output];
    v27 = [output2 size];
    v26 = [v27 objectAtIndexedSubscript:0];
    intValue = [v26 intValue];
    output3 = [(VCPCNNModel *)self->_model output];
    v23 = [output3 size];
    v13 = [v23 objectAtIndexedSubscript:1];
    intValue2 = [v13 intValue];
    output4 = [(VCPCNNModel *)self->_model output];
    v16 = [output4 size];
    v17 = [v16 objectAtIndexedSubscript:2];
    intValue3 = [v17 intValue];
    *&v19 = contrast;
    [(VCPCNNBlurAnalyzer *)self calculateScoreFromNetworkOutput:data outChannel:intValue outHeight:intValue2 outWidth:intValue3 textureness:textureness contrast:v7 imgWidth:v19];
    *score = v20;
  }

  return v12;
}

@end