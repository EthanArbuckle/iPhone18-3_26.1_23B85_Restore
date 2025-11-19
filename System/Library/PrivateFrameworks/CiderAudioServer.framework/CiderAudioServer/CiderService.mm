@interface CiderService
+ (void)StartService;
+ (void)StopService;
@end

@implementation CiderService

+ (void)StopService
{
  v11 = *MEMORY[0x277D85DE8];
  InCider::InstanceOpt(a1);
  if (byte_28133BC80)
  {
    InCider::InstanceOpt(v2);
    if (byte_28133BC80 == 1)
    {
      InCider::~InCider(&InCider::InstanceOpt(void)::theInstance);
      *(v3 + 8) = 0;
    }

    util::server_log(v3);
    v4 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "InCider.mm";
      v9 = 1024;
      v10 = 58;
      v5 = "%25s:%-5d Shut down InCider service";
LABEL_8:
      _os_log_impl(&dword_24348C000, v4, OS_LOG_TYPE_ERROR, v5, &v7, 0x12u);
    }
  }

  else
  {
    util::server_log(v2);
    v4 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "InCider.mm";
      v9 = 1024;
      v10 = 45;
      v5 = "%25s:%-5d Request to shut down InCider but it is not running => no-op";
      goto LABEL_8;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)StartService
{
  v11 = *MEMORY[0x277D85DE8];
  InCider::InstanceOpt(a1);
  if (byte_28133BC80 != 1)
  {
    InCider::InstanceOpt(v2);
    if (byte_28133BC80 == 1)
    {
      InCider::~InCider(&InCider::InstanceOpt(void)::theInstance);
      *(v4 + 8) = 0;
    }

    [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.virtualaudio.cider"];
    v5 = objc_alloc_init(CiderDelegate);
    operator new();
  }

  util::server_log(v2);
  v3 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "InCider.mm";
    v9 = 1024;
    v10 = 25;
    _os_log_impl(&dword_24348C000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Request to launch InCider but it is already running => no-op", &v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end