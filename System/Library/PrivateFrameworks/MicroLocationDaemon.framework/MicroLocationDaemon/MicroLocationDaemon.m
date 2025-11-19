void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }
}

void ULSystemTriggerGenerator::onAppLaunch(ULSystemTriggerGenerator *a1, const void **a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAppDenyList"];
  v7 = [v5 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v7;
    memset(&v28, 0, sizeof(v28));
    std::vector<std::string>::reserve(&v28, [v8 count]);
    v31 = 0u;
    v32 = 0u;
    memset(v30, 0, sizeof(v30));
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:v30 objects:buf count:16];
    if (v10)
    {
      v11 = **&v30[16];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (**&v30[16] != v11)
          {
            objc_enumerationMutation(v9);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, [*(*&v30[8] + 8 * i) UTF8String]);
          std::vector<std::string>::push_back[abi:ne200100](&v28, &__p);
          if (SHIBYTE(__p.__end_cap_.__value_) < 0)
          {
            operator delete(__p.__begin_);
          }
        }

        v10 = [v9 countByEnumeratingWithState:v30 objects:buf count:16];
      }

      while (v10);
    }

    begin = v28.__begin_;
    v27 = v28;
    end = v28.__end_;
    memset(&v28, 0, sizeof(v28));
    *buf = &v28;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    memset(v30, 0, 24);
    memset(&__p, 0, sizeof(__p));
    std::vector<std::string>::reserve(&__p, 0x12uLL);
    for (j = 0; j != 18; ++j)
    {
      std::string::basic_string[abi:ne200100]<0>(buf, _ZGRN10ULSettings14SettingsTraitsINS_11AppDenyListEE12defaultValueE_[j]);
      std::vector<std::string>::push_back[abi:ne200100](&__p, buf);
      if (SBYTE3(v37) < 0)
      {
        operator delete(*buf);
      }
    }

    std::vector<std::string>::__vdeallocate(v30);
    *v30 = __p;
    memset(&__p, 0, sizeof(__p));
    *buf = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
    v15 = *v30;
    end = (v15 >> 64);
    begin = v15;
    v27 = *v30;
    memset(v30, 0, 24);
    *buf = v30;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v16 = end;
  if (begin != end)
  {
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = a2[1];
    }

    if (v17 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    while (1)
    {
      size = HIBYTE(begin->__r_.__value_.__r.__words[2]);
      v21 = size;
      if ((size & 0x80u) != 0)
      {
        size = begin->__r_.__value_.__l.__size_;
      }

      if (size == v18)
      {
        v22 = v21 >= 0 ? begin : begin->__r_.__value_.__r.__words[0];
        if (!memcmp(v22, v19, v18))
        {
          break;
        }
      }

      if (++begin == end)
      {
        v16 = end;
        goto LABEL_35;
      }
    }

    v16 = begin;
  }

LABEL_35:
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSystemTriggerGenerator::onAppLaunch();
  }

  v23 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    *buf = 68289539;
    *&buf[4] = 0;
    v34 = 2082;
    v35 = "";
    v36 = 2081;
    v37 = v24;
    v38 = 1026;
    v39 = v16 == end;
    _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onAppLaunch, bundleIdentifier:%{private, location:escape_only}s, is trigger needed:%{public}hhd}", buf, 0x22u);
  }

  if (v16 == end)
  {
    ULSystemTriggerGenerator::requestRecordingIfPossible(a1, 1, 0);
  }

  *buf = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  v25 = *MEMORY[0x277D85DE8];
}

void sub_258FEC1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  a17 = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void ULScanService::handleDisplayStateEvent(id *this, ULEvent *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [this[13] queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN13ULScanService23handleDisplayStateEventEP7ULEvent_block_invoke;
  v9[3] = &unk_2798D4138;
  v10 = v6;
  v11 = this;
  v8 = v6;
  dispatch_async(v7, v9);
}

uint64_t ___ZN13ULScanService23handleDisplayStateEventEP7ULEvent_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = [*(a1 + 32) displayOnChanged];
  if (result)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULScanService::setTriggeringConfiguration();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) displayOn];
      v6 = @"Off";
      if (v5)
      {
        v6 = @"On";
      }

      v8[0] = 68289282;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ScanService handleDisplayStateEvent, display state: :%{public, location:escape_only}@}", v8, 0x1Cu);
    }

    result = ULScanService::applyDisplayStatePolicy(v2, [*(a1 + 32) displayOn]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void ULSystemTriggerGenerator::requestRecordingIfPossible(ULSystemTriggerGenerator *this, int a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = cl::chrono::CFAbsoluteTimeClock::now();
  v17 = v6;
  if (*(this + 24))
  {
    if (a2 && ULThrottle::shouldThrottle(this + 32, v6))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSystemTriggerGenerator::startPeriodicTriggerTimer();
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v8 = "Throttled request";
        v9 = v7;
        v10 = OS_LOG_TYPE_DEBUG;
LABEL_12:
        _os_log_impl(&dword_258FE9000, v9, v10, v8, buf, 2u);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v12 = *(**(this + 2) + 16);
    if (a3)
    {
      if ((v12() & 1) == 0)
      {
LABEL_15:
        v13 = 0;
LABEL_18:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULSystemTriggerGenerator::onAppLaunch();
        }

        v14 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v15 = @"NO";
          if (v13)
          {
            v15 = @"YES";
          }

          *buf = 138412290;
          v19 = v15;
          _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "Recording requested, success: %@", buf, 0xCu);
        }

        if (*(this + 27) == 1)
        {
          ULSystemTriggerGenerator::resetPeriodicTriggerTimer(this);
        }

        goto LABEL_26;
      }
    }

    else if (!v12())
    {
      goto LABEL_15;
    }

    ULThrottle::setLastStartedTime(this + 32, &v17);
    v13 = 1;
    goto LABEL_18;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSystemTriggerGenerator::startPeriodicTriggerTimer();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v8 = "Recording is not allowed";
    v9 = v11;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_12;
  }

LABEL_26:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::find<std::string>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t CLMicroLocationStateMachine::StateMachineBase::handleEvent(CLMicroLocationStateMachine::StateMachineBase *this, CLMicroLocationStateMachine::EventBase *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!*(this + 1))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationStateMachine::StateBase::StateBase();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v44, *(a2 + 1), *(a2 + 2));
      }

      else
      {
        *v44 = *(a2 + 8);
        *&v44[16] = *(a2 + 3);
      }

      v22 = v44;
      if (v44[23] < 0)
      {
        v22 = *v44;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v22;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:State Machine: Failed to handle event because current state is NULL, Event:%{private, location:escape_only}s}", buf, 0x1Cu);
      if ((v44[23] & 0x80000000) != 0)
      {
        operator delete(*v44);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationStateMachine::StateMachineBase::setInitialState();
    }

    v23 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v23))
    {
      if (*(a2 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v44, *(a2 + 1), *(a2 + 2));
      }

      else
      {
        *v44 = *(a2 + 8);
        *&v44[16] = *(a2 + 3);
      }

      v24 = v44;
      if (v44[23] < 0)
      {
        v24 = *v44;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v24;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "State Machine: Failed to handle event because current state is NULL", "{msg%{public}.0s:State Machine: Failed to handle event because current state is NULL, Event:%{private, location:escape_only}s}", buf, 0x1Cu);
      if ((v44[23] & 0x80000000) != 0)
      {
        operator delete(*v44);
      }
    }

    goto LABEL_97;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateBase::StateBase();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v44, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      *v44 = *(a2 + 8);
      *&v44[16] = *(a2 + 3);
    }

    v6 = v44;
    if (v44[23] < 0)
    {
      v6 = *v44;
    }

    v7 = *(this + 1);
    v8 = (v7 + 8);
    if (*(v7 + 31) < 0)
    {
      v8 = *v8;
    }

    *buf = 68289539;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v6;
    v46 = 2081;
    v47 = v8;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:State Machine: Handling Event, Event:%{private, location:escape_only}s, Current State:%{private, location:escape_only}s}", buf, 0x26u);
    if ((v44[23] & 0x80000000) != 0)
    {
      operator delete(*v44);
    }
  }

  v9 = *(this + 1);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(buf, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    *buf = *(a2 + 8);
    *&buf[16] = *(a2 + 3);
  }

  v10 = std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::find<std::string>(v9 + 48, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (*(this + 1) + 56 == v10)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationStateMachine::StateMachineBase::setInitialState();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v44, *(a2 + 1), *(a2 + 2));
      }

      else
      {
        *v44 = *(a2 + 8);
        *&v44[16] = *(a2 + 3);
      }

      v25 = v44;
      if (v44[23] < 0)
      {
        v25 = *v44;
      }

      v26 = *(this + 1);
      v27 = (v26 + 8);
      if (*(v26 + 31) < 0)
      {
        v27 = *v27;
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v25;
      v46 = 2081;
      v47 = v27;
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:State Machine: Failed to handle event because it is not a valid event for the current state, Event:%{private, location:escape_only}s, Current State:%{private, location:escape_only}s}", buf, 0x26u);
      if ((v44[23] & 0x80000000) != 0)
      {
        operator delete(*v44);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationStateMachine::StateMachineBase::setInitialState();
    }

    v23 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v23))
    {
      if (*(a2 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v44, *(a2 + 1), *(a2 + 2));
      }

      else
      {
        *v44 = *(a2 + 8);
        *&v44[16] = *(a2 + 3);
      }

      v28 = v44;
      if (v44[23] < 0)
      {
        v28 = *v44;
      }

      v29 = *(this + 1);
      v30 = (v29 + 8);
      if (*(v29 + 31) < 0)
      {
        v30 = *v30;
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v28;
      v46 = 2081;
      v47 = v30;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "State Machine: Failed to handle event because it is not a valid event for the current state", "{msg%{public}.0s:State Machine: Failed to handle event because it is not a valid event for the current state, Event:%{private, location:escape_only}s, Current State:%{private, location:escape_only}s}", buf, 0x26u);
      if ((v44[23] & 0x80000000) != 0)
      {
        operator delete(*v44);
      }
    }

LABEL_97:

    v31 = 0;
    goto LABEL_118;
  }

  (***(v10 + 56))(buf);
  if (buf[24] != 1)
  {
LABEL_108:
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationStateMachine::StateMachineBase::setInitialState();
    }

    v34 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(this + 1);
      v36 = (v35 + 8);
      if (*(v35 + 31) < 0)
      {
        v36 = *v36;
      }

      *v44 = 68289283;
      *&v44[8] = 2082;
      *&v44[10] = "";
      *&v44[18] = 2081;
      *&v44[20] = v36;
      _os_log_impl(&dword_258FE9000, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:State Machine: , New State:%{private, location:escape_only}s}", v44, 0x1Cu);
    }

    goto LABEL_114;
  }

  v11 = *(this + 1);
  if (*(v11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v44, *(v11 + 8), *(v11 + 16));
    if ((buf[24] & 1) == 0)
    {
      v19 = 0;
      if ((v44[23] & 0x80) != 0)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v12 = *(v11 + 8);
    *&v44[16] = *(v11 + 24);
    *v44 = v12;
  }

  if (buf[23] >= 0)
  {
    v14 = buf[23];
  }

  else
  {
    v14 = *&buf[8];
  }

  v15 = v44[23];
  v16 = v44[23];
  if (v44[23] < 0)
  {
    v15 = *&v44[8];
  }

  if (v14 != v15)
  {
    v19 = 0;
    if ((v44[23] & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (buf[23] >= 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  if (v44[23] >= 0)
  {
    v18 = v44;
  }

  else
  {
    v18 = *v44;
  }

  v19 = memcmp(v17, v18, v14) == 0;
  if (v16 < 0)
  {
LABEL_49:
    operator delete(*v44);
  }

LABEL_50:
  if (!v19)
  {
    if ((buf[24] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__p, *buf, *&buf[8]);
    }

    else
    {
      __p = *buf;
    }

    v32 = std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::find<std::string>(this + 16, &__p.__r_.__value_.__l.__data_);
    if ((this + 24) == v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32[7];
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (!v33)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationStateMachine::StateMachineBase::setInitialState();
      }

      v39 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        if ((buf[24] & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v40 = buf;
        if (buf[23] < 0)
        {
          v40 = *buf;
        }

        *v44 = 68289283;
        *&v44[8] = 2082;
        *&v44[10] = "";
        *&v44[18] = 2081;
        *&v44[20] = v40;
        _os_log_impl(&dword_258FE9000, v39, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:State Machine: Failed to switch to new state because requested state doesn't exist in the state table, State:%{private, location:escape_only}s}", v44, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationStateMachine::StateMachineBase::setInitialState();
      }

      v41 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v41))
      {
        if ((buf[24] & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v42 = buf;
        if (buf[23] < 0)
        {
          v42 = *buf;
        }

        *v44 = 68289283;
        *&v44[8] = 2082;
        *&v44[10] = "";
        *&v44[18] = 2081;
        *&v44[20] = v42;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "State Machine: Failed to switch to new state because requested state doesn't exist in the state table", "{msg%{public}.0s:State Machine: Failed to switch to new state because requested state doesn't exist in the state table, State:%{private, location:escape_only}s}", v44, 0x1Cu);
      }

      v31 = 0;
      goto LABEL_115;
    }

    CLMicroLocationStateMachine::StateMachineBase::exitCurrentState(this);
    CLMicroLocationStateMachine::StateMachineBase::enterNewState(this, v33);
    goto LABEL_108;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateMachineBase::setInitialState();
  }

  v20 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    if ((buf[24] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v21 = buf;
    if (buf[23] < 0)
    {
      v21 = *buf;
    }

    *v44 = 68289283;
    *&v44[8] = 2082;
    *&v44[10] = "";
    *&v44[18] = 2081;
    *&v44[20] = v21;
    _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:State Machine: No state change requested, State:%{private, location:escape_only}s}", v44, 0x1Cu);
  }

LABEL_114:
  v31 = 1;
LABEL_115:
  if (buf[24] == 1 && (buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

LABEL_118:
  v37 = *MEMORY[0x277D85DE8];
  return v31;
}

void sub_258FED6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerLeechedLocationEvent,&CLMicroLocationLoiManager::HandleLeechedLocation>::stateFunction@<X0>(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    return CLMicroLocationLoiManager::HandleLeechedLocation(v5, v7, a3);
  }

  else
  {
    v31 = lpsrc;
    v10 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = *(v5 + 3);
      if (*(v11 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *(v11 + 8), *(v11 + 16));
      }

      else
      {
        v12 = *(v11 + 8);
        v33.__r_.__value_.__r.__words[2] = *(v11 + 24);
        *&v33.__r_.__value_.__l.__data_ = v12;
      }

      v13 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
      v14 = v33.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v15 = &v33;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2081;
      v39 = v15;
      v40 = 2081;
      v41 = p_p;
      v42 = 2082;
      v43 = "assert";
      v44 = 2081;
      v45 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }

    v17 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v17))
    {
      v18 = *(v5 + 3);
      if (*(v18 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *(v18 + 8), *(v18 + 16));
      }

      else
      {
        v19 = *(v18 + 8);
        v33.__r_.__value_.__r.__words[2] = *(v18 + 24);
        *&v33.__r_.__value_.__l.__data_ = v19;
      }

      v20 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
      v21 = v33.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v22 = &v33;
      if (v20 < 0)
      {
        v22 = v21;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &__p;
      }

      else
      {
        v23 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2081;
      v39 = v22;
      v40 = 2081;
      v41 = v23;
      v42 = 2082;
      v43 = "assert";
      v44 = 2081;
      v45 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }

    v24 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(v5 + 3);
      if (*(v25 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *(v25 + 8), *(v25 + 16));
      }

      else
      {
        v26 = *(v25 + 8);
        v33.__r_.__value_.__r.__words[2] = *(v25 + 24);
        *&v33.__r_.__value_.__l.__data_ = v26;
      }

      v27 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
      v28 = v33.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v31, &__p);
      v29 = &v33;
      if (v27 < 0)
      {
        v29 = v28;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__p;
      }

      else
      {
        v30 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2081;
      v39 = v29;
      v40 = 2081;
      v41 = v30;
      v42 = 2082;
      v43 = "assert";
      v44 = 2081;
      v45 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }

    result = abort_report_np();
    __break(1u);
  }

  return result;
}

_BYTE *CLMicroLocationLoiManager::HandleLeechedLocation@<X0>(CLMicroLocationLoiManager *this@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 68289026;
    *&v15[8] = 2082;
    *&v15[10] = "";
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Manager: handle leeched location notification}", v15, 0x12u);
  }

  [a2[4] coordinate];
  v8 = v7;
  [a2[4] coordinate];
  if (CLMicroLocationLoiManager::refreshRoutineStateAtLocation(this, v8, v9))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "LOI Manager, requested LOI for current visit location", v15, 2u);
    }

    result = std::string::basic_string[abi:ne200100]<0>(v15, "In the process of entering Home LOI");
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v15 = 68289026;
      *&v15[8] = 2082;
      *&v15[10] = "";
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Failed To request LOI for current visit location}", v15, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *v15 = 68289026;
      *&v15[8] = 2082;
      *&v15[10] = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Failed To request LOI for current visit location", "{msg%{public}.0s:LOI Manager, Failed To request LOI for current visit location}", v15, 0x12u);
    }

    result = std::string::basic_string[abi:ne200100]<0>(v15, "Not in Active Location State");
  }

  *a3 = *v15;
  *(a3 + 16) = *&v15[16];
  *(a3 + 24) = 1;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL CLMicroLocationLoiManager::refreshRoutineStateAtLocation(CLMicroLocationLoiManager *this, double a2, double a3)
{
  (*(**(this + 42) + 40))(*(this + 42));
  if (((*(**(this + 42) + 56))(*(this + 42)) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v14 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 0;
    v15 = "Ignoring refreshRoutineStateAtLocation request since keybag is not unlocked";
    v16 = buf;
    goto LABEL_10;
  }

  v6 = cl::chrono::CFAbsoluteTimeClock::now();
  if (*(this + 496) == 1)
  {
    v7 = v6;
    v8 = *(this + 61);
    v9 = +[ULDefaultsSingleton shared];
    v10 = [v9 defaultsDictionary];

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRefreshRoutineStateThrottle"];
    v12 = [v10 objectForKey:v11];
    if (!v12)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
    }

    else
    {
LABEL_12:
      [&unk_286A72FD0 doubleValue];
    }

    v18 = v13;

    if (v7 - v8 < v18)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v14 = logObject_MicroLocation_Default;
      if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v19 = 0;
      v15 = "Ignoring refreshRoutineStateAtLocation request since last request was too recent";
      v16 = &v19;
LABEL_10:
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
      return 0;
    }
  }

  CLMicroLocationLoiManager::initializeStateAtLocation(this, a2, a3);

  return CLMicroLocationLoiManager::fetchLocationOfInterest(this);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void CLMicroLocationLoiManager::handleLeechedLocationUpdate(CLMicroLocationLoiManager *this, CLLocation *a2)
{
  v3 = a2;
  std::string::basic_string[abi:ne200100]<0>(&v6, "No Name Given");
  v5 = &unk_286A5E350;
  v7 = 0;
  std::string::__assign_external(&v6, "Leeched Location Update", 0x17uLL);
  v4 = v7;
  v7 = v3;

  CLMicroLocationStateMachine::StateMachineBase::handleEvent((this + 16), &v5);
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&v5);
}

