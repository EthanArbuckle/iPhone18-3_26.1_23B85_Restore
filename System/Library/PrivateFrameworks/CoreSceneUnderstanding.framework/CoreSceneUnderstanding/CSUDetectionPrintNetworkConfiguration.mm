@interface CSUDetectionPrintNetworkConfiguration
+ (id)availableRevisions;
+ (id)detectionPrintConfigurationForRevision:(int64_t)a3 error:(id *)a4;
+ (id)validateAndInitDetectionPrintForRevision:(int64_t)a3 forNetworkPath:(id)a4 withInputImageTensorName:(id)a5 withInputImageWidth:(unint64_t)a6 withInputImageHeight:(unint64_t)a7 withInputImageBytesPerRow:(unint64_t)a8 withInputFeaturesDict:(id)a9 error:(id *)a10;
+ (int64_t)_resolvedRevision:(int64_t)a3;
- (CSUDetectionPrintNetworkConfiguration)initWithConfigurationForRevision:(int64_t)a3 espressoNetworkPath:(id)a4 inputImageTensorName:(id)a5 imageWidth:(unint64_t)a6 imageHeight:(unint64_t)a7 imageBytesPerRow:(unint64_t)a8 featuresDict:(id)a9;
- (int)espressoExecutionEngine;
@end

@implementation CSUDetectionPrintNetworkConfiguration

+ (int64_t)_resolvedRevision:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a3;
  }

  if (a3 == -1)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

+ (id)detectionPrintConfigurationForRevision:(int64_t)a3 error:(id *)a4
{
  v51[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  v16 = objc_msgSend__resolvedRevision_(a1, v13, a3, v14, v15);
  v20 = v16;
  if (v16 == 1)
  {
    v21 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v17, @"OD_TAP_POINTS", @"espresso.net", @"scenenet_v5_model/SceneNet_v5.11.1_47tazbjgzq_fe1.3_sc3.3_sa2.4_ae2.4_so2.4_od1.5_fp1.5_en0.1");
    v30 = [CSUDetectionPrintShape alloc];
    v24 = objc_msgSend_initWithHeight_width_channels_(v30, v31, 45, 45, 128);
    v32 = [CSUDetectionPrintShape alloc];
    v27 = objc_msgSend_initWithHeight_width_channels_(v32, v33, 23, 23, 168);
    v48[0] = @"6186";
    v48[1] = @"5507";
    v49[0] = v24;
    v49[1] = v27;
    v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v34, v49, v48, 2);
    goto LABEL_5;
  }

  if (v16 == 2)
  {
    v21 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v17, @"OD_TAP_POINTS", @"espresso.net", @"scenenet_v5_model/SceneNet_v5.13.0_8wiqmpbbig_fe1.3_sc3.3_sa2.4_ae2.4_so2.4_od1.5_fp1.5_en0.2");
    v22 = [CSUDetectionPrintShape alloc];
    v24 = objc_msgSend_initWithHeight_width_channels_(v22, v23, 45, 45, 128);
    v25 = [CSUDetectionPrintShape alloc];
    v27 = objc_msgSend_initWithHeight_width_channels_(v25, v26, 23, 23, 168);
    v50[0] = @"6316";
    v50[1] = @"5637";
    v51[0] = v24;
    v51[1] = v27;
    v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v28, v51, v50, 2);
LABEL_5:
    v35 = v29;

    a4 = objc_msgSend_validateAndInitDetectionPrintForRevision_forNetworkPath_withInputImageTensorName_withInputImageWidth_withInputImageHeight_withInputImageBytesPerRow_withInputFeaturesDict_error_(a1, v36, v20, v21, @"image", 360, 360, 4096, v35, a4);

    goto LABEL_8;
  }

  if (a4)
  {
    v37 = MEMORY[0x1E696AEC0];
    v38 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v17, a3, v18, v19);
    v42 = objc_msgSend_stringWithFormat_(v37, v39, @"Unsupported detection print revision %@", v40, v41, v38);
    *a4 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v43, v42, v44, v45);

    a4 = 0;
  }

LABEL_8:

  v46 = *MEMORY[0x1E69E9840];

  return a4;
}

+ (id)validateAndInitDetectionPrintForRevision:(int64_t)a3 forNetworkPath:(id)a4 withInputImageTensorName:(id)a5 withInputImageWidth:(unint64_t)a6 withInputImageHeight:(unint64_t)a7 withInputImageBytesPerRow:(unint64_t)a8 withInputFeaturesDict:(id)a9 error:(id *)a10
{
  v16 = a4;
  v17 = a5;
  v21 = a9;
  if (v16)
  {
    v22 = [a1 alloc];
    v24 = objc_msgSend_initWithConfigurationForRevision_espressoNetworkPath_inputImageTensorName_imageWidth_imageHeight_imageBytesPerRow_featuresDict_(v22, v23, a3, v16, v17, a6, a7, a8, v21);
  }

  else if (a10)
  {
    objc_msgSend_errorForDataUnavailableWithLocalizedDescription_(CSUError, v18, @"Missing detection print network files", v19, v20);
    *a10 = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 2, v4, v5);

  return v2;
}

- (CSUDetectionPrintNetworkConfiguration)initWithConfigurationForRevision:(int64_t)a3 espressoNetworkPath:(id)a4 inputImageTensorName:(id)a5 imageWidth:(unint64_t)a6 imageHeight:(unint64_t)a7 imageBytesPerRow:(unint64_t)a8 featuresDict:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a9;
  v50.receiver = self;
  v50.super_class = CSUDetectionPrintNetworkConfiguration;
  v18 = [(CSUDetectionPrintNetworkConfiguration *)&v50 init];
  v23 = v18;
  if (v18)
  {
    v18->_revision = a3;
    v24 = objc_msgSend_copy(v15, v19, v20, v21, v22);
    espressoNetworkPath = v23->_espressoNetworkPath;
    v23->_espressoNetworkPath = v24;

    v30 = objc_msgSend_copy(v16, v26, v27, v28, v29);
    inputImageTensorName = v23->_inputImageTensorName;
    v23->_inputImageTensorName = v30;

    v32 = objc_alloc_init(CSUPixelBufferDescriptor);
    inputPixelBufferDescriptor = v23->_inputPixelBufferDescriptor;
    v23->_inputPixelBufferDescriptor = v32;

    objc_msgSend_setWidth_(v23->_inputPixelBufferDescriptor, v34, a6, v35, v36);
    objc_msgSend_setHeight_(v23->_inputPixelBufferDescriptor, v37, a7, v38, v39);
    objc_msgSend_setPixelFormat_(v23->_inputPixelBufferDescriptor, v40, 1111970369, v41, v42);
    objc_msgSend_setBytesPerRowAlignment_(v23->_inputPixelBufferDescriptor, v43, a8, v44, v45);
    objc_msgSend_setIsIOSurfaceBacked_(v23->_inputPixelBufferDescriptor, v46, 1, v47, v48);
    objc_storeStrong(&v23->_outputTapPointFeatures, a9);
  }

  return v23;
}

- (int)espressoExecutionEngine
{
  v5 = objc_msgSend_computeDevice(self, a2, v2, v3, v4);
  v6 = sub_1AC08405C(v5);

  return v6;
}

@end