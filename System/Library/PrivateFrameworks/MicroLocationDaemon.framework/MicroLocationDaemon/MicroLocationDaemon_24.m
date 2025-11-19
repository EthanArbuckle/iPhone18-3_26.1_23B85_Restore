void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerDisableCustomLoiEvent,&CLMicroLocationLoiManager::CustomLoiDisableWhileInCustomLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapperWithNoData<CLMicroLocationLoiManager,&CLMicroLocationLoiManager::entryFunctionEnteringHomeLoiState>::~EventHandlerWrapperWithNoData(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiDuringLoiEntry>::stateFunction@<X0>(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = v7[4];
    v9 = v7[5];
    CLMicroLocationLoiManager::resetLoiVariables(v5);
    *v49.data = v8;
    *&v49.data[8] = v9;
    result = CLMicroLocationLoiManager::handleEnableCustomLoi(v5, v49, a3);
    a3[24] = 1;
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v33 = lpsrc;
    v12 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = *(v5 + 24);
      if (*(v13 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, *(v13 + 8), *(v13 + 16));
      }

      else
      {
        v14 = *(v13 + 8);
        v35.__r_.__value_.__r.__words[2] = *(v13 + 24);
        *&v35.__r_.__value_.__l.__data_ = v14;
      }

      v15 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
      v16 = v35.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v17 = &v35;
      if (v15 < 0)
      {
        v17 = v16;
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
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 2081;
      v41 = v17;
      v42 = 2081;
      v43 = p_p;
      v44 = 2082;
      v45 = "assert";
      v46 = 2081;
      v47 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v19))
    {
      v20 = *(v5 + 24);
      if (*(v20 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, *(v20 + 8), *(v20 + 16));
      }

      else
      {
        v21 = *(v20 + 8);
        v35.__r_.__value_.__r.__words[2] = *(v20 + 24);
        *&v35.__r_.__value_.__l.__data_ = v21;
      }

      v22 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
      v23 = v35.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v24 = &v35;
      if (v22 < 0)
      {
        v24 = v23;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &__p;
      }

      else
      {
        v25 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 2081;
      v41 = v24;
      v42 = 2081;
      v43 = v25;
      v44 = 2082;
      v45 = "assert";
      v46 = 2081;
      v47 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }

    v26 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = *(v5 + 24);
      if (*(v27 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, *(v27 + 8), *(v27 + 16));
      }

      else
      {
        v28 = *(v27 + 8);
        v35.__r_.__value_.__r.__words[2] = *(v27 + 24);
        *&v35.__r_.__value_.__l.__data_ = v28;
      }

      v29 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
      v30 = v35.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v33, &__p);
      v31 = &v35;
      if (v29 < 0)
      {
        v31 = v30;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &__p;
      }

      else
      {
        v32 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 2081;
      v41 = v31;
      v42 = 2081;
      v43 = v32;
      v44 = 2082;
      v45 = "assert";
      v46 = 2081;
      v47 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }

    result = abort_report_np();
    __break(1u);
  }

  return result;
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiDuringLoiEntry>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiEntryDuringLoiEntry>::stateFunction@<X0>(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
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
    result = CLMicroLocationLoiManager::handleCustomLoiVisitEntry(v5, v7[2], a3);
    a3[24] = 1;
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = *(v5 + 3);
      if (*(v11 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v11 + 8), *(v11 + 16));
      }

      else
      {
        v12 = *(v11 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v11 + 24);
        *&v32.__r_.__value_.__l.__data_ = v12;
      }

      v13 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v14 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v15 = &v32;
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
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v15;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v17 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v17))
    {
      v18 = *(v5 + 3);
      if (*(v18 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v18 + 8), *(v18 + 16));
      }

      else
      {
        v19 = *(v18 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v18 + 24);
        *&v32.__r_.__value_.__l.__data_ = v19;
      }

      v20 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v21 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v22 = &v32;
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
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v22;
      v39 = 2081;
      v40 = v23;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v24 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(v5 + 3);
      if (*(v25 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v25 + 8), *(v25 + 16));
      }

      else
      {
        v26 = *(v25 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v25 + 24);
        *&v32.__r_.__value_.__l.__data_ = v26;
      }

      v27 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v28 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v29 = &v32;
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
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v29;
      v39 = 2081;
      v40 = v30;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    result = abort_report_np();
    __break(1u);
  }

  return result;
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiEntryDuringLoiEntry>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerReceivedLoiForLocationEvent,&CLMicroLocationLoiManager::LoiForGivenLocation>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToFetchLoiForLocationEvent,&CLMicroLocationLoiManager::LoiFetchFailure>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    CLMicroLocationLoiManager::LoiFetchFailure(v5, v7, a3);
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

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToFetchLoiForLocationEvent,&CLMicroLocationLoiManager::LoiFetchFailure>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchedPlaceInference,&CLMicroLocationLoiManager::SuccessfullyFetchedPlaceInference>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    CLMicroLocationLoiManager::SuccessfullyFetchedPlaceInference(v5, v7, a3);
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

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchedPlaceInference,&CLMicroLocationLoiManager::SuccessfullyFetchedPlaceInference>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToFetchPlaceInference,&CLMicroLocationLoiManager::FailedToFetchedPlaceInference>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    CLMicroLocationLoiManager::FailedToFetchedPlaceInference(v5, v7, a3);
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

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToFetchPlaceInference,&CLMicroLocationLoiManager::FailedToFetchedPlaceInference>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerReceivedRelatedLoisEvent,&CLMicroLocationLoiManager::RelatedLois>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    CLMicroLocationLoiManager::RelatedLois(v5, v7, a3);
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

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerReceivedRelatedLoisEvent,&CLMicroLocationLoiManager::RelatedLois>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapperWithNoData<CLMicroLocationLoiManager,&CLMicroLocationLoiManager::entryFunctionEnteringCustomLoiState>::stateFunction(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 - 16;
  }

  else
  {
    v2 = 0;
  }

  *(v2 + 514) = 1;
  CLMicroLocationLoiManager::startCustomLoiEntryTimer(v2);
}

void CLMicroLocationStateMachine::EventHandlerWrapperWithNoData<CLMicroLocationLoiManager,&CLMicroLocationLoiManager::entryFunctionEnteringCustomLoiState>::~EventHandlerWrapperWithNoData(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileEnabling>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    CLMicroLocationLoiManager::EnableCustomLoiWhileEnabling(v5, v7, a3);
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

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileEnabling>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiEntryWhileEnabling>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::CustomLoiEntryWhileEnabling(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 24);
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
      v17 = *(v5 + 24);
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
      v24 = *(v5 + 24);
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

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiEntryWhileEnabling>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGotLocationUpdateEvent,&CLMicroLocationLoiManager::LocationUpdate>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::LocationUpdate(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 24);
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
      v17 = *(v5 + 24);
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
      v24 = *(v5 + 24);
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

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGotLocationUpdateEvent,&CLMicroLocationLoiManager::LocationUpdate>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToGetLocationUpdateEvent,&CLMicroLocationLoiManager::FailureToGetLocationUpdate>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    CLMicroLocationLoiManager::FailureToGetLocationUpdate(v5, v7, a3);
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

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToGetLocationUpdateEvent,&CLMicroLocationLoiManager::FailureToGetLocationUpdate>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerStartedActivatingGeofenceEvent,&CLMicroLocationLoiManager::GeofenceActivationStarted>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    CLMicroLocationLoiManager::GeofenceActivationStarted(v5, v7, a3);
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

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerStartedActivatingGeofenceEvent,&CLMicroLocationLoiManager::GeofenceActivationStarted>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToSetGeofenceEvent,&CLMicroLocationLoiManager::FailureToActivateGeofenceAtCurrentLocation>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    CLMicroLocationLoiManager::FailureToActivateGeofenceAtCurrentLocation(v5, v7, a3);
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

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFailedToSetGeofenceEvent,&CLMicroLocationLoiManager::FailureToActivateGeofenceAtCurrentLocation>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnteringCustomLoiTimeout,&CLMicroLocationLoiManager::EnteringCustomLoiTimeoutHandler>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v7 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::EnteringCustomLoiTimeoutHandler(v5, a3);
  }

  else
  {
    v8 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = *(v5 + 3);
      if (*(v9 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, *(v9 + 8), *(v9 + 16));
      }

      else
      {
        v10 = *(v9 + 8);
        v30.__r_.__value_.__r.__words[2] = *(v9 + 24);
        *&v30.__r_.__value_.__l.__data_ = v10;
      }

      v11 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
      v12 = v30.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v13 = &v30;
      if (v11 < 0)
      {
        v13 = v12;
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
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2081;
      v36 = v13;
      v37 = 2081;
      v38 = p_p;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v15))
    {
      v16 = *(v5 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v30.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v30.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
      v19 = v30.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v30;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2081;
      v36 = v20;
      v37 = 2081;
      v38 = v21;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    v22 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(v5 + 3);
      if (*(v23 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, *(v23 + 8), *(v23 + 16));
      }

      else
      {
        v24 = *(v23 + 8);
        v30.__r_.__value_.__r.__words[2] = *(v23 + 24);
        *&v30.__r_.__value_.__l.__data_ = v24;
      }

      v25 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
      v26 = v30.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v27 = &v30;
      if (v25 < 0)
      {
        v27 = v26;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &__p;
      }

      else
      {
        v28 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2081;
      v36 = v27;
      v37 = 2081;
      v38 = v28;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnteringCustomLoiTimeout,&CLMicroLocationLoiManager::EnteringCustomLoiTimeoutHandler>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapperWithNoData<CLMicroLocationLoiManager,&CLMicroLocationLoiManager::exitFunctionEnteringCustomLoiState>::stateFunction(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 - 16;
  }

  else
  {
    v2 = 0;
  }

  [*(v2 + 528) invalidate];
  v3 = *(v2 + 528);
  *(v2 + 528) = 0;
}

void CLMicroLocationStateMachine::EventHandlerWrapperWithNoData<CLMicroLocationLoiManager,&CLMicroLocationLoiManager::exitFunctionEnteringCustomLoiState>::~EventHandlerWrapperWithNoData(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_129()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void CLMicroLocationStateMachine::EventBase::~EventBase(void **this)
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

void CLMiLoLoiManagerRefreshLocationOnEvent::CLMiLoLoiManagerRefreshLocationOnEvent(CLMiLoLoiManagerRefreshLocationOnEvent *this)
{
  *this = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>(this + 8, "No Name Given");
  *this = &unk_286A5E210;
  std::string::__assign_external((this + 8), "Refresh Location on regular interval", 0x24uLL);
}

void sub_2591AC6DC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<std::__wrap_iter<boost::uuids::uuid const*>,std::__wrap_iter<boost::uuids::uuid const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<boost::uuids::uuid>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2591AC7C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerLoiVisitEntryEvent::~CLMiLoLoiManagerLoiVisitEntryEvent(id *this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerFailedToFetchPlaceInference::CLMiLoLoiManagerFailedToFetchPlaceInference(CLMiLoLoiManagerFailedToFetchPlaceInference *this)
{
  *this = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>(this + 8, "No Name Given");
  *this = &unk_286A5E270;
  std::string::__assign_external((this + 8), "Failed To Fetched Place Inference", 0x21uLL);
}

void sub_2591AC958(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMiLoLoiManagerFetchedPlaceInference::CLMiLoLoiManagerFetchedPlaceInference(uint64_t a1, void *a2)
{
  v4 = a2;
  *a1 = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 8), "No Name Given");
  *a1 = &unk_286A5E290;
  *(a1 + 32) = 0;
  objc_storeStrong((a1 + 32), a2);
  std::string::__assign_external((a1 + 8), "Fetched Place Inference For Current Location", 0x2CuLL);

  return a1;
}

void sub_2591ACAA0(_Unwind_Exception *a1)
{
  *v2 = v4;
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void CLMiLoLoiManagerFetchedPlaceInference::~CLMiLoLoiManagerFetchedPlaceInference(id *this)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(this);

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerFailedToFetchLoiForLocationEvent::CLMiLoLoiManagerFailedToFetchLoiForLocationEvent(CLMiLoLoiManagerFailedToFetchLoiForLocationEvent *this)
{
  *this = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>(this + 8, "No Name Given");
  *this = &unk_286A5E2B0;
  std::string::__assign_external((this + 8), "Failed to Get LOI Event", 0x17uLL);
}

void sub_2591ACB94(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerReceivedLoiForLocationEvent::~CLMiLoLoiManagerReceivedLoiForLocationEvent(id *this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerReceivedRelatedLoisEvent::~CLMiLoLoiManagerReceivedRelatedLoisEvent(CLMiLoLoiManagerReceivedRelatedLoisEvent *this)
{
  CLMiLoLoiManagerReceivedRelatedLoisEvent::~CLMiLoLoiManagerReceivedRelatedLoisEvent(this);

  JUMPOUT(0x259CA1F90);
}

{
  *this = &unk_286A5E2F0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void CLMiLoLoiManagerFailedToGetLocationUpdateEvent::CLMiLoLoiManagerFailedToGetLocationUpdateEvent(CLMiLoLoiManagerFailedToGetLocationUpdateEvent *this)
{
  *this = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>(this + 8, "No Name Given");
  *this = &unk_286A5E310;
  std::string::__assign_external((this + 8), "Failed To Get Location Update", 0x1DuLL);
}

void sub_2591ACDD8(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerGotLocationUpdateEvent::CLMiLoLoiManagerGotLocationUpdateEvent(CLMiLoLoiManagerGotLocationUpdateEvent *this, CLLocation *a2)
{
  v3 = a2;
  *this = &unk_286A5E1B0;
  v4 = this + 8;
  std::string::basic_string[abi:ne200100]<0>(this + 8, "No Name Given");
  *this = &unk_286A5E330;
  *(this + 4) = v3;
  v5 = v3;
  if (*(this + 31) < 0)
  {
    *(this + 2) = 19;
    v4 = *(this + 1);
  }

  else
  {
    *(this + 31) = 19;
  }

  strcpy(v4, "Got Location Update");
}

void CLMiLoLoiManagerGotLocationUpdateEvent::~CLMiLoLoiManagerGotLocationUpdateEvent(id *this)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(this);

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerLeechedLocationEvent::~CLMiLoLoiManagerLeechedLocationEvent(id *this)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(this);

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerFailedToSetGeofenceEvent::CLMiLoLoiManagerFailedToSetGeofenceEvent(CLMiLoLoiManagerFailedToSetGeofenceEvent *this)
{
  *this = &unk_286A5E1B0;
  v2 = std::string::basic_string[abi:ne200100]<0>(this + 8, "No Name Given");
  *this = &unk_286A5E370;
  if (*(this + 31) < 0)
  {
    *(this + 2) = 22;
    v2 = *(this + 1);
  }

  else
  {
    *(this + 31) = 22;
  }

  strcpy(v2, "Failed To Set Geofence");
}

void CLMiLoLoiManagerEnteringCustomLoiTimeout::CLMiLoLoiManagerEnteringCustomLoiTimeout(CLMiLoLoiManagerEnteringCustomLoiTimeout *this)
{
  *this = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>(this + 8, "No Name Given");
  *this = &unk_286A5E3F0;
  std::string::__assign_external((this + 8), "Entering Custom LOI Timeout", 0x1BuLL);
}

void sub_2591AD2A4(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,CLMicroLocationStateMachine::EventHandlerWrapperBase *>,std::__map_value_compare<std::string,std::__value_type<std::string,CLMicroLocationStateMachine::EventHandlerWrapperBase *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLMicroLocationStateMachine::EventHandlerWrapperBase *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void CLMicroLocationMaintenance::CLMicroLocationMaintenance(CLMicroLocationMaintenance *this, ULDatabaseStoreInterface *a2, ULDatabaseManagementInterface *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = a3;
  v6[0] = &unk_286A5E460;
  v6[1] = this;
  v6[3] = v6;
  v7[0] = &unk_286A5E4E0;
  v7[1] = this;
  v7[3] = v7;
  v8[0] = &unk_286A5E560;
  v8[1] = this;
  v8[3] = v8;
  v9[0] = &unk_286A5E5E0;
  v9[1] = this;
  v9[3] = v9;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__init_with_size[abi:ne200100]<std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*>(this + 16, v6, &v10, 4uLL);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](&v6[i]);
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2591AD508(_Unwind_Exception *a1)
{
  for (i = 96; i != -32; i -= 32)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v1 + i);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationMaintenance::collectMetricsPreMaintenance(CFAbsoluteTime *this)
{
  this[9] = cl::chrono::CFAbsoluteTimeClock::now();
  v2 = (*(**this + 80))();
  *(this + 10) = [v2 count];

  v3 = (*(**this + 144))();
  *(this + 11) = [v3 count];

  v4 = (*(**this + 176))();
  v5 = [v4 count];
  v6 = (*(**this + 184))();
  v7 = [v6 count];
  v8 = (*(**this + 192))();
  *(this + 12) = v7 + v5 + [v8 count];

  v9 = (*(**this + 160))();
  LODWORD(v6) = [v9 count];
  v10 = (*(**this + 168))();
  *(this + 13) = [v10 count] + v6;

  v11 = (*(**this + 88))();
  *(this + 14) = [v11 count];

  v12 = (*(**this + 144))();
  v13 = [v12 getOldestScanTimestamp];
  LOBYTE(v10) = v14;

  if (v10)
  {
    v15 = *&v13;
  }

  else
  {
    v15 = cl::chrono::CFAbsoluteTimeClock::now();
  }

  this[8] = v15;
}

void CLMicroLocationMaintenance::collectMetricsPostMaintenance(CLMicroLocationMaintenance *this)
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v7 = v6;

  if (v7)
  {
    cl::chrono::CFAbsoluteTimeClock::now();
    v8 = *(this + 8);
    v9 = (*(**this + 80))();
    v10 = [v9 count];

    v11 = (*(**this + 144))();
    v12 = [v11 count];

    v13 = (*(**this + 176))();
    v14 = [v13 count];
    v15 = (*(**this + 184))();
    v16 = [v15 count];
    v17 = (*(**this + 192))();
    v18 = [v17 count];

    v19 = (*(**this + 160))();
    v20 = [v19 count];
    v21 = (*(**this + 168))();
    v22 = [v21 count];

    v23 = (*(**this + 88))();
    v24 = [v23 count];

    v25 = (*(**this + 112))();
    v26 = v25;
    if (v25)
    {
      [v25 getAllDistinctCustomLoiIds];
    }

    else
    {
      *buf = 0;
      v38 = 0;
      v39 = 0;
    }

    cl::chrono::CFAbsoluteTimeClock::now();
    v28 = *(this + 9);
    v32 = v10;
    v33 = v12;
    v34 = v16 + v14 + v18;
    v35 = v22 + v20;
    v36 = v24;
    v30 = 0;
    v31 = 0;
    __p = 0;
    std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(&__p, *buf, v38, (v38 - *buf) >> 4);
    AnalyticsSendEventLazy();
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    if (*buf)
    {
      v38 = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationMaintenance::collectMetricsPostMaintenance();
    }

    v27 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_DEFAULT, "CLMicroLocationMaintenance, collectMetricsPostMaintenance, not sending event because sending to CoreAnalytics is disabled", buf, 2u);
    }
  }
}

id ___ZN26CLMicroLocationMaintenance29collectMetricsPostMaintenanceEv_block_invoke(uint64_t a1)
{
  v20[13] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v19[0] = @"ageOfOldestRecordingDays";
  v18 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v20[0] = v18;
  v19[1] = @"numModels";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 80)];
  v20[1] = v17;
  v19[2] = @"numModelsDeleted";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v2[10] - *(a1 + 80))];
  v20[2] = v16;
  v19[3] = @"numRecordingEvents";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 84)];
  v20[3] = v15;
  v19[4] = @"numRecordingEventsDeleted";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v2[11] - *(a1 + 84))];
  v20[4] = v3;
  v19[5] = @"numMeasurements";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 88)];
  v20[5] = v4;
  v19[6] = @"numMeasurementsDeleted";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v2[12] - *(a1 + 88))];
  v20[6] = v5;
  v19[7] = @"numConfigurations";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 92)];
  v20[7] = v6;
  v19[8] = @"numConfiguationsDeleted";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v2[13] - *(a1 + 92))];
  v20[8] = v7;
  v19[9] = @"numRapportEntries";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 96)];
  v20[9] = v8;
  v19[10] = @"numRapportEntriesDeleted";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v2[14] - *(a1 + 96))];
  v20[10] = v9;
  v19[11] = @"maintenanceRunTime";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v20[11] = v10;
  v19[12] = @"numCustomLoiIds";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(*(a1 + 64) - *(a1 + 56)) >> 4];
  v20[12] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:13];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __copy_helper_block_ea8_56c59_ZTSNSt3__16vectorIN5boost5uuids4uuidENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
}