void sub_258FEE2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&a10);

  _Unwind_Resume(a1);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t ULThrottle::shouldThrottle(uint64_t a1, double a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1 && a2 - *a1 < *(a1 + 16))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULThrottle::shouldThrottle();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = -1.0;
      if (*(a1 + 8) == 1)
      {
        v5 = a2 - *a1;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 16)];
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "Request throttled, time since last allowed timestamp(sec): %@, throttle duration(sec): %@", &v10, 0x16u);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void ULDatabase::connectIfNecessary(ULDatabase *this)
{
  if (((*(*this + 272))(this) & 1) == 0)
  {
    (*(*this + 296))(this);
  }

  if (((*(*this + 272))(this) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "#Warning Failed to connect to database", v3, 2u);
    }
  }
}

uint64_t non-virtual thunk toULDatabase::isDatabaseValid(ULDatabase *this)
{
  v1 = (this - 8);
  v2 = (*(*(this - 1) + 320))(this - 8, 0) - 3;
  LODWORD(result) = [v1[3] isStoreConnected];
  if (v2 < 0xFFFFFFFE)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t ULDatabase::getMigrationStatus(ULDatabase *this, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  result = *(this + 58);
  if (result == 1 || a2 != 0)
  {
    *(this + 58) = ULDatabase::checkMigrationStatus(this);
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      ULDatabaseMigrationStatusAsString(*(this + 58), __p);
      if (v9 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:migration status, status:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = *(this + 58);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationLoiManager::initializeStateAtLocation(CLMicroLocationLoiManager *this, double a2, double a3)
{
  v6 = cl::chrono::CFAbsoluteTimeClock::now();
  if ((*(this + 496) & 1) == 0)
  {
    *(this + 496) = 1;
  }

  *(this + 61) = v6;
  *(this + 45) = a2;
  *(this + 46) = a3;
  if (*(this + 415) < 0)
  {
    **(this + 49) = 0;
    *(this + 50) = 0;
  }

  else
  {
    *(this + 392) = 0;
    *(this + 415) = 0;
  }

  *(this + 52) = 0;
  *(this + 53) = 0;
}

void sub_258FEEA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL CLMicroLocationLoiManager::fetchLocationOfInterest(CLMicroLocationLoiManager *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(this + 43);
  if (v1)
  {
    v3 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:*(this + 45) longitude:*(this + 46)];
    [*(this + 43) fetchLocationOfInterestAtLocation:v3];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning LOI Bridge not setup.}", v7, 0x12u);
    }
  }

  result = v1 != 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationStateMachine::EventHandlerWrapperWithNoData<CLMicroLocationLoiManager,&CLMicroLocationLoiManager::entryFunctionEnteringHomeLoiState>::stateFunction(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 16;
  if (!a2)
  {
    v2 = 0;
  }

  *(v2 + 512) = 1;
}

void CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(id *this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{

  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::StateMachineBase::exitCurrentState(CLMicroLocationStateMachine::StateMachineBase *this)
{
  v16 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateBase::StateBase();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 1);
    v4 = (v3 + 8);
    if (*(v3 + 31) < 0)
    {
      v4 = *v4;
    }

    v10 = 68289283;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2081;
    v15 = v4;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:State Machine: Exiting State, State:%{private, location:escape_only}s}", &v10, 0x1Cu);
  }

  v5 = *(*(this + 1) + 72);
  if (v5)
  {
    (**v5)(v5, this);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationStateMachine::StateMachineBase::setInitialState();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v7 = *(this + 1);
      v8 = (v7 + 8);
      if (*(v7 + 31) < 0)
      {
        v8 = *v8;
      }

      v10 = 68289283;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2081;
      v15 = v8;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:State Machine: State did not have an exit function, State:%{private, location:escape_only}s}", &v10, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationStateMachine::StateMachineBase::enterNewState(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateBase::StateBase();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v5 = *v5;
    }

    v12 = 68289283;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:State Machine: Entering new state, New State:%{private, location:escape_only}s}", &v12, 0x1Cu);
  }

  v6 = a1[1];
  if (v6 && *(v6 + 32) == 1)
  {
    a1[6] = v6;
  }

  a1[5] = v6;
  a1[1] = a2;
  v7 = *(a2 + 40);
  if (v7)
  {
    (**v7)(v7, a1);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationStateMachine::StateMachineBase::setInitialState();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v9 = a1[1];
      v10 = (v9 + 8);
      if (*(v9 + 31) < 0)
      {
        v10 = *v10;
      }

      v12 = 68289283;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2081;
      v17 = v10;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:State Machine: State did not have an entry function, State:%{private, location:escape_only}s}", &v12, 0x1Cu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerReceivedLoiForLocationEvent,&CLMicroLocationLoiManager::LoiForGivenLocation>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::LoiForGivenLocation(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 3);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v32.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v13 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v14;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 3);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v32.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v20 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v32;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v21;
      v39 = 2081;
      v40 = v22;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationLoiManager::LoiForGivenLocation(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerReceivedLoiForLocationEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  if (*(this + 512))
  {
    ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(&__str);
    v6 = *(a2 + 4);
    if (v6)
    {
      v7 = [v6 loiIdentifier];

      if (v7)
      {
        CLMicroLocationLoiManager::convertRTLocationOfInterestTypeToString([*(a2 + 4) type], buf);
        v8 = (this + 392);
        if (*(this + 415) < 0)
        {
          operator delete(*v8);
        }

        *v8 = *buf;
        *(this + 51) = *&buf[16];
        v9 = *(this + 415);
        if (v9 < 0)
        {
          if (*(this + 50) != 4)
          {
LABEL_31:
            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            if (size)
            {
              std::string::operator=((this + 392), &__str);
            }

LABEL_35:
            v22 = [*(a2 + 4) loiIdentifier];
            v23 = [v22 UUIDString];
            v24 = v23;
            v25 = [v23 UTF8String];
            v26 = strlen(v25);
            *(this + 54) = boost::uuids::string_generator::operator()<char const*>(buf, v25, &v25[v26]);
            *(this + 55) = v27;

            if (onceToken_MicroLocation_Default != -1)
            {
              CLMicroLocationLoiManager::VisitEntry();
            }

            v28 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = [*(a2 + 4) loiIdentifier];
              v30 = [v29 description];
              v31 = v30;
              v32 = (this + 392);
              if (*(this + 415) < 0)
              {
                v32 = *v8;
              }

              *buf = 68289539;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2113;
              *&buf[20] = v30;
              v62 = 2081;
              v63 = v32;
              _os_log_impl(&dword_258FE9000, v28, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Manager, Retrieved location of interest, LOI ID:%{private, location:escape_only}@, LOI TYPE:%{private, location:escape_only}s}", buf, 0x26u);
            }

            v33 = *(this + 415);
            if (v33 < 0)
            {
              if (*(this + 50) != 4)
              {
                goto LABEL_47;
              }

              v8 = *v8;
            }

            else if (v33 != 4)
            {
              goto LABEL_47;
            }

            if (*v8 == 1701670760)
            {
              if (onceToken_MicroLocation_Default != -1)
              {
                CLMicroLocationLoiManager::VisitEntry();
              }

              v53 = logObject_MicroLocation_Default;
              if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_258FE9000, v53, OS_LOG_TYPE_INFO, "LOI Manager, fetching related LOIs for LOI", buf, 2u);
              }

              v54 = [*(a2 + 4) loiIdentifier];
              LoiIdsForLoi = CLMicroLocationLoiManager::fetchLoiIdsForLoi(this, v54);

              if (LoiIdsForLoi)
              {
                *(this + 256) = 256;
                v56 = *(this + 3);
                if (*(v56 + 31) < 0)
                {
                  std::string::__init_copy_ctor_external(buf, *(v56 + 8), *(v56 + 16));
                }

                else
                {
                  v57 = *(v56 + 8);
                  *&buf[16] = *(v56 + 24);
                  *buf = v57;
                }

LABEL_57:
                *a3 = *buf;
                *(a3 + 16) = *&buf[16];
                *(a3 + 24) = 1;
LABEL_58:
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                goto LABEL_89;
              }

              if (onceToken_MicroLocation_Default != -1)
              {
                CLMicroLocationLoiManager::VisitEntry();
              }

              v58 = logObject_MicroLocation_Default;
              if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
              {
LABEL_52:
                if (onceToken_MicroLocation_Default != -1)
                {
                  CLMicroLocationLoiManager::VisitEntry();
                }

                v38 = logObject_MicroLocation_Default;
                if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_258FE9000, v38, OS_LOG_TYPE_INFO, "LOI Manager, Returning to Inactive Location State", buf, 2u);
                }

                CLMicroLocationLoiManager::resetLoiVariables(this);
                std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
                goto LABEL_57;
              }

              *buf = 0;
              v35 = "LOI Manager, Failed To request related LOIs";
              v36 = v58;
              v37 = OS_LOG_TYPE_ERROR;
LABEL_51:
              _os_log_impl(&dword_258FE9000, v36, v37, v35, buf, 2u);
              goto LABEL_52;
            }

LABEL_47:
            if (onceToken_MicroLocation_Default != -1)
            {
              CLMicroLocationLoiManager::VisitEntry();
            }

            v34 = logObject_MicroLocation_Default;
            if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
            {
              goto LABEL_52;
            }

            *buf = 0;
            v35 = "LOI Manager, Not a Home LOI";
            v36 = v34;
            v37 = OS_LOG_TYPE_INFO;
            goto LABEL_51;
          }

          v10 = *v8;
        }

        else
        {
          v10 = (this + 392);
          if (v9 != 4)
          {
            goto LABEL_31;
          }
        }

        if (*v10 == 1701670760)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v15 = "LOI Manager, got nil LOI for current Location.. perhaps not in an LOI";
        v16 = v18;
        v17 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_22;
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v14 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v15 = "#LOIManager, Received nil object in eventData, this shouldn't happen";
        v16 = v14;
        v17 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_258FE9000, v16, v17, v15, buf, 2u);
      }
    }

    v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = __str.__r_.__value_.__l.__size_;
    }

    if (v19)
    {
      std::string::operator=((this + 392), &__str);
      *(this + 54) = (*(*this + 16))(this);
      *(this + 55) = v20;
      *(this + 512) = 0;
      memset(buf, 0, 24);
      CLMicroLocationLoiManager::tryToEnterHomeLoi(this, this + 392, this + 27, buf, &__p);
      *a3 = __p;
      *(a3 + 24) = 1;
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      goto LABEL_58;
    }

    goto LABEL_52;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(this + 3);
    if (*(v12 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v12 + 8), *(v12 + 16));
    }

    else
    {
      v13 = *(v12 + 8);
      __str.__r_.__value_.__r.__words[2] = *(v12 + 24);
      *&__str.__r_.__value_.__l.__data_ = v13;
    }

    v39 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    v40 = __str.__r_.__value_.__r.__words[0];
    CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
    p_str = &__str;
    if (v39 < 0)
    {
      p_str = v40;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 68289539;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = p_str;
    v62 = 2081;
    v63 = p_p;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v43 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(v43))
  {
    v44 = *(this + 3);
    if (*(v44 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v44 + 8), *(v44 + 16));
    }

    else
    {
      v45 = *(v44 + 8);
      __str.__r_.__value_.__r.__words[2] = *(v44 + 24);
      *&__str.__r_.__value_.__l.__data_ = v45;
    }

    v46 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    v47 = __str.__r_.__value_.__r.__words[0];
    CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
    v48 = &__str;
    if (v46 < 0)
    {
      v48 = v47;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &__p;
    }

    else
    {
      v49 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 68289539;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v48;
    v62 = 2081;
    v63 = v49;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v50 = *(this + 3);
  if (*(v50 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(buf, *(v50 + 8), *(v50 + 16));
  }

  else
  {
    v51 = *(v50 + 8);
    *&buf[16] = *(v50 + 24);
    *buf = v51;
  }

  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
LABEL_89:
  v52 = *MEMORY[0x277D85DE8];
}

void sub_258FEFCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(uint64_t a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOverrideCurrentRTLOIType"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSString * {__strong},std::string>(v5, v9);
    *a1 = *v9;
    *(a1 + 16) = *&v9[16];
  }

  else
  {
    ULSettings::convert<NSString * {__strong},std::string>(&stru_286A60C80, v9);
    *&v10[7] = *&v9[15];
    *v10 = *&v9[8];
    v6 = v9[23];
    v7 = *&v9[8];
    *a1 = *v9;
    *(a1 + 8) = v7;
    *(a1 + 15) = *&v10[7];
    *(a1 + 23) = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOverrideCurrentRTLOIType"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSString * {__strong},std::string>(v5, v9);
    *a1 = *v9;
    *(a1 + 16) = *&v9[16];
  }

  else
  {
    ULSettings::convert<NSString * {__strong},std::string>(&stru_286A60C80, v9);
    *&v10[7] = *&v9[15];
    *v10 = *&v9[8];
    v6 = v9[23];
    v7 = *&v9[8];
    *a1 = *v9;
    *(a1 + 8) = v7;
    *(a1 + 15) = *&v10[7];
    *(a1 + 23) = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ULSettings::convert<NSString * {__strong},std::string>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = a1;
  v3 = [v6 UTF8String];
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, v3, v4);
  }

  a2[v5] = 0;
}

{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(a2, [v3 UTF8String]);
}

{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(a2, [v3 UTF8String]);
}

{
  v6 = a1;
  v3 = [v6 UTF8String];
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, v3, v4);
  }

  a2[v5] = 0;
}

{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(a2, [v3 UTF8String]);
}

{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(a2, [v3 UTF8String]);
}

{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(a2, [v3 UTF8String]);
}

uint64_t CLMicroLocationLoiManager::resetLoiVariables(uint64_t this)
{
  if (*(this + 415) < 0)
  {
    *(this + 400) = 7;
    v1 = *(this + 392);
  }

  else
  {
    v1 = (this + 392);
    *(this + 415) = 7;
  }

  strcpy(v1, "unknown");
  *(this + 416) = 0u;
  *(this + 432) = 0u;
  *(this + 472) = *(this + 464);
  if (*(this + 508) == 1)
  {
    *(this + 508) = 0;
  }

  *(this + 512) = 0;
  *(this + 514) = 0;
  return this;
}

