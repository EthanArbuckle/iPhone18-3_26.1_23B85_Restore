@interface MAIDayStreamDiagnosticLogger
- (MAIDayStreamDiagnosticLogger)initWithConfig:(id)config;
- (void)finalizeDayStreamInputWithDay:(unsigned int)day;
- (void)logDayStreamProcessorOutput:;
- (void)logDayStreamProcessorOutput:(MAIDayStreamProcessorOutput *)output;
@end

@implementation MAIDayStreamDiagnosticLogger

- (MAIDayStreamDiagnosticLogger)initWithConfig:(id)config
{
  v16 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v14.receiver = self;
  v14.super_class = MAIDayStreamDiagnosticLogger;
  if ([(MAIDiagnosticLogger *)&v14 init])
  {
    v5 = configCopy;
    v12[0] = 0;
    v13 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
    userReportedCycleLength = [v5 userReportedCycleLength];
    if (userReportedCycleLength)
    {
      v15[0] = [userReportedCycleLength intValue];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[24],int>(v12);
    }

    julianDayOfUserReportedCycleLength = [v5 julianDayOfUserReportedCycleLength];
    if (julianDayOfUserReportedCycleLength)
    {
      v15[0] = [julianDayOfUserReportedCycleLength intValue];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[35],int>(v12);
    }

    userReportedMenstruationLength = [v5 userReportedMenstruationLength];
    if (userReportedMenstruationLength)
    {
      v15[0] = [userReportedMenstruationLength intValue];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[31],int>(v12);
    }

    julianDayOfUserReportedMenstruationLength = [v5 julianDayOfUserReportedMenstruationLength];
    if (julianDayOfUserReportedMenstruationLength)
    {
      v15[0] = [julianDayOfUserReportedMenstruationLength intValue];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[42],int>(v12);
    }

    [v5 birthDateComponents];
    if (objc_claimAutoreleasedReturnValue())
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v15);
    }

    v15[0] = [v5 todayAsJulianDay];
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace<char const(&)[17],unsigned int>(v12);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)finalizeDayStreamInputWithDay:(unsigned int)day
{
  v12 = *MEMORY[0x277D85DE8];
  [(MAIDiagnosticLogger *)self inputJson];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (*buf)
  {
    [(MAIDiagnosticLogger *)self inputJson];
    [(MAIDayStreamDiagnosticLogger *)self jsonObjectName];
    v4 = std::string::append(&v7, ".analyze", 8uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9 = v4->__r_.__value_.__r.__words[2];
    *__p = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(buf);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logDayStreamProcessorOutput:(MAIDayStreamProcessorOutput *)output
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = output->var0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v4, 0, 0, 0, 2);
}

- (void)logDayStreamProcessorOutput:
{
  v4 = *MEMORY[0x277D85DE8];
  uTF8String = [@"julianDayOfAnalysisWindowStart" UTF8String];
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v3);
}

@end