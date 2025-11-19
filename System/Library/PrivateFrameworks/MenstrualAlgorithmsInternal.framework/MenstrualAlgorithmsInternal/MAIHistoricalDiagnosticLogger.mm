@interface MAIHistoricalDiagnosticLogger
- (void)finalizeHistoricalAnalyzerInput;
@end

@implementation MAIHistoricalDiagnosticLogger

- (void)finalizeHistoricalAnalyzerInput
{
  [(MAIDiagnosticLogger *)self inputJson];
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](__p[1]);
  }

  if (__p[0])
  {
    [(MAIDiagnosticLogger *)self inputJson];
    v3 = v9;
    [(MAIHistoricalDiagnosticLogger *)self jsonObjectName];
    v4 = std::string::append(&v6, ".analyze", 8uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v8 = v4->__r_.__value_.__r.__words[2];
    *__p = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::emplace_back<std::string>(v3);
  }
}

@end