std::mersenne_twister_engine<unsigned long long, 64, 312, 156, 31, 13043109905998158313, 29, 6148914691236517205, 17, 8202884508482404352, 37, 18444473444759240704, 43, 6364136223846793005>::result_type std::uniform_int_distribution<unsigned long long>::operator()<std::mersenne_twister_engine<unsigned long long,64ul,312ul,156ul,31ul,13043109905998158313ull,29ul,6148914691236517205ull,17ul,8202884508482404352ull,37ul,18444473444759240704ull,43ul,6364136223846793005ull>>(int a1, std::mersenne_twister_engine<unsigned long long, 64, 312, 156, 31, 13043109905998158313, 29, 6148914691236517205, 17, 8202884508482404352, 37, 18444473444759240704, 43, 6364136223846793005> *this, void *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return std::mersenne_twister_engine<unsigned long long,64ul,312ul,156ul,31ul,13043109905998158313ull,29ul,6148914691236517205ull,17ul,8202884508482404352ull,37ul,18444473444759240704ull,43ul,6364136223846793005ull>::operator()(this);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 63;
      if (((v6 << v8) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = 64;
      }

      v10 = v9 - v8;
      v11 = v10 >> 6;
      if ((v10 & 0x3F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFFFFFFFFFFLL >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = std::mersenne_twister_engine<unsigned long long,64ul,312ul,156ul,31ul,13043109905998158313ull,29ul,6148914691236517205ull,17ul,8202884508482404352ull,37ul,18444473444759240704ull,43ul,6364136223846793005ull>::operator()(this) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

std::mersenne_twister_engine<unsigned long long, 64, 312, 156, 31, 13043109905998158313, 29, 6148914691236517205, 17, 8202884508482404352, 37, 18444473444759240704, 43, 6364136223846793005>::result_type std::mersenne_twister_engine<unsigned long long,64ul,312ul,156ul,31ul,13043109905998158313ull,29ul,6148914691236517205ull,17ul,8202884508482404352ull,37ul,18444473444759240704ull,43ul,6364136223846793005ull>::operator()(std::mersenne_twister_engine<unsigned long long, 64, 312, 156, 31, 13043109905998158313, 29, 6148914691236517205, 17, 8202884508482404352, 37, 18444473444759240704, 43, 6364136223846793005> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x138;
  v3 = 0xB5026F5AA96619E9;
  if ((this->__x_[v2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ this->__x_[(i + 156) % 0x138] ^ ((this->__x_[v2] & 0x7FFFFFFE | this->__x_[i] & 0xFFFFFFFF80000000) >> 1);
  this->__x_[i] = v4;
  this->__i_ = v2;
  v5 = (((v4 >> 29) & 0x5555555555555555 ^ v4) << 17) & 0x71D67FFFEDA60000 ^ (v4 >> 29) & 0x5555555555555555 ^ v4;
  return (v5 << 37) & 0xFFF7EEE000000000 ^ v5 ^ (((v5 << 37) & 0xFFF7EEE000000000 ^ v5) >> 43);
}

void ULTriggerQueue::dequeueTopPriorityProfilesBatch(void)::$_0::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, int a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  if (*a3 == *a4)
  {
    LODWORD(v8) = 0;
    v9 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  else
  {
    v8 = 0;
    v32 = 0;
    v31 = *a1;
    do
    {
      v13 = (a2 + 40 * v7);
      *a3 = (v7 + 1) % 0xB;
      if (*(v13 + 7) == a5 && (ULTriggerQueue::isTriggerSuspended(v31, v13) & 1) == 0)
      {
        v17 = *(a1 + 8);
        v18 = *(v17 + 440);
        if (v18 <= 0xA)
        {
          *(v17 + 440) = v18 + 1;
          v19 = v17 + 40 * v18;
          v20 = *v13;
          v21 = v13[1];
          *(v19 + 32) = *(v13 + 8);
          *v19 = v20;
          *(v19 + 16) = v21;
        }

        ++v32;
      }

      else
      {
        v14 = *(a1 + 16) + 40 * v8++;
        v15 = *v13;
        v16 = v13[1];
        *(v14 + 32) = *(v13 + 8);
        *v14 = v15;
        *(v14 + 16) = v16;
        ++**(a1 + 24);
      }

      v7 = *a3;
    }

    while (*a3 != *a4);
    *a3 = 0;
    *a4 = 0;
    if (v8)
    {
      v22 = 0;
      v23 = 0;
      v24 = v8;
      do
      {
        v25 = (*(a1 + 16) + v22);
        v26 = a2 + 40 * v23;
        v27 = *v25;
        v28 = v25[1];
        *(v26 + 32) = *(v25 + 8);
        *v26 = v27;
        *(v26 + 16) = v28;
        v23 = (*a4 + 1) % 0xB;
        *a4 = v23;
        v22 += 40;
        --v24;
      }

      while (v24);
    }

    v9 = v32;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerQueue::logQueueFullError();
  }

  v29 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v34 = 0;
    v35 = 2082;
    v36 = "";
    v37 = 2082;
    v38 = "operator()";
    v39 = 1026;
    v40 = v9;
    v41 = 1026;
    v42 = v8;
    _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:sub-queue processing completed, method:%{public, location:escape_only}s, dequeuedCount:%{public}d, invalidCount:%{public}d}", buf, 0x28u);
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t virtual thunk toULTriggerEngine::isScanningProfileAvailable(ULTriggerEngine *this, unsigned int a2)
{
  if (a2 >= 0x14)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  return (*(this + *(*this - 40) + 88) >> a2) & 1;
}

uint64_t ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent(uint64_t result, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = (result + 8);
  if (*(result + 8) >= 3uLL)
  {
    ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent((result + 8));
  }

  if (*a2 >= 6)
  {
    ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent(a2);
  }

  v4 = result;
  if (*(result + 760) != 1)
  {
LABEL_6:
    *(v4 + 760) = 1;
    v5 = v4[1];
    v6 = &v4[18 * v5 + 3 * *a2];
    if (v6[4] & 1 | v6[3])
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngine::setDependencies();
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 68289282;
        *&v19[8] = 2082;
        *&v19[10] = "";
        v20 = 2082;
        v21 = "handleEvent";
        _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULStateMachine: handling evennt, method:%{public, location:escape_only}s}", v19, 0x1Cu);
      }

      (*(*v4 + 32))(v4, *a2, 0);
      v8 = v6[3];
      v9 = v6[4];
      v10 = (v4 + (v9 >> 1));
      if (v9)
      {
        v8 = *(*v10 + v8);
      }

      result = v8(v10, a2);
      v5 = *v2;
    }

    if (v6[2] != v5)
    {
      (*(*v4 + 40))(v4);
      (*(*v4 + 24))(v4, v4[1]);
      v4[1] = v6[2];
      result = (*(*v4 + 16))(v4);
    }

    *(v4 + 760) = 0;
    v13 = v4[94];
    if (v13)
    {
      v14 = v4[92];
      v15 = &v4[2 * v14];
      v16 = v15[72];
      v17 = v15[73];
      v15[73] = 0;
      v4[92] = (v14 + 1) % 0xAuLL;
      v4[94] = v13 - 1;
      *v19 = v16;
      *&v19[8] = v17;
      v19[16] = 1;
      result = ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent(v4, v19);
      if (v19[16])
      {
        result = *&v19[8];
        *&v19[8] = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }
    }

    goto LABEL_32;
  }

  result = ULFSMEventQueue<ULTriggerEngineEvent,10ul>::enqueue(result + 576, a2);
  if (result)
  {
    if (v4[95])
    {
      goto LABEL_32;
    }

    goto LABEL_6;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *v19 = 138412290;
    *&v19[4] = &unk_286A71F58;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "Event queue has reached the maximum size: %@", v19, 0xCu);
  }

  v12 = 1;
  do
  {
    ULFSMEventQueue<ULTriggerEngineEvent,10ul>::operator[]((v4 + 72), v12 - 1, v19);
    if ((v19[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    result = (*(*v4 + 32))(v4, *v19, v12);
    if (v19[16] == 1)
    {
      result = *&v19[8];
      *&v19[8] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    v12 = (v12 + 1);
  }

  while (v12 != 11);
LABEL_32:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_258FF0DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent((v11 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::printEventType(uint64_t a1)
{
  v1 = *(a1 + 544);
  v2 = *(a1 + 552);
  v3 = (a1 + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void ULTriggerEngineFSM::handleNewTriggerInIdle(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = (*(*v3 + 16))(v3);
  v6 = *(a2 + 8);
  if (v5 == 675588685)
  {
    (*(**(a1 + 776) + 16))(*(a1 + 776), v6 + 8);
    v7 = (*(**(a1 + 768) + 32))(*(a1 + 768));
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "handleNewTriggerInIdle";
      v22 = 1026;
      LODWORD(v23) = v7;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:handleNewTriggerInIdle, method:%{public, location:escape_only}s, hasValidTriggers:%{public}hhd}", &v16, 0x22u);
    }

    if (v7)
    {
      (*(**(a1 + 776) + 80))(*(a1 + 776));
    }

    goto LABEL_27;
  }

  if (v6)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      v16 = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "handleNewTriggerInIdle";
      v22 = 2050;
      v23 = v10;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:handleNewTriggerInIdle, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", &v16, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v11))
    {
      v12 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      v16 = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "handleNewTriggerInIdle";
      v22 = 2050;
      v23 = v12;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleNewTriggerInIdle, unexpected event data", "{msg%{public}.0s:handleNewTriggerInIdle, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", &v16, 0x26u);
    }
  }

  else
  {
LABEL_19:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v16 = 68289282;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "handleNewTriggerInIdle";
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:handleNewTriggerInIdle, event data was not specified, method:%{public, location:escape_only}s}", &v16, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v16 = 68289282;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "handleNewTriggerInIdle";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleNewTriggerInIdle, event data was not specified", "{msg%{public}.0s:handleNewTriggerInIdle, event data was not specified, method:%{public, location:escape_only}s}", &v16, 0x1Cu);
    }
  }

LABEL_27:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t ULScanningTrigger::description@<X0>(ULScanningTrigger *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "ULScanningTrigger { ", 20);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "id: ", 4);
  v6 = MEMORY[0x259CA1DF0](v5, *this);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "type: ", 6);
  std::string::basic_string[abi:ne200100]<0>(v26, off_2798D4C48[*(this + 4)]);
  if ((v27 & 0x80u) == 0)
  {
    v9 = v26;
  }

  else
  {
    v9 = v26[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v10 = v27;
  }

  else
  {
    v10 = v26[1];
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "timestamp: ", 11);
  v14 = MEMORY[0x259CA1D90](v13, *(this + 2));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "schedulingSettings: ", 20);
  ULScanTriggerSettings::description((this + 24), __p);
  if ((v25 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v18 = v25;
  }

  else
  {
    v18 = __p[1];
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " }", 2);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if ((v35 & 0x10) != 0)
  {
    v21 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v21 = v31;
    }

    locale = v30[4].__locale_;
  }

  else
  {
    if ((v35 & 8) == 0)
    {
      v20 = 0;
      a2[23] = 0;
      goto LABEL_30;
    }

    locale = v30[1].__locale_;
    v21 = v30[3].__locale_;
  }

  v20 = v21 - locale;
  if ((v21 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  a2[23] = v20;
  if (v20)
  {
    memmove(a2, locale, v20);
  }

LABEL_30:
  a2[v20] = 0;
  v28 = *MEMORY[0x277D82828];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x277D82828] + 24);
  v29 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32);
  }

  v29 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  return MEMORY[0x259CA1EE0](&v36);
}

void sub_258FF1634(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15, MEMORY[0x277D82828]);
  MEMORY[0x259CA1EE0](va);
  _Unwind_Resume(a1);
}

void *ULTriggerQueue::removeExpiredTriggers(void *this)
{
  v1 = this;
  v2 = this[111];
  for (i = this[110]; i != v2; v1[110] = i)
  {
    this = std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::operator()[abi:ne200100]((v1 + 114));
    if (v4 - *&v1[5 * i + 2] <= 28800.0)
    {
      break;
    }

    i = (v1[110] + 1) % 0xBuLL;
  }

  v5 = v1[113];
  for (j = v1[112]; j != v5; v1[112] = j)
  {
    this = std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::operator()[abi:ne200100]((v1 + 114));
    if (v7 - *&v1[5 * j + 57] <= 28800.0)
    {
      break;
    }

    j = (v1[112] + 1) % 0xBuLL;
  }

  return this;
}

uint64_t ULTriggerQueue::isTriggerSuspended(ULTriggerQueue *this, const ULScanningTrigger *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = std::function<BOOL ()(int)>::operator()(this + 944, *(a2 + 6));
  if (v3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerQueue::logQueueFullError();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a2 + 6);
      v8[0] = 68289538;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "isTriggerSuspended";
      v13 = 1026;
      v14 = v5;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:trigger is suspended, method:%{public, location:escape_only}s, scheduling profile index:%{public}d}", v8, 0x22u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ULTriggerQueue::hasTopPriorityActiveTriggers(ULTriggerQueue *this)
{
  v2 = *(this + 110);
  v3 = *(this + 111);
  if (v2 == v3)
  {
LABEL_5:
    v4 = *(this + 112);
    v5 = *(this + 113);
    if (v4 == v5)
    {
      return 0;
    }

    v6 = this + 440;
    while ((ULTriggerQueue::isTriggerSuspended(this, &v6[40 * v4]) & 1) != 0 || (std::function<BOOL ()(int)>::operator()(this + 976, *&v6[40 * v4 + 28]) & 1) == 0)
    {
      v4 = (v4 + 1) % 0xB;
      if (v4 == v5)
      {
        return 0;
      }
    }
  }

  else
  {
    while ((ULTriggerQueue::isTriggerSuspended(this, (this + 40 * v2)) & 1) != 0 || (std::function<BOOL ()(int)>::operator()(this + 976, *(this + 10 * v2 + 7)) & 1) == 0)
    {
      v2 = (v2 + 1) % 0xB;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  return 1;
}

uint64_t ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::enterState(uint64_t result, unint64_t a2)
{
  if (a2 >= 3)
  {
    ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::enterState();
  }

  v3 = result + 16 * a2;
  v4 = *(v3 + 448);
  v5 = *(v3 + 456);
  if (v5 & 1 | v4)
  {
    v6 = (result + (v5 >> 1));
    if (v5)
    {
      v7 = *(*v6 + v4);

      return v7();
    }

    else
    {

      return (v4)(v6);
    }
  }

  return result;
}

uint64_t ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::exitState(uint64_t result, unint64_t a2)
{
  if (a2 >= 3)
  {
    v8 = ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::exitState();
  }

  else
  {
    v3 = result + 16 * a2;
    v4 = *(v3 + 496);
    v5 = *(v3 + 504);
    if (v5 & 1 | v4)
    {
      v6 = (result + (v5 >> 1));
      if (v5)
      {
        v7 = *(*v6 + v4);

        return v7();
      }

      else
      {

        return (v4)(v6);
      }
    }
  }

  return result;
}

void non-virtual thunk toULTriggerEngine::fetchAndDequeueTopPriorityActiveTriggers(ULTriggerEngine *this@<X0>, uint64_t a2@<X8>)
{
  ULTriggerQueue::removeExpiredTriggers(this + 115);

  ULTriggerQueue::dequeueTopPriorityProfilesBatch((this + 920), a2);
}

void ULTriggerEngineFSM::processSameProfileTopPriorityTriggers(ULTriggerEngineFSM *this)
{
  v22 = *MEMORY[0x277D85DE8];
  (*(**(this + 97) + 64))(v18);
  if (v19)
  {
    v2 = 0;
    v3 = (this + 784);
    v4 = v18;
    while (1)
    {
      v6 = *(v4 + 6);
      v5 = *(v4 + 7);
      if (v6 != -1)
      {
        v7 = *(this + 96) + *(**(this + 96) - 48);
        if ((*(*v7 + 16))(v7, *(v4 + 6)))
        {
          break;
        }
      }

      v11 = *(this + 96) + *(**(this + 96) - 48);
      if (((*(*v11 + 24))(v11, v5) & 1) == 0)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULTriggerEngineFSM::handleNewTriggerInIdle();
        }

        v12 = logObject_MicroLocation_Default;
        if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        *buf = 68289538;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "processSameProfileTopPriorityTriggers";
        *&buf[28] = 1026;
        *&buf[30] = v5;
        v9 = v12;
        v10 = "{msg%{public}.0s:trigger's scanning profile is unavailable, skip, method:%{public, location:escape_only}s, index:%{public}d}";
LABEL_16:
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0x22u);
        goto LABEL_22;
      }

      if (v2)
      {
        (*(**(this + 97) + 56))(*(this + 97), v4);
      }

      else
      {
        v21 = 0;
        memset(buf, 0, sizeof(buf));
        ULScanningTrigger::ULScanningTrigger(buf);
        v21 = 0xFFEFFFFFFFFFFFFFLL;
        v13 = *(this + 840);
        v14 = *&buf[16];
        *v3 = *buf;
        *(this + 50) = v14;
        *(this + 51) = *&buf[32];
        *(this + 104) = 0xFFEFFFFFFFFFFFFFLL;
        if ((v13 & 1) == 0)
        {
          *(this + 840) = 1;
        }

        v15 = *(v4 + 1);
        *v3 = *v4;
        *(this + 50) = v15;
        *(this + 204) = *(v4 + 8);
        std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::operator()[abi:ne200100](this + 856);
        *(this + 104) = v16;
        if (((*(**(this + 97) + 32))(*(this + 97), v4) & 1) == 0)
        {
          v2 = 0;
          goto LABEL_22;
        }
      }

      v2 = 1;
LABEL_22:
      v4 += 5;
      if (v4 == &v18[5 * v19])
      {
        goto LABEL_23;
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v8 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 68289538;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "processSameProfileTopPriorityTriggers";
    *&buf[28] = 1026;
    *&buf[30] = v6;
    v9 = v8;
    v10 = "{msg%{public}.0s:trigger's scheduling profile is suspended, skip, method:%{public, location:escape_only}s, index:%{public}d}";
    goto LABEL_16;
  }

LABEL_23:
  v17 = *MEMORY[0x277D85DE8];
}

void ULTriggerQueue::dequeueTopPriorityProfilesBatch(ULTriggerQueue *this@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v28 = *MEMORY[0x277D85DE8];
  do
  {
    ULScanningTrigger::ULScanningTrigger((a2 + v4));
    v4 += 40;
  }

  while (v4 != 440);
  v5 = 0;
  *(a2 + 440) = 0;
  v18 = 0;
  do
  {
    ULScanningTrigger::ULScanningTrigger(&v17[v5]);
    v5 += 40;
  }

  while (v5 != 400);
  v16[0] = this;
  v16[1] = a2;
  v16[2] = v17;
  v16[3] = &v18;
  v6 = *(this + 110);
  v7 = *(this + 111);
  if (v6 == v7)
  {
    goto LABEL_11;
  }

  while (ULTriggerQueue::isTriggerSuspended(this, (this + 40 * v6)))
  {
    v6 = (v6 + 1) % 0xB;
    if (v6 == v7)
    {
      goto LABEL_11;
    }
  }

  v8 = *(this + 10 * v6 + 7);
  if (v8 == -1)
  {
LABEL_11:
    v9 = *(this + 112);
    v10 = *(this + 113);
    if (v9 != v10)
    {
      v11 = this + 440;
      while (ULTriggerQueue::isTriggerSuspended(this, &v11[40 * v9]))
      {
        v9 = (v9 + 1) % 0xB;
        if (v9 == v10)
        {
          goto LABEL_18;
        }
      }

      v12 = *&v11[40 * v9 + 28];
      if (v12 != -1)
      {
        ULTriggerQueue::dequeueTopPriorityProfilesBatch(void)::$_0::operator()(v16, this + 440, this + 112, this + 113, v12);
      }
    }
  }

  else
  {
    ULTriggerQueue::dequeueTopPriorityProfilesBatch(void)::$_0::operator()(v16, this, this + 110, this + 111, v8);
  }

LABEL_18:
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerQueue::logQueueFullError();
  }

  v13 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a2 + 440);
    buf = 68289794;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "dequeueTopPriorityProfilesBatch";
    v24 = 1026;
    v25 = v14;
    v26 = 1026;
    v27 = v18;
    _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Batch dequeue completed, method:%{public, location:escape_only}s, totalValidTriggers:%{public}d, totalSuspendedOrMismatchedTriggers:%{public}d}", &buf, 0x28u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void ULScanningTrigger::ULScanningTrigger(ULScanningTrigger *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  ULScanTriggerSettings::ULScanTriggerSettings((this + 24));
}

