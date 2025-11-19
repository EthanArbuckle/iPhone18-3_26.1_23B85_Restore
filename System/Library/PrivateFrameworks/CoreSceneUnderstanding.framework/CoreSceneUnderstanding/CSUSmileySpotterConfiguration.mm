@interface CSUSmileySpotterConfiguration
+ (id)CSUSmileySpotterConfigurationForRevision:(int64_t)a3 error:(id *)a4;
+ (id)getConfigurationForCSUSmileySpotter_v1_0_EnglishWithError:(id *)a3;
+ (id)getConfigurationForCSUSmileySpotter_v2_0_EnglishWithError:(id *)a3;
+ (id)overrideWithSideLoadedPathForSmileySpotterModel:(id)a3;
- (id)initCSUSmileySpotterConfigurationForRevision:(int64_t)a3 modelPath:(id)a4 threshold:(float)a5;
@end

@implementation CSUSmileySpotterConfiguration

+ (id)getConfigurationForCSUSmileySpotter_v1_0_EnglishWithError:(id *)a3
{
  v3 = [a1 alloc];
  LODWORD(v4) = 1062836634;
  inited = objc_msgSend_initCSUSmileySpotterConfigurationForRevision_modelPath_threshold_(v3, v5, 1, @"md1_e5_smiley_spotter.mlmodelc", v6, v4);

  return inited;
}

+ (id)overrideWithSideLoadedPathForSmileySpotterModel:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v4, v5, v6, v7);
  v12 = objc_msgSend_stringByAppendingPathComponent_(@"private/var/mobile/Library/Application Support/com.apple.VisualGeneration/OVERRIDE", v9, v3, v10, v11);
  if (objc_msgSend_fileExistsAtPath_(v8, v13, v12, v14, v15))
  {
    v18 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v16, @"private/var/mobile/Library/Application Support/com.apple.VisualGeneration/OVERRIDE", 1, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)getConfigurationForCSUSmileySpotter_v2_0_EnglishWithError:(id *)a3
{
  v3 = [a1 alloc];
  LODWORD(v4) = 1062836634;
  inited = objc_msgSend_initCSUSmileySpotterConfigurationForRevision_modelPath_threshold_(v3, v5, 2, @"smileyspotter_v3.0_fjuxk2wg9j-59976md4_te-md4.mlmodelc", v6, v4);

  return inited;
}

+ (id)CSUSmileySpotterConfigurationForRevision:(int64_t)a3 error:(id *)a4
{
  if (a3 == 2)
  {
    v5 = objc_msgSend_getConfigurationForCSUSmileySpotter_v2_0_EnglishWithError_(a1, a2, a4, a4, v4);
  }

  else if (a3 == 1)
  {
    v5 = objc_msgSend_getConfigurationForCSUSmileySpotter_v1_0_EnglishWithError_(a1, a2, a4, a4, v4);
  }

  else
  {
    if (a4)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a3, a4, v4);
      v13 = objc_msgSend_stringWithFormat_(v8, v10, @"Unsupported CSUSmileySpotter revision %@", v11, v12, v9);
      *a4 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v14, v13, v15, v16);
    }

    v5 = 0;
  }

  return v5;
}

- (id)initCSUSmileySpotterConfigurationForRevision:(int64_t)a3 modelPath:(id)a4 threshold:(float)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a4;
  objc_storeStrong(&self->_headModelPath, a4);
  v10 = objc_opt_class();
  v14 = objc_msgSend_overrideWithSideLoadedPathForSmileySpotterModel_(v10, v11, v9, v12, v13);
  headModelURL = self->_headModelURL;
  self->_headModelURL = v14;

  self->_sideLoaded = 0;
  if (self->_headModelURL)
  {
    v16 = sub_1AC090E50();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v21 = objc_msgSend_absoluteString(self->_headModelURL, v17, v18, v19, v20);
      v24 = 138412290;
      v25 = v21;
      _os_log_impl(&dword_1AC05D000, v16, OS_LOG_TYPE_INFO, "Models side loaded from %@", &v24, 0xCu);
    }

    self->_sideLoaded = 1;
  }

  self->_revision = a3;
  self->_threshold = a5;

  v22 = *MEMORY[0x1E69E9840];
  return self;
}

@end