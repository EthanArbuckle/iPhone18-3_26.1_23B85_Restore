@interface FeatureExtractor
- (BOOL)extractFeaturesFromImage:(__CVBuffer *)a3 toFeatures:(id *)a4 callback:(id)a5;
- (FeatureExtractor)initWithMode:(int64_t)a3 revision:(int64_t)a4;
- (void)getOutputTensorSize:(id *)a3 level:(unsigned int)a4;
- (void)setupNetworkModel;
@end

@implementation FeatureExtractor

- (FeatureExtractor)initWithMode:(int64_t)a3 revision:(int64_t)a4
{
  [(EspressoModel *)self setUsage:?];
  [(FeatureExtractor *)self setRevision:a4];
  [(FeatureExtractor *)self setupNetworkModel];
  espresso_file = self->_espresso_file;
  v11.receiver = self;
  v11.super_class = FeatureExtractor;
  v8 = [(EspressoModel *)&v11 initWithModelName:espresso_file usage:a3];
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
  FRCGetInputFrameSizeForUsage([(EspressoModel *)self usage], &v9, &v8);
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

- (BOOL)extractFeaturesFromImage:(__CVBuffer *)a3 toFeatures:(id *)a4 callback:(id)a5
{
  v7 = a5;
  inputBlob = self->_inputBlob;
  plan = self->super._net.plan;
  v10 = *&self->super._net.network_index;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_Featureexracto.isa);
LABEL_3:
    v11 = 0;
    goto LABEL_11;
  }

  if (self->_numLevels)
  {
    v12 = 0;
    v13 = 0;
    var1 = a4->var1;
    while (1)
    {
      v15 = self->_outputBlobs[v12];
      v16 = var1[v12];
      v17 = self->super._net.plan;
      v18 = *&self->super._net.network_index;
      if (espresso_network_bind_direct_cvpixelbuffer())
      {
        break;
      }

      v12 = (v13 + 1);
      v13 = v12;
      if (self->_numLevels <= v12)
      {
        goto LABEL_8;
      }
    }

    NSLog(&cfstr_Featureexracto_0.isa, v13);
    goto LABEL_3;
  }

LABEL_8:
  kdebug_trace();
  v19 = self->super._plan;
  callbackQueue = self->super._callbackQueue;
  v23 = MEMORY[0x277D85DD0];
  v24 = v7;
  v21 = espresso_plan_submit();
  v11 = v21 == 0;
  if (v21)
  {
    NSLog(&cfstr_Featureextract.isa, [(EspressoModel *)self usage], v23, 3221225472, __65__FeatureExtractor_extractFeaturesFromImage_toFeatures_callback___block_invoke, &unk_278FEA538, v24);
  }

LABEL_11:
  return v11;
}

uint64_t __65__FeatureExtractor_extractFeaturesFromImage_toFeatures_callback___block_invoke(uint64_t a1)
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

- (void)getOutputTensorSize:(id *)a3 level:(unsigned int)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v12[0] = xmmword_24A8FF120;
  v12[1] = xmmword_24A8FF130;
  v12[2] = xmmword_24A8FF140;
  v10 = 0;
  v11 = 0;
  FRCGetInputFrameSizeForUsage([(EspressoModel *)self usage], &v11, &v10);
  v7 = v10;
  v6 = v11;
  v8 = a4 + 1;
  do
  {
    v6 = (v6 + 1) >> 1;
    v7 = (v7 + 1) >> 1;
    --v8;
  }

  while (v8);
  a3->var0 = v6;
  a3->var1 = v7;
  a3->var2 = *(v12 + a4);
  v9 = *MEMORY[0x277D85DE8];
}

@end