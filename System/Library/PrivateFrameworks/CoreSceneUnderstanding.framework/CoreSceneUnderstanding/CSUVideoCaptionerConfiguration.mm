@interface CSUVideoCaptionerConfiguration
+ (id)CSUVideoCaptionerConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)CSUVideoCaptioningConfigurationWithConfigPath:(id)path error:(id *)error;
+ (id)availableRevisions;
- (CSUVideoCaptionerConfiguration)initWithConfigPath:(id)path;
@end

@implementation CSUVideoCaptionerConfiguration

- (CSUVideoCaptionerConfiguration)initWithConfigPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = CSUVideoCaptionerConfiguration;
  v6 = [(CSUVideoCaptionerConfiguration *)&v12 init];
  v7 = v6;
  if (v6)
  {
    espressoDevice = v6->_espressoDevice;
    v6->_espressoDevice = 0;

    v9 = objc_alloc_init(CSUBeamSearchConfiguration);
    beamSearch = v7->_beamSearch;
    v7->_beamSearch = v9;

    objc_storeStrong(&v7->_configPath, path);
  }

  return v7;
}

+ (id)CSUVideoCaptionerConfigurationForRevision:(int64_t)revision error:(id *)error
{
  if (revision == 7 || revision == -1)
  {
    v6 = MEMORY[0x1E696AAE8];
    v7 = objc_opt_class();
    v11 = objc_msgSend_bundleForClass_(v6, v8, v7, v9, v10);
    v14 = objc_msgSend_pathForResource_ofType_(v11, v12, @"video_captioning", &stru_1F20D3148, v13);
    v18 = objc_msgSend_stringByAppendingPathComponent_(v14, v15, @"VideoCaptioning_v7.0.0_vua87vwft9-44550", v16, v17);
    v22 = objc_msgSend_stringByAppendingPathComponent_(v18, v19, @"VideoCaptioning.config.json", v20, v21);
    v25 = objc_msgSend_CSUVideoCaptioningConfigurationWithConfigPath_error_(CSUVideoCaptionerConfiguration, v23, v22, error, v24);

LABEL_6:
    goto LABEL_7;
  }

  if (error)
  {
    v26 = MEMORY[0x1E696AEC0];
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, revision, error, v4);
    v14 = objc_msgSend_stringWithFormat_(v26, v27, @"Unsupported CSUVideoCaptionerConfigurationRevision %@", v28, v29, v11);
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v30, v14, v31, v32);
    *error = v25 = 0;
    goto LABEL_6;
  }

  v25 = 0;
LABEL_7:

  return v25;
}

+ (id)CSUVideoCaptioningConfigurationWithConfigPath:(id)path error:(id *)error
{
  pathCopy = path;
  v5 = [CSUVideoCaptionerConfiguration alloc];
  v9 = objc_msgSend_initWithConfigPath_(v5, v6, pathCopy, v7, v8);

  return v9;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 7, v4, v5);

  return v2;
}

@end