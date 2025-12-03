@interface CESRSpeechProfileAdminFactory
+ (id)sharedAdminFactory;
- (CESRSpeechProfileAdminFactory)init;
- (CESRSpeechProfileAdminFactory)initWithServiceProvider:(id)provider;
- (id)admin;
@end

@implementation CESRSpeechProfileAdminFactory

- (id)admin
{
  v3 = [CESRSpeechProfileAdmin alloc];
  adminService = [(CESRSpeechProfileAdminServiceProvider *)self->_serviceProvider adminService];
  v5 = [(CESRSpeechProfileAdmin *)v3 initWithAdminService:adminService queue:self->_queue];

  return v5;
}

- (CESRSpeechProfileAdminFactory)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"You must use - initWithServiceProvider" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

- (CESRSpeechProfileAdminFactory)initWithServiceProvider:(id)provider
{
  v18 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = CESRSpeechProfileAdminFactory;
  v6 = [(CESRSpeechProfileAdminFactory *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_serviceProvider, provider);
  if (v7->_serviceProvider)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("CESRSpeechProfileAdminQueue", v8);
    queue = v7->_queue;
    v7->_queue = v9;

LABEL_4:
    v11 = v7;
    goto LABEL_8;
  }

  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v17 = "[CESRSpeechProfileAdminFactory initWithServiceProvider:]";
    _os_log_error_impl(&dword_225EEB000, v12, OS_LOG_TYPE_ERROR, "%s Cannot initialize admin with nil service provider.", buf, 0xCu);
  }

  v11 = 0;
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)sharedAdminFactory
{
  if (sharedAdminFactory_onceToken != -1)
  {
    dispatch_once(&sharedAdminFactory_onceToken, &__block_literal_global_28);
  }

  v3 = sharedAdminFactory_sharedAdminFactory;

  return v3;
}

void __51__CESRSpeechProfileAdminFactory_sharedAdminFactory__block_invoke()
{
  v0 = [CESRSpeechProfileAdminFactory alloc];
  v3 = objc_alloc_init(CESRSpeechProfileAdminXPCServiceWrapper);
  v1 = [(CESRSpeechProfileAdminFactory *)v0 initWithServiceProvider:v3];
  v2 = sharedAdminFactory_sharedAdminFactory;
  sharedAdminFactory_sharedAdminFactory = v1;
}

@end