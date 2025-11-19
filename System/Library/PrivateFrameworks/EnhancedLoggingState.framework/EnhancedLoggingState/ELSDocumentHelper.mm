@interface ELSDocumentHelper
+ (id)sharedHelper;
- (id)initSingleton;
- (id)saveData:(id)a3 toFilePath:(id)a4;
@end

@implementation ELSDocumentHelper

+ (id)sharedHelper
{
  if (sharedHelper_onceToken != -1)
  {
    +[ELSDocumentHelper sharedHelper];
  }

  v3 = sharedHelper_singleton;

  return v3;
}

uint64_t __33__ELSDocumentHelper_sharedHelper__block_invoke()
{
  sharedHelper_singleton = [[ELSDocumentHelper alloc] initSingleton];

  return MEMORY[0x2821F96F8]();
}

- (id)initSingleton
{
  v6.receiver = self;
  v6.super_class = ELSDocumentHelper;
  v2 = [(ELSDocumentHelper *)&v6 init];
  if (v2)
  {
    +[ELSEntitlementUtilities assertCurrentProcessHasEntitlement];
    v3 = [MEMORY[0x277CBEB28] data];
    pdfData = v2->_pdfData;
    v2->_pdfData = v3;
  }

  return v2;
}

- (id)saveData:(id)a3 toFilePath:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCAA00];
  v7 = a3;
  v8 = [v6 defaultManager];
  v9 = [v5 path];
  v10 = [v8 createFileAtPath:v9 contents:v7 attributes:0];

  v11 = 0;
  if ((v10 & 1) == 0)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = [@"com.apple.EnhancedLoggingState" copy];
    v11 = [v12 errorWithDomain:v13 code:4 userInfo:0];

    v14 = ELSLogHandleForCategory(11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ELSDocumentHelper saveData:v5 toFilePath:v14];
    }
  }

  return v11;
}

- (void)saveData:(void *)a1 toFilePath:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 absoluteString];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_24A07C000, a2, OS_LOG_TYPE_ERROR, "Cannot write the data to file at path: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end