@interface CSUImageCaptionerConfiguration
+ (id)CSUImageCaptionerConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)availableRevisions;
+ (id)createCSUImageCaptionerConfigurationWithConfigPath:(id)path error:(id *)error;
+ (id)createCSUImageCaptionerConfigurationWithEncoderConfiguration:(id)configuration DecoderConfiguration:(id)decoderConfiguration error:(id *)error;
+ (int64_t)_resolvedRevision:(int64_t)revision;
- (CSUImageCaptionerConfiguration)initWithCaptioningEncoderConfiguration:(id)configuration captioningDecoderConfiguration:(id)decoderConfiguration;
@end

@implementation CSUImageCaptionerConfiguration

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

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);
  objc_msgSend_addIndex_(v2, v6, 9, v7, v8);
  objc_msgSend_addIndex_(v2, v9, 10, v10, v11);
  objc_msgSend_addIndex_(v2, v12, 11, v13, v14);

  return v2;
}

+ (id)CSUImageCaptionerConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v7 = objc_msgSend__resolvedRevision_(CSUImageCaptionerConfiguration, a2, revision, error, v4);
  v11 = v7;
  if (v7 > 6)
  {
    if (v7 <= 8)
    {
      v12 = 1;
      if (v7 == 7)
      {
        objc_msgSend_CSUImageCaptioningDecoderConfigurationForRevision_error_(CSUImageCaptioningDecoderConfiguration, v8, 9, error, v10);
      }

      else
      {
        objc_msgSend_CSUImageCaptioningDecoderConfigurationForRevision_error_(CSUImageCaptioningDecoderConfiguration, v8, 10, error, v10);
      }

      goto LABEL_21;
    }

    if (v7 == 9)
    {
      v12 = 1;
      objc_msgSend_CSUImageCaptioningDecoderConfigurationForRevision_error_(CSUImageCaptioningDecoderConfiguration, v8, 11, error, v10);
      goto LABEL_21;
    }

    if (v7 != 10)
    {
      if (v7 == 11)
      {
        v12 = 1;
        objc_msgSend_CSUImageCaptioningDecoderConfigurationForRevision_error_(CSUImageCaptioningDecoderConfiguration, v8, 13, error, v10);
        v15 = LABEL_21:;
        if (!v15)
        {
          v19 = 0;
          goto LABEL_31;
        }

        if (v12)
        {
          v16 = [CSUImageCaptionerConfiguration alloc];
          v19 = objc_msgSend_initWithCaptioningEncoderConfiguration_captioningDecoderConfiguration_(v16, v17, 0, v15, v18);
LABEL_31:

          goto LABEL_32;
        }

        v20 = objc_msgSend_CSUImageCaptioningEncoderConfigurationForRevision_error_(CSUImageCaptioningEncoderConfiguration, v13, 1, error, v14);
        if (v20)
        {
          v21 = [CSUImageCaptionerConfiguration alloc];
          v19 = objc_msgSend_initWithCaptioningEncoderConfiguration_captioningDecoderConfiguration_(v21, v22, v20, v15, v23);
        }

        else
        {
          v19 = 0;
        }

LABEL_30:

        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v12 = 1;
    v11 = 12;
LABEL_20:
    objc_msgSend_CSUImageCaptioningDecoderConfigurationForRevision_error_(CSUImageCaptioningDecoderConfiguration, v8, v11, error, v10);
    goto LABEL_21;
  }

  if (v7 > 4)
  {
    v12 = 1;
    if (v7 == 5)
    {
      objc_msgSend_CSUImageCaptioningDecoderConfigurationForRevision_error_(CSUImageCaptioningDecoderConfiguration, v8, 7, error, v10);
    }

    else
    {
      objc_msgSend_CSUImageCaptioningDecoderConfigurationForRevision_error_(CSUImageCaptioningDecoderConfiguration, v8, 8, error, v10);
    }

    goto LABEL_21;
  }

  if (v7 == 1)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if (v7 == 4)
  {
    v12 = 1;
    objc_msgSend_CSUImageCaptioningDecoderConfigurationForRevision_error_(CSUImageCaptioningDecoderConfiguration, v8, 5, error, v10);
    goto LABEL_21;
  }

LABEL_28:
  if (error)
  {
    v24 = MEMORY[0x1E696AEC0];
    v15 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, revision, v9, v10);
    v20 = objc_msgSend_stringWithFormat_(v24, v25, @"Unsupported Image captioning revision %@", v26, v27, v15);
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v28, v20, v29, v30);
    *error = v19 = 0;
    goto LABEL_30;
  }

  v19 = 0;
LABEL_32:

  return v19;
}

+ (id)createCSUImageCaptionerConfigurationWithConfigPath:(id)path error:(id *)error
{
  pathCopy = path;
  *error = 0;
  v10 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v6, v7, v8, v9);
  v14 = objc_msgSend_fileExistsAtPath_(v10, v11, pathCopy, v12, v13);
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"Config file does not exist at path %@", v16, v17, pathCopy);
  v20 = objc_msgSend_CSUAssert_logError_withMessage_(CSUError, v19, v14, error, v18);

  if ((v20 & 1) == 0)
  {
    v49 = 0;
    goto LABEL_12;
  }

  v24 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v21, pathCopy, v22, v23);
  v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, @"Config path %@ could not be read!", v26, v27, pathCopy);
  v30 = objc_msgSend_CSUAssert_logError_withMessage_(CSUError, v29, v24 != 0, error, v28);

  if (v30)
  {
    v32 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v31, v24, 0, error);
    v33 = *error;
    v37 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v34, @"Config path %@ could not be read!", v35, v36, pathCopy);
    v39 = objc_msgSend_CSUAssert_logError_withMessage_(CSUError, v38, v33 == 0, error, v37);

    if (v39)
    {
      v44 = objc_msgSend_createCSUImageCaptioningDecoderConfigurationWithConfigPath_error_(CSUImageCaptioningDecoderConfiguration, v40, pathCopy, error, v41);
      if (v44)
      {
        v45 = objc_msgSend_createCSUImageCaptioningEncoderConfigurationWithConfigPath_error_(CSUImageCaptioningEncoderConfiguration, v42, pathCopy, error, v43);
        v46 = [CSUImageCaptionerConfiguration alloc];
        v49 = objc_msgSend_initWithCaptioningEncoderConfiguration_captioningDecoderConfiguration_(v46, v47, v45, v44, v48);
      }

      else
      {
        v49 = 0;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v32 = 0;
  }

  v49 = 0;
LABEL_11:

LABEL_12:

  return v49;
}

+ (id)createCSUImageCaptionerConfigurationWithEncoderConfiguration:(id)configuration DecoderConfiguration:(id)decoderConfiguration error:(id *)error
{
  configurationCopy = configuration;
  decoderConfigurationCopy = decoderConfiguration;
  v8 = [CSUImageCaptionerConfiguration alloc];
  v11 = objc_msgSend_initWithCaptioningEncoderConfiguration_captioningDecoderConfiguration_(v8, v9, configurationCopy, decoderConfigurationCopy, v10);

  return v11;
}

- (CSUImageCaptionerConfiguration)initWithCaptioningEncoderConfiguration:(id)configuration captioningDecoderConfiguration:(id)decoderConfiguration
{
  configurationCopy = configuration;
  decoderConfigurationCopy = decoderConfiguration;
  v13.receiver = self;
  v13.super_class = CSUImageCaptionerConfiguration;
  v9 = [(CSUImageCaptionerConfiguration *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_captioningEncoderConfiguration, configuration);
    objc_storeStrong(&v10->_captioningDecoderConfiguration, decoderConfiguration);
    v11 = v10;
  }

  return v10;
}

@end