void __destroy_helper_block_ea8_56c59_ZTSNSt3__16vectorIN5boost5uuids4uuidENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void CLMicroLocationMaintenance::deleteOldEntries(CLMicroLocationMaintenance *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRecordingPurgeAge"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = [&unk_286A727B0 intValue];
  }

  v7 = v6;

  v8 = (*(*v1 + 24))(v1, 1440 * v7, 0, 0);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMaintenance::collectMetricsPostMaintenance();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    v10 = "NOT ";
    if (v8)
    {
      v10 = "";
    }

    v12 = 136446210;
    v13 = v10;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "Did %{public}s delete old data", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationMaintenance::freeDatabaseSpace(CLMicroLocationMaintenance *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = (*(**(this + 1) + 48))(*(this + 1));
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMaintenance::collectMetricsPostMaintenance();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    v3 = "NOT";
    if (v1)
    {
      v3 = "";
    }

    v5 = 136446210;
    v6 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "Did %{public}s free database space", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t CLMicroLocationMaintenance::executeWorkItems(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(result + 16);
  for (i = *(result + 24); v2 != i; v2 += 32)
  {
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, a2);
    v5 = *(v2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, v7);
    result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_130()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5E460;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  CLMicroLocationMaintenance::collectMetricsPreMaintenance(*(a1 + 8));
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591AE624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5E4E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  CLMicroLocationMaintenance::deleteOldEntries(*(a1 + 8));
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591AE78C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5E560;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  CLMicroLocationMaintenance::freeDatabaseSpace(*(a1 + 8));
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591AE8F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5E5E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  CLMicroLocationMaintenance::collectMetricsPostMaintenance(*(a1 + 8));
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591AEA5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL CLMicroLocationsMeasurementFilters::isAnchorModelValid(uint64_t a1, uint64_t ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  do
  {
    MEMORY[0x259CA1E90](&v9);
    v5 = boost::algorithm::ifind_first<std::string const,std::string>(a1, v2, &v9);
    v7 = v6;
    std::locale::~locale(&v9);
    result = v5 != v7;
    if (v5 != v7)
    {
      break;
    }

    v2 += 3;
  }

  while (v2 != v3);
  return result;
}

char *boost::algorithm::ifind_first<std::string const,std::string>(uint64_t a1, uint64_t **a2, std::locale *a3)
{
  std::locale::locale(&v12, a3);
  v5 = *(a2 + 23);
  v6 = a2[1];
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (v5 < 0)
  {
    v5 = v6;
  }

  v7 = a2 + v5;
  std::locale::locale(&v15, &v12);
  v13[0] = a2;
  v13[1] = v7;
  std::locale::locale(&v14, &v15);
  std::locale::~locale(&v15);
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 < 0)
  {
    v8 = *(a1 + 8);
  }

  v10 = boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_iequal>::operator()<std::__wrap_iter<char const*>>(v13, v9, &v9[v8]);
  std::locale::~locale(&v14);
  std::locale::~locale(&v12);
  return v10;
}

void sub_2591AEC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(v10 + 2);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

char *boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_iequal>::operator()<std::__wrap_iter<char const*>>(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  if (a2 != a3)
  {
    v4 = a2;
    v6 = *(a1 + 8);
    do
    {
      v7 = *a1;
      if (*a1 == v6)
      {
        break;
      }

      if (v4 != v3)
      {
        v8 = v4;
        do
        {
          if (v7 == *(a1 + 8))
          {
            break;
          }

          if (!boost::algorithm::is_iequal::operator()<char,char>((a1 + 16), v8, v7))
          {
            break;
          }

          ++v8;
          ++v7;
        }

        while (v8 != v3);
        v6 = *(a1 + 8);
      }

      if (v7 == v6)
      {
        return v4;
      }

      ++v4;
    }

    while (v4 != v3);
    return v3;
  }

  return v3;
}

BOOL boost::algorithm::is_iequal::operator()<char,char>(const std::locale *a1, char *a2, char *a3)
{
  v5 = *a2;
  v6 = MEMORY[0x277D82680];
  v7 = std::locale::use_facet(a1, MEMORY[0x277D82680]);
  LODWORD(v5) = (v7->__vftable[1].~facet)(v7, v5);
  v8 = *a3;
  v9 = std::locale::use_facet(a1, v6);
  return v5 == (v9->__vftable[1].~facet)(v9, v8);
}

void CLMicroLocationModel::CLMicroLocationModel(CLMicroLocationModel *this)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 3) = 0;
  *this = 0;
  *(this + 8) = 0;
  CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap((this + 16));
  *(this + 11) = 0u;
  *(this + 72) = 0;
  *(this + 136) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 42) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 28) = 0;
  *(this + 58) = 1065353216;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULVersion"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSString * {__strong},std::string>(v5, v9);
    *(this + 17) = *v9;
    *(this + 36) = *&v9[16];
  }

  else
  {
    ULSettings::convert<NSString * {__strong},std::string>(@"4.0.26", v9);
    *&v10[7] = *&v9[15];
    *v10 = *&v9[8];
    v6 = v9[23];
    v7 = *&v9[8];
    *(this + 34) = *v9;
    *(this + 35) = v7;
    *(this + 287) = *&v10[7];
    *(this + 295) = v6;
  }

  *(this + 296) = 0;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2591AEF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v15 = *(v9 + 248);
  if (v15)
  {
    *(v9 + 256) = v15;
    operator delete(v15);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table((v13 + 3));
  a9 = v13;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 136) == 1)
  {
    v16 = *(v9 + 72);
    if (v16)
    {
      *(v9 + 80) = v16;
      operator delete(v16);
    }
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v9 + 16);
  _Unwind_Resume(a1);
}

void CLMicroLocationModel::toProtobuf(CLMicroLocationModel *this@<X0>, uint64_t a2@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  CLMicroLocationProto::Model::Model(a2);
  v5 = *(this + 22);
  for (i = *(this + 23); v5 != i; v5 += 32)
  {
    v7 = *(a2 + 20);
    v8 = *(a2 + 16);
    if (v8 >= v7)
    {
      if (v7 == *(a2 + 24))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 8));
        v7 = *(a2 + 20);
      }

      *(a2 + 20) = v7 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::Fingerprint>::New();
    }

    v9 = *(a2 + 8);
    *(a2 + 16) = v8 + 1;
    v10 = *(v9 + 8 * v8);
    v11 = *v5;
    v54 = *(v5 + 16);
    v55 = 1;
    CLMicroLocationFingerprint::toProtobuf(v11, &v54, &__str);
    CLMicroLocationProto::Fingerprint::CopyFrom(v10, &__str);
    CLMicroLocationProto::Fingerprint::~Fingerprint(&__str);
  }

  v12 = *(this + 27);
  for (j = MEMORY[0x277D82C30]; v12; v12 = *v12)
  {
    v14 = *(a2 + 68);
    v15 = *(a2 + 64);
    if (v15 >= v14)
    {
      if (v14 == *(a2 + 72))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 56));
        v14 = *(a2 + 68);
      }

      *(a2 + 68) = v14 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::ClusterRecordings>::New();
    }

    v16 = *(a2 + 56);
    *(a2 + 64) = v15 + 1;
    v17 = *(v16 + 8 * v15);
    v18 = 0;
    *(&__str.__r_.__value_.__s + 23) = 16;
    do
    {
      __str.__r_.__value_.__s.__data_[v18] = *(v12 + v18 + 16);
      ++v18;
    }

    while (v18 != 16);
    __str.__r_.__value_.__s.__data_[16] = 0;
    *(v17 + 44) |= 1u;
    v19 = *(v17 + 8);
    if (v19 == j)
    {
      operator new();
    }

    v20 = std::string::operator=(v19, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v21 = v12[4];
    v22 = v12[5];
    while (v21 != v22)
    {
      v23 = 0;
      *(&__str.__r_.__value_.__s + 23) = 16;
      do
      {
        __str.__r_.__value_.__s.__data_[v23] = *(v21 + v23);
        ++v23;
      }

      while (v23 != 16);
      __str.__r_.__value_.__s.__data_[16] = 0;
      v24 = *(v17 + 28);
      v25 = *(v17 + 24);
      if (v25 >= v24)
      {
        if (v24 == *(v17 + 32))
        {
          v20 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v17 + 16));
          v24 = *(v17 + 28);
        }

        *(v17 + 28) = v24 + 1;
        v27 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v20);
        v28 = *(v17 + 16);
        v29 = *(v17 + 24);
        *(v17 + 24) = v29 + 1;
        *(v28 + 8 * v29) = v27;
      }

      else
      {
        v26 = *(v17 + 16);
        *(v17 + 24) = v25 + 1;
        v27 = *(v26 + 8 * v25);
      }

      v20 = std::string::operator=(v27, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v21 += 16;
    }
  }

  v30 = *(this + 28);
  *(a2 + 200) |= 2u;
  *(a2 + 32) = v30;
  v31 = *this;
  if (!CLMicroLocationProto::ModelType_IsValid(*this))
  {
    v49 = "::CLMicroLocationProto::Model_GenerationAlgorithm_IsValid(value)";
    v50 = 13962;
    v51 = "set_generationalgorithm";
    goto LABEL_59;
  }

  *(a2 + 200) |= 8u;
  *(a2 + 48) = v31;
  v32 = *(this + 1);
  if (!CLMicroLocationProto::ModelType_IsValid(v32))
  {
    v49 = "::CLMicroLocationProto::ModelType_IsValid(value)";
    v50 = 13985;
    v51 = "set_modeltype";
LABEL_59:
    __assert_rtn(v51, "microlocation.pb.h", v50, v49);
  }

  *(a2 + 200) |= 0x10u;
  *(a2 + 52) = v32;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationModel::toProtobuf();
  }

  v33 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    isStable = CLMicroLocationModel::isStable(this);
    __str.__r_.__value_.__r.__words[0] = 68289282;
    LOWORD(__str.__r_.__value_.__r.__words[1]) = 2082;
    *(&__str.__r_.__value_.__r.__words[1] + 2) = "";
    WORD1(__str.__r_.__value_.__r.__words[2]) = 1026;
    HIDWORD(__str.__r_.__value_.__r.__words[2]) = isStable;
    _os_log_impl(&dword_258FE9000, v33, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:isStable, toProtobuf, isStableflag:%{public}hhd}", &__str, 0x18u);
  }

  v35 = CLMicroLocationModel::isStable(this);
  v36 = *(a2 + 200);
  *(a2 + 104) = v35;
  *(a2 + 108) = *(this + 3);
  *(a2 + 200) = v36 | 0x380;
  v37 = *(a2 + 112);
  if (!v37)
  {
    operator new();
  }

  CLMicroLocationAnchorAppearanceMap::toProtobuf((this + 16), &__str);
  CLMicroLocationProto::anchorAppearancesVector::CopyFrom(v37, &__str);
  CLMicroLocationProto::anchorAppearancesVector::~anchorAppearancesVector(&__str);
  v38 = *(this + 60);
  if (!CLMicroLocationProto::Model_ModelQualityLevel_IsValid(v38))
  {
    v52 = 14186;
    v53 = "set_qualityindicator";
    goto LABEL_62;
  }

  *(a2 + 200) |= 0x800u;
  *(a2 + 128) = v38;
  v39 = *(this + 61);
  if (!CLMicroLocationProto::Model_ModelQualityLevel_IsValid(v39))
  {
    v52 = 14209;
    v53 = "set_candidatequalityindicator";
LABEL_62:
    __assert_rtn(v53, "microlocation.pb.h", v52, "::CLMicroLocationProto::Model_ModelQualityLevel_IsValid(value)");
  }

  v40 = *(a2 + 200) | 0x1000;
  *(a2 + 200) = v40;
  *(a2 + 132) = v39;
  v41 = *(this + 31);
  v42 = *(this + 32);
  if (v41 != v42)
  {
    do
    {
      v43 = *v41;
      if (!CLMicroLocationProto::ServiceQualityReasonEnum_IsValid(*v41))
      {
        __assert_rtn("add_candidatequalityreasons", "microlocation.pb.h", 14229, "::CLMicroLocationProto::ServiceQualityReasonEnum_IsValid(value)");
      }

      v44 = *(a2 + 144);
      if (v44 == *(a2 + 148))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 136), v44 + 1);
        v44 = *(a2 + 144);
      }

      v45 = *(a2 + 136);
      *(a2 + 144) = v44 + 1;
      *(v45 + 4 * v44) = v43;
      ++v41;
    }

    while (v41 != v42);
    v40 = *(a2 + 200);
  }

  *(a2 + 152) = *(this + 9);
  *(a2 + 168) = *(this + 20);
  *(a2 + 192) = *(this + 42);
  *(a2 + 200) = v40 | 0x3FC000;
  v46 = *(a2 + 176);
  if (v46 == j)
  {
    operator new();
  }

  std::string::operator=(v46, (this + 272));
  if (*(this + 1) == 3 && *(this + 136) == 1)
  {
    *(a2 + 200) |= 0x400000u;
    v47 = *(a2 + 184);
    if (!v47)
    {
      operator new();
    }

    CLMicroLocationModel::BlueAtlasData::toProtobuf(this + 9, &__str);
    CLMicroLocationProto::BlueAtlasData::CopyFrom(v47, &__str);
    CLMicroLocationProto::BlueAtlasData::~BlueAtlasData(&__str);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_2591AF5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  MEMORY[0x259CA1F90](v19, 0x10B1C400E3A2C2ELL);
  CLMicroLocationProto::Model::~Model(v18);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationModel::isStable(CLMicroLocationModel *this)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(this + 1) == 2)
  {
    v2 = *(this + 8);
  }

  else
  {
    v3 = *(this + 27);
    if (v3)
    {
      v4 = 0;
      do
      {
        v4 += (v3[5] - v3[4]) >> 4;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      v4 = 0;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(this + 3);
      v7 = *(this + 8);
      v23[0] = 68289794;
      v23[1] = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2050;
      v27 = v4;
      v28 = 2050;
      v29 = v6;
      v30 = 1026;
      v31 = v7;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:isStable, getter, numRecordingsBeforePruning:%{public}llu, numDaysWithRecordings:%{public}ld, fIsStable:%{public}hhd}", v23, 0x2Cu);
    }

    if (*(this + 8))
    {
      goto LABEL_21;
    }

    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumNumberOfRecordingsInStableModel"];
    v11 = [v9 objectForKey:v10];
    if (!v11)
    {
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 unsignedLongValue];
    }

    else
    {
LABEL_16:
      v12 = [&unk_286A72828 unsignedLongValue];
    }

    v13 = v12;

    if (v4 >= v13)
    {
LABEL_21:
      v2 = 1;
    }

    else
    {
      v14 = *(this + 3);
      v15 = +[ULDefaultsSingleton shared];
      v16 = [v15 defaultsDictionary];

      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumNumberOfDaysWithRecordingsInStableModel"];
      v18 = [v16 objectForKey:v17];
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v19 = [v18 unsignedLongValue];
      }

      else
      {
        v19 = [&unk_286A72810 unsignedLongValue];
      }

      v20 = v19;

      v2 = v20 <= v14;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v2 & 1;
}

float CLMicroLocationModel::BlueAtlasData::toProtobuf@<S0>(CLMacAddress *this@<X0>, uint64_t a2@<X8>)
{
  v4 = CLMicroLocationProto::BlueAtlasData::BlueAtlasData(a2);
  var0 = this->var0;
  v6 = this[1].var0;
  while (var0 != v6)
  {
    v7 = CLMacAddress::toUint64(var0);
    v8 = *(a2 + 40);
    if (v8 == *(a2 + 44))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve((a2 + 32), v8 + 1);
      v8 = *(a2 + 40);
    }

    v9 = *(a2 + 32);
    *(a2 + 40) = v8 + 1;
    *(v9 + 8 * v8) = v7;
    ++var0;
  }

  if (this[6].var0)
  {
    *(a2 + 60) |= 4u;
    v10 = *(a2 + 48);
    if (!v10)
    {
      operator new();
    }

    v11 = CLMacAddress::toUint64(this + 5);
    *(v10 + 24) |= 1u;
    *(v10 + 8) = v11;
    *(a2 + 60) |= 4u;
    v12 = *(a2 + 48);
    if (!v12)
    {
      operator new();
    }

    LODWORD(v4) = this[7].var0;
    *(v12 + 24) |= 2u;
    *(v12 + 16) = LODWORD(v4);
  }

  return *&v4;
}

void sub_2591AFB84(_Unwind_Exception *a1)
{
  MEMORY[0x259CA1F90](v2, 0x1081C40DCAC275BLL);
  CLMicroLocationProto::BlueAtlasData::~BlueAtlasData(v1);
  _Unwind_Resume(a1);
}

void CLMicroLocationModel::fromProtobuf(const CLMicroLocationProto::Fingerprint ***this@<X0>, const CLMicroLocationProto::Model *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = *MEMORY[0x277D85DE8];
  CLMicroLocationModel::CLMicroLocationModel(a3);
  *v80.data = 0;
  *&v80.data[8] = 0;
  *v79.data = 0;
  *&v79.data[8] = 0;
  v69 = this;
  v7 = *(this + 4);
  if (v7)
  {
    v8 = this[1];
    v9 = 8 * v7;
    while (1)
    {
      v10 = *v8;
      v11 = *(*v8 + 32);
      if ((v11 & 0x20) != 0)
      {
        break;
      }

      if ((v11 & 2) != 0)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationModel::toProtobuf();
        }

        v17 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "#Warning The protobuf fingerprint is using a deprecated uint64 cluster label", buf, 2u);
        }

        *v80.data = *(v10 + 4);
        goto LABEL_20;
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationModel::toProtobuf();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = v12;
        v14 = "#Warning The protobuf fingerprint does not have a cluster identifer";
LABEL_27:
        _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      }

LABEL_28:
      ++v8;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_29;
      }
    }

    v15 = *(v10 + 8);
    v16 = *(v15 + 23);
    if (v16 < 0)
    {
      if (v15[1] == 16)
      {
        v15 = *v15;
LABEL_19:
        v80 = *v15;
LABEL_20:
        CLMicroLocationFingerprint::CLMicroLocationFingerprint(buf, v10);
        CLMicroLocationModel::addFingerprint(a3, buf, &v80, a2);
        __src = &v78;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&__src);
        if (__p)
        {
          v77 = __p;
          operator delete(__p);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v75);
        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v74);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(buf);
        goto LABEL_28;
      }
    }

    else if (v16 == 16)
    {
      goto LABEL_19;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationModel::toProtobuf();
    }

    v18 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v13 = v18;
    v14 = "#Warning The protobuf fingerprint does not have a valid cluster label uuid";
    goto LABEL_27;
  }

LABEL_29:
  v19 = *(this + 16);
  if (v19)
  {
    v20 = this[7];
    v21 = &v20[v19];
    while (1)
    {
      v22 = *v20;
      v23 = *(*v20 + 1);
      v24 = *(v23 + 23);
      if (v24 < 0)
      {
        if (v23[1] != 16)
        {
LABEL_50:
          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationModel::toProtobuf();
          }

          v31 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_258FE9000, v31, OS_LOG_TYPE_DEFAULT, "#Warning The protobuf cluster recording does not have a valid cluster label uuid", buf, 2u);
          }

          goto LABEL_54;
        }

        v23 = *v23;
      }

      else if (v24 != 16)
      {
        goto LABEL_50;
      }

      v80 = *v23;
      v25 = *(v22 + 6);
      if (v25)
      {
        break;
      }

LABEL_54:
      if (++v20 == v21)
      {
        goto LABEL_55;
      }
    }

    v26 = *(v22 + 2);
    v27 = 8 * v25;
    while (1)
    {
      v28 = *v26;
      v29 = *(*v26 + 23);
      if (v29 < 0)
      {
        if (v28[1] != 16)
        {
LABEL_44:
          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationModel::toProtobuf();
          }

          v30 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_DEFAULT, "#Warning The protobuf cluster recording does not have a valid recording uuid", buf, 2u);
          }

          goto LABEL_48;
        }

        v28 = *v28;
      }

      else if (v29 != 16)
      {
        goto LABEL_44;
      }

      v79 = *v28;
      CLMicroLocationModel::addRecording(a3, &v80, &v79);
LABEL_48:
      ++v26;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_55:
  v32 = *(v69 + 13) & ((*(v69 + 50) << 27) >> 31);
  *a3 = *(v69 + 12);
  *(a3 + 4) = v32;
  v68 = v32;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationModel::toProtobuf();
  }

  v33 = logObject_MicroLocation_Default;
  v34 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG);
  if (v34)
  {
    v35 = *(v69 + 104);
    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = v35;
    _os_log_impl(&dword_258FE9000, v33, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:isStable, fromProtobuf, isStableFlag:%{public}hhd}", buf, 0x18u);
  }

  v36 = v69;
  *(a3 + 8) = *(v69 + 104);
  *(a3 + 12) = *(v69 + 27);
  if (*(v69 + 201))
  {
    v37 = *(v69 + 14);
    if (!v37)
    {
      v37 = *(CLMicroLocationProto::Model::default_instance(v34) + 112);
    }

    CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(buf, v37);
    if ((a3 + 16) != buf)
    {
      *(a3 + 48) = *&buf[32];
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>((a3 + 16), *&buf[16], 0);
    }

    *(a3 + 56) = *&buf[40];
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(buf);
    v36 = v69;
  }

  v38 = *(v36 + 32);
  *(a3 + 240) = v38;
  if (!v38)
  {
    v39 = *(a3 + 216);
    if (v39)
    {
      v40 = 0;
      do
      {
        v40 += (v39[5] - v39[4]) >> 4;
        v39 = *v39;
      }

      while (v39);
    }

    else
    {
      v40 = 0;
    }

    v41 = +[ULDefaultsSingleton shared];
    v42 = [v41 defaultsDictionary];

    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualityNumFingerprintsWiFiOnlyThreshold"];
    v44 = [v42 objectForKey:v43];
    if (v44 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v45 = [v44 unsignedIntValue];
    }

    else
    {
      v45 = [&unk_286A72828 unsignedIntValue];
    }

    v46 = v45;

    if (v40 <= v46)
    {
      v47 = 1;
    }

    else
    {
      v47 = 3;
    }

    *(a3 + 240) = v47;
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationModel::toProtobuf();
    }

    v48 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(a3 + 240);
      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v49;
      _os_log_impl(&dword_258FE9000, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Loaded model doesn't have model quality, calculate on the fly, QualityIndicator:%{public}d}", buf, 0x18u);
    }
  }

  *(a3 + 244) = *(v69 + 33);
  __src = 0;
  v71 = 0;
  v72 = 0;
  v50 = *(v69 + 36);
  if (v50)
  {
    v51 = 0;
    v52 = *(v69 + 17);
    v53 = 4 * v50;
    do
    {
      v54 = *v52;
      if (v51 >= v72)
      {
        v55 = __src;
        v56 = v51 - __src;
        v57 = (v51 - __src) >> 2;
        v58 = v57 + 1;
        if ((v57 + 1) >> 62)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v59 = v72 - __src;
        if ((v72 - __src) >> 1 > v58)
        {
          v58 = v59 >> 1;
        }

        if (v59 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v60 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v58;
        }

        if (v60)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(&__src, v60);
        }

        v61 = v57;
        v62 = (4 * v57);
        v63 = &v62[-v61];
        *v62 = v54;
        v51 = (v62 + 1);
        memcpy(v63, v55, v56);
        v64 = __src;
        __src = v63;
        v71 = v51;
        v72 = 0;
        if (v64)
        {
          operator delete(v64);
        }
      }

      else
      {
        *v51 = v54;
        v51 += 4;
      }

      v71 = v51;
      ++v52;
      v53 -= 4;
    }

    while (v53);
  }

  else
  {
    v51 = 0;
  }

  if ((a3 + 248) != &__src)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a3 + 248), __src, v51, (v51 - __src) >> 2);
  }

  *(a3 + 144) = *(v69 + 152);
  *(a3 + 160) = *(v69 + 21);
  *(a3 + 168) = *(v69 + 48);
  std::string::operator=((a3 + 272), *(v69 + 22));
  if ((*(v69 + 202) & 0x40) != 0)
  {
    v66 = *(v69 + 23);
    if (!v66)
    {
      v66 = *(CLMicroLocationProto::Model::default_instance(0) + 184);
    }

    CLMicroLocationModel::BlueAtlasData::fromProtobuf(v66, buf);
    std::optional<CLMicroLocationModel::BlueAtlasData>::operator=[abi:ne200100]<CLMicroLocationModel::BlueAtlasData,void>(a3 + 72, buf);
  }

  else
  {
    if (v68 != 3)
    {
      goto LABEL_113;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationModel::toProtobuf();
    }

    v65 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v65, OS_LOG_TYPE_ERROR, "Loaded Blue Atlas model doesn't have Blue Atlas data structure, create empty", buf, 2u);
    }

    memset(buf, 0, sizeof(buf));
    *&buf[56] = -8388609;
    std::optional<CLMicroLocationModel::BlueAtlasData>::operator=[abi:ne200100]<CLMicroLocationModel::BlueAtlasData,void>(a3 + 72, buf);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

LABEL_113:
  if (__src)
  {
    v71 = __src;
    operator delete(__src);
  }

  v67 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationModel::addFingerprint(CLMicroLocationModel *this, const CLMicroLocationFingerprint *a2, const uuid *a3, CLMicroLocationFingerprintPool *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  CLMicroLocationFingerprintPool::add(a4, (a2 + 40), &v23);
  v7 = v23;
  v6 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = *a3;
  v8 = *(this + 23);
  v9 = *(this + 24);
  if (v8 >= v9)
  {
    v11 = *(this + 22);
    v12 = (v8 - v11) >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v14 = v9 - v11;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    v25[4] = this + 176;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>>(this + 176, v15);
    }

    v16 = 32 * v12;
    *v16 = v7;
    *(v16 + 8) = v6;
    *(v16 + 16) = v26;
    v10 = 32 * v12 + 32;
    v17 = *(this + 22);
    v18 = *(this + 23) - v17;
    v19 = v16 - v18;
    memcpy((v16 - v18), v17, v18);
    v20 = *(this + 22);
    *(this + 22) = v19;
    *(this + 23) = v10;
    v21 = *(this + 24);
    *(this + 24) = 0;
    v25[2] = v20;
    v25[3] = v21;
    v25[0] = v20;
    v25[1] = v20;
    std::__split_buffer<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::~__split_buffer(v25);
  }

  else
  {
    *v8 = v7;
    *(v8 + 8) = v6;
    *(v8 + 16) = v26;
    v10 = v8 + 32;
  }

  *(this + 23) = v10;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2591B062C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationModel::addRecording(CLMicroLocationModel *this, uuid *a2, const uuid *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(this + 25, a2);
  v5 = v4;
  v7 = v4[5];
  v6 = v4[6];
  if (v7 >= v6)
  {
    v9 = v4[4];
    v10 = (v7 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v9;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>((v4 + 4), v13);
    }

    v14 = (16 * v10);
    *v14 = *a3;
    v8 = 16 * v10 + 16;
    v15 = v4[4];
    v16 = v4[5] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = v5[4];
    v5[4] = v17;
    v5[5] = v8;
    v5[6] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = *a3;
    v8 = &v7[1];
  }

  v5[5] = v8;
}

uint64_t CLMicroLocationModel::numRecordingsBeforePruning(CLMicroLocationModel *this)
{
  v1 = *(this + 27);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += (v1[5] - v1[4]) >> 4;
    v1 = *v1;
  }

  while (v1);
  return result;
}

char **CLMicroLocationModel::setCandidateQualityReasons(uint64_t a1, char **a2)
{
  result = (a1 + 248);
  if (result != a2)
  {
    return std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

float CLMicroLocationModel::BlueAtlasData::fromProtobuf@<S0>(ULHomeSlamModel ***this@<X0>, uint64_t a2@<X8>)
{
  v3 = this;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  *(a2 + 56) = -8388609;
  v5 = *(this + 10);
  if (v5)
  {
    v6 = this[4];
    v7 = 8 * v5;
    do
    {
      this = ULHomeSlamModel::getTrajectoryPointCloud(*v6);
      v10 = *(a2 + 8);
      v9 = *(a2 + 16);
      if (v10 >= v9)
      {
        v12 = *a2;
        v13 = v10 - *a2;
        v14 = v13 >> 3;
        v15 = (v13 >> 3) + 1;
        if (v15 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2, v17);
        }

        *(8 * v14) = this;
        v11 = 8 * v14 + 8;
        memcpy(0, v12, v13);
        this = *a2;
        *a2 = 0;
        *(a2 + 8) = v11;
        *(a2 + 16) = 0;
        if (this)
        {
          operator delete(this);
        }
      }

      else
      {
        *v10 = this;
        v11 = (v10 + 1);
      }

      *(a2 + 8) = v11;
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  if ((*(v3 + 60) & 4) != 0)
  {
    v18 = *(v3 + 6);
    if (!v18)
    {
      v18 = *(CLMicroLocationProto::BlueAtlasData::default_instance(this) + 48);
    }

    TrajectoryPointCloud = ULHomeSlamModel::getTrajectoryPointCloud(*(v18 + 8));
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 48) = 1;
    }

    *(a2 + 40) = TrajectoryPointCloud;
    v20 = *(v3 + 6);
    if (!v20)
    {
      v20 = *(CLMicroLocationProto::BlueAtlasData::default_instance(TrajectoryPointCloud) + 48);
    }

    result = *(v20 + 16);
    *(a2 + 56) = result;
  }

  return result;
}

void sub_2591B093C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationModel::getIdentifiers@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *(this + 176);
  v4 = *(this + 184);
  while (v3 != v4)
  {
    this = std::__tree<boost::uuids::uuid>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(a2, (v3 + 16));
    v3 += 32;
  }

  return this;
}

BOOL CLMicroLocationModel::isValid(CLMicroLocationModel *this)
{
  if (*(this + 296) == 1)
  {
    if (([MEMORY[0x277D28868] isRunningInXCTestEnvironment] & 1) == 0)
    {
      CLMicroLocationModel::isValid();
    }

    return 1;
  }

  else
  {
    v3 = *(this + 22);
    v4 = *(this + 23);
    v1 = v3 == v4 && *(this + 1) == 3;
    if (v3 != v4)
    {
      if (*(this + 28))
      {
        CLMicroLocationModel::getIdentifiers(this, &v10);
        if (v11[1] == *(this + 28))
        {
          v5 = v10;
          v1 = 1;
          if (v10 != v11)
          {
            do
            {
              v1 = v1 && std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(this + 25, (v5 + 25)) != 0;
              v6 = v5[1];
              if (v6)
              {
                do
                {
                  v7 = v6;
                  v6 = *v6;
                }

                while (v6);
              }

              else
              {
                do
                {
                  v7 = v5[2];
                  v8 = *v7 == v5;
                  v5 = v7;
                }

                while (!v8);
              }

              v5 = v7;
            }

            while (v7 != v11);
          }
        }

        else
        {
          v1 = 0;
        }

        std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v10, v11[0]);
      }

      else
      {
        return 0;
      }
    }
  }

  return v1;
}

void *CLMicroLocationModel::mapIdentifiers(void *result, void *a2)
{
  v3 = result;
  for (i = a2[2]; i; i = *i)
  {
    if (i[2] != i[4] || i[3] != i[5])
    {
      result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v3 + 25, i + 2);
      if (result)
      {
        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&,std::vector<boost::uuids::uuid>>(v3 + 25, i + 4);
        if ((v6 & 1) == 0)
        {
          CLMicroLocationModel::mapIdentifiers();
        }

        result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__erase_unique<boost::uuids::uuid>(v3 + 25, i + 2);
      }
    }
  }

  v7 = v3[22];
  v8 = v3[23];
  if (v7 != v8)
  {
    v9 = v7 + 2;
    do
    {
      result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v9);
      if (result)
      {
        *v9 = *(result + 2);
      }

      v10 = v9 + 2;
      v9 += 4;
    }

    while (v10 != v8);
  }

  return result;
}

uint64_t CLMicroLocationModel::generateRandomIdentifiers@<X0>(unint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v19 = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(&v19);
  if (this)
  {
    do
    {
      v4 = boost::uuids::random_generator_pure::operator()(&v19);
      v6 = v5;
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      if (v8 >= v7)
      {
        v10 = (v8 - *a2) >> 4;
        v11 = v10 + 1;
        if ((v10 + 1) >> 60)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - *a2;
        if (v12 >> 3 > v11)
        {
          v11 = v12 >> 3;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(a2, v13);
        }

        v14 = (16 * v10);
        *v14 = v4;
        v14[1] = v6;
        v9 = 16 * v10 + 16;
        v15 = *(a2 + 8) - *a2;
        v16 = (16 * v10 - v15);
        memcpy(v16, *a2, v15);
        v17 = *a2;
        *a2 = v16;
        *(a2 + 8) = v9;
        *(a2 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8 = v4;
        v8[1] = v5;
        v9 = (v8 + 2);
      }

      *(a2 + 8) = v9;
    }

    while (this > (v9 - *a2) >> 4);
  }

  return boost::uuids::detail::random_provider_base::destroy(&v19);
}

void sub_2591B0D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  boost::uuids::detail::random_provider_base::destroy(&a11);
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationModel::mapIdentifiersFromOldModel(CLMicroLocationModel *this, const CLMicroLocationModel *a2, NSMutableDictionary *a3)
{
  v81 = *MEMORY[0x277D85DE8];
  v59 = a3;
  CLMicroLocationModel::getIdentifiers(this, &v68);
  CLMicroLocationModel::getIdentifiers(a2, &v66);
  if (v70 == *(this + 28) && v67[1] == *(a2 + 28))
  {
    v5 = v66;
    if (v66 != v67)
    {
      v6 = 0;
      while (1)
      {
        while (1)
        {
          v7 = std::__tree<boost::uuids::uuid>::find<boost::uuids::uuid>(&v68, (v5 + 25));
          if (&v69 == v7)
          {
            break;
          }

LABEL_6:
          CLMicroLocationModel::generateRandomIdentifiers(v70, __p);
          v74 = 0u;
          v75 = 0u;
          v76 = 1065353216;
          v8 = v68;
          if (v68 != &v69)
          {
            v9 = __p[0];
            do
            {
              v79 = *(v8 + 25);
              v80 = *v9;
              std::__hash_table<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>(&v74, &v79);
              v10 = v8[1];
              if (v10)
              {
                do
                {
                  v11 = v10;
                  v10 = *v10;
                }

                while (v10);
              }

              else
              {
                do
                {
                  v11 = v8[2];
                  v37 = *v11 == v8;
                  v8 = v11;
                }

                while (!v37);
              }

              ++v9;
              v8 = v11;
            }

            while (v11 != &v69);
          }

          CLMicroLocationModel::mapIdentifiers(this, &v74);
          std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v68, v69);
          v69 = 0;
          v70 = 0;
          v68 = &v69;
          v12 = __p[0];
          v13 = __p[1];
          while (v12 != v13)
          {
            std::__tree<boost::uuids::uuid>::__emplace_hint_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(&v68, &v69, v12);
            v12 += 2;
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v74);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          v6 = 0;
          v5 = v66;
          if (v66 == v67)
          {
            goto LABEL_28;
          }
        }

        v14 = v5[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v5[2];
            v37 = *v15 == v5;
            v5 = v15;
          }

          while (!v37);
        }

        v6 |= &v69 != v7;
        v5 = v15;
        if (v15 == v67)
        {
          if ((v6 & 1) == 0)
          {
            break;
          }

          goto LABEL_6;
        }
      }
    }

LABEL_28:
    v64 = 0;
    v65 = 0;
    v63 = &v64;
    v16 = +[ULDefaultsSingleton shared];
    v17 = [v16 defaultsDictionary];

    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULFingerprintDistanceFunctionTypeForLearning"];
    v19 = [v17 objectForKey:v18];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v20 = [v19 unsignedIntValue];
    }

    else
    {
      v20 = [&unk_286A727C8 unsignedIntValue];
    }

    v21 = v20;

    v58 = ULSettings::getFingerprintDistanceFunctionParamsForType(v21);
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(&v74, this + 16);
    v77 = *(this + 56);
    v78 = 1;
    ULAlgorithms::createLearnFingerprintDistanceFunction(v21, v58, &v74, &v79);
    if (v78 == 1)
    {
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v74);
    }

    v22 = +[ULDefaultsSingleton shared];
    v23 = [v22 defaultsDictionary];

    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULClusterPersistenceDistanceThreshold"];
    v25 = [v23 objectForKey:v24];
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v25 doubleValue];
    }

    else
    {
      [&unk_286A72FE0 doubleValue];
    }

    v27 = v26;

    v28 = v68;
    if (v68 != &v69)
    {
      v29 = 1.79769313e308;
      do
      {
        v30 = v66;
        if (v66 != v67)
        {
          do
          {
            v32 = *(this + 22);
            v31 = *(this + 23);
            if (v32 != v31)
            {
              v33 = 0;
              v34 = 0.0;
              do
              {
                v35 = *(a2 + 22);
                v36 = *(a2 + 23);
                while (v35 != v36)
                {
                  v37 = v32[2] == *(v28 + 25) && v32[3] == *(v28 + 33);
                  if (v37 && v35[2] == *(v30 + 25) && v35[3] == *(v30 + 33))
                  {
                    if (!*(&v80 + 1))
                    {
                      std::__throw_bad_function_call[abi:ne200100]();
                    }

                    ++v33;
                    v34 = v34 + (*(**(&v80 + 1) + 48))(*(&v80 + 1), *v32, *v35);
                  }

                  v35 += 4;
                }

                v32 += 4;
              }

              while (v32 != v31);
              v39 = v34 / v33;
              __p[0] = *&v39;
              if (v39 < v27)
              {
                v74 = *(v28 + 25);
                v75 = *(v30 + 25);
                std::__tree<std::__value_type<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>,std::__map_value_compare<double,std::__value_type<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>>>::__emplace_multi<double &,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>();
              }

              if (v39 < v29)
              {
                v40 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
                [(NSMutableDictionary *)v59 setObject:v40 forKeyedSubscript:@"minDistanceAbovePersistenceThreshold"];

                v29 = v39;
              }
            }

            v41 = v30[1];
            if (v41)
            {
              do
              {
                v42 = v41;
                v41 = *v41;
              }

              while (v41);
            }

            else
            {
              do
              {
                v42 = v30[2];
                v37 = *v42 == v30;
                v30 = v42;
              }

              while (!v37);
            }

            v30 = v42;
          }

          while (v42 != v67);
        }

        v43 = v28[1];
        if (v43)
        {
          do
          {
            v44 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v44 = v28[2];
            v37 = *v44 == v28;
            v28 = v44;
          }

          while (!v37);
        }

        v28 = v44;
      }

      while (v44 != &v69);
    }

    v74 = 0u;
    v75 = 0u;
    v76 = 1065353216;
    while (v65)
    {
      v45 = *(v63 + 7);
      *__p = *(v63 + 5);
      v73 = v45;
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,boost::uuids::uuid> const&>(&v74, __p);
      v61 = 0;
      v62 = 0;
      v60 = &v61;
      v46 = v63;
      v71[0] = &v60;
      v71[1] = &v61;
      if (v63 == v57)
      {
        v51 = 0;
        v52 = 0;
      }

      else
      {
        do
        {
          if ((v46[5] != __p[0] || v46[6] != __p[1]) && (v46[7] != v73 || v46[8] != *(&v73 + 1)))
          {
            std::insert_iterator<std::multimap<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>>::operator=[abi:ne200100](v71);
          }

          v49 = v46[1];
          if (v49)
          {
            do
            {
              v50 = v49;
              v49 = *v49;
            }

            while (v49);
          }

          else
          {
            do
            {
              v50 = v46[2];
              v37 = *v50 == v46;
              v46 = v50;
            }

            while (!v37);
          }

          v46 = v50;
        }

        while (v50 != v57);
        v51 = v62;
        v46 = v63;
        v52 = v61;
      }

      v53 = v64;
      v54 = v65;
      v64 = v52;
      v60 = v46;
      v61 = v53;
      v65 = v51;
      v62 = v54;
      v63 = v57;
      v55 = v53 + 2;
      if (!v54)
      {
        v55 = &v60;
      }

      *v55 = &v61;
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v60, v53);
    }

    CLMicroLocationModel::mapIdentifiers(this, &v74);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v74);
    std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](&v79);

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v63, v64);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v66, v67[0]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v68, v69);

  v56 = *MEMORY[0x277D85DE8];
}

void sub_2591B14A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v41 - 160);

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a16, a17);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a22, a23);

  _Unwind_Resume(a1);
}

void CLMicroLocationModel::pruneSmallClusters(void *a1, void *a2, unint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a1[23];
  v5 = a1 + 22;
  v7 = a2 + 1;
  v8 = *a2;
  v23 = v6;
  v24 = a1[22];
  if (*a2 == a2 + 1)
  {
    v11 = a1[23];
    v19 = v11;
  }

  else
  {
    do
    {
      v9 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1 + 25, (v8 + 25));
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationModel::toProtobuf();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        operator new();
      }

      if (a3 <= (v9[5] - v9[4]) >> 4 || (std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::erase(a1 + 25, v9), v11 = *v5, *v5 == v6))
      {
LABEL_13:
        v11 = v6;
      }

      else
      {
        while (1)
        {
          v12 = *(v11 + 16) == *(v8 + 25) && *(v11 + 24) == *(v8 + 33);
          if (v12)
          {
            break;
          }

          v11 += 32;
          if (v11 == v6)
          {
            goto LABEL_13;
          }
        }

        if (v11 != v6)
        {
          for (i = v11 + 32; i != v6; i += 32)
          {
            if (*(i + 16) != *(v8 + 25) || *(i + 24) != *(v8 + 33))
            {
              v17 = *i;
              *i = 0;
              *(i + 8) = 0;
              v18 = *(v11 + 8);
              *v11 = v17;
              if (v18)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              }

              *(v11 + 16) = *(i + 16);
              v11 += 32;
            }
          }
        }
      }

      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v8[2];
          v12 = *v14 == v8;
          v8 = v14;
        }

        while (!v12);
      }

      v6 = v11;
      v8 = v14;
    }

    while (v14 != v7);
    v19 = a1[23];
  }

  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::erase(v5, v11, v19);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationModel::toProtobuf();
  }

  v20 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = (a1[23] - a1[22]) >> 5;
    *buf = 68289794;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2050;
    v30 = a3;
    v31 = 2050;
    v32 = (v23 - v24) >> 5;
    v33 = 2050;
    v34 = v21;
    _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:pruneSmallClusters, clusterSizeThreshold:%{public}lu, numFingerprintsPrePruning:%{public}lu, numFingerprintsPostPruning:%{public}lu}", buf, 0x30u);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 24);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 32;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void CLMicroLocationModel::pruneSmallClusters(CLMicroLocationModel *this)
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULClusterSizeThreshold"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedLongValue];
  }

  else
  {
    v6 = [&unk_286A727E0 unsignedLongValue];
  }

  v7 = v6;

  CLMicroLocationModel::getIdentifiers(this, v8);
  CLMicroLocationModel::pruneSmallClusters(this, v8, v7);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v8, v8[1]);
}

void CLMicroLocationModel::mapIdentifiersFromOldModelAndPruneNoiseClusters(CLMicroLocationModel *a1, uint64_t a2, int a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (CLMicroLocationModel::isValid(a1))
  {
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULClusterSizeRatio"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v11 doubleValue];
    }

    else
    {
      [&unk_286A72FF0 doubleValue];
    }

    v13 = v12;

    v14 = *(a1 + 27);
    v15 = *v14;
    if (*v14)
    {
      do
      {
        if (v14[5] - v14[4] < v15[5] - v15[4])
        {
          v14 = v15;
        }

        v15 = *v15;
      }

      while (v15);
    }

    v16 = (v13 * ((v14[5] - v14[4]) >> 4));
    if (v16 > ULSettings::get<ULSettings::ClusterMaximalSizeForRelativePruning>())
    {
      v16 = ULSettings::get<ULSettings::ClusterMaximalSizeForRelativePruning>();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v17 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v29 = 2082;
      *&v29[2] = "";
      v30 = 2050;
      v31 = v16;
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Using relative cluster size threshold : , size:%{public}.5f}", buf, 0x1Cu);
    }

    CLMicroLocationModel::pruneSmallClusters(a1);
    if (CLMicroLocationModel::isValid(a1))
    {
      CLMicroLocationModel::getIdentifiers(a1, buf);
      if (a3)
      {
        CLMicroLocationModel::pruneSmallClusters(a1, buf, v16);
      }

      if (*(a2 + 8) == 1)
      {
        v18 = *a2;
        if (CLMicroLocationModel::isValid(v18))
        {
          CLMicroLocationModel::mapIdentifiersFromOldModel(a1, v18, v7);
          CLMicroLocationModel::getIdentifiers(a1, &v26);
          v19 = *buf;
          if (*buf != v29)
          {
            do
            {
              v20 = v19[1];
              v21 = v19;
              if (v20)
              {
                do
                {
                  v22 = v20;
                  v20 = *v20;
                }

                while (v20);
              }

              else
              {
                do
                {
                  v22 = v21[2];
                  v23 = *v22 == v21;
                  v21 = v22;
                }

                while (!v23);
              }

              if (&v27 == std::__tree<boost::uuids::uuid>::find<boost::uuids::uuid>(&v26, (v19 + 25)))
              {
                std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(buf, v19);
                operator delete(v19);
              }

              v19 = v22;
            }

            while (v22 != v29);
          }

          std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v26, v27);
        }
      }

      if ((a3 & 1) == 0)
      {
        CLMicroLocationModel::pruneSmallClusters(a1, buf, v16);
      }

      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(buf, *v29);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationModel::toProtobuf();
      }

      v24 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_DEFAULT, "Model has become invalid after pruning clusters with absolute size threshold", buf, 2u);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2591B1F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a13, a14);

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::ClusterMaximalSizeForRelativePruning>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULClusterMaximalSizeForRelativePruning"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = [&unk_286A727F8 intValue];
  }

  v5 = v4;

  return v5;
}

void CLMicroLocationModel::getClusterPairwiseDistances(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a1[28];
  CLMicroLocationModel::getIdentifiers(a1, &v41);
  v40[0] = 0;
  v40[1] = 0;
  v38 = 0;
  v39 = v40;
  v7 = v41;
  if (v41 != v42)
  {
    do
    {
      *__p = *(v7 + 25);
      std::__tree<std::__value_type<boost::uuids::uuid,unsigned long>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,unsigned long>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,unsigned long>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid&,unsigned long &>(&v39, __p);
      ++v38;
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != v42);
  }

  a3[1] = 0;
  v11 = (a3 + 1);
  a3[2] = 0;
  a3[3] = 0;
  __p[1] = 0;
  v45 = 0;
  v46 = 0;
  *a3 = v6;
  *__x = 0;
  std::vector<double>::resize(a3 + 1, &v6[v6 * v6] >> 1, __x);
  __p[0] = v6;
  __x[0] = 0;
  std::vector<int>::resize(&__p[1], &v6[v6 * v6] >> 1, __x);
  v13 = a1[22];
  v12 = a1[23];
  if (v12 != v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      if (v15 >= (v12 - v13) >> 5)
      {
        v25 = (v12 - v13) >> 5;
      }

      else
      {
        v37 = v14;
        v16 = v15;
        do
        {
          v17 = *(a2 + 24);
          if (!v17)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v18 = (v13 + 32 * v15);
          v19 = (*(*v17 + 48))(v17, *v18, *(v13 + v14));
          *__x = v18 + 2;
          v20 = *(std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v39, v18 + 2) + 48);
          *__x = v13 + v14 + 16;
          v21 = std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v39, *__x);
          v22 = *(v21 + 48);
          if (v20 <= v22)
          {
            v23 = *(v21 + 48);
          }

          else
          {
            v23 = v20;
          }

          if (v20 < v22)
          {
            v22 = v20;
          }

          v24 = (v23 + v23 * v23) >> 1;
          *(*v11 + 8 * v24 + 8 * v22) = *(*v11 + 8 * v24 + 8 * v22) + v19;
          ++*(__p[1] + v24 + v22);
          ++v16;
          v13 = a1[22];
          v12 = a1[23];
          v14 += 32;
        }

        while (v16 < (v12 - v13) >> 5);
        v25 = (v12 - v13) >> 5;
        v14 = v37;
      }

      ++v15;
      v14 += 32;
    }

    while (v15 < v25);
  }

  v26 = __p[1];
  if (v6)
  {
    v27 = 0;
    v28 = *v11;
    do
    {
      v29 = *v11;
      v30 = v27;
      do
      {
        if (v27 <= v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = v27;
        }

        if (v27 >= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v27;
        }

        v33 = &v31[v31 * v31] >> 1;
        v34 = v26[v33 + v32];
        if (v34)
        {
          v35 = *(v29 + 8 * v33 + 8 * v32) / v34;
        }

        else
        {
          v35 = 0.0;
        }

        *(v28 + 8 * v33 + 8 * v32) = v35;
        ++v30;
      }

      while (v6 != v30);
      ++v27;
    }

    while (v27 != v6);
    goto LABEL_38;
  }

  if (__p[1])
  {
LABEL_38:
    v45 = v26;
    operator delete(v26);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v39, v40[0]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v41, v42[0]);
  v36 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationModel::representativeFPsRatio(CLMicroLocationModel *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(this + 27);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  do
  {
    v3 += (v2[5] - v2[4]) >> 4;
    v2 = *v2;
  }

  while (v2);
  if (v3)
  {
    v4 = ((*(this + 23) - *(this + 22)) >> 5) / v3;
  }

  else
  {
LABEL_6:
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289282;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 1026;
      isValid = CLMicroLocationModel::isValid(this);
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:representativeFPsRatio, called with empty model, isValid:%{public}hhd}", v7, 0x18u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_131()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

void std::insert_iterator<std::multimap<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>>::operator=[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  std::__tree<std::__value_type<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>,std::__map_value_compare<double,std::__value_type<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>>>::__emplace_hint_multi<std::pair<double const,std::pair<boost::uuids::uuid const,boost::uuids::uuid>> const&>();
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      *(a4 + 16) = v5[1];
      v5 += 2;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **std::__split_buffer<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 24);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

uint64_t std::__tree<boost::uuids::uuid>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = bswap64(*a3);
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = bswap64(*(v4 + 25));
        if (v6 == v8)
        {
          break;
        }

        v9 = v6;
LABEL_9:
        if (v9 < v8)
        {
          v10 = -1;
        }

        else
        {
          v10 = 1;
        }

        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_22;
        }
      }

      v9 = bswap64(a3[1]);
      v8 = bswap64(*(v7 + 33));
      if (v9 != v8)
      {
        goto LABEL_9;
      }

LABEL_13:
      v11 = bswap64(*(v7 + 25));
      v12 = bswap64(*a3);
      if (v11 != v12 || (v11 = bswap64(*(v7 + 33)), v12 = bswap64(a3[1]), v11 != v12))
      {
        v13 = v11 < v12 ? -1 : 1;
        if (v13 < 0)
        {
          result = v7 + 1;
          v4 = v7[1];
          if (v4)
          {
            continue;
          }
        }
      }

      goto LABEL_22;
    }
  }

  v7 = result;
LABEL_22:
  *a2 = v7;
  return result;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&,std::vector<boost::uuids::uuid>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__erase_unique<boost::uuids::uuid>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t std::__tree<boost::uuids::uuid>::__emplace_hint_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  if (a1 + 1 == a2 || ((v5 = bswap64(*a5), v6 = bswap64(*(a2 + 25)), v5 != v6) || (v5 = bswap64(a5[1]), v6 = bswap64(*(a2 + 33)), v5 != v6)) && (v5 < v6 ? (v10 = -1) : (v10 = 1), v10 < 0))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
    }

    else
    {
      if (v7)
      {
        v8 = *a2;
        do
        {
          v9 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        v16 = a2;
        do
        {
          v9 = v16[2];
          v17 = *v9 == v16;
          v16 = v9;
        }

        while (v17);
      }

      v18 = bswap64(*(v9 + 25));
      v19 = bswap64(*a5);
      if (v18 == v19)
      {
        v18 = bswap64(*(v9 + 33));
        v19 = bswap64(a5[1]);
        if (v18 == v19)
        {
          return std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(a1, a3, a5);
        }
      }

      v20 = v18 < v19 ? -1 : 1;
      if ((v20 & 0x80000000) == 0)
      {
        return std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(a1, a3, a5);
      }
    }

    if (v7)
    {
      *a3 = v9;
      return v9 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = bswap64(*(a2 + 25));
  v12 = bswap64(*a5);
  if (v11 != v12 || (v11 = bswap64(*(a2 + 33)), v12 = bswap64(a5[1]), v11 != v12))
  {
    v15 = v11 < v12 ? -1 : 1;
    if (v15 < 0)
    {
      v13 = a2[1];
      if (v13)
      {
        v14 = a2[1];
        do
        {
          a4 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        v21 = a2;
        do
        {
          a4 = v21[2];
          v17 = *a4 == v21;
          v21 = a4;
        }

        while (!v17);
      }

      if (a4 == a1 + 1 || ((v22 = bswap64(*a5), v23 = bswap64(*(a4 + 25)), v22 != v23) || (v22 = bswap64(a5[1]), v23 = bswap64(*(a4 + 33)), v22 != v23) ? (v22 < v23 ? (v24 = -1) : (v24 = 1)) : (v24 = 0), v24 < 0))
      {
        if (v13)
        {
          *a3 = a4;
        }

        else
        {
          *a3 = a2;
          return a2 + 1;
        }

        return a4;
      }

      return std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(a1, a3, a5);
    }
  }

  *a3 = a2;
  *a4 = a2;
  return a4;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,boost::uuids::uuid> const&>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t std::__tree<std::__value_type<boost::uuids::uuid,unsigned long>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,unsigned long>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,unsigned long>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid&,unsigned long &>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__find_equal<boost::uuids::uuid>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::vector<double>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25921A970)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_25921A970)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_25921A970)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_25921A960)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25921A970)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25921A960)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t CLMicroLocationProtobufHelper::uuidFromStdString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  result = boost::uuids::string_generator::operator()<std::__wrap_iter<char const*>>(&v7, v4, &v4[v3]);
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = 1;
  return result;
}

uint64_t **CLMicroLocationProtobufHelper::uuidFromProtobuf@<X0>(uint64_t **result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 23);
  if (v2 < 0)
  {
    if (result[1] != 16)
    {
LABEL_7:
      v3 = 0;
      *a2 = 0;
      goto LABEL_8;
    }

    result = *result;
  }

  else if (v2 != 16)
  {
    goto LABEL_7;
  }

  *a2 = *result;
  v3 = 1;
LABEL_8:
  a2[16] = v3;
  return result;
}

void CLMicroLocationProtobufHelper::boostUuidFromNSUUID(CLMicroLocationProtobufHelper *this@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = this;
  v5 = v4;
  if (v4)
  {
    v7 = 0uLL;
    [(CLMicroLocationProtobufHelper *)v4 getUUIDBytes:&v7];
    *a2 = v7;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

double CLMicroLocationProtobufHelper::getMeasurementValue(CLMicroLocationProtobufHelper *this, const CLMicroLocationProto::Measurement *a2)
{
  v2 = *(this + 16);
  result = 0.0;
  if (v2 > 3)
  {
    switch(v2)
    {
      case 4:
        v4 = *(this + 5);
        if (v4)
        {
          return *(v4 + 20);
        }

        v5 = 40;
        break;
      case 5:
        v4 = *(this + 6);
        if (!v4)
        {
          v5 = 48;
          break;
        }

        return *(v4 + 20);
      case 6:
        v4 = *(this + 7);
        if (v4)
        {
          return *(v4 + 20);
        }

        v5 = 56;
        break;
      default:
        return result;
    }

LABEL_20:
    v4 = *(CLMicroLocationProto::Measurement::default_instance(this) + v5);
    return *(v4 + 20);
  }

  if (v2 == 1)
  {
    v4 = *(this + 2);
    if (v4)
    {
      return *(v4 + 20);
    }

    v5 = 16;
    goto LABEL_20;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      return result;
    }

    v4 = *(this + 4);
    if (v4)
    {
      return *(v4 + 20);
    }

    v5 = 32;
    goto LABEL_20;
  }

  v4 = *(this + 3);
  if (!v4)
  {
    v5 = 24;
    goto LABEL_20;
  }

  return *(v4 + 20);
}

id CLMicroLocationPublishHelper::duetEventsFromLocalizationResultMeasurement(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  if (objc_opt_class())
  {
    v42 = [MEMORY[0x277CBEB18] array];
    v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*a1];
    std::string::basic_string[abi:ne200100]<0>(&v52, "com.apple.magicalmoments");
    v44 = 0;
    v45 = 0;
    v46 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v44, &v52, &v55, 1uLL);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(v52);
    }

    v2 = *(a1 + 8);
    v43 = (a1 + 16);
    if (v2 != (a1 + 16))
    {
      do
      {
        v3 = v2 + 4;
        v4 = v44;
        v5 = v45;
        if (v44 != v45)
        {
          v6 = *(v2 + 55);
          if (v6 >= 0)
          {
            v7 = *(v2 + 55);
          }

          else
          {
            v7 = v2[5];
          }

          if (v6 >= 0)
          {
            v8 = v2 + 4;
          }

          else
          {
            v8 = v2[4];
          }

          while (1)
          {
            v9 = *(v4 + 23);
            v10 = v9;
            if ((v9 & 0x80u) != 0)
            {
              v9 = *(v4 + 8);
            }

            if (v9 == v7)
            {
              v11 = v10 >= 0 ? v4 : *v4;
              if (!memcmp(v11, v8, v7))
              {
                break;
              }
            }

            v4 += 24;
            if (v4 == v5)
            {
              goto LABEL_35;
            }
          }
        }

        if (v4 != v5)
        {
          if (*(v2 + 80) != 1)
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
LABEL_47:
            CLMicroLocationPublishHelper::duetEventsFromLocalizationResultMeasurement();

            abort_report_np();
            __break(1u);
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(&v52, v2[7], v2[8], 0xCCCCCCCCCCCCCCCDLL * ((v2[8] - v2[7]) >> 2));
          if (v53 == v52)
          {
            goto LABEL_47;
          }

          v12 = [MEMORY[0x277CBEB38] dictionary];
          v13 = v52;
          v14 = v53;
          if (v52 == v53)
          {
            v15 = 0;
            v16 = 0.0;
          }

          else
          {
            v15 = 0;
            v16 = 0.0;
            do
            {
              v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v13];
              LODWORD(v18) = *(v13 + 4);
              v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
              [v12 setObject:v19 forKey:v17];

              v20 = *(v13 + 4);
              if (v16 < v20)
              {
                v21 = v17;

                v16 = v20;
                v15 = v21;
              }

              v13 = (v13 + 20);
            }

            while (v13 != v14);
          }

          v50[0] = @"numberOfWifiDevices";
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
          v51[0] = v22;
          v50[1] = @"numberOfBleDevices";
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
          v51[1] = v23;
          v50[2] = @"numberOfUwbDevices";
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
          v51[2] = v24;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];

          v26 = [MEMORY[0x277CFE230] domain];
          v48[0] = v26;
          if (*(v2 + 55) < 0)
          {
            v3 = *v3;
          }

          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
          v49[0] = v27;
          v28 = [MEMORY[0x277CFE230] probabilityVector];
          v48[1] = v28;
          v48[2] = @"_DKMicroLocationNumberOfDevices";
          v49[1] = v12;
          v49[2] = v25;
          v29 = [MEMORY[0x277CFE230] microLocationIsStable];
          v48[3] = v29;
          v30 = [MEMORY[0x277CCABB0] numberWithBool:0];
          v49[3] = v30;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:4];

          v32 = MEMORY[0x277CFE1D8];
          v33 = [MEMORY[0x277CFE298] microLocationVisitStream];
          v34 = [MEMORY[0x277CFE2B8] withUUID:v15];
          v35 = [v32 eventWithStream:v33 startDate:v41 endDate:v41 value:v34 confidence:v31 metadata:v16];

          [v42 addObject:v35];
          if (v52)
          {
            v53 = v52;
            operator delete(v52);
          }
        }

LABEL_35:
        v36 = v2[1];
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = v2[2];
            v38 = *v37 == v2;
            v2 = v37;
          }

          while (!v38);
        }

        v2 = v37;
      }

      while (v37 != v43);
    }

    v52 = &v44;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v52);
  }

  else
  {
    v42 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v42;
}

void sub_2591B4498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  if (*(v14 - 113) < 0)
  {
    operator delete(*(v14 - 136));
  }

  _Unwind_Resume(a1);
}

id CLMicroLocationPublishHelper::biomePublicEventsFromLocalizationResultMeasurement(uint64_t a1)
{
  if (!objc_opt_class())
  {
    v3 = 0;
    goto LABEL_37;
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  v4 = *(a1 + 8);
  v5 = (a1 + 16);
  if (v4 == (a1 + 16))
  {
LABEL_37:

    return v3;
  }

  v6 = 0x277CCA000uLL;
  v46 = v2;
  while (1)
  {
    if ((*(v4 + 55) & 0x80000000) == 0 || v4[5] != 24)
    {
      goto LABEL_29;
    }

    v7 = v4[4];
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v8 == 0x6C7070612E6D6F63 && v9 == 0x61636967616D2E65;
    if (!v11 || v10 != 0x73746E656D6F6D6CLL)
    {
      goto LABEL_29;
    }

    if (*(v4 + 80) != 1)
    {
      break;
    }

    __p = 0;
    v51 = 0;
    v52 = 0;
    std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(&__p, v4[7], v4[8], 0xCCCCCCCCCCCCCCCDLL * ((v4[8] - v4[7]) >> 2));
    if (v51 == __p)
    {
      goto LABEL_41;
    }

    v13 = [MEMORY[0x277CBEB18] array];
    v14 = __p;
    v15 = v51;
    if (__p == v51)
    {
      v16 = 0;
      v22 = 0.0;
    }

    else
    {
      v16 = 0;
      v17 = 0.0;
      do
      {
        v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v14];
        v19 = v14[4];
        v20 = objc_alloc(MEMORY[0x277CF12B8]);
        v21 = [v18 UUIDString];
        v22 = v19;
        v23 = [*(v6 + 2992) numberWithDouble:v22];
        v24 = [v20 initWithMicroLocationIdentifier:v21 probability:v23];

        [v13 addObject:v24];
        v6 = 0x277CCA000;
        if (v17 >= v22)
        {
          v22 = v17;
        }

        else
        {
          v25 = v18;

          v16 = v25;
          v17 = v22;
        }

        v14 += 5;
      }

      while (v14 != v15);
    }

    v26 = objc_alloc(MEMORY[0x277CF12B0]);
    v27 = [*(v6 + 2992) numberWithUnsignedLong:0];
    v28 = [v26 initWithTechnology:@"numberOfWifiDevices" numDevices:v27];

    v49 = v28;
    v29 = objc_alloc(MEMORY[0x277CF12B0]);
    v30 = [*(v6 + 2992) numberWithUnsignedLong:0];
    v31 = [v29 initWithTechnology:@"numberOfBleDevices" numDevices:v30];

    v48 = v31;
    v32 = objc_alloc(MEMORY[0x277CF12B0]);
    v33 = [*(v6 + 2992) numberWithUnsignedLong:0];
    v34 = [v32 initWithTechnology:@"numberOfUwbDevices" numDevices:v33];

    v47 = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:{v28, v31, v34, 0}];
    v36 = objc_alloc(MEMORY[0x277CF12A8]);
    v37 = v4 + 4;
    if (*(v4 + 55) < 0)
    {
      v37 = v4[4];
    }

    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
    v39 = [v16 UUIDString];
    v40 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
    v41 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v42 = [v36 initWithDomain:v38 maxProbabilityMicroLocationIdentifier:v39 maxProbability:v40 probabilityVector:v13 isStable:v41 numDevicesVector:v35];

    v3 = v46;
    [v46 addObject:v42];

    if (__p)
    {
      v51 = __p;
      operator delete(__p);
    }

    v6 = 0x277CCA000;
LABEL_29:
    v43 = v4[1];
    if (v43)
    {
      do
      {
        v44 = v43;
        v43 = *v43;
      }

      while (v43);
    }

    else
    {
      do
      {
        v44 = v4[2];
        v11 = *v44 == v4;
        v4 = v44;
      }

      while (!v11);
    }

    v4 = v44;
    if (v44 == v5)
    {
      goto LABEL_37;
    }
  }

  __p = 0;
  v51 = 0;
  v52 = 0;
LABEL_41:
  CLMicroLocationPublishHelper::biomePublicEventsFromLocalizationResultMeasurement();

  result = abort_report_np();
  __break(1u);
  return result;
}

void sub_2591B4ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id CLMicroLocationPublishHelper::biomeRestrictedEventsFromLocalizationResultMeasurement(double *a1)
{
  if (!objc_opt_class())
  {
    v3 = 0;
    goto LABEL_32;
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  v4 = *(a1 + 1);
  v5 = a1 + 2;
  if (v4 == a1 + 2)
  {
LABEL_32:

    return v3;
  }

  v6 = *a1;
  v41 = a1 + 2;
  v42 = v2;
  while (1)
  {
    if ((*(v4 + 55) & 0x80000000) == 0 || *(v4 + 5) != 38 || memcmp(*(v4 + 4), "com.apple.microlocation.semisupervised", 0x26uLL))
    {
      goto LABEL_24;
    }

    std::string::basic_string[abi:ne200100]<0>(v48, "");
    if (*(v4 + 80) != 1)
    {
      break;
    }

    __p = 0;
    v46 = 0;
    v47 = 0;
    std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(&__p, *(v4 + 7), *(v4 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v4 + 8) - *(v4 + 7)) >> 2));
    if (v46 == __p)
    {
      goto LABEL_36;
    }

    v7 = [MEMORY[0x277CBEB18] array];
    v8 = __p;
    v9 = v46;
    if (__p == v46)
    {
      v10 = 0;
      v16 = 0.0;
    }

    else
    {
      v10 = 0;
      v11 = 0.0;
      do
      {
        v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v8];
        v13 = v8[4];
        v14 = objc_alloc(MEMORY[0x277CF1360]);
        v15 = [v12 UUIDString];
        v16 = v13;
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
        v18 = [v14 initWithLabel:v15 probability:v17];

        [v7 addObject:v18];
        if (v11 >= v16)
        {
          v16 = v11;
        }

        else
        {
          v19 = v12;

          v10 = v19;
          v11 = v16;
        }

        v8 += 5;
      }

      while (v8 != v9);
    }

    v20 = objc_alloc(MEMORY[0x277CF1358]);
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v22 = [v20 initWithTechnologyString:@"numberOfWifiDevices" number:v21];

    v44 = v22;
    v23 = objc_alloc(MEMORY[0x277CF1358]);
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v25 = [v23 initWithTechnologyString:@"numberOfBleDevices" number:v24];

    v43 = v25;
    v26 = objc_alloc(MEMORY[0x277CF1358]);
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v28 = [v26 initWithTechnologyString:@"numberOfUwbDevices" number:v27];

    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:{v22, v25, v28, 0}];
    v30 = objc_alloc(MEMORY[0x277CF1350]);
    v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
    if (v49 >= 0)
    {
      v32 = v48;
    }

    else
    {
      v32 = v48[0];
    }

    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:v32];
    v34 = [v10 UUIDString];
    v35 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v36 = [v30 initWithAbsoluteTimeStamp:v31 clientBundleID:v33 maxProbabilityLabel:v34 maxProbability:v35 probabilityVector:v7 numDevicesVector:v29];

    v3 = v42;
    [v42 addObject:v36];

    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }

    v5 = v41;
    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

LABEL_24:
    v37 = *(v4 + 1);
    if (v37)
    {
      do
      {
        v38 = v37;
        v37 = *v37;
      }

      while (v37);
    }

    else
    {
      do
      {
        v38 = *(v4 + 2);
        v39 = *v38 == v4;
        v4 = v38;
      }

      while (!v39);
    }

    v4 = v38;
    if (v38 == v5)
    {
      goto LABEL_32;
    }
  }

  __p = 0;
  v46 = 0;
  v47 = 0;
LABEL_36:
  CLMicroLocationPublishHelper::biomeRestrictedEventsFromLocalizationResultMeasurement();

  result = abort_report_np();
  __break(1u);
  return result;
}

void sub_2591B5084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2591B5214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_132()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t CLMicroLocationQualityEstimationAlgorithms::evaluateQualityWithNumFingerprints(uint64_t *a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v7 = 0;
LABEL_17:
    v15 = +[ULDefaultsSingleton shared];
    v10 = [v15 defaultsDictionary];

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualityNumFingerprintsWiFiOnlyThreshold"];
    v13 = [v10 objectForKey:v11];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = [&unk_286A728D0 unsignedIntValue];
      goto LABEL_20;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0x6DB6DB6DB6DB6DB7 * (v3 >> 5);
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = 1;
LABEL_6:
    v8 = *a1 + 224 * v4 + 16;
    do
    {
      v8 = *v8;
      if (!v8)
      {
        v7 = ++v4 < v5;
        if (v4 != v6)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    while (*(v8 + 24) != 5);
    v9 = +[ULDefaultsSingleton shared];
    v10 = [v9 defaultsDictionary];

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualityNumFingerprintsWiFiBleThreshold"];
    v12 = [v10 objectForKey:v11];
    v13 = v12;
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = [&unk_286A728E8 unsignedIntValue];
      goto LABEL_20;
    }
  }

  v14 = [v13 unsignedIntValue];
LABEL_20:
  v16 = v14;

  *v46 = 0;
  *&v46[8] = 0;
  *buf = v46;
  v17 = +[ULDefaultsSingleton shared];
  v18 = [v17 defaultsDictionary];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualitySecondsPerDay"];
  v20 = [v18 objectForKey:v19];
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = [v20 intValue];
  }

  else
  {
    v21 = [&unk_286A72840 intValue];
  }

  v22 = v21;

  v23 = *a1;
  if (a1[1] != *a1)
  {
    v24 = 0;
    v25 = 144;
    do
    {
      v44 = vcvtmd_u64_f64(*(v23 + v25) / v22);
      std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long>(buf, &v44);
      ++v24;
      v23 = *a1;
      v25 += 224;
    }

    while (v24 < 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5));
  }

  v26 = *&v46[8];
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(buf, *v46);
  v27 = +[ULDefaultsSingleton shared];
  v28 = [v27 defaultsDictionary];

  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualityDaysInLOIForRelaxation"];
  v30 = [v28 objectForKey:v29];
  if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v31 = [v30 unsignedIntValue];
  }

  else
  {
    v31 = [&unk_286A72870 unsignedIntValue];
  }

  v32 = v31;

  v33 = v16;
  if (v26 >= v32)
  {
    v34 = +[ULDefaultsSingleton shared];
    v35 = [v34 defaultsDictionary];

    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualityNumFingerprintsRelaxationAfterTimeInLOI"];
    v37 = [v35 objectForKey:v36];
    if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v38 = [v37 unsignedIntValue];
    }

    else
    {
      v38 = [&unk_286A72888 unsignedIntValue];
    }

    v39 = v38;

    v33 -= v39;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationQualityEstimationAlgorithms::evaluateQualityWithNumFingerprints();
  }

  v40 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
    *buf = 68290050;
    *v46 = 2082;
    *&buf[4] = 0;
    *&v46[2] = "";
    *&v46[10] = 2050;
    *&v46[12] = v41;
    v47 = 2050;
    v48 = v26;
    v49 = 1026;
    v50 = v7;
    v51 = 2050;
    v52 = v33;
    _os_log_impl(&dword_258FE9000, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:evaluateQualityWithNumFingerprints, Num fingerprints (unpruned):%{public}lu, Number of days with recordings:%{public}lu, Has BLE:%{public}hhd, Threshold:%{public}lu}", buf, 0x36u);
  }

  if (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5) < v33)
  {
    result = 1;
  }

  else
  {
    result = 3;
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationQualityEstimationAlgorithms::evaluateQualityTreeBased(CLMicroLocationQualityEstimationAlgorithms *this@<X0>, uint64_t a2@<X8>)
{
  v121 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v90 = (a2 + 8);
  std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__assign_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum const*,CLMicroLocationProto::ServiceQualityReasonEnum const*>((a2 + 8), 0, 0, 0);
  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveSensorsEnable"];
  v7 = [v5 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v9 = v8;

  v104[0] = &stru_286A60C80;
  v104[1] = CLMicroLocationUtils::createEnabledTechnologies(1, 1, 1, 1);
  v105 = v9;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  CLMicroLocationClusterRFDistance::evaluateRFClusterDistances(v104, this, &v101);
  if (CLMicroLocationModel::numClusters(this) == 1)
  {
    HIDWORD(v102) = 0;
    LODWORD(v103) = 0;
  }

  v98 = 0u;
  v99 = 0u;
  v100 = 1065353216;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = &v96;
  v92 = &v93;
  v93 = 0;
  v11 = *(this + 22);
  v10 = *(this + 23);
  v12 = (v10 - v11) >> 5;
  if (v10 == v11)
  {
    v23 = 0;
    *(a2 + 32) = 0;
    v20 = (a2 + 32);
    *(a2 + 36) = 0;
    v21 = (a2 + 36);
    *(a2 + 40) = 0;
    v22 = (a2 + 40);
  }

  else
  {
    do
    {
      for (i = *(*v11 + 16); i; i = *i)
      {
        v14 = *(i + 6);
        if (v14 == 6)
        {
          v16 = &v92;
        }

        else
        {
          if (v14 != 5)
          {
            if (v14 == 1)
            {
              *buf = i + 4;
              v15 = std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>(&v98, (i + 4));
              ++*(v15 + 12);
            }

            continue;
          }

          v16 = &v95;
        }

        std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>(v16, (i + 4));
      }

      v11 += 32;
    }

    while (v11 != v10);
    v17 = v97;
    v18 = v94;
    v19 = v99;
    *(a2 + 32) = DWORD2(v99);
    v20 = (a2 + 32);
    *(a2 + 36) = v17;
    v21 = (a2 + 36);
    *(a2 + 40) = v18;
    v22 = (a2 + 40);
    if (v19)
    {
      v88 = (a2 + 40);
      v89 = (a2 + 36);
      v23 = 0;
      do
      {
        v24 = *(v19 + 12);
        v25 = [ULDefaultsSingleton shared:v88];
        v26 = [v25 defaultsDictionary];

        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRobustWiFiMinARDecisionTreeFeatureThreshold"];
        v28 = [v26 objectForKey:v27];
        if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          [v28 doubleValue];
        }

        else
        {
          [&unk_286A73000 doubleValue];
        }

        v30 = v29;

        if (v30 < (v24 / v12))
        {
          ++v23;
        }

        v19 = *v19;
      }

      while (v19);
      v22 = v88;
      v21 = v89;
    }

    else
    {
      v23 = 0;
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationQualityEstimationAlgorithms::evaluateQualityWithNumFingerprints();
  }

  v31 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *v20;
    v33 = *v21;
    v34 = *v22;
    *buf = 68290562;
    *&buf[4] = 0;
    v107 = 2082;
    v108 = "";
    v109 = 2050;
    v110 = v12;
    v111 = 2050;
    v112 = v23;
    v113 = 1026;
    v114 = v32;
    v115 = 1026;
    v116 = v33;
    v117 = 1026;
    v118 = v34;
    v119 = 2050;
    v120 = *&v103;
    _os_log_impl(&dword_258FE9000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:evaluateQualityTreeBased, Num fingerprints (post-pruning):%{public}lu, NumRobustWifiSources:%{public}lu, NumWiFiSources:%{public}u, NumBLESources:%{public}u, NumUWBSources:%{public}u, maxClusterRfDistance:%{public}f}", buf, 0x42u);
  }

  v35 = +[ULDefaultsSingleton shared];
  v36 = [v35 defaultsDictionary];

  v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumMinFingerprintsPostPruningTreeBasedThreshold"];
  v38 = [v36 objectForKey:v37];
  if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v39 = [v38 unsignedIntValue];
  }

  else
  {
    v39 = [&unk_286A728A0 unsignedIntValue];
  }

  v40 = v39;

  if (v12 < v40)
  {
    v41 = a2;
    v43 = *(a2 + 16);
    v42 = *(a2 + 24);
    if (v43 < v42)
    {
      v44 = 5;
LABEL_58:
      *v43 = v44;
      v64 = v43 + 1;
LABEL_80:
      v41[2] = v64;
      v81 = 1;
      goto LABEL_81;
    }

    v57 = *v90;
    v58 = v43 - *v90;
    v59 = (v58 >> 2) + 1;
    if (v59 >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v60 = v42 - v57;
    if (v60 >> 1 > v59)
    {
      v59 = v60 >> 1;
    }

    v61 = v60 >= 0x7FFFFFFFFFFFFFFCLL;
    v62 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v61)
    {
      v62 = v59;
    }

    if (v62)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(v90, v62);
    }

    v75 = v58 >> 2;
    v76 = a2;
    v77 = (4 * (v58 >> 2));
    v78 = 5;
    goto LABEL_78;
  }

  v45 = *&v103;
  v46 = +[ULDefaultsSingleton shared];
  v47 = [v46 defaultsDictionary];

  v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxClusterRFDistanceDecisionTreeNodeThreshold"];
  v49 = [v47 objectForKey:v48];
  if (v49 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v49 doubleValue];
  }

  else
  {
    [&unk_286A73010 doubleValue];
  }

  v51 = v50;

  if (v51 >= v45)
  {
    v41 = a2;
    v43 = *(a2 + 16);
    v63 = *(a2 + 24);
    if (v43 < v63)
    {
      v44 = 6;
      goto LABEL_58;
    }

    v57 = *v90;
    v58 = v43 - *v90;
    v72 = (v58 >> 2) + 1;
    if (v72 >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v73 = v63 - v57;
    if (v73 >> 1 > v72)
    {
      v72 = v73 >> 1;
    }

    v61 = v73 >= 0x7FFFFFFFFFFFFFFCLL;
    v74 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v61)
    {
      v74 = v72;
    }

    if (v74)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(v90, v74);
    }

    v75 = v58 >> 2;
    v76 = a2;
    v77 = (4 * (v58 >> 2));
    v78 = 6;
LABEL_78:
    v82 = &v77[-v75];
    *v77 = v78;
    v64 = v77 + 1;
    memcpy(v82, v57, v58);
    v83 = v76[1];
    v76[1] = v82;
    v76[2] = v64;
    v76[3] = 0;
    v41 = v76;
    if (v83)
    {
      operator delete(v83);
    }

    goto LABEL_80;
  }

  v52 = +[ULDefaultsSingleton shared];
  v53 = [v52 defaultsDictionary];

  v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumRobustWifiSourcesDecisionTreeNodeThreshold"];
  v55 = [v53 objectForKey:v54];
  if (v55 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v56 = [v55 unsignedIntValue];
  }

  else
  {
    v56 = [&unk_286A728B8 unsignedIntValue];
  }

  v65 = v56;

  if (v23 < v65)
  {
    v66 = v97;
    v67 = +[ULDefaultsSingleton shared];
    v68 = [v67 defaultsDictionary];

    v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumBLESourcesDecisionTreeNodeThreshold"];
    v70 = [v68 objectForKey:v69];
    if (!v70)
    {
      goto LABEL_72;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v71 = [v70 unsignedIntValue];
    }

    else
    {
LABEL_72:
      v71 = [&unk_286A72858 unsignedIntValue];
    }

    v79 = v71;

    if (v66 < v79)
    {
      v41 = a2;
      v43 = *(a2 + 16);
      v80 = *(a2 + 24);
      if (v43 < v80)
      {
        v44 = 7;
        goto LABEL_58;
      }

      v57 = *v90;
      v58 = v43 - *v90;
      v85 = (v58 >> 2) + 1;
      if (v85 >> 62)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      v86 = v80 - v57;
      if (v86 >> 1 > v85)
      {
        v85 = v86 >> 1;
      }

      v61 = v86 >= 0x7FFFFFFFFFFFFFFCLL;
      v87 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v61)
      {
        v87 = v85;
      }

      if (v87)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(v90, v87);
      }

      v75 = v58 >> 2;
      v76 = a2;
      v77 = (4 * (v58 >> 2));
      v78 = 7;
      goto LABEL_78;
    }
  }

  v81 = 3;
  v41 = a2;
LABEL_81:
  *v41 = v81;
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&v92, v93);
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&v95, v96);
  std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::~__hash_table(&v98);

  v84 = *MEMORY[0x277D85DE8];
}

void sub_2591B6370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&a13, a14);
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&a16, a17);
  std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::~__hash_table(&a19);

  v31 = *a11;
  if (*a11)
  {
    *(a12 + 16) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_133()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__assign_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum const*,CLMicroLocationProto::ServiceQualityReasonEnum const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_24;
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
LABEL_24:
    std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 != v5)
    {
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
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v13 = *(v11 + 10);
    v14 = *(a2 + 24);
    if (v13 == -1 || v14 != v13)
    {
      if (v14 == v13)
      {
        return v11;
      }

      goto LABEL_23;
    }

    v17 = &v18;
    if ((off_286A5E6C8[v13])(&v17, v11 + 2, a2))
    {
      return v11;
    }

LABEL_23:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_24;
    }
  }
}

void sub_2591B69D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 == -1)
  {
    v6 = 299792458;
LABEL_5:
    v7 = -1;
    goto LABEL_6;
  }

  v12 = v2;
  v13 = v3;
  v6 = (off_286A5E6B0[v4])(&v11);
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v8 = 0x9DDFEA08EB382D69 * (v6 ^ __ROR8__(v7 + 16, 16));
  v9 = __ROR8__(v7 + 16, 16) ^ (v8 >> 47);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ v8)) >> 47))) ^ v7;
}

unint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNKS_4hashINS_7variantIJyN5boost5uuids4uuidENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEclB8ne200100ERKSH_EUlRKT_E_JRKNS0_6__baseILNS0_6_TraitE1EJySA_SG_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  result = 0;
  for (i = 0; i != 16; ++i)
  {
    result ^= (result << 6) + (result >> 2) + 2654435769u + *(a2 + i);
  }

  return result;
}

void CLMicroLocationRapportMonitor::deviceFound(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) >= *(a1 + 96))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationRapportMonitor::deviceFound();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      v8 = *(a1 + 32);
      v25 = 68289539;
      v26 = 2082;
      v27 = "";
      v28 = 2081;
      v29 = v7;
      v30 = 2049;
      v31 = v8;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Rapport, rapport monitor exceeded max entries, IDS:%{private, location:escape_only}s, Size:%{private}lu}", &v25, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationRapportMonitor::deviceFound();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      v11 = *(a1 + 32);
      v25 = 68289539;
      v26 = 2082;
      v27 = "";
      v28 = 2081;
      v29 = v10;
      v30 = 2049;
      v31 = v11;
      v12 = "Rapport, rapport monitor exceeded max entries";
      v13 = "{msg%{public}.0s:Rapport, rapport monitor exceeded max entries, IDS:%{private, location:escape_only}s, Size:%{private}lu}";
      v14 = v9;
      v15 = 38;
      goto LABEL_32;
    }
  }

  else
  {
    CLMicroLocationProtobufHelper::uuidFromStdString(a2, v34);
    if (v34[16] == 1)
    {
      std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__emplace_unique_impl<boost::uuids::uuid const&,std::string const&,std::string&,boost::uuids::uuid&>();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationRapportMonitor::deviceFound();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      v25 = 68289283;
      v26 = 2082;
      v27 = "";
      v28 = 2081;
      v29 = v17;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Rapport, rapport monitor buffered bad IDS UUID, IDS:%{private, location:escape_only}s}", &v25, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationRapportMonitor::deviceFound();
    }

    v18 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      if (*(a2 + 23) >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      v25 = 68289283;
      v26 = 2082;
      v27 = "";
      v28 = 2081;
      v29 = v19;
      v12 = "Rapport, rapport monitor buffered bad IDS UUID";
      v13 = "{msg%{public}.0s:Rapport, rapport monitor buffered bad IDS UUID, IDS:%{private, location:escape_only}s}";
      v14 = v18;
      v15 = 28;
LABEL_32:
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, v13, &v25, v15);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationRapportMonitor::deviceFound();
  }

  v20 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    v22 = *a3;
    if (*(a3 + 23) >= 0)
    {
      v22 = a3;
    }

    v23 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v23 = *v23;
    }

    v25 = 68289795;
    v26 = 2082;
    v27 = "";
    v28 = 2081;
    v29 = v21;
    v30 = 2081;
    v31 = v22;
    v32 = 2082;
    v33 = v23;
    _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Rapport, buffered a found device, Device IDS identifier:%{private, location:escape_only}s, Device name:%{private, location:escape_only}s, CoreRoutine LOI Type:%{public, location:escape_only}s}", &v25, 0x30u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationRapportMonitor::getDevicesSinceLearnEventTimeAtLoi(uint64_t a1@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 1065353216;
  for (i = *(a1 + 24); i; i = *i)
  {
    if (i[10] == a4->n128_u64[0] && i[11] == a4->n128_u64[1])
    {
      std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__emplace_unique_key_args<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem const&>(a5, (i + 2));
    }
  }

  v11 = *a2;
  v12 = (*(**(a1 + 48) + 88))(*(a1 + 48));
  v13 = v12;
  buf[0] = *a4;
  buf[1].n128_u8[0] = 1;
  if (v12)
  {
    [v12 fetchRapportEntriesAtLoiFromTime:buf toTime:v11 loiGroupId:1.79769313e308];
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  if (*a4 != 0)
  {
    v14 = (*(**(a1 + 48) + 88))(*(a1 + 48));
    v15 = v14;
    *v36 = 0;
    *v37 = 0;
    v37[8] = 1;
    if (v14)
    {
      [v14 fetchRapportEntriesAtLoiFromTime:v36 toTime:v11 loiGroupId:1.79769313e308];
    }

    else
    {
      memset(buf, 0, 24);
    }

    std::vector<ULRapportDO>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULRapportDO*>>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>>(&v33, v34, buf[0].n128_i64[0], buf[0].n128_i64[1], 0xCCCCCCCCCCCCCCCDLL * ((buf[0].n128_u64[1] - buf[0].n128_u64[0]) >> 4));
    *v36 = buf;
    std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](v36);
  }

  v16 = v34;
  if (v33 != v34)
  {
    v17 = v33 + 64;
    do
    {
      CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v17 - 24), v36);
      if (v37[8] == 1)
      {
        v18 = *(v17 - 16);
        std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__emplace_unique_impl<boost::uuids::uuid &,std::string const&,std::string const&,boost::uuids::uuid const&>();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationRapportMonitor::deviceFound();
      }

      v19 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        buf[0].n128_u64[0] = 68289026;
        buf[0].n128_u16[4] = 2082;
        *(&buf[0].n128_u64[1] + 2) = "";
        _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Rapport, rapport monitor read bad IDS UUID from DB}", buf, 0x12u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationRapportMonitor::deviceFound();
      }

      v20 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        buf[0].n128_u64[0] = 68289026;
        buf[0].n128_u16[4] = 2082;
        *(&buf[0].n128_u64[1] + 2) = "";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Rapport, rapport monitor read bad IDS UUID from DB", "{msg%{public}.0s:Rapport, rapport monitor read bad IDS UUID from DB}", buf, 0x12u);
      }

      v21 = v17 + 16;
      v17 += 80;
    }

    while (v21 != v16);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationRapportMonitor::deviceFound();
  }

  v22 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v33;
    v23 = v34;
    if (*(a3 + 23) >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    memset(&v32, 0, sizeof(v32));
    boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::lexical_istream_limited_src(buf);
    boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::shl_input_streamable<boost::uuids::uuid const>(buf, a4);
    v27 = v26;
    if (v26)
    {
      std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&v32, v51, v52, v52 - v51);
    }

    std::ostream::~ostream();
    buf[0].n128_u64[0] = MEMORY[0x277D82878] + 16;
    if (v50 < 0)
    {
      operator delete(__p);
    }

    buf[0].n128_u64[0] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&buf[0].n128_i8[8]);
    if ((v27 & 1) == 0)
    {
      std::bad_cast::bad_cast(buf);
      buf[0].n128_u64[0] = &unk_286A55058;
      boost::throw_exception<boost::bad_lexical_cast>(buf);
    }

    v28 = &v32;
    v29 = *(a5 + 24);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v32.__r_.__value_.__r.__words[0];
    }

    *v36 = 68290306;
    *&v36[4] = 0;
    *v37 = 2082;
    *&v37[2] = "";
    v38 = 2050;
    v39 = 0xCCCCCCCCCCCCCCCDLL * ((v23 - v24) >> 4);
    v40 = 1026;
    v41 = v11;
    v42 = 2082;
    v43 = v25;
    v44 = 2082;
    v45 = v28;
    v46 = 2050;
    v47 = v29;
    _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:RapportMonitor getDevicesSinceLearnEventTimeAtLoi, Backup Entries:%{public}lu, From time:%{public}d, LOI type:%{public, location:escape_only}s, LOI id:%{public, location:escape_only}s, Total number of devices:%{public}lu}", v36, 0x40u);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  buf[0].n128_u64[0] = &v33;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](buf);
  v30 = *MEMORY[0x277D85DE8];
}

void sub_2591B74DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::exception a32)
{
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::~lexical_istream_limited_src(&a32);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  a32.__vftable = &a19;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&a32);
  std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::~__hash_table(v32);
  _Unwind_Resume(a1);
}

void CLMicroLocationRapportMonitor::backup(CLMicroLocationRapportMonitor *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v1 = *(this + 3);
  if (v1)
  {
    v3 = MEMORY[0x277D82C30];
    do
    {
      CLMicroLocationProto::RapportDevice::RapportDevice(buf);
      *&buf[28] |= 1u;
      v4 = *&buf[8];
      if (*&buf[8] == v3)
      {
        operator new();
      }

      if (*(*&buf[8] + 23) < 0)
      {
        *(*&buf[8] + 8) = 16;
        v4 = *v4;
      }

      else
      {
        *(*&buf[8] + 23) = 16;
      }

      *v4 = *(v1 + 1);
      *(v4 + 16) = 0;
      *&buf[28] |= 2u;
      if (*&buf[16] == v3)
      {
        operator new();
      }

      std::string::operator=(*&buf[16], (v1 + 4));
      v17[0] = cl::chrono::CFAbsoluteTimeClock::now();
      v5 = v19;
      if (v19 >= v20)
      {
        v6 = std::vector<ULRapportDO>::__emplace_back_slow_path<std::string const&,CLMicroLocationProto::RapportDevice &,boost::uuids::uuid const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>(&v18, (v1 + 7), buf, (v1 + 10), v17);
      }

      else
      {
        std::construct_at[abi:ne200100]<ULRapportDO,std::string const&,CLMicroLocationProto::RapportDevice &,boost::uuids::uuid const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,ULRapportDO*>(v19, (v1 + 7), buf, (v1 + 10), v17);
        v6 = v5 + 80;
      }

      v19 = v6;
      CLMicroLocationProto::RapportDevice::~RapportDevice(buf);
      v1 = *v1;
    }

    while (v1);
    if (v19 != v18)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationRapportMonitor::deviceFound();
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v18) >> 4);
        _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Rapport, back up rapport monitor data to DB, Num Entries:%{public}lu}", buf, 0x1Cu);
      }

      v8 = v19;
      v24 = *(v18 + 64);
      *buf = v24;
      if (v18 == v19)
      {
LABEL_27:
        v11 = (*(**(this + 6) + 88))(*(this + 6));
        [v11 insertDataObjects:&v18 atLoiUUID:&v24];
      }

      else
      {
        v9 = v18;
        while (*(v9 + 64) == *buf && *(v9 + 72) == *&buf[8])
        {
          v9 += 80;
          if (v9 == v19)
          {
            goto LABEL_27;
          }
        }

        v12 = (v18 + 32);
        do
        {
          v13 = (*(**(this + 6) + 88))(*(this + 6));
          *buf = *(v12 - 4);
          if (*(v12 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&buf[8], *(v12 - 3), *(v12 - 2));
          }

          else
          {
            v14 = *(v12 - 24);
            *&buf[24] = *(v12 - 1);
            *&buf[8] = v14;
          }

          CLMicroLocationProto::RapportDevice::RapportDevice(v23, v12);
          v23[2] = v12[2];
          memset(v17, 0, sizeof(v17));
          std::vector<ULRapportDO>::__init_with_size[abi:ne200100]<ULRapportDO const*,ULRapportDO const*>(v17, buf, &v24, 1uLL);
          v15 = v12 + 2;
          [v13 insertDataObjects:v17 atLoiUUID:v12 + 2];
          v21 = v17;
          std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&v21);
          CLMicroLocationProto::RapportDevice::~RapportDevice(v23);
          if ((buf[31] & 0x80000000) != 0)
          {
            operator delete(*&buf[8]);
          }

          v12 += 5;
        }

        while (v15 + 1 != v8);
      }
    }
  }

  *buf = &v18;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](buf);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_2591B7944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  a17 = &a13;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

__n128 CLMicroLocationRapportMonitor::setCurrentLoiUUID(uuid *this, __n128 *a2)
{
  result = *a2;
  this[5] = *a2;
  return result;
}

unint64_t CLMicroLocationRapportMonitorItem::HashItem::operator()(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + 2654435769u + (v2 >> 2) + *(a2 + i);
  }

  v4 = 0;
  for (j = 0; j != 16; ++j)
  {
    v4 ^= (v4 << 6) + 2654435769u + (v4 >> 2) + *(a2 + 64 + j);
  }

  return 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ v2) + 3864292196u;
}

BOOL CLMicroLocationRapportMonitorItem::PredicateItem::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3 || *(a2 + 8) != *(a3 + 8))
  {
    return 0;
  }

  v7 = *(a2 + 39);
  if (v7 >= 0)
  {
    v8 = *(a2 + 39);
  }

  else
  {
    v8 = *(a2 + 24);
  }

  v9 = *(a3 + 39);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 24);
  }

  if (v8 != v9)
  {
    return 0;
  }

  v11 = v7 >= 0 ? (a2 + 16) : *(a2 + 16);
  v12 = v10 >= 0 ? (a3 + 16) : *(a3 + 16);
  if (memcmp(v11, v12, v8))
  {
    return 0;
  }

  return *(a2 + 64) == *(a3 + 64) && *(a2 + 72) == *(a3 + 72);
}

void CLMicroLocationRapportMonitor::~CLMicroLocationRapportMonitor(void **this)
{
  *this = &unk_286A5E6F0;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::~__hash_table((this + 1));
}

{
  *this = &unk_286A5E6F0;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::~__hash_table((this + 1));

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_134()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__emplace_unique_key_args<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem const&>(void *a1, uint64_t a2)
{
  v4 = CLMicroLocationRapportMonitorItem::HashItem::operator()(a1, a2);
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
    std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__construct_node_hash<CLMicroLocationRapportMonitorItem const&>();
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

  LOBYTE(v4) = CLMicroLocationRapportMonitorItem::PredicateItem::operator()(v4, (v11 + 2), a2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}