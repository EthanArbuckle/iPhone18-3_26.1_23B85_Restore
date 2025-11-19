@interface ULEventLog
+ (id)shared;
- (ULEventLog)init;
- (void)connectToDatabase:(ULDatabaseStoreInterface *)a3;
- (void)disconnectFromDatabase;
- (void)log:(id)a3;
- (void)printLogEventsSince:(double)a3;
@end

@implementation ULEventLog

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__ULEventLog_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[ULEventLog shared]::ul_once_token_0 != -1)
  {
    dispatch_once(&+[ULEventLog shared]::ul_once_token_0, block);
  }

  v2 = +[ULEventLog shared]::ul_once_object_0;

  return v2;
}

void __20__ULEventLog_shared__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[ULEventLog shared]::ul_once_object_0;
  +[ULEventLog shared]::ul_once_object_0 = v1;
}

- (ULEventLog)init
{
  v6.receiver = self;
  v6.super_class = ULEventLog;
  v2 = [(ULEventLog *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.milod.eventLogger", v3);
    [(ULEventLog *)v2 setQueue:v4];
  }

  return v2;
}

- (void)connectToDatabase:(ULDatabaseStoreInterface *)a3
{
  v5 = [(ULEventLog *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__ULEventLog_connectToDatabase___block_invoke;
  v6[3] = &unk_2798D4138;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

uint64_t __32__ULEventLog_connectToDatabase___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbStore];
  if (!result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setDbStore:v4];
  }

  return result;
}

- (void)disconnectFromDatabase
{
  v3 = [(ULEventLog *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ULEventLog_disconnectFromDatabase__block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)log:(id)a3
{
  v4 = a3;
  v5 = cl::chrono::CFAbsoluteTimeClock::now();
  v6 = [(ULEventLog *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__ULEventLog_log___block_invoke;
  block[3] = &unk_2798D4188;
  block[4] = self;
  v9 = v4;
  v10 = v5;
  v7 = v4;
  dispatch_sync(v6, block);
}

void __18__ULEventLog_log___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) dbStore])
  {
    v2 = [*(a1 + 40) UTF8String];
    v3 = strlen(v2);
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v4 = v3;
    if (v3 >= 0x17)
    {
      operator new();
    }

    v10 = v3;
    if (v3)
    {
      memmove(&__dst, v2, v3);
    }

    *(&__dst + v4) = 0;
    ULEventLogDO::ULEventLogDO(&__p, &__dst, *(a1 + 48));
    if (v10 < 0)
    {
      operator delete(__dst);
    }

    v5 = [*(a1 + 32) dbStore];
    v6 = (*(*v5 + 56))(v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = __p;
    }

    v15 = v12;
    memset(v8, 0, sizeof(v8));
    std::vector<ULEventLogDO>::__init_with_size[abi:ne200100]<ULEventLogDO const*,ULEventLogDO const*>(v8, &v14, v16, 1uLL);
    [v6 insertDataObjects:v8];
    v13 = v8;
    std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](&v13);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)printLogEventsSince:(double)a3
{
  v5 = cl::chrono::CFAbsoluteTimeClock::now();
  v6 = objc_opt_new();
  [v6 setDateFormat:@"yyyy-MM-dd HH:mm:ssZZZZZ"];
  v7 = [(ULEventLog *)self queue];
  v9[1] = 3221225472;
  v9[0] = MEMORY[0x277D85DD0];
  v9[2] = __34__ULEventLog_printLogEventsSince___block_invoke;
  v9[3] = &unk_2798D41B0;
  v11 = v5 + a3 * -60.0 * 60.0;
  v12 = v5;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, v9);
}

void __34__ULEventLog_printLogEventsSince___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) dbStore])
  {
    v2 = [*(a1 + 32) dbStore];
    v3 = (*(*v2 + 56))(v2);
    v4 = v3;
    if (v3)
    {
      [v3 fetchLoggedEventsFromTime:*(a1 + 48) toTime:1 limit:{*(a1 + 56), 1, 0}];
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    v6 = v14;
    if (v14 != v15)
    {
      *&v5 = 138412546;
      v13 = v5;
      do
      {
        v7 = *(a1 + 40);
        v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{v6[3], v13}];
        v9 = [v7 stringFromDate:v8];

        if (onceToken_MicroLocation_Default != -1)
        {
          __34__ULEventLog_printLogEventsSince___block_invoke_cold_1();
        }

        v10 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v6;
          if (*(v6 + 23) < 0)
          {
            v11 = *v6;
          }

          *buf = v13;
          *&buf[4] = v9;
          v18 = 2080;
          v19 = v11;
          _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "Event Time: %@, Event: %s", buf, 0x16u);
        }

        v6 += 4;
      }

      while (v6 != v15);
    }

    *buf = &v14;
    std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end