uint64_t ULScanService::requestRecordingInternal(uint64_t a1)
{
  if (*(a1 + 296) == 5)
  {
    v7 = v1;
    v8 = v2;
    if (onceToken_MicroLocation_Default != -1)
    {
      ULScanService::setTriggeringConfiguration();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_ERROR, "Failed to request recording - there is no recording scanning profile", v6, 2u);
    }

    return 0;
  }

  else
  {
    v5 = *(**(a1 + 40) + 88);

    return v5();
  }
}

BOOL ULTriggerEngine::requestTrigger(void *a1, unsigned int a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 68289538;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "requestTrigger";
    v17 = 1026;
    v18 = a2;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:request trigger, method:%{public, location:escape_only}s, profile index:%{public}d}", &v11, 0x22u);
  }

  if (a2 >= 0x14)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  v7 = a1[11] & (1 << a2);
  if (v7)
  {
    ULScanTriggerSettings::ULScanTriggerSettings(&v11, -1, a2, a2 != 0);
    (*(*a1 + 168))(a1, a3, &v11);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::requestTrigger();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "requestTrigger";
      v17 = 1026;
      v18 = a2;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:request trigger, requested scanning profile not available, method:%{public, location:escape_only}s, profile index:%{public}d}", &v11, 0x22u);
    }
  }

  result = v7 != 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULScanTriggerSettings::ULScanTriggerSettings(uint64_t result, int a2, int a3, char a4)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  return result;
}

void ULTriggerEngine::createAndHandleScanningTrigger(uint64_t a1, int a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    ULScanTriggerSettings::description(a3, __p);
    v6 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v22 = 2082;
    v23 = "createAndHandleScanningTrigger";
    v24 = 1026;
    v25[0] = a2;
    LOWORD(v25[1]) = 2082;
    *(&v25[1] + 2) = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:create and handle trigger, method:%{public, location:escape_only}s, trigger type:%{public}d, scheduling settings:%{public, location:escape_only}s}", buf, 0x2Cu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  memset(__p, 0, 24);
  __p[4] = 0;
  LOWORD(__p[1]) = 3;
  __p[3] = -1;
  v8 = ULRandomGenerator::instance(v7);
  v9 = ULRandomGenerator::generate(v8);
  ULSqliteDatabase::ULSqliteDatabase(__p, v9);
  v11 = ULScanningTriggerBuilder::setType(v10, a2);
  v12 = cl::chrono::CFAbsoluteTimeClock::now();
  v13 = ULScanningTriggerBuilder::setTimestamp(v11, v12);
  v14 = ULScanningTriggerBuilder::setSchedulingIndex(v13, *a3);
  v15 = ULScanningTriggerBuilder::setScanningIndex(v14, *(a3 + 4));
  v16 = ULScanningTriggerBuilder::setPriority(v15, *(a3 + 8));
  ULScanningTriggerBuilder::build(v16, buf);
  v17 = *(a3 + 4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (onceToken_MicroLocationQE_Default != -1)
      {
        ULTriggerEngine::suspendSchedulingProfile();
      }

      v18 = logObject_MicroLocationQE_Default;
      if (os_log_type_enabled(logObject_MicroLocationQE_Default, OS_LOG_TYPE_DEFAULT))
      {
        __p[0] = 68289026;
        LOWORD(__p[1]) = 2082;
        *(&__p[1] + 2) = "";
        v19 = "{msg%{public}.0s:Localizing started}";
LABEL_19:
        _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, v19, __p, 0x12u);
      }
    }
  }

  else
  {
    if (onceToken_MicroLocationQE_Default != -1)
    {
      ULTriggerEngine::suspendSchedulingProfile();
    }

    v18 = logObject_MicroLocationQE_Default;
    if (os_log_type_enabled(logObject_MicroLocationQE_Default, OS_LOG_TYPE_DEFAULT))
    {
      __p[0] = 68289026;
      LOWORD(__p[1]) = 2082;
      *(&__p[1] + 2) = "";
      v19 = "{msg%{public}.0s:Recording started}";
      goto LABEL_19;
    }
  }

  __p[0] = 0;
  operator new();
}

uint64_t ULScanTriggerSettings::description@<X0>(ULScanTriggerSettings *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "ULScanTriggerSettings { ", 24);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "schedulingProfileIndex: ", 24);
  v6 = MEMORY[0x259CA1DB0](v5, *this);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "scanningProfileIndex: ", 22);
  v9 = MEMORY[0x259CA1DB0](v8, *(this + 1));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "priority: ", 10);
  if (*(this + 8))
  {
    v12 = "High";
  }

  else
  {
    v12 = "Low";
  }

  if (*(this + 8))
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " }", 2);
  if ((v26 & 0x10) != 0)
  {
    v16 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v16 = v22;
    }

    locale = v21[4].__locale_;
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v15 = 0;
      a2[23] = 0;
      goto LABEL_20;
    }

    locale = v21[1].__locale_;
    v16 = v21[3].__locale_;
  }

  v15 = v16 - locale;
  if ((v16 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a2[23] = v15;
  if (v15)
  {
    memmove(a2, locale, v15);
  }

LABEL_20:
  a2[v15] = 0;
  v19 = *MEMORY[0x277D82828];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x277D82828] + 24);
  v20 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x259CA1EE0](&v27);
}

void sub_258FF2A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x259CA1EE0](v2 + 112);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_258FF2B98(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x259CA1EE0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259CA1E90](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_258FF2C54(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259CA1D40](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259CA1D50](v13);
  return a1;
}

void sub_258FF2EC4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259CA1D50](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x258FF2EA4);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_258FF30F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *ULRandomGenerator::instance(ULRandomGenerator *this)
{
  {
    ULRandomGenerator::ULRandomGenerator(&ULRandomGenerator::instance(void)::instance);
  }

  return &ULRandomGenerator::instance(void)::instance;
}

uint64_t ULScanningTriggerBuilder::build@<X0>(ULScanningTriggerBuilder *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v4 = *(this + 4);
  v5 = *(this + 2);
  result = ULScanTriggerSettings::ULScanTriggerSettings(a2 + 24, *(this + 6), *(this + 7), *(this + 32));
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

void ULTriggerEngineFSM::printEvent(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULTriggerEngineFSM::handleNewTriggerInIdle();
        }

        v4 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 68289538;
          v8 = 0;
          v9 = 2082;
          v10 = "";
          v11 = 2082;
          v12 = "printEvent";
          v13 = 1026;
          v14 = a3;
          v5 = "{msg%{public}.0s:ULTriggerEngineFSM: Event type is NewTrigger , method:%{public, location:escape_only}s, event number:%{public}d}";
          goto LABEL_36;
        }

        goto LABEL_37;
      case 1:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULTriggerEngineFSM::handleNewTriggerInIdle();
        }

        v4 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 68289538;
          v8 = 0;
          v9 = 2082;
          v10 = "";
          v11 = 2082;
          v12 = "printEvent";
          v13 = 1026;
          v14 = a3;
          v5 = "{msg%{public}.0s:ULTriggerEngineFSM: Event type is PendingTriggersUnsuspended , method:%{public, location:escape_only}s, event number:%{public}d}";
          goto LABEL_36;
        }

        goto LABEL_37;
      case 2:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULTriggerEngineFSM::handleNewTriggerInIdle();
        }

        v4 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 68289538;
          v8 = 0;
          v9 = 2082;
          v10 = "";
          v11 = 2082;
          v12 = "printEvent";
          v13 = 1026;
          v14 = a3;
          v5 = "{msg%{public}.0s:ULTriggerEngineFSM: Event type is ScanCompleted , method:%{public, location:escape_only}s, event number:%{public}d}";
LABEL_36:
          _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, v5, &v7, 0x22u);
          goto LABEL_37;
        }

        goto LABEL_37;
    }

LABEL_24:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 68289538;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "printEvent";
      v13 = 1026;
      v14 = a3;
      v5 = "{msg%{public}.0s:ULTriggerEngineFSM: Event type is not valid , method:%{public, location:escape_only}s, event number:%{public}d}";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (a2 == 3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 68289538;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "printEvent";
      v13 = 1026;
      v14 = a3;
      v5 = "{msg%{public}.0s:ULTriggerEngineFSM: Event type is ScanAborted , method:%{public, location:escape_only}s, event number:%{public}d}";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (a2 == 4)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 68289538;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "printEvent";
      v13 = 1026;
      v14 = a3;
      v5 = "{msg%{public}.0s:ULTriggerEngineFSM: Event type is ValidTriggerAvailable , method:%{public, location:escape_only}s, event number:%{public}d}";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (a2 != 5)
  {
    goto LABEL_24;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngineFSM::handleNewTriggerInIdle();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 68289538;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "printEvent";
    v13 = 1026;
    v14 = a3;
    v5 = "{msg%{public}.0s:ULTriggerEngineFSM: Event type is ThrottleCompleted , method:%{public, location:escape_only}s, event number:%{public}d}";
    goto LABEL_36;
  }

LABEL_37:
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t ULTriggerEngine::enqueueScanningTrigger(ULTriggerEngine *this, const ULScanningTrigger *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    ULScanningTrigger::description(a2, __p);
    if (v9 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 68289538;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "enqueueScanningTrigger";
    v16 = 2082;
    v17 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:enqueue a scan trigger, method:%{public, location:escape_only}s, trigger:%{public, location:escape_only}s}", buf, 0x26u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = ULTriggerQueue::enqueueScanningTrigger((this + 944), a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULTriggerQueue::enqueueScanningTrigger(ULTriggerQueue *this, const ULScanningTrigger *a2)
{
  if (*(a2 + 32) == 1)
  {
    v2 = *(this + 111);
    if ((v2 + 1) % 0xBuLL == *(this + 110))
    {
      v3 = 1;
LABEL_6:
      ULTriggerQueue::logQueueFullError(this, v3);
      return 0;
    }

    v6 = this + 40 * v2;
    v7 = *a2;
    v8 = *(a2 + 1);
    *(v6 + 8) = *(a2 + 8);
    *v6 = v7;
    *(v6 + 1) = v8;
    *(this + 111) = (*(this + 111) + 1) % 0xBuLL;
  }

  else
  {
    v4 = *(this + 113);
    if ((v4 + 1) % 0xBuLL == *(this + 112))
    {
      v3 = 0;
      goto LABEL_6;
    }

    v9 = this + 40 * v4;
    v10 = *a2;
    v11 = *(a2 + 1);
    *(v9 + 118) = *(a2 + 8);
    *(v9 + 440) = v10;
    *(v9 + 456) = v11;
    *(this + 113) = (*(this + 113) + 1) % 0xBuLL;
  }

  return 1;
}

uint64_t std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t non-virtual thunk toULTriggerEngine::hasTopPriorityActiveTriggers(ULTriggerEngine *this)
{
  ULTriggerQueue::removeExpiredTriggers(this + 116);

  return ULTriggerQueue::hasTopPriorityActiveTriggers((this + 928));
}

uint64_t std::function<BOOL ()(int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t ULSchedulingProfileManager::isProfileSuspended(ULSchedulingProfileManager *this, unsigned int a2)
{
  if (a2 == -1)
  {
    v2 = 0;
    return v2 & 1;
  }

  if (a2 < 0x14)
  {
    v2 = *(this + a2 + 824);
    return v2 & 1;
  }

  isProfileSuspended = ULSchedulingProfileManager::isProfileSuspended();
  return std::__function::__func<ULTriggerEngine::ULTriggerEngine(void)::$_1,std::allocator<ULTriggerEngine::ULTriggerEngine(void)::$_1>,BOOL ()(int)>::operator()(isProfileSuspended);
}

uint64_t std::__function::__func<ULTriggerEngine::ULTriggerEngine(void)::$_1,std::allocator<ULTriggerEngine::ULTriggerEngine(void)::$_1>,BOOL ()(int)>::operator()(uint64_t a1, _DWORD *a2)
{
  if (*a2 >= 0x14u)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  return (*(*(a1 + 8) + 88) >> *a2) & 1;
}

uint64_t ULTriggerEngine::handleAdditionalTriggers(ULTriggerEngine *this)
{
  v2 = 4;
  v3 = 0;
  ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent(this + 1952, &v2);
  result = v3;
  v3 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_258FF3A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    ULTriggerEngine::handleScanAborted(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL ULFSMEventQueue<ULTriggerEngineEvent,10ul>::enqueue(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 176);
  if (v2 >= 0xA)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "enqueue";
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Event queue overflow, can not enqueue event, method:%{public, location:escape_only}s}", &v14, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::requestTrigger();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "enqueue";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Event queue overflow, can not enqueue event", "{msg%{public}.0s:Event queue overflow, can not enqueue event, method:%{public, location:escape_only}s}", &v14, 0x1Cu);
    }
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    a2[1] = 0;
    v6 = *(a1 + 168);
    v7 = (a1 + 16 * v6);
    v8 = v7[1];
    *v7 = v4;
    v7[1] = v5;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v6 = *(a1 + 168);
      v9 = *(a1 + 176);
    }

    else
    {
      v9 = v2;
    }

    *(a1 + 168) = (v6 + 1) % 0xAuLL;
    *(a1 + 176) = v9 + 1;
  }

  result = v2 < 0xA;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void ULTriggerEngineFSM::printState(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngineFSM::handleNewTriggerInIdle();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v6 = "Invalid State";
    }

    else
    {
      v6 = off_2798D4DE8[a2];
    }

    v7 = v13;
    std::string::basic_string[abi:ne200100]<0>(v13, v6);
    if (v14 < 0)
    {
      v7 = v13[0];
    }

    if (a3 > 2)
    {
      v8 = "Invalid State";
    }

    else
    {
      v8 = off_2798D4DE8[a3];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v8);
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 68289794;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "printState";
    v21 = 2082;
    v22 = v7;
    v23 = 2082;
    v24 = v9;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULStateMachine:, method:%{public, location:escape_only}s, exiting from state:%{public, location:escape_only}s, entering to state :%{public, location:escape_only}s}", buf, 0x30u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_258FF3DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ULTriggerEngine::requestScan(ULTriggerEngine *this, const ULScanningTrigger *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    ULScanningTrigger::description(a2, __p);
    v5 = v10 >= 0 ? __p : __p[0];
    *buf = 68289538;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "requestScan";
    v17 = 2082;
    v18 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:request scan with trigger, method:%{public, location:escape_only}s, trigger:%{public, location:escape_only}s}", buf, 0x26u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = (*(**(this + 361) + 72))(*(this + 361), a2);
  *(this + 728) = v6;
  if (v6 == -1)
  {
    ULTriggerEngine::handleScanAborted(this);
  }

  result = v6 != -1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULSensorsManager::initiateScanRequestByTrigger(ULSensorsManager *this, const ULScanningTrigger *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!ULSensorsManager::isExecutionSchemeCompleted(this))
  {
    goto LABEL_9;
  }

  v4 = 8;
  do
  {
    v5 = *(this + v4);
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 24;
    }

    v4 += 8;
  }

  while (!v6);
  if (v5)
  {
LABEL_9:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsManager::ULSensorsManager();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = *a2;
      *buf = 68289282;
      *&buf[4] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2050;
      v25 = v8;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Error: new scan request while current scan still running, Trigger id::%{public}lu}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsManager::addScanningProfile();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v10 = *a2;
      *buf = 68289282;
      *&buf[4] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2050;
      v25 = v10;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error: new scan request while current scan still running", "{msg%{public}.0s:Error: new scan request while current scan still running, Trigger id::%{public}lu}", buf, 0x1Cu);
    }

    goto LABEL_17;
  }

  v13 = *a2;
  v14 = *(a2 + 1);
  *(this + 476) = *(a2 + 8);
  *(this + 118) = v14;
  *(this + 117) = v13;
  if (!ULSensorsManager::buildExecutionScheme(this, *(a2 + 7)))
  {
LABEL_17:
    result = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  ++*(this + 490);
  *(this + 246) = 0;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v15 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    ULScanningTrigger::description(a2, __p);
    v16 = v20 >= 0 ? __p : __p[0];
    v17 = *(this + 490);
    *buf = 68289794;
    *&buf[4] = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "initiateScanRequestByTrigger";
    v26 = 2082;
    v27 = v16;
    v28 = 1026;
    v29 = v17;
    _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Got scan request with trigger, method:%{public, location:escape_only}s, trigger:%{public, location:escape_only}s, scanRequestIndex:%{public}d}", buf, 0x2Cu);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 8 * *(this + 1944) + 1912))
  {
    v18 = *(this + 7);
    *buf = cl::chrono::CFAbsoluteTimeClock::now();
    (*(*v18 + 32))(v18, buf, a2);
    if ((ULSensorsManager::executeNextScanIteration(this) & 1) == 0)
    {
      ULSensorsManager::handleScanComplete(this, 1);
    }
  }

  result = *(this + 490);
LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ULSensorsManager::buildExecutionScheme(ULSensorsManager *this, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(this + 232);
  if (!v3)
  {
LABEL_5:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsManager::ULSensorsManager();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v7 = *(this + 475);
      v8 = *(this + 234);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v7;
      *&buf[28] = 2050;
      *&buf[30] = v8;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Scan Profile not valid, Scan Profile index:%{public}lu, Trigger id:%{public}lu}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsManager::addScanningProfile();
    }

    v9 = logObject_MicroLocation_Default;
    result = os_signpost_enabled(logObject_MicroLocation_Default);
    if (result)
    {
      v11 = *(this + 475);
      v12 = *(this + 234);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v11;
      *&buf[28] = 2050;
      *&buf[30] = v12;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Scan Profile not valid", "{msg%{public}.0s:Scan Profile not valid, Scan Profile index:%{public}lu, Trigger id:%{public}lu}", buf, 0x26u);
      result = 0;
    }

    goto LABEL_24;
  }

  v4 = (this + 1912);
  v5 = (this + 104);
  while (*(v5 - 2) != a2)
  {
    v5 = (v5 + 88);
    if (!--v3)
    {
      goto LABEL_5;
    }
  }

  v13 = v5[3];
  *&buf[32] = v5[2];
  v26 = v13;
  v27 = v5[4];
  v14 = v5[1];
  *buf = *v5;
  *&buf[16] = v14;
  v28 = 1;
  *(this + 1944) = 0;
  *(this + 1964) = 0;
  *(this + 239) = 6;
  *(this + 240) = 1;
  *(this + 1928) = 0u;
  v15 = 0;
  v16 = 0;
  *(this + 1964) = ULScanningProfile::numWiFiScan(buf);
  while (1)
  {
    if ((v28 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    ULScanningProfile::getTechnologyConfig(buf, v16, &v22);
    if ((v24 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v15 |= v23 << v16;
    if (v23 != 1)
    {
      goto LABEL_21;
    }

    v17 = this + 2008;
    if (!v16)
    {
LABEL_20:
      *v17 = 2;
      goto LABEL_21;
    }

    if (v16 != 1)
    {
      break;
    }

    v17 = this + 2032;
    if (*(this + 2032) != 5)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (++v16 == 3)
    {
      goto LABEL_22;
    }
  }

  if (*(this + 2056) != 5)
  {
    *(this + 2056) = 2;
  }

LABEL_22:
  v18 = vdupq_n_s64(v15);
  v19 = vandq_s8(*v4, v18);
  v20 = vandq_s8(*(this + 1928), v18);
  *v4 = v19;
  *(this + 1928) = v20;
  result = 1;
  if (!*(this + 1912))
  {
    *(this + 1944) = 1;
  }

LABEL_24:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ULSensorsManager::isExecutionSchemeCompleted(ULSensorsManager *this)
{
  v24 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 0;
    v4 = *(this + 1944);
    v13 = 8;
    strcpy(__p, "00000000");
    v5 = 7;
    do
    {
      if ((*(this + v4 + 239) >> v3))
      {
        if (v13 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        *(v6 + v5) = 49;
      }

      ++v3;
      --v5;
    }

    while (v3 != 8);
    v7 = v4 != 0;
    v8 = __p;
    if (v13 < 0)
    {
      v8 = __p[0];
    }

    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "isExecutionSchemeCompleted";
    v20 = 1026;
    v21 = v7;
    v22 = 2082;
    v23 = v8;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Check execution status, method:%{public, location:escape_only}s, executionIndex:%{public}hhd, current startegy::%{public, location:escape_only}s}", buf, 0x2Cu);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = *(this + 1944);
  result = v9 == 4 || *(this + 8 * v9 + 1912) == 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void ULScanningProfile::getTechnologyConfig(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2 > 2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v10 = 68289794;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "getTechnologyConfig";
      v16 = 2050;
      v17 = a2;
      v18 = 2050;
      v19 = 3;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:getTechnologyConfig, method:%{public, location:escape_only}s, get index:%{public}lu, number of scan configs:%{public}lu}", &v10, 0x30u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULScanningProfile::getTechnologyConfig();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v10 = 68289794;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "getTechnologyConfig";
      v16 = 2050;
      v17 = a2;
      v18 = 2050;
      v19 = 3;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "getTechnologyConfig", "{msg%{public}.0s:getTechnologyConfig, method:%{public, location:escape_only}s, get index:%{public}lu, number of scan configs:%{public}lu}", &v10, 0x30u);
    }

    v6 = 0;
    *a3 = 0;
  }

  else
  {
    v5 = a1 + 24 * a2;
    *a3 = *(v5 + 8);
    *(a3 + 16) = *(v5 + 24);
    v6 = 1;
  }

  *(a3 + 24) = v6;
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ULSensorsDataProvider::onScanStart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 68289282;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "onScanStart";
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Scan Start, method:%{public, location:escape_only}s}", v9, 0x1Cu);
  }

  result = (*(**(a1 + 56) + 40))(*(a1 + 56), a2, a3);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void ULSensorsDataHandler::onScanStartTrigger(uint64_t a1, double *a2, ULScanningTrigger *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    ULScanningTrigger::description(a3, __p);
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "onScanStartTrigger";
    v18 = 2050;
    v19 = v7;
    v20 = 2082;
    v21 = v8;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Scan Start, method:%{public, location:escape_only}s, timestamp::%{public}.5f, Trigger::%{public, location:escape_only}s}", buf, 0x30u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 304) = *(a3 + 7);
  ULSensorsDataHandler::State::setScanStartTS(a1 + 280, *a2);
  ULSensorsDataHandler::State::addTriggerToScan((a1 + 280), a3);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ULSensorsDataHandler::State::setScanStartTS(uint64_t result, double a2)
{
  if (*(result + 28) == 1)
  {
    ULSensorsDataHandler::State::setScanStartTS((result + 16));
  }

  *(result + 16) = a2;
  *(result + 28) = 1;
  return result;
}

void ULSensorsDataHandler::State::addTriggerToScan(ULSensorsDataHandler::State *this, const ULScanningTrigger *a2)
{
  v4 = *(this + 5);
  v5 = *(this + 6);
  if (v4 >= v5)
  {
    v9 = *(this + 4);
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v9) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x666666666666666)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULScanningTrigger>>(this + 32, v13);
    }

    v14 = 40 * v10;
    v15 = *a2;
    v16 = *(a2 + 1);
    *(v14 + 32) = *(a2 + 4);
    *v14 = v15;
    *(v14 + 16) = v16;
    v8 = 40 * v10 + 40;
    v17 = *(this + 4);
    v18 = *(this + 5) - v17;
    v19 = v14 - v18;
    memcpy((v14 - v18), v17, v18);
    v20 = *(this + 4);
    *(this + 4) = v19;
    *(this + 5) = v8;
    *(this + 6) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 1);
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(this + 5) = v8;
}

uint64_t ULSensorsManager::executeNextScanIteration(ULSensorsManager *this)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *(this + 232);
  if (v3)
  {
    v1 = *(this + *(this + 1944) + 239);
    v4 = (this + 104);
    while (*(v4 - 2) != *(this + 475))
    {
      v4 = (v4 + 88);
      if (!--v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = *(this + 475);
      v7 = *(this + 234);
      buf = 68290051;
      v44 = 2082;
      v45 = "";
      v46 = 2050;
      v47 = v6;
      v48 = 2050;
      v49 = v7;
      v50 = 2082;
      v51 = "assert";
      v52 = 2081;
      v53 = "scanProfile.has_value()";
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Scan Profile not valid, Scan Profile index:%{public}lu, Trigger id:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x3Au);
    }

    v8 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v8))
    {
      v9 = *(this + 475);
      v10 = *(this + 234);
      buf = 68290051;
      v44 = 2082;
      v45 = "";
      v46 = 2050;
      v47 = v9;
      v48 = 2050;
      v49 = v10;
      v50 = 2082;
      v51 = "assert";
      v52 = 2081;
      v53 = "scanProfile.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Scan Profile not valid", "{msg%{public}.0s:Scan Profile not valid, Scan Profile index:%{public}lu, Trigger id:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x3Au);
    }

    v11 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(this + 475);
      v13 = *(this + 234);
      buf = 68290051;
      v44 = 2082;
      v45 = "";
      v46 = 2050;
      v47 = v12;
      v48 = 2050;
      v49 = v13;
      v50 = 2082;
      v51 = "assert";
      v52 = 2081;
      v53 = "scanProfile.has_value()";
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Scan Profile not valid, Scan Profile index:%{public}lu, Trigger id:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x3Au);
    }

    abort_report_np();
    __break(1u);
  }

  v14 = v4[3];
  v41[2] = v4[2];
  v41[3] = v14;
  v41[4] = v4[4];
  v15 = v4[1];
  v41[0] = *v4;
  v41[1] = v15;
  v42 = 1;
  if (!v1 || (*(this + 1976) & 1) != 0)
  {
    goto LABEL_14;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v17 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 0;
    HIBYTE(v40) = 8;
    strcpy(__p, "00000000");
    v19 = 7;
    do
    {
      if ((v1 >> v18))
      {
        if (v40 >= 0.0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        *(v20 + v19) = 49;
      }

      ++v18;
      --v19;
    }

    while (v18 != 8);
    v21 = __p;
    if (v40 < 0.0)
    {
      v21 = __p[0];
    }

    buf = 68289538;
    v44 = 2082;
    v45 = "";
    v46 = 2082;
    v47 = "executeNextScanIteration";
    v48 = 2082;
    v49 = v21;
    _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Execute scan strategy, method:%{public, location:escape_only}s, execution bitmap:%{public, location:escape_only}s}", &buf, 0x26u);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p[0]);
    }
  }

  do
  {
    v22 = __clz(__rbit32(v1));
    if (v1)
    {
      v23 = v22;
    }

    else
    {
      v23 = -1;
    }

    v24 = v23;
    ULScanningProfile::getTechnologyConfig(v41, v23, __p);
    if (v23)
    {
      if (v23 == 2)
      {
        v27 = (*(**(this + 10) + 16))(*(this + 10), LODWORD(__p[1]));
        if (v27)
        {
          v28 = 3;
        }

        else
        {
          v28 = 6;
        }

        *(this + 2056) = v28;
        if (!v27)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v23 != 1)
        {
          goto LABEL_59;
        }

        if (*(this + 2032) == 5)
        {
          (*(**(this + 9) + 24))(*(this + 9));
          *(this + 2032) = 1;
        }

        v25 = (*(**(this + 9) + 16))(*(this + 9), LODWORD(__p[1]));
        v26 = v25 ? 3 : 6;
        *(this + 2032) = v26;
        if ((v25 & 1) == 0)
        {
LABEL_59:
          if (onceToken_MicroLocation_Default != -1)
          {
            ULSensorsManager::addScanningProfile();
          }

          v33 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = "Unknown";
            if (v24 <= 2)
            {
              v34 = off_2798D4D40[v24];
            }

            std::string::basic_string[abi:ne200100]<0>(v37, v34);
            v35 = v37;
            if (v38 < 0)
            {
              v35 = v37[0];
            }

            buf = 68289538;
            v44 = 2082;
            v45 = "";
            v46 = 2082;
            v47 = "executeNextScanIteration";
            v48 = 2082;
            v49 = v35;
            _os_log_impl(&dword_258FE9000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Got error when trying to initiate scan, method:%{public, location:escape_only}s, sensorType:%{public, location:escape_only}s}", &buf, 0x26u);
            if (v38 < 0)
            {
              operator delete(v37[0]);
            }
          }

          goto LABEL_69;
        }
      }
    }

    else
    {
      v31 = (*(**(this + 11) + 16))(*(this + 11), LODWORD(__p[1]));
      if (v31)
      {
        v32 = 3;
      }

      else
      {
        v32 = 6;
      }

      *(this + 2008) = v32;
      if ((v31 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsManager::addScanningProfile();
    }

    v29 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      std::string::basic_string[abi:ne200100]<0>(v37, off_2798D4D40[v24]);
      v30 = v37;
      if (v38 < 0)
      {
        v30 = v37[0];
      }

      buf = 68289538;
      v44 = 2082;
      v45 = "";
      v46 = 2082;
      v47 = "executeNextScanIteration";
      v48 = 2082;
      v49 = v30;
      _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Scan Request sent to sensor, method:%{public, location:escape_only}s, Technology::%{public, location:escape_only}s}", &buf, 0x26u);
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }
    }

    (*(*this + 104))(this, v24, v40);
LABEL_69:
    v1 = v1 & (v1 - 1) & 0xFELL;
  }

  while (v1);
  ++*(this + 1944);
  if (*(this + 2008) == 3 || *(this + 2056) == 3 || *(this + 2032) == 3)
  {
    result = 1;
    goto LABEL_74;
  }

LABEL_14:
  result = 0;
LABEL_74:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ULWiFiRssiBridge::initiateScanRequestByIndex(ULWiFiRssiBridge *this, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(this + 3));
  v4 = *(this + 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (this + 64);
  do
  {
    if (v4[8] >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * (v4[8] < a2)];
  }

  while (v4);
  if (v5 == (this + 64) || v5[8] > a2)
  {
LABEL_8:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiRssiBridge::createAndStartWifiInterface();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "WiFi profile with index: %@ doesn't exist.", &v12, 0xCu);
    }

    goto LABEL_13;
  }

  if (!*(this + 4))
  {
    ULWiFiRssiBridge::createAndStartWifiInterface(this);
  }

  dispatch_assert_queue_V2(*(this + 3));
  if ([*(this + 4) powerOn])
  {
    if (**(this + 5) != 1)
    {
      ULWiFiRssiBridge::startScanner();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiRssiBridge::createAndStartWifiInterface();
    }

    v10 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v12) = 0;
      v11 = "wifi-provider, Attempting wifi scan while scan in progress, returning";
LABEL_27:
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, v11, &v12, 2u);
LABEL_13:
      result = 0;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiRssiBridge::createAndStartWifiInterface();
    }

    v10 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v12) = 0;
      v11 = "wifi-provider, Start Scan While wifi is off, returning";
      goto LABEL_27;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_258FF585C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  _Unwind_Resume(a1);
}

id ULWiFiRssiBridge::wiFiScanParametersFromProfile(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  [v3 setNumberOfScans:*(a2 + 4)];
  [v3 setRestTime:*(a2 + 8)];
  [v3 setDwellTime:*(a2 + 16)];
  if (*(a2 + 24))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v3 setScanType:v4];
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::vector<ULWiFiScanChannel>::__init_with_size[abi:ne200100]<ULWiFiScanChannel*,ULWiFiScanChannel*>(&__p, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = __p;
  if (__p != v14)
  {
    do
    {
      v7 = MEMORY[0x277D02B00];
      v8 = *(v6 + 1);
      v9 = *v6;
      if ((v9 - 1) >= 3)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULWiFiRssiBridge::createAndStartWifiInterface();
        }

        v10 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "#wifi-bridge, Unknown WiFi band.", buf, 2u);
        }

        v9 = 0;
      }

      v11 = [v7 channelWithNumber:v8 band:v9 width:20];
      [v5 addObject:v11];

      v6 += 8;
    }

    while (v6 != v14);
  }

  [v3 setChannels:v5];

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  [v3 setBSSType:2];
  [v3 setPHYMode:1];
  [v3 setIncludeHiddenNetworks:1];
  [v3 setAcceptableCacheAge:0];
  [v3 setMaximumAge:0];
  [v3 setScanFlags:0];

  return v3;
}

void sub_258FF5AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<ULWiFiScanChannel>::__init_with_size[abi:ne200100]<ULWiFiScanChannel*,ULWiFiScanChannel*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULWiFiScanChannel>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_258FF5B48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiScanChannel>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ULWiFiScanChannel>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiScanChannel>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void ULSensorsManager::startScanTimer(uint64_t a1, unint64_t a2, double a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v7 = "Unknown";
    }

    else
    {
      v7 = off_2798D4D40[a2];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v7);
    if (v16 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 68289538;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = v8;
    v23 = 2050;
    v24 = a3;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULSensorsManager, startScanTimer, Technology::%{public, location:escape_only}s, Duration::%{public}.5f}", buf, 0x26u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___ZN16ULSensorsManager14startScanTimerE16ULTechnologyTyped_block_invoke;
  v14[3] = &__block_descriptor_48_e5_v8__0l;
  v14[4] = a1;
  v14[5] = a2;
  v10 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v9 repeats:MEMORY[0x277CBEC28] block:v14];
  v11 = a1 + 8 * a2;
  v12 = *(v11 + 8);
  *(v11 + 8) = v10;

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t ULThrottle::setLastStartedTime(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if ((*(result + 8) & 1) == 0)
  {
    *(result + 8) = 1;
  }

  *result = v2;
  return result;
}

void ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  dispatch_assert_queue_V2(*(a1 + 32));
  v5 = [v3 objectForKey:*(a1 + 40)];

  if (v5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationMotionBridge::getFenceRadius();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received status report for active fence, Status report:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }

    CLMicroLocationMotionBridge::stopAllStatusTimersAndStartFenceStatusTimer(v4);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationMotionBridge::getFenceRadius();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Did not receive status report for active fence, Status report:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v3;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Did not receive status report for active fence", "{msg%{public}.0s:Did not receive status report for active fence, Status report:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationMotionBridge::stopAllStatusTimersAndStartFenceStatusTimer(id *this)
{
  v20 = *MEMORY[0x277D85DE8];
  CLMicroLocationMotionBridge::stopAllStatusTimers(this);
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxTimeAllowedWithoutFenceStatusReport"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 doubleValue];
  }

  else
  {
    [&unk_286A71FB8 doubleValue];
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2050;
    v19 = v7;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stopAllStatusTimersAndStartFenceStatusTimer: setting fence status timer to fire in the future, Delay to next fire:%{public}f}", buf, 0x1Cu);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___ZN27CLMicroLocationMotionBridge43stopAllStatusTimersAndStartFenceStatusTimerEv_block_invoke;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = this;
  v10 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v9 repeats:MEMORY[0x277CBEC28] block:v13];
  v11 = this[3];
  this[3] = v10;

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t CLMicroLocationMotionBridge::stopAllStatusTimers(id *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "stopAllStatusTimers", v4, 2u);
  }

  [this[3] invalidate];
  return [this[4] invalidate];
}

void CLMicroLocationLogic::onKeybagUnlocked(CLMicroLocationLogic *this)
{
  (*(**(this + 7) + 40))(*(this + 7));

  CLMicroLocationLogic::migrateFromBackupIfNecessary(this);
}

void CLMicroLocationLogic::migrateFromBackupIfNecessary(CLMicroLocationLogic *this)
{
  if (*(this + 41) == 1 && (*(**(this + 7) + 64))(*(this + 7)) && (*(*this + 128))(this) && (*(**(this + 7) + 112))(*(this + 7), 0) == 2)
  {
    v2 = [[ULDataMigrator alloc] initWithDbStore:*(this + 6) andDbManagement:*(this + 7)];
    [(ULDataMigrator *)v2 migrateMiloData];
    (*(**(this + 7) + 112))(*(this + 7), 1);
    (*(**(this + 7) + 128))(*(this + 7));
  }
}

void CLMicroLocationLogic::setLockScreenState(CLMicroLocationLogic *this, int a2)
{
  v4 = +[ULEventLog shared];
  v5 = "No";
  if (a2)
  {
    v5 = "Yes";
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Screen State Event isOnLockScreen: %s", v5];
  [v4 log:v6];

  if (*(this + 42) == 1 && (a2 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLogic::~CLMicroLocationLogic();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_INFO, "FBSDisplay, lock screen transition to unlock screen", buf, 2u);
    }

    CLMicroLocationLogic::migrateFromBackupIfNecessary(this);
  }

  *(this + 42) = a2;
}

void ULEventLogDO::ULEventLogDO(std::string *this, __int128 *a2, double a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  *&this[1].__r_.__value_.__l.__data_ = a3;
}

uint64_t std::vector<ULEventLogDO>::__init_with_size[abi:ne200100]<ULEventLogDO const*,ULEventLogDO const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULEventLogDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_258FF6EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULEventLogDO>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ULEventLogDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULEventLogDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULEventLogDO>,ULEventLogDO const*,ULEventLogDO const*,ULEventLogDO*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v4[1].__r_.__value_.__r.__words[0] = *(v6 + 3);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULEventLogDO>,ULEventLogDO*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULEventLogDO>,ULEventLogDO*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULEventLogDO>,ULEventLogDO*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t ULDBUtils::insertDataObjects<ULEventLogDO,ULEventLogMO>(void *a1, void *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [v5 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3321888768;
    v15[2] = ___ZN9ULDBUtils17insertDataObjectsI12ULEventLogDO12ULEventLogMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v15[3] = &unk_286A56190;
    v18 = a2;
    std::__function::__value_func<ULEventLogMO * ()(ULEventLogDO const&)>::__value_func[abi:ne200100](v19, a3);
    v16 = v6;
    v17 = &v11;
    [v7 performBlockAndWait:v15];

    v8 = *(v12 + 24);
    std::__function::__value_func<ULEventLogMO * ()(ULEventLogDO const&)>::~__value_func[abi:ne200100](v19);
    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void sub_258FF71E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULEventLogMO * ()(ULEventLogDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<ULEventLogMO * ()(ULEventLogDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN9ULDBUtils17insertDataObjectsI12ULEventLogDO12ULEventLogMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI12ULEventLogDO12ULEventLogMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_1();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI12ULEventLogDO12ULEventLogMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      v15 = [*(a1 + 32) managedObjectContext];
      [v15 reset];

      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v3 += 32;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 deleteOldestRecordsIfFull];
}

void sub_258FF7850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void ULSystemTriggerGenerator::onScreenUnlocked(ULSystemTriggerGenerator *this)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = cl::chrono::CFAbsoluteTimeClock::now();
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinDurationForScreenUnlockSinceLastLocalization"];
  v6 = [v4 objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v6 doubleValue];
  }

  else
  {
    [&unk_286A71F10 doubleValue];
  }

  v8 = v7;

  if (ULSettings::get<ULSettings::EnableScreenUnlockLocalization>() && *(this + 25) == 1 && *(this + 28) == 1)
  {
    v9 = *(this + 9);
    if (v2 < v9)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSystemTriggerGenerator::startPeriodicTriggerTimer();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v11 = *(this + 9);
        v24 = 68289538;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2050;
        *v29 = v2;
        *&v29[8] = 2050;
        v30 = v11;
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:onScreenUnlocked, triggerTimestamp is in the past, triggerTimestamp:%{public}.3f, fLastLocalizationRequestTime:%{public}.3f}", &v24, 0x26u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULSystemTriggerGenerator::onAppLaunch();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        v13 = *(this + 9);
        v24 = 68289538;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2050;
        *v29 = v2;
        *&v29[8] = 2050;
        v30 = v13;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "onScreenUnlocked, triggerTimestamp is in the past", "{msg%{public}.0s:onScreenUnlocked, triggerTimestamp is in the past, triggerTimestamp:%{public}.3f, fLastLocalizationRequestTime:%{public}.3f}", &v24, 0x26u);
      }

      goto LABEL_28;
    }

    if (v2 - v9 >= v8)
    {
LABEL_28:
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSystemTriggerGenerator::onAppLaunch();
      }

      v21 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v2 - *(this + 9);
        v24 = 68289538;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2050;
        *v29 = v8;
        *&v29[8] = 2050;
        v30 = v22;
        _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onScreenUnlocked, requesting localization on screen unlock, Minimum duration since last localization:%{public}f, Time since last_s:%{public}.09f}", &v24, 0x26u);
      }

      if ((*(**(this + 2) + 24))(*(this + 2)))
      {
        v23 = +[ULHomeSlamAnalytics shared];
        [v23 logEventScanEventGeneratedAfterDisplayOnAtTimeStamp:cl::chrono::CFAbsoluteTimeClock::now()];
      }

      *(this + 9) = v2;
      goto LABEL_22;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULSystemTriggerGenerator::startPeriodicTriggerTimer();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v20 = v2 - *(this + 9);
      v24 = 68289282;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2050;
      *v29 = v20;
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:onScreenUnlocked, will not localize because too close to last localization, Time since last_s:%{public}.09f}", &v24, 0x1Cu);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSystemTriggerGenerator::startPeriodicTriggerTimer();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = ULSettings::get<ULSettings::EnableScreenUnlockLocalization>();
      v16 = *(this + 25);
      v17 = *(this + 28);
      v24 = 68289794;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 1026;
      *v29 = v15;
      *&v29[4] = 1026;
      *&v29[6] = v16;
      LOWORD(v30) = 1026;
      *(&v30 + 2) = v17;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onScreenUnlocked, localization is not requested on screen unlock, EnableScreenUnlockLocalization:%{public}hhd, allowedLocalization:%{public}hhd, isLowLatency:%{public}hhd}", &v24, 0x24u);
    }
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t ULSettings::get<ULSettings::EnableScreenUnlockLocalization>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnableScreenUnlockLocalization"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::__function::__value_func<ULEventLogMO * ()(ULEventLogDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULEventLogDO>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ULEventLogDO>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

_BYTE *CLMicroLocationLoiManager::convertRTLocationOfInterestTypeToString@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if (a1 <= 0)
  {
    if (a1 == -1)
    {
      v3 = "other";
      goto LABEL_12;
    }

    if (!a1)
    {
      v3 = "home";
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v3 = "work";
        goto LABEL_12;
      case 2:
        v3 = "school";
        goto LABEL_12;
      case 3:
        v3 = "gym";
LABEL_12:

        return std::string::basic_string[abi:ne200100]<0>(a2, v3);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Please update this switch statement.", v6, 2u);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, "none");
}

uint64_t boost::uuids::string_generator::operator()<char const*>(boost::uuids::string_generator *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (a2 == a3)
  {
    goto LABEL_31;
  }

  v5 = (a2 + 1);
  v6 = *a2;
  if (v6 == 123)
  {
    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v5 = (a2 + 2);
    v7 = a2[1];
  }

  else
  {
    v7 = *a2;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    do
    {
      if (v9 == 4)
      {
        if (v7 != 45)
        {
          v8 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v12 = v9 == 6 || (v9 & 0x7FFFFFFD) == 8;
        if ((v12 & v8) != 1)
        {
          goto LABEL_23;
        }

        if (v7 != 45)
        {
          goto LABEL_31;
        }
      }

      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v13 = *v5++;
      v7 = v13;
      v8 = 1;
LABEL_23:
      value = boost::uuids::string_generator::get_value(this, v7);
      *(v19 + v9) = value;
      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v15 = *v5++;
      v7 = v15;
      *(v19 + v9++) = boost::uuids::string_generator::get_value(this, v15) | (16 * value);
    }

    while (!v9);
    if (v9 == 16)
    {
      break;
    }

    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v10 = *v5++;
    v7 = v10;
  }

  if (v6 == 123 && (v5 == a3 || (v16 = *v5, ++v5, v16 != 125)) || v5 != a3)
  {
LABEL_31:
    boost::uuids::string_generator::throw_invalid(this);
  }

  result = v19[0];
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::uuids::string_generator::get_value(boost::uuids::string_generator *this, int a2)
{
  {
    v8 = a2;
    boost::uuids::string_generator::get_value();
    a2 = v8;
  }

  v3 = boost::uuids::string_generator::get_value(char)const::digits_end;
  v4 = memchr("0123456789abcdefABCDEF", a2, boost::uuids::string_generator::get_value(char)const::digits_end - "0123456789abcdefABCDEF");
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5 - "0123456789abcdefABCDEF";
  if (v6 >= boost::uuids::string_generator::get_value(char)const::digits_len)
  {
    boost::uuids::string_generator::throw_invalid(this);
  }

  return boost::uuids::string_generator::get_value(char)const::values[v6];
}

void boost::uuids::string_generator::throw_invalid(boost::uuids::string_generator *this)
{
  MEMORY[0x259CA1C30](v2, "invalid uuid string");
  v1[0] = "/AppleInternal/Library/BuildRoots/4~CAoWugBp3PLHT7CMQ3XPRqDfBLlwdFseJslrMM0/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/string_generator.hpp";
  v1[1] = "void boost::uuids::string_generator::throw_invalid() const";
  v1[2] = 192;
  boost::throw_exception<std::runtime_error>(v2, v1);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t sub_258FF88C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592121D0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258FF8930(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592121D0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258FF89B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA08, &qword_259225C88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_258FF8A98()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258FF8ADC()
{
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_258FF8B24()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258FF8B5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258FF8B94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_258FF8BDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA78, &qword_259225F08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_258FF8C80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258FF8CB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_258FF8CFC()
{
  MEMORY[0x259CA3030](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258FF8D34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258FF8D6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258FF8DB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258FF8E70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258FF8EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592121D0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258FF8F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592121D0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258FF8F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592121D0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258FF8FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592121D0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258FF9064()
{
  MEMORY[0x259CA3030](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258FF909C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 120, 15);
}

uint64_t sub_258FF90E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592121D0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258FF9150(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592121D0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258FF91D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258FF920C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258FF9254(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_258FF9818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258FF9D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::AnalyticsInterval>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsInterval"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = [&unk_286A712F8 intValue];
  }

  v5 = v4;

  return v5;
}

void sub_258FFB2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2798D4060, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULEventLogDO>,ULEventLogDO*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_258FFC24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258FFCD28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 136));
  _Unwind_Resume(a1);
}

void sub_258FFD704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258FFDD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258FFE354(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_258FFEB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258FFEDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258FFF2D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_2590000C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259001168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v16 = v14;

  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259001744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2590018FC(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_259001A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);

  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v8 - 56));
  _Unwind_Resume(a1);
}

void sub_259001CE4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_0()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

__CFString *ULSleepWakeStateToString(int a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 > 29)
  {
    switch(a1)
    {
      case 30:
        result = @"FullWake";
        goto LABEL_19;
      case 40:
        result = @"Restart";
        goto LABEL_19;
      case 50:
        result = @"PowerOff";
        goto LABEL_19;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        result = @"Unknown";
        goto LABEL_19;
      case 10:
        result = @"Sleep";
        goto LABEL_19;
      case 20:
        result = @"DarkWake";
        goto LABEL_19;
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSleepWakeStateToString_cold_1();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a1;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Unhandled ULSleepWakeState value: %d", v5, 8u);
  }

  result = @"?";
LABEL_19:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2590021C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259002D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2590033E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<ULHomeSlamAnalyticEventDO>::__init_with_size[abi:ne200100]<ULHomeSlamAnalyticEventDO*,ULHomeSlamAnalyticEventDO*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULHomeSlamAnalyticEventDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2590035D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ULHomeSlamAnalyticEventDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULHomeSlamAnalyticEventDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULHomeSlamAnalyticEventDO>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ULHomeSlamAnalyticEventDO::EventTypeEnum>::__init_with_size[abi:ne200100]<ULHomeSlamAnalyticEventDO::EventTypeEnum const*,ULHomeSlamAnalyticEventDO::EventTypeEnum const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<ULHomeSlamAnalyticEventDO::EventTypeEnum>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2590036CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ULHomeSlamAnalyticEventDO::EventTypeEnum>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULHomeSlamAnalyticEventDO::EventTypeEnum>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULHomeSlamAnalyticEventDO::EventTypeEnum>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ULSettings::get<ULSettings::LogOdometryAnalyticsEnabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLogOdometryAnalyticsEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

void sub_259003C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ULHomeSlamAnalytics;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_259004960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_259004AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v20 = v18;
  objc_destroyWeak((v19 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259004B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_1()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<ULHomeSlamAnalyticEventDO>::__init_with_size[abi:ne200100]<ULHomeSlamAnalyticEventDO const*,ULHomeSlamAnalyticEventDO const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULHomeSlamAnalyticEventDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259005100(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2590059A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t std::vector<ULOdometryDO>::__init_with_size[abi:ne200100]<ULOdometryDO*,ULOdometryDO*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULOdometryDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25900660C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULOdometryDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULOdometryDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULOdometryDO>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULOdometryDO>,ULOdometryDO*,ULOdometryDO*,ULOdometryDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = a4 + v7;
      v12 = *(a2 + v7 + 24);
      *(v11 + 40) = *(a2 + v7 + 40);
      *(v11 + 24) = v12;
      v13 = *(a2 + v7 + 48);
      v14 = *(a2 + v7 + 56);
      *(v11 + 48) = v13;
      *(v11 + 56) = v14;
      v7 += 64;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_259006760(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 64;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULOdometryDO,0>(v4);
      v4 -= 64;
      v5 += 64;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<ULOdometryDO,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 64;
        std::__destroy_at[abi:ne200100]<ULOdometryDO,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ULHomeSlamLocalizationPipeline::ingestValidIOUpdate(ULHomeSlamLocalizationPipeline *this@<X0>, const ULOdometryStatus *a2@<X1>, ULHomeSlamLocalizerState *a3@<X2>, const ULHomeSlamModel *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v9 = this;
  if (BYTE4(a2[8]._deltaPositionX))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEBUG, "#HomeSlam, localizing IO update", buf, 2u);
    }

    v34[0] = 0;
    v40 = 0;
    updated = ULHomeSlamLocalizationPipeline::updateParticlesState(v9, v34, a2, a3);
    if (v40 == 1)
    {
      *buf = &v39;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](buf);
      if (__p)
      {
        v38 = __p;
        operator delete(__p);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v36);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v35);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v34);
    }

    if (BYTE4(a2[8]._deltaPositionX) == 1)
    {
      v12 = [(ULHomeSlamLocalizationPipeline *)v9 deltaPositionX];
      [v12 floatValue];
      v27 = v13;
      v14 = [(ULHomeSlamLocalizationPipeline *)v9 deltaPositionY];
      [v14 floatValue];
      a2[7]._odometrySourceType = vadd_f32(__PAIR64__(v15, v27), a2[7]._odometrySourceType);
      *&a2[8].super.isa = *&a2[8].super.isa + 0.0;

      if (LOBYTE(a2[8]._deviceIdentifier) != 1 || (v16 = vcvtq_f64_f32(a2[7]._odometrySourceType), vaddvq_f64(vmulq_f64(v16, v16)) > *(&a2[8].super.isa + 1) * *(&a2[8].super.isa + 1)))
      {
        LOBYTE(a2[8]._deviceIdentifier) = 0;
        BYTE4(a2[8]._deltaPositionX) = 2;
      }
    }

    if (v5)
    {
      p_deltaPositionY = &a2[6]._deltaPositionY;
      if (LOBYTE(a2[6]._odometrySourceType) == 1)
      {
        LOBYTE(a2[6]._odometrySourceType) = 0;
      }

LABEL_26:
      deltaPositionX = a2[6]._deltaPositionX;
      *a5 = *p_deltaPositionY;
      *(a5 + 9) = *(p_deltaPositionY + 9);
      *(a5 + 32) = updated;
      v20 = (a5 + 40);
      if (deltaPositionX)
      {
        *v20 = 0;
        *(a5 + 48) = 0;
        *(a5 + 56) = 0;
LABEL_32:
        std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(v20, a2[7].super.isa, a2[7]._deviceIdentifier, 0xCCCCCCCCCCCCCCCDLL * ((a2[7]._deviceIdentifier - a2[7].super.isa) >> 2));
        goto LABEL_33;
      }

      goto LABEL_28;
    }

    if (BYTE4(a2[8]._deltaPositionX) == 1 && LOBYTE(a2[6]._odometrySourceType) == 1)
    {
      p_deltaPositionY = &a2[6]._deltaPositionY;
      goto LABEL_26;
    }

    v22 = *&a2[6]._statusDate;
    *buf = *&a2[6]._deltaPositionY;
    v31 = v22;
    v23 = v9;
    v28 = v23;
    v29 = 1;
    ULHomeSlamLocalizationPipeline::generateBlueDot(&a2[7], a2, buf, &v28, a2[7]._deltaPositionZ, a2[7]._statusDate, &v32);
    odometrySourceType = a2[6]._odometrySourceType;
    *&a2[6]._deltaPositionY = v32;
    a2[6]._statusDate = v33;
    if ((odometrySourceType & 1) == 0)
    {
      LOBYTE(a2[6]._odometrySourceType) = 1;
    }

    v25 = a2[6]._deltaPositionX;
    *a5 = *&a2[6]._deltaPositionY;
    *(a5 + 9) = *(&a2[6]._deltaPositionZ + 1);
    *(a5 + 32) = updated;
    *(a5 + 40) = 0;
    v20 = (a5 + 40);
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    if (v25)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
    }

    v18 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEBUG, "#HomeSlam, skipping IO update, awaiting first RF signal", buf, 2u);
    }

    deltaPositionX_low = LOBYTE(a2[6]._deltaPositionX);
    *a5 = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 1;
    v20 = (a5 + 40);
    if (deltaPositionX_low != 1)
    {
LABEL_28:
      *v20 = 0;
      v20[1] = 0;
      v20[2] = 0;
      goto LABEL_33;
    }

    *v20 = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(v20, a2[7].super.isa, a2[7]._deviceIdentifier, 0xCCCCCCCCCCCCCCCDLL * ((a2[7]._deviceIdentifier - a2[7].super.isa) >> 2));
  }

