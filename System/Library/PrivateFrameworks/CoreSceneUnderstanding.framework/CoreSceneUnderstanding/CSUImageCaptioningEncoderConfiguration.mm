@interface CSUImageCaptioningEncoderConfiguration
+ (id)CSUImageCaptioningEncoderConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)availableRevisions;
+ (id)createCSUImageCaptioningEncoderConfigurationWithConfigPath:(id)path error:(id *)error;
+ (id)createCSUImageCaptioningEncoderConfigurationWithEspressoPath:(id)path andNetworkParams:(id)params error:(id *)error;
+ (int64_t)_resolvedRevision:(int64_t)revision;
- (id)initImageCaptioningEncoderConfigurationForRevision:(int64_t)revision espressoNetPath:(id)path inputImageTensorName:(id)name inputImageDimension:(unint64_t)dimension inputImageBytesPerRowAlignment:(unint64_t)alignment imageEmbeddingTensorName:(id)tensorName;
- (int)espressoExecutionEngine;
@end

@implementation CSUImageCaptioningEncoderConfiguration

+ (int64_t)_resolvedRevision:(int64_t)revision
{
  if (revision == 1)
  {
    revisionCopy = 1;
  }

  else
  {
    revisionCopy = revision;
  }

  if (revision == -1)
  {
    return 1;
  }

  else
  {
    return revisionCopy;
  }
}

+ (id)CSUImageCaptioningEncoderConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  if (objc_msgSend__resolvedRevision_(self, v13, revision, v14, v15) == 1)
  {
    error = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v16, @"ImageCaptioning-ax_v1.0.0_encoder", @"espresso.net", @"ImageCaptioning-ax_v1.0.0");
    v19 = [self alloc];
    inited = objc_msgSend_initImageCaptioningEncoderConfigurationForRevision_espressoNetPath_inputImageTensorName_inputImageDimension_inputImageBytesPerRowAlignment_imageEmbeddingTensorName_(v19, v20, 1, error, @"image/Placeholder:0", 448, 4096, @"att_feats");
  }

  else
  {
    if (error)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v16, revision, v17, v18);
      v27 = objc_msgSend_stringWithFormat_(v22, v24, @"Unsupported captioning image encoder revision %@", v25, v26, v23);
      *error = objc_msgSend_errorForUnsupportedRevision_(CSUError, v28, v27, v29, v30);

      error = 0;
    }

    inited = 0;
  }

  return inited;
}

+ (id)createCSUImageCaptioningEncoderConfigurationWithConfigPath:(id)path error:(id *)error
{
  pathCopy = path;
  *error = 0;
  v11 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8, v9, v10);
  v15 = objc_msgSend_fileExistsAtPath_(v11, v12, pathCopy, v13, v14);
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"encoder config file does not exist at path %@", v17, v18, pathCopy);
  v21 = objc_msgSend_CSUAssert_logError_withMessage_(CSUError, v20, v15, error, v19);

  if ((v21 & 1) == 0)
  {
    v56 = 0;
    goto LABEL_11;
  }

  v25 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v22, pathCopy, v23, v24);
  if ((objc_msgSend_CSUAssert_logError_withMessage_(CSUError, v26, v25 != 0, error, @"encoder config path could not be read!") & 1) == 0)
  {
    v28 = 0;
LABEL_9:
    v56 = 0;
    goto LABEL_10;
  }

  v28 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v27, v25, 0, error);
  if (!objc_msgSend_CSUAssert_logError_withMessage_(CSUError, v29, *error == 0, error, @"encoder config path could not be read!"))
  {
    goto LABEL_9;
  }

  v36 = objc_msgSend_valueForKey_(v28, v30, @"encoderNetworkPath", v31, v32);
  if (!v36)
  {
    goto LABEL_9;
  }

  v37 = objc_msgSend_valueForKey_(v28, v33, @"encoderNetworkParams", v34, v35);

  if (!v37)
  {
    goto LABEL_9;
  }

  v42 = objc_msgSend_stringByDeletingLastPathComponent(pathCopy, v38, v39, v40, v41);
  v46 = objc_msgSend_objectForKeyedSubscript_(v28, v43, @"encoderNetworkPath", v44, v45);
  v50 = objc_msgSend_stringByAppendingPathComponent_(v42, v47, v46, v48, v49);

  v54 = objc_msgSend_objectForKeyedSubscript_(v28, v51, @"encoderNetworkParams", v52, v53);
  v56 = objc_msgSend_createCSUImageCaptioningEncoderConfigurationWithEspressoPath_andNetworkParams_error_(self, v55, v50, v54, error);

LABEL_10:
LABEL_11:

  return v56;
}

+ (id)createCSUImageCaptioningEncoderConfigurationWithEspressoPath:(id)path andNetworkParams:(id)params error:(id *)error
{
  pathCopy = path;
  paramsCopy = params;
  *error = 0;
  v14 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v10, v11, v12, v13);
  v18 = objc_msgSend_fileExistsAtPath_(v14, v15, pathCopy, v16, v17);
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"encoder network file does not exist %@", v20, v21, pathCopy);
  v25 = objc_msgSend_CSUAssert_log_(CSUError, v23, v18, v22, v24);
  *error = objc_msgSend_errorFromErrors_And_(CSUError, v26, v25, *error, v27);

  v28 = *error;
  v32 = objc_msgSend_valueForKey_(paramsCopy, v29, @"inputImageTensorName", v30, v31);
  v35 = objc_msgSend_CSUAssert_log_(CSUError, v33, v32 != 0, @"Name for input encoded features tensor for decoder not specified", v34);
  *error = objc_msgSend_errorFromErrors_And_(CSUError, v36, v28, v35, v37);

  v38 = *error;
  v42 = objc_msgSend_valueForKey_(paramsCopy, v39, @"inputImageDimension", v40, v41);
  v45 = objc_msgSend_CSUAssert_log_(CSUError, v43, v42 != 0, @"Name for input word IDs tensor for decoder not specified", v44);
  *error = objc_msgSend_errorFromErrors_And_(CSUError, v46, v38, v45, v47);

  v48 = *error;
  v52 = objc_msgSend_valueForKey_(paramsCopy, v49, @"imageEmbeddingTensorName", v50, v51);
  v55 = objc_msgSend_CSUAssert_log_(CSUError, v53, v52 != 0, @"Name for output words probability tensor for decoder not specified", v54);
  *error = objc_msgSend_errorFromErrors_And_(CSUError, v56, v48, v55, v57);

  if (*error)
  {
    inited = 0;
  }

  else
  {
    hasSuffix = objc_msgSend_hasSuffix_(pathCopy, v58, @".net", v59, v60);
    v63 = [self alloc];
    v67 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v64, @"inputImageTensorName", v65, v66);
    v71 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v68, @"inputImageDimension", v69, v70);
    v76 = objc_msgSend_unsignedLongValue(v71, v72, v73, v74, v75);
    v80 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v77, @"imageEmbeddingTensorName", v78, v79);
    inited = objc_msgSend_initImageCaptioningEncoderConfigurationForRevision_espressoNetPath_inputImageTensorName_inputImageDimension_inputImageBytesPerRowAlignment_imageEmbeddingTensorName_(v63, v81, hasSuffix, pathCopy, v67, v76, 4096, v80);
  }

  return inited;
}

- (id)initImageCaptioningEncoderConfigurationForRevision:(int64_t)revision espressoNetPath:(id)path inputImageTensorName:(id)name inputImageDimension:(unint64_t)dimension inputImageBytesPerRowAlignment:(unint64_t)alignment imageEmbeddingTensorName:(id)tensorName
{
  pathCopy = path;
  nameCopy = name;
  tensorNameCopy = tensorName;
  v55.receiver = self;
  v55.super_class = CSUImageCaptioningEncoderConfiguration;
  v17 = [(CSUImageCaptioningEncoderConfiguration *)&v55 init];
  v22 = v17;
  if (v17)
  {
    v17->_revision = revision;
    v23 = objc_msgSend_copy(pathCopy, v18, v19, v20, v21);
    encoderNetworkPath = v22->_encoderNetworkPath;
    v22->_encoderNetworkPath = v23;

    v29 = objc_msgSend_copy(nameCopy, v25, v26, v27, v28);
    inputImageTensorName = v22->_inputImageTensorName;
    v22->_inputImageTensorName = v29;

    v35 = objc_msgSend_copy(tensorNameCopy, v31, v32, v33, v34);
    imageEmbeddingTensorName = v22->_imageEmbeddingTensorName;
    v22->_imageEmbeddingTensorName = v35;

    v22->_espressoExecutionEngine = 0x7FFFFFFF;
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
  result = self->_espressoExecutionEngine;
  if (result == 0x7FFFFFFF)
  {
    v7 = objc_msgSend_computeDevice(self, a2, v2, v3, v4);
    self->_espressoExecutionEngine = sub_1AC08405C(v7);

    return self->_espressoExecutionEngine;
  }

  return result;
}

@end