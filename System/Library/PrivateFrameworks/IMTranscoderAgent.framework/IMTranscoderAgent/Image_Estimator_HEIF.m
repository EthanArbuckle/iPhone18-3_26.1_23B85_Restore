@interface Image_Estimator_HEIF
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (Image_Estimator_HEIF)init;
- (Image_Estimator_HEIF)initWithConfiguration:(id)a3 error:(id *)a4;
- (Image_Estimator_HEIF)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (Image_Estimator_HEIF)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (Image_Estimator_HEIF)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromInput_File_Size:(double)a3 Input_Height:(double)a4 Input_Entropy:(double)a5 Aspect_Ratio:(double)a6 Target_File_Size:(double)a7 Target_Max_Dimension_4032:(int64_t)a8 Target_Max_Dimension_3000:(int64_t)a9 Target_Max_Dimension_2048:(int64_t)a10 Target_Max_Dimension_1600:(int64_t)a11 Target_Max_Dimension_1280:(int64_t)a12 Target_Max_Dimension_1024:(int64_t)a13 Target_Max_Dimension_800:(int64_t)a14 Compression_Ratio:(double)a15 Input_H_x_W__NumOfPixels_:(double)a16 Target_Height:(double)a17 Target_Width:(double)a18 Input_log_NumOfPixels_:(double)a19 Ratio_of_NumOfPixels:(double)a20 Exponential_Entropy:(double)a21 error:(id *)a22;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
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

- (Image_Estimator_HEIF)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = Image_Estimator_HEIF;
    v6 = [(Image_Estimator_HEIF *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (Image_Estimator_HEIF)init
{
  v3 = objc_opt_class();
  v10 = objc_msgSend_URLOfModelInThisBundle(v3, v4, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_initWithContentsOfURL_error_(self, v11, v10, 0, v12, v13, v14);

  return v15;
}

- (Image_Estimator_HEIF)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v14 = objc_msgSend_URLOfModelInThisBundle(v7, v8, v9, v10, v11, v12, v13);
  v18 = objc_msgSend_initWithContentsOfURL_configuration_error_(self, v15, v14, v6, a4, v16, v17);

  return v18;
}

- (Image_Estimator_HEIF)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v13 = objc_msgSend_modelWithContentsOfURL_error_(MEMORY[0x277CBFF20], a2, a3, a4, v4, v5, v6);
  if (v13)
  {
    self = objc_msgSend_initWithMLModel_(self, v8, v13, v9, v10, v11, v12);
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (Image_Estimator_HEIF)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v13 = objc_msgSend_modelWithContentsOfURL_configuration_error_(MEMORY[0x277CBFF20], a2, a3, a4, a5, v5, v6);
  if (v13)
  {
    self = objc_msgSend_initWithMLModel_(self, v8, v13, v9, v10, v11, v12);
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v17 = objc_msgSend_URLOfModelInThisBundle(a1, v8, v9, v10, v11, v12, v13);
  objc_msgSend_loadContentsOfURL_configuration_completionHandler_(a1, v14, v17, v7, v6, v15, v16);
}

+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBFF20];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_254830784;
  v13[3] = &unk_27978B0E8;
  v14 = v7;
  v9 = v7;
  objc_msgSend_loadContentsOfURL_configuration_completionHandler_(v8, v10, a3, a4, v13, v11, v12);
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBFF68];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v12 = objc_msgSend_predictionFromFeatures_options_error_(self, v9, v7, v8, a4, v10, v11);

  return v12;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v16 = objc_msgSend_model(self, v10, v11, v12, v13, v14, v15);
  v20 = objc_msgSend_predictionFromFeatures_options_error_(v16, v17, v9, v8, a5, v18, v19);

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

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14 = objc_msgSend_model(self, v8, v9, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254830A3C;
  v20[3] = &unk_27978B110;
  v21 = v6;
  v15 = v6;
  objc_msgSend_predictionFromFeatures_completionHandler_(v14, v16, v7, v20, v17, v18, v19);
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v17 = objc_msgSend_model(self, v11, v12, v13, v14, v15, v16);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_254830BFC;
  v22[3] = &unk_27978B110;
  v23 = v8;
  v18 = v8;
  objc_msgSend_predictionFromFeatures_options_completionHandler_(v17, v19, v10, v9, v22, v20, v21);
}

- (id)predictionFromInput_File_Size:(double)a3 Input_Height:(double)a4 Input_Entropy:(double)a5 Aspect_Ratio:(double)a6 Target_File_Size:(double)a7 Target_Max_Dimension_4032:(int64_t)a8 Target_Max_Dimension_3000:(int64_t)a9 Target_Max_Dimension_2048:(int64_t)a10 Target_Max_Dimension_1600:(int64_t)a11 Target_Max_Dimension_1280:(int64_t)a12 Target_Max_Dimension_1024:(int64_t)a13 Target_Max_Dimension_800:(int64_t)a14 Compression_Ratio:(double)a15 Input_H_x_W__NumOfPixels_:(double)a16 Target_Height:(double)a17 Target_Width:(double)a18 Input_log_NumOfPixels_:(double)a19 Ratio_of_NumOfPixels:(double)a20 Exponential_Entropy:(double)a21 error:(id *)a22
{
  v35 = [Image_Estimator_HEIFInput alloc];
  v37 = objc_msgSend_initWithInput_File_Size_Input_Height_Input_Entropy_Aspect_Ratio_Target_File_Size_Target_Max_Dimension_4032_Target_Max_Dimension_3000_Target_Max_Dimension_2048_Target_Max_Dimension_1600_Target_Max_Dimension_1280_Target_Max_Dimension_1024_Target_Max_Dimension_800_Compression_Ratio_Input_H_x_W__NumOfPixels__Target_Height_Target_Width_Input_log_NumOfPixels__Ratio_of_NumOfPixels_Exponential_Entropy_(v35, v36, a8, a9, a10, a11, a12, a13, a3, a4, a5, a6, a7, a15, a16, a17, a14, *&a18, *&a19, *&a20, *&a21);
  v42 = objc_msgSend_predictionFromFeatures_error_(self, v38, v37, a22, v39, v40, v41);

  return v42;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc(MEMORY[0x277CBFEB0]);
  v16 = objc_msgSend_initWithFeatureProviderArray_(v10, v11, v8, v12, v13, v14, v15);
  v23 = objc_msgSend_model(self, v17, v18, v19, v20, v21, v22);
  v27 = objc_msgSend_predictionsFromBatch_options_error_(v23, v24, v16, v9, a5, v25, v26);

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