LABEL_33:

  v26 = *MEMORY[0x277D85DE8];
}

id _CLLogObjectForCategory_MicroLocation_Default(void)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULEndpointClusteringAlgorithm::pruneClusters();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWalkwayGenerator::createWalkways();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULRfClusterLocalizer::localize();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabaseManager::CLSqliteDatabaseManager();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULMapLabelStore insertMapLabelsWithRelatedLabelsObjectIDs:];
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULOdometryStore insertDataObjects:atLoiUUID:];
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    +[ULModelMO createFromDO:withServiceMO:loiMO:inManagedObjectContext:];
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngineFSM::handleNewTriggerInIdle();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULModelLoader::loadHomeSlamModel();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationFingerprint::Measurement::fromProtobuf();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

uint64_t ULHomeSlamLocalizationPipeline::updateParticlesState(void *a1, uint64_t a2, uint64_t a3, ULHomeSlamModel *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a1;
  if (((v7 != 0) ^ *(a2 + 224)))
  {
    if (*(ULHomeSlamModel::getTrajectoryPointCloud(a4) + 32))
    {
      TrajectoryPointCloud = ULHomeSlamModel::getTrajectoryPointCloud(a4);
      if ((*(TrajectoryPointCloud + 32) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      Rois = ULHomeSlamModel::getRois(a4);
      if (v7)
      {
        __p = 0;
        *v29 = 0;
        *&v29[8] = 0;
        std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(&__p, *(a3 + 392), *(a3 + 400), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 400) - *(a3 + 392)) >> 2));
        ULHomeSlamLocalizationPipeline::moveParticles(v7, (a3 + 392), *(a3 + 416), a3, *(a3 + 460));
        ULHomeSlamLocalizationPipeline::computeTrajectoryLikelihood(&__p, (a3 + 392), TrajectoryPointCloud, a3, Rois);
        if (ULHomeSlamLocalizationPipeline::didParticlesDiverge((a3 + 392), a3))
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ULHomeSlamLocalizationPipeline::updateParticlesState();
          }

          v10 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "#HomeSlam, particles diverged!", buf, 2u);
          }

          ULHomeSlamLocalizationPipeline::resetParticles(a3, a4, v11);
          if (__p)
          {
            *v29 = __p;
            operator delete(__p);
          }

          v12 = 1;
          goto LABEL_29;
        }

        if (__p)
        {
          *v29 = __p;
          operator delete(__p);
        }
      }

      else if (*(a2 + 224) == 1)
      {
        ULHomeSlamLocalizationPipeline::computeFPLikelihood(a2, Rois, (a3 + 392), a3);
        if (ULHomeSlamLocalizationPipeline::didParticlesDiverge((a3 + 392), a3))
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
          }

          v13 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p) = 0;
            _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "#HomeSlam, particles diverged!", &__p, 2u);
          }

          ULHomeSlamLocalizationPipeline::resetParticles(a3, a4, v14);
          if ((*(a2 + 224) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          ULHomeSlamLocalizationPipeline::computeFPLikelihood(a2, Rois, (a3 + 392), a3);
          v12 = 1;
          goto LABEL_24;
        }
      }

      v12 = 0;
LABEL_24:
      if (*(a3 + 456) == 1 && (v15 = vcvtq_f64_f32(*(a3 + 440)), vaddvq_f64(vmulq_f64(v15, v15)) <= *(a3 + 452) * *(a3 + 452)))
      {
        v16 = 232;
      }

      else
      {
        *(a3 + 456) = 0;
        v16 = 236;
      }

      v17 = *(a3 + v16);
      v18 = *(a3 + 468) == 0;
      v19 = *(a3 + 416);
      ULHomeSlamLocalizationPipeline::resampleParticles();
      ++*(a3 + 416);
LABEL_29:

      v20 = *MEMORY[0x277D85DE8];
      return v12;
    }

    v25 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      __p = 68289539;
      *v29 = 2082;
      *&v29[2] = "";
      *&v29[10] = 2082;
      *&v29[12] = "assert";
      v30 = 2081;
      v31 = "model.getTrajectoryPointCloud().has_value()";
      _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#HomeSlam, localization pipeline got nil trajectory point cloud!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v26 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v26))
    {
      __p = 68289539;
      *v29 = 2082;
      *&v29[2] = "";
      *&v29[10] = 2082;
      *&v29[12] = "assert";
      v30 = 2081;
      v31 = "model.getTrajectoryPointCloud().has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#HomeSlam, localization pipeline got nil trajectory point cloud!", "{msg%{public}.0s:#HomeSlam, localization pipeline got nil trajectory point cloud!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v24 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      __p = 68289539;
      *v29 = 2082;
      *&v29[2] = "";
      *&v29[10] = 2082;
      *&v29[12] = "assert";
      v30 = 2081;
      v31 = "model.getTrajectoryPointCloud().has_value()";
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#HomeSlam, localization pipeline got nil trajectory point cloud!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }
  }

  else
  {
    v22 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      __p = 68289539;
      *v29 = 2082;
      *&v29[2] = "";
      *&v29[10] = 2082;
      *&v29[12] = "assert";
      v30 = 2081;
      v31 = "(ioStatus != nullptr) != fingerprint.has_value()";
      _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#HomeSlam, should only use one signal input at a time, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v23))
    {
      __p = 68289539;
      *v29 = 2082;
      *&v29[2] = "";
      *&v29[10] = 2082;
      *&v29[12] = "assert";
      v30 = 2081;
      v31 = "(ioStatus != nullptr) != fingerprint.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#HomeSlam, should only use one signal input at a time", "{msg%{public}.0s:#HomeSlam, should only use one signal input at a time, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v24 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      __p = 68289539;
      *v29 = 2082;
      *&v29[2] = "";
      *&v29[10] = 2082;
      *&v29[12] = "assert";
      v30 = 2081;
      v31 = "(ioStatus != nullptr) != fingerprint.has_value()";
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#HomeSlam, should only use one signal input at a time, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

uint64_t std::optional<CLMicroLocationFingerprint>::~optional(uint64_t a1)
{
  if (*(a1 + 224) == 1)
  {
    v4 = (a1 + 200);
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v4);
    v2 = *(a1 + 168);
    if (v2)
    {
      *(a1 + 176) = v2;
      operator delete(v2);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 104);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 64);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(a1);
  }

  return a1;
}

void ULHomeSlamLocalizationPipeline::generateBlueDot(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v96 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEBUG, "#HomeSlam, generating blue dot", buf, 2u);
  }

  v12 = +[ULDefaultsSingleton shared];
  v13 = [v12 defaultsDictionary];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometrySource"];
  v15 = [v13 objectForKey:v14];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = [v15 unsignedIntValue];
  }

  else
  {
    v16 = [&unk_286A71478 unsignedIntValue];
  }

  v17 = v16;

  v18 = [ULOdometryStatus alloc];
  v19 = [MEMORY[0x277CBEAA8] now];
  v20 = [(ULOdometryStatus *)v18 initWithDeviceIdentifier:&stru_286A60C80 odometrySourceType:v17 deltaPositionX:&unk_286A71388 deltaPositionY:&unk_286A71388 deltaPositionZ:&unk_286A71388 date:v19];
  v21 = v20;
  if (*(a4 + 8) == 1)
  {
    v21 = *a4;
  }

  v22 = v21;

  *buf = 0;
  v90 = 0;
  v91 = 0;
  v88[0] = 0;
  v88[1] = 0;
  v86[1] = 0;
  v87 = v88;
  v85 = v86;
  v86[0] = 0;
  v82 = v22;
  ULHomeSlamLocalizationPipeline::clusterParticles(a1, buf, &v87, &v85, v23);
  v24 = v87;
  if (v87 == v88)
  {
    goto LABEL_80;
  }

  v25 = v87;
  v26 = v87;
  while (1)
  {
    v27 = v26[1];
    v28 = v26;
    if (v27)
    {
      do
      {
        v26 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      do
      {
        v26 = v28[2];
        v29 = *v26 == v28;
        v28 = v26;
      }

      while (!v29);
    }

    if (v26 == v88)
    {
      break;
    }

    if (*(v25 + 10) < *(v26 + 10))
    {
      v25 = v26;
    }
  }

  if (v25 == v88)
  {
LABEL_80:
    ULHomeSlamLocalizationPipeline::generateBlueDot(&__p);

    abort_report_np();
    __break(1u);
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v30 = vcvtms_s32_f32(*(a2 + 216) * (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 2)));
  if (*(a3 + 24))
  {
    v31 = *a3;
    v32 = *(a3 + 4);
    v33 = *(a3 + 8);
    v34 = [(ULOdometryStatus *)v22 deltaPositionX];
    [v34 floatValue];
    v36 = v35;
    v37 = [(ULOdometryStatus *)v22 deltaPositionY];
    [v37 floatValue];
    v39 = v38;
    v40 = [(ULOdometryStatus *)v22 deltaPositionZ];
    [v40 floatValue];
    v42 = v41;

    v43 = v87;
    if (v87 != v88)
    {
      v44 = v31 + v36;
      v45 = v32 + v39;
      v46 = v33 + v42;
      v47 = -1;
      v48 = 3.4028e38;
      while ((*(a2 + 212) * *(v25 + 10)) > *(v43 + 10))
      {
LABEL_36:
        v60 = v43[1];
        if (v60)
        {
          do
          {
            v61 = v60;
            v60 = *v60;
          }

          while (v60);
        }

        else
        {
          do
          {
            v61 = v43[2];
            v29 = *v61 == v43;
            v43 = v61;
          }

          while (!v29);
        }

        v43 = v61;
        if (v61 == v88)
        {
          goto LABEL_58;
        }
      }

      __p.__r_.__value_.__r.__words[0] = (v43 + 4);
      v49 = *(std::__tree<std::__value_type<unsigned long,ULPointLocation>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ULPointLocation>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ULPointLocation>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v85, v43 + 4) + 10);
      __p.__r_.__value_.__r.__words[0] = (v43 + 4);
      v50 = *(std::__tree<std::__value_type<unsigned long,ULPointLocation>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ULPointLocation>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ULPointLocation>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v85, v43 + 4) + 11);
      __p.__r_.__value_.__r.__words[0] = (v43 + 4);
      v51 = *(std::__tree<std::__value_type<unsigned long,ULPointLocation>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ULPointLocation>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ULPointLocation>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v85, v43 + 4) + 12);
      v52 = fmaxf(fabsf(v49 - v44), fmaxf(vabds_f32(v50, v45), vabds_f32(v51, v46)));
      if (v52 <= 1.8447e19)
      {
        v54 = 1.0;
        if (v52 >= 5.421e-20)
        {
          goto LABEL_32;
        }

        *&v53 = 1.9343e25;
      }

      else
      {
        *&v53 = 5.1699e-26;
      }

      v54 = *&v53;
LABEL_32:
      v55 = sqrtf(((((v50 - v45) * v54) * ((v50 - v45) * v54)) + (((v49 - v44) * v54) * ((v49 - v44) * v54))) + (((v51 - v46) * v54) * ((v51 - v46) * v54))) / v54;
      if (v55 < v48)
      {
        __p.__r_.__value_.__r.__words[0] = (v43 + 4);
        v56 = std::__tree<std::__value_type<unsigned long,ULPointLocation>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ULPointLocation>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ULPointLocation>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v85, v43 + 4);
        v57 = v56[5];
        *(a7 + 8) = *(v56 + 12);
        *a7 = v57;
        __p.__r_.__value_.__r.__words[0] = (v43 + 4);
        v58 = std::__tree<std::__value_type<unsigned long,int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v87, v43 + 4);
        v59 = 1;
        if (*(v58 + 10) > v30)
        {
          v59 = 2;
        }

        *(a7 + 16) = v59;
        v47 = v43[4];
        v48 = v55;
      }

      goto LABEL_36;
    }

    goto LABEL_57;
  }

  if (v24 == v88)
  {
LABEL_57:
    v47 = -1;
    goto LABEL_58;
  }

  v62 = -1;
  v47 = -1;
  do
  {
    v63 = *(v24 + 10);
    if (v63 >= v62)
    {
      __p.__r_.__value_.__r.__words[0] = (v24 + 4);
      v64 = std::__tree<std::__value_type<unsigned long,ULPointLocation>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ULPointLocation>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ULPointLocation>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v85, v24 + 4);
      v65 = v64[5];
      *(a7 + 8) = *(v64 + 12);
      *a7 = v65;
      __p.__r_.__value_.__r.__words[0] = (v24 + 4);
      if (*(std::__tree<std::__value_type<unsigned long,int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v87, v24 + 4) + 10) <= v30)
      {
        v66 = 1;
      }

      else
      {
        v66 = 2;
      }

      *(a7 + 16) = v66;
      v47 = v24[4];
      v62 = v63;
    }

    v67 = v24[1];
    if (v67)
    {
      do
      {
        v68 = v67;
        v67 = *v67;
      }

      while (v67);
    }

    else
    {
      do
      {
        v68 = v24[2];
        v29 = *v68 == v24;
        v24 = v68;
      }

      while (!v29);
    }

    v24 = v68;
  }

  while (v68 != v88);
