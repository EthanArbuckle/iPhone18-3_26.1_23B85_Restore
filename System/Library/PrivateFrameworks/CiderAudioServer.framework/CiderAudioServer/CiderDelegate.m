@interface CiderDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CiderDelegate)init;
@end

@implementation CiderDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  util::server_log(v5);
  v6 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "InCider.mm";
    v12 = 1024;
    v13 = 87;
    _os_log_impl(&dword_24348C000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d New XPC connection created", &v10, 0x12u);
  }

  [(util *)v5 setExportedObject:self->mObject];
  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285637F70];
  [(util *)v5 setExportedInterface:v7];

  [(util *)v5 setInterruptionHandler:&__block_literal_global];
  [(util *)v5 setInvalidationHandler:&__block_literal_global_63];
  [(util *)v5 resume];

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

void __52__CiderDelegate_listener_shouldAcceptNewConnection___block_invoke_61(util *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  util::server_log(a1);
  v1 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "InCider.mm";
    v5 = 1024;
    v6 = 95;
    _os_log_impl(&dword_24348C000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Existing Cider XPC connection invalidated", &v3, 0x12u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __52__CiderDelegate_listener_shouldAcceptNewConnection___block_invoke(util *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  util::server_log(a1);
  v1 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "InCider.mm";
    v5 = 1024;
    v6 = 92;
    _os_log_impl(&dword_24348C000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Existing Cider XPC connection interrupted", &v3, 0x12u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (CiderDelegate)init
{
  v6.receiver = self;
  v6.super_class = CiderDelegate;
  v2 = [(CiderDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CiderObject);
    mObject = v2->mObject;
    v2->mObject = v3;
  }

  return v2;
}

@end