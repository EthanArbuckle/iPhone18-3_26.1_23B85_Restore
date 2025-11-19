@interface VCPFlowFeatureExtractor
- (id)initModule:(int)a3 config:(id)a4 cancel:(id)a5;
- (int)bindWithBuffers:(__CVBuffer *)a3 imgFeature:(id *)a4;
- (int)extractFeatureFromImage:(__CVBuffer *)a3 toFeature:(id *)a4 callback:(id)a5;
- (int)setFeatureShape:(id *)a3 height:(int)a4 width:(int)a5 level:(int)a6;
@end

@implementation VCPFlowFeatureExtractor

- (id)initModule:(int)a3 config:(id)a4 cancel:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9 && ((*(v9 + 2))(v9) & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = VCPFlowFeatureExtractor;
    v12 = [(VCPEspressoModel *)&v18 initModelWithName:@"feature_extraction" andConfig:v8];
    v11 = v12;
    if (v12)
    {
      v12->_numLevels = a3;
      inputBlobName = v12->_inputBlobName;
      v12->_inputBlobName = @"t_0";

      featureBlobNames = v11->_featureBlobNames;
      v11->_featureBlobNames = &unk_1F49BEC38;

      featureChannels = v11->_featureChannels;
      v11->_featureChannels = &unk_1F49BEC50;

      self = v11;
    }

    else
    {
      self = 0;
    }
  }

  v16 = v11;

  return v16;
}

- (int)bindWithBuffers:(__CVBuffer *)a3 imgFeature:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  [(NSString *)self->_inputBlobName UTF8String];
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Feature extractor: fail to bind input", v11, 2u);
    }

    v5 = 0;
LABEL_6:
    v6 = -108;
    goto LABEL_14;
  }

  if (self->_numLevels >= 2u)
  {
    v7 = 0;
    v5 = 0;
    while (1)
    {
      v8 = [(NSArray *)self->_featureBlobNames objectAtIndexedSubscript:v7];

      v5 = v8;
      [v8 UTF8String];
      if (espresso_network_bind_direct_cvpixelbuffer())
      {
        break;
      }

      v9 = v7 + 2;
      ++v7;
      if (v9 >= self->_numLevels)
      {
        goto LABEL_13;
      }
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109120;
      v11[1] = v7 + 1;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Feature extractor: fail to bind output at level %d", v11, 8u);
    }

    goto LABEL_6;
  }

  v5 = 0;
LABEL_13:
  v6 = 0;
LABEL_14:

  return v6;
}

- (int)extractFeatureFromImage:(__CVBuffer *)a3 toFeature:(id *)a4 callback:(id)a5
{
  v8 = a5;
  v9 = [(VCPFlowFeatureExtractor *)self bindWithBuffers:a3 imgFeature:a4];
  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Feature extractor: fail to bind buffers", buf, 2u);
    }

    v8[2](v8);
  }

  else
  {
    v11 = v8;
    if (espresso_plan_submit())
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Feature extractor: fail to execute", buf, 2u);
      }

      v9 = -18;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t __70__VCPFlowFeatureExtractor_extractFeatureFromImage_toFeature_callback___block_invoke(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Feature extractor: executing callback", v3, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (int)setFeatureShape:(id *)a3 height:(int)a4 width:(int)a5 level:(int)a6
{
  v6 = a6;
  v10 = [(NSArray *)self->_featureChannels objectAtIndexedSubscript:a6];
  a3->var0 = [v10 intValue];

  v11 = 1 << (v6 - 1);
  a3->var1 = (v11 + a4) >> v6;
  a3->var2 = (v11 + a5) >> v6;
  return 0;
}

@end