LABEL_58:
  if ((a6 & 1) != 0 && a5[1] == 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 2))
  {
    v69 = *buf;
    if (v90 != *buf)
    {
      v70 = 0;
      v71 = (v90 - *buf) >> 3;
      v72 = *a5;
      if (v71 <= 1)
      {
        v71 = 1;
      }

      do
      {
        v73 = v70 >> 6;
        v74 = 1 << v70;
        if (v69[v70] == v47)
        {
          v75 = *(v72 + 8 * v73) | v74;
        }

        else
        {
          v75 = *(v72 + 8 * v73) & ~v74;
        }

        *(v72 + 8 * v73) = v75;
        ++v70;
      }

      while (v71 != v70);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULHomeSlamLocalizationPipeline::updateParticlesState();
  }

  v76 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
  {
    ULPointLocation::str(a7, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v78 = "High";
    if (*(a7 + 16) == 1)
    {
      v78 = "Low";
    }

    *v92 = 136315394;
    v93 = p_p;
    v94 = 2080;
    v95 = v78;
    _os_log_impl(&dword_258FE9000, v76, OS_LOG_TYPE_DEBUG, "#HomeSlam, new blue dot %s, with confidence: %s", v92, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v85, v86[0]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v87, v88[0]);
  if (*buf)
  {
    v90 = *buf;
    operator delete(*buf);
  }

  v79 = *MEMORY[0x277D85DE8];
}

void sub_259007CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, void *__p, uint64_t a26)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a22, a23);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ULHomeSlamLocalizationPipeline::ingestValidFingerprintUpdate@<X0>(ULHomeSlamLocalizationPipeline *this@<X0>, const CLMicroLocationFingerprint *a2@<X1>, ULHomeSlamLocalizerState *a3@<X2>, const ULHomeSlamModel *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v30 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEBUG, "#HomeSlam, localizing RF update", buf, 2u);
  }

  CLMicroLocationFingerprint::CLMicroLocationFingerprint(v23, this);
  v29 = 1;
  result = ULHomeSlamLocalizationPipeline::updateParticlesState(0, v23, a2, a3);
  v12 = result;
  if (v29 == 1)
  {
    *buf = &v28;
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](buf);
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v25);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v24);
    result = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v23);
  }

  if (*(a2 + 468))
  {
    if (v5)
    {
LABEL_11:
      if (*(a2 + 384) == 1)
      {
        *(a2 + 384) = 0;
      }

      v13 = *(a2 + 352);
      *a5 = *(a2 + 360);
      *(a5 + 9) = *(a2 + 369);
      *(a5 + 32) = v12;
      *(a5 + 40) = 0;
      *(a5 + 48) = 0;
      *(a5 + 56) = 0;
      if (v13 == 1)
      {
        result = std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(a5 + 40, *(a2 + 49), *(a2 + 50), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 50) - *(a2 + 49)) >> 2));
      }

      goto LABEL_20;
    }
  }

  else
  {
    *(a2 + 468) = 1;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v14 = *(a2 + 376);
  *buf = *(a2 + 360);
  v20 = v14;
  v18[0] = 0;
  v18[8] = 0;
  ULHomeSlamLocalizationPipeline::generateBlueDot(a2 + 392, a2, buf, v18, *(a2 + 53), *(a2 + 54), &v21);
  v15 = *(a2 + 384);
  *(a2 + 360) = v21;
  *(a2 + 47) = v22;
  if ((v15 & 1) == 0)
  {
    *(a2 + 384) = 1;
  }

  v16 = *(a2 + 352);
  *a5 = *(a2 + 360);
  *(a5 + 9) = *(a2 + 369);
  *(a5 + 32) = v12;
  *(a5 + 40) = 0;
  result = a5 + 40;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  if (v16 == 1)
  {
    result = std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(result, *(a2 + 49), *(a2 + 50), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 50) - *(a2 + 49)) >> 2));
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259007FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::optional<CLMicroLocationFingerprint>::~optional(va);
  _Unwind_Resume(a1);
}

void ULHomeSlamLocalizationPipeline::computeFPLikelihood(uint64_t *a1, uint64_t *a2, ULHomeSlamLocalizationPipeline **a3, const ULPointLocation *a4)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "#HomeSlam, computing RF likelihood", buf, 2u);
  }

  ULHomeSlamLocalizationPipeline::computeFPDistanceFromAllROIs(a1, a2, a4, buf);
  if (a1[26] == a1[25])
  {
    v9 = 32;
  }

  else
  {
    v9 = 120;
  }

  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    do
    {
      ULHomeSlamLocalizationPipeline::computeGeoDistanceFromAllROIs(v10, a2, a4, v18);
      *(v10 + 3) = 1065353216;
      if ((ULHomeSlamLocalizationPipeline::shouldSnapParticleToRoom(v18, buf, a4 + v9) & 1) == 0)
      {
        v12 = *a2;
        v13 = a2[1];
        while (v12 != v13)
        {
          v20 = v12 + 24;
          v17 = *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(buf, (v12 + 24)) + 8);
          v20 = v12 + 24;
          v16 = *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v18, (v12 + 24)) + 8);
          v15 = ULHomeSlamLocalizationPipeline::computeScoreFromFpAndGeoDistance(&v17, &v16, (a4 + v9), v14);
          *(v10 + 3) = *(v10 + 3) * v15;
          v12 += 32;
        }
      }

      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v18, v18[1]);
      v10 = (v10 + 20);
    }

    while (v10 != v11);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(buf, buf[1]);
}

uint64_t *ULHomeSlamLocalizationPipeline::computeFPDistanceFromAllROIs@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v8 = result;
    do
    {
      v9 = ULHomeSlamLocalizationPipeline::computeRFDistanceFromROI(v8, v5, a3);
      result = std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a4, (v5 + 24));
      *(result + 8) = v9;
      v5 += 32;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t *ULHomeSlamLocalizationPipeline::computeGeoDistanceFromAllROIs@<X0>(ULHomeSlamLocalizationPipeline *this@<X1>, uint64_t *result@<X0>, const ULPointLocation *a3@<X2>, void *a4@<X8>)
{
  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  if (*result != result[1])
  {
    ULHomeSlamLocalizationPipeline::computeGeoDistanceFromROI(*result, this, a3);
  }

  return result;
}

uint64_t ULHomeSlamLocalizationPipeline::shouldSnapParticleToRoom(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[2] != *(a2 + 16))
  {
    ULHomeSlamLocalizationPipeline::shouldSnapParticleToRoom();
  }

  v3 = (a1 + 1);
  v4 = *a1;
  if (*a1 == a1 + 1)
  {
    return 0;
  }

  while (*std::map<int,float>::at(a2, v4 + 7) > *(a3 + 4) || *(v4 + 8) > *(a3 + 8))
  {
    v7 = *(v4 + 1);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = *(v4 + 2);
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
    }

    v4 = v8;
    if (v8 == v3)
    {
      return 0;
    }
  }

  return 1;
}

double ULHomeSlamLocalizationPipeline::computeScoreFromFpAndGeoDistance(ULHomeSlamLocalizationPipeline *this, double *a2, double **a3, const ULHomeSlamFpLikelihoodSettings *a4)
{
  BinIndex = ULHomeSlamLocalizationPipeline::findBinIndex(this, a3 + 5);
  v7 = ULHomeSlamLocalizationPipeline::findBinIndex(a2, a3 + 8);
  if (BinIndex < 0 || v7 < 0)
  {
    ULHomeSlamLocalizationPipeline::computeScoreFromFpAndGeoDistance(v7);
  }

  v8 = BinIndex + (a3[6] - a3[5]) * v7;
  v9 = a3[2];
  if (v8 >= a3[3] - v9)
  {
    ULHomeSlamLocalizationPipeline::computeScoreFromFpAndGeoDistance();
  }

  return v9[v8];
}

uint64_t *std::map<int,float>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

float ULHomeSlamLocalizationPipeline::computeRFDistanceFromROI(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    goto LABEL_10;
  }

  do
  {
    v7 = *(a3 + 280);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v7 + 48))(v7, a1, v3 + 16) != INFINITY)
    {
      std::__tree<float>::__emplace_multi<float const&>();
    }

    v3 += 240;
  }

  while (v3 != v4);
  if (!v14)
  {
LABEL_10:
    v10 = INFINITY;
  }

  else
  {
    v8 = 120;
    if (*(a1 + 208) == *(a1 + 200))
    {
      v8 = 32;
    }

    CLReducerFunction<std::multiset<float>,float>::parametrizedPercentileSorted(&v12, *(a3 + v8));
    v10 = v9;
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v12, v13);
  return v10;
}

void ULHomeSlamLocalizationPipeline::computeGeoDistanceFromROI(uint64_t a1, ULHomeSlamLocalizationPipeline *this, const ULPointLocation *a3)
{
  if (*(a1 + 8) != *a1)
  {
    ULHomeSlamLocalizationPipeline::geoDistULPoints(this, *a1, a3);
    std::__tree<float>::__emplace_multi<float const&>();
  }

  ULHomeSlamLocalizationPipeline::computeGeoDistanceFromROI();
}

uint64_t ULHomeSlamLocalizationPipeline::findBinIndex(double *a1, double **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 != *a2)
  {
    v4 = v3 - *a2;
    v3 = *a2;
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[v4 >> 1];
      v8 = *v6;
      v7 = v6 + 1;
      v4 += ~(v4 >> 1);
      if (v8 < *a1)
      {
        v3 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
  }

  if (v2 == v3)
  {
    return -1;
  }

  else
  {
    return v3 - v2 - 1;
  }
}

float **CLReducerFunction<std::multiset<float>,float>::parametrizedPercentileSorted(float **result, double a2)
{
  v2 = result[2];
  if (!v2)
  {
    CLReducerFunction<std::multiset<float>,float>::parametrizedPercentileSorted();
  }

  if (a2 < 0.0 || a2 > 1.0)
  {
    CLReducerFunction<std::multiset<float>,float>::parametrizedPercentileSorted();
  }

  v4 = a2 == 0.0 || v2 == 1;
  if (v4)
  {
    v5 = *result;
LABEL_17:
    v8 = *(v5 + 7);
    return result;
  }

  if (a2 == 1.0)
  {
    v7 = result[1];
    ++result;
    v6 = v7;
    if (v7)
    {
      do
      {
        v5 = v6;
        v6 = *(v6 + 1);
      }

      while (v6);
    }

    else
    {
      do
      {
        v5 = result[2];
        v4 = *v5 == result;
        result = v5;
      }

      while (v4);
    }

    goto LABEL_17;
  }

  v9 = (v2 - 1);
  v10 = v9 * a2;
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  if (v10 <= v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = (v2 - 1);
  }

  v12 = floor(v11);
  v13 = llround(v12);
  if (v13 < 0 || v13 > v2 - 2)
  {
    CLReducerFunction<std::multiset<float>,float>::parametrizedPercentileSorted();
  }

  v18 = *result;
  result = std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v18, v13);
  v14 = v18;
  v15 = *(v18 + 1);
  if (v15)
  {
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    do
    {
      v16 = *(v14 + 2);
      v4 = *v16 == v14;
      v14 = v16;
    }

    while (!v4);
  }

  v17 = v18[7] + (v11 - v12) * (v16[7] - v18[7]);
  return result;
}

float ULHomeSlamLocalizationPipeline::geoDistULPoints(ULHomeSlamLocalizationPipeline *this, const ULPointLocation *a2, const ULPointLocation *a3)
{
  v3 = *(this + 1);
  var1 = a2->var1;
  v5 = v3 - var1;
  v6 = *(this + 2);
  var2 = a2->var2;
  v8 = fmaxf(vabds_f32(*this, a2->var0), fmaxf(vabds_f32(v3, var1), vabds_f32(v6, var2)));
  if (v8 > 1.8447e19)
  {
    v9 = 360710144;
LABEL_5:
    v10 = *&v9;
    return sqrtf((((v5 * v10) * (v5 * v10)) + (((*this - a2->var0) * v10) * ((*this - a2->var0) * v10))) + (((v6 - var2) * v10) * ((v6 - var2) * v10))) / v10;
  }

  v10 = 1.0;
  if (v8 < 5.421e-20)
  {
    v9 = 1769996288;
    goto LABEL_5;
  }

  return sqrtf((((v5 * v10) * (v5 * v10)) + (((*this - a2->var0) * v10) * ((*this - a2->var0) * v10))) + (((v6 - var2) * v10) * ((v6 - var2) * v10))) / v10;
}

void ULHomeSlamLocalizationPipeline::moveParticles(void *a1, float **a2, unsigned int a3, float *a4, uint64_t a5)
{
  v9 = a1;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEBUG, "#HomeSlam, moving all particles with noise", buf, 2u);
  }

  buf[0] = a3;
  for (i = 1; i != 624; ++i)
  {
    a3 = i + 1812433253 * (a3 ^ (a3 >> 30));
    buf[i] = a3;
  }

  v46 = 624;
  boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::normalize_state(buf);
  v12 = a4[1];
  if (v12 < 0.0)
  {
    __assert_rtn("normal_distribution", "normal_distribution.hpp", 282, "_sigma >= RealType(0)");
  }

  v13 = a4[2];
  if (v13 < 0.0)
  {
    __assert_rtn("normal_distribution", "normal_distribution.hpp", 282, "_sigma >= RealType(0)");
  }

  v14 = *a4;
  if (*a4 < 0.0)
  {
    __assert_rtn("normal_distribution", "normal_distribution.hpp", 282, "_sigma >= RealType(0)");
  }

  v15 = *a2;
  v16 = a2[1];
  if (*a2 != v16)
  {
    v17 = v12;
    v43 = v14;
    v44 = v13;
    v18 = __sincosf_stret(*&a5);
    v19 = v15 + 4;
    do
    {
      if ((a5 & 0x100000000) != 0)
      {
        v21 = [v9 deltaPositionX];
        [v21 floatValue];
        v31 = v30;
        v24 = [v9 deltaPositionY];
        [v24 floatValue];
        v28 = (v32 * -v18.__sinval) + (v31 * v18.__cosval);
        v29 = (v18.__cosval * v32) + (v31 * v18.__sinval);
      }

      else
      {
        v20 = boost::random::detail::unit_normal_distribution<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v47, buf) * v43 + 0.0;
        *v19 = *v19 + v20;
        v21 = [v9 deltaPositionX];
        [v21 floatValue];
        v23 = v22;
        v24 = [v9 deltaPositionY];
        [v24 floatValue];
        v26 = v25;
        v27 = __sincosf_stret(*v19);
        v28 = (v23 * v27.__cosval) - (v27.__sinval * v26);
        v29 = (v26 * v27.__cosval) + (v23 * v27.__sinval);
      }

      v33 = boost::random::detail::unit_normal_distribution<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v47, buf);
      v34 = boost::random::detail::unit_normal_distribution<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v47, buf);
      v35 = [v9 deltaPositionZ];
      [v35 floatValue];
      v37 = v36;
      v38 = boost::random::detail::unit_normal_distribution<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v47, buf);
      v39 = v19 - 4;
      v40 = v33 * v17 + 0.0;
      v41.f32[0] = v28 + v40;
      v42 = v34 * v17 + 0.0;
      *&v38 = v38 * v44 + 0.0;
      v41.f32[1] = v29 + v42;
      *(v19 - 2) = vadd_f32(v41, *(v19 - 4));
      *(v19 - 2) = (v37 + *&v38) + *(v19 - 2);

      v19 += 5;
    }

    while (v39 + 5 != v16);
  }
}

void ULHomeSlamLocalizationPipeline::computeTrajectoryLikelihood(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEBUG, "#HomeSlam, computing IO trajectory likelihood", buf, 2u);
  }

  if (a1[1] - *a1 != a2[1] - *a2)
  {
    ULHomeSlamLocalizationPipeline::computeTrajectoryLikelihood();
  }

  v10 = *(a4 + 12);
  *buf = 0;
  v43 = 0;
  v44 = 0;
  __p = 0;
  v40 = 0;
  v41 = 0;
  std::vector<ULPointLocation>::reserve(&__p, *(a4 + 224));
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::reserve(buf, *(a4 + 320));
  v12 = *a2;
  if (a2[1] != *a2)
  {
    v13 = 0;
    do
    {
      v14 = (*a1 + 20 * v13);
      v15 = (v12 + 20 * v13);
      v38 = 0;
      *&v16 = ULHomeSlamLocalizationPipeline::getMovement(v14, v15, v11);
      v38 = __PAIR64__(v17, LODWORD(v16));
      v40 = __p;
      ULHomeSlamLocalizationPipeline::getPointsVector(v14, v15, a4, &__p, v16);
      v19 = ULHomeSlamLocalizationPipeline::geoDistULPoints(v14, v15, v18);
      v20 = *buf;
      for (i = v43; i != v20; i -= 2)
      {
        v22 = *(i - 1);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      v43 = v20;
      ULTrajectoryPointCloud::getPointsAroundPoint(a3, buf, v14->f32[0], v14->f32[1], v14[1].f32[0], v10 + v19);
      v23 = *(a4 + 332);
      PointROI = ULHomeSlamLocalizationPipeline::getPointROI(v14, a5, v23);
      v25 = ULHomeSlamLocalizationPipeline::getPointROI(&v15->var0, a5, v23);
      v26 = 1.0;
      if (PointROI == -1 || PointROI != v25)
      {
        v28 = __p;
        v29 = v40;
        if (__p != v40)
        {
          v30 = 1.0;
          v31 = *buf;
          v32 = v43;
          do
          {
            v26 = 0.0;
            if (v31 == v32)
            {
              break;
            }

            v33 = -1.0;
            v34 = v31;
            do
            {
              v35 = *v34;
              v34 += 2;
              ULHomeSlamLocalizationPipeline::calcDirectionalProximityScore(v28, &v38, v35, a4);
              if (v36 > v33)
              {
                v33 = v36;
              }
            }

            while (v34 != v32);
            if (v33 == -1.0)
            {
              break;
            }

            if (v33 == 0.0)
            {
              break;
            }

            v30 = v30 * v33;
            v28 = (v28 + 12);
            v26 = v30;
          }

          while (v28 != v29);
        }
      }

      v12 = *a2;
      *(*a2 + 20 * v13++ + 12) = v26;
    }

    while (v13 < 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - v12) >> 2));
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  __p = buf;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&__p);
}