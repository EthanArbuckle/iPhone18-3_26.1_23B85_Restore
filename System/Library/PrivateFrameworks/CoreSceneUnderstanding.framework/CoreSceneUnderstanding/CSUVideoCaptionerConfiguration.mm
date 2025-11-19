@interface CSUVideoCaptionerConfiguration
+ (id)CSUVideoCaptionerConfigurationForRevision:(int64_t)a3 error:(id *)a4;
+ (id)CSUVideoCaptioningConfigurationWithConfigPath:(id)a3 error:(id *)a4;
+ (id)availableRevisions;
- (CSUVideoCaptionerConfiguration)initWithConfigPath:(id)a3;
@end

@implementation CSUVideoCaptionerConfiguration

- (CSUVideoCaptionerConfiguration)initWithConfigPath:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v7->_configPath, a3);
  }

  return v7;
}

+ (id)CSUVideoCaptionerConfigurationForRevision:(int64_t)a3 error:(id *)a4
{
  if (a3 == 7 || a3 == -1)
  {
    v6 = MEMORY[0x1E696AAE8];
    v7 = objc_opt_class();
    v11 = objc_msgSend_bundleForClass_(v6, v8, v7, v9, v10);
    v14 = objc_msgSend_pathForResource_ofType_(v11, v12, @"video_captioning", &stru_1F20D3148, v13);
    v18 = objc_msgSend_stringByAppendingPathComponent_(v14, v15, @"VideoCaptioning_v7.0.0_vua87vwft9-44550", v16, v17);
    v22 = objc_msgSend_stringByAppendingPathComponent_(v18, v19, @"VideoCaptioning.config.json", v20, v21);
    v25 = objc_msgSend_CSUVideoCaptioningConfigurationWithConfigPath_error_(CSUVideoCaptionerConfiguration, v23, v22, a4, v24);

LABEL_6:
    goto LABEL_7;
  }

  if (a4)
  {
    v26 = MEMORY[0x1E696AEC0];
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a3, a4, v4);
    v14 = objc_msgSend_stringWithFormat_(v26, v27, @"Unsupported CSUVideoCaptionerConfigurationRevision %@", v28, v29, v11);
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v30, v14, v31, v32);
    *a4 = v25 = 0;
    goto LABEL_6;
  }

  v25 = 0;
LABEL_7:

  return v25;
}

+ (id)CSUVideoCaptioningConfigurationWithConfigPath:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [CSUVideoCaptionerConfiguration alloc];
  v9 = objc_msgSend_initWithConfigPath_(v5, v6, v4, v7, v8);

  return v9;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 7, v4, v5);

  return v2;
}

@end