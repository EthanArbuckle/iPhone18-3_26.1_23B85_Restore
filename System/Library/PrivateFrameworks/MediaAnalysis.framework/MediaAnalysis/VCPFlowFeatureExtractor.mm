@interface VCPFlowFeatureExtractor
- (id)initModule:(int)module config:(id)config cancel:(id)cancel;
- (int)bindWithBuffers:(__CVBuffer *)buffers imgFeature:(id *)feature;
- (int)extractFeatureFromImage:(__CVBuffer *)image toFeature:(id *)feature callback:(id)callback;
- (int)setFeatureShape:(id *)shape height:(int)height width:(int)width level:(int)level;
@end

@implementation VCPFlowFeatureExtractor

- (id)initModule:(int)module config:(id)config cancel:(id)cancel
{
  configCopy = config;
  cancelCopy = cancel;
  v10 = cancelCopy;
  if (cancelCopy && ((*(cancelCopy + 2))(cancelCopy) & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = VCPFlowFeatureExtractor;
    v12 = [(VCPEspressoModel *)&v18 initModelWithName:@"feature_extraction" andConfig:configCopy];
    v11 = v12;
    if (v12)
    {
      v12->_numLevels = module;
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

- (int)bindWithBuffers:(__CVBuffer *)buffers imgFeature:(id *)feature
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

- (int)extractFeatureFromImage:(__CVBuffer *)image toFeature:(id *)feature callback:(id)callback
{
  callbackCopy = callback;
  v9 = [(VCPFlowFeatureExtractor *)self bindWithBuffers:image imgFeature:feature];
  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Feature extractor: fail to bind buffers", buf, 2u);
    }

    callbackCopy[2](callbackCopy);
  }

  else
  {
    v11 = callbackCopy;
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

- (int)setFeatureShape:(id *)shape height:(int)height width:(int)width level:(int)level
{
  levelCopy = level;
  v10 = [(NSArray *)self->_featureChannels objectAtIndexedSubscript:level];
  shape->var0 = [v10 intValue];

  v11 = 1 << (levelCopy - 1);
  shape->var1 = (v11 + height) >> levelCopy;
  shape->var2 = (v11 + width) >> levelCopy;
  return 0;
}

@end