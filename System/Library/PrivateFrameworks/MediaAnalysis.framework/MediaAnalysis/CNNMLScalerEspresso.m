@interface CNNMLScalerEspresso
- (CNNMLScalerEspresso)initWithConfig:(id)a3 modelIndex:(int64_t)a4 scalingFactor:(int)a5;
- (int)inferenceWithPixelBuffer:(__CVBuffer *)a3 toDestinationPixelBuffer:(__CVBuffer *)a4;
- (void)dealloc;
@end

@implementation CNNMLScalerEspresso

- (void)dealloc
{
  if (self->_plan)
  {
    espresso_plan_destroy();
  }

  if (self->_ctx)
  {
    espresso_context_destroy();
  }

  v3.receiver = self;
  v3.super_class = CNNMLScalerEspresso;
  [(CNNMLScalerEspresso *)&v3 dealloc];
}

- (CNNMLScalerEspresso)initWithConfig:(id)a3 modelIndex:(int64_t)a4 scalingFactor:(int)a5
{
  v8 = a3;
  v24.receiver = self;
  v24.super_class = CNNMLScalerEspresso;
  v9 = [(CNNMLScalerEspresso *)&v24 init];
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v11 = [v10 resourceURL];

  if (a4 != 1)
  {
    if (!a4)
    {
      v12 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_emoji_mlscaler.espresso.net" relativeToURL:v11];
      goto LABEL_20;
    }

LABEL_10:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CNNMLScalerEspresso model not supported!", v23, 2u);
    }

    v12 = 0;
    goto LABEL_23;
  }

  if (a5 != 4 && a5 != 2)
  {
    goto LABEL_10;
  }

  v13 = objc_alloc_init(_MADObjCModelCatalogModel);
  v14 = [(_MADObjCModelCatalogModel *)v13 getModelURL:0];

  if (!v14)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot find MLScaler model from ModelCatalog", v23, 2u);
    }

    v12 = 0;
    v11 = 0;
    goto LABEL_23;
  }

  if (a5 == 2)
  {
    v15 = @"cnn_gp_mlscaler.espresso.net";
  }

  else
  {
    v15 = @"cnn_gp_mlscaler4x.espresso.net";
  }

  v12 = [MEMORY[0x1E695DFF8] URLWithString:v15 relativeToURL:v14];

  v11 = v14;
LABEL_20:
  v9->_plan = 0;
  v9->_ctx = 0;
  v9->_ctx = espresso_create_context();
  plan = espresso_create_plan();
  v9->_plan = plan;
  if (plan)
  {
    v17 = [v12 path];
    [v17 UTF8String];
    v18 = espresso_plan_add_network();

    if (!v18)
    {
      [v8 UTF8String];
      if (!espresso_network_select_configuration())
      {
        v20 = espresso_plan_build();

        if (v20)
        {
          goto LABEL_24;
        }

LABEL_26:
        v19 = v9;
        goto LABEL_27;
      }
    }
  }

LABEL_23:

LABEL_24:
  v19 = 0;
LABEL_27:
  v21 = v19;

  return v21;
}

- (int)inferenceWithPixelBuffer:(__CVBuffer *)a3 toDestinationPixelBuffer:(__CVBuffer *)a4
{
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMADMLScalingInference", "", buf, 2u);
  }

  result = espresso_network_bind_direct_cvpixelbuffer();
  if (!result)
  {
    result = espresso_network_bind_direct_cvpixelbuffer();
    if (!result)
    {
      result = espresso_plan_execute_sync();
      if (!result)
      {
        v9 = VCPSignPostLog();
        v10 = v9;
        if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
        {
          *v11 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_END, v5, "VCPMADMLScalingInference", "", v11, 2u);
        }

        return 0;
      }
    }
  }

  return result;
}

@end