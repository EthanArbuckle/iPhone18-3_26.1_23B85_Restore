@interface Image_Estimator_HEIF
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (Image_Estimator_HEIF)init;
- (Image_Estimator_HEIF)initWithConfiguration:(id)configuration error:(id *)error;
- (Image_Estimator_HEIF)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (Image_Estimator_HEIF)initWithContentsOfURL:(id)l error:(id *)error;
- (Image_Estimator_HEIF)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput_File_Size:(double)size Input_Height:(double)height Input_Entropy:(double)entropy Aspect_Ratio:(double)ratio Target_File_Size:(double)file_Size Target_Max_Dimension_4032:(int64_t)dimension_4032 Target_Max_Dimension_3000:(int64_t)dimension_3000 Target_Max_Dimension_2048:(int64_t)self0 Target_Max_Dimension_1600:(int64_t)self1 Target_Max_Dimension_1280:(int64_t)self2 Target_Max_Dimension_1024:(int64_t)self3 Target_Max_Dimension_800:(int64_t)self4 Compression_Ratio:(double)self5 Input_H_x_W__NumOfPixels_:(double)self6 Target_Height:(double)self7 Target_Width:(double)self8 Input_log_NumOfPixels_:(double)self9 Ratio_of_NumOfPixels:(double)pixels Exponential_Entropy:(double)exponential_Entropy error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation Image_Estimator_HEIF

+ (id)URLOfModelInThisBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v9 = objc_msgSend_bundleForClass_(v2, v4, v3, v5, v6, v7, v8);
  v14 = objc_msgSend_pathForResource_ofType_(v9, v10, @"Image_Estimator_HEIF", @"mlmodelc", v11, v12, v13);

  if (v14)
  {
    v20 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v15, v14, v16, v17, v18, v19);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831620();
    }

    v20 = 0;
  }

  return v20;
}

- (Image_Estimator_HEIF)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = Image_Estimator_HEIF;
    v6 = [(Image_Estimator_HEIF *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (Image_Estimator_HEIF)init
{
  v3 = objc_opt_class();
  v10 = objc_msgSend_URLOfModelInThisBundle(v3, v4, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_initWithContentsOfURL_error_(self, v11, v10, 0, v12, v13, v14);

  return v15;
}

- (Image_Estimator_HEIF)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v7 = objc_opt_class();
  v14 = objc_msgSend_URLOfModelInThisBundle(v7, v8, v9, v10, v11, v12, v13);
  v18 = objc_msgSend_initWithContentsOfURL_configuration_error_(self, v15, v14, configurationCopy, error, v16, v17);

  return v18;
}

- (Image_Estimator_HEIF)initWithContentsOfURL:(id)l error:(id *)error
{
  v13 = objc_msgSend_modelWithContentsOfURL_error_(MEMORY[0x277CBFF20], a2, l, error, v4, v5, v6);
  if (v13)
  {
    self = objc_msgSend_initWithMLModel_(self, v8, v13, v9, v10, v11, v12);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (Image_Estimator_HEIF)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v13 = objc_msgSend_modelWithContentsOfURL_configuration_error_(MEMORY[0x277CBFF20], a2, l, configuration, error, v5, v6);
  if (v13)
  {
    self = objc_msgSend_initWithMLModel_(self, v8, v13, v9, v10, v11, v12);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  v17 = objc_msgSend_URLOfModelInThisBundle(self, v8, v9, v10, v11, v12, v13);
  objc_msgSend_loadContentsOfURL_configuration_completionHandler_(self, v14, v17, configurationCopy, handlerCopy, v15, v16);
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x277CBFF20];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_254830784;
  v13[3] = &unk_27978B0E8;
  v14 = handlerCopy;
  v9 = handlerCopy;
  objc_msgSend_loadContentsOfURL_configuration_completionHandler_(v8, v10, l, configuration, v13, v11, v12);
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x277CBFF68];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v12 = objc_msgSend_predictionFromFeatures_options_error_(self, v9, featuresCopy, v8, error, v10, v11);

  return v12;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  v16 = objc_msgSend_model(self, v10, v11, v12, v13, v14, v15);
  v20 = objc_msgSend_predictionFromFeatures_options_error_(v16, v17, featuresCopy, optionsCopy, error, v18, v19);

  if (v20)
  {
    v21 = [Image_Estimator_HEIFOutput alloc];
    v27 = objc_msgSend_featureValueForName_(v20, v22, @"Target Quality Factor", v23, v24, v25, v26);
    objc_msgSend_doubleValue(v27, v28, v29, v30, v31, v32, v33);
    v40 = objc_msgSend_initWithTarget_Quality_Factor_(v21, v34, v35, v36, v37, v38, v39);
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  v14 = objc_msgSend_model(self, v8, v9, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254830A3C;
  v20[3] = &unk_27978B110;
  v21 = handlerCopy;
  v15 = handlerCopy;
  objc_msgSend_predictionFromFeatures_completionHandler_(v14, v16, featuresCopy, v20, v17, v18, v19);
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  v17 = objc_msgSend_model(self, v11, v12, v13, v14, v15, v16);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_254830BFC;
  v22[3] = &unk_27978B110;
  v23 = handlerCopy;
  v18 = handlerCopy;
  objc_msgSend_predictionFromFeatures_options_completionHandler_(v17, v19, featuresCopy, optionsCopy, v22, v20, v21);
}

- (id)predictionFromInput_File_Size:(double)size Input_Height:(double)height Input_Entropy:(double)entropy Aspect_Ratio:(double)ratio Target_File_Size:(double)file_Size Target_Max_Dimension_4032:(int64_t)dimension_4032 Target_Max_Dimension_3000:(int64_t)dimension_3000 Target_Max_Dimension_2048:(int64_t)self0 Target_Max_Dimension_1600:(int64_t)self1 Target_Max_Dimension_1280:(int64_t)self2 Target_Max_Dimension_1024:(int64_t)self3 Target_Max_Dimension_800:(int64_t)self4 Compression_Ratio:(double)self5 Input_H_x_W__NumOfPixels_:(double)self6 Target_Height:(double)self7 Target_Width:(double)self8 Input_log_NumOfPixels_:(double)self9 Ratio_of_NumOfPixels:(double)pixels Exponential_Entropy:(double)exponential_Entropy error:(id *)error
{
  v35 = [Image_Estimator_HEIFInput alloc];
  v37 = objc_msgSend_initWithInput_File_Size_Input_Height_Input_Entropy_Aspect_Ratio_Target_File_Size_Target_Max_Dimension_4032_Target_Max_Dimension_3000_Target_Max_Dimension_2048_Target_Max_Dimension_1600_Target_Max_Dimension_1280_Target_Max_Dimension_1024_Target_Max_Dimension_800_Compression_Ratio_Input_H_x_W__NumOfPixels__Target_Height_Target_Width_Input_log_NumOfPixels__Ratio_of_NumOfPixels_Exponential_Entropy_(v35, v36, dimension_4032, dimension_3000, dimension_2048, dimension_1600, dimension_1280, dimension_1024, size, height, entropy, ratio, file_Size, compression_Ratio, pixels_, target_Height, dimension_800, *&width, *&ofPixels_, *&pixels, *&exponential_Entropy);
  v42 = objc_msgSend_predictionFromFeatures_error_(self, v38, v37, error, v39, v40, v41);

  return v42;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = objc_alloc(MEMORY[0x277CBFEB0]);
  v16 = objc_msgSend_initWithFeatureProviderArray_(v10, v11, inputsCopy, v12, v13, v14, v15);
  v23 = objc_msgSend_model(self, v17, v18, v19, v20, v21, v22);
  v27 = objc_msgSend_predictionsFromBatch_options_error_(v23, v24, v16, optionsCopy, error, v25, v26);

  if (v27)
  {
    v34 = MEMORY[0x277CBEB18];
    v35 = objc_msgSend_count(v27, v28, v29, v30, v31, v32, v33);
    v41 = objc_msgSend_arrayWithCapacity_(v34, v36, v35, v37, v38, v39, v40);
    if (objc_msgSend_count(v27, v42, v43, v44, v45, v46, v47) >= 1)
    {
      v53 = 0;
      do
      {
        v54 = objc_msgSend_featuresAtIndex_(v27, v48, v53, v49, v50, v51, v52);
        v55 = [Image_Estimator_HEIFOutput alloc];
        v61 = objc_msgSend_featureValueForName_(v54, v56, @"Target Quality Factor", v57, v58, v59, v60);
        objc_msgSend_doubleValue(v61, v62, v63, v64, v65, v66, v67);
        v74 = objc_msgSend_initWithTarget_Quality_Factor_(v55, v68, v69, v70, v71, v72, v73);

        objc_msgSend_addObject_(v41, v75, v74, v76, v77, v78, v79);
        ++v53;
      }

      while (v53 < objc_msgSend_count(v27, v80, v81, v82, v83, v84, v85));
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

@end