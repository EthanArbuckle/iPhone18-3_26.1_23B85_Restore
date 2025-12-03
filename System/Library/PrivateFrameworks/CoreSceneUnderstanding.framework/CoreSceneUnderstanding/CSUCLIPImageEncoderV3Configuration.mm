@interface CSUCLIPImageEncoderV3Configuration
+ (id)CLIPImageEncoderV3ConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)availableRevisions;
+ (int64_t)_resolvedRevision:(int64_t)revision;
- (id)initCLIPImageEncoderV3ConfigurationForRevision:(int64_t)revision espressoNetPath:(id)path inputImageTensorName:(id)name inputImageDimension:(unint64_t)dimension inputImageBytesPerRowAlignment:(unint64_t)alignment imageEmbeddingTensorName:(id)tensorName;
- (int)espressoExecutionEngine;
@end

@implementation CSUCLIPImageEncoderV3Configuration

+ (int64_t)_resolvedRevision:(int64_t)revision
{
  if (revision == -1)
  {
    return 1;
  }

  else
  {
    return revision;
  }
}

+ (id)CLIPImageEncoderV3ConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  if (objc_msgSend__resolvedRevision_(self, v13, revision, v14, v15) == 1)
  {
    error = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v16, @"SceneNet_v5.13.0_8wiqmpbbig_fe1.3_sc3.3_sa2.4_ae2.4_so2.4_od1.5_fp1.5_en0.2", @"espresso.net", @"scenenet_v5_model/SceneNet_v5.13.0_8wiqmpbbig_fe1.3_sc3.3_sa2.4_ae2.4_so2.4_od1.5_fp1.5_en0.2");
    v19 = [self alloc];
    inited = objc_msgSend_initCLIPImageEncoderV3ConfigurationForRevision_espressoNetPath_inputImageTensorName_inputImageDimension_inputImageBytesPerRowAlignment_imageEmbeddingTensorName_(v19, v20, 1, error, @"image", 360, 4096, @"inner/sceneprint");
  }

  else
  {
    if (error)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v16, revision, v17, v18);
      v27 = objc_msgSend_stringWithFormat_(v22, v24, @"Unsupported CLIPImageEncoderV3 revision %@", v25, v26, v23);
      *error = objc_msgSend_errorForUnsupportedRevision_(CSUError, v28, v27, v29, v30);

      error = 0;
    }

    inited = 0;
  }

  return inited;
}

- (id)initCLIPImageEncoderV3ConfigurationForRevision:(int64_t)revision espressoNetPath:(id)path inputImageTensorName:(id)name inputImageDimension:(unint64_t)dimension inputImageBytesPerRowAlignment:(unint64_t)alignment imageEmbeddingTensorName:(id)tensorName
{
  pathCopy = path;
  nameCopy = name;
  tensorNameCopy = tensorName;
  v55.receiver = self;
  v55.super_class = CSUCLIPImageEncoderV3Configuration;
  v17 = [(CSUCLIPImageEncoderV3Configuration *)&v55 init];
  v22 = v17;
  if (v17)
  {
    v17->_revision = revision;
    v23 = objc_msgSend_copy(pathCopy, v18, v19, v20, v21);
    espressoNetworkPath = v22->_espressoNetworkPath;
    v22->_espressoNetworkPath = v23;

    v29 = objc_msgSend_copy(nameCopy, v25, v26, v27, v28);
    inputImageTensorName = v22->_inputImageTensorName;
    v22->_inputImageTensorName = v29;

    v35 = objc_msgSend_copy(tensorNameCopy, v31, v32, v33, v34);
    imageEmbeddingTensorName = v22->_imageEmbeddingTensorName;
    v22->_imageEmbeddingTensorName = v35;

    v37 = objc_alloc_init(CSUPixelBufferDescriptor);
    inputPixelBufferDescriptor = v22->_inputPixelBufferDescriptor;
    v22->_inputPixelBufferDescriptor = v37;

    objc_msgSend_setWidth_(v22->_inputPixelBufferDescriptor, v39, dimension, v40, v41);
    objc_msgSend_setHeight_(v22->_inputPixelBufferDescriptor, v42, dimension, v43, v44);
    objc_msgSend_setPixelFormat_(v22->_inputPixelBufferDescriptor, v45, 1111970369, v46, v47);
    objc_msgSend_setBytesPerRowAlignment_(v22->_inputPixelBufferDescriptor, v48, alignment, v49, v50);
    objc_msgSend_setIsIOSurfaceBacked_(v22->_inputPixelBufferDescriptor, v51, 1, v52, v53);
  }

  return v22;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);

  return v2;
}

- (int)espressoExecutionEngine
{
  v5 = objc_msgSend_computeDevice(self, a2, v2, v3, v4);
  v6 = sub_1AC08405C(v5);

  return v6;
}

@end