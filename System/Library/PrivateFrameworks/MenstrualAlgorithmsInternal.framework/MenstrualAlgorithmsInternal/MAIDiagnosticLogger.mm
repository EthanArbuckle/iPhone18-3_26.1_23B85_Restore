@interface MAIDiagnosticLogger
- (BOOL)notifyState;
- (MAIDiagnosticLogger)init;
- (id).cxx_construct;
- (shared_ptr<nlohmann::basic_json<>>)inputJson;
- (shared_ptr<nlohmann::basic_json<>>)outputJson;
- (shared_ptr<std::ofstream>)inputFile;
- (shared_ptr<std::ofstream>)outputFile;
- (void)appendDay:;
- (void)appendDay:(id)a3;
- (void)beginPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4;
- (void)dealloc;
- (void)endPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4;
- (void)init;
- (void)removeOldFiles;
- (void)setInputFile:(shared_ptr<std::ofstream>)a3;
- (void)setInputJson:(shared_ptr<nlohmann::basic_json<>>)a3;
- (void)setNotifyState:(BOOL)a3;
- (void)setOutputFile:(shared_ptr<std::ofstream>)a3;
- (void)setOutputJson:(shared_ptr<nlohmann::basic_json<>>)a3;
@end

@implementation MAIDiagnosticLogger

- (BOOL)notifyState
{
  state64 = 0;
  notify_get_state([(MAIDiagnosticLogger *)self notifyToken], &state64);
  return state64 != 0;
}

- (void)setNotifyState:(BOOL)a3
{
  notify_set_state([(MAIDiagnosticLogger *)self notifyToken], a3);
  v4 = [(MAIDiagnosticLogger *)self notificationName];
  notify_post([v4 UTF8String]);
}

- (void)removeOldFiles
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = ha_get_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2588F5000, v2, OS_LOG_TYPE_DEFAULT, "removing old JSON files", buf, 2u);
  }

  v24 = *MEMORY[0x277CBE798];
  v38[0] = *MEMORY[0x277CBE798];
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"/var/mobile/Library/Logs/CycleTracking"];
  v21 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:v22 options:1 errorHandler:0];

  v23 = [MEMORY[0x277CBEAA8] date];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v21;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v5)
  {
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v8 pathExtension];
        v10 = [v9 isEqualToString:@"json"];

        if (v10)
        {
          v27 = 0;
          v28 = 0;
          [v8 getResourceValue:&v28 forKey:v24 error:&v27];
          v11 = v28;
          v12 = v27;
          if (v11 && ([v23 timeIntervalSinceDate:v11], v13 > 86400.0))
          {
            v14 = [MEMORY[0x277CCAA00] defaultManager];
            v26 = v12;
            v15 = [v14 removeItemAtURL:v8 error:&v26];
            v16 = v26;

            if (v15)
            {
              v17 = ha_get_log();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = [v8 lastPathComponent];
                *buf = 138543362;
                v34 = v18;
                _os_log_impl(&dword_2588F5000, v17, OS_LOG_TYPE_DEFAULT, "deleted %{public}@", buf, 0xCu);
              }
            }

            else
            {
              v17 = ha_get_log();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [v8 lastPathComponent];
                *buf = 138543618;
                v34 = v19;
                v35 = 2114;
                v36 = v16;
                _os_log_impl(&dword_2588F5000, v17, OS_LOG_TYPE_DEFAULT, "failed to delete %{public}@ with error: %{public}@", buf, 0x16u);
              }
            }
          }

          else
          {
            v16 = v12;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (MAIDiagnosticLogger)init
{
  v15 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = MAIDiagnosticLogger;
  v2 = [(MAIDiagnosticLogger *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_notifyToken = -1;
    p_notifyToken = &v2->_notifyToken;
    v5 = [(MAIDiagnosticLogger *)v2 notificationName];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      notify_register_check([v6 UTF8String], v3 + 2);
      if (*p_notifyToken != -1)
      {
        if ([v3 notifyState] & 1) != 0 || (ha_sensitive_logging_is_enabled())
        {
          v8 = ha_get_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2588F5000, v8, OS_LOG_TYPE_DEFAULT, "logging is enabled", buf, 2u);
          }

          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&__p, 0, 0, 0, 2);
        }

        v9 = ha_get_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2588F5000, v9, OS_LOG_TYPE_DEFAULT, "logging is disabled", buf, 2u);
        }

        [v3 removeOldFiles];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)beginPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4
{
  v13 = *MEMORY[0x277D85DE8];
  [(MAIDiagnosticLogger *)self inputJson];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  if (v11)
  {
    [(MAIDiagnosticLogger *)self inputJson];
    [(MAIDiagnosticLogger *)self jsonObjectName];
    v5 = std::string::append(&v8, ".beginPhase", 0xBuLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v10 = v5->__r_.__value_.__r.__words[2];
    *v9 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(&v11);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)endPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4
{
  v13 = *MEMORY[0x277D85DE8];
  [(MAIDiagnosticLogger *)self inputJson];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  if (v11)
  {
    [(MAIDiagnosticLogger *)self inputJson];
    [(MAIDiagnosticLogger *)self jsonObjectName];
    v5 = std::string::append(&v8, ".endPhase", 9uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v10 = v5->__r_.__value_.__r.__words[2];
    *v9 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(&v11);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)appendDay:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(MAIDiagnosticLogger *)self inputJson];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v6)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(v8);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)appendDay:
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = a1;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v2);
}

- (void)dealloc
{
  [(MAIDiagnosticLogger *)self inputFile];
  if (*buf)
  {
    [(MAIDiagnosticLogger *)self inputJson];
    v3 = v7 != 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  else
  {
    v3 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  if (v3)
  {
    [(MAIDiagnosticLogger *)self inputFile];
    [(MAIDiagnosticLogger *)self inputJson];
    nlohmann::operator<<(*buf);
  }

  [(MAIDiagnosticLogger *)self outputFile];
  if (*buf)
  {
    [(MAIDiagnosticLogger *)self outputJson];
    v4 = v7 != 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  else
  {
    v4 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  if (v4)
  {
    [(MAIDiagnosticLogger *)self outputFile];
    [(MAIDiagnosticLogger *)self outputJson];
    nlohmann::operator<<(*buf);
  }

  if ([(MAIDiagnosticLogger *)self notifyToken]!= -1)
  {
    v5 = ha_get_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2588F5000, v5, OS_LOG_TYPE_DEFAULT, "clearing the logging notification state", buf, 2u);
    }

    [(MAIDiagnosticLogger *)self setNotifyState:0];
    notify_cancel([(MAIDiagnosticLogger *)self notifyToken]);
  }

  v6.receiver = self;
  v6.super_class = MAIDiagnosticLogger;
  [(MAIDiagnosticLogger *)&v6 dealloc];
}

- (shared_ptr<nlohmann::basic_json<>>)inputJson
{
  cntrl = self->_inputJson.__cntrl_;
  *v2 = self->_inputJson.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setInputJson:(shared_ptr<nlohmann::basic_json<>>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_inputJson.__cntrl_;
  self->_inputJson.__ptr_ = v4;
  self->_inputJson.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (shared_ptr<nlohmann::basic_json<>>)outputJson
{
  cntrl = self->_outputJson.__cntrl_;
  *v2 = self->_outputJson.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setOutputJson:(shared_ptr<nlohmann::basic_json<>>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_outputJson.__cntrl_;
  self->_outputJson.__ptr_ = v4;
  self->_outputJson.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (shared_ptr<std::ofstream>)inputFile
{
  cntrl = self->_inputFile.__cntrl_;
  *v2 = self->_inputFile.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setInputFile:(shared_ptr<std::ofstream>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_inputFile.__cntrl_;
  self->_inputFile.__ptr_ = v4;
  self->_inputFile.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (shared_ptr<std::ofstream>)outputFile
{
  cntrl = self->_outputFile.__cntrl_;
  *v2 = self->_outputFile.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setOutputFile:(shared_ptr<std::ofstream>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_outputFile.__cntrl_;
  self->_outputFile.__ptr_ = v4;
  self->_outputFile.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

- (void)init
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2588F5000, a2, OS_LOG_TYPE_ERROR, "failed to create directory: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end