@interface FlowAdaptationFeatureExtractor
- (BOOL)extractFeaturesFromImage:(__CVBuffer *)a3 toFeatures:(id *)a4 callback:(id)a5;
- (FlowAdaptationFeatureExtractor)initWithMode:(int64_t)a3 revision:(int64_t)a4;
- (void)getOutputTensorSize:(id *)a3 level:(unsigned int)a4;
- (void)setupNetworkModel;
@end

@implementation FlowAdaptationFeatureExtractor

- (FlowAdaptationFeatureExtractor)initWithMode:(int64_t)a3 revision:(int64_t)a4
{
  [(EspressoModel *)self setUsage:?];
  [(FeatureExtractor *)self setRevision:a4];
  [(FlowAdaptationFeatureExtractor *)self setupNetworkModel];
  espresso_file = self->super._espresso_file;
  v10.receiver = self;
  v10.super_class = FlowAdaptationFeatureExtractor;
  v8 = [(EspressoModel *)&v10 initWithModelName:espresso_file usage:a3];
  if (!v8)
  {
    NSLog(&cfstr_ErrorFailedToC_14.isa, a3);
  }

  return v8;
}

- (void)setupNetworkModel
{
  self->super._inputBlob = "0";
  self->super._outputBlobs = &outputBlobNames_2;
  espresso_file = self->super._espresso_file;
  self->super._espresso_file = @"flow_adaptation_feature_extractor";

  if ([(FeatureExtractor *)self revision]!= 1)
  {
    v4 = [(NSString *)self->super._espresso_file stringByAppendingFormat:@"_rev%ld", [(FeatureExtractor *)self revision]];
    v5 = self->super._espresso_file;
    self->super._espresso_file = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)extractFeaturesFromImage:(__CVBuffer *)a3 toFeatures:(id *)a4 callback:(id)a5
{
  v7 = a5;
  inputBlob = self->super._inputBlob;
  plan = self->super.super._net.plan;
  v10 = *&self->super.super._net.network_index;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_Flowadaptation_0.isa);
LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v11 = *self->super._outputBlobs;
  var3 = a4->var3;
  v13 = self->super.super._net.plan;
  v14 = *&self->super.super._net.network_index;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_Flowadaptation_1.isa);
    goto LABEL_5;
  }

  v17 = self->super.super._plan;
  callbackQueue = self->super.super._callbackQueue;
  v20 = MEMORY[0x277D85DD0];
  v21 = v7;
  v19 = espresso_plan_submit();
  v15 = v19 == 0;
  if (v19)
  {
    NSLog(&cfstr_Flowadaptation_2.isa, [(EspressoModel *)self usage], v20, 3221225472, __79__FlowAdaptationFeatureExtractor_extractFeaturesFromImage_toFeatures_callback___block_invoke, &unk_278FEA538, v21);
  }

LABEL_6:
  return v15;
}

uint64_t __79__FlowAdaptationFeatureExtractor_extractFeaturesFromImage_toFeatures_callback___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getOutputTensorSize:(id *)a3 level:(unsigned int)a4
{
  v5.receiver = self;
  v5.super_class = FlowAdaptationFeatureExtractor;
  [(FeatureExtractor *)&v5 getOutputTensorSize:a3 level:0];
  *&a3->var0 = vshrq_n_u64(*&a3->var0, 1uLL);
  a3->var2 = 64;
}

@end