@interface NSDictionary(JsonUtils)
- (id)initWithJSON:()JsonUtils;
- (void)toJsonInDocumentDirectoryWith:()JsonUtils;
@end

@implementation NSDictionary(JsonUtils)

- (void)toJsonInDocumentDirectoryWith:()JsonUtils
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager URLsForDirectory:9 inDomains:1];

  if (![v6 count])
  {
    v19 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[NSDictionary(JsonUtils) toJsonInDocumentDirectoryWith:]";
      _os_log_error_impl(&dword_2227A9000, v19, OS_LOG_TYPE_ERROR, "%s [ERR]: Cannot get an URL for Document directory", buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(buf, "Error creating directory");
    std::string::basic_string[abi:ne200100]<0>(v23, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(exception, buf, v23, "/Library/Caches/com.apple.xbs/Sources/Marrs/Common/NSDictionary+JsonUtils.mm", 35);
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v6 objectAtIndexedSubscript:0];
  path = [v8 path];
  v22 = 0;
  [defaultManager2 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v22];
  v10 = v22;

  if (v10)
  {
    v16 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v10 debugDescription];
      *buf = 136315394;
      v25 = "[NSDictionary(JsonUtils) toJsonInDocumentDirectoryWith:]";
      v26 = 2112;
      v27 = v17;
      _os_log_error_impl(&dword_2227A9000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    v18 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(buf, "Error creating directory");
    std::string::basic_string[abi:ne200100]<0>(v23, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(v18, buf, v23, "/Library/Caches/com.apple.xbs/Sources/Marrs/Common/NSDictionary+JsonUtils.mm", 44);
  }

  v11 = [v6 objectAtIndexedSubscript:0];
  v12 = [v11 URLByAppendingPathComponent:v4];

  v13 = [MEMORY[0x277CBEB78] outputStreamWithURL:v12 append:0];
  [v13 open];
  v21 = 0;
  [MEMORY[0x277CCAAA0] writeJSONObject:self toStream:v13 options:1 error:&v21];
  v14 = v21;
  [v13 close];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)initWithJSON:()JsonUtils
{
  v2 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
  v7 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v2 options:0 error:&v7];
  v4 = v7;
  if (v4)
  {
    selfCopy = 0;
  }

  else
  {
    self = [self initWithDictionary:v3];
    selfCopy = self;
  }

  return selfCopy;
}

@end