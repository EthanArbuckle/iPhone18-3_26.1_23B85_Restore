@interface FRCFlowAdaptationFeatureExtractor
- (BOOL)extractFeaturesFromImage:(__CVBuffer *)a3 toFeatures:(id *)a4 callback:(id)a5;
- (FRCFlowAdaptationFeatureExtractor)initWithMode:(int64_t)a3 revision:(int64_t)a4;
- (void)getOutputTensorSize:(id *)a3 level:(unsigned int)a4;
- (void)setupNetworkModel;
@end

@implementation FRCFlowAdaptationFeatureExtractor

- (FRCFlowAdaptationFeatureExtractor)initWithMode:(int64_t)a3 revision:(int64_t)a4
{
  [(VEEspressoModel *)self setUsage:?];
  [(OFFeatureExtractor *)self setRevision:a4];
  [(FRCFlowAdaptationFeatureExtractor *)self setupNetworkModel];
  espresso_file = self->super._espresso_file;
  v11.receiver = self;
  v11.super_class = FRCFlowAdaptationFeatureExtractor;
  v8 = [(VEEspressoModel *)&v11 initWithModelName:espresso_file usage:a3];
  if (!v8 && (global_logLevel & 0x10) != 0)
  {
    v9 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [FRCFlowAdaptationFeatureExtractor initWithMode:a3 revision:v9];
    }
  }

  return v8;
}

- (void)setupNetworkModel
{
  self->super._inputBlob = "0";
  self->super._outputBlobs = &outputBlobNames_1;
  espresso_file = self->super._espresso_file;
  self->super._espresso_file = @"flow_adaptation_feature_extractor";

  if ([(OFFeatureExtractor *)self revision]!= 1)
  {
    self->super._espresso_file = [(NSString *)self->super._espresso_file stringByAppendingFormat:@"_rev%ld", [(OFFeatureExtractor *)self revision]];

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)extractFeaturesFromImage:(__CVBuffer *)a3 toFeatures:(id *)a4 callback:(id)a5
{
  v6 = a5;
  if (!espresso_network_bind_direct_cvpixelbuffer())
  {
    if (espresso_network_bind_direct_cvpixelbuffer())
    {
      if ((global_logLevel & 0x10) != 0)
      {
        v8 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          [FRCFlowAdaptationFeatureExtractor extractFeaturesFromImage:v8 toFeatures:? callback:?];
        }
      }

      goto LABEL_14;
    }

    if (v6)
    {
      v13 = v6;
      v9 = espresso_plan_submit();

      if (v9)
      {
LABEL_11:
        if ((global_logLevel & 0x10) != 0)
        {
          v10 = global_logger;
          if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
          {
            [FRCFlowAdaptationFeatureExtractor extractFeaturesFromImage:v10 toFeatures:self callback:?];
          }
        }

        goto LABEL_14;
      }
    }

    else if (espresso_plan_execute_sync())
    {
      goto LABEL_11;
    }

    v11 = 1;
    goto LABEL_15;
  }

  if ((global_logLevel & 0x10) != 0)
  {
    v7 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [FRCFlowAdaptationFeatureExtractor extractFeaturesFromImage:v7 toFeatures:? callback:?];
    }
  }

LABEL_14:
  v11 = 0;
LABEL_15:

  return v11;
}

- (void)getOutputTensorSize:(id *)a3 level:(unsigned int)a4
{
  v5.receiver = self;
  v5.super_class = FRCFlowAdaptationFeatureExtractor;
  [(OFFeatureExtractor *)&v5 getOutputTensorSize:a3 level:0];
  *&a3->var0 = vshrq_n_u64(*&a3->var0, 1uLL);
  a3->var2 = 64;
}

- (void)initWithMode:(int)a1 revision:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_24874B000, a2, OS_LOG_TYPE_ERROR, "Error: failed to create FRCFlowAdaptationFeatureExtractor for usage %d", v2, 8u);
}

- (void)extractFeaturesFromImage:(void *)a1 toFeatures:(void *)a2 callback:.cold.3(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 usage];
  _os_log_error_impl(&dword_24874B000, v3, OS_LOG_TYPE_ERROR, "FRCFlowAdaptationFeatureExtractor: Error !! Network execution Failed. (Usage:%ld)", &v4, 0xCu);
}

@end