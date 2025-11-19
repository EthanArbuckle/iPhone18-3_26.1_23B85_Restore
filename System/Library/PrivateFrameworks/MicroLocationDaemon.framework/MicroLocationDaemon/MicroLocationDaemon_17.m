uint64_t std::__function::__value_func<BOOL ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<ULTriggerEngine::ULTriggerEngine(void)::$_1,std::allocator<ULTriggerEngine::ULTriggerEngine(void)::$_1>,BOOL ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5B408;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ULTriggerEngine::ULTriggerEngine(void)::$_1,std::allocator<ULTriggerEngine::ULTriggerEngine(void)::$_1>,BOOL ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> (*)(void),std::allocator<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> (*)(void)>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5B488;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> (*)(void),std::allocator<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> (*)(void)>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ULFSMEventQueue<ULTriggerEngineEvent,10ul>::operator[](uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 176) <= a2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "operator[]";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Index out of boundst, method:%{public, location:escape_only}s}", &v12, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::requestTrigger();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "operator[]";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Index out of boundst", "{msg%{public}.0s:Index out of boundst, method:%{public, location:escape_only}s}", &v12, 0x1Cu);
    }

    v8 = 0;
    *a3 = 0;
  }

  else
  {
    v4 = *(a1 + 160);
    v5 = *(a1 + 16 * ((v4 + a2) % 0xAuLL));
    v6 = a1 + 16 * v4;
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;
    *a3 = v5;
    *(a3 + 8) = v7;
    v8 = 1;
  }

  *(a3 + 16) = v8;
  v11 = *MEMORY[0x277D85DE8];
}

BOOL OUTLINED_FUNCTION_11(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

double ULTriggerEngineFSM::getTransitionTable(ULTriggerEngineFSM *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    ULTriggerEngineFSM::getTransitionTable();
  }

  qword_281456590 = 0;
  unk_281456598 = 0;
  qword_281456580 = 0;
  *algn_281456588 = ULTriggerEngineFSM::handleNewTriggerInIdle;
  qword_2814565A0 = ULTriggerEngineFSM::handlePendingTriggersUnsuspended;
  unk_2814565A8 = 0u;
  unk_2814565B8 = 0u;
  unk_2814565C8 = 0u;
  qword_2814565D8 = 0;
  unk_2814565E0 = 1;
  unk_2814565E8 = 0u;
  unk_2814565F8 = 0u;
  qword_281456608 = 0;
  unk_281456610 = 1;
  qword_281456618 = ULTriggerEngineFSM::handleNewTriggerInScan;
  xmmword_281456620 = xmmword_25921A970;
  qword_281456630 = 0;
  unk_281456638 = 0;
  qword_281456640 = 2;
  unk_281456648 = ULTriggerEngineFSM::handleScanComplete;
  result = 0.0;
  xmmword_281456650 = xmmword_2592201A0;
  qword_281456660 = 0;
  unk_281456668 = 0;
  qword_281456670 = 1;
  unk_281456678 = 0;
  qword_281456680 = 0;
  unk_281456688 = 1;
  qword_281456690 = 0;
  unk_281456698 = 0;
  qword_2814566A0 = 2;
  unk_2814566A8 = ULTriggerEngineFSM::handleNewTriggerInThrottle;
  xmmword_2814566B0 = xmmword_2592201A0;
  qword_2814566C0 = 0;
  unk_2814566C8 = 0;
  qword_2814566D0 = 2;
  unk_2814566D8 = 0;
  qword_2814566E0 = 0;
  unk_2814566E8 = 2;
  qword_2814566F0 = 0;
  unk_2814566F8 = 0;
  qword_281456700 = 2;
  unk_281456708 = 0;
  qword_281456710 = 0;
  unk_281456718 = 0;
  qword_281456720 = ULTriggerEngineFSM::handleThrottleCompleted;
  unk_281456728 = 0;
  return result;
}

void ULTriggerEngineFSM::handlePendingTriggersUnsuspended(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = (*(**(a1 + 768) + 32))(*(a1 + 768));
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngineFSM::handleNewTriggerInIdle();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289538;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "handlePendingTriggersUnsuspended";
    v10 = 1026;
    v11 = v2;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:pendingTriggersUnsuspended, method:%{public, location:escape_only}s, hasValidTriggers:%{public}hhd}", v5, 0x22u);
  }

  if (v2)
  {
    (*(**(a1 + 776) + 80))(*(a1 + 776));
  }

  v4 = *MEMORY[0x277D85DE8];
}

void ULTriggerEngineFSM::handleNewTriggerInScan(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4 && (*(*v4 + 16))(v4) == 675588685)
  {
    v5 = *(a2 + 8);
    v6 = *(v5 + 36);
    if (v6 < 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v17 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289538;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = "handleNewTriggerInScan";
        v29 = 1026;
        LODWORD(v30) = v6;
        _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:handleNewTriggerInScan, invalid scanning profile, method:%{public, location:escape_only}s, arriving scanning profile:%{public}d}", buf, 0x22u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v18 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        *buf = 68289538;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = "handleNewTriggerInScan";
        v29 = 1026;
        LODWORD(v30) = v6;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleNewTriggerInScan, invalid scanning profile", "{msg%{public}.0s:handleNewTriggerInScan, invalid scanning profile, method:%{public, location:escape_only}s, arriving scanning profile:%{public}d}", buf, 0x22u);
      }
    }

    else
    {
      if ((*(a1 + 840) & 1) == 0)
      {
        ULTriggerEngineFSM::handleNewTriggerInScan();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        ULScanningTrigger::description((v5 + 8), v21);
        v8 = v22;
        v9 = v21[0];
        ULScanningTrigger::description((a1 + 784), __p);
        v10 = v21;
        if (v8 < 0)
        {
          v10 = v9;
        }

        if (v20 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 68289794;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = "handleNewTriggerInScan";
        v29 = 2082;
        v30 = v10;
        v31 = 2082;
        v32 = v11;
        _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:handleNewTriggerInScan, method:%{public, location:escape_only}s, arriving trigger:%{public, location:escape_only}s, ongoing scan initiating trigger:%{public, location:escape_only}s}", buf, 0x30u);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        if (v22 < 0)
        {
          operator delete(v21[0]);
        }
      }

      if (*(a1 + 812) == v6)
      {
        (*(**(a1 + 776) + 56))(*(a1 + 776), v5 + 8);
      }

      else
      {
        if (*(v5 + 40) > *(a1 + 816))
        {
          (*(**(a1 + 776) + 40))(*(a1 + 776));
        }

        (*(**(a1 + 776) + 16))(*(a1 + 776), v5 + 8);
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      *buf = 68289538;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "handleNewTriggerInScan";
      v29 = 2050;
      v30 = v13;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:handleNewTriggerInScan, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v14))
    {
      v15 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      *buf = 68289538;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "handleNewTriggerInScan";
      v29 = 2050;
      v30 = v15;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleNewTriggerInScan, unexpected event data", "{msg%{public}.0s:handleNewTriggerInScan, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", buf, 0x26u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_25912CEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULTriggerEngineFSM::handleScanComplete(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4 && (*(*v4 + 16))(v4) == -980164530)
  {
    v5 = *(a2 + 8);
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v5 + 8);
      v14 = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "handleScanComplete";
      v20 = 1026;
      LODWORD(v21) = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:scan completed, method:%{public, location:escape_only}s, scan succeeded?:%{public}hhd}", &v14, 0x22u);
    }

    *(a1 + 824) = *(v5 + 8) ^ 1;
    if (scanProfileToScanType(*(a1 + 812)) == 1)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 68289282;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 2082;
        v19 = "handleScanComplete";
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:localization scan completed, reset Motion fence if needed, method:%{public, location:escape_only}s}", &v14, 0x1Cu);
      }

      (*(**(a1 + 776) + 72))(*(a1 + 776));
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      v14 = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "handleScanComplete";
      v20 = 2050;
      v21 = v10;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:handleScanComplete, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", &v14, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v11))
    {
      v12 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      v14 = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "handleScanComplete";
      v20 = 2050;
      v21 = v12;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleScanComplete, unexpected event data", "{msg%{public}.0s:handleScanComplete, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", &v14, 0x26u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void ULTriggerEngineFSM::handleNewTriggerInThrottle(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4 && (*(*v4 + 16))(v4) == 675588685)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      v6 = **v5;
    }

    else
    {
      v7 = 0;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      ULScanningTrigger::description((v7 + 8), __p);
      if (v16 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 68289538;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "handleNewTriggerInThrottle";
      v23 = 2082;
      v24 = v13;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:handleNewTriggerInThrottle, method:%{public, location:escape_only}s, arriving trigger:%{public, location:escape_only}s}", buf, 0x26u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(**(a1 + 776) + 16))(*(a1 + 776), v7 + 8);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      *buf = 68289538;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "handleNewTriggerInThrottle";
      v23 = 2050;
      v24 = v9;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:handleNewTriggerInThrottle, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v10))
    {
      v11 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      *buf = 68289538;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "handleNewTriggerInThrottle";
      v23 = 2050;
      v24 = v11;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleNewTriggerInThrottle, unexpected event data", "{msg%{public}.0s:handleNewTriggerInThrottle, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", buf, 0x26u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t ULTriggerEngineFSM::handleThrottleCompleted(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngineFSM::handleNewTriggerInIdle();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (*(**(a1 + 768) + 32))(*(a1 + 768));
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "handleThrottleCompleted";
    v11 = 1026;
    v12 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:throttle completed, method:%{public, location:escape_only}s, has more triggers to process ?:%{public}hhd}", v6, 0x22u);
  }

  result = (*(**(a1 + 768) + 32))(*(a1 + 768));
  if (result)
  {
    result = (*(**(a1 + 776) + 80))(*(a1 + 776));
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULTriggerEngineFSM::enterThrottleState(ULTriggerEngineFSM *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 840))
  {
    v1 = this;
    if (onceToken_MicroLocation_Default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    ULTriggerEngineFSM::enterThrottleState();
  }

  ULTriggerEngineFSM::handleNewTriggerInIdle();
LABEL_3:
  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v1[824];
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "enterThrottleState";
    v11 = 1026;
    v12 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:enter throttle state, method:%{public, location:escape_only}s, should generate retry trigger?:%{public}hhd}", v6, 0x22u);
  }

  ULTriggerEngineFSM::retryScanIfNeeded(v1);
  result = ULTriggerEngineFSM::scheduleThrottleTimer(v1);
  if (v1[840] == 1)
  {
    v1[840] = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULTriggerEngineFSM::ULTriggerEngineFSM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  ULTriggerEngineFSM::getTransitionTable(a1);
  memcpy(__dst, &qword_281456580, sizeof(__dst));
  *a1 = &unk_286A5B328;
  *(a1 + 8) = 0;
  memcpy((a1 + 16), __dst, 0x1B0uLL);
  v8 = *&off_286A5B5C8;
  *(a1 + 448) = ULTriggerEngineFSM::getEnterActions(void)::enterActions;
  *(a1 + 464) = v8;
  *(a1 + 480) = xmmword_286A5B5D8;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = ULTriggerEngineFSM::printEvent;
  *(a1 + 552) = 0;
  *(a1 + 560) = ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::printState;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0;
  *a1 = &unk_286A5B5F8;
  *(a1 + 768) = a2;
  *(a1 + 776) = a3;
  *(a1 + 784) = 0;
  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::__value_func[abi:ne200100](a1 + 856, a4);
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

void ULTriggerEngineFSM::retryScanIfNeeded(ULTriggerEngineFSM *this)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 824) == 1)
  {
    if (*(this + 848) > 4u)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 68289538;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2082;
        v13 = "retryScanIfNeeded";
        v14 = 1026;
        v15 = 5;
        _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:max number of retry attempt reached, method:%{public, location:escape_only}s, max retry count:%{public}d}", &v8, 0x22u);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v2 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(this + 848);
        v8 = 68289794;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2082;
        v13 = "retryScanIfNeeded";
        v14 = 1026;
        v15 = v3;
        v16 = 1026;
        v17 = 5;
        _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:create and handle retry trigger, method:%{public, location:escape_only}s, retry count:%{public}d, max retry count:%{public}d}", &v8, 0x28u);
      }

      v4 = *(this + 97);
      ULScanTriggerSettings::ULScanTriggerSettings(&v8, -1, *(this + 203), 1);
      (*(*v4 + 24))(v4, 4, &v8);
      ++*(this + 848);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "retryScanIfNeeded";
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:reset retry count, method:%{public, location:escape_only}s}", &v8, 0x1Cu);
    }

    *(this + 848) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t ULTriggerEngineFSM::scheduleThrottleTimer(ULTriggerEngineFSM *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = 0.0;
  if (*(this + 104) != -1.79769313e308)
  {
    std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::operator()[abi:ne200100](this + 856);
    v2 = v3 - *(this + 104);
  }

  if (v2 >= 5.0)
  {
    v4 = 0.1;
  }

  else
  {
    v4 = 5.0 - v2;
  }

  v8 = v4;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngineFSM::handleNewTriggerInIdle();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "scheduleThrottleTimer";
    v15 = 1026;
    v16 = v4;
    v17 = 1026;
    v18 = v2;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting throttle timer, method:%{public, location:escape_only}s, Throttle duration:%{public}d, Scan duration:%{public}d}", buf, 0x28u);
  }

  result = (*(**(this + 97) + 48))(*(this + 97), &v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 ULTriggerEngineFSM::scanSessionContext@<Q0>(ULTriggerEngineFSM *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 50);
  *a2 = *(this + 49);
  *(a2 + 16) = v2;
  result = *(this + 51);
  v4 = *(this + 52);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

void ULTriggerEngineFSM::~ULTriggerEngineFSM(ULTriggerEngineFSM *this)
{
  *this = &unk_286A5B5F8;
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](this + 856);

  ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::~ULStateMachine(this);
}

{
  *this = &unk_286A5B5F8;
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](this + 856);
  ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::~ULStateMachine(this);

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_96()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t ULTriggerQueue::ULTriggerQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 440; i += 40)
  {
    ULScanningTrigger::ULScanningTrigger((a1 + i));
  }

  do
  {
    ULScanningTrigger::ULScanningTrigger((a1 + i));
    i += 40;
  }

  while (i != 880);
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::__value_func[abi:ne200100](a1 + 912, a4);
  std::__function::__value_func<BOOL ()(int)>::__value_func[abi:ne200100](a1 + 944, a2);
  std::__function::__value_func<BOOL ()(int)>::__value_func[abi:ne200100](a1 + 976, a3);
  return a1;
}

void sub_25912E144(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(int)>::~__value_func[abi:ne200100](v1 + 944);
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](v1 + 912);
  _Unwind_Resume(a1);
}

void ULTriggerQueue::logQueueFullError(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerQueue::logQueueFullError();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:ULTriggerQueue, high priority queue is full}", &v8, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerQueue::logQueueFullError();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v4 = "ULTriggerQueue, high priority queue is full";
      v5 = "{msg%{public}.0s:ULTriggerQueue, high priority queue is full}";
LABEL_18:
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v4, v5, &v8, 0x12u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerQueue::logQueueFullError();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:ULTriggerQueue, low priority queue is full}", &v8, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerQueue::logQueueFullError();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v4 = "ULTriggerQueue, low priority queue is full";
      v5 = "{msg%{public}.0s:ULTriggerQueue, low priority queue is full}";
      goto LABEL_18;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_97()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__value_func<BOOL ()(int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void sub_25912E524(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25912E7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);

  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v8 - 56));
  _Unwind_Resume(a1);
}

void sub_25912E894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25912EA24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25912EF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  if (a33 == 1 && a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

BOOL ULBleIdentityItem::PredicateItem::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3 || *(a2 + 8) != *(a3 + 8))
  {
    return 0;
  }

  v5 = *(a3 + 40);
  v6 = *(a2 + 40);
  result = v6 == v5;
  if (v6 == v5 && v6 != 0)
  {
    v8 = *(a2 + 39);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 24);
    }

    v10 = *(a3 + 39);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 24);
    }

    if (v8 != v10)
    {
      return 0;
    }

    if (v9 >= 0)
    {
      v12 = (a2 + 16);
    }

    else
    {
      v12 = *(a2 + 16);
    }

    if (v11 >= 0)
    {
      v13 = (a3 + 16);
    }

    else
    {
      v13 = *(a3 + 16);
    }

    return memcmp(v12, v13, v8) == 0;
  }

  return result;
}

unint64_t ULBleIdentityItem::HashItem::operator()(uint64_t a1, uint64_t a2)
{
  result = 0;
  for (i = 0; i != 16; ++i)
  {
    result ^= (result << 6) + (result >> 2) + 2654435769u + *(a2 + i);
  }

  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_98()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_3()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

uint64_t ULBleIdentityItem::ULBleIdentityItem(uint64_t a1, _OWORD *a2, __int128 *a3, __int128 *a4, __int128 *a5, void *a6)
{
  *a1 = *a2;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 16), a3);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 48), a4);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 80), a5);
  *(a1 + 112) = *a6;
  return a1;
}

void sub_25912F324(_Unwind_Exception *exception_object)
{
  if (*(v1 + 72) == 1 && *(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void ULBleIdentityItem::~ULBleIdentityItem(void **this)
{
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 72) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void sub_25912F6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25912FBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __p = &a15;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_259130A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a29 == 1 && a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  ULBleIdentityItem::~ULBleIdentityItem(&a35);
  _Unwind_Resume(a1);
}

std::string *__copy_helper_block_ea8_40c23_ZTS17ULBleIdentityItem(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 56), (a2 + 56));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 88), (a2 + 88));
  result = std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 120), (a2 + 120));
  *(a1 + 152) = *(a2 + 152);
  return result;
}

void sub_259130BEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 112) == 1 && *(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 80) == 1 && *(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c23_ZTS17ULBleIdentityItem(uint64_t a1)
{
  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    v2 = *(a1 + 56);

    operator delete(v2);
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_99()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<ULBluetoothIdentityDO>::__emplace_back_slow_path<boost::uuids::uuid const&,std::string &,std::string &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, double *a5)
{
  v5 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v9 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULBluetoothIdentityDO>>(a1, v9);
  }

  v16 = 0;
  v17 = 72 * v5;
  std::construct_at[abi:ne200100]<ULBluetoothIdentityDO,boost::uuids::uuid const&,std::string &,std::string &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULBluetoothIdentityDO*>(72 * v5, a2, a3, a4, a5);
  v18 = 72 * v5 + 72;
  v10 = a1[1];
  v11 = 72 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULBluetoothIdentityDO>,ULBluetoothIdentityDO*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ULBluetoothIdentityDO>::~__split_buffer(&v16);
  return v15;
}

void sub_259130F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULBluetoothIdentityDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<ULBluetoothIdentityDO,boost::uuids::uuid const&,std::string &,std::string &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULBluetoothIdentityDO*>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double *a5)
{
  v8 = *a2;
  v9 = a2[1];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a3, *(a3 + 8));
  }

  else
  {
    v12 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  ULBluetoothIdentityDO::ULBluetoothIdentityDO(a1, v8, v9, &v12, &__p, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_259131010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = v2;
      v2 = *v2;
      if (*(v3 + 120) == 1 && *(v3 + 119) < 0)
      {
        operator delete(v3[12]);
      }

      if (*(v3 + 88) == 1 && *(v3 + 87) < 0)
      {
        operator delete(v3[8]);
      }

      if (*(v3 + 56) == 1 && *(v3 + 55) < 0)
      {
        operator delete(v3[4]);
      }

      operator delete(v3);
    }

    while (v2);
  }
}

void sub_259131198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<ULBleIdentityItem,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_259131274(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<ULBleIdentityItem,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = ULBleIdentityItem::HashItem::operator()(a1, (a2 + 2));
  v2[1] = v4;
  v5 = std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 2));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t std::construct_at[abi:ne200100]<ULBleIdentityItem,boost::uuids::uuid const&,std::optional<std::string> &,std::optional<std::string> &,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULBleIdentityItem*>(uint64_t a1, _OWORD *a2, __int128 *a3, __int128 *a4, uint64_t a5, void *a6)
{
  LOBYTE(__p) = 0;
  v10 = 0;
  ULBleIdentityItem::ULBleIdentityItem(a1, a2, a3, a4, &__p, a6);
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_25913134C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == a2)
          {
            if (ULBleIdentityItem::PredicateItem::operator()(a1, (v11 + 2), a3))
            {
              return v11;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v12 >= v4)
              {
                v12 %= v4;
              }
            }

            else
            {
              v12 &= v4 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<ULBleIdentityItem,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 120) == 1 && *(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    if (*(__p + 88) == 1 && *(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }

    if (*(__p + 56) == 1 && *(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__emplace_unique_key_args<ULBleIdentityItem,ULBleIdentityItem const&>(void *a1, uint64_t a2)
{
  v4 = ULBleIdentityItem::HashItem::operator()(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__construct_node_hash<ULBleIdentityItem const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!ULBleIdentityItem::PredicateItem::operator()(a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_259131858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<ULBleIdentityItem,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_259131924(_Unwind_Exception *a1)
{
  if (*(v2 + 88) == 1 && *(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  if (*(v2 + 56) == 1 && *(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<ULBleIdentityItem,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_259131B08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t ULBLERssiBridge::ULBLERssiBridge(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = &unk_286A5B728;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = a3;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  v6 = a1 + 80;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  v7 = v5;
  CLMicroLocationUtils::getAnchorDeviceModelAllowedMap(&v11);
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(a1 + 72, *(a1 + 80));
  v8 = v12;
  *(a1 + 72) = v11;
  *(a1 + 80) = v8;
  v9 = v13;
  *(a1 + 88) = v13;
  if (v9)
  {
    *(v8 + 16) = v6;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
    v8 = 0;
  }

  else
  {
    *(a1 + 72) = v6;
  }

  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&v11, v8);

  return a1;
}

void sub_259131E80(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(v3, *(v1 + 80));
  std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(v4, *(v1 + 48));

  _Unwind_Resume(a1);
}

void ULBLERssiBridge::~ULBLERssiBridge(ULBLERssiBridge *this)
{
  *this = &unk_286A5B728;
  [*(this + 1) invalidate];
  v2 = *(this + 1);
  *(this + 1) = 0;

  [*(this + 2) invalidate];
  v3 = *(this + 2);
  *(this + 2) = 0;

  std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(this + 40, *(this + 6));
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  *(this + 6) = 0;
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(this + 72, *(this + 10));
  std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(this + 40, *(this + 6));
}

{
  ULBLERssiBridge::~ULBLERssiBridge(this);

  JUMPOUT(0x259CA1F90);
}

void ULBLERssiBridge::addTechnologyProfile(ULBLERssiBridge *this, const ULBleTechnologyProfile *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v8[0] = *a2;
  *v9 = *a2;
  v4 = *(a2 + 3);
  *&v9[16] = *(a2 + 2);
  *&v9[24] = v4;
  v10 = *(a2 + 8);
  v11 = *(a2 + 5);
  v12 = *(a2 + 6);
  v13 = *(a2 + 7);
  std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULBleTechnologyProfile>>(this + 40, v8);

  if (onceToken_MicroLocation_Default != -1)
  {
    ULBLERssiBridge::addTechnologyProfile();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v8[0] = 68289538;
    v8[1] = 0;
    *v9 = 2082;
    *&v9[2] = "";
    *&v9[10] = 2082;
    *&v9[12] = "addTechnologyProfile";
    *&v9[20] = 1026;
    *&v9[22] = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULBLERssiBridge: Add BLE Profile, method:%{public, location:escape_only}s, index:%{public}d}", v8, 0x22u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ULBLERssiBridge::removeTechnologyProfile(ULBLERssiBridge *this, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::__erase_unique<int>(this + 40, &v4))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::addTechnologyProfile();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "removeTechnologyProfile";
      v11 = 1026;
      v12 = v4;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULBLERssiBridge: BLE profile Removed, method:%{public, location:escape_only}s, index:%{public}d}", buf, 0x22u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t ULBLERssiBridge::initiateScanRequestByIndex(ULBLERssiBridge *this, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!*(this + 16))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::initiateScanRequestByIndex();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      v13 = 138412290;
      *v14 = v8;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "Got request to initiate a scan request with profile index: %@ while an active scan is ongoing.", &v13, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = *(this + 6);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = (this + 48);
  do
  {
    if (v4[8] >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * (v4[8] < a2)];
  }

  while (v4);
  if (v5 == (this + 48) || v5[8] > a2)
  {
LABEL_9:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::initiateScanRequestByIndex();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      v13 = 138412290;
      *v14 = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "BLE profile with index: %@ doesn't exist.", &v13, 0xCu);
    }

LABEL_18:

    started = 0;
    goto LABEL_19;
  }

  ULBLERssiBridge::activateDiscoveriesIfNeeded(this, (v5 + 10));
  started = ULBLERssiBridge::startDiscovery(this, (v5 + 10));
  if (onceToken_MicroLocation_Default != -1)
  {
    ULBLERssiBridge::initiateScanRequestByIndex();
  }

  v12 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 68289794;
    *v14 = 0;
    *&v14[4] = 2082;
    *&v14[6] = "";
    v15 = 2082;
    v16 = "initiateScanRequestByIndex";
    v17 = 1026;
    v18 = started;
    v19 = 1026;
    v20 = a2;
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:start BLE discovery, method:%{public, location:escape_only}s, Scan Initiated:%{public}d, profileIndex:%{public}d}", &v13, 0x28u);
  }

LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return started;
}

void ULBLERssiBridge::activateDiscoveriesIfNeeded(ULBLERssiBridge *this, const ULBleTechnologyProfile *a2)
{
  if (!*(this + 1))
  {
    v4 = objc_opt_new();
    v5 = *(this + 1);
    *(this + 1) = v4;

    [*(this + 1) setDispatchQueue:*(this + 3)];
    [*(this + 1) setDiscoveryFlags:0];
    objc_initWeak(&location, *(this + 1));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke;
    v14[3] = &unk_2798D4E58;
    v15[1] = this;
    objc_copyWeak(v15, &location);
    [*(this + 1) setDeviceFoundHandler:v14];
    v6 = *(this + 1);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_2;
    v13[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v13[4] = this;
    [v6 activateWithCompletion:v13];
    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  if (!*(this + 2))
  {
    if (ULSettings::get<ULSettings::BleNonLeechingScannerEnabled>())
    {
      v7 = objc_opt_new();
      v8 = *(this + 2);
      *(this + 2) = v7;

      [*(this + 2) setDispatchQueue:*(this + 3)];
      [*(this + 2) setDiscoveryFlags:0];
      [*(this + 2) setUseCase:*(a2 + 2)];
      objc_initWeak(&location, *(this + 2));
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_15;
      v11[3] = &unk_2798D4E58;
      v12[1] = this;
      objc_copyWeak(v12, &location);
      [*(this + 2) setDeviceFoundHandler:v11];
      v9 = *(this + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_2_16;
      v10[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v10[4] = this;
      [v9 activateWithCompletion:v10];
      objc_destroyWeak(v12);
      objc_destroyWeak(&location);
    }
  }
}

void sub_259132724(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t ULBLERssiBridge::startDiscovery(ULBLERssiBridge *this, const ULBleTechnologyProfile *a2)
{
  started = ULBLERssiBridge::startSameAccountScanner(this, a2);
  if (!*(this + 2))
  {
    goto LABEL_9;
  }

  if (ULSettings::get<ULSettings::BleNonLeechingScannerEnabled>())
  {
    goto LABEL_8;
  }

  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleForceScanNearbyInfoV2"];
  v8 = [v6 objectForKey:v7];
  if (!v8)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
LABEL_6:
    v9 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v10 = v9;

  if (v10)
  {
LABEL_8:
    v11 = ULBLERssiBridge::startFamilyAccountScanner(this, a2);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11 | started;
}

uint64_t ULBLERssiBridge::stopScan(ULBLERssiBridge *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULBLERssiBridge::initiateScanRequestByIndex();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "Unregister all BLE scan sessions", v4, 2u);
  }

  *(this + 16) = 1;
  return ULBLERssiBridge::stopDiscovery(this);
}

uint64_t ULBLERssiBridge::stopDiscovery(id *this)
{
  [this[1] removeAllDiscoveryTypes];
  [this[1] setDiscoveryFlags:0];
  [this[1] setDeviceFilter:0];
  [this[1] setLabel:0];
  result = ULSettings::get<ULSettings::BleNonLeechingScannerEnabled>();
  if (result)
  {
    [this[2] removeAllDiscoveryTypes];
    [this[2] setDiscoveryFlags:0];
    [this[2] setDeviceFilter:0];
    v3 = this[2];

    return [v3 setOobKeys:0];
  }

  return result;
}

void ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    ULBLERssiBridge::onBleBeaconReceived(v3, v5);
  }
}

void ULBLERssiBridge::onBleBeaconReceived(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  dispatch_assert_queue_V2(*(a1 + 24));
  if (!v3)
  {
    goto LABEL_30;
  }

  v5 = [v3 deviceFlags];
  v6 = [v3 nearbyInfoV2DecryptedFlags];
  if ((v5 & 0x180) == 0 && (v6 & 4) == 0)
  {
    goto LABEL_30;
  }

  v7 = [v3 discoveryFlags];
  v8 = [v3 deviceFlags];
  v9 = [v3 deviceFlags];
  if (onceToken_MicroLocationQE_Default != -1)
  {
    ULBLERssiBridge::onBleBeaconReceived();
  }

  v10 = logObject_MicroLocationQE_Default;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v33 = [v3 idsDeviceID];
    v32 = [v33 UTF8String];
    v11 = [v3 identifier];
    v31 = v4;
    v12 = v8;
    v13 = [v11 UTF8String];
    v14 = [v3 model];
    v15 = [v14 UTF8String];
    [v3 bleAdvertisementTimestamp];
    *buf = 68291075;
    v43 = 0;
    v44 = 2082;
    v45 = "";
    v46 = 2081;
    v47 = v32;
    v48 = 2081;
    v49 = v13;
    v50 = 2081;
    v51 = v15;
    v52 = 1025;
    v53 = (*&v7 & 0x80040) != 0;
    v54 = 1025;
    v55 = (v12 >> 7) & 1;
    v56 = 1025;
    v57 = (v9 >> 15) & 1;
    v58 = 2050;
    v59 = v16;
    v60 = 1026;
    v61 = [v3 rssi];
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Ble Beacon Received, IDS ID:%{private, location:escape_only}s, BT identifier:%{private, location:escape_only}s, Model:%{private, location:escape_only}s, is device nearbyInfo or nearbyAction type?:%{private}hhd, is device same account?:%{private}hhd, is device cloud paired?:%{private}hhd, AdvertisementTimestamp:%{public}.3f, RSSI:%{public}d}", buf, 0x52u);

    v4 = v31;
  }

  v17 = [v3 model];
  if (v17)
  {
    v18 = [v3 model];
    v19 = v18;
    std::string::basic_string[abi:ne200100]<0>(v37, [v18 UTF8String]);
    v39 = 1;
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v39 = 0;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, v37);
  std::map<std::string,DeviceModel>::map[abi:ne200100](v34, a1 + 72);
  v20 = CLMicroLocationUtils::convertModelStringToDeviceModel(&__p, v34);
  v21 = v3;
  v41 = v20;
  v22 = [v21 idsDeviceID];
  v23 = v22 == 0;

  if (!v23)
  {
    v24 = [v21 idsDeviceID];
    v25 = v24;
    v26 = std::string::basic_string[abi:ne200100]<0>(v62, [v24 UTF8String]);
    CLMicroLocationProtobufHelper::uuidFromStdString(v26, &v64);
    if (v63 < 0)
    {
      operator delete(*v62);
    }

    if (v65)
    {
      [v21 bleAdvertisementTimestamp];
      v40 = v27;
      v28 = [v21 rssi];
      if ((v65 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULBLEMeasurementDO::ULBLEMeasurementDO(v62, &v40, v28, &v64, &v41);
      ULBLEMeasurementDO::ULBLEMeasurementDO(buf, v62);
      BYTE2(v49) = 1;
      goto LABEL_22;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::addTechnologyProfile();
    }

    v29 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v62 = 0;
      _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_ERROR, "Invalid CBDevice IDS UUID", v62, 2u);
    }
  }

  buf[0] = 0;
  BYTE2(v49) = 0;
LABEL_22:

  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(v34, v34[1]);
  if (v36 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v49 & 0x10000) != 0)
  {
    (*(**(a1 + 32) + 16))(*(a1 + 32), buf);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37[0]);
  }

LABEL_30:
  objc_autoreleasePoolPop(v4);

  v30 = *MEMORY[0x277D85DE8];
}

void sub_259132EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&a12, a13);
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 == 1 && a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    [*(v4 + 8) invalidate];
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"CBDiscovery activation error:", v3];
    CLMicroLocationErrorHandling::reportError(v6, v7);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::initiateScanRequestByIndex();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      *buf = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CBDiscovery same account activated successfully}", buf, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2591330FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::BleNonLeechingScannerEnabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleNonLeechingScannerEnabled"];
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

void ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_15(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    ULBLERssiBridge::onBleBeaconReceived(v3, v5);
  }
}

void ___ZN15ULBLERssiBridge27activateDiscoveriesIfNeededERK22ULBleTechnologyProfile_block_invoke_2_16(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    [*(v4 + 16) invalidate];
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"CBDiscovery activation error:", v3];
    CLMicroLocationErrorHandling::reportError(v6, v7);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::initiateScanRequestByIndex();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CBDiscovery family account activated successfully}", buf, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2591333D0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t ULBLERssiBridge::startSameAccountScanner(ULBLERssiBridge *this, const ULBleTechnologyProfile *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 21) & 0x10) != 0 || [*(a2 + 7) count])
  {
    goto LABEL_8;
  }

  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleForceRequestedType15Type16ScanWhenDeviceFilterIsEmpty"];
  v7 = [v5 objectForKey:v6];
  if (!v7)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
LABEL_6:
    v8 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v9 = v8;

  if (v9)
  {
LABEL_8:
    *(this + 16) = 0;
    [*(this + 1) setDiscoveryFlags:*(a2 + 2)];
    [*(this + 1) setLabel:@"ULSameAccount"];
    [*(this + 1) setUseCase:*(a2 + 2)];
    v10 = +[ULDefaultsSingleton shared];
    v11 = [v10 defaultsDictionary];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleType15andType16DeviceFilterIsSet"];
    v13 = [v11 objectForKey:v12];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v13 BOOLValue];
    }

    else
    {
      v14 = [MEMORY[0x277CBEC38] BOOLValue];
    }

    v15 = v14;

    if (v15)
    {
      if ([*(a2 + 7) count])
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULBLERssiBridge::initiateScanRequestByIndex();
        }

        v16 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a2 + 7);
          v24 = 68289282;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          v28 = 2114;
          v29 = v17;
          _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:scanner type 15, 16 deviceFilter is, deviceFilter:%{public, location:escape_only}@}", &v24, 0x1Cu);
        }

        [*(this + 1) setDeviceFilter:*(a2 + 7)];
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULBLERssiBridge::initiateScanRequestByIndex();
        }

        v18 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          v24 = 68289026;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:scanner type 15, 16 deviceFilter is empty for initiated scan}", &v24, 0x12u);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULBLERssiBridge::addTechnologyProfile();
        }

        v19 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(logObject_MicroLocation_Default))
        {
          v24 = 68289026;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "scanner type 15, 16 deviceFilter is empty for initiated scan", "{msg%{public}.0s:scanner type 15, 16 deviceFilter is empty for initiated scan}", &v24, 0x12u);
        }
      }
    }

    [*(this + 1) setBleScanRate:*(a2 + 1)];
    result = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULBLERssiBridge::initiateScanRequestByIndex();
    }

    v22 = logObject_MicroLocation_Default;
    v23 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v23)
    {
      v24 = 68289026;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:will not conduct nearbyAction, nearbyInfo requested scan because device filter is empty}", &v24, 0x12u);
      result = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULBLERssiBridge::startFamilyAccountScanner(ULBLERssiBridge *this, const ULBleTechnologyProfile *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 2);
  if ((v4 & 0x100000000000) == 0)
  {
    goto LABEL_8;
  }

  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleNonLeechingBackgroundScanEnabled"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v10 = v9;

  if (v10)
  {
    v4 = *(a2 + 2);
LABEL_8:
    *(this + 16) = 0;
    [*(this + 2) setDiscoveryFlags:v4];
    [*(this + 2) addDiscoveryType:*(a2 + 8)];
    v11 = +[ULDefaultsSingleton shared];
    v12 = [v11 defaultsDictionary];

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleType22DeviceFilterIsSet"];
    v14 = [v12 objectForKey:v13];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v14 BOOLValue];
    }

    else
    {
      v15 = [MEMORY[0x277CBEC38] BOOLValue];
    }

    v16 = v15;

    if (v16)
    {
      [*(this + 2) setOobKeys:*(a2 + 3)];
      [*(this + 2) setDeviceFilter:*(a2 + 6)];
      if (onceToken_MicroLocation_Default != -1)
      {
        ULBLERssiBridge::initiateScanRequestByIndex();
      }

      v17 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a2 + 6);
        v24 = 68289282;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2114;
        v29 = v18;
        _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:scanner type 22 deviceFilter is, deviceFilter:%{public, location:escape_only}@}", &v24, 0x1Cu);
      }
    }

    [*(this + 2) setLabel:@"ULFamilyAccount"];
    [*(this + 2) setBleScanRate:*(a2 + 1)];
    result = 1;
    goto LABEL_23;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULBLERssiBridge::initiateScanRequestByIndex();
  }

  v20 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BleNonLeechingBackgroundScanEnabled is disabled}", &v24, 0x12u);
  }

  v22 = *(this + 2);
  v21 = (this + 16);
  [v22 removeAllDiscoveryTypes];
  [*v21 setDiscoveryFlags:0];
  [*v21 setDeviceFilter:0];
  [*v21 setOobKeys:0];
  result = 0;
LABEL_23:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_100()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_4()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

void std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<int,ULBleTechnologyProfile>,void *>>>::destroy[abi:ne200100]<std::pair<int const,ULBleTechnologyProfile>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<int,ULBleTechnologyProfile>,void *>>>::destroy[abi:ne200100]<std::pair<int const,ULBleTechnologyProfile>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
}

uint64_t *std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULBleTechnologyProfile>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::__construct_node<std::pair<int,ULBleTechnologyProfile>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::__erase_unique<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,ULBleTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULBleTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULBleTechnologyProfile>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<int,ULBleTechnologyProfile>,void *>>>::destroy[abi:ne200100]<std::pair<int const,ULBleTechnologyProfile>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_101()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *CLMicroLocationMotionBridge::CLMicroLocationMotionBridge(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *a1 = &unk_286A5B808;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v6 = v5;
  a1[6] = v6;
  FenceRadius = CLMicroLocationMotionBridge::getFenceRadius(v6);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
  aBlock[3] = &unk_2798D4EA0;
  v29 = a1;
  v8 = v6;
  v28 = v8;
  v9 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2;
  v24[3] = &unk_2798D4EC8;
  v26 = a1;
  v10 = v8;
  v25 = v10;
  v11 = _Block_copy(v24);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3;
  v20[3] = &unk_2798D4EF0;
  v23 = a1;
  v12 = v10;
  v21 = v12;
  v22 = @"ULPDRFence";
  v13 = _Block_copy(v20);
  v14 = [ULCMPDRFenceProvider alloc];
  *&v15 = FenceRadius;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v17 = [(ULCMPDRFenceProvider *)v14 initWithFenceIdentifier:@"ULPDRFence" queue:v12 radiusInMeters:v16 callback:v9 statusCallback:v13 errorCallback:v11];
  v18 = a1[2];
  a1[2] = v17;

  return a1;
}

float CLMicroLocationMotionBridge::getFenceRadius(CLMicroLocationMotionBridge *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = +[ULDefaultsSingleton shared];
  v2 = [v1 defaultsDictionary];

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULPedestrianFenceRadiusInMeters"];
  v4 = [v2 objectForKey:v3];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v4 floatValue];
  }

  else
  {
    [&unk_286A72E10 floatValue];
  }

  v6 = v5;

  if ([MEMORY[0x277D28868] isIpad])
  {
    v7 = +[ULDefaultsSingleton shared];
    v8 = [v7 defaultsDictionary];

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULPedestrianFenceRadiusForIpadInMeters"];
    v10 = [v8 objectForKey:v9];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v10 floatValue];
    }

    else
    {
      [&unk_286A72E10 floatValue];
    }

    v6 = v11;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v12 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 68289282;
    v15[1] = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2050;
    v19 = v6;
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Motion Bridge, getFenceRadius, fence size in m:%{public}.2f}", v15, 0x1Cu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

void ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  [v5 timeIntervalSinceReferenceDate];
  v9 = v8;
  CLMicroLocationMotionBridge::stopAllStatusTimers(v7);
  v10 = *(v7 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
  (*(*v10 + 16))(v10, __p, v9);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = +[ULEventLog shared];
  [v11 log:@"Motion Event Status: Motion Bridge Fence Cross Geofence"];
}

void sub_259134CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  v11 = +[ULEventLog shared];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Motion Event Status: Motion Bridge Geofence Error code: %u", objc_msgSend(v7, "code")];
  [v11 log:v12];

  [v8 timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = *(v10 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
  (*(*v15 + 16))(v15, __p, v14);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_259134E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationMotionBridge::~CLMicroLocationMotionBridge(id *this)
{
  *this = &unk_286A5B808;
  [this[3] invalidate];
  v2 = this[3];
  this[3] = 0;

  [this[4] invalidate];
  v3 = this[4];
  this[4] = 0;
}

{
  CLMicroLocationMotionBridge::~CLMicroLocationMotionBridge(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationMotionBridge::handleFenceStatusTimerFire(id *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "handleFenceStatusTimerFire", v3, 2u);
  }

  CLMicroLocationMotionBridge::stopAllStatusTimersAndStartRaceDelayTimer(this);
}

void CLMicroLocationMotionBridge::stopAllStatusTimersAndStartRaceDelayTimer(id *this)
{
  v20 = *MEMORY[0x277D85DE8];
  CLMicroLocationMotionBridge::stopAllStatusTimers(this);
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxDelayAfterFenceStatusReportTimerFires"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 doubleValue];
  }

  else
  {
    [&unk_286A71F88 doubleValue];
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
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stopAllStatusTimersAndStartRaceDelayTimer: setting race delay timer to fire in the future, Delay to next fire:%{public}f}", buf, 0x1Cu);
  }

  [this[4] invalidate];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___ZN27CLMicroLocationMotionBridge41stopAllStatusTimersAndStartRaceDelayTimerEv_block_invoke;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = this;
  v10 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v9 repeats:MEMORY[0x277CBEC28] block:v13];
  v11 = this[4];
  this[4] = v10;

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t CLMicroLocationMotionBridge::handleRaceDelayTimerFire(id *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "handleRaceDelayTimerFire", v4, 2u);
  }

  CLMicroLocationMotionBridge::stopAllStatusTimers(this);
  return (*(*this[1] + 24))(this[1]);
}

void CLMicroLocationMotionBridge::setMotionFence(id *this)
{
  v2 = +[ULEventLog shared];
  [v2 log:@"Motion Event Status: Motion Bridge Geofence Set"];

  [this[2] setFence];

  CLMicroLocationMotionBridge::stopAllStatusTimersAndStartFenceStatusTimer(this);
}

uint64_t CLMicroLocationMotionBridge::clearMotionFence(id *this)
{
  v2 = +[ULEventLog shared];
  [v2 log:@"Motion Event Status: Motion Bridge Geofence Clear"];

  [this[2] clearFence];

  return CLMicroLocationMotionBridge::stopAllStatusTimers(this);
}

uint64_t CLMicroLocationMotionBridge::startMotionSession(id *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationMotionBridge::startMotionSession}", v5, 0x12u);
  }

  result = [this[2] startSession];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CLMicroLocationMotionBridge::stopMotionSession(id *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationMotionBridge::stopMotionSession}", v5, 0x12u);
  }

  result = [this[2] endSession];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CLMicroLocationStopMotionDetectionBridge::CLMicroLocationStopMotionDetectionBridge(uint64_t a1, uint64_t a2, void *a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *a1 = &unk_286A5B848;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  v67 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 128) = 0;
  v61 = v5;
  v62 = a1;
  *(a1 + 136) = v61;
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleEnable"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v11 = v10;

  if (v11)
  {
    v58 = a1 + 64;
    v12 = +[ULDefaultsSingleton shared];
    v13 = [v12 defaultsDictionary];

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleRadiuses"];
    v15 = [v13 objectForKey:v14];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v15, buf);
    }

    else
    {
      ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_33MotionStopDetectionModuleRadiusesEE12defaultValueE_, 2uLL, buf);
    }

    v60 = *buf;

    v17 = +[ULDefaultsSingleton shared];
    v18 = [v17 defaultsDictionary];

    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleOngoingTimerTimeout"];
    v20 = [v18 objectForKey:v19];
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v20 doubleValue];
    }

    else
    {
      [&unk_286A72DF0 doubleValue];
    }

    v22 = v21;

    v23 = +[ULDefaultsSingleton shared];
    v24 = [v23 defaultsDictionary];

    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleTimeouts"];
    v26 = [v24 objectForKey:v25];
    if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v26, buf);
    }

    else
    {
      ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_33MotionStopDetectionModuleTimeoutsEE12defaultValueE_, 2uLL, buf);
    }

    v65 = *buf;

    v27 = v60.i64[0];
    if ([MEMORY[0x277D28868] isIpad])
    {
      v28 = +[ULDefaultsSingleton shared];
      v29 = [v28 defaultsDictionary];

      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleIpadRadii"];
      v31 = [v29 objectForKey:v30];
      if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v31, buf);
      }

      else
      {
        ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_34MotionStopDetectionModuleIpadRadiiEE12defaultValueE_, 2uLL, buf);
      }

      v60 = *buf;

      if (v27)
      {
        operator delete(v27);
      }

      v32 = +[ULDefaultsSingleton shared];
      v33 = [v32 defaultsDictionary];

      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleIpadOngoingTimerTimeout"];
      v35 = [v33 objectForKey:v34];
      if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v35 doubleValue];
      }

      else
      {
        [&unk_286A72E00 doubleValue];
      }

      v22 = v36;

      v37 = +[ULDefaultsSingleton shared];
      v38 = [v37 defaultsDictionary];

      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleIpadTimeouts"];
      v40 = [v38 objectForKey:v39];
      if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v40, buf);
      }

      else
      {
        ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_37MotionStopDetectionModuleIpadTimeoutsEE12defaultValueE_, 2uLL, buf);
      }

      v59 = *buf;

      if (v65.i64[0])
      {
        operator delete(v65.i64[0]);
      }
    }

    else
    {
      v59 = v65;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN40CLMicroLocationStopMotionDetectionBridgeC2ERN36ULStopMotionDetectionBridgeInterface25IStopMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
    aBlock[3] = &unk_2798D4EA0;
    v82 = v62;
    v41 = v61;
    v81 = v41;
    v63 = _Block_copy(aBlock);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = ___ZN40CLMicroLocationStopMotionDetectionBridgeC2ERN36ULStopMotionDetectionBridgeInterface25IStopMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2;
    v77[3] = &unk_2798D4EC8;
    v79 = v62;
    v42 = v41;
    v78 = v42;
    v64 = _Block_copy(v77);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = ___ZN40CLMicroLocationStopMotionDetectionBridgeC2ERN36ULStopMotionDetectionBridgeInterface25IStopMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3;
    v75[3] = &unk_2798D4F18;
    v43 = v42;
    v76 = v43;
    v66 = _Block_copy(v75);
    v44 = vshrq_n_s64(vsubq_s64(vzip2q_s64(v60, v59), vzip1q_s64(v60, v59)), 3uLL);
    v45 = v44.i64[1];
    v46 = v44.i64[0];
    if (v44.i64[0] == v44.i64[1])
    {
      if ((vmovn_s64(vceqq_s64(vdupq_laneq_s64(v60, 1), v60)).u8[0] & 1) == 0)
      {
        if (v44.i64[0] <= 1uLL)
        {
          v47 = 1;
        }

        else
        {
          v47 = v44.i64[0];
        }

        v48 = v59.i64[0];
        v49 = v60.i64[0];
        do
        {
          *buf = *v49;
          *&buf[8] = *v48;
          buf[16] = 0;
          BYTE4(v90) = 0;
          CLMicroLocationStopMotionDetectionBridge::Config::toStr(buf, __p);
          v50 = [ULCMPDRFenceProvider alloc];
          if (v74 >= 0)
          {
            v51 = __p;
          }

          else
          {
            v51 = __p[0];
          }

          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:v51];
          v53 = [MEMORY[0x277CCABB0] numberWithDouble:*buf];
          v72 = [(ULCMPDRFenceProvider *)v50 initWithFenceIdentifier:v52 queue:v43 radiusInMeters:v53 callback:v63 statusCallback:v66 errorCallback:v64];

          v83 = buf;
          v84 = &v72;
          v85 = __p;
          std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<CLMicroLocationStopMotionDetectionBridge::Config &,ULCMPDRFenceProvider * {__strong}&>>(v67, __p);

          if (v74 < 0)
          {
            operator delete(__p[0]);
          }

          if (BYTE4(v90) == 1 && SBYTE3(v90) < 0)
          {
            operator delete(*&buf[16]);
          }

          ++v49;
          ++v48;
          --v47;
        }

        while (v47);
      }

      *&v68 = nan("");
      *(&v68 + 1) = v22;
      std::string::basic_string[abi:ne200100]<0>(&v69, "ongoingTimer");
      v71 = 1;
      CLMicroLocationStopMotionDetectionBridge::Element::Element(buf, &v68, 0);
      std::optional<CLMicroLocationStopMotionDetectionBridge::Element>::operator=[abi:ne200100]<CLMicroLocationStopMotionDetectionBridge::Element,void>(v58, buf);

      if (BYTE4(v90) == 1 && SBYTE3(v90) < 0)
      {
        operator delete(*&buf[16]);
      }

      if (v71 == 1 && v70 < 0)
      {
        operator delete(v69);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v54 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289794;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = 1;
        v87 = 2050;
        v88 = v46;
        v89 = 2050;
        v90 = v45;
        _os_log_impl(&dword_258FE9000, v54, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLMicroLocationStopMotionDetectionBridge CTOR, wrong configuration, object did not initialize, Stop detection enabled:%{public}hhd, Num Radiuses:%{public}lu, Num Timeouts:%{public}lu}", buf, 0x2Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v55 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        *buf = 68289794;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = 1;
        v87 = 2050;
        v88 = v46;
        v89 = 2050;
        v90 = v45;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v55, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLMicroLocationStopMotionDetectionBridge CTOR, wrong configuration, object did not initialize", "{msg%{public}.0s:CLMicroLocationStopMotionDetectionBridge CTOR, wrong configuration, object did not initialize, Stop detection enabled:%{public}hhd, Num Radiuses:%{public}lu, Num Timeouts:%{public}lu}", buf, 0x2Cu);
      }
    }

    if (v59.i64[0])
    {
      operator delete(v59.i64[0]);
    }

    if (v60.i64[0])
    {
      operator delete(v60.i64[0]);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationMotionBridge::getFenceRadius();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = 0;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationStopMotionDetectionBridge CTOR, setting is off so object did not initialize, Stop detection enabled:%{public}hhd}", buf, 0x18u);
    }
  }

  v56 = *MEMORY[0x277D85DE8];
  return v62;
}

void sub_259136068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, __int128 a11, __int128 a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a17)
  {
    operator delete(a17);
  }

  if (v51)
  {
    operator delete(v51);
  }

  std::optional<CLMicroLocationStopMotionDetectionBridge::Element>::~optional(a10);
  std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::~__hash_table(a19);

  _Unwind_Resume(a1);
}

void sub_2591362A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 152) == 1 && *(v35 - 153) < 0)
  {
    v36 = *(v35 - 176);
    JUMPOUT(0x2591362FCLL);
  }

  JUMPOUT(0x259136300);
}

void ___ZN40CLMicroLocationStopMotionDetectionBridgeC2ERN36ULStopMotionDetectionBridgeInterface25IStopMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  [v5 timeIntervalSinceReferenceDate];
  std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
  CLMicroLocationStopMotionDetectionBridge::onMotionMeasurements(v7, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2591363D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationStopMotionDetectionBridge::onMotionMeasurements(uint64_t a1, const void **a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:StopMotionDetectionBridge::onMotionMeasurements, fenceId:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::find<std::string>((a1 + 24), a2);
  v7 = v6;
  if (v6)
  {
    [v6[11] setFence];
    [v7[12] invalidate];
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *a2, a2[1]);
    }

    else
    {
      *buf = *a2;
      *&buf[16] = a2[2];
    }

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(v7 + 6)];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3321888768;
    v19[2] = ___ZN40CLMicroLocationStopMotionDetectionBridge20onMotionMeasurementsENSt3__16chrono10time_pointIN2cl6chrono19CFAbsoluteTimeClockENS1_8durationIeNS0_5ratioILl1ELl1EEEEEEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
    v19[3] = &__block_descriptor_64_ea8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
    v19[4] = a1;
    if ((buf[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__p, *buf, *&buf[8]);
    }

    else
    {
      __p = *buf;
    }

    v13 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v12 repeats:MEMORY[0x277CBEC28] block:v19];
    v14 = v7[12];
    v7[12] = v13;

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v9;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:onMotionMeasurements, couldn't find StopMotionDetection element, fenceIdStr:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v11;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "onMotionMeasurements, couldn't find StopMotionDetection element", "{msg%{public}.0s:onMotionMeasurements, couldn't find StopMotionDetection element, fenceIdStr:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  v15 = +[ULEventLog shared];
  if (*(a2 + 23) >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Motion Event Status: Stop Motion Detection Bridge Fence Cross. FenceId: %s", v16];
  [v15 log:v17];

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2591367A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN40CLMicroLocationStopMotionDetectionBridgeC2ERN36ULStopMotionDetectionBridgeInterface25IStopMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  v11 = +[ULEventLog shared];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Motion Event Status: Motion Bridge Geofence Error code: %u", objc_msgSend(v7, "code")];
  [v11 log:v12];

  [v8 timeIntervalSinceReferenceDate];
  std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
  CLMicroLocationStopMotionDetectionBridge::onMotionMeasurements(v10, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2591368FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationStopMotionDetectionBridge::Config::toStr(CLMicroLocationStopMotionDetectionBridge::Config *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 40) == 1)
  {
    if (*(this + 39) < 0)
    {
      v12 = *(this + 2);
      v13 = *(this + 3);

      std::string::__init_copy_ctor_external(a2, v12, v13);
    }

    else
    {
      *a2 = *(this + 1);
      *(a2 + 16) = *(this + 4);
    }

    return;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v4 = v16;
  *(&v16 + *(v16 - 24) + 8) = *(&v16 + *(v16 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v18[0].__locale_ + *(v4 - 24)) = 2;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "MiLoStopMotionDetectionFence:radius:", 36);
  v6 = MEMORY[0x259CA1D90](v5, *this);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "m:timeout:", 10);
  v8 = MEMORY[0x259CA1D90](v7, *(this + 1));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "sec", 3);
  if ((v23 & 0x10) != 0)
  {
    v10 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v10 = v19;
    }

    locale = v18[4].__locale_;
    goto LABEL_14;
  }

  if ((v23 & 8) != 0)
  {
    locale = v18[1].__locale_;
    v10 = v18[3].__locale_;
LABEL_14:
    v9 = v10 - locale;
    if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v9;
    if (v9)
    {
      memmove(a2, locale, v9);
    }

    goto LABEL_20;
  }

  v9 = 0;
  *(a2 + 23) = 0;
LABEL_20:
  *(a2 + v9) = 0;
  v15[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v14;
  v17 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](&v24);
}

void sub_259136C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x259CA1EE0](v2 + 128);
  _Unwind_Resume(a1);
}

uint64_t std::optional<CLMicroLocationStopMotionDetectionBridge::Element>::operator=[abi:ne200100]<CLMicroLocationStopMotionDetectionBridge::Element,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  *a1 = *a2;
  if (v4 == 1)
  {
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 16, (a2 + 16));
    v5 = *(a2 + 48);
    *(a2 + 48) = 0;
    v6 = *(a1 + 48);
    *(a1 + 48) = v5;

    v7 = *(a2 + 56);
    *(a2 + 56) = 0;
    v8 = *(a1 + 56);
    *(a1 + 56) = v7;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 40) = 0;
    if (*(a2 + 40) == 1)
    {
      v9 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v9;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a1 + 40) = 1;
    }

    v10 = *(a2 + 48);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 48) = v10;
    *(a1 + 64) = 1;
  }

  return a1;
}

void CLMicroLocationStopMotionDetectionBridge::~CLMicroLocationStopMotionDetectionBridge(CLMicroLocationStopMotionDetectionBridge *this)
{
  *this = &unk_286A5B848;
  for (i = *(this + 5); i; i = *i)
  {
    v3 = i[11];
    i[11] = 0;

    [i[12] invalidate];
    v4 = i[12];
    i[12] = 0;
  }

  if (*(this + 128))
  {
    [*(this + 15) invalidate];
    v5 = *(this + 15);
    *(this + 15) = 0;
  }

  if (*(this + 128) == 1)
  {

    if (*(this + 104) == 1 && *(this + 103) < 0)
    {
      operator delete(*(this + 10));
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::~__hash_table(this + 24);
}

{
  CLMicroLocationStopMotionDetectionBridge::~CLMicroLocationStopMotionDetectionBridge(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationStopMotionDetectionBridge::setToIdle(uint64_t this, __n128 a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 16) == 1)
  {
    v2 = this;
    v3 = *(this + 40);
    if (v3)
    {
      a2.n128_u64[0] = 68289282;
      v9 = a2;
      do
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
        }

        v4 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v5 = (v3 + 2);
          if (*(v3 + 39) < 0)
          {
            v5 = *v5;
          }

          *buf = v9.n128_u32[0];
          v13 = 0;
          v14 = 2082;
          v15 = "";
          v16 = 2082;
          v17 = v5;
          _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting stopDetection element to Idle (clear fence and timer), Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
        }

        [v3[11] clearFence];
        this = [v3[12] invalidate];
        v3 = *v3;
      }

      while (v3);
    }

    if (*(v2 + 128))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        CLMicroLocationStopMotionDetectionBridge::Config::toStr((v2 + 64), __p);
        if (v11 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 68289282;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2082;
        v17 = v7;
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting stopDetection ongoing timer to Idle (clear fence), Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      this = [*(v2 + 120) invalidate];
    }

    *(v2 + 16) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return this;
}

void CLMicroLocationStopMotionDetectionBridge::startStopDetection(CLMicroLocationStopMotionDetectionBridge *this, __n128 a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *(this + 16) = 1;
  v3 = *(this + 5);
  if (v3)
  {
    a2.n128_u64[0] = 68289282;
    v12 = a2;
    v4 = MEMORY[0x277CBEC28];
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v5 = v3 + 2;
      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v3 + 2;
        if (*(v3 + 39) < 0)
        {
          v7 = *v5;
        }

        *buf = v12.n128_u32[0];
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v7;
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:starting stopDetection in element (set fence and timer), Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      if (*(v3 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(buf, v3[2], v3[3]);
      }

      else
      {
        *buf = *v5;
        *&buf[16] = v3[4];
      }

      [v3[11] setFence];
      [v3[12] invalidate];
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(v3 + 6)];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3321888768;
      v15 = ___ZN40CLMicroLocationStopMotionDetectionBridge18startStopDetectionEv_block_invoke;
      v16 = &__block_descriptor_64_ea8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
      v17 = this;
      if ((buf[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p, *buf, *&buf[8]);
      }

      else
      {
        __p = *buf;
      }

      v9 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v8 repeats:v4 block:&v13];
      v10 = v3[12];
      v3[12] = v9;

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v3 = *v3;
    }

    while (v3);
  }

  CLMicroLocationStopMotionDetectionBridge::setOngoingTimer(this);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_259137304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN40CLMicroLocationStopMotionDetectionBridge18startStopDetectionEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = cl::chrono::CFAbsoluteTimeClock::now();

  return CLMicroLocationStopMotionDetectionBridge::onTimerTimeout(v2, (a1 + 40), v3);
}

uint64_t CLMicroLocationStopMotionDetectionBridge::onTimerTimeout(void **a1, uint64_t *a2, double a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:StopMotionDetectionBridge::onTimerTimeout, fenceIdStr:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  ((*a1)[2])(a1);
  v8 = +[ULEventLog shared];
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Motion Event Status: Stop Motion Detection Bridge Timeout. FenceId: %s", v9];
  [v8 log:v10];

  result = (*(*a1[1] + 16))(a1[1], a3);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void __copy_helper_block_ea8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_ea8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void CLMicroLocationStopMotionDetectionBridge::setOngoingTimer(id *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(this + 128) == 1)
  {
    CLMicroLocationStopMotionDetectionBridge::Config::toStr((this + 8), __p);
    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = __p;
      if (v10 < 0)
      {
        v3 = __p[0];
      }

      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = v3;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting ongoing timer, Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    [this[15] invalidate];
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 9)];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN40CLMicroLocationStopMotionDetectionBridge15setOngoingTimerEv_block_invoke;
    v8[3] = &__block_descriptor_40_e5_v8__0l;
    v8[4] = this;
    v5 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v4 repeats:MEMORY[0x277CBEC28] block:v8];
    v6 = this[15];
    this[15] = v5;

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25913774C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationStopMotionDetectionBridge::startMotionSession(uint64_t this, __n128 a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(this + 40);
  if (v2)
  {
    a2.n128_u64[0] = 68289282;
    v6 = a2;
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v3 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v2 + 2;
        if (*(v2 + 39) < 0)
        {
          v4 = *v4;
        }

        *buf = v6.n128_u32[0];
        v8 = 0;
        v9 = 2082;
        v10 = "";
        v11 = 2082;
        v12 = v4;
        _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:starting session for stopDetection element, Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      this = [v2[11] startSession];
      v2 = *v2;
    }

    while (v2);
  }

  v5 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t CLMicroLocationStopMotionDetectionBridge::stopMotionSession(uint64_t this, __n128 a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(this + 40);
  if (v2)
  {
    a2.n128_u64[0] = 68289282;
    v6 = a2;
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN27CLMicroLocationMotionBridgeC2ERN23ULMotionBridgeInterface21IMotionBridgeDelegateEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3_cold_3();
      }

      v3 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v2 + 2;
        if (*(v2 + 39) < 0)
        {
          v4 = *v4;
        }

        *buf = v6.n128_u32[0];
        v8 = 0;
        v9 = 2082;
        v10 = "";
        v11 = 2082;
        v12 = v4;
        _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stopping session for stopDetection element, Element ID:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      this = [v2[11] endSession];
      v2 = *v2;
    }

    while (v2);
  }

  v5 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t ___ZN40CLMicroLocationStopMotionDetectionBridge15setOngoingTimerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = cl::chrono::CFAbsoluteTimeClock::now();

  return CLMicroLocationStopMotionDetectionBridge::ongoingTimerTimeout(v1, v2);
}

uint64_t CLMicroLocationStopMotionDetectionBridge::ongoingTimerTimeout(CLMicroLocationStopMotionDetectionBridge *a1, double a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMotionBridge::getFenceRadius();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289026;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:StopMotionDetectionBridge::ongoingTimerTimeout}", v8, 0x12u);
  }

  v5 = +[ULEventLog shared];
  [v5 log:@"Motion Event Status: Stop Motion Detection Bridge Ongoing Timer Timeout"];

  (*(**(a1 + 1) + 24))(*(a1 + 1), a2);
  result = CLMicroLocationStopMotionDetectionBridge::setOngoingTimer(a1);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZN40CLMicroLocationStopMotionDetectionBridge20onMotionMeasurementsENSt3__16chrono10time_pointIN2cl6chrono19CFAbsoluteTimeClockENS1_8durationIeNS0_5ratioILl1ELl1EEEEEEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = cl::chrono::CFAbsoluteTimeClock::now();

  return CLMicroLocationStopMotionDetectionBridge::onTimerTimeout(v2, (a1 + 40), v3);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_102()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_259137DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_259137F14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationStopMotionDetectionBridge::Element::Element(uint64_t a1, _OWORD *a2, void *a3)
{
  v5 = a3;
  *a1 = *a2;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 16), a2 + 1);
  *(a1 + 48) = v5;
  *(a1 + 56) = 0;
  return a1;
}

void CLMicroLocationStopMotionDetectionBridge::Element::~Element(id *this)
{
  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t std::optional<CLMicroLocationStopMotionDetectionBridge::Element>::~optional(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {

    if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,CLMicroLocationStopMotionDetectionBridge::Element>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::string const,CLMicroLocationStopMotionDetectionBridge::Element>::~pair(uint64_t a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<CLMicroLocationStopMotionDetectionBridge::Config &,ULCMPDRFenceProvider * {__strong}&>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<CLMicroLocationStopMotionDetectionBridge::Config &,ULCMPDRFenceProvider * {__strong}&>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_259138378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_259138440(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

std::string *std::pair<std::string const,CLMicroLocationStopMotionDetectionBridge::Element>::pair[abi:ne200100]<std::string const&,CLMicroLocationStopMotionDetectionBridge::Config &,ULCMPDRFenceProvider * {__strong}&,0ul,0ul,1ul>(std::string *this, __int128 **a2, __int128 **a3)
{
  v5 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    this->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  v7 = *a3;
  v9 = **a3;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, v7 + 1);
  CLMicroLocationStopMotionDetectionBridge::Element::Element(&this[1], &v9, *a3[1]);
  if (v11 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_259138A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {

    if (*(a2 + 80) == 1 && *(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

const void **std::__hash_table<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,CLMicroLocationStopMotionDetectionBridge::Element>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_103()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

std::string *std::optional<ULOdometryDO>::optional[abi:ne200100]<ULOdometryDO const&,0>(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  *&this[1].__r_.__value_.__l.__data_ = v5;
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  this[2].__r_.__value_.__r.__words[0] = v6;
  this[2].__r_.__value_.__l.__size_ = v7;
  this[2].__r_.__value_.__s.__data_[16] = 1;
  return this;
}

void sub_259139FB4(_Unwind_Exception *a1)
{
  v7 = v2;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_104()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULUWBBridge::ULUWBBridge(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = &unk_286A5B968;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  v6 = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0;
  *(a1 + 72) = ULSettings::get<ULSettings::UwbReactivationDelay>();
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 92) = 0;
  v7 = [[IUwbSessionDelegate alloc] initWithUWBBridge:a1];
  v8 = *(a1 + 56);
  *(a1 + 56) = v7;

  return a1;
}

void sub_25913AC88(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v3, *(v1 + 24));

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::UwbReactivationDelay>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULUwbReactivationDelay"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = [&unk_286A72E30 intValue];
  }

  v5 = v4;

  return v5;
}

void ULUWBBridge::addTechnologyProfile(uint64_t a1, _DWORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  LODWORD(v8) = *a2;
  v4 = *a2;
  HIDWORD(v8) = *a2;
  *v9 = HIDWORD(v4);
  std::__tree<std::__value_type<int,ULUwbTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULUwbTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULUwbTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULUwbTechnologyProfile>>(a1 + 16, &v8);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULUWBBridge::addTechnologyProfile();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v8 = 68289538;
    *v9 = 2082;
    *&v9[2] = "";
    v10 = 2082;
    v11 = "addTechnologyProfile";
    v12 = 1026;
    v13 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULUWBBridge: Add UWB Profile, method:%{public, location:escape_only}s, index:%{public}d}", &v8, 0x22u);
  }

  if (!*(a1 + 8))
  {
    ULUWBBridge::startBackgroundSession(a1);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ULUWBBridge::startBackgroundSession(id *this)
{
  ULUWBBridge::invalidateRangingSession(this);
  ULUWBBridge::createRangeSession(this);
  *(this + 92) = 0;
  v2 = objc_alloc_init(MEMORY[0x277CD8A48]);
  [v2 setMinimumPreferredUpdatedRate:0];
  [this[1] runWithConfiguration:v2];
}

void ULUWBBridge::removeTechnologyProfile(ULUWBBridge *this, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*(this + 22) == a2)
  {
    (*(*this + 24))(this);
  }

  if (std::__tree<std::__value_type<int,ULUwbTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULUwbTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULUwbTechnologyProfile>>>::__erase_unique<int>(this + 16, &v5))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULUWBBridge::addTechnologyProfile();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "removeTechnologyProfile";
      v12 = 1026;
      v13 = v5;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULUWBBridge: UWB profile Removed, method:%{public, location:escape_only}s, index:%{public}d}", buf, 0x22u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t ULUWBBridge::initiateScanRequestByIndex(ULUWBBridge *this, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(this + 3);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = this + 24;
  do
  {
    if (*(v3 + 7) >= a2)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 7) < a2)];
  }

  while (v3);
  if (v4 == this + 24 || *(v4 + 7) > a2)
  {
LABEL_8:
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "ULUWBBridge: UWB profile with index: %@ doesn't exist.", &v14, 0xCu);
    }

    goto LABEL_13;
  }

  v10 = v4[36];
  if (v10 != 1)
  {
    if (!v10)
    {
      if (!*(this + 16))
      {
        *(this + 16) = 1;
      }

      *(this + 22) = a2;
      ULUWBBridge::startBackgroundSession(this);
    }

LABEL_20:
    v7 = 1;
    goto LABEL_14;
  }

  if (*(this + 1))
  {
    v11 = *(this + 16);
    if (v11 == 1)
    {
      *(this + 22) = a2;
      v7 = 1;
      ULUWBBridge::startForegroundSession(this, 1u);
      goto LABEL_14;
    }

    if (v11)
    {
      goto LABEL_20;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v12 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    LOWORD(v14) = 0;
    v13 = "ULUWBBridge: Attempting uwb scan while scan in progress, returning";
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v12 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    LOWORD(v14) = 0;
    v13 = "ULUWBBridge: Tried to set high ranging rate without an active ranging session!";
  }

  _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, v13, &v14, 2u);
LABEL_13:
  v7 = 0;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void ULUWBBridge::startForegroundSession(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CD8A48]);
  v5 = v4;
  if (a2 >= 4)
  {
    ULUWBBridge::startForegroundSession(buf);

    abort_report_np();
    __break(1u);
  }

  [v4 setMinimumPreferredUpdatedRate:a2];
  [*(a1 + 8) runWithConfiguration:v5];
  v6 = cl::chrono::CFAbsoluteTimeClock::now();
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = a2;
    v14 = 2050;
    v15 = v6;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULUWBBridge: set high ranging rate, rate:%{public}d, now:%{public}.3f}", buf, 0x22u);
  }

  *(a1 + 64) = 0;

  v8 = *MEMORY[0x277D85DE8];
}

void ULUWBBridge::stopScan(ULUWBBridge *this)
{
  if (*(this + 1))
  {
    if (!*(this + 16))
    {
      *(this + 16) = 1;
    }

    ULUWBBridge::stopBackgroundSession(this);
    *(this + 22) = -1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "ULUWBBridge: tried to stop session without an active ranging session!", v3, 2u);
    }
  }
}

uint64_t ULUWBBridge::stopBackgroundSession(uint64_t this)
{
  if ((*(this + 92) & 1) == 0)
  {
    v1 = this;
    *(this + 92) = 1;
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "ULUWBBridge: stopRanging: stopping a ranging session", v3, 2u);
    }

    ULUWBBridge::invalidateRangingSession(v1);
    return (*(**(v1 + 48) + 24))(*(v1 + 48));
  }

  return this;
}

uint64_t ULUWBBridge::isNearbyObjectUwbRangingSupportedOnDevice(ULUWBBridge *this)
{
  v1 = [MEMORY[0x277CD8A68] deviceCapabilities];
  v2 = [v1 supportsPreciseDistanceMeasurement];

  return v2;
}

void ULUWBBridge::invalidateRangingSession(id *this)
{
  if (this[1])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "ULUWBBridge: invalidateRangingSession: invalidating a ranging session", v4, 2u);
    }

    [this[1] invalidate];
    v3 = this[1];
    this[1] = 0;
  }
}

uint64_t ULUWBBridge::createRangeSession(ULUWBBridge *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "ULUWBBridge: createRangeSession: creating a ranging session", v6, 2u);
  }

  v3 = [MEMORY[0x277CD8A68] observerSession];
  v4 = *(this + 1);
  *(this + 1) = v3;

  (*(**(this + 6) + 16))(*(this + 6));
  [*(this + 1) setDelegate:*(this + 7)];
  return [*(this + 1) setDelegateQueue:*(this + 5)];
}

void ULUWBBridge::reactivate(ULUWBBridge *this)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((*(this + 68) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = ULSettings::get<ULSettings::UwbReactivationDelay>();
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "ULUWBBridge: reactivate: start ranging session in %.3dsec", buf, 8u);
    }

    *(this + 68) = 1;
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:1000000000 * *(this + 18)];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN11ULUWBBridge10reactivateEv_block_invoke;
    v15[3] = &__block_descriptor_40_e5_v8__0l;
    v15[4] = this;
    v4 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v3 repeats:MEMORY[0x277CBEC28] block:v15];
    v5 = *(this + 10);
    *(this + 10) = v4;

    (*(**(this + 6) + 32))(*(this + 6));
    v6 = *(this + 18);
    v7 = +[ULDefaultsSingleton shared];
    v8 = [v7 defaultsDictionary];

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULUwbMaxSessionReactivationDelay"];
    v10 = [v8 objectForKey:v9];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = [v10 intValue];
    }

    else
    {
      v11 = [&unk_286A72000 intValue];
    }

    v12 = v11;

    v13 = 2 * v6;
    if (v12 < 2 * v6)
    {
      v13 = v12;
    }

    *(this + 18) = v13;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void ___ZN11ULUWBBridge10reactivateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ULUWBBridge::startBackgroundSession(v1);
  *(v1 + 68) = 0;
}

void ULUWBBridge::onHomeNearbyObjects(uint64_t a1, __int128 **a2)
{
  v51 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 40));
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
LABEL_53:
    (*(**(a1 + 48) + 48))(*(a1 + 48), &v32);
    goto LABEL_56;
  }

  while (1)
  {
    v6 = v4[1];
    v44 = *v4;
    v45 = v6;
    if (*(v4 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v46, *(v4 + 4), *(v4 + 5));
    }

    else
    {
      v7 = v4[2];
      v46.__r_.__value_.__r.__words[2] = *(v4 + 6);
      *&v46.__r_.__value_.__l.__data_ = v7;
    }

    v8 = *(v4 + 7);
    *(v47 + 5) = *(v4 + 61);
    v47[0] = v8;
    v37 = v44;
    v38 = v45;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v46;
    }

    *&v40[5] = *(v47 + 5);
    *v40 = v47[0];
    if (BYTE4(v47[1]) == 1)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v48, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v48 = __p;
      }

      size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v48;
      }

      else
      {
        v10 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v48.__r_.__value_.__l.__size_;
      }

      v49.n128_u64[0] = boost::uuids::string_generator::operator()<std::__wrap_iter<char const*>>(&v36, v10, v10 + size);
      v49.n128_u64[1] = v11;
      v50 = 1;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v48, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v48 = __p;
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        v12 = v48.__r_.__value_.__l.__size_;
        operator delete(v48.__r_.__value_.__l.__data_);
        if (v12)
        {
LABEL_26:
          v36 = v37;
          v35 = 2;
          ULUWBMeasurementDO::ULUWBMeasurementDO(&v48, &v36, &v49, &v35, *(&v37 + 2));
          ULUWBMeasurementDO::ULUWBMeasurementDO(&v41, &v48);
          v13 = 1;
          v43 = 1;
          goto LABEL_32;
        }
      }

      else if (*(&v48.__r_.__value_.__s + 23))
      {
        goto LABEL_26;
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULUWBBridge::addTechnologyProfile();
      }

      v14 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v48.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_ERROR, "Invalid UwbRange IDS UUID", &v48, 2u);
      }
    }

    v13 = 0;
    LOBYTE(v41) = 0;
    v43 = 0;
LABEL_32:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v13 = v43;
    }

    if ((v13 & 1) == 0)
    {
      break;
    }

    v15 = v33;
    if (v33 >= v34)
    {
      v18 = v32;
      v19 = (v33 - v32) >> 5;
      v20 = v19 + 1;
      if ((v19 + 1) >> 59)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      v21 = v34 - v32;
      if ((v34 - v32) >> 4 > v20)
      {
        v20 = v21 >> 4;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFE0)
      {
        v22 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ULBLEMeasurementDO>>(&v32, v22);
      }

      v23 = (v33 - v32) >> 5;
      v24 = (32 * v19);
      v25 = v42;
      *v24 = v41;
      v24[1] = v25;
      v26 = (32 * v19 - 32 * v23);
      if (v18 != v15)
      {
        v27 = v18;
        v28 = v26;
        do
        {
          v29 = *v27;
          v30 = *(v27 + 1);
          v27 += 32;
          *v28 = v29;
          v28[1] = v30;
          v28 += 2;
        }

        while (v27 != v15);
      }

      v17 = (v24 + 2);
      v32 = v26;
      v33 = (v24 + 2);
      v34 = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      v16 = v42;
      *v33 = v41;
      *(v15 + 1) = v16;
      v17 = v15 + 32;
    }

    v33 = v17;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    v4 += 5;
    if (v4 == v5)
    {
      goto LABEL_53;
    }
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

LABEL_56:
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void ULUWBBridge::updateNearbyObjects(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v3)
  {
    v5 = *v45;
    v6 = MEMORY[0x277CD8A20];
    *&v4 = 68289026;
    v40 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v45 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v44 + 1) + 8 * v7);
        v9 = [v8 relationship];
        [v8 distance];
        if (v10 != *v6 && (v9 & 2) != 0)
        {
          v13 = [v8 deviceIdentifer];
          v14 = v13 == 0;

          if (!v14)
          {
            v15 = cl::chrono::CFAbsoluteTimeClock::now();
            [v8 distance];
            v17 = v16;
            [v8 direction];
            v42 = v18;
            v19 = [v8 deviceIdentifer];
            v20 = v19;
            std::string::basic_string[abi:ne200100]<0>(&__p, [v19 UTF8String]);
            [v8 azimuth];
            v22 = v21;
            [v8 elevation];
            v24 = v23;
            v25 = [v8 distanceMeasurementQuality];
            if (v25 >= 4)
            {
              v26 = 0;
            }

            else
            {
              v26 = v25;
            }

            *buf = v15;
            *&buf[8] = v17;
            *&buf[16] = v42;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v52, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
              v53[0] = 2;
              *&v53[4] = v22;
              *&v53[8] = v24;
              v53[12] = v26;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v52 = __p;
              v53[0] = 2;
              *&v53[4] = v22;
              *&v53[8] = v24;
              v53[12] = v26;
            }

            v34 = v49;
            if (v49 >= v50)
            {
              v38 = std::vector<ULNearbyObjectBuilder>::__emplace_back_slow_path<ULNearbyObjectBuilder>(&v48, buf);
            }

            else
            {
              v35 = *&buf[16];
              *v49 = *buf;
              v34[1] = v35;
              v36 = *&v52.__r_.__value_.__l.__data_;
              *(v34 + 6) = *(&v52.__r_.__value_.__l + 2);
              v34[2] = v36;
              memset(&v52, 0, sizeof(v52));
              v37 = *&v53[5];
              *(v34 + 7) = *v53;
              *(v34 + 61) = v37;
              v38 = (v34 + 5);
            }

            v49 = v38;
            ULUWBBridge::onHomeNearbyObjects(a1, &v48);
            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v52.__r_.__value_.__l.__data_);
            }

            goto LABEL_36;
          }

LABEL_22:
          v27 = [v8 deviceIdentifer];
          v28 = v27 == 0;

          if (v28)
          {
            CLMicroLocationErrorHandling::reportError(@"IUwbSessionDelegate:, known device but deviceIdentifier is nil", v29);
          }

          else
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              ULUWBBridge::addTechnologyProfile();
            }

            v30 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v31 = [v8 deviceIdentifer];
              v32 = v31;
              v33 = [v31 UTF8String];
              *buf = 68289282;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2082;
              *&buf[20] = v33;
              _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:NI, known device's distance is not available, deviceIdentifer:%{public, location:escape_only}s}", buf, 0x1Cu);
            }
          }

          goto LABEL_36;
        }

        if ((v9 & 2) != 0)
        {
          goto LABEL_22;
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULUWBBridge::addTechnologyProfile();
        }

        v12 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
        {
          *buf = v40;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:IUwbSessionDelegate: unknwon device, ignore}", buf, 0x12u);
        }

LABEL_36:
        ++v7;
      }

      while (v3 != v7);
      v3 = [v2 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v3);
  }

  *buf = &v48;
  std::vector<ULNearbyObjectBuilder>::__destroy_vector::operator()[abi:ne200100](buf);

  v39 = *MEMORY[0x277D85DE8];
}

void sub_25913C3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  a36 = &a33;
  std::vector<ULNearbyObjectBuilder>::__destroy_vector::operator()[abi:ne200100](&a36);

  _Unwind_Resume(a1);
}

void ULUWBBridge::removeNearbyObjects(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v6)
  {
    v8 = *v22;
    *&v7 = 134349570;
    v18 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (onceToken_MicroLocation_Default != -1)
        {
          ULUWBBridge::addTechnologyProfile();
        }

        v11 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = a4;
          if (*(a4 + 23) < 0)
          {
            v12 = *a4;
          }

          v13 = [v10 discoveryToken];
          v14 = [v13 description];
          v15 = v14;
          v16 = [v14 UTF8String];
          *buf = v18;
          v26 = v19;
          v27 = 2082;
          v28 = v12;
          v29 = 2082;
          v30 = v16;
          _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "@IUwbSessionDelegate: Session %{public}p did remove nearby object with reason: '%{public}s'. %{public}s", buf, 0x20u);
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void ULUWBBridge::sessionWasSuspended(ULUWBBridge *this, NISession *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349056;
    v7 = v3;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "IUwbSessionDelegate: Session %{public}p was suspended.", &v6, 0xCu);
  }

  (*(**(this + 6) + 32))(*(this + 6));

  v5 = *MEMORY[0x277D85DE8];
}

void ULUWBBridge::sessionSuspensionEnded(ULUWBBridge *this, NISession *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349056;
    v7 = v3;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "IUwbSessionDelegate: Session %{public}p suspension ended. Restarting...", &v6, 0xCu);
  }

  (*(**(this + 6) + 40))(*(this + 6));

  v5 = *MEMORY[0x277D85DE8];
}

void ULUWBBridge::invalidateSessionWithError(ULUWBBridge *this, NISession *a2, NSError *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(this + 1) == v5)
  {
    if (v6)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"Uwb range session invalidated error:", v6];
      CLMicroLocationErrorHandling::reportError(v8, v9);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        _CLLogObjectForCategory_MicroLocation_Default();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [0 debugDescription];
        v12 = [v11 UTF8String];
        v13 = *(this + 18);
        *buf = 134349570;
        v16 = v5;
        v17 = 2080;
        v18 = v12;
        v19 = 1024;
        v20 = v13;
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "IUwbSessionDelegate: Error: session %{public}p invalidated with error: %s next reactivation try in %dsec", buf, 0x1Cu);
      }
    }

    ULUWBBridge::invalidateRangingSession(this);
    ULUWBBridge::reactivate(this);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void ULUWBBridge::sessionFailWithError(ULUWBBridge *this, NSError *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSError *)v2 description];
    v6 = 136446210;
    v7 = [v4 UTF8String];
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "IUwbSessionDelegate: failed (non-fatal): %{public}s.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void ULUWBBridge::sessionDiscoverNearbyObject(ULUWBBridge *this, NINearbyObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(NINearbyObject *)v2 description];
    v6 = 136446210;
    v7 = [v4 UTF8String];
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEBUG, "IUwbSessionDelegate: discovered object: %{public}s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void ULUWBBridge::sessionStartRunning(ULUWBBridge *this, NISession *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349056;
    v7 = v3;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "NI, Session %{public}p Start Running", &v6, 0xCu);
  }

  *(this + 18) = ULSettings::get<ULSettings::UwbReactivationDelay>();

  v5 = *MEMORY[0x277D85DE8];
}

void sub_25913CF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULUWBBridge::~ULUWBBridge(id *this)
{
  ULUWBBridge::~ULUWBBridge(this);

  JUMPOUT(0x259CA1F90);
}

{
  *this = &unk_286A5B968;

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy((this + 2), this[3]);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_105()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<ULNearbyObjectBuilder>::__emplace_back_slow_path<ULNearbyObjectBuilder>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULNearbyObjectBuilder>>(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  v9 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 32) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v10 = *(a2 + 56);
  *(v7 + 61) = *(a2 + 61);
  *(v7 + 56) = v10;
  *&v19 = 80 * v2 + 80;
  v11 = a1[1];
  v12 = 80 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<ULNearbyObjectBuilder>::~__split_buffer(&v17);
  return v16;
}

void sub_25913D3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULNearbyObjectBuilder>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULNearbyObjectBuilder>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 32) = v8;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      v9 = *(v6 + 56);
      *(a4 + 61) = *(v6 + 61);
      *(a4 + 56) = v9;
      v6 += 80;
      a4 += 80;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 55) < 0)
      {
        operator delete(*(v5 + 32));
      }

      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULNearbyObjectBuilder>,ULNearbyObjectBuilder*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 25) < 0)
    {
      operator delete(*(v1 - 48));
    }

    v1 -= 80;
  }
}

uint64_t std::__split_buffer<ULNearbyObjectBuilder>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULNearbyObjectBuilder>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULNearbyObjectBuilder>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 80;
      *(a1 + 16) = v2 - 80;
      if (*(v2 - 25) < 0)
      {
        operator delete(*(v2 - 48));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<ULNearbyObjectBuilder>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULNearbyObjectBuilder>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ULNearbyObjectBuilder>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  a1[1] = v2;
}

uint64_t *std::__tree<std::__value_type<int,ULUwbTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULUwbTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULUwbTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULUwbTechnologyProfile>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<int,ULUwbTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULUwbTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULUwbTechnologyProfile>>>::__erase_unique<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 28) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t ULHomeNearbyRangingSupport::isUwbRangingSupportedOnDevice(ULHomeNearbyRangingSupport *this)
{
  v1 = +[CLMicroLocationEnvironment shared];
  v2 = [v1 isTestingEnvironment];

  if (v2)
  {
    v4 = +[ULDefaultsSingleton shared];
    v5 = [v4 defaultsDictionary];

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingUwbRangeEnable"];
    v7 = [v5 objectForKey:v6];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 BOOLValue];
    }

    else
    {
      v8 = [MEMORY[0x277CBEC38] BOOLValue];
    }

    v10 = v8;

    return v10;
  }

  else
  {

    return ULUWBBridge::isNearbyObjectUwbRangingSupportedOnDevice(v3);
  }
}

ULWiFiAssociationBridge *ULWiFiAssociationBridge::ULWiFiAssociationBridge(ULWiFiAssociationBridge *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = &unk_286A5B9F8;
  *(a1 + 1) = 0;
  v6 = v5;
  *(a1 + 2) = v6;
  *(a1 + 3) = a3;
  ULWiFiAssociationBridge::createAndStartWifiInterface(a1);

  return a1;
}

void ULWiFiAssociationBridge::createAndStartWifiInterface(ULWiFiAssociationBridge *this)
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(this + 2));
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiAssociationBridge::createAndStartWifiInterface();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v16[0] = 0;
    LOWORD(v16[1]) = 2082;
    *(&v16[1] + 2) = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#wifi-assoc-bridge, Creating WiFi interface}", buf, 0x12u);
  }

  v3 = objc_opt_new();
  v4 = *(this + 1);
  *(this + 1) = v3;

  objc_initWeak(&location, *(this + 1));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke;
  v12[3] = &unk_2798D4F88;
  v13[1] = this;
  objc_copyWeak(v13, &location);
  [*(this + 1) setInvalidationHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke_3;
  v10[3] = &unk_2798D4FB0;
  v11[1] = this;
  objc_copyWeak(v11, &location);
  [*(this + 1) setEventHandler:v10];
  [*(this + 1) activate];
  [*(this + 1) startMonitoringEventType:3 error:0];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiAssociationBridge::createAndStartWifiInterface();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(this + 1) interfaceName];
    *buf = 138412290;
    *v16 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#wifi-assoc-bridge, WiFi assoc. interface activated, name:%@", buf, 0xCu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiAssociationBridge::createAndStartWifiInterface();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(this + 1), "powerOn")}];
    *buf = 138412290;
    *v16 = v8;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "#wifi-assoc-bridge, Is WiFi On, :%@", buf, 0xCu);
  }

  objc_destroyWeak(v11);
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_25913DD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ULWiFiAssociationBridge::~ULWiFiAssociationBridge(id *this)
{
  *this = &unk_286A5B9F8;
  [this[1] invalidate];
  v2 = this[1];
  this[1] = 0;
}

{
  ULWiFiAssociationBridge::~ULWiFiAssociationBridge(this);

  JUMPOUT(0x259CA1F90);
}

void ULWiFiAssociationBridge::fetchAssociatedAccessPointInfo(ULWiFiAssociationBridge *this@<X0>, uint64_t a2@<X8>)
{
  if (!*(this + 1))
  {
    ULWiFiAssociationBridge::createAndStartWifiInterface(this);
  }

  dispatch_assert_queue_V2(*(this + 2));
  if ([*(this + 1) powerOn])
  {
    v4 = [*(this + 1) BSSID];
    v5 = v4;
    if (v4)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
      v6 = CLMacAddress::newFromCLStr(__p);
      v7 = [*(this + 1) RSSI];
      *a2 = v6;
      *(a2 + 8) = v7;
      *(a2 + 16) = 1;
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiAssociationBridge::createAndStartWifiInterface();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "wifi-provider, query association state while wifi is off, returning", __p, 2u);
    }

    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void sub_25913DF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(v1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v1;
    dispatch_async(v3, block);
  }
}

void ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 16));
  [*(v1 + 8) invalidate];
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

{
  ULWiFiAssociationBridge::onAssociatedStateChange(*(a1 + 48), *(a1 + 32), *(a1 + 40));
}

void ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if ([v3 type] == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = [WeakRetained channel];
      v8 = [v6 BSSID];
      if (onceToken_MicroLocation_Default != -1)
      {
        ULWiFiAssociationBridge::createAndStartWifiInterface();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v3 timestamp];
        *buf = 138412546;
        v21 = v10;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "Got WiFi CWFEventTypeBSSIDChanged event, eventTS %@ BSSID %@", buf, 0x16u);
      }

      v11 = *(v4 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___ZN23ULWiFiAssociationBridge27createAndStartWifiInterfaceEv_block_invoke_2;
      block[3] = &unk_2798D4188;
      v18 = v7;
      v19 = v4;
      v17 = v8;
      v12 = v7;
      v13 = v8;
      dispatch_async(v11, block);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiAssociationBridge::createAndStartWifiInterface();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_ERROR, "#wifi-assoc-bridge, Unexpected CWFEvent: %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void ULWiFiAssociationBridge::onAssociatedStateChange(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v8 = a3;
  dispatch_assert_queue_V2(*(a1 + 16));
  if (!v7)
  {
    v14 = 0;
    v15 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v9 = [v7 UTF8String];
  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, v9);
    v10 = CLMacAddress::newFromCLStr(&__p);
    v3 = [*(a1 + 8) RSSI];
    if (v20 < 0)
    {
      operator delete(__p);
    }

    v4 = v10 >> 8;
    v11 = 1;
    v12 = v10;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_9:
    v14 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v11 = 0;
  v12 = 0;
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  v13 = [v8 band];
  v14 = v13 | ([v8 channel] << 32);
  v15 = 1;
LABEL_10:
  v16 = *(a1 + 24);
  __p = (v12 | (v4 << 8));
  v18 = v3;
  v19 = v11;
  (*(*v16 + 16))(v16, v14, v15, &__p);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_106()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULWiFiRssiBridge::ULWiFiRssiBridge(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  *a1 = &unk_286A5BA68;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = v7;
  a1[4] = 0;
  operator new();
}

void sub_25913E564(_Unwind_Exception *a1)
{
  v4 = v3;
  std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy(v4, *(v1 + 64));
  v6 = *(v1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void ULWiFiRssiBridge::createAndStartWifiInterface(ULWiFiRssiBridge *this)
{
  *&v14[5] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(this + 3));
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiRssiBridge::createAndStartWifiInterface();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v14[0] = 0;
    LOWORD(v14[1]) = 2082;
    *(&v14[1] + 2) = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#wifi-bridge, Creating WiFi interface}", buf, 0x12u);
  }

  v3 = objc_opt_new();
  v4 = *(this + 4);
  *(this + 4) = v3;

  objc_initWeak(&location, *(this + 4));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN16ULWiFiRssiBridge27createAndStartWifiInterfaceEv_block_invoke;
  v10[3] = &unk_2798D4F88;
  v11[1] = this;
  objc_copyWeak(v11, &location);
  [*(this + 4) setInvalidationHandler:v10];
  [*(this + 4) activate];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiRssiBridge::createAndStartWifiInterface();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(this + 4) interfaceName];
    *buf = 138412290;
    *v14 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#wifi-bridge, WiFi interface activated, name:%@", buf, 0xCu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiRssiBridge::createAndStartWifiInterface();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(this + 4), "powerOn")}];
    *buf = 138412290;
    *v14 = v8;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "#wifi-bridge, Is WiFi On, :%@", buf, 0xCu);
  }

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_25913E830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ULWiFiRssiBridge::~ULWiFiRssiBridge(id *this)
{
  *this = &unk_286A5BA68;
  [this[4] invalidate];
  v2 = this[4];
  this[4] = 0;

  std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy((this + 7), this[8]);
  this[8] = 0;
  this[9] = 0;
  this[7] = this + 8;
  std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy((this + 7), 0);
  v3 = this[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  ULWiFiRssiBridge::~ULWiFiRssiBridge(this);

  JUMPOUT(0x259CA1F90);
}

void ULWiFiRssiBridge::addTechnologyProfile(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v7[0] = *a2;
  *v8 = *a2;
  *&v8[11] = *(a2 + 11);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<ULWiFiScanChannel>::__init_with_size[abi:ne200100]<ULWiFiScanChannel*,ULWiFiScanChannel*>(&__p, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULWiFiTechnologyProfile>>(a1 + 56, v7);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiRssiBridge::createAndStartWifiInterface();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v7[0] = 68289538;
    v7[1] = 0;
    *v8 = 2082;
    *&v8[2] = "";
    *&v8[10] = 2082;
    *&v8[12] = "addTechnologyProfile";
    *&v8[20] = 1026;
    *&v8[22] = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULWiFiRssiBridge: Add WiFi Profile, method:%{public, location:escape_only}s, index:%{public}d}", v7, 0x22u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_25913EAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ULWiFiRssiBridge::removeTechnologyProfile(ULWiFiRssiBridge *this, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::__erase_unique<int>(this + 56, &v4))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiRssiBridge::createAndStartWifiInterface();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "removeTechnologyProfile";
      v11 = 1026;
      v12 = v4;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULWiFiRssiBridge: WiFi profile Removed, method:%{public, location:escape_only}s, index:%{public}d}", buf, 0x22u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

void ___ZN16ULWiFiRssiBridge27createAndStartWifiInterfaceEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(v1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN16ULWiFiRssiBridge27createAndStartWifiInterfaceEv_block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v1;
    dispatch_async(v3, block);
  }
}

uint64_t ULWiFiRssiBridge::onInterfaceInvalidation(ULWiFiRssiBridge *this)
{
  dispatch_assert_queue_V2(*(this + 3));
  [*(this + 4) invalidate];
  v2 = *(this + 4);
  *(this + 4) = 0;

  v3 = *(**(this + 2) + 16);

  return v3();
}

void ___ZN16ULWiFiRssiBridge12startScannerERK23ULWiFiTechnologyProfile_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiRssiBridge::createAndStartWifiInterface();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    v10 = MEMORY[0x277CCABB0];
    [*(a1 + 32) timeIntervalSinceNow];
    v12 = [v10 numberWithDouble:-v11];
    *buf = 138412802;
    v27 = v9;
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "#wifi-bridge, Received Wifi scan results with length:%@ error: %@, time from request to callback:%@[sec]", buf, 0x20u);
  }

  v13 = *(v7 + 24);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3321888768;
  v19[2] = ___ZN16ULWiFiRssiBridge12startScannerERK23ULWiFiTechnologyProfile_block_invoke_4;
  v19[3] = &unk_286A5BAA0;
  v15 = *(a1 + 48);
  v14 = *(a1 + 56);
  v22 = v7;
  v23 = v15;
  v24 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = *(a1 + 64);
  v16 = v5;
  v20 = v16;
  v17 = v6;
  v21 = v17;
  dispatch_async(v13, v19);

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void ___ZN16ULWiFiRssiBridge12startScannerERK23ULWiFiTechnologyProfile_block_invoke_4(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = v4;
  if (*v2)
  {
    ((*v3)[3])(v3);
    v5 = (*(*(a1 + 72) + 16) + *(*(a1 + 72) + 8)) * ((*(*(a1 + 72) + 40) - *(*(a1 + 72) + 32)) >> 3);
    if (*(a1 + 32))
    {
      (*(*v3[1] + 16))(v3[1], v5);
    }

    else
    {
      ULWiFiRssiBridge::ulWiFiMeasurementDOFromCWFScanResults(*(a1 + 40), &__p);
      v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v8 = __p;
      v9 = v26;
      if (__p != v26)
      {
        v10 = 1;
        do
        {
          v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
          [v7 appendFormat:@"\nMeas number: %@", v11];

          [v7 appendFormat:@", Timestamp in seconds: %Lf", v8->var0];
          [v7 appendFormat:@", RSSI: %d", LODWORD(v8[1].var0)];
          v12 = MEMORY[0x277CCACA8];
          v13 = v8 + 2;
          CLMacAddress::str(v8 + 2, buf);
          if (v28 >= 0)
          {
            v14 = buf;
          }

          else
          {
            v14 = *buf;
          }

          v15 = [v12 stringWithUTF8String:v14];
          [v7 appendFormat:@", source BSSID: %@", v15];

          if (v28 < 0)
          {
            operator delete(*buf);
          }

          v16 = [MEMORY[0x277CCABB0] numberWithShort:SLOWORD(v8[3].var0)];
          [v7 appendFormat:@", channel: %@", v16];

          v17 = "CHANNEL_BAND_NONE";
          if (BYTE2(v8[3].var0) - 1 <= 2)
          {
            v17 = off_2798D4FD0[(BYTE2(v8[3].var0) - 1)];
          }

          v18 = MEMORY[0x277CCACA8];
          std::string::basic_string[abi:ne200100]<0>(buf, v17);
          if (v28 >= 0)
          {
            v19 = buf;
          }

          else
          {
            v19 = *buf;
          }

          v20 = [v18 stringWithUTF8String:v19];
          [v7 appendFormat:@", band: %@", v20];

          if (v28 < 0)
          {
            operator delete(*buf);
          }

          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v8[3].var0)];
          [v7 appendFormat:@", flags: %@", v21];

          ++v10;
          v8 += 4;
        }

        while (&v13[2] != v9);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULWiFiRssiBridge::createAndStartWifiInterface();
      }

      v22 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_INFO, "#wifi-bridge, scan measurements: %@", buf, 0xCu);
      }

      (*(*v3[1] + 24))(v3[1], &__p);
      (*(*v3[1] + 16))(v3[1], 0, v5);

      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiRssiBridge::createAndStartWifiInterface();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "#wifi-bridge, The scan was aborted, the measurements will not be sent to delegate", buf, 2u);
    }
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_25913F35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void ULWiFiRssiBridge::ulWiFiMeasurementDOFromCWFScanResults(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v4)
  {
    v5 = *v56;
    do
    {
      v6 = 0;
      do
      {
        if (*v56 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v55 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CBEAA8] now];
        [v8 timeIntervalSinceReferenceDate];
        v10 = v9;

        v11 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v54 = v10 - v11 / 1000000000.0 + [v7 timestamp] / 1000000000.0;
        v12 = [v7 RSSI];
        v13 = [v7 BSSID];
        LODWORD(v11) = v13 == 0;

        if (v11)
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ULWiFiRssiBridge::createAndStartWifiInterface();
          }

          v34 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__p[0]) = 0;
            v32 = v34;
            v33 = "Got nil BSSID on wifi scan result";
            goto LABEL_27;
          }
        }

        else
        {
          v14 = [v7 channel];
          if (!v14 || ([v7 channel], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "band") == 0, v15, v14, v16))
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              ULWiFiRssiBridge::createAndStartWifiInterface();
            }

            v31 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
            {
              LOWORD(__p[0]) = 0;
              v32 = v31;
              v33 = "Got invalid channel/band in scan result";
LABEL_27:
              _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_ERROR, v33, __p, 2u);
            }
          }

          else
          {
            v17 = [v7 BSSID];
            v18 = v17;
            std::string::basic_string[abi:ne200100]<0>(__p, [v17 UTF8String]);
            v53 = CLMacAddress::newFromCLStr(__p);
            if (SBYTE7(v52) < 0)
            {
              operator delete(__p[0]);
            }

            v19 = [v7 channel];
            v20 = [v19 channel];

            v21 = [v7 channel];
            v22 = [v21 flags];

            if ([v7 isPersonalHotspot])
            {
              v23 = 0x40000000;
            }

            else
            {
              v23 = 0;
            }

            v24 = [v7 channel];
            v25 = [v24 band];
            if (v25 >= 4)
            {
              v26 = 0;
            }

            else
            {
              v26 = v25;
            }

            v50 = v26;
            ULWiFiMeasurementDO::ULWiFiMeasurementDO(__p, &v54, v12, &v53, v20, &v50, v23 | v22 & 0xBFFFFFFF);

            v28 = a2[1];
            v27 = a2[2];
            if (v28 >= v27)
            {
              v35 = *a2;
              v36 = (v28 - *a2) >> 5;
              v37 = v36 + 1;
              if ((v36 + 1) >> 59)
              {
                std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
              }

              v38 = v27 - v35;
              if (v38 >> 4 > v37)
              {
                v37 = v38 >> 4;
              }

              if (v38 >= 0x7FFFFFFFFFFFFFE0)
              {
                v39 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v39 = v37;
              }

              if (v39)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiMeasurementDO>>(a2, v39);
              }

              v40 = (v28 - *a2) >> 5;
              v41 = (32 * v36);
              v42 = v52;
              *v41 = *__p;
              v41[1] = v42;
              v43 = 32 * v36 - 32 * v40;
              if (v35 != v28)
              {
                v44 = v35;
                v45 = v43;
                do
                {
                  v46 = *v44;
                  v47 = v44[1];
                  v44 += 2;
                  *v45 = v46;
                  v45[1] = v47;
                  v45 += 2;
                }

                while (v44 != v28);
              }

              v30 = v41 + 2;
              *a2 = v43;
              a2[1] = (v41 + 2);
              a2[2] = 0;
              if (v35)
              {
                operator delete(v35);
              }
            }

            else
            {
              v29 = v52;
              *v28 = *__p;
              v28[1] = v29;
              v30 = v28 + 2;
            }

            a2[1] = v30;
          }
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v4);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_25913F850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_56c27_ZTSNSt3__110shared_ptrIbEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_56c27_ZTSNSt3__110shared_ptrIbEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_48c27_ZTSNSt3__110shared_ptrIbEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_48c27_ZTSNSt3__110shared_ptrIbEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_107()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::__shared_ptr_emplace<BOOL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5BB68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::destroy(a1, a2[1]);
    v4 = a2[9];
    if (v4)
    {
      a2[10] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::__emplace_unique_key_args<int,std::pair<int,ULWiFiTechnologyProfile>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::__erase_unique<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,ULWiFiTechnologyProfile>,std::__map_value_compare<int,std::__value_type<int,ULWiFiTechnologyProfile>,std::less<int>,true>,std::allocator<std::__value_type<int,ULWiFiTechnologyProfile>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, a2);
  v4 = a2[9];
  if (v4)
  {
    a2[10] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_108()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t result, uint64_t a2)
{
  *(a2 + 10) = v2;
  *(a2 + 18) = 2081;
  *(a2 + 20) = result;
  return result;
}

uint64_t ULModelLoader::loadModelForServiceOrCreateNewIfNecessary(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4, ULModelLoader *a5, const CLMicroLocationProto::Model *a6, ULDatabaseStoreInterface *a7)
{
  v137 = *MEMORY[0x277D85DE8];
  *v116.var0.data = a2;
  *&v116.var0.data[8] = a3;
  v108[0] = 0;
  v115 = 0;
  ULService::modelClientIdentifierStringForServiceTypeAndClientId(a1, a4, &v69);
  if (a1 != 4 || a7->var0)
  {
    if (a1 != 4)
    {
      if (a1 == 1)
      {
        v16 = (*(*a5 + 80))(a5);
        v17 = v16;
        v135 = *&a7[1].var0;
        v136 = 1;
        if (v16)
        {
          [v16 fetchMostRecentModelOfModelType:0 atLoiGroupId:&v135];
        }

        else
        {
          v134 = 0;
          memset(v133, 0, sizeof(v133));
          memset(__p, 0, sizeof(__p));
          v131 = 0u;
          v130 = 0u;
          v129 = 0u;
          v128 = 0u;
          v127 = 0u;
          v126 = 0u;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v108, buf);
        if (v134 == 1)
        {
          if (LOBYTE(v133[0]) == 1 && SHIBYTE(__p[3]) < 0)
          {
            operator delete(__p[1]);
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf[2].var0.data);
        }

        if (v115 == 1 && (v112 & 1) == 0)
        {
          std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>(&v111, &v69);
          v29 = (*(*a5 + 80))(a5);
          if ((v115 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          ULModelDO::ULModelDO(buf, v108);
          v82[1] = 0;
          v82[0] = 0;
          *&v83 = 0;
          std::vector<ULModelDO>::__init_with_size[abi:ne200100]<ULModelDO const*,ULModelDO const*>(v82, buf, &v134, 1uLL);
          if ((v115 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          LOBYTE(v72[0]) = 0;
          v73 = 0;
          if (v114[0] == 1)
          {
            *v72 = v113;
            v73 = 1;
          }

          *v76 = *&v114[1];
          v77 = 1;
          [v29 insertDataObjects:v82 forServiceUUID:v72 atLoiUUID:v76];
          v72[0] = v82;
          std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](v72);
          if (LOBYTE(v133[0]) == 1 && SHIBYTE(__p[3]) < 0)
          {
            operator delete(__p[1]);
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf[2].var0.data);
        }
      }

      else
      {
        v22 = (*(*a5 + 80))(a5);
        v23 = v22;
        if (v22)
        {
          [v22 fetchMostRecentModelForServiceUuid:v116 atLoiGroupId:{a7[1].var0, a7[2].var0}];
        }

        else
        {
          v134 = 0;
          memset(v133, 0, sizeof(v133));
          memset(__p, 0, sizeof(__p));
          v131 = 0u;
          v130 = 0u;
          v129 = 0u;
          v128 = 0u;
          v127 = 0u;
          v126 = 0u;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v108, buf);
        if (v134 == 1)
        {
          if (LOBYTE(v133[0]) == 1 && SHIBYTE(__p[3]) < 0)
          {
            operator delete(__p[1]);
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf[2].var0.data);
        }
      }

LABEL_115:
      v30 = v115;
      goto LABEL_116;
    }
  }

  else
  {
    v11 = +[ULDefaultsSingleton shared];
    v12 = [v11 defaultsDictionary];

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDisableLSLModelFallbackFromInvalidHomeSlamModel"];
    v14 = [v12 objectForKey:v13];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v14 BOOLValue];
    }

    else
    {
      v15 = [MEMORY[0x277CBEC28] BOOLValue];
    }

    v18 = v15;

    if (v18)
    {
      ULModelLoader::loadHomeSlamModel(a5, a7 + 1, v19);
    }
  }

  v20 = (*(*a5 + 80))(a5);
  v21 = v20;
  v106 = *&a7[1].var0;
  v107 = 1;
  if (v20)
  {
    [v20 fetchMostRecentModelOfModelType:4 atLoiGroupId:&v106];
  }

  else
  {
    v134 = 0;
    memset(v133, 0, sizeof(v133));
    memset(__p, 0, sizeof(__p));
    v131 = 0u;
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    memset(buf, 0, sizeof(buf));
  }

  std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v108, buf);
  if (v134 == 1)
  {
    if (LOBYTE(v133[0]) == 1 && SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf[2].var0.data);
  }

  if ((v115 & 1) == 0)
  {
    v28 = (*(*a5 + 80))(a5);
    v27 = v28;
    if (v28)
    {
      [v28 fetchMostRecentModelForServiceUuid:v116 atLoiGroupId:{a7[1].var0, a7[2].var0}];
    }

    else
    {
      v134 = 0;
      memset(v133, 0, sizeof(v133));
      memset(__p, 0, sizeof(__p));
      v131 = 0u;
      v130 = 0u;
      v129 = 0u;
      v128 = 0u;
      v127 = 0u;
      v126 = 0u;
      v125 = 0u;
      v124 = 0u;
      v123 = 0u;
      v122 = 0u;
      v121 = 0u;
      v120 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v108, buf);
    if (v134 == 1)
    {
      if (LOBYTE(v133[0]) == 1 && SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf[2].var0.data);
    }

    goto LABEL_66;
  }

  if (v110 != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  ULHomeSlamModel::fromProtobuf(v109, v24, buf);
  WorkMode = ULHomeSlamModel::getWorkMode(buf);
  ULHomeSlamModel::~ULHomeSlamModel(buf);
  if (!WorkMode)
  {
    v26 = (*(*a5 + 80))(a5);
    v27 = v26;
    v104 = v116;
    v105 = 1;
    v102 = *&a7[1].var0;
    v103 = 1;
    if (v26)
    {
      [v26 fetchMostRecentModelOfModelType:2 ForService:&v104 atLoiGroupId:&v102];
    }

    else
    {
      v134 = 0;
      memset(v133, 0, sizeof(v133));
      memset(__p, 0, sizeof(__p));
      v131 = 0u;
      v130 = 0u;
      v129 = 0u;
      v128 = 0u;
      v127 = 0u;
      v126 = 0u;
      v125 = 0u;
      v124 = 0u;
      v123 = 0u;
      v122 = 0u;
      v121 = 0u;
      v120 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v108, buf);
    if (v134 == 1)
    {
      if (LOBYTE(v133[0]) == 1 && SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf[2].var0.data);
    }

LABEL_66:
  }

  v30 = v115;
  var0 = a7->var0;
  if ((v115 & 1) == 0 && var0 != 2)
  {
    *v80 = *&a7[1].var0;
    v32 = (*(*a5 + 80))(a5);
    v33 = v32;
    v135 = *v80;
    v136 = 1;
    if (v32)
    {
      [v32 fetchMostRecentModelOfModelType:2 atLoiGroupId:&v135];
    }

    else
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      *v98 = 0u;
      v95 = 0u;
      *v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      *v85 = 0u;
      v86 = 0u;
      memset(v84, 0, sizeof(v84));
      *v82 = 0u;
      v83 = 0u;
    }

    std::string::basic_string[abi:ne200100]<0>(v72, "");
    if (LOBYTE(v80[0]))
    {
      goto LABEL_73;
    }

    v36 = 1;
    do
    {
      if (v36 == 16)
      {
        goto LABEL_74;
      }
    }

    while (!*(v80 + v36++));
    if ((v36 - 2) <= 0xE)
    {
LABEL_73:
      operator new();
    }

LABEL_74:
    if (v101 == 1)
    {
      CLMicroLocationClientUtils::getClientIdAndServiceUuid(a4);
    }

    v34 = (*(*a5 + 80))(a5);
    v35 = v34;
    v117 = *v80;
    v118 = 1;
    if (v34)
    {
      [v34 fetchMostRecentModelOfModelType:0 atLoiGroupId:&v117];
    }

    else
    {
      v134 = 0;
      memset(v133, 0, sizeof(v133));
      memset(__p, 0, sizeof(__p));
      v131 = 0u;
      v130 = 0u;
      v129 = 0u;
      v128 = 0u;
      v127 = 0u;
      v126 = 0u;
      v125 = 0u;
      v124 = 0u;
      v123 = 0u;
      v122 = 0u;
      v121 = 0u;
      v120 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v82, buf);
    if (v134 == 1)
    {
      if (LOBYTE(v133[0]) == 1 && SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf[2].var0.data);
    }

    if (v101 == 1)
    {
      CLMicroLocationClientUtils::getClientIdAndServiceUuid(a4);
    }

    if (v74 < 0)
    {
      operator delete(v72[0]);
    }

    std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(v108, v82);
    if (v101 == 1)
    {
      if (LOBYTE(v98[0]) == 1 && SHIBYTE(v97) < 0)
      {
        operator delete(v96[1]);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v84);
    }

    var0 = a7->var0;
    v30 = v115;
  }

  if (var0 == 2)
  {
    if ((v30 & 1) == 0)
    {
      goto LABEL_126;
    }

    if (*&v108[24] == 3)
    {
      goto LABEL_117;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
    }

    v38 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      if (v115)
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v111, "", v82);
        if (v115)
        {
          operator new();
        }

        std::__throw_bad_optional_access[abi:ne200100]();
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
    }

    v39 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v39))
    {
      if (v115)
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v111, "", v82);
        if (v115)
        {
          operator new();
        }

        std::__throw_bad_optional_access[abi:ne200100]();
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::__optional_destruct_base<ULModelDO,false>::reset[abi:ne200100](v108);
    goto LABEL_115;
  }

LABEL_116:
  if (v30)
  {
LABEL_117:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
    }

    v40 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v111, "", v82);
      operator new();
    }

    buf[0] = *v108;
    *(buf + 12) = *&v108[12];
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](buf[2].var0.data, v109);
    LOBYTE(__p[1]) = 0;
    LOBYTE(v133[0]) = 0;
    if (v112 == 1)
    {
      *&__p[1] = v111;
      memset(&v111, 0, sizeof(v111));
      LOBYTE(v133[0]) = 1;
    }

    *(v133 + 8) = v113;
    *(&v133[1] + 8) = *v114;
    BYTE8(v133[2]) = v114[16];
    *v76 = buf[0];
    v80[0] = *buf[1].var0.data;
    if (*&buf[1].var0.data[8] == 4)
    {
      if (LODWORD(__p[0]) == 1)
      {
        ULHomeSlamModel::fromProtobuf(&buf[2], v41, v82);
        std::allocate_shared[abi:ne200100]<ULModelAndStates,std::allocator<ULModelAndStates>,boost::uuids::uuid &,ULHomeSlamModel,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> &,0>();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    }

    if (!LODWORD(__p[0]))
    {
      CLMicroLocationModel::fromProtobuf(&buf[2], a6, v82);
      ULModelLoader::modelDomain(a1, v72);
      std::allocate_shared[abi:ne200100]<ULModelAndStates,std::allocator<ULModelAndStates>,boost::uuids::uuid &,CLMicroLocationModel,std::string,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> &,0>();
    }

    std::__throw_bad_variant_access[abi:ne200100]();
  }

LABEL_126:
  CLMicroLocationModel::CLMicroLocationModel(v82);
  if ((a1 - 2) < 2)
  {
    HIDWORD(v82[0]) = 1;
    if (a1 == 3)
    {
      v43 = 3;
    }

    else
    {
      v43 = 4;
    }

LABEL_151:
    LODWORD(v82[0]) = v43;
    CLMicroLocationModel::setQualityIndicator(v82, 1);
    LODWORD(v72[0]) = 3;
    memset(buf, 0, 24);
    std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum const*,CLMicroLocationProto::ServiceQualityReasonEnum const*>(buf, v72, v72 + 4, 1uLL);
    CLMicroLocationModel::setCandidateQualityReasons(v82, buf);
    if (*buf[0].var0.data)
    {
      *&buf[0].var0.data[8] = *buf[0].var0.data;
      operator delete(*buf[0].var0.data);
    }

    v79 = 0;
    v78 = 0;
    *buf[0].var0.data = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(buf);
    v78 = boost::uuids::random_generator_pure::operator()(buf);
    v79 = v48;
    boost::uuids::detail::random_provider_base::destroy(buf);
    v80[1] = 0;
    v80[0] = 0;
    v81 = 0;
    std::vector<ULModelDO>::reserve(v80, 1uLL);
    CLMicroLocationModel::toProtobuf(v82, v76);
    v68 = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(&v68);
    v49 = boost::uuids::random_generator_pure::operator()(&v68);
    v51 = v50;
    v52 = cl::chrono::CFAbsoluteTimeClock::now();
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(v72, v76);
    v75 = 0;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v66, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
    }

    else
    {
      v66 = v69;
    }

    v67 = 1;
    *v70 = v116;
    v71 = 1;
    v53 = a7[1].var0;
    v54 = a7[2].var0;
    v55 = a7 + 1;
    ULModelDO::ULModelDO(buf, v49, v51, v72, &v66, v70, v53, v54, v52);
    v56 = v80[1];
    if (v80[1] >= v81)
    {
      v57 = std::vector<ULModelDO>::__emplace_back_slow_path<ULModelDO>(v80, buf);
    }

    else
    {
      std::vector<ULModelDO>::__construct_one_at_end[abi:ne200100]<ULModelDO>(v80, buf);
      v57 = v56 + 320;
    }

    v80[1] = v57;
    if (LOBYTE(v133[0]) == 1 && SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf[2].var0.data);
    if (v67 == 1 && SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v72);
    boost::uuids::detail::random_provider_base::destroy(&v68);
    v58 = (*(*a5 + 80))(a5);
    buf[0] = v116;
    buf[1].var0.data[0] = 1;
    *v72 = *&v55->var0;
    v73 = 1;
    [v58 insertDataObjects:v80 forServiceUUID:buf atLoiUUID:v72];

    if (onceToken_MicroLocation_Default != -1)
    {
      ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
    }

    v59 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    v68 = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(&v68);
    v72[0] = boost::uuids::random_generator_pure::operator()(&v68);
    v72[1] = v60;
    ULModelLoader::modelDomain(a1, buf);
    v70[0] = COERCE_VOID_(cl::chrono::CFAbsoluteTimeClock::now());
    std::allocate_shared[abi:ne200100]<ULModelAndStates,std::allocator<ULModelAndStates>,boost::uuids::uuid,CLMicroLocationModel,std::string,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,0>();
  }

  if (a1 == 4)
  {
    v44 = a7->var0 == 2;
    if (a7->var0 == 2)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    HIDWORD(v82[0]) = v45;
    if (v44)
    {
      v43 = 5;
      goto LABEL_151;
    }

    v46 = ULSettings::get<ULSettings::LearnerAlgorithm>();
    if (v46 != 1)
    {
      if (v46)
      {
        if (onceToken_MicroLocation_Default == -1)
        {
          goto LABEL_147;
        }

        goto LABEL_170;
      }

LABEL_149:
      v43 = 1;
      goto LABEL_151;
    }

    goto LABEL_150;
  }

  if (a1 == 1)
  {
    HIDWORD(v82[0]) = 0;
    v42 = ULSettings::get<ULSettings::LearnerAlgorithm>();
    if (v42 != 1)
    {
      if (v42)
      {
        if (onceToken_MicroLocation_Default == -1)
        {
LABEL_147:
          v47 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
          {
            *buf[0].var0.data = 0;
            _os_log_impl(&dword_258FE9000, v47, OS_LOG_TYPE_ERROR, "Get generation algorithm: Unknown learner type", buf[0].var0.data, 2u);
          }

          goto LABEL_149;
        }

LABEL_170:
        ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
        goto LABEL_147;
      }

      goto LABEL_149;
    }

LABEL_150:
    v43 = 2;
    goto LABEL_151;
  }

  v61 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
  {
    *buf[0].var0.data = 68289795;
    *&buf[0].var0.data[4] = 0;
    *&buf[0].var0.data[8] = 2082;
    *&buf[0].var0.data[10] = "";
    *&buf[1].var0.data[2] = 1026;
    *&buf[1].var0.data[4] = a1;
    *&buf[1].var0.data[8] = 2082;
    *&buf[1].var0.data[10] = "assert";
    *&buf[2].var0.data[2] = 2081;
    *&buf[2].var0.data[4] = "false";
    _os_log_impl(&dword_258FE9000, v61, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Service Type unsupported , service type:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf[0].var0.data, 0x2Cu);
  }

  v62 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v62))
  {
    *buf[0].var0.data = 68289795;
    *&buf[0].var0.data[4] = 0;
    *&buf[0].var0.data[8] = 2082;
    *&buf[0].var0.data[10] = "";
    *&buf[1].var0.data[2] = 1026;
    *&buf[1].var0.data[4] = a1;
    *&buf[1].var0.data[8] = 2082;
    *&buf[1].var0.data[10] = "assert";
    *&buf[2].var0.data[2] = 2081;
    *&buf[2].var0.data[4] = "false";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v62, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Service Type unsupported ", "{msg%{public}.0s:Service Type unsupported , service type:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf[0].var0.data, 0x2Cu);
  }

  v63 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
  {
    *buf[0].var0.data = 68289795;
    *&buf[0].var0.data[4] = 0;
    *&buf[0].var0.data[8] = 2082;
    *&buf[0].var0.data[10] = "";
    *&buf[1].var0.data[2] = 1026;
    *&buf[1].var0.data[4] = a1;
    *&buf[1].var0.data[8] = 2082;
    *&buf[1].var0.data[10] = "assert";
    *&buf[2].var0.data[2] = 2081;
    *&buf[2].var0.data[4] = "false";
    _os_log_impl(&dword_258FE9000, v63, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Service Type unsupported , service type:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf[0].var0.data, 0x2Cu);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

void sub_259142694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  operator delete(v68);
  operator delete(v66);
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  std::optional<ULModelDO>::~optional(&STACK[0x270]);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  std::optional<ULModelDO>::~optional(&STACK[0x418]);
  _Unwind_Resume(a1);
}

void ULModelLoader::loadHomeSlamModel(ULModelLoader *this, ULDatabaseStoreInterface *a2, const uuid *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULModelLoader::loadHomeSlamModel();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "[ULModelLoader]: starting loading HomeSlam model", buf, 2u);
  }

  v6 = (*(*this + 80))(this);
  v7 = v6;
  v36 = *&a2->var0;
  v37 = 1;
  if (v6)
  {
    [v6 fetchMostRecentModelOfModelType:4 atLoiGroupId:&v36];
  }

  else
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    memset(buf, 0, sizeof(buf));
  }

  if ((v40 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULModelLoader::loadModelForServiceOrCreateNewIfNecessary();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "[ULModelLoader]: creating an empty HomeSlam model", v26, 2u);
    }

    ULHomeSlamModel::createEmptyHomeSlamModel(&v35);
    ULHomeSlamModel::toProtobuf(&v35, v18);
    LODWORD(v21) = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(&v21);
    v9 = boost::uuids::random_generator_pure::operator()(&v21);
    v11 = v10;
    v12 = cl::chrono::CFAbsoluteTimeClock::now();
    ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(&v22, v18);
    ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(v24, &v22);
    v25 = 1;
    LOBYTE(v15) = 0;
    v17 = 0;
    LOBYTE(v19) = 0;
    v20 = 0;
    ULModelDO::ULModelDO(v26, v9, v11, v24, &v15, &v19, a2->var0, a2[1].var0, v12);
    std::optional<ULModelDO>::operator=[abi:ne200100]<ULModelDO,void>(buf, v26);
    if (v31 == 1 && SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v27);
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v24);
    CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(&v22);
    boost::uuids::detail::random_provider_base::destroy(&v21);
    v13 = (*(*this + 80))(this);
    *v26 = buf[0];
    *&v26[12] = *(buf + 12);
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v27, v39);
    LOBYTE(__p) = 0;
    v31 = 0;
    if (LOBYTE(v39[30]) == 1)
    {
      __p = *&v39[27];
      v30 = v39[29];
      memset(&v39[27], 0, 24);
      v31 = 1;
    }

    v32 = *&v39[31];
    v33 = *&v39[33];
    v34 = v39[35];
    memset(v24, 0, 24);
    std::vector<ULModelDO>::__init_with_size[abi:ne200100]<ULModelDO const*,ULModelDO const*>(v24, v26, &v35, 1uLL);
    LOBYTE(v22) = 0;
    v23 = 0;
    v19 = *&a2->var0;
    v20 = 1;
    [v13 insertDataObjects:v24 forServiceUUID:&v22 atLoiUUID:&v19];
    v22 = v24;
    std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v22);
    if (v31 == 1 && SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v27);

    CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(v18);
    ULHomeSlamModel::~ULHomeSlamModel(&v35);
  }

  *v26 = buf[0];
  *&v26[12] = *(buf + 12);
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v27, v39);
  LOBYTE(__p) = 0;
  v31 = 0;
  if (LOBYTE(v39[30]) == 1)
  {
    __p = *&v39[27];
    v30 = v39[29];
    memset(&v39[27], 0, 24);
    v31 = 1;
  }

  v32 = *&v39[31];
  v33 = *&v39[33];
  v34 = v39[35];
  v21 = *v26;
  if (v28 == 1)
  {
    ULHomeSlamModel::fromProtobuf(v27, v14, v24);
    std::allocate_shared[abi:ne200100]<ULModelAndStates,std::allocator<ULModelAndStates>,boost::uuids::uuid &,ULHomeSlamModel,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> &,0>();
  }

  std::__throw_bad_variant_access[abi:ne200100]();
}

void sub_2591433B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v61 = *(v57 + 8);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  ULHomeSlamModel::~ULHomeSlamModel(&a57);
  ULModelDO::~ULModelDO(&STACK[0x240]);
  std::optional<ULModelDO>::~optional(&STACK[0x470]);
  _Unwind_Resume(a1);
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(uint64_t a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a1;
      a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, a2);
  }
}

void ULModelLoader::modelDomain(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) >= 4)
  {
    v4 = ULModelLoader::modelDomain(a1);
    CLMicroLocationModel::~CLMicroLocationModel(v4);
  }

  else
  {
    v3 = off_2798D4FE8[a1 - 1];

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }
}

void CLMicroLocationModel::~CLMicroLocationModel(void **this)
{
  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  v2 = this[31];
  if (v2)
  {
    this[32] = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table((this + 25));
  v4 = this + 22;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 136) == 1)
  {
    v3 = this[9];
    if (v3)
    {
      this[10] = v3;
      operator delete(v3);
    }
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((this + 2));
}

void ULModelLoader::loadMapItemsForService(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a1;
  v12[1] = a2;
  v7 = (*(*a4 + 152))(a4);
  v8 = v7;
  if (v7)
  {
    [v7 fetchMapLabelsForModel:v12 andContextLayers:a3 limit:0 ascending:0];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  ULModelLoader::convertMapLabelsToMapItems(v10, a5);
  v11 = v10;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v11);
  v9 = *MEMORY[0x277D85DE8];
}

void ULModelLoader::convertMapLabelsToMapItems(void *a1@<X0>, void *a2@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  v38 = [MEMORY[0x277CBEB38] dictionary];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = *MEMORY[0x277D28838];
    v7 = *MEMORY[0x277D28840];
    v8 = *a1 + 160;
    do
    {
      v9 = v8 - 160;
      v10 = ULMapLabelDO::create((v8 - 160), v4);
      v11 = v6;
      if ((*(v8 - 8) & 1) == 0)
      {
        v12 = v7;

        v11 = v12;
      }

      v13 = [ULLabelKey alloc];
      v14 = v8;
      if (*(v8 + 23) < 0)
      {
        v14 = *v8;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
      v16 = [(ULLabelKey *)v13 initWithName:v15 contextLayer:*(v8 - 72) mapItemType:v11];

      v17 = [v38 objectForKeyedSubscript:v16];

      if (!v17)
      {
        v18 = [MEMORY[0x277CBEB18] array];
        [v38 setObject:v18 forKeyedSubscript:v16];
      }

      v19 = [v38 objectForKeyedSubscript:v16];
      [v19 addObject:v10];

      v8 += 232;
    }

    while (v9 + 232 != v5);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = v38;
  v21 = [v20 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v21)
  {
    v22 = *v40;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v39 + 1) + 8 * i);
        v25 = objc_alloc(MEMORY[0x277D287C8]);
        v26 = [v24 name];
        v27 = [v20 objectForKeyedSubscript:v24];
        v28 = [v24 mapItemType];
        v29 = [v25 initWithName:v26 labels:v27 mapItemType:v28];
        v31 = a2[1];
        v30 = a2[2];
        if (v31 >= v30)
        {
          v33 = (v31 - *a2) >> 3;
          if ((v33 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v34 = v30 - *a2;
          v35 = v34 >> 2;
          if (v34 >> 2 <= (v33 + 1))
          {
            v35 = v33 + 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v36 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v35;
          }

          v47 = a2;
          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(a2, v36);
          }

          v43 = 0;
          v44 = (8 * v33);
          v46 = 0;
          *v44 = v29;
          v45 = 8 * v33 + 8;
          std::vector<NSManagedObjectID * {__strong}>::__swap_out_circular_buffer(a2, &v43);
          v32 = a2[1];
          std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(&v43);
        }

        else
        {
          *v31 = v29;
          v32 = v31 + 1;
        }

        a2[1] = v32;
      }

      v21 = [v20 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v21);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_259143AF4(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULModelDO>::operator=[abi:ne200100]<ULModelDO,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 320) == 1)
  {
    ULModelDO::operator=(a1, a2);
  }

  else
  {
    std::__optional_storage_base<ULModelDO,false>::__construct[abi:ne200100]<ULModelDO>(a1, a2);
  }

  return a1;
}

id ULModelLoader::getContextLayerAccessMap(ULModelLoader *this)
{
  v28[23] = *MEMORY[0x277D85DE8];
  {
    v27[0] = &unk_286A72030;
    v26 = [[ULContextLayerAccess alloc] initWithWriter:@"11111111-1111-1111-1111-111111111111" readers:0];
    v28[0] = v26;
    v27[1] = &unk_286A72048;
    v25 = [[ULContextLayerAccess alloc] initWithWriter:@"11111111-1111-1111-1111-111111111111" readers:0];
    v28[1] = v25;
    v27[2] = &unk_286A72060;
    v24 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000017"];
    v28[2] = v24;
    v27[3] = &unk_286A72078;
    v23 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000001"];
    v28[3] = v23;
    v27[4] = &unk_286A72090;
    v22 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000002"];
    v28[4] = v22;
    v27[5] = &unk_286A720A8;
    v21 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000003"];
    v28[5] = v21;
    v27[6] = &unk_286A720C0;
    v20 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000004"];
    v28[6] = v20;
    v27[7] = &unk_286A720D8;
    v19 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000005"];
    v28[7] = v19;
    v27[8] = &unk_286A720F0;
    v18 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000006"];
    v28[8] = v18;
    v27[9] = &unk_286A72108;
    v17 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000007"];
    v28[9] = v17;
    v27[10] = &unk_286A72120;
    v16 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000008"];
    v28[10] = v16;
    v27[11] = &unk_286A72138;
    v15 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000009"];
    v28[11] = v15;
    v27[12] = &unk_286A72150;
    v14 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000025"];
    v28[12] = v14;
    v27[13] = &unk_286A72168;
    v13 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000022"];
    v28[13] = v13;
    v27[14] = &unk_286A72180;
    v4 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000018"];
    v28[14] = v4;
    v27[15] = &unk_286A72198;
    v5 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000019"];
    v28[15] = v5;
    v27[16] = &unk_286A721B0;
    v6 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000020"];
    v28[16] = v6;
    v27[17] = &unk_286A721C8;
    v7 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000021"];
    v28[17] = v7;
    v27[18] = &unk_286A721E0;
    v8 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000011"];
    v28[18] = v8;
    v27[19] = &unk_286A721F8;
    v9 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000010"];
    v28[19] = v9;
    v27[20] = &unk_286A72210;
    v10 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000023"];
    v28[20] = v10;
    v27[21] = &unk_286A72228;
    v11 = [[ULContextLayerAccess alloc] initWithSingleAccess:@"00000000-0000-0000-0000-000000000024"];
    v28[21] = v11;
    v27[22] = &unk_286A72240;
    v12 = [[ULContextLayerAccess alloc] initWithSingleAccess:0];
    v28[22] = v12;
    ULModelLoader::getContextLayerAccessMap(void)::contextLayerAccessMap = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:23];
  }

  v1 = ULModelLoader::getContextLayerAccessMap(void)::contextLayerAccessMap;
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t ULModelLoader::hasWriteAccessToContextLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a1;
  v13[1] = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v13];
  v5 = ULModelLoader::getContextLayerAccessMap(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 writer];
    if (v8)
    {
      v9 = [v7 writer];
      v10 = [v9 isEqual:v4];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t ULModelLoader::hasReadAccessToContextLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a1;
  v13[1] = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v13];
  v5 = ULModelLoader::getContextLayerAccessMap(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 readers];
    if (v8)
    {
      v9 = [v7 readers];
      v10 = [v9 containsObject:v4];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

double std::__optional_storage_base<ULModelDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULModelDO,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 320) == *(a2 + 320))
  {
    if (*(a1 + 320))
    {
      ULModelDO::operator=(a1, a2);
    }
  }

  else if (*(a1 + 320))
  {
    std::__optional_destruct_base<ULModelDO,false>::reset[abi:ne200100](a1);
  }

  else
  {
    *&result = std::__optional_storage_base<ULModelDO,false>::__construct[abi:ne200100]<ULModelDO>(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t ULModelDO::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v4;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>>((a1 + 32), (a2 + 2));
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 248, (a2 + 248));
  v5 = *(a2 + 280);
  v6 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 280) = v5;
  *(a1 + 296) = v6;
  return a1;
}

unsigned int *std::__optional_destruct_base<ULModelDO,false>::reset[abi:ne200100](unsigned int *result)
{
  if (*(result + 320) == 1)
  {
    v1 = result;
    if (*(result + 272) == 1 && *(result + 271) < 0)
    {
      operator delete(*(result + 31));
    }

    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 8);
    *(v1 + 320) = 0;
  }

  return result;
}

__n128 std::__optional_storage_base<ULModelDO,false>::__construct[abi:ne200100]<ULModelDO>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v4;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100]((a1 + 32), (a2 + 2));
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  if (*(a2 + 272) == 1)
  {
    v5 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 33);
    *(a1 + 248) = v5;
    *(a2 + 32) = 0;
    *(a2 + 33) = 0;
    *(a2 + 31) = 0;
    *(a1 + 272) = 1;
  }

  result = *(a2 + 280);
  v7 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 280) = result;
  *(a1 + 296) = v7;
  *(a1 + 320) = 1;
  return result;
}

unsigned int *std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>>(unsigned int *result, uint64_t a2)
{
  v4 = *(a2 + 208);
  if (result[52] != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_286A5BBC8[v4])(v6);
    }
  }

  return result;
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_109()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULSettings::get<ULSettings::LearnerAlgorithm>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearnerAlgorithm"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A72258 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum const*,CLMicroLocationProto::ServiceQualityReasonEnum const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259144988(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<ULModelAndStates>::__shared_ptr_emplace[abi:ne200100]<boost::uuids::uuid &,ULHomeSlamModel,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> &,std::allocator<ULModelAndStates>,0>(void *a1, uint64_t a2, uint64_t a3, double *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5BC10;
  ULModelAndStates::ULModelAndStates(a1 + 3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<ULModelAndStates>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5BC10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void std::__shared_ptr_emplace<ULModelAndStates>::__on_zero_shared(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::~__hash_table(a1 + 632);
  if (*(a1 + 624) == 1)
  {

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1 + 584, *(a1 + 592));
  }

  if (*(a1 + 544) == 1)
  {
    ULHomeSlamModel::~ULHomeSlamModel((a1 + 336));
  }

  if (*(a1 + 328) == 1)
  {
    if (*(a1 + 319) < 0)
    {
      operator delete(*(a1 + 296));
    }

    v2 = *(a1 + 272);
    if (v2)
    {
      *(a1 + 280) = v2;
      operator delete(v2);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(a1 + 224);
    v4 = (a1 + 200);
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(a1 + 160) == 1)
    {
      v3 = *(a1 + 96);
      if (v3)
      {
        *(a1 + 104) = v3;
        operator delete(v3);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 40);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>,0>(uint64_t a1)
{
  v2 = *(a1 + 400);
  if (v2)
  {
    *(a1 + 408) = v2;
    operator delete(v2);
  }

  ULHomeSlamSettings::~ULHomeSlamSettings((a1 + 8));
}

void *std::__shared_ptr_emplace<ULModelAndStates>::__shared_ptr_emplace[abi:ne200100]<boost::uuids::uuid &,CLMicroLocationModel,std::string,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> &,std::allocator<ULModelAndStates>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5BC10;
  ULModelAndStates::ULModelAndStates(a1 + 3, *a5);
  return a1;
}

void *std::__shared_ptr_emplace<ULModelAndStates>::__shared_ptr_emplace[abi:ne200100]<boost::uuids::uuid,CLMicroLocationModel,std::string,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::allocator<ULModelAndStates>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5BC10;
  ULModelAndStates::ULModelAndStates(a1 + 3, *a5);
  return a1;
}

__n128 ULService::ServiceDescriptor::ServiceDescriptor(__n128 *a1, __n128 *a2, unint64_t a3, unint64_t a4)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a3;
  a1[1].n128_u64[1] = a4;
  return result;
}

uint64_t ULService::ULService(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  v11 = *a3;
  v12 = ULService::uint64ToLocationTypesBitset(a3[7]);
  *(a1 + 8) = *(a3 + 1);
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  if (*(a3 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), a3[4], a3[5]);
  }

  else
  {
    v13 = *(a3 + 2);
    *(a1 + 56) = a3[6];
    *(a1 + 40) = v13;
  }

  if (*(a3 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), a3[8], a3[9]);
  }

  else
  {
    v14 = *(a3 + 4);
    *(a1 + 80) = a3[10];
    *(a1 + 64) = v14;
  }

  *(a1 + 88) = a6;
  *(a1 + 96) = 1;
  *(a1 + 232) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 240) = a4;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a5;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  return a1;
}

void sub_259144F7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

unint64_t ULService::uint64ToLocationTypesBitset(unint64_t this)
{
  if (HIDWORD(this))
  {
    v1 = ULService::uint64ToLocationTypesBitset();
    return ULService::ULService(v1);
  }

  return this;
}

void ULService::modelClientIdentifierStringForServiceTypeAndClientId(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (a1 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(a3, "kMiLoClientIdentifierUnsupervisedShared");
  }

  else if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }
}

uint64_t ULService::isLocationTypeEnabled(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  return (*(a1 + 32) >> a2) & 1;
}

uint64_t ULService::shouldEnableServiceInLocation(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  if (((*(a1 + 32) >> a2) & 1) != 0 && (v2 = *(a1 + 240), (*v2 & 1) == 0) && v2[1] == 1 && v2[2] == 1 && v2[3] == 1 && v2[4] == 1 && (v2[6] & 1) == 0 && (v2[7] & 1) == 0)
  {
    v3 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t ULService::enableInLocationType(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
  }

  *(result + 32) |= 1 << a2;
  return result;
}

uint64_t ULService::disableInLocationType(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
  }

  *(result + 32) &= ~(1 << a2);
  return result;
}

uint64_t *ULService::ingestLocalizationResults(uint64_t *result, uint64_t a2, uint64_t a3, double *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!result[12])
  {
    v6 = result;
    ULService::applyLocalizationResultsToOutstandingLabels(result, a2, a4, a3);
    if (v6[20])
    {
      if (*(a2 + 120) == 1)
      {
        *(&v7 + 1) = 0x8000000000000028;
        *&v7 = 68289538;
        v15 = v7;
        do
        {
          v20 = *(*(v6[16] + 8 * (v6[19] / 0x78uLL)) + 34 * (v6[19] % 0x78uLL));
          if (onceToken_MicroLocation_Default != -1)
          {
            ULService::ingestLocalizationResults();
          }

          v8 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            operator new();
          }

          if ((*(a2 + 120) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          (*(**v6 + 32))(*v6, v6 + 1, &v20, a2);
          *(v6 + 19) = vaddq_s64(*(v6 + 19), xmmword_259220430);
          std::deque<ULService::OutstandingRequest>::__maybe_remove_front_spare[abi:ne200100]((v6 + 15), 1);
        }

        while (v6[20]);
      }

      else
      {
        ULService::releaseOutstandingPredictionRequests(v6, 3);
      }
    }

    else if (v6[31] && *(a2 + 120) == 1)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULService::ingestLocalizationResults();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }

      v10 = *v6;
      LODWORD(v16) = 0;
      boost::uuids::detail::random_provider_base::random_provider_base(&v16);
      *buf = boost::uuids::random_generator_pure::operator()(&v16);
      v18 = v11;
      if ((*(a2 + 120) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      (*(*v10 + 32))(v10, v6 + 1, buf, a2);
      boost::uuids::detail::random_provider_base::destroy(&v16);
    }

    result = [MEMORY[0x277D28868] isInternalInstall];
    if (result && *(a3 + 272) == 1)
    {
      v12 = (*(a3 + 120) - *(a3 + 112)) >> 5;
      v13 = (*(a3 + 144) - *(a3 + 136)) >> 5;
      *buf = (*(a3 + 96) - *(a3 + 88)) >> 5;
      v18 = v12;
      v19 = v13;
      result = (*(**v6 + 56))(*v6, v6 + 1, a3, buf);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591455F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v24);

  _Unwind_Resume(a1);
}

void ULService::applyLocalizationResultsToOutstandingLabels(uint64_t *a1, uint64_t a2, double *a3, uint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 120) == 1 && (*(a2 + 64) & 1) == 0 && a1[37] != a1[38])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      v31 = a4;
      ULService::ingestLocalizationResults();
      a4 = v31;
    }

    v32 = a4;
    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0x34F72C234F72C235 * ((a1[38] - a1[37]) >> 3);
      v8 = *a3;
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v7;
      *&buf[28] = 2050;
      *&buf[30] = v8;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULService::applyLocalizationResultsToOutstandingLabels: starting processing outstanding label requests, numberOfOutstandingLabelRequests:%{public}lu, localizationResultsTimestamp_s:%{public}.09f}", buf, 0x26u);
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
    v9 = a1[37];
    v10 = a1[38];
    if (v9 != v10)
    {
      v11 = v9 + 216;
      do
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULService::ingestLocalizationResults();
        }

        v12 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          ULLabelDO::to_str((v11 - 128), __p);
          v13 = __p;
          if (v39 < 0)
          {
            v13 = __p[0];
          }

          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = v13;
          _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULService::applyLocalizationResultsToOutstandingLabels: processing , label:%{public, location:escape_only}s}", buf, 0x1Cu);
          if (v39 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v14 = *a3;
        v15 = *(v11 - 88);
        v16 = +[ULDefaultsSingleton shared];
        v17 = [v16 defaultsDictionary];

        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOutstandingLabelRequestsTimeout"];
        v19 = [v17 objectForKey:v18];
        if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v20 = [v19 intValue];
        }

        else
        {
          v20 = [&unk_286A72270 intValue];
        }

        v21 = v20;

        if (v14 - v15 < v21)
        {
          if ((*(a2 + 120) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          PointLocation = ULLocalizationResult::getPointLocation(a2);
          v42 = v22;
          v43 = v23;
          if ((*(a2 + 120) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          ULLocalizationResult::getProbabilitiesAsFloatVector(a2, __p);
          if ((*(a2 + 120) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(&v34, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 4);
          v37 = 1;
          ULMapLabelDO::ULMapLabelDO(buf, &PointLocation, __p, &v34, a3, v11 - 128, v11);
          v24 = v45;
          if (v45 >= v46)
          {
            v25 = std::vector<ULMapLabelDO>::__emplace_back_slow_path<ULMapLabelDO>(&v44, buf);
          }

          else
          {
            ULMapLabelDO::ULMapLabelDO(v45, buf);
            v25 = v24 + 232;
          }

          v45 = v25;
          if (v55 == 1)
          {
            v54 = -1;
          }

          if (v53 < 0)
          {
            operator delete(v52);
          }

          if (v51 == 1 && v49)
          {
            v50 = v49;
            operator delete(v49);
          }

          if (v48 == 1 && *&buf[16])
          {
            *&buf[24] = *&buf[16];
            operator delete(*&buf[16]);
          }

          if (v37 == 1 && v34)
          {
            v35 = v34;
            operator delete(v34);
          }

          if (v40 == 1 && __p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        v26 = v11 + 16;
        v11 += 232;
      }

      while (v26 != v10);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v27 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0x34F72C234F72C235 * ((v45 - v44) >> 3)];
      *buf = 138412290;
      *&buf[4] = v28;
      _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_DEFAULT, "ULService::applyLocalizationResultsToOutstandingLabels: created %@ mapLabels", buf, 0xCu);
    }

    std::vector<ULMapLabelDO>::__base_destruct_at_end[abi:ne200100]((a1 + 37), a1[37]);
    if (*(v32 + 272) == 1)
    {
      (*(**a1 + 104))(*a1, &v44);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULService::ingestLocalizationResults();
      }

      v29 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_ERROR, "Unable to persist map labels without a scan event", buf, 2u);
      }
    }

    ULService::appendMapItems(a1, &v44);
    *buf = &v44;
    std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v30 = *MEMORY[0x277D85DE8];
}