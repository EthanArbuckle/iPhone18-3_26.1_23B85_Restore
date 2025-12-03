@interface OFFeatureExtractor
- (BOOL)extractFeaturesFromImage:(__CVBuffer *)image toFeatures:(id *)features callback:(id)callback;
- (OFFeatureExtractor)initWithMode:(int64_t)mode revision:(int64_t)revision;
- (void)getOutputTensorSize:(id *)size level:(unsigned int)level;
- (void)setupNetworkModel;
@end

@implementation OFFeatureExtractor

- (OFFeatureExtractor)initWithMode:(int64_t)mode revision:(int64_t)revision
{
  [(VEEspressoModel *)self setUsage:?];
  [(OFFeatureExtractor *)self setRevision:revision];
  [(OFFeatureExtractor *)self setupNetworkModel];
  espresso_file = self->_espresso_file;
  v11.receiver = self;
  v11.super_class = OFFeatureExtractor;
  v8 = [(VEEspressoModel *)&v11 initWithModelName:espresso_file usage:mode];
  if (v8)
  {
    v8->_numLevels = [objc_opt_class() numLevels];
    v9 = v8;
  }

  return v8;
}

- (void)setupNetworkModel
{
  self->_inputBlob = "input_image";
  self->_outputBlobs = &outputBlobNames;
  v8 = 0;
  v9 = 0;
  getInputFrameSizeForUsage([(VEEspressoModel *)self usage], &v9, &v8);
  if (v9 <= 0x3E8)
  {
    v3 = @"optical_flow_feature_extractor_pyrlite";
  }

  else
  {
    v3 = @"optical_flow_feature_extractor_pyrlite_HD";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:v3];
  espresso_file = self->_espresso_file;
  self->_espresso_file = v4;

  if (self->_revision != 1)
  {
    v6 = [(NSString *)self->_espresso_file stringByAppendingFormat:@"_rev%ld", self->_revision];
    v7 = self->_espresso_file;
    self->_espresso_file = v6;
  }
}

- (BOOL)extractFeaturesFromImage:(__CVBuffer *)image toFeatures:(id *)features callback:(id)callback
{
  callbackCopy = callback;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v7 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [OFFeatureExtractor extractFeaturesFromImage:v7 toFeatures:? callback:?];
      }
    }

LABEL_5:
    v8 = 0;
    goto LABEL_15;
  }

  if (self->_numLevels)
  {
    LODWORD(v9) = 0;
    while (!espresso_network_bind_direct_cvpixelbuffer())
    {
      v9 = (v9 + 1);
      if (self->_numLevels <= v9)
      {
        goto LABEL_10;
      }
    }

    if ((global_logLevel & 0x10) != 0)
    {
      v13 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [OFFeatureExtractor extractFeaturesFromImage:v9 toFeatures:v13 callback:?];
      }
    }

    goto LABEL_5;
  }

LABEL_10:
  kdebug_trace();
  v14 = callbackCopy;
  v10 = espresso_plan_submit();
  v8 = v10 == 0;
  if (v10)
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v11 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [OFFeatureExtractor extractFeaturesFromImage:v11 toFeatures:self callback:?];
      }
    }
  }

LABEL_15:
  return v8;
}

uint64_t __67__OFFeatureExtractor_extractFeaturesFromImage_toFeatures_callback___block_invoke(uint64_t a1)
{
  kdebug_trace();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)getOutputTensorSize:(id *)size level:(unsigned int)level
{
  v12 = *MEMORY[0x277D85DE8];
  v11[0] = xmmword_2487C3850;
  v11[1] = xmmword_2487C3860;
  v11[2] = xmmword_2487C3870;
  v9 = 0;
  v10 = 0;
  getInputFrameSizeForUsage([(VEEspressoModel *)self usage], &v10, &v9);
  v7 = v9;
  v6 = v10;
  v8 = level + 1;
  do
  {
    v6 = (v6 + 1) >> 1;
    v7 = (v7 + 1) >> 1;
    --v8;
  }

  while (v8);
  size->var0 = v6;
  size->var1 = v7;
  size->var2 = *(v11 + level);
}

- (void)extractFeaturesFromImage:(int)a1 toFeatures:(NSObject *)a2 callback:.cold.2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_24874B000, a2, OS_LOG_TYPE_ERROR, "FeatureExractor: Error ! Failed to bind the output buffer [%d]", v2, 8u);
}

- (void)extractFeaturesFromImage:(void *)a1 toFeatures:(void *)a2 callback:.cold.3(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 usage];
  _os_log_error_impl(&dword_24874B000, v3, OS_LOG_TYPE_ERROR, "OFFeatureExtractor: Error !! Network execution Failed. (Usage:%ld)", &v4, 0xCu);
}

@end