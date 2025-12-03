@interface CSUVideoCaptioner
- (BOOL)loadResources:(id *)resources;
- (CSUVideoCaptioner)initWithConfiguration:(id)configuration error:(id *)error;
- (id)_initWithConfiguration:(id)configuration error:(id *)error;
- (id)computeCaptionForVideoEmbedding:(id)embedding error:(id *)error;
@end

@implementation CSUVideoCaptioner

- (CSUVideoCaptioner)initWithConfiguration:(id)configuration error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v7 = sub_1AC090E50();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = objc_msgSend_configPath(configurationCopy, v8, v9, v10, v11);
    *buf = 138412290;
    v24 = v12;
    _os_log_impl(&dword_1AC05D000, v7, OS_LOG_TYPE_INFO, "Begin CSUVideoCaptioner init configPath=%@", buf, 0xCu);
  }

  v22 = 0;
  v15 = objc_msgSend__initWithConfiguration_error_(self, v13, configurationCopy, &v22, v14);
  v16 = v22;
  if (v15)
  {
    v17 = sub_1AC090E50();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC05D000, v17, OS_LOG_TYPE_INFO, "End CSUVideoCaptioner init", buf, 2u);
    }
  }

  else
  {
    v18 = sub_1AC090E50();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11FBF8(v16, v18);
    }

    if (error)
    {
      v19 = v16;
      *error = v16;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v42.receiver = self;
  v42.super_class = CSUVideoCaptioner;
  v8 = [(CSUVideoCaptioner *)&v42 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v8->_config, configuration);
  v14 = objc_msgSend_configPath(configurationCopy, v10, v11, v12, v13);

  if (!v14)
  {
    if (error)
    {
      objc_msgSend_errorForUnknownErrorWithLocalizedDescription_(CSUError, v15, @"CSUVideoCaptioner nil config path", v17, v18);
      *error = v40 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v40 = 0;
    goto LABEL_13;
  }

  v19 = objc_msgSend_configPath(configurationCopy, v15, v16, v17, v18);
  v22 = objc_msgSend_createCSUImageCaptioningDecoderConfigurationWithConfigPath_error_(CSUImageCaptioningDecoderConfiguration, v20, v19, error, v21);

  if (!v22)
  {
LABEL_11:

    goto LABEL_12;
  }

  v27 = objc_msgSend_saveDecoderFeatures(configurationCopy, v23, v24, v25, v26);
  objc_msgSend_setSaveDecoderFeatures_(v22, v28, v27, v29, v30);
  v31 = [CSUImageCaptioningDecoder alloc];
  v35 = objc_msgSend_initWithConfiguration_(v31, v32, v22, v33, v34);
  imageCaptionDecoder = v9->_imageCaptionDecoder;
  v9->_imageCaptionDecoder = v35;

  if (!v9->_imageCaptionDecoder)
  {
    if (error)
    {
      *error = objc_msgSend_errorForUnknownErrorWithLocalizedDescription_(CSUError, v37, @"Failed to init video decoder", v38, v39);
    }

    goto LABEL_11;
  }

LABEL_6:
  v40 = v9;
LABEL_13:

  return v40;
}

- (BOOL)loadResources:(id *)resources
{
  resourcesCopy = resources;
  v6 = objc_msgSend_imageCaptionDecoder(self, a2, resources, v3, v4);
  LOBYTE(resourcesCopy) = objc_msgSend_loadResources_(v6, v7, resourcesCopy, v8, v9);

  return resourcesCopy;
}

- (id)computeCaptionForVideoEmbedding:(id)embedding error:(id *)error
{
  embeddingCopy = embedding;
  v11 = objc_msgSend_config(self, v7, v8, v9, v10);
  v16 = objc_msgSend_beamSearch(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_beamWidth(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_intValue(v21, v22, v23, v24, v25);

  v31 = objc_msgSend_imageCaptionDecoder(self, v27, v28, v29, v30);
  v33 = objc_msgSend_computeDecodedCaptionsForFeatures_withDecodingMethod_error_(v31, v32, embeddingCopy, v26 != 1, error);

  return v33;
}

@end