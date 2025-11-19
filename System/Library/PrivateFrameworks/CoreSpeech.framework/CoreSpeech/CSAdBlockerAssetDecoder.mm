@interface CSAdBlockerAssetDecoder
- (CSAdBlockerAssetDecoder)initWithAssetPath:(id)a3;
@end

@implementation CSAdBlockerAssetDecoder

- (CSAdBlockerAssetDecoder)initWithAssetPath:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CSAdBlockerAssetDecoder;
  v5 = [(CSAdBlockerAssetDecoder *)&v14 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[CSAdBlockerAssetDecoder initWithAssetPath:]";
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s initilizing adBlockerAssetDecoder with assetPath: %@", buf, 0x16u);
  }

  v13 = 0;
  v7 = [NSData dataWithContentsOfFile:v4 options:2 error:&v13];
  v8 = v13;
  payLoadData = v5->_payLoadData;
  v5->_payLoadData = v7;

  if (v8 || !v5->_payLoadData)
  {
    v10 = CSLogCategoryAdBlocker;
    if (os_log_type_enabled(CSLogCategoryAdBlocker, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSAdBlockerAssetDecoder initWithAssetPath:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error reading file", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
LABEL_9:
    v11 = v5;
  }

  return v11;
}

@end