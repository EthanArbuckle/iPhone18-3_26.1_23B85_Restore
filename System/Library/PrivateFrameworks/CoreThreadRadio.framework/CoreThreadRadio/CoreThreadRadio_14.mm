void sub_1001383E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessServiceAdd(HostInterpreter *this, unsigned __int8 a2, char **a3, unsigned __int8 *a4)
{
  RcpHostContext::get_rcp_state(RcpHostContext::sRcpHostContext, &v44);
  if (v46 < 0)
  {
    if (v45 == 10 && *v44 == 0x746169636F737361 && *(v44 + 4) == 25701)
    {
      goto LABEL_31;
    }

    if (v45 == 11)
    {
      v6 = v44;
LABEL_12:
      v8 = *v6;
      v9 = *(v6 + 3);
      if (v8 != 0x746169636F737361 || v9 != 0x676E69746169636FLL)
      {
        goto LABEL_16;
      }

LABEL_31:
      v56 = *a4;
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessServiceAdd(a4);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      if (gSrpModeNetInfo)
      {
LABEL_79:
        if (a4[253] == 93)
        {
          v30 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v30)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = a4[253];
              LODWORD(buf.__vftable) = 67109120;
              HIDWORD(buf.__vftable) = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Starting RCP SRP service ABC timer, service data[%02X]", &buf, 8u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          HostInterpreter::setRcpSrpServiceABCTimer(this);
        }

        v32 = a4[505];
        memcpy(v58, a4 + 253, v32);
        v57 = v32;
        v33 = a4[252];
        memcpy(&v61, a4 + 4, v33);
        v60 = v33;
        v59 = v59 & 0xFE | a4[506];
        v14 = otServerAddService(*(this + 28), v55);
        if (v14)
        {
          v34 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v34)
          {
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              HostInterpreter::ProcessServiceAdd();
            }

            goto LABEL_103;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_102;
          }
        }

        else
        {
          v14 = otBorderRouterRegister(*(this + 28));
          if (!v14)
          {
            v36 = 0;
            v37 = *(a4 + 64);
            if (v37)
            {
              goto LABEL_108;
            }

            goto LABEL_106;
          }

          v35 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v35)
          {
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              HostInterpreter::ProcessServiceAdd();
            }

            goto LABEL_103;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
LABEL_102:
            [PowerEventHandler_Rcp init:];
          }
        }

LABEL_103:
        HIDWORD(v39) = v14 - 1;
        LODWORD(v39) = v14 - 1;
        v38 = v39 >> 1;
        if (v38 <= 6 && ((0x4Du >> v38) & 1) != 0)
        {
          v14 = dword_10044816C[v38];
          v36 = dword_100448188[v38];
          v37 = *(a4 + 64);
          if (!v37)
          {
            goto LABEL_106;
          }

LABEL_108:
          (*((v37 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 520, v36);
          goto LABEL_109;
        }

        v36 = 1;
        v37 = *(a4 + 64);
        if (v37)
        {
          goto LABEL_108;
        }

LABEL_106:
        std::runtime_error::runtime_error(&buf, "call to empty boost::function");
        buf.__vftable = off_1004C1548;
        boost::throw_exception<boost::bad_function_call>(&buf);
      }

      if (a4[505])
      {
        v17 = a4[505];
        operator new();
      }

      v18 = a4[252];
      v42 = 0;
      v43 = 0;
      v41 = 0;
      if (v18)
      {
        operator new();
      }

      v19 = *a4;
      v20 = a4[506];
      LODWORD(buf.__imp_.__imp_) = 2;
      HIDWORD(buf.__imp_.__imp_) = v19;
      v49 = 0;
      v50 = 0;
      v48 = 0;
      buf.__vftable = off_1004C5358;
      v51 = v20;
      nl::Data::Data(v52, &v41);
      Rloc16 = otThreadGetRloc16(*(this + 28));
      v54 = -1;
      v21 = *(this + 1);
      v22 = *(this + 2);
      if (v21 != v22)
      {
        while (!ServiceEntryBase::operator==(v21, &buf))
        {
          v21 += 80;
          if (v21 == v22)
          {
            v21 = v22;
            break;
          }
        }

        v22 = *(this + 2);
      }

      if (v21 == v22)
      {
        if (v22 >= *(this + 3))
        {
          v27 = std::vector<ServiceEntry>::__emplace_back_slow_path<ServiceEntry const&>(this + 1, &buf);
        }

        else
        {
          ServiceEntry::ServiceEntry(v22, &buf);
          v27 = v22 + 80;
          *(this + 2) = v22 + 80;
        }

        *(this + 2) = v27;
        v28 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v28)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            ServiceEntry::get_description(&buf);
          }

          goto LABEL_73;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
LABEL_72:
          [PowerEventHandler_Rcp init:];
        }
      }

      else
      {
        v23 = *(v21 + 48);
        v24 = *(v21 + 56);
        v25 = (v21 + 48);
        if (v24 - v23 != v42 - v41 || memcmp(v23, v41, v24 - v23))
        {
          v26 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v26)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              ServiceEntry::get_description(&buf);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          if (v25 != &v41)
          {
            std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v25, v41, v42, v42 - v41);
          }

          goto LABEL_73;
        }

        v29 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v29)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            ServiceEntry::get_description(&buf);
          }

          goto LABEL_73;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }
      }

LABEL_73:
      buf.__vftable = off_1004C5358;
      if (v52[0])
      {
        v52[1] = v52[0];
        operator delete(v52[0]);
      }

      buf.__vftable = off_1004C52F8;
      if (v48)
      {
        v49 = v48;
        operator delete(v48);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      goto LABEL_79;
    }
  }

  else
  {
    if (v46 == 10)
    {
      if (v44 != 0x746169636F737361 || v45 != 25701)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

    if (v46 == 11)
    {
      v6 = &v44;
      goto LABEL_12;
    }
  }

LABEL_16:
  v11 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v11)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = &v44;
      if (v46 < 0)
      {
        v12 = v44;
      }

      LODWORD(buf.__vftable) = 136315138;
      *(&buf.__vftable + 4) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Services: Invalid state %s", &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v13 = *(a4 + 64);
  if (!v13)
  {
    std::runtime_error::runtime_error(&buf, "call to empty boost::function");
    buf.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&buf);
  }

  (*((v13 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 520, 4);
  v14 = 13;
LABEL_109:
  if (v46 < 0)
  {
    operator delete(v44);
  }

  return v14;
}

void sub_100138DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::runtime_error a24, void *a25, uint64_t a26)
{
  ServiceEntry::~ServiceEntry(&a24);
  if (__p)
  {
    operator delete(__p);
    if (v26)
    {
LABEL_7:
      operator delete(v26);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (v26)
  {
    goto LABEL_7;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a16);
  goto LABEL_9;
}

uint64_t HostInterpreter::ProcessServiceRemove(HostInterpreter *this, unsigned __int8 a2, char **a3, unsigned __int8 *a4)
{
  v6 = a4[256];
  if (gSrpModeNetInfo)
  {
    v7 = 0;
    goto LABEL_3;
  }

  if (a4[256])
  {
    v12 = a4[256];
    operator new();
  }

  v17 = *a4;
  LODWORD(buf.__imp_.__imp_) = 2;
  HIDWORD(buf.__imp_.__imp_) = v17;
  buf.__vftable = off_1004C52F8;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v18 = *(this + 1);
  v19 = *(this + 2);
  if (v18 != v19)
  {
    while (!ServiceEntryBase::operator==(v18, &buf))
    {
      v18 += 80;
      if (v18 == v19)
      {
        v18 = v19;
        break;
      }
    }

    v19 = *(this + 2);
  }

  if (v18 == v19)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        ServiceEntryBase::get_description(&buf);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v7 = 0;
    v26 = 6;
    buf.__vftable = off_1004C52F8;
    v27 = v54;
    if (v54)
    {
      goto LABEL_101;
    }

    goto LABEL_102;
  }

  if (a4[4] != 93)
  {
    v7 = 0;
    goto LABEL_81;
  }

  v20 = *a4;
  v44 = 0;
  v45 = v20;
  v43 = off_1004C52F8;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v21 = *(this + 1);
  if (v21 != v19)
  {
    while (!ServiceEntryBase::operator==(v21, &v43))
    {
      v21 += 80;
      if (v21 == v19)
      {
        v21 = v19;
        break;
      }
    }

    v19 = *(this + 2);
  }

  v22 = v21 == v19;
  v7 = v21 == v19;
  if (v22)
  {
    v28 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v28)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Services: NCP Entry not Found, inform SRP Daemon", __p, 2u);
      }

      goto LABEL_79;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
LABEL_78:
      [PowerEventHandler_Rcp init:];
    }
  }

  else
  {
    v23 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v23)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        (*(*v21 + 16))(__p, v21);
        v24 = __p;
        if (v50 < 0)
        {
          v24 = *__p;
        }

        *v51 = 136315138;
        v52 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Services: NCP Entry Found %s", v51, 0xCu);
        if (v50 < 0)
        {
          operator delete(*__p);
        }
      }

      goto LABEL_79;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }
  }

LABEL_79:
  v43 = off_1004C52F8;
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

LABEL_81:
  v32 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v32)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      (*(*v18 + 16))(&v43, v18);
      v33 = SHIBYTE(v46) >= 0 ? &v43 : v43;
      *__p = 136315138;
      *&__p[4] = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Services: Removing %s", __p, 0xCu);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(v43);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v34 = *(this + 2);
  if (v18 + 80 != v34)
  {
    do
    {
      *(v18 + 8) = *(v18 + 88);
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v18 + 16), *(v18 + 96), *(v18 + 104), *(v18 + 104) - *(v18 + 96));
      *(v18 + 40) = *(v18 + 120);
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v18 + 48), *(v18 + 128), *(v18 + 136), *(v18 + 136) - *(v18 + 128));
      *(v18 + 72) = *(v18 + 152);
      *(v18 + 74) = *(v18 + 154);
      v35 = v18 + 80;
      v36 = v18 + 160;
      v18 += 80;
    }

    while (v36 != v34);
    v34 = *(this + 2);
    v18 = v35;
  }

  if (v34 != v18)
  {
    v37 = (v34 - 80);
    v38 = v37;
    v39 = v37;
    do
    {
      v40 = *v39;
      v39 -= 10;
      (*v40)(v38);
      v37 -= 10;
      v22 = v38 == v18;
      v38 = v39;
    }

    while (!v22);
  }

  *(this + 2) = v18;
  if (a4[4] == 93)
  {
    HostInterpreter::clearRcpSrpServiceABCTimer(this);
  }

  v26 = 0;
  buf.__vftable = off_1004C52F8;
  v27 = v54;
  if (v54)
  {
LABEL_101:
    v55 = v27;
    operator delete(v27);
  }

LABEL_102:
  if (v26)
  {
    v14 = 0;
    goto LABEL_104;
  }

LABEL_3:
  v8 = *a4;
  v57 = *a4;
  v9 = log_get_logging_obg("com.apple.threadradiod", "default");
  v10 = v9;
  if (!v6)
  {
    if (v9)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessServiceRemove();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    goto LABEL_71;
  }

  if (v9)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a4[256];
      LODWORD(buf.__vftable) = 67109376;
      HIDWORD(buf.__vftable) = v11;
      LOWORD(buf.__imp_.__imp_) = 1024;
      *(&buf.__imp_.__imp_ + 2) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, " Service Data Len = %d, Server Data Len = %d", &buf, 0xEu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v13 = a4[256];
  memcpy(v59, a4 + 4, v13);
  v58 = v13;
  v14 = otServerRemoveService(*(this + 28), v8, v59, v13);
  if (v14)
  {
    v15 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v15)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessServiceRemove();
      }

      goto LABEL_65;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  v14 = otBorderRouterRegister(*(this + 28));
  if (!v14)
  {
LABEL_104:
    v31 = 0;
    goto LABEL_105;
  }

  v16 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v16)
  {
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::ProcessServiceRemove();
    }

    goto LABEL_65;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
LABEL_64:
    [PowerEventHandler_Rcp init:];
  }

LABEL_65:
  HIDWORD(v30) = v14 - 1;
  LODWORD(v30) = v14 - 1;
  v29 = v30 >> 1;
  if (v29 <= 2)
  {
    if (v29)
    {
      if (v29 == 2)
      {
        v31 = 9;
        v14 = 5;
        goto LABEL_105;
      }
    }

    else
    {
      v14 = 1;
    }

    goto LABEL_73;
  }

  if (v29 != 6)
  {
    if (v29 != 3)
    {
LABEL_73:
      v31 = 1;
      goto LABEL_105;
    }

LABEL_71:
    v31 = 2;
    v14 = 7;
    goto LABEL_105;
  }

  v31 = 4;
  v14 = 13;
LABEL_105:
  v41 = *(a4 + 33);
  if (!v41)
  {
    std::runtime_error::runtime_error(&buf, "call to empty boost::function");
    buf.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&buf);
  }

  (*((v41 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 272, v31);
  if (v7)
  {
    HostInterpreter::signal_service_list(this);
  }

  return v14;
}

void sub_100139804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::runtime_error a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (!v23)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v23);
  _Unwind_Resume(exception_object);
}

void HostInterpreter::ProcessStatus(HostInterpreter *this, unsigned __int8 a2, char **a3, void *a4)
{
  *(RcpHostContext::sRcpHostContext + 5728) = otLinkGetChannel(*(this + 28));
  otThreadGetNetworkName(*(this + 28));
  std::string::assign((RcpHostContext::sRcpHostContext + 5768), v5);
  *(RcpHostContext::sRcpHostContext + 5732) = otThreadGetPartitionId(*(this + 28));
  *(RcpHostContext::sRcpHostContext + 5760) = otLinkGetPanId(*(this + 28));
  otThreadGetExtendedPanId(*(this + 28));
  operator new();
}

uint64_t HostInterpreter::ProcessThreadStart(HostInterpreter *this, int a2, char **a3, char *a4)
{
  if (!a2)
  {
    v9 = 7;
LABEL_32:
    v14 = *a4;
    if (!*a4)
    {
      std::runtime_error::runtime_error(v20, "call to empty boost::function");
      *v20 = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(v20);
    }

    v15 = "Error!\n";
    goto LABEL_34;
  }

  v6 = *(this + 28);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v8 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v25 = "ProcessThreadStart";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Thread Start Indication sent", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    started = otPlatVendorSetVendorThreadStartStop(*(this + 28), 1);
    if (started)
    {
      v11 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v11)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v25 = "ProcessThreadStart";
          v26 = 1024;
          v27 = started;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: otPlatVendorSetVendorThreadStartStop Error: %d", buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }
    }
  }

  v9 = otDatasetSetActive(*(this + 28), buf);
  if (v9)
  {
    goto LABEL_32;
  }

  v12 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v12)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "dataset commit active, Done", v20, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v9 = otIp6SetEnabled(*(this + 28), 1);
  if (v9)
  {
    goto LABEL_32;
  }

  v13 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v13)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "ifconfig up, Done", v20, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v9 = otThreadSetEnabled(*(this + 28), 1);
  if (v9)
  {
    goto LABEL_32;
  }

  LinkMode = otThreadGetLinkMode(*(this + 28));
  if ((~LinkMode & 6) == 0 && (LinkMode & 1) == 0)
  {
    otThreadBecomeLeader(*(this + 28), 0);
  }

  otInstanceGetUptimeAsString(*(this + 28), v23, 24);
  v18 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v18)
  {
    is_the_mask_enabled = syslog_is_the_mask_enabled(6);
    if (is_the_mask_enabled)
    {
      is_the_mask_enabled = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (is_the_mask_enabled)
      {
        *v20 = 136315394;
        *&v20[4] = v23;
        v21 = 2080;
        v22 = "ProcessThreadStart";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s %s Thread start, Done", v20, 0x16u);
      }
    }
  }

  else
  {
    is_the_mask_enabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (is_the_mask_enabled)
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  HostInterpreter::transactionEnabled(is_the_mask_enabled, 1);
  v14 = *a4;
  if (!*a4)
  {
    std::runtime_error::runtime_error(v20, "call to empty boost::function");
    *v20 = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(v20);
  }

  v9 = 0;
  v15 = "Done\n";
LABEL_34:
  (*((v14 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 8, v15, a3);
  return v9;
}

uint64_t HostInterpreter::ProcessThreadStop(HostInterpreter *this, unsigned __int8 a2, char **a3, char *a4)
{
  v6 = *(this + 28);
  Rcp2Vendor2Enabled = otPlatRadioGetRcp2Vendor2Enabled();
  if (Rcp2Vendor2Enabled)
  {
    byte_10052D769 = 0;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v9 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v28 = 136315138;
        *&v28[4] = "ProcessThreadStop";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Thread Stop Indication sent", v28, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    Rcp2Vendor2Enabled = otPlatVendorSetVendorThreadStartStop(*(this + 28), 0);
    v10 = Rcp2Vendor2Enabled;
    if (Rcp2Vendor2Enabled)
    {
      v11 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v11)
      {
        Rcp2Vendor2Enabled = syslog_is_the_mask_enabled(6);
        if (Rcp2Vendor2Enabled)
        {
          Rcp2Vendor2Enabled = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
          if (Rcp2Vendor2Enabled)
          {
            *v28 = 136315394;
            *&v28[4] = "ProcessThreadStop";
            *&v28[12] = 1024;
            *&v28[14] = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: otPlatVendorSetVendorThreadStartStop Error: %d", v28, 0x12u);
          }
        }
      }

      else
      {
        Rcp2Vendor2Enabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (Rcp2Vendor2Enabled)
        {
          [PowerEventHandler_Rcp init:];
        }
      }
    }
  }

  HostInterpreter::transactionEnabled(Rcp2Vendor2Enabled, 0);
  v12 = *(this + 30);
  *v28 = _NSConcreteStackBlock;
  *&v28[8] = 0x40000000;
  *&v28[16] = ___ZN15HostInterpreter38clearRcpSrpSignalMeshLocalAddressTimerEv_block_invoke;
  v29 = &__block_descriptor_tmp_39;
  v30 = this;
  dispatch_async(v12, v28);
  if (HostInterpreter::isThreadSessionJoinEnabled(v13))
  {
    v14 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v14)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v28 = 136315138;
        *&v28[4] = "ProcessThreadStop";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Thread Session Join THREAD_SESSION_OFF", v28, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    saveStringValue("threadSessionJoin", "OFF");
    wcm_notify(0, *(this + 184));
    v15 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v15)
    {
      if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        HostInterpreter::ProcessThreadStop();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v16 = HostInterpreter::detachIfWedConnectionInProgress(this);
    if (v16)
    {
      goto LABEL_43;
    }
  }

  HostInterpreter::clearRcpSrpAnycastServiceCovergenceTimer(this);
  HostInterpreter::clearSrpAdvertisedWithoutPrefixTimer(this);
  HostInterpreter::clearRcpSrpUnicastServiceCovergenceTimer(this);
  HostInterpreter::clearSrpPrefixCovergenceTimer(this);
  HostInterpreter::clearChildRoleDetectionTimer(this);
  HostInterpreter::clearRcpSrpServiceABCTimer(this);
  otIp6SetSlaacEnabled(*(this + 28), 0);
  v17 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v17)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v28 = 136315138;
      *&v28[4] = "ProcessThreadStop";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: SLAAC Disabled, Done", v28, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v16 = otThreadSetEnabled(*(this + 28), 0);
  if (v16)
  {
    goto LABEL_43;
  }

  v18 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v18)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v28 = 136315138;
      *&v28[4] = "ProcessThreadStop";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: Thread stop, Done", v28, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v16 = otIp6SetEnabled(*(this + 28), 0);
  if (v16)
  {
LABEL_43:
    HostInterpreter::remove_all_address_prefix_route_entries(this, 1);
    if (!*a4)
    {
      std::runtime_error::runtime_error(v28, "call to empty boost::function");
      *v28 = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(v28);
    }

    (*((*a4 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 8, "Error!\n");
    return v16;
  }

  v20 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v20)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v28 = 136315138;
      *&v28[4] = "ProcessThreadStop";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s: ifconfig down, Done", v28, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  otNetDataReset(*(this + 28));
  v21 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v21)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v28 = 136315138;
      *&v28[4] = "ProcessThreadStop";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s: Closing settings fd", v28, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v22 = *(this + 28);
  otPlatSettingsDeinit();
  usleep(0x186A0u);
  v23 = *(this + 28);
  v24 = otPlatVendorResetRCP() == 0;
  v25 = log_get_logging_obg("com.apple.threadradiod", "default");
  v26 = v25;
  if (!v24)
  {
    if (v25)
    {
      if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_72;
      }

      *v28 = 0;
      v27 = "Failed to Reset RCP2 to sleep state";
      goto LABEL_67;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_72;
    }

LABEL_71:
    [PowerEventHandler_Rcp init:];
    goto LABEL_72;
  }

  if (!v25)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    goto LABEL_72;
  }

  *v28 = 0;
  v27 = "Reset RCP2 to sleep state";
LABEL_67:
  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v27, v28, 2u);
LABEL_72:
  power_assertion_n = 0;
  Thread_DeassertPower();
  if (!*a4)
  {
    std::runtime_error::runtime_error(v28, "call to empty boost::function");
    *v28 = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(v28);
  }

  (*((*a4 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 8, "Done\n");
  HostInterpreter::remove_all_address_prefix_route_entries(this, 1);
  return 0;
}

uint64_t HostInterpreter::ProcessUpdateHomeThreadInfo(HostInterpreter *this, int a2, char **a3, char *a4)
{
  if (a2)
  {
    saveIntValue("numResidentsInHome", *(a4 + 8));
    saveIntValue("numThreadCapableResidentsInHome", *(a4 + 9));
    saveIntValue("numHAPThreadAccessories", *(a4 + 10));
    saveIntValue("numMatterThreadAccessories", *(a4 + 11));
    saveIntValue("numHAPSleepyThreadAccessories", *(a4 + 12));
    saveIntValue("numMatterSleepyThreadAccessories", *(a4 + 13));
    otInstanceGetUptimeAsString(*(this + 28), v27, 24);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a4 + 8);
        v8 = *(a4 + 9);
        v9 = *(a4 + 10);
        v10 = *(a4 + 11);
        v11 = *(a4 + 12);
        v12 = *(a4 + 13);
        *v14 = 136316674;
        *&v14[4] = v27;
        v15 = 1024;
        v16 = v7;
        v17 = 1024;
        v18 = v8;
        v19 = 1024;
        v20 = v9;
        v21 = 1024;
        v22 = v10;
        v23 = 1024;
        v24 = v11;
        v25 = 1024;
        v26 = v12;
        _os_log_debug_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_DEBUG, "%s HostInterpreter::ProcessUpdateHomeThreadInfo residents=%d, threadResidents=%d, hapAcc=%d, matterAcc=%d, hapSleepyAcc=%d, matterSleepyAcc=%d", v14, 0x30u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    if (!*a4)
    {
      std::runtime_error::runtime_error(v14, "call to empty boost::function");
      *v14 = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(v14);
    }

    (*((*a4 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 8, 0);
    return 0;
  }

  else
  {
    if (!*a4)
    {
      std::runtime_error::runtime_error(v14, "call to empty boost::function");
      *v14 = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(v14);
    }

    (*((*a4 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 8, 1, a3);
    return 7;
  }
}

uint64_t HostInterpreter::ProcessUpdatePrimaryResident(HostInterpreter *this, int a2, char **a3, _BYTE *a4)
{
  if (a2)
  {
    if (a4[32] == 1)
    {
      v12 = 19;
      strcpy(__p, "is_primary_resident");
      v10 = __p;
      v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
      std::string::assign((v5 + 7), "1");
    }

    else
    {
      v12 = 19;
      strcpy(__p, "is_primary_resident");
      v10 = __p;
      v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
      std::string::assign((v7 + 7), "0");
    }

    if (v12 < 0)
    {
      operator delete(*__p);
    }

    v12 = 19;
    strcpy(__p, "is_primary_resident");
    v10 = __p;
    v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
    v9 = (v8 + 7);
    if (*(v8 + 79) < 0)
    {
      v9 = *v9;
    }

    saveStringValue("is_primary_resident", v9);
    if (v12 < 0)
    {
      operator delete(*__p);
    }

    if (a4[33] == 1)
    {
      operator new();
    }

    operator new();
  }

  if (!*a4)
  {
    std::runtime_error::runtime_error(__p, "call to empty boost::function");
    *__p = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(__p);
  }

  (*((*a4 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 8, 1, a3);
  return 7;
}

void sub_10013B4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, std::runtime_error a32, int a33, __int16 a34, char a35, char a36)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a29 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a24);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t HostInterpreter::ProcessWedStart(HostInterpreter *this, unsigned __int8 a2, char **a3, uint64_t *a4)
{
  v6 = otThreadWedWakeUpPattern(*(this + 28));
  RcpHostContext::get_rcp_state(RcpHostContext::sRcpHostContext, __p);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
    {
      HostInterpreter::ProcessWedStart(__p);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  LinkMode = otThreadGetLinkMode(*(this + 28));
  if (~LinkMode & 6) != 0 || (LinkMode)
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12)
    {
      if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        HostInterpreter::ProcessWedStart();
      }

      goto LABEL_30;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
LABEL_29:
      [PowerEventHandler_Rcp init:];
    }

LABEL_30:
    v16 = 1;
    v17 = 1;
    goto LABEL_46;
  }

  if (otThreadIsEnhCslPeerLinked(*(this + 28)))
  {
    CslPeripheralAddr = otThreadGetCslPeripheralAddr(*(this + 28));
    if (CslPeripheralAddr)
    {
      if (!strcasecmp(*a4, CslPeripheralAddr))
      {
        v19 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v19)
        {
          if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            HostInterpreter::ProcessWedStart(a4);
          }

          goto LABEL_30;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }
  }

  v10 = *(this + 28);
  if (otPlatRadioGetRcp2Vendor2Enabled() && byte_10052D769 == 1)
  {
    v11 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v11)
    {
      if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        HostInterpreter::ProcessWedStart();
      }

      goto LABEL_45;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  if ((otThreadIsEnhCslPeerUnlinking(*(this + 28)) & 1) != 0 || otThreadIsEnhCslPeerLinking(*(this + 28)))
  {
    v13 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v13)
    {
      if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        IsEnhCslPeerUnlinking = otThreadIsEnhCslPeerUnlinking(*(this + 28));
        IsEnhCslPeerLinking = otThreadIsEnhCslPeerLinking(*(this + 28));
        HostInterpreter::ProcessWedStart(IsEnhCslPeerUnlinking, IsEnhCslPeerLinking, buf, v13);
      }

      goto LABEL_45;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
LABEL_44:
      [PowerEventHandler_Rcp init:];
    }

LABEL_45:
    v17 = 9;
    v16 = 5;
    goto LABEL_46;
  }

  v16 = HostInterpreter::detachIfWedConnectionInProgress(this);
  if (v16)
  {
    goto LABEL_61;
  }

  v16 = ot::Utils::CmdLineParser::ParseAsHexString(*a4, v30, 8);
  if (v16)
  {
    goto LABEL_61;
  }

  v18 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v18)
  {
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      HostInterpreter::ProcessWedStart(v30);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v22 = v6 == 2 ? 1180 : 3000;
  v23 = v6 == 2 ? 3 : 1;
  v16 = otThreadAttachCslPeripheral(*(this + 28), v30, v22, v6, v23, 1u);
  if (v16)
  {
LABEL_61:
    HIDWORD(v25) = v16 - 1;
    LODWORD(v25) = v16 - 1;
    v24 = v25 >> 1;
    if (v24 <= 6 && ((0x4Du >> v24) & 1) != 0)
    {
      v16 = dword_10044816C[v24];
      v17 = dword_100448188[v24];
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_46:
  v20 = a4[1];
  if (!v20)
  {
    std::runtime_error::runtime_error(&v28, "call to empty boost::function");
    v28.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&v28);
  }

  (*((v20 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 16, v17);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  return v16;
}

void sub_10013BA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::runtime_error a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessWedStop(HostInterpreter *this, unsigned __int8 a2, char **a3, char *a4)
{
  LinkMode = otThreadGetLinkMode(*(this + 28));
  if (~LinkMode & 6) != 0 || (LinkMode)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v10 = logging_obg;
      if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        HostInterpreter::ProcessWedStop();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

LABEL_15:
    v11 = 1;
LABEL_16:
    v12 = 1;
    goto LABEL_20;
  }

  if ((otThreadIsEnhCslPeerUnlinking(*(this + 28)) & 1) != 0 || otThreadIsEnhCslPeerLinking(*(this + 28)))
  {
    v7 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v7)
    {
      v8 = v7;
      if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        HostInterpreter::ProcessWedStop(this + 28, v8);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    goto LABEL_19;
  }

  v14 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v14)
  {
    v15 = v14;
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      HostInterpreter::ProcessWedStop();
      v11 = HostInterpreter::detachIfWedConnectionInProgress(this);
      if (v11 <= 4)
      {
        goto LABEL_35;
      }

LABEL_29:
      switch(v11)
      {
        case 5:
LABEL_19:
          v12 = 9;
          v11 = 5;
          goto LABEL_20;
        case 7:
          v12 = 2;
          break;
        case 0xD:
          v12 = 4;
          break;
        default:
          goto LABEL_16;
      }

      goto LABEL_20;
    }

    goto LABEL_28;
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
LABEL_28:
    v11 = HostInterpreter::detachIfWedConnectionInProgress(this);
    if (v11 > 4)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  [PowerEventHandler_Rcp init:];
  v11 = HostInterpreter::detachIfWedConnectionInProgress(this);
  if (v11 > 4)
  {
    goto LABEL_29;
  }

LABEL_35:
  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = v11;
LABEL_20:
  if (!*a4)
  {
    std::runtime_error::runtime_error(&v16, "call to empty boost::function");
    v16.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&v16);
  }

  (*((*a4 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 8, v12);
  return v11;
}

void HostInterpreter::HostInterpreter(HostInterpreter *this, ot::Instance *a2)
{
  *this = off_1004C48D8;
  *(this + 8) = 0u;
  *(this + 8) = 0;
  *(this + 7) = this + 64;
  *(this + 9) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 11) = 0;
  *(this + 10) = this + 88;
  *(this + 14) = 0;
  *(this + 13) = this + 112;
  *(this + 12) = 0;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 16) = this + 136;
  *(this + 18) = 0;
  *(this + 22) = -1;
  *(this + 184) = 0;
  ot::Spinel::Decoder::Decoder((this + 192));
  *(this + 28) = a2;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 38) = 0;
  CoreAnalyticsHistogramMetricsHelper::CoreAnalyticsHistogramMetricsHelper(this + 41, a2);
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(this + 30) = dispatch_queue_create("threadradiod.Host.Intepreter.Process.Queue", v4);
  v5 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, QOS_CLASS_USER_INITIATED, 0);
  *(this + 33) = dispatch_queue_create("threadradiod.srp.convergence.Queue", v5);
  *(this + 76) = -1;
  *(this + 58) = 0;
  *(this + 336) = 0;
  *(this + 39) = 0;
  *(this + 184) = 0;
  *(this + 42) = 0;
  *(this + 22) = -1;
  *(this + 162) = 0;
  *(this + 83) = 0;
  v6 = CFDateFormatterCreate(kCFAllocatorDefault, 0, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
  *(this + 40) = v6;
  CFDateFormatterSetFormat(v6, @"yyyy-MM-dd HH:mm:ss");
}

void sub_10013BEB0(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v6, *(v1 + 136));
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v5, *(v1 + 112));
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v4, *(v1 + 88));
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v3, *(v1 + 64));
  std::vector<ServiceEntry>::~vector[abi:ne200100]((v1 + 32));
  std::vector<ServiceEntry>::~vector[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

dispatch_queue_t HostInterpreter::create_process_queue(HostInterpreter *this)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("threadradiod.Host.Intepreter.Process.Queue", v2);
  *(this + 30) = result;
  return result;
}

dispatch_queue_t HostInterpreter::create_srp_convergence_queue(HostInterpreter *this)
{
  v2 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("threadradiod.srp.convergence.Queue", v2);
  *(this + 33) = result;
  return result;
}

void **std::vector<ServiceEntry>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 80;
      v6 = v3 - 80;
      v7 = v3 - 80;
      do
      {
        v8 = *v7;
        v7 -= 80;
        (*v8)(v6);
        v5 -= 80;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void HostInterpreter::~HostInterpreter(CFTypeRef *this)
{
  *this = off_1004C48D8;
  CFRelease(this[40]);
  CoreAnalyticsHistogramMetricsHelper::ClearCAHistogramMetrics(v2);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy((this + 16), this[17]);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy((this + 13), this[14]);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy((this + 10), this[11]);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy((this + 7), this[8]);
  v3 = this[4];
  if (v3)
  {
    v4 = this[5];
    v5 = this[4];
    if (v4 != v3)
    {
      v6 = v4 - 80;
      v7 = v4 - 80;
      v8 = v4 - 80;
      do
      {
        v9 = *v8;
        v8 -= 80;
        (*v9)(v7);
        v6 -= 80;
        v10 = v7 == v3;
        v7 = v8;
      }

      while (!v10);
      v5 = this[4];
    }

    this[5] = v3;
    operator delete(v5);
  }

  v11 = this[1];
  if (v11)
  {
    v12 = this[2];
    v13 = this[1];
    if (v12 != v11)
    {
      v14 = v12 - 80;
      v15 = v12 - 80;
      v16 = v12 - 80;
      do
      {
        v17 = *v16;
        v16 -= 80;
        (*v17)(v15);
        v14 -= 80;
        v10 = v15 == v11;
        v15 = v16;
      }

      while (!v10);
      v13 = this[1];
    }

    this[2] = v11;
    operator delete(v13);
  }
}

{
  HostInterpreter::~HostInterpreter(this);

  operator delete();
}

void HostInterpreter::setRcpSrpSignalMeshLocalAddressTimer(HostInterpreter *this)
{
  v2 = *(this + 32);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v4 = logging_obg;
  if (v2)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(7))
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          HostInterpreter::setRcpSrpSignalMeshLocalAddressTimer();
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  else
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        HostInterpreter::setRcpSrpSignalMeshLocalAddressTimer();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    *(this + 32) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(this + 30));
    v5 = dispatch_time(0, 350000000);
    dispatch_source_set_timer(*(this + 32), v5, 0x14DC9380uLL, 0);
    v6 = *(this + 32);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___ZN15HostInterpreter36setRcpSrpSignalMeshLocalAddressTimerEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_7;
    handler[4] = this;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(*(this + 32));
  }
}

void HostInterpreter::signalMeshLocalAddressNotFound(HostInterpreter *this)
{
  v1 = *(this + 30);
  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = ___ZN15HostInterpreter38clearRcpSrpSignalMeshLocalAddressTimerEv_block_invoke;
  v4 = &__block_descriptor_tmp_39;
  v5 = this;
  dispatch_async(v1, block);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6))
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        *block = 136315394;
        *&block[4] = "signalMeshLocalAddressNotFound";
        *&block[12] = 2080;
        *&block[14] = "ThreadNeighborMeshLocalAddress";
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Signal SRP MLE-ID Fetch has failed: %s", block, 0x16u);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  *block = block;
  *&block[8] = block;
  *&block[16] = 0;
  operator new();
}

void sub_10013C658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
  }

  if (a15 < 0)
  {
    operator delete(__p);
    std::list<std::string>::~list(&a16);
    _Unwind_Resume(a1);
  }

  std::list<std::string>::~list(&a16);
  _Unwind_Resume(a1);
}

void HostInterpreter::clearRcpSrpSignalMeshLocalAddressTimer(HostInterpreter *this)
{
  v1 = *(this + 30);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN15HostInterpreter38clearRcpSrpSignalMeshLocalAddressTimerEv_block_invoke;
  block[3] = &__block_descriptor_tmp_39;
  block[4] = this;
  dispatch_async(v1, block);
}

void ___ZN15HostInterpreter38clearRcpSrpSignalMeshLocalAddressTimerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 256))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v3 = logging_obg;
      if (syslog_is_the_mask_enabled(7))
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          ___ZN15HostInterpreter38clearRcpSrpSignalMeshLocalAddressTimerEv_block_invoke_cold_1();
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    dispatch_source_cancel(*(v1 + 256));
    dispatch_release(*(v1 + 256));
    *(v1 + 256) = 0;
  }
}

void HostInterpreter::setRcpSrpServiceABCTimer(HostInterpreter *this)
{
  if (!*(this + 31))
  {
    handler[7] = v1;
    handler[8] = v2;
    *(this + 31) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(this + 30));
    v4 = dispatch_time(0, 900000000000);
    dispatch_source_set_timer(*(this + 31), v4, 0xD18C2E2800uLL, 0);
    v5 = *(this + 31);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___ZN15HostInterpreter24setRcpSrpServiceABCTimerEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_42;
    handler[4] = this;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_activate(*(this + 31));
  }
}

void HostInterpreter::checkRcpSrpServiceFound(HostInterpreter *this)
{
  HostInterpreter::clearRcpSrpServiceABCTimer(this);
  if ((gSrpModeNetInfo & 1) == 0)
  {
    v3 = *(this + 1);
    if (v3 != *(this + 2))
    {
      v4 = *(v3 + 16);
      if ((*(v3 + 24) - *(v3 + 16)) >= 0)
      {
        operator new();
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

LABEL_18:
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        *v15 = 67109120;
        *&v15[4] = 93;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "RCP SRP service not found, service data[%02X]", v15, 8u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v9[24] = 11;
    strcpy(v9, "\nPerformance");
    strcpy(v8, "Data Stall");
    operator new();
  }

  v10 = 0;
  do
  {
    do
    {
      while (1)
      {
        while (1)
        {
          if (otNetDataGetNextService(*(this + 28), &v10, v15))
          {
            goto LABEL_18;
          }

          v2 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (!v2)
          {
            break;
          }

          if (!syslog_is_the_mask_enabled(5) || !os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
          {
            goto LABEL_10;
          }

          *buf = 67109888;
          *v12 = v15[0];
          *&v12[4] = 1024;
          *&v12[6] = *&v15[4];
          LOWORD(v13) = 1024;
          *(&v13 + 2) = v18 & 1;
          HIWORD(v13) = 1024;
          v14 = v19;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Service: sid[%u] EnterpriseNo:%u stable:%d Rloc:%04x", buf, 0x1Au);
          if (v16 == 1)
          {
            goto LABEL_11;
          }
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          break;
        }

LABEL_10:
        if (v16 == 1)
        {
          goto LABEL_11;
        }
      }

      *buf = 136315394;
      *v12 = "com.apple.wpantund.ncp";
      *&v12[8] = 2080;
      v13 = "default";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
    }

    while (v16 != 1);
LABEL_11:
    ;
  }

  while (v17 != 93);
  v6 = log_get_logging_obg("com.apple.threadradiod", "default");
  v7 = v6;
  if (v6)
  {
    if (syslog_is_the_mask_enabled(6))
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Unicast SRP service found", buf, 2u);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void sub_10013D1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v35)
  {
    operator delete(v35);
  }

  operator delete(v36);
  if (v34)
  {
    operator delete(v34);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void HostInterpreter::clearRcpSrpServiceABCTimer(dispatch_source_t *this)
{
  if (this[31])
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v3 = logging_obg;
      if (syslog_is_the_mask_enabled(7))
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          HostInterpreter::clearRcpSrpServiceABCTimer();
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    dispatch_source_cancel(this[31]);
    dispatch_release(this[31]);
    this[31] = 0;
  }
}

void HostInterpreter::setRcpSrpAnycastServiceCovergenceTimer(HostInterpreter *this)
{
  v2 = *(this + 34);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v4 = logging_obg;
  if (v2)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(5))
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Already started: rcpSrpAnycastServiceCovergenceTimer", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  else
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting rcpSrpAnycastServiceCovergenceTimer", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    *(this + 34) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(this + 33));
    v5 = dispatch_time(0, 3600000000000);
    dispatch_source_set_timer(*(this + 34), v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = *(this + 34);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___ZN15HostInterpreter38setRcpSrpAnycastServiceCovergenceTimerEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_46_0;
    handler[4] = this;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(*(this + 34));
  }
}

void HostInterpreter::checkAnycastSrpServiceConvergence(dispatch_source_t *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(4))
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::checkAnycastSrpServiceConvergence();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  HostInterpreter::clearRcpSrpAnycastServiceCovergenceTimer(this);
  v5[23] = 9;
  strcpy(v5, "Stability");
  v4[23] = 19;
  strcpy(v4, "Network Data Health");
  operator new();
}

void sub_10013D6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 - 17) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v21 - 17) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v21 - 40));
  _Unwind_Resume(exception_object);
}

void HostInterpreter::clearRcpSrpAnycastServiceCovergenceTimer(dispatch_source_t *this)
{
  if (this[34])
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v3 = logging_obg;
      if (syslog_is_the_mask_enabled(5))
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v4 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping rcpSrpAnycastServiceCovergenceTimer", v4, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    dispatch_source_cancel(this[34]);
    dispatch_release(this[34]);
    this[34] = 0;
  }
}

void HostInterpreter::setSrpAdvertisedWithoutPrefixTimer(HostInterpreter *this)
{
  v2 = *(this + 35);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v4 = logging_obg;
  if (v2)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(5))
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Already started: rcpSrpAnycastServiceCovergenceTimer", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  else
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting rcpSrpAdvertisedWithoutPrefixTimer", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    *(this + 35) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(this + 33));
    v5 = dispatch_time(0, 3600000000000);
    dispatch_source_set_timer(*(this + 35), v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = *(this + 35);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___ZN15HostInterpreter34setSrpAdvertisedWithoutPrefixTimerEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_50;
    handler[4] = this;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(*(this + 35));
  }
}

void HostInterpreter::checkSrpAdvertisedWithoutPrefix(dispatch_source_t *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(4))
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::checkSrpAdvertisedWithoutPrefix();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  HostInterpreter::clearSrpAdvertisedWithoutPrefixTimer(this);
  v5[23] = 9;
  strcpy(v5, "Stability");
  v4[23] = 19;
  strcpy(v4, "Network Data Health");
  operator new();
}

void sub_10013DB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 - 17) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v21 - 17) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v21 - 40));
  _Unwind_Resume(exception_object);
}

void HostInterpreter::clearSrpAdvertisedWithoutPrefixTimer(dispatch_source_t *this)
{
  if (this[35])
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v3 = logging_obg;
      if (syslog_is_the_mask_enabled(5))
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v4 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping rcpSrpAdvertisedWithoutPrefixTimer", v4, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    dispatch_source_cancel(this[35]);
    dispatch_release(this[35]);
    this[35] = 0;
  }
}

void HostInterpreter::setChildRoleDetectionTimer(HostInterpreter *this)
{
  v2 = *(this + 38);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v4 = logging_obg;
  if (v2)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(5))
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Already started: childRoleDetectionTimer", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  else
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting childRoleDetectionTimer", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    *(this + 38) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(this + 30));
    v5 = dispatch_time(0, 3600000000000);
    dispatch_source_set_timer(*(this + 38), v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = *(this + 38);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___ZN15HostInterpreter26setChildRoleDetectionTimerEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_52;
    handler[4] = this;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(*(this + 38));
  }
}

void HostInterpreter::checkChildRoleDetection(dispatch_source_t *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(4))
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::checkChildRoleDetection();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  HostInterpreter::clearChildRoleDetectionTimer(this);
  v5[23] = 9;
  strcpy(v5, "Stability");
  v4[23] = 19;
  strcpy(v4, "Network Data Health");
  operator new();
}

void sub_10013E01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 - 17) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v21 - 17) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v21 - 40));
  _Unwind_Resume(exception_object);
}

void HostInterpreter::clearChildRoleDetectionTimer(dispatch_source_t *this)
{
  if (this[38])
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v3 = logging_obg;
      if (syslog_is_the_mask_enabled(5))
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v4 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping childRoleDetectionTimer", v4, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    dispatch_source_cancel(this[38]);
    dispatch_release(this[38]);
    this[38] = 0;
  }
}

void HostInterpreter::setRcpSrpUnicastServiceCovergenceTimer(HostInterpreter *this)
{
  v2 = *(this + 36);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v4 = logging_obg;
  if (v2)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(5))
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Already started: rcpSrpUnicastServiceCovergenceTimer", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  else
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting rcpSrpUnicastServiceCovergenceTimer", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    *(this + 36) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(this + 33));
    v5 = dispatch_time(0, 1800000000000);
    dispatch_source_set_timer(*(this + 36), v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = *(this + 36);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___ZN15HostInterpreter38setRcpSrpUnicastServiceCovergenceTimerEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_54_0;
    handler[4] = this;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(*(this + 36));
  }
}

void HostInterpreter::checkUnicastSrpServiceConvergence(dispatch_source_t *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(4))
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::checkUnicastSrpServiceConvergence();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  HostInterpreter::clearRcpSrpUnicastServiceCovergenceTimer(this);
  update_nonConvergingUnicastSrpServices_metric(1);
  v5[23] = 9;
  strcpy(v5, "Stability");
  v4[23] = 19;
  strcpy(v4, "Network Data Health");
  operator new();
}

void sub_10013E4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 - 17) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v21 - 17) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v21 - 40));
  _Unwind_Resume(exception_object);
}

void HostInterpreter::clearRcpSrpUnicastServiceCovergenceTimer(dispatch_source_t *this)
{
  if (this[36])
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v3 = logging_obg;
      if (syslog_is_the_mask_enabled(5))
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v4 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping rcpSrpUnicastServiceCovergenceTimer", v4, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    dispatch_source_cancel(this[36]);
    dispatch_release(this[36]);
    this[36] = 0;
  }
}

void HostInterpreter::setSrpPrefixCovergenceTimer(HostInterpreter *this)
{
  v2 = *(this + 37);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v4 = logging_obg;
  if (v2)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(5))
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Already started: srpPrefixCovergenceTimer", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  else
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting srpPrefixCovergenceTimer", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    *(this + 37) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(this + 33));
    v5 = dispatch_time(0, 1800000000000);
    dispatch_source_set_timer(*(this + 37), v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = *(this + 37);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___ZN15HostInterpreter27setSrpPrefixCovergenceTimerEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_56;
    handler[4] = this;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(*(this + 37));
  }
}

void HostInterpreter::checkSrpPrefixCovergence(dispatch_source_t *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(4))
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::checkSrpPrefixCovergence();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  HostInterpreter::clearSrpPrefixCovergenceTimer(this);
  update_nonConvergingPrefixes_metric(1);
  v8 = 9;
  strcpy(v7, "Stability");
  HIBYTE(v6[2]) = 19;
  strcpy(v6, "Network Data Health");
  v5 = 21;
  strcpy(__p, "Non Converging Prefix");
  RcpHostContext::captureABC(RcpHostContext::sRcpHostContext, v7, v6, __p, 0, 1);
  if (v5 < 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(v6[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((v8 & 0x80000000) == 0)
      {
        return;
      }

LABEL_13:
      operator delete(v7[0]);
      return;
    }
  }

  else if ((SHIBYTE(v6[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v6[0]);
  if (v8 < 0)
  {
    goto LABEL_13;
  }
}

void sub_10013E958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 - 17) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v21 - 17) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v21 - 40));
  _Unwind_Resume(exception_object);
}

void HostInterpreter::clearSrpPrefixCovergenceTimer(dispatch_source_t *this)
{
  if (this[37])
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v3 = logging_obg;
      if (syslog_is_the_mask_enabled(5))
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v4 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping srpPrefixCovergenceTimer", v4, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    dispatch_source_cancel(this[37]);
    dispatch_release(this[37]);
    this[37] = 0;
  }
}

uint64_t HostInterpreter::force_leader_reelection(HostInterpreter *this)
{
  HIBYTE(v18) = 19;
  strcpy(buf, "is_primary_resident");
  v16 = buf;
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
  v3 = (v2 + 7);
  v4 = *(v2 + 79);
  if (v4 < 0)
  {
    if (v2[8] == 1)
    {
      v5 = **v3 != 49;
      if (SHIBYTE(v18) < 0)
      {
        goto LABEL_13;
      }

LABEL_4:
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

LABEL_12:
    v5 = 1;
    if (SHIBYTE(v18) < 0)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  if (v4 != 1)
  {
    goto LABEL_12;
  }

  v5 = *v3 != 49;
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_13:
  operator delete(*buf);
  if (v5)
  {
LABEL_5:
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!logging_obg)
    {
      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      [PowerEventHandler_Rcp init:];
      return 0;
    }

    result = syslog_is_the_mask_enabled(6);
    if (result)
    {
      result = os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO);
      if (result)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Leader re-election Failed: force_leader_reelection (Not Primary)", buf, 2u);
        return 0;
      }
    }

    return result;
  }

LABEL_14:
  gettimeofday(&v15, &v14);
  v8 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v8)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(this + 39);
      *buf = 134218496;
      *&buf[4] = v15.tv_sec;
      *&buf[12] = 2048;
      *&buf[14] = v9;
      v18 = 1024;
      v19 = 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Leader re-election attempt(Netdata) CurrTimeSec[%ld] LastTriggerTime[%ld] Primary[%d]", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v10 = *(this + 39);
  if (v10 && v15.tv_sec - v10 < 7201)
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!v12)
    {
      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      [PowerEventHandler_Rcp init:];
      return 0;
    }

    result = syslog_is_the_mask_enabled(4);
    if (result)
    {
      result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (result)
      {
        HostInterpreter::force_leader_reelection();
        return 0;
      }
    }
  }

  else
  {
    ++*(RcpHostContext::sRcpHostContext + 6120);
    if (otThreadBecomeLeader(*(this + 28), 1))
    {
      v11 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v11)
      {
        if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessPropertyGet();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }
    }

    else
    {
      *(this + 39) = v15.tv_sec;
      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13)
      {
        if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessPropertyGet();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      ++*(RcpHostContext::sRcpHostContext + 6124);
    }

    return 1;
  }

  return result;
}

void sub_10013EE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessUpdateAccessoryAddr(HostInterpreter *this, unsigned __int8 a2, char **a3, const void **a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v7 = logging_obg;
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      HostInterpreter::ProcessUpdateAccessoryAddr();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (!a4 || *(a4 + 23) < 0 && !*a4)
  {
LABEL_71:
    v10 = 0;
    goto LABEL_72;
  }

  v8 = (a4 + 3);
  v9 = (a4 + 3);
  if (*(a4 + 47) < 0)
  {
    v9 = *v8;
    if (!*v8)
    {
      v10 = 0;
      goto LABEL_72;
    }
  }

  v10 = ot::Ip6::Address::FromString(v32, v9);
  if (v10)
  {
    v11 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v11)
    {
      if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessUpdateAccessoryAddr();
      }

      goto LABEL_38;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

LABEL_37:
    [PowerEventHandler_Rcp init:];
    goto LABEL_38;
  }

  v12 = a4;
  if (*(a4 + 23) < 0)
  {
    v12 = *a4;
  }

  v10 = ot::Ip6::Address::FromString(&v33, v12);
  if (!v10)
  {
    v14 = otThreadLookUpRloc16(*(this + 28), &v33);
    if (v14 == 65534)
    {
      v15 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v15)
      {
        if (!syslog_is_the_mask_enabled(4) || !os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        v16 = a4;
        if (*(a4 + 23) < 0)
        {
          v16 = *a4;
          if ((*(a4 + 47) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }
        }

        else if ((*(a4 + 47) & 0x80000000) == 0)
        {
LABEL_33:
          v17 = a4 + 6;
          if ((*(a4 + 71) & 0x80000000) == 0)
          {
LABEL_35:
            *buf = 136316162;
            *&buf[4] = v16;
            v35 = 2080;
            v36 = v8;
            v37 = 2080;
            v38 = v17;
            v39 = 1024;
            v40 = 65534;
            v41 = 1024;
            v42 = 65534;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "UpdateAccessoryAddr:Mark Add[%s] Lookup[%s] Info[%s] rloc16[%x] mle_rloc16[%x] LookupFound[0]", buf, 0x2Cu);
LABEL_63:
            if (qword_1004E59B0 <= 0xFF)
            {
              *buf = a4;
              v10 = 0;
              *(std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&nm_srp_omr_rloc_map, a4) + 28) = v14;
              goto LABEL_72;
            }

            v29 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v29)
            {
              if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                HostInterpreter::ProcessUpdateAccessoryAddr();
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            goto LABEL_71;
          }

LABEL_34:
          v17 = *v17;
          goto LABEL_35;
        }

        v8 = *v8;
        v17 = a4 + 6;
        if ((*(a4 + 71) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

LABEL_62:
      [PowerEventHandler_Rcp init:];
      goto LABEL_63;
    }

    v24 = *(this + 28);
    v25 = *(v24 + 91304);
    ot::AddressResolver::UpdateSnoopedCacheEntry((v24 + 127088), &v33, v14, *(v24 + 91304));
    v26 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!v26)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_63;
    }

    v27 = a4;
    if (*(a4 + 23) < 0)
    {
      v27 = *a4;
      if ((*(a4 + 47) & 0x80000000) == 0)
      {
LABEL_57:
        v28 = a4 + 6;
        if ((*(a4 + 71) & 0x80000000) == 0)
        {
LABEL_58:
          *buf = 136316162;
          *&buf[4] = v27;
          v35 = 2080;
          v36 = v8;
          v37 = 2080;
          v38 = v28;
          v39 = 1024;
          v40 = v14;
          v41 = 1024;
          v42 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "UpdateAccessoryAddr:Mark Add[%s] Lookup[%s] Info[%s] rloc16[%x] mle_rloc16[%x]", buf, 0x2Cu);
          goto LABEL_63;
        }

LABEL_79:
        v28 = *v28;
        goto LABEL_58;
      }
    }

    else if ((*(a4 + 47) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    v8 = *v8;
    v28 = a4 + 6;
    if ((*(a4 + 71) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_79;
  }

  v13 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v13)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    HostInterpreter::ProcessUpdateAccessoryAddr();
  }

LABEL_38:
  v18 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v18)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    goto LABEL_48;
  }

  if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = a4;
    if (*(a4 + 23) < 0)
    {
      v19 = *a4;
      if ((*(a4 + 47) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else if ((*(a4 + 47) & 0x80000000) == 0)
    {
LABEL_43:
      v20 = a4 + 6;
      if ((*(a4 + 71) & 0x80000000) == 0)
      {
LABEL_45:
        *buf = 136316418;
        *&buf[4] = v19;
        v35 = 2080;
        v36 = v8;
        v37 = 2080;
        v38 = v20;
        v39 = 1024;
        v40 = 65534;
        v41 = 1024;
        v42 = 65534;
        v43 = 1024;
        v44 = v10;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "UpdateAccessoryAddr:Mark Add[%s] Lookup[%s] Info[%s] rloc16[%x] mle_rloc16[%x] error[%d]", buf, 0x32u);
        goto LABEL_48;
      }

LABEL_44:
      v20 = *v20;
      goto LABEL_45;
    }

    v8 = *v8;
    v20 = a4 + 6;
    if ((*(a4 + 71) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_48:
  HIDWORD(v22) = v10 - 1;
  LODWORD(v22) = v10 - 1;
  v21 = v22 >> 1;
  if (v21 <= 6 && ((0x4Du >> v21) & 1) != 0)
  {
    v10 = dword_10044816C[v21];
    v23 = dword_100448188[v21];
  }

LABEL_72:
  v30 = a4[9];
  if (!v30)
  {
    std::runtime_error::runtime_error(buf, "call to empty boost::function");
    *buf = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(buf);
  }

  (*((v30 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 80);
  return v10;
}

uint64_t HostInterpreter::get_wpantund_status_from_oterror(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2 > 6)
  {
    if (a2 == 13)
    {
      return 4;
    }

    if (a2 == 7)
    {
      return 2;
    }

    return 1;
  }

  if (a2 >= 2)
  {
    if (a2 == 5)
    {
      return 9;
    }

    return 1;
  }

  return result;
}

uint64_t boost::function1<void,int>::operator()(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

uint64_t HostInterpreter::DeviceModeConfig(uint64_t a1, const std::string::value_type *a2)
{
  memset(&v41, 0, sizeof(v41));
  StringValue = getStringValue("Thread:DeviceMode");
  if (StringValue)
  {
    std::string::assign(&v41, StringValue);
  }

  v5 = *(a1 + 240);
  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = ___ZN15HostInterpreter38clearRcpSrpSignalMeshLocalAddressTimerEv_block_invoke;
  *&block[24] = &__block_descriptor_tmp_39;
  *&block[32] = a1;
  dispatch_async(v5, block);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v41.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_30;
  }

  if ((*(&v41.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v41.__r_.__value_.__l.__size_ == 6)
    {
LABEL_25:
      v7 = v41.__r_.__value_.__r.__words[0];
      goto LABEL_26;
    }

    if (v41.__r_.__value_.__l.__size_ != 13)
    {
      goto LABEL_30;
    }

    v7 = v41.__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = &v41;
    if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 6)
    {
      goto LABEL_26;
    }

    if (HIBYTE(v41.__r_.__value_.__r.__words[2]) != 13)
    {
      goto LABEL_30;
    }
  }

  v8 = v7->__r_.__value_.__r.__words[0];
  v9 = *(v7->__r_.__value_.__r.__words + 5);
  if (v8 == 0x722D797065656C73 && v9 == 0x726574756F722D79)
  {
    v11 = a2[23];
    if (v11 < 0)
    {
      if (*(a2 + 1) != 6)
      {
        goto LABEL_18;
      }

      v12 = *a2;
    }

    else
    {
      v12 = a2;
      if (v11 != 6)
      {
        goto LABEL_18;
      }
    }

    v34 = *v12;
    v35 = *(v12 + 2);
    if (v34 == 1953853298 && v35 == 29285)
    {
      goto LABEL_103;
    }
  }

LABEL_18:
  if ((*(&v41.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v41.__r_.__value_.__l.__size_ != 6)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (HIBYTE(v41.__r_.__value_.__r.__words[2]) != 6)
  {
    goto LABEL_30;
  }

  v7 = &v41;
LABEL_26:
  if (LODWORD(v7->__r_.__value_.__l.__data_) != 1953853298 || WORD2(v7->__r_.__value_.__r.__words[0]) != 29285)
  {
    goto LABEL_30;
  }

  v27 = a2[23];
  if (v27 < 0)
  {
    if (*(a2 + 1) == 13)
    {
      v28 = *a2;
      goto LABEL_90;
    }

LABEL_30:
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
      {
        v15 = &v41;
        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v15 = v41.__r_.__value_.__r.__words[0];
        }

        v16 = a2;
        if (a2[23] < 0)
        {
          v16 = *a2;
        }

        *block = 136315906;
        *&block[4] = "otError HostInterpreter::DeviceModeConfig(std::string)";
        *&block[12] = 1024;
        *&block[14] = 11038;
        *&block[18] = 2080;
        *&block[20] = v15;
        *&block[28] = 2080;
        *&block[30] = v16;
        _os_log_debug_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_DEBUG, "ThreadConnection: %s:%d: Clearing ABC timer , Remove all address prefix route entries Transition from %s to %s", block, 0x26u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    HostInterpreter::clearRcpSrpServiceABCTimer(a1);
    HostInterpreter::remove_all_address_prefix_route_entries(a1, 1);
    goto LABEL_41;
  }

  v28 = a2;
  if (v27 != 13)
  {
    goto LABEL_30;
  }

LABEL_90:
  v31 = *v28;
  v32 = *(v28 + 5);
  if (v31 != 0x722D797065656C73 || v32 != 0x726574756F722D79)
  {
    goto LABEL_30;
  }

LABEL_103:
  v37 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v37)
  {
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = &v41;
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v41.__r_.__value_.__r.__words[0];
      }

      v39 = a2;
      if (a2[23] < 0)
      {
        v39 = *a2;
      }

      *block = 136315906;
      *&block[4] = "otError HostInterpreter::DeviceModeConfig(std::string)";
      *&block[12] = 1024;
      *&block[14] = 11036;
      *&block[18] = 2080;
      *&block[20] = v38;
      *&block[28] = 2080;
      *&block[30] = v39;
      _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "ThreadConnection: %s:%d: Transition from %s to %s", block, 0x26u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

LABEL_41:
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
  }

  persist_thread_device_mode(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v17)
  {
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      HostInterpreter::DeviceModeConfig(a2 + 23);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if ((a2[23] & 0x80000000) == 0)
  {
    if (strcmp(a2, "router"))
    {
      if (strcmp(a2, "sleepy-router"))
      {
        v18 = strcmp(a2, "sleepy-end-device");
        v19 = a2;
        if (!v18)
        {
          goto LABEL_74;
        }

        v20 = strcmp(a2, "synchronized-sleepy-end-device");
        v19 = a2;
        if (!v20)
        {
          goto LABEL_74;
        }

        goto LABEL_62;
      }

      goto LABEL_64;
    }

LABEL_63:
    result = otThreadSetLinkMode(*(a1 + 224), 7);
    goto LABEL_85;
  }

  v21 = *a2;
  if (!strcmp(*a2, "router"))
  {
    goto LABEL_63;
  }

  if (strcmp(v21, "sleepy-router"))
  {
    if (!strcmp(v21, "sleepy-end-device") || !strcmp(v21, "synchronized-sleepy-end-device"))
    {
      v19 = *a2;
LABEL_74:
      saveStringValue("Thread:DeviceMode", v19);
      result = otThreadSetLinkMode(*(a1 + 224), 4);
      if (result)
      {
        goto LABEL_85;
      }

      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      v29 = strcmp(a2, "synchronized-sleepy-end-device");
      if (v29)
      {
        v22 = 0;
      }

      else
      {
        v22 = 151;
      }

      if (v29)
      {
        v23 = 0;
      }

      else
      {
        v23 = 60000;
      }

      goto LABEL_83;
    }

LABEL_62:
    v22 = 0;
    v23 = 0;
LABEL_83:
    result = otLinkSetCslPeriod(*(a1 + 224), v23);
    if (!result)
    {
      result = otLinkSetCslTimeout(*(a1 + 224), v22);
    }

    goto LABEL_85;
  }

LABEL_64:
  result = otThreadSetLinkMode(*(a1 + 224), 6);
  if (!result)
  {
    v25 = *(a1 + 224);
    if (otPlatRadioGetRcp2Vendor2Enabled())
    {
      byte_10052D769 = 0;
    }

    LinkMode = otThreadGetLinkMode(*(a1 + 224));
    result = 0;
    if ((~LinkMode & 6) == 0 && (LinkMode & 1) == 0)
    {
      otThreadBecomeLeader(*(a1 + 224), 0);
      result = 0;
    }
  }

LABEL_85:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    v30 = result;
    operator delete(v41.__r_.__value_.__l.__data_);
    return v30;
  }

  return result;
}

void sub_10013FC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::any_cast<std::string>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (*(*v4 + 16))(v4);
  }

  else
  {
  }

  v6 = (v5[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v6 != (0x8000000100447B36 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v6, (0x8000000100447B36 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    v11.__vftable = 0;
    std::bad_cast::bad_cast(&v11);
    v11.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  v7 = *a1;
  if (*(*a1 + 31) < 0)
  {
    v9 = v7[1];
    v10 = v7[2];

    std::string::__init_copy_ctor_external(a2, v9, v10);
  }

  else
  {
    v8 = *(v7 + 1);
    a2->__r_.__value_.__r.__words[2] = v7[3];
    *&a2->__r_.__value_.__l.__data_ = v8;
  }
}

uint64_t HostInterpreter::transactionEnabled(HostInterpreter *this, int a2)
{
  if (!a2)
  {
    if (transaction)
    {
      os_release(transaction);
      transaction = 0;
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!logging_obg)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        goto LABEL_29;
      }

      v3 = logging_obg;
      if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      v11 = 0;
      v4 = "transaction Disabled";
      v5 = &v11;
    }

    else
    {
      v8 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v8)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        goto LABEL_29;
      }

      v3 = v8;
      if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      v10 = 0;
      v4 = "transaction already Disabled";
      v5 = &v10;
    }

LABEL_20:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
    return 0;
  }

  if (!transaction)
  {
    transaction = os_transaction_create();
    v7 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!v7)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      goto LABEL_29;
    }

    v3 = v7;
    if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v13 = 0;
    v4 = "transaction Enabled";
    v5 = &v13;
    goto LABEL_20;
  }

  v2 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v2)
  {
    v3 = v2;
    if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v12 = 0;
    v4 = "transaction already Enabled";
    v5 = &v12;
    goto LABEL_20;
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    return 0;
  }

LABEL_29:
  [PowerEventHandler_Rcp init:];
  return 0;
}

void boost::any::any<std::string &>()
{
  operator new();
}

{
  operator new();
}

void HostInterpreter::onChipReset(HostInterpreter *this)
{
  strcpy(&__p, "vendor:rcp:state:crash");
  *(&__p.__r_.__value_.__s + 23) = 22;
  v53.__r_.__value_.__r.__words[0] = &__p;
  v1 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__p.__r_.__value_.__l.__data_);
  std::string::assign((v1 + 7), "uninitialized");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "threadSession");
  v53.__r_.__value_.__r.__words[0] = &__p;
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__p.__r_.__value_.__l.__data_);
  std::string::assign((v2 + 7), "OFF");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  memset(&v53, 0, sizeof(v53));
  StringValue = getStringValue("vendor:trigger:abc");
  if (!StringValue || !atoi(StringValue))
  {
    goto LABEL_115;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "HI:Host restarted after a prior FW crash. Triggering ABC", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v5 = getStringValue("threadSession");
  v6 = v5;
  if (v5 && (*v5 == 79 && *(v5 + 1) == 78 && !*(v5 + 2) || !strcmp(v5, "OFF")))
  {
    v57 = 13;
    strcpy(buf, "threadSession");
    v55 = buf;
    v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
    std::string::assign((v17 + 7), v6);
    if (v57 < 0)
    {
      operator delete(*buf);
    }

    v18 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v18)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "HI:Thread session during crash: %s", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  v57 = 13;
  strcpy(buf, "threadSession");
  v55 = buf;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
  v10 = v7[7];
  v8 = (v7 + 7);
  v9 = v10;
  v11 = v8[23];
  if (v11 >= 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  if (v11 >= 0)
  {
    v13 = *(v8 + 23);
  }

  else
  {
    v13 = *(v8 + 1);
  }

  std::string::append(&__p, v12, v13);
  if (v57 < 0)
  {
    operator delete(*buf);
  }

  std::string::append(&__p, ":");
  v14 = getStringValue("vendor:rcp:state:crash");
  if (v14)
  {
    strcpy(buf, "vendor:rcp:state:crash");
    v57 = 22;
    v55 = buf;
    v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
    std::string::assign((v15 + 7), v14);
    if (v57 < 0)
    {
      operator delete(*buf);
    }

    v16 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v16)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "HI:NCP State during crash:%s", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  strcpy(buf, "vendor:rcp:state:crash");
  v57 = 22;
  v55 = buf;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
  v22 = v19[7];
  v20 = (v19 + 7);
  v21 = v22;
  v23 = v20[23];
  if (v23 >= 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = v21;
  }

  if (v23 >= 0)
  {
    v25 = *(v20 + 23);
  }

  else
  {
    v25 = *(v20 + 1);
  }

  std::string::append(&__p, v24, v25);
  if (v57 < 0)
  {
    operator delete(*buf);
  }

  std::string::append(&__p, ":");
  strcpy(buf, "vendor:rcp:state:crash");
  v57 = 22;
  v55 = buf;
  v26 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
  v27 = v26 + 7;
  v28 = *(v26 + 79);
  if (v28 < 0)
  {
    if (v26[8] != 7)
    {
      goto LABEL_69;
    }

    v27 = *v27;
  }

  else if (v28 != 7)
  {
LABEL_69:
    v32 = 1;
    if (v57 < 0)
    {
      goto LABEL_70;
    }

    goto LABEL_61;
  }

  v29 = *v27;
  v30 = *(v27 + 3);
  v32 = v29 != 1818650223 || v30 != 1701734764;
  if (v57 < 0)
  {
LABEL_70:
    operator delete(*buf);
    if (!v32)
    {
      goto LABEL_71;
    }

LABEL_62:
    v33 = getStringValue("Thread:DeviceMode");
    if (v33)
    {
      v57 = 17;
      strcpy(buf, "Thread:DeviceMode");
      v55 = buf;
      v34 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
      std::string::assign((v34 + 7), v33);
      if (v57 < 0)
      {
        operator delete(*buf);
      }

      v35 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v35)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = v33;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "HI:NCP Devicemode during crash:%s", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v57 = 17;
      strcpy(buf, "Thread:DeviceMode");
      v55 = buf;
      v36 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
      v39 = v36[7];
      v37 = (v36 + 7);
      v38 = v39;
      v40 = v37[23];
      if (v40 >= 0)
      {
        v41 = v37;
      }

      else
      {
        v41 = v38;
      }

      if (v40 >= 0)
      {
        v42 = *(v37 + 23);
      }

      else
      {
        v42 = *(v37 + 1);
      }

      std::string::append(&__p, v41, v42);
      if (v57 < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_82;
  }

LABEL_61:
  if (v32)
  {
    goto LABEL_62;
  }

LABEL_71:
  std::string::append(&__p, "unknown");
LABEL_82:
  std::string::append(&__p, ":");
  v43 = getStringValue("fault_crash_type");
  v44 = v43;
  if (v43 && strlen(v43) <= 0xFA)
  {
    v57 = 16;
    strcpy(buf, "fault_crash_type");
    v55 = buf;
    v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
    std::string::assign((v45 + 7), v44);
    if (v57 < 0)
    {
      operator delete(*buf);
    }

    v46 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v46)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = v44;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "HI:Crash Subtype:%s", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    if (*v44 == 48)
    {
      v44 = "ERR_NotAvailable";
      std::string::append(&__p, "ERR_NotAvailable");
    }

    else
    {
      std::string::append(&__p, v44);
    }

    p_p = &v53;
  }

  else
  {
    v47 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v47)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "HI:Crash Subtype unknown", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v44 = "RCP Firmware Reset triggers host reset";
    p_p = &__p;
  }

  std::string::append(p_p, v44);
  v49 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v49)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v50 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *&buf[4] = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "HI:Crash report in ABC/CA:%s", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v51 = &__p;
    goto LABEL_114;
  }

  v51 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
LABEL_114:
    handle_host_reset_dueto_rcp_captureABC(v51);
  }

  v52 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v52)
  {
    if (syslog_is_the_mask_enabled(3))
    {
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::onChipReset();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

LABEL_115:
  if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_119:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v53.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_119;
  }
}

void sub_100140BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void HostInterpreter::CAStabilityMetrics(uint64_t a1, uint64_t a2)
{
  v10 = _NSConcreteStackBlock;
  v11 = 1174405120;
  v12 = ___ZN15HostInterpreter18CAStabilityMetricsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
  v13 = &__block_descriptor_tmp_107;
  v14 = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a2, *(a2 + 8));
  }

  else
  {
    v15 = *a2;
  }

  analytics_send_event_lazy();
  BYTE7(v9[2]) = 16;
  strcpy(v9, "fault_crash_typefault_crash_type");
  v16 = &v9[1];
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v9[1]);
  std::string::assign((v2 + 7), "0");
  if (SBYTE7(v9[2]) < 0)
  {
    operator delete(*&v9[1]);
  }

  BYTE7(v9[2]) = 16;
  v9[1] = v9[0];
  LOBYTE(v9[2]) = 0;
  v16 = &v9[1];
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v9[1]);
  v4 = (v3 + 7);
  if (*(v3 + 79) < 0)
  {
    v4 = *v4;
  }

  saveStringValue("fault_crash_type", v4);
  if (SBYTE7(v9[2]) < 0)
  {
    operator delete(*&v9[1]);
  }

  strcpy(v9, "vendor:rcp:statevendor:rcp:state:crash");
  BYTE7(v9[2]) = 22;
  v16 = &v9[1];
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v9[1]);
  std::string::assign((v5 + 7), "uninitialized");
  if (SBYTE7(v9[2]) < 0)
  {
    operator delete(*&v9[1]);
  }

  v9[1] = v9[0];
  strcpy(&v9[1] + 14, "te:crash");
  BYTE7(v9[2]) = 22;
  v16 = &v9[1];
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v9[1]);
  v7 = (v6 + 7);
  if (*(v6 + 79) < 0)
  {
    v7 = *v7;
  }

  saveStringValue("vendor:rcp:state:crash", v7);
  if (SBYTE7(v9[2]) < 0)
  {
    operator delete(*&v9[1]);
  }

  logging_obg = log_get_logging_obg("com.apple.wpantund.nm", "default");
  if (!os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v15.__r_.__value_.__l.__data_);
    return;
  }

  LOWORD(v9[1]) = 0;
  _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Triggered flagstoneStabilityMetrics", &v9[1], 2u);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void sub_100140F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if ((a28 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

xpc_object_t ___ZN15HostInterpreter18CAStabilityMetricsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  empty = xpc_dictionary_create_empty();
  *(&__p[0].__r_.__value_.__s + 23) = 13;
  strcpy(__p, "threadSession");
  v61.__r_.__value_.__r.__words[0] = __p;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__p[0].__r_.__value_.__l.__data_);
  v5 = (v4 + 7);
  if (*(v4 + 79) < 0)
  {
    v5 = *v5;
  }

  xpc_dictionary_set_string(empty, "thread_session", v5);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  strcpy(__p, "vendor:rcp:state:crash");
  *(&__p[0].__r_.__value_.__s + 23) = 22;
  v61.__r_.__value_.__r.__words[0] = __p;
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__p[0].__r_.__value_.__l.__data_);
  v7 = (v6 + 7);
  if (*(v6 + 79) < 0)
  {
    v7 = *v7;
  }

  xpc_dictionary_set_string(empty, "thread_state", v7);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  *(&__p[0].__r_.__value_.__s + 23) = 17;
  strcpy(__p, "Thread:DeviceMode");
  v61.__r_.__value_.__r.__words[0] = __p;
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__p[0].__r_.__value_.__l.__data_);
  v9 = (v8 + 7);
  if (*(v8 + 79) < 0)
  {
    v9 = *v9;
  }

  xpc_dictionary_set_string(empty, "role", v9);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    v10 = (a1 + 40);
    v11 = (a1 + 40);
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = (a1 + 40);
    v11 = (a1 + 40);
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  v11 = *v10;
LABEL_13:
  xpc_dictionary_set_string(empty, "ncp_crash_reason", v11);
  *(&v61.__r_.__value_.__s + 23) = 5;
  strcpy(&v61, "Error");
  v12 = *(a1 + 63);
  if (v12 < 0)
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = v13 + v14;
    if (v14 < 12)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v13 = v10;
    v14 = *(a1 + 63);
    v15 = v10 + v12;
    if (v12 < 12)
    {
      goto LABEL_26;
    }
  }

  v16 = v13;
  do
  {
    v17 = memchr(v16, 116, v14 - 11);
    if (!v17)
    {
      break;
    }

    if (*v17 == 0x7361655270617274 && *(v17 + 2) == 1025535599)
    {
      goto LABEL_27;
    }

    v16 = (v17 + 1);
    v14 = v15 - v16;
  }

  while (v15 - v16 > 11);
LABEL_26:
  v17 = v15;
LABEL_27:
  if (v17 == v15)
  {
    v19 = -1;
  }

  else
  {
    v19 = v17 - v13;
  }

  if ((v12 & 0x80000000) != 0)
  {
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = v20 + v21;
    if (v21 < 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v20 = v10;
    v21 = v12;
    v22 = v10 + v12;
    if (v12 < 1)
    {
      goto LABEL_38;
    }
  }

  v23 = v20;
  do
  {
    v24 = memchr(v23, 41, v21);
    if (!v24)
    {
      break;
    }

    if (*v24 == 41)
    {
      goto LABEL_39;
    }

    v23 = (v24 + 1);
    v21 = v22 - v23;
  }

  while (v22 - v23 > 0);
LABEL_38:
  v24 = v22;
LABEL_39:
  v25 = v24 - v20;
  if (v24 == v22)
  {
    v25 = -1;
  }

  if (v25 <= v19)
  {
    goto LABEL_81;
  }

  v26 = v19 + 12;
  if ((v12 & 0x80000000) != 0)
  {
    v12 = *(a1 + 48);
    if (v12 < v26)
    {
      goto LABEL_138;
    }

    v10 = *v10;
  }

  else if (v26 > v12)
  {
LABEL_138:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v25 - v26;
  if (v12 - v26 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v12 - v26;
  }

  if (v28 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v28 >= 0x17)
  {
    operator new();
  }

  *(&__p[0].__r_.__value_.__s + 23) = v28;
  if (v28)
  {
    memmove(__p, v10 + v26, v28);
    __p[0].__r_.__value_.__s.__data_[v28] = 0;
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_71:
    operator delete(v61.__r_.__value_.__l.__data_);
    goto LABEL_54;
  }

  __p[0].__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_71;
  }

LABEL_54:
  v61 = __p[0];
  v29 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  v30 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  size = __p[0].__r_.__value_.__l.__size_;
  v31 = __p[0].__r_.__value_.__r.__words[0];
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v61;
  }

  else
  {
    v33 = __p[0].__r_.__value_.__r.__words[0];
  }

  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = __p[0].__r_.__value_.__l.__size_;
  }

  v35 = v33 + v34;
  v36 = memchr(v33, 32, v34);
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v35;
  }

  if (v37 != v35)
  {
    v38 = v37 + 1;
    if (v37 + 1 != v35)
    {
      do
      {
        v39 = *v38;
        if (v39 != 32)
        {
          *v37++ = v39;
        }

        ++v38;
      }

      while (v38 != v35);
      v29 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      size = v61.__r_.__value_.__l.__size_;
      v31 = v61.__r_.__value_.__r.__words[0];
      v30 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }
  }

  if (v30 >= 0)
  {
    v40 = &v61 + v29;
  }

  else
  {
    v40 = (v31 + size);
  }

  if (v30 >= 0)
  {
    v41 = &v61;
  }

  else
  {
    v41 = v31;
  }

  std::string::erase(&v61, v37 - v41, v40 - v37);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    v43 = v61.__r_.__value_.__r.__words[0];
    if (v61.__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_86;
    }

    if (*v61.__r_.__value_.__l.__data_ != 1869771333 || *(v61.__r_.__value_.__r.__words[0] + 4) != 114)
    {
      goto LABEL_86;
    }

    goto LABEL_131;
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) != 5)
  {
LABEL_85:
    v43 = &v61;
LABEL_86:
    xpc_dictionary_set_string(empty, "ncp_reset_type", v43);
    goto LABEL_87;
  }

LABEL_81:
  if (LODWORD(v61.__r_.__value_.__l.__data_) != 1869771333 || v61.__r_.__value_.__s.__data_[4] != 114)
  {
    goto LABEL_85;
  }

LABEL_131:
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      ___ZN15HostInterpreter18CAStabilityMetricsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

LABEL_87:
  if (otPlatVendorGetVersion(*(v2 + 224), __p, 500))
  {
    std::string::assign((RcpHostContext::sRcpHostContext + 5704), "Error");
    v44 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v44)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        ___ZN15HostInterpreter18CAStabilityMetricsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_cold_3();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  else
  {
    std::string::assign((RcpHostContext::sRcpHostContext + 5704), __p);
    v45 = (RcpHostContext::sRcpHostContext + 5704);
    if (*(RcpHostContext::sRcpHostContext + 5727) < 0)
    {
      v45 = *v45;
    }

    xpc_dictionary_set_string(empty, "header_vendor_version", v45);
  }

  *(&v60.__r_.__value_.__s + 23) = 5;
  strcpy(&v60, "Error");
  VersionString = otGetVersionString();
  std::string::assign(&v60, VersionString);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v47 = v60.__r_.__value_.__l.__size_;
  }

  if (byte_1004E5757 >= 0)
  {
    v48 = byte_1004E5757;
  }

  else
  {
    v48 = qword_1004E5748;
  }

  if (v48 + v47 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v48 + v47 > 0x16)
  {
    operator new();
  }

  v59 = 0;
  v58 = 0uLL;
  HIBYTE(v59) = v48 + v47;
  if (v47)
  {
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v60;
    }

    else
    {
      v49 = v60.__r_.__value_.__r.__words[0];
    }

    memmove(&v58, v49, v47);
  }

  v50 = &v58 + v47;
  if (v48)
  {
    if (byte_1004E5757 >= 0)
    {
      v51 = &morty_version;
    }

    else
    {
      v51 = morty_version;
    }

    memmove(v50, v51, v48);
  }

  v50[v48] = 0;
  v52 = RcpHostContext::sRcpHostContext;
  v53 = RcpHostContext::sRcpHostContext + 5656;
  if (*(RcpHostContext::sRcpHostContext + 5679) < 0)
  {
    operator delete(*v53);
    v52 = RcpHostContext::sRcpHostContext;
  }

  *v53 = v58;
  *(v53 + 16) = v59;
  v54 = (v52 + 5656);
  if (*(v52 + 5679) < 0)
  {
    v54 = *v54;
  }

  xpc_dictionary_set_string(empty, "header_daemon_version", v54);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return empty;
    }

LABEL_124:
    operator delete(v61.__r_.__value_.__l.__data_);
    return empty;
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_124;
  }

  return empty;
}

void sub_100141788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t FillmoreControllerGetTmac(unsigned __int8 *a1)
{
  v2 = MGCopyAnswer();
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  Length = CFDataGetLength(v2);
  BytePtr = CFDataGetBytePtr(v2);
  if (!Length)
  {
LABEL_5:
    v7 = v2 == 0;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!logging_obg)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v6 = 0;
  while (!BytePtr[v6])
  {
    if (Length == ++v6)
    {
      goto LABEL_5;
    }
  }

  if (!v2)
  {
    v7 = 1;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!logging_obg)
    {
LABEL_17:
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      [PowerEventHandler_Rcp init:];
      if (v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_6:
    v9 = logging_obg;
    if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
LABEL_18:
      if (v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "tmac:MG read for TMAC returned is Zero or NULL\n", buf, 2u);
    if (v7)
    {
LABEL_20:
      if ((IsInternalBuild & 1) == 0)
      {
        v14 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v14)
        {
          v15 = v14;
          result = syslog_is_the_mask_enabled(6);
          if (!result)
          {
            return result;
          }

          result = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
          if (!result)
          {
            return result;
          }

          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "tmac:Thread missing in Customer Build", buf, 2u);
        }

        else
        {
          result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          [PowerEventHandler_Rcp init:];
        }
      }

      return 0;
    }

LABEL_19:
    CFRelease(v2);
    goto LABEL_20;
  }

  if (Length != 8)
  {
    v16 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v16)
    {
      v17 = v16;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v21 = Length;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "tmac:MAC in syscfg has an incorrect size: %d, fail\n", buf, 8u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    CFRelease(v2);
    return 0;
  }

  v10 = BytePtr;
  CFRelease(v2);
  snprintf(buf, 0x11uLL, "%02X%02X%02X%02X%02X%02X%02X%02X", *v10, v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7]);
  v11 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v11)
  {
    v12 = v11;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v18 = 136315138;
      v19 = buf;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "tmac:Syscfg Mac:%s", v18, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  *a1 = *v10;
  a1[1] = v10[1];
  a1[2] = v10[2];
  a1[3] = v10[3];
  a1[4] = v10[4];
  a1[5] = v10[5];
  a1[6] = v10[6];
  a1[7] = v10[7];
  return 1;
}

void HostInterpreter::restore_health_metrics_from_persisted_db(HostInterpreter *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v2 = logging_obg;
    if (syslog_is_the_mask_enabled(7))
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        HostInterpreter::restore_health_metrics_from_persisted_db();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v4 = 19;
  strcpy(__p, "is_radio_tx_timeout");
  v5 = __p;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
  operator new();
}

void HostInterpreter::restore_awd_stability_counters_from_persisted_db(HostInterpreter *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v2 = logging_obg;
    if (syslog_is_the_mask_enabled(7))
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        HostInterpreter::restore_awd_stability_counters_from_persisted_db();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v4 = 16;
  strcpy(__p, "fault_num_resets");
  v5 = __p;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
  operator new();
}

BOOL HostInterpreter::anyThreadSessionEnabled(HostInterpreter *this)
{
  isThreadSessionEnabled = RcpHostContext::isThreadSessionEnabled(RcpHostContext::sRcpHostContext);
  if (isThreadSessionEnabled)
  {
    return 1;
  }

  return HostInterpreter::isThreadSessionJoinEnabled(isThreadSessionEnabled);
}

void HostInterpreter::setExtendedMACAddressInDataSetIfAvailableinDB(HostInterpreter *this)
{
  if (!HostInterpreter::getNameAndXPANIDFromDataset(this, cStr))
  {
    return;
  }

  LLIntValueForBundleID = getLLIntValueForBundleID(cStr, "com.apple.threadradiodeMACDB");
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!logging_obg)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
      if (LLIntValueForBundleID)
      {
        goto LABEL_9;
      }

LABEL_25:
      v9 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v9)
      {
        v10 = v9;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13 = 136315138;
          v14 = "setExtendedMACAddressInDataSetIfAvailableinDB";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s, Failed to Set xMAC Addres to OT, as its not available in DB", &v13, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      otLinkRegenerateExAddr(*(this + 28));
      goto LABEL_32;
    }

LABEL_8:
    if (LLIntValueForBundleID)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  v4 = logging_obg;
  if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    goto LABEL_8;
  }

  v13 = 136315650;
  v14 = "setExtendedMACAddressInDataSetIfAvailableinDB";
  v15 = 1024;
  v16 = LLIntValueForBundleID != 0;
  v17 = 2048;
  v18 = LLIntValueForBundleID;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s, xMAC present in DB: %d, xMAC value in DB: 0x%llx", &v13, 0x1Cu);
  if (!LLIntValueForBundleID)
  {
    goto LABEL_25;
  }

LABEL_9:
  v19 = bswap64(LLIntValueForBundleID);
  if (otLinkSetExtendedAddress(*(this + 28), &v19))
  {
    return;
  }

  v5 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v5)
  {
    v6 = v5;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "setExtendedMACAddressInDataSetIfAvailableinDB";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s, Successfully Set xMAC Addres to OT", &v13, 0xCu);
      if (otPlatIsSettingsFileExists(*(this + 28)))
      {
        goto LABEL_32;
      }

LABEL_17:
      v7 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v7)
      {
        v8 = v7;
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::setExtendedMACAddressInDataSetIfAvailableinDB();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      otLinkRegenerateExAddr(*(this + 28));
      saveLLIntValueNULLForBundleID(cStr, "com.apple.threadradiodeMACDB");
      goto LABEL_32;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
    if (otPlatIsSettingsFileExists(*(this + 28)))
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if ((otPlatIsSettingsFileExists(*(this + 28)) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_32:
  v11 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v11)
  {
    v12 = v11;
    if (syslog_is_the_mask_enabled(6))
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "ReInit Settings File", &v13, 2u);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  ot::Instance::InitSettings(*(this + 28));
}

void HostInterpreter::saveExtendedMACAddressIfNotAvailableinDB(HostInterpreter *this)
{
  if (HostInterpreter::getNameAndXPANIDFromDataset(this, cStr))
  {
    LLIntValueForBundleID = getLLIntValueForBundleID(cStr, "com.apple.threadradiodeMACDB");
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v4 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v15 = 136315650;
        v16 = "saveExtendedMACAddressIfNotAvailableinDB";
        v17 = 1024;
        LODWORD(v18[0]) = LLIntValueForBundleID != 0;
        WORD2(v18[0]) = 2048;
        *(v18 + 6) = LLIntValueForBundleID;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s, Before reading from OT, xMAC present in DB: %d, xMAC value in DB: 0x%llx", &v15, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    ExtendedAddress = otLinkGetExtendedAddress(*(this + 28));
    v6 = ExtendedAddress[7] | (((ExtendedAddress[5] << 8) | (((((ExtendedAddress[1] << 8) | (*ExtendedAddress << 16) | ExtendedAddress[2]) << 16) | (ExtendedAddress[3] << 8) | ExtendedAddress[4]) << 16) | ExtendedAddress[6]) << 8);
    saveLLIntValueForBundleID("last_used_emac_address", v6, "com.apple.threadradiodeMACDB");
    if (!LLIntValueForBundleID)
    {
      saveLLIntValueForBundleID(cStr, v6, "com.apple.threadradiodeMACDB");
      v10 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v10)
      {
        v11 = v10;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v15 = 136315394;
          v16 = "saveExtendedMACAddressIfNotAvailableinDB";
          v17 = 2048;
          v18[0] = v6;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s, Read xMAC from OT and wrote it to DB = 0x%llx to OT", &v15, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }
    }

    v7 = getLLIntValueForBundleID(cStr, "com.apple.threadradiodeMACDB");
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      v9 = v8;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = 136315394;
        v16 = "saveExtendedMACAddressIfNotAvailableinDB";
        v17 = 2048;
        v18[0] = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s, Checking Value in DB, xMAC value in DB: 0x%llx", &v15, 0x16u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    v13 = v12;
    if (v7 && v7 == v6)
    {
      if (v12)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = 136315138;
          v16 = "saveExtendedMACAddressIfNotAvailableinDB";
          v14 = "%s, Values in DB and OT match";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, &v15, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }
    }

    else if (v12)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 136315138;
        v16 = "saveExtendedMACAddressIfNotAvailableinDB";
        v14 = "%s, Values in DB and OT DO NOT match";
        goto LABEL_29;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }
}

BOOL HostInterpreter::getNameAndXPANIDFromDataset(HostInterpreter *this, char *a2)
{
  Active = otDatasetGetActive(*(this + 28), v21);
  if (!Active)
  {
    v5 = &a2[snprintf(a2, 0x31uLL, "%s", v22)];
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v7 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v18 = "getNameAndXPANIDFromDataset";
        v19 = 2080;
        v20 = a2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s, Network Name: %s", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v8 = &v5[snprintf(v5, 0x11uLL, "%.2x", v22[24])];
    v9 = &v8[snprintf(v8, 0xFuLL, "%.2x", v22[23])];
    v10 = &v9[snprintf(v9, 0xDuLL, "%.2x", v22[22])];
    v11 = &v10[snprintf(v10, 0xBuLL, "%.2x", v22[21])];
    v12 = &v11[snprintf(v11, 9uLL, "%.2x", v22[20])];
    v13 = &v12[snprintf(v12, 7uLL, "%.2x", v22[19])];
    v14 = snprintf(v13, 5uLL, "%.2x", v22[18]);
    snprintf(&v13[v14], 3uLL, "%.2x", v22[17]);
    a2[48] = 0;
    v15 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v15)
    {
      v16 = v15;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v18 = "getNameAndXPANIDFromDataset";
        v19 = 2080;
        v20 = a2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s, Network Name & XPANID: %s", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  return Active == 0;
}

BOOL HostInterpreter::isThreadSessionJoinEnabled(HostInterpreter *this)
{
  *v4 = 0;
  getStringValueLocal("threadSessionJoin", v4, 4);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v2 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Thread Join Session Status = %s", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return (*v4 ^ 0x4E4F | v4[2]) == 0;
}

void HostInterpreter::persistThreadSessionJoin(HostInterpreter *this, int a2)
{
  if (a2)
  {
    v4 = "ON";
  }

  else
  {
    v4 = "OFF";
  }

  saveStringValue("threadSessionJoin", v4);
  if (a2)
  {
    wcm_notify(1, 1);

    HostInterpreter::clearHealthInfoMetrics(v5);
  }

  if (*(this + 184) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  wcm_notify(0, v6);
}

void HostInterpreter::HandleDiagnosticGetResponseFromLeader(uint64_t a1, int a2, uint64_t a3)
{
  v16 = 0;
  if (a2)
  {
    return;
  }

  otMessageGetLength(a3);
  otMessageGetOffset(a3);
  v5 = 0;
  if (otThreadGetNextDiagnosticTlv(a3, &v16, v20))
  {
    goto LABEL_22;
  }

  v6 = 0;
  do
  {
    switch(v20[0])
    {
      case 0x64:
        v6 = 1;
        continue;
      case 1:
        v5 = v21;
        continue;
      case 0:
        v7 = v21;
        v8 = BYTE1(v21);
        *(a1 + 154) = v21;
        snprintf(__str, 0xC8uLL, "%02X%02X%02X%02X%02X%02X%02X%02X", v7, v8, BYTE2(v7), BYTE3(v7), BYTE4(v7), BYTE5(v7), BYTE6(v7), HIBYTE(v7));
        continue;
    }

    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!logging_obg)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        continue;
      }

      buf = 136315394;
      *buf_4 = "com.apple.wpantund.ncp";
      *&buf_4[8] = 2080;
      *&buf_4[10] = "default";
      v10 = &_os_log_default;
      v11 = "Logging1 Module is not defined for SubSystem: %s, Category: %s";
      v12 = 22;
      goto LABEL_19;
    }

    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      buf = 67109120;
      *buf_4 = v20[0];
      v10 = logging_obg;
      v11 = "Mle::HandleDiagnosticGetResponseFromLeader Unhandled TLV type=%d";
      v12 = 8;
LABEL_19:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, &buf, v12);
    }
  }

  while (!otThreadGetNextDiagnosticTlv(a3, &v16, v20));
  if (v6)
  {
    operator new();
  }

LABEL_22:
  v13 = (otThreadGetLeaderRouterId(*(a1 + 224)) & 0x3F) << 10 == v5;
  v14 = log_get_logging_obg("com.apple.threadradiod", "default");
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        *buf_4 = v5;
        *&buf_4[4] = 2080;
        *&buf_4[6] = __str;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "HI:HandleDiagnosticGetResponseFromLeader:Received DIAG.RSP from leader: leaderRloc16:0x%x, leaderExtAddr:%s", &buf, 0x12u);
        *(a1 + 152) = v5;
        return;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    *(a1 + 152) = v5;
  }

  else if (v14)
  {
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::HandleDiagnosticGetResponseFromLeader((a1 + 224), v5, v15);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void sub_100143FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25)
{
  if (a25)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a25);
  }

  _Unwind_Resume(exception_object);
}

void HostInterpreter::HandleDiagGetSingleHopPeerResponseIPAddr(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v33 = 0;
    memset(v42, 0, sizeof(v42));
    *__str = 0u;
    memset(v41, 0, sizeof(v41));
    *__s2 = 0u;
    memset(v39, 0, sizeof(v39));
    memset(v32, 0, 7);
    v29 = &v29;
    v30 = &v29;
    v31 = 0;
    MeshLocalPrefix = otThreadGetMeshLocalPrefix(*(a1 + 224));
    snprintf(__str, 0x2DuLL, "%x:%x:%x:%x", __rev16(*MeshLocalPrefix), __rev16(MeshLocalPrefix[1]), __rev16(MeshLocalPrefix[2]), __rev16(MeshLocalPrefix[3]));
    snprintf(__s2, 0x2DuLL, "%x:%x:%x:%x:0:", __rev16(*MeshLocalPrefix), __rev16(MeshLocalPrefix[1]), __rev16(MeshLocalPrefix[2]), __rev16(MeshLocalPrefix[3]));
    otIp6AddressToString(a4 + 16, v42, 48);
    if (!a3)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::HandleDiagGetSingleHopPeerResponseIPAddr();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

LABEL_66:
      if (v31)
      {
        v24 = v30;
        v25 = *(v29 + 8);
        v26 = *v30;
        *(v26 + 8) = v25;
        *v25 = v26;
        v31 = 0;
        if (v24 != &v29)
        {
          do
          {
            v27 = v24[1];
            if (*(v24 + 39) < 0)
            {
              v28 = v24;
              operator delete(v24[2]);
              v24 = v28;
            }

            operator delete(v24);
            v24 = v27;
          }

          while (v27 != &v29);
        }
      }

      return;
    }

    if (a2)
    {
      v9 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v9)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = otThreadErrorToString(a2);
          *buf = 136315650;
          *&buf[4] = "HandleDiagGetSingleHopPeerResponseIPAddr";
          *&buf[12] = 2080;
          *&buf[14] = v10;
          *&buf[22] = 2080;
          *&buf[24] = v42;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: TDM DIAG_GET.rsp/ans error:%s peerAddr:%s", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

LABEL_65:
      v23 = *(a1 + 240);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZN15HostInterpreter38clearRcpSrpSignalMeshLocalAddressTimerEv_block_invoke;
      *&buf[24] = &__block_descriptor_tmp_39;
      v44 = a1;
      dispatch_async(v23, buf);
      goto LABEL_66;
    }

    v14 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v14)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = otThreadErrorToString(0);
        *buf = 136315650;
        *&buf[4] = "HandleDiagGetSingleHopPeerResponseIPAddr";
        *&buf[12] = 2080;
        *&buf[14] = v42;
        *&buf[22] = 2080;
        *&buf[24] = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: TDM DIAG_GET.rsp/ans from %s error:%s", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (otThreadGetNextDiagnosticTlv(a3, &v33, v36))
          {
            goto LABEL_65;
          }

          if (v36[0] == 8)
          {
            break;
          }

          if (v36[0] == 1)
          {
            snprintf(v32, 7uLL, "%04x", v37);
          }
        }

        v16 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v16)
        {
          break;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "com.apple.wpantund.ncp";
          *&buf[12] = 2080;
          *&buf[14] = "default";
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
          if (v37)
          {
            goto LABEL_39;
          }
        }

        else
        {
LABEL_38:
          if (v37)
          {
            goto LABEL_39;
          }
        }
      }

      if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_38;
      }

      *buf = 136315650;
      *&buf[4] = "HandleDiagGetSingleHopPeerResponseIPAddr";
      *&buf[12] = 1024;
      *&buf[14] = v37;
      *&buf[18] = 2080;
      *&buf[20] = v32;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s: IP6 Address List: count = %d, mAddr16 = %s", buf, 0x1Cu);
      if (v37)
      {
LABEL_39:
        v17 = 0;
        v18 = &v37 + 1;
        do
        {
          v19 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v19)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "- ", buf, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "com.apple.wpantund.ncp";
            *&buf[12] = 2080;
            *&buf[14] = "default";
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
          }

          otIp6AddressToString(v18, buf, 40);
          if (strstr(buf, __str) && !strstr(buf, __s2) && !strstr(buf, v32))
          {
            v20 = strlen(buf);
            if (v20 < 0x7FFFFFFFFFFFFFF8)
            {
              v21 = v20;
              if (v20 < 0x17)
              {
                v35 = v20;
                if (v20)
                {
                  memcpy(__dst, buf, v20);
                }

                __dst[v21] = 0;
                operator new();
              }

              operator new();
            }

            std::string::__throw_length_error[abi:ne200100]();
          }

          v22 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v22)
          {
            if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *__dst = 67109378;
              *&__dst[4] = v17 + 1;
              *&__dst[8] = 2080;
              *&__dst[10] = buf;
              _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%d] %s", __dst, 0x12u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *__dst = 136315394;
            *&__dst[4] = "com.apple.wpantund.ncp";
            *&__dst[12] = 2080;
            *&__dst[14] = "default";
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", __dst, 0x16u);
          }

          ++v17;
          v18 += 16;
        }

        while (v17 < v37);
      }
    }
  }

  v11 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v11)
  {
    v12 = v11;
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::HandleDiagGetSingleHopPeerResponseIPAddr();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void sub_1001449B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  std::list<std::string>::~list(&a24);
  _Unwind_Resume(a1);
}

void HostInterpreter::HandleDiagnosticGetResponse(int a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  if (a3)
  {
    otIp6AddressToString(a3 + 16, v24, 48);
    if (a2)
    {
      __p = 0;
      __dst = 0;
      v18 = 0;
      __src[0] = 0;
      __src[1] = 0;
      Offset = otMessageGetOffset(a2);
      Length = otMessageGetLength(a2);
      if (!a1)
      {
        v11 = Length;
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
          {
            buf[0] = 136315394;
            *&buf[1] = v24;
            v21 = 2080;
            v22 = otThreadErrorToString(0);
            _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "TDM DIAG_GET.rsp/ans from %s error:%s", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        v13 = 0;
        v14 = v11 - Offset;
        while (!otThreadGetNextDiagnosticTlv(a2, &v19, v25))
        {
          if (v25[0] == 100)
          {
            v13 = 1;
          }
        }

        if (v13)
        {
          operator new();
        }

        if (v11 != Offset)
        {
          do
          {
            if ((v14 & 0xFFF0) != 0)
            {
              v15 = 16;
            }

            else
            {
              v15 = v14;
            }

            otMessageRead(a2, Offset, __src, v15);
            std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, __src, __src + v15, v15);
            Offset += v15;
            v14 -= v15;
          }

          while (v14);
        }

        operator new();
      }

      v7 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v7)
      {
        if (syslog_is_the_mask_enabled(6))
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            buf[0] = 136315394;
            *&buf[1] = otThreadErrorToString(a1);
            v21 = 2080;
            v22 = v24;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TDM DIAG_GET.rsp/ans error:%s peerAddr:%s", buf, 0x16u);
          }
        }

        return;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_23:
      [PowerEventHandler_Rcp init:];
      return;
    }

    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!v10)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_23;
    }

    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::HandleDiagnosticGetResponse();
    }
  }

  else
  {
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      v9 = v8;
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::HandleDiagnosticGetResponse();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }
}

void sub_100144F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void boost::any::any<nl::Data &>()
{
  operator new();
}

{
  operator new();
}

void sub_1001450D8()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 16) = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t HostInterpreter::detachIfWedConnectionInProgress(HostInterpreter *this)
{
  if (!otThreadIsEnhCslPeerLinking(*(this + 28)) && !otThreadIsEnhCslPeerLinked(*(this + 28)))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v9 = logging_obg;
      result = syslog_is_the_mask_enabled(6);
      if (!result)
      {
        return result;
      }

      result = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v10 = 136315138;
      v11 = "detachIfWedConnectionInProgress";
      v6 = "Wed Detach not required, as Wed is not Connected in %s";
      v7 = v9;
      goto LABEL_16;
    }

    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

LABEL_23:
    [PowerEventHandler_Rcp init:];
    return 0;
  }

  CslPeripheralAddr = otThreadGetCslPeripheralAddr(*(this + 28));
  v3 = log_get_logging_obg("com.apple.threadradiod", "default");
  v4 = v3;
  if (!CslPeripheralAddr)
  {
    if (v3)
    {
      result = syslog_is_the_mask_enabled(6);
      if (!result)
      {
        return result;
      }

      result = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v10 = 136315138;
      v11 = "detachIfWedConnectionInProgress";
      v6 = "Wed Emac is empty %s, there is no valid Wed connection ";
      v7 = v4;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, &v10, 0xCu);
      return 0;
    }

    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (v3)
  {
    if (syslog_is_the_mask_enabled(6))
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = "detachIfWedConnectionInProgress";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Wed Detach in progress %s, peer address set", &v10, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return otThreadDetachEnhCslPeer(*(this + 28));
}

void HostInterpreter::remove_all_address_prefix_route_entries(HostInterpreter *this, int a2)
{
  if (gSrpModeNetInfo == 1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v4 = logging_obg;
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "HI:remove_all_address_prefix_route_entries: Clear Local Network Data", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    otBorderRouterClearLocalNetworkData(*(this + 28));
    return;
  }

  v5 = *(this + 1);
  if (v5 != *(this + 2))
  {
    v6 = *(this + 1);
    while (1)
    {
      v62 = *(v6 + 12);
      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v7 != v8)
      {
        if (((v7 - v8) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v63 = 0;
      v9 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v9)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          (*(*v6 + 16))(__p, v6);
          v10 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v10 = __p[0];
          }

          *v59 = 136315138;
          *&v59[4] = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "HI:remove_all_address_prefix_route_entries:Removing %s", v59, 0xCu);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p[0]) = 136315394;
        *(__p + 4) = "com.apple.wpantund.ncp";
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = "default";
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", __p, 0x16u);
      }

      v11 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v11)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LODWORD(__p[0]) = 67109632;
          HIDWORD(__p[0]) = v63;
          LOWORD(__p[1]) = 1024;
          *(&__p[1] + 2) = v64[0];
          HIWORD(__p[1]) = 1024;
          LODWORD(__p[2]) = v62;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "HI:remove_all_address_prefix_route_entries:mServiceDataLength:[%d],data:[%d],entpNo[%d]", __p, 0x14u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p[0]) = 136315394;
        *(__p + 4) = "com.apple.wpantund.ncp";
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = "default";
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", __p, 0x16u);
      }

      v12 = otServerRemoveService(*(this + 28), v62, v64, v63);
      if (v12)
      {
        break;
      }

      v17 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v17)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "HI:remove_all_address_prefix_route_entries:otServerRemoveService Success", __p, 2u);
        }

        goto LABEL_8;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

LABEL_8:
      v6 += 80;
      v5 += 80;
      if (v6 == *(this + 2))
      {
        goto LABEL_42;
      }
    }

    v13 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v13)
    {
      if (!syslog_is_the_mask_enabled(3) || !os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v12;
      v14 = v13;
      v15 = "HI:remove_all_address_prefix_route_entries:otServerRemoveService error[%d]";
      v16 = 8;
    }

    else
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

LABEL_40:
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "com.apple.wpantund.ncp";
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = "default";
      v14 = &_os_log_default;
      v15 = "Logging1 Module is not defined for SubSystem: %s, Category: %s";
      v16 = 22;
    }

    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, __p, v16);
    goto LABEL_8;
  }

LABEL_42:
  v18 = *(this + 7);
  v19 = this + 64;
  if (v18 != (this + 64))
  {
    do
    {
      if (*(v18 + 12) == 2)
      {
        goto LABEL_46;
      }

      memset(__p, 0, 24);
      IPv6Prefix::to_string((v18 + 28), v59);
      if ((v59[23] & 0x80u) == 0)
      {
        v23 = v59;
      }

      else
      {
        v23 = *v59;
      }

      v24 = ot::Utils::CmdLineParser::ParseAsIp6Prefix(v23, __p);
      v25 = v24;
      if (v59[23] < 0)
      {
        operator delete(*v59);
        if (v25)
        {
LABEL_57:
          v26 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v26)
          {
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *v59 = 67109120;
              *&v59[4] = v25;
              v27 = v26;
              v28 = "HI:remove_all_address_prefix_route_entries: ParseAsIp6Prefix error[%d]";
              v29 = 8;
LABEL_77:
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v28, v59, v29);
              goto LABEL_46;
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_76;
          }

          goto LABEL_46;
        }
      }

      else if (v24)
      {
        goto LABEL_57;
      }

      v30 = otBorderRouterRemoveOnMeshPrefix(*(this + 28), __p);
      v31 = log_get_logging_obg("com.apple.threadradiod", "default");
      v32 = v31;
      if (v30)
      {
        if (v31)
        {
          if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *v59 = 67109120;
            *&v59[4] = v30;
            v27 = v32;
            v28 = "HI:remove_all_address_prefix_route_entries: otBorderRouterRemoveOnMeshPrefix error[%d]";
            v29 = 8;
            goto LABEL_77;
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v31)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *v59 = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "HI:remove_all_address_prefix_route_entries: otBorderRouterRemoveOnMeshPrefix success", v59, 2u);
          }

          goto LABEL_46;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
LABEL_76:
          *v59 = 136315394;
          *&v59[4] = "com.apple.wpantund.ncp";
          *&v59[12] = 2080;
          *&v59[14] = "default";
          v27 = &_os_log_default;
          v28 = "Logging1 Module is not defined for SubSystem: %s, Category: %s";
          v29 = 22;
          goto LABEL_77;
        }
      }

LABEL_46:
      v20 = v18[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v18[2];
          v22 = *v21 == v18;
          v18 = v21;
        }

        while (!v22);
      }

      v18 = v21;
    }

    while (v21 != v19);
  }

  v33 = *(this + 10);
  v34 = this + 88;
  if (v33 != (this + 88))
  {
    do
    {
      if (*(v33 + 12) == 2)
      {
        goto LABEL_82;
      }

      memset(v59, 0, 24);
      IPv6Prefix::to_string((v33 + 28), v55);
      if (v58 >= 0)
      {
        v37 = v55;
      }

      else
      {
        v37 = *v55;
      }

      v38 = ot::Utils::CmdLineParser::ParseAsIp6Prefix(v37, v59);
      v39 = v38;
      if (v58 < 0)
      {
        operator delete(*v55);
        if (v39)
        {
LABEL_93:
          v40 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v40)
          {
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *v55 = 67109120;
              *&v55[4] = v39;
              v41 = v40;
              v42 = "HI:remove_all_address_prefix_route_entries: ParseAsIp6Prefix(offmeshroute) error[%d]";
              v43 = 8;
LABEL_113:
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, v42, v55, v43);
              goto LABEL_82;
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_82;
        }
      }

      else if (v38)
      {
        goto LABEL_93;
      }

      v44 = otBorderRouterRemoveRoute(*(this + 28), v59);
      v45 = log_get_logging_obg("com.apple.threadradiod", "default");
      v46 = v45;
      if (v44)
      {
        if (v45)
        {
          if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *v55 = 67109120;
            *&v55[4] = v44;
            v41 = v46;
            v42 = "HI:remove_all_address_prefix_route_entries: otBorderRouterRemoveRoute error[%d]";
            v43 = 8;
            goto LABEL_113;
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (v45)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "HI:remove_all_address_prefix_route_entries: otBorderRouterRemoveRoute success", v55, 2u);
          }

          goto LABEL_82;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
LABEL_112:
          *v55 = 136315394;
          *&v55[4] = "com.apple.wpantund.ncp";
          v56 = 2080;
          v57 = "default";
          v41 = &_os_log_default;
          v42 = "Logging1 Module is not defined for SubSystem: %s, Category: %s";
          v43 = 22;
          goto LABEL_113;
        }
      }

LABEL_82:
      v35 = v33[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v33[2];
          v22 = *v36 == v33;
          v33 = v36;
        }

        while (!v22);
      }

      v33 = v36;
    }

    while (v36 != v34);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(this + 56, *(this + 8));
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = v19;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(this + 80, *(this + 11));
  v47 = *(this + 14);
  *(this + 10) = v34;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(this + 104, v47);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = this + 112;
  v49 = *(this + 1);
  v48 = *(this + 2);
  if (v48 != v49)
  {
    v50 = v48 - 10;
    v51 = v48 - 10;
    v52 = v48 - 10;
    do
    {
      v53 = *v52;
      v52 -= 10;
      (*v53)(v51);
      v50 -= 10;
      v22 = v51 == v49;
      v51 = v52;
    }

    while (!v22);
  }

  *(this + 2) = v49;
  if (a2)
  {
    HostInterpreter::signal_ipv6route_list_change(this);
    HostInterpreter::signal_service_list_change(this);
  }
}

void sub_100145F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void *nl::Data::Data(void *this, const unsigned __int8 *a2, uint64_t a3)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_10014604C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::signal_ipv6route_list_change(HostInterpreter *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(this + 15);
      v5 = *(this + 18);
      *buf = 134218240;
      *&buf[4] = v4;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "signal_router_list_change Router:Size[%lu] Backup[%lu]", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v6 = *(this + 15);
  if (v6 != *(this + 18))
  {
    goto LABEL_30;
  }

  if (v6)
  {
    v7 = *(this + 13);
    if (v7 != (this + 112))
    {
      if (*(this + 16) == (this + 136))
      {
        goto LABEL_30;
      }

      do
      {
        v8 = *(this + 16);
        while (1)
        {
          v9 = *(v8 + 28) == *(v7 + 28) && *(v8 + 36) == *(v7 + 36);
          if (v9)
          {
            break;
          }

          v10 = *(v8 + 1);
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
              v11 = *(v8 + 2);
              v9 = *v11 == v8;
              v8 = v11;
            }

            while (!v9);
          }

          v8 = v11;
          if (v11 == (this + 136))
          {
            goto LABEL_30;
          }
        }

        v12 = *(v7 + 1);
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = *(v7 + 2);
            v9 = *v13 == v7;
            v7 = v13;
          }

          while (!v9);
        }

        v7 = v13;
      }

      while (v13 != (this + 112));
    }
  }

  result = RcpHostContext::canReportNetworkDataIPV6RouteInfo(RcpHostContext::sRcpHostContext);
  if (result)
  {
LABEL_30:
    v15 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v15)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "signal_ipv6route_list_change";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s SRP reporting", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    RcpHostContext::resetReportNetworkDataIPV6RouteInfo(RcpHostContext::sRcpHostContext);
    std::__tree<std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::__map_value_compare<IPv6Prefix,std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::less<IPv6Prefix>,true>,std::allocator<std::__value_type<IPv6Prefix,InterfaceRouteEntry>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::__tree_node<std::__value_type<IPv6Prefix,InterfaceRouteEntry>,void *> *,long>>(this + 16, *(this + 13), this + 14);
    *buf = buf;
    *&buf[8] = buf;
    v16 = *(this + 13);
    if (v16 != (this + 112))
    {
      v17[1] = 0;
      v18 = 0;
      v17[0] = &v17[1];
      IPv6Prefix::to_string((v16 + 28), __p);
      v21 = 7;
      strcpy(v20, "Address");
      *v19 = v20;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v17, v20);
      operator new();
    }

    HIBYTE(v18) = 11;
    strcpy(v17, "IPv6:Routes");
    boost::any::any<std::list<std::map<std::string,boost::any>> &>();
  }

  return result;
}

void sub_1001467BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34)
{
  if (a28)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a28);
  }

  if (a16 < 0)
  {
    operator delete(__p);
    std::list<std::map<std::string,boost::any>>::~list(&a34);
    _Unwind_Resume(a1);
  }

  std::list<std::map<std::string,boost::any>>::~list(&a34);
  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::signal_service_list_change(HostInterpreter *this)
{
  if ((HostInterpreter::service_list_changed(this) & 1) != 0 || (result = RcpHostContext::canReportNetworkDataServiceInfo(RcpHostContext::sRcpHostContext), result))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v3 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "signal_service_list_change";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s SRP reporting", &buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    RcpHostContext::resetReportNetworkDataServiceInfo(RcpHostContext::sRcpHostContext);
    std::vector<ServiceEntry>::__assign_with_size[abi:ne200100]<ServiceEntry*,ServiceEntry*>(this + 4, *(this + 1), *(this + 2), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - *(this + 1)) >> 4));
    *&buf = &buf;
    *(&buf + 1) = &buf;
    v13 = 0;
    v4 = *(this + 1);
    if (v4 != *(this + 2))
    {
      v7[1] = 0;
      v8 = 0;
      v7[0] = &v7[1];
      v5 = *(v4 + 12);
      v11 = 16;
      strcpy(__p, "EnterpriseNumber");
      *v9 = __p;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7, __p);
      operator new();
    }

    HIBYTE(v8) = 15;
    strcpy(v7, "Thread:Services");
    boost::any::any<std::list<std::map<std::string,boost::any>> &>();
  }

  return result;
}

void sub_100147148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a31)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a31);
  }

  if (a21 < 0)
  {
    operator delete(__p);
    std::list<std::map<std::string,boost::any>>::~list((v36 - 128));
    _Unwind_Resume(a1);
  }

  std::list<std::map<std::string,boost::any>>::~list((v36 - 128));
  _Unwind_Resume(a1);
}

void HostInterpreter::HandleEnergyScanResult(unsigned __int8 *a1)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v3 = logging_obg;
  if (a1)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v4 = *a1;
          v5 = a1[1];
          LODWORD(buf.__vftable) = 67109376;
          HIDWORD(buf.__vftable) = v4;
          LOWORD(buf.__imp_.__imp_) = 1024;
          *(&buf.__imp_.__imp_ + 2) = v5;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Energy scan results: Channel: %2d dBm: %4d ", &buf, 0xEu);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v7 = *a1;
    boost::signals2::detail::signal_impl<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::EnergyScanResultEntry const&)>,boost::signals2::mutex>::operator()(*(RcpHostContext::sRcpHostContext + 232), &v7);
  }

  else
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.__vftable) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Energy scan done, return", &buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    if (mEnergyScanCmdApiData)
    {
      v6 = *(mEnergyScanCmdApiData + 24);
      if (!v6)
      {
        std::runtime_error::runtime_error(&buf, "call to empty boost::function");
        buf.__vftable = off_1004C1548;
        boost::throw_exception<boost::bad_function_call>(&buf);
      }

      (*((v6 & 0xFFFFFFFFFFFFFFFELL) + 8))(mEnergyScanCmdApiData + 32, 0);
      TaskQueueWrapper::pop_front(RcpHostContext::sRcpHostContext);
      mEnergyScanCmdApiData = 0;
    }
  }
}

void HostInterpreter::HandleActiveScanResultFromBeacon(uint64_t a1)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v3 = logging_obg;
  if (a1)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Net Scan results:", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v4 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v4)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = (*(a1 + 57) >> 6) & 1;
        v6 = *(a1 + 50);
        v7 = *(a1 + 54);
        v8 = *(a1 + 55);
        v9 = *(a1 + 56);
        *buf = 67110402;
        *&buf[4] = v5;
        *&buf[8] = 1024;
        *&buf[10] = v6;
        *&buf[14] = 1024;
        LODWORD(v21) = v7;
        WORD2(v21) = 1024;
        *(&v21 + 6) = v8;
        WORD5(v21) = 1024;
        HIDWORD(v21) = v9;
        v22 = 2080;
        v23[0] = a1 + 8;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Joinable: %d PAN: 0x%04x Channel: %2d dBm: %3d LQI: %3d Network Name: %-16s", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v10 = *(a1 + 25);
    v11 = strlen((a1 + 8));
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v19) = v11;
    if (v11)
    {
      memcpy(&__dst, (a1 + 8), v11);
      *(&__dst + v12) = 0;
      v13 = *(a1 + 50);
      v14 = *(a1 + 54);
      v15 = *(a1 + 57);
      v16 = SHIBYTE(v19);
      if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      v13 = *(a1 + 50);
      v14 = *(a1 + 54);
      v15 = *(a1 + 57);
      v16 = SHIBYTE(v19);
      if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
LABEL_22:
        *buf = __dst;
        *&v21 = v19;
LABEL_26:
        *(&v21 + 1) = v10;
        v22 = v13;
        LOBYTE(v23[0]) = v14;
        BYTE1(v23[0]) = (v15 & 0x40) != 0;
        BYTE2(v23[0]) = 0x80;
        BYTE4(v23[0]) = 0;
        *(v23 + 5) = 0;
        v24 = 0;
        v25 = 0;
        if (v16 < 0)
        {
          operator delete(__dst);
        }

        WORD1(v23[0]) = *(a1 + 55);
        *(v23 + 5) = *a1;
        boost::signals2::detail::signal_impl<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::operator()(*(RcpHostContext::sRcpHostContext + 208), buf);
        if (SBYTE7(v21) < 0)
        {
          operator delete(*buf);
        }

        return;
      }
    }

    std::string::__init_copy_ctor_external(buf, __dst, *(&__dst + 1));
    goto LABEL_26;
  }

  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Active scan done, return", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (mNetScanCmdApiData)
  {
    v17 = *(mNetScanCmdApiData + 24);
    if (!v17)
    {
      std::runtime_error::runtime_error(buf, "call to empty boost::function");
      *buf = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(buf);
    }

    (*((v17 & 0xFFFFFFFFFFFFFFFELL) + 8))(mNetScanCmdApiData + 32, 0);
    TaskQueueWrapper::pop_front(RcpHostContext::sRcpHostContext);
    mNetScanCmdApiData = 0;
  }
}

void sub_10014782C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HostInterpreter::setScanSessionPriority(HostInterpreter *this, int a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v5 = logging_obg;
  if (a2)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 67109120;
        v8 = 1;
        v6 = "Set HPScan=[%d]";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, &v7, 8u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

LABEL_14:
    [PowerEventHandler_Rcp init:];
    goto LABEL_15;
  }

  if (!logging_obg)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 67109120;
    v8 = 0;
    v6 = "Reset HPScan=[%d]";
    goto LABEL_10;
  }

LABEL_15:
  otThreadSetScanHighPriority(*(this + 28), a2);
  otThreadSetCoexConfigInfo(*(this + 28));
}

uint64_t HostInterpreter::ProcessDiscoverScanForCurrentNetwork(HostInterpreter *this, int a2)
{
  Channel = otLinkGetChannel(*(this + 28));
  PanId = otLinkGetPanId(*(this + 28));
  v6 = *(this + 28);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    byte_10052D769 = 0;
    if (a2)
    {
      HostInterpreter::setScanSessionPriority(this, 1);
    }
  }

  _MergedGlobals_12 = 0;
  otThreadGetExtendedPanId(*(this + 28));
  current_nw_xpanid = 0;
  v8 = *v7;
  current_nw_xpanid = v8 << 8;
  v9 = v7[1] | (v8 << 8);
  current_nw_xpanid = v9 << 8;
  v10 = v7[2] | (v9 << 8);
  current_nw_xpanid = v10 << 8;
  v11 = v7[3] | ((v10 & 0xFFFFFF) << 8);
  current_nw_xpanid = v11 << 8;
  v12 = v7[4] | ((v11 & 0x7FFFFFFFFFFFFFLL) << 8);
  current_nw_xpanid = v12 << 8;
  v13 = v7[5] | ((v12 & 0x7FFFFFFFFFFFFFLL) << 8);
  current_nw_xpanid = v13 << 8;
  current_nw_xpanid = (v7[6] | ((v13 & 0x7FFFFFFFFFFFFFLL) << 8)) << 8;
  current_nw_xpanid = v7[7] | current_nw_xpanid;
  otThreadGetNetworkName(*(this + 28));
  current_network_name = v14;
  v15 = otThreadDiscover(*(this + 28), 1 << Channel, PanId, 0, 0, HostInterpreter::HandleResultOfDiscoverScanForCurrentNetwork, this);
  if (!v15)
  {
    v19 = *(this + 28);
    if (otPlatRadioGetRcp2Vendor2Enabled())
    {
      byte_10052D769 = 1;
    }

    otLinkSetDiscoverScanDutyCycle(*(this + 28), 1);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!logging_obg)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v16 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!logging_obg)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

LABEL_15:
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!logging_obg)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v17 = v16;
  if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

  v22 = 136315394;
  v23 = "ProcessDiscoverScanForCurrentNetwork";
  v24 = 1024;
  v25 = v15;
  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Fail to start the dsicover scan, error = %d", &v22, 0x12u);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!logging_obg)
  {
LABEL_20:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    return v15;
  }

LABEL_16:
  v20 = logging_obg;
  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v22 = 136315906;
    v23 = "ProcessDiscoverScanForCurrentNetwork";
    v24 = 1024;
    v25 = PanId;
    v26 = 1024;
    v27 = Channel;
    v28 = 1024;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s for panid = 0x%x, channel = %d, error = %d", &v22, 0x1Eu);
  }

  return v15;
}

void HostInterpreter::HandleResultOfDiscoverScanForCurrentNetwork(uint64_t *a1, const char *a2)
{
  if (a2)
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 2);
    v6 = *(a2 + 3);
    v7 = *(a2 + 4);
    v8 = *(a2 + 5);
    v9 = *(a2 + 6);
    v25 = *(a2 + 7);
    v10 = *(a2 + 32) | (((*(a2 + 30) << 8) | (((((*(a2 + 26) << 8) | (*(a2 + 25) << 16) | *(a2 + 27)) << 16) | (*(a2 + 28) << 8) | *(a2 + 29)) << 16) | *(a2 + 31)) << 8);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v12 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a2 + 57);
        v14 = *(a2 + 25);
        v15 = *(a2 + 54);
        v16 = a2[55];
        v17 = *(a2 + 56);
        *buf = 136317698;
        *&buf[4] = "HandleResultOfDiscoverScanForCurrentNetwork";
        *&buf[12] = 1024;
        *&buf[14] = (v13 >> 6) & 1;
        v29 = 1024;
        v30 = v14;
        v31 = 1024;
        v32 = v15;
        v33 = 1024;
        v34 = v16;
        v35 = 1024;
        v36 = v17;
        v37 = 2080;
        v38 = (a2 + 8);
        v39 = 2048;
        v40 = v10;
        v41 = 2048;
        v42 = v25 | (((v8 << 8) | (((((v4 << 8) | (v3 << 16) | v5) << 16) | (v6 << 8) | v7) << 16) | v9) << 8);
        v43 = 2048;
        v44 = current_nw_xpanid;
        v45 = 2080;
        v46 = current_network_name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Joinable: %d PAN: 0x%04x Channel: %2d RSSI dBm: %3d LQI: %3d Network Name: %-16s, ExtPAN: 0x%llx eMAC: 0x%llx, Current NW ExtPAN: 0x%llx, Current NW Name: %-16s", buf, 0x5Cu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    if (v10 == current_nw_xpanid && !strcmp(a2 + 8, current_network_name))
    {
      _MergedGlobals_12 = 1;
    }
  }

  else
  {
    v19 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v19)
    {
      v20 = v19;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = _MergedGlobals_12;
        LinkMode = otThreadGetLinkMode(*(HostInterpreter::sHostInterpreter + 224));
        *buf = 136315650;
        *&buf[4] = "HandleResultOfDiscoverScanForCurrentNetwork";
        *&buf[12] = 1024;
        *&buf[14] = v21;
        v29 = 1024;
        v30 = ((~LinkMode & 6) == 0) & (LinkMode ^ 1);
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s scan done, return, routerFoundOnCurrentNetwork = %d, isSleepyRouter = %d", buf, 0x18u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    if (_MergedGlobals_12 == 1)
    {
      v23 = otThreadGetLinkMode(*(HostInterpreter::sHostInterpreter + 224));
      if ((~v23 & 6) == 0 && (v23 & 1) == 0)
      {
        RcpHostContext::get_rcp_state(RcpHostContext::sRcpHostContext, buf);
        v27 = 11;
        strcpy(__p, "ReceivedAdv");
        operator new();
      }
    }

    v24 = a1[28];
    if (otPlatRadioGetRcp2Vendor2Enabled())
    {
      byte_10052D769 = 0;
      if (otThreadGetScanHighPriority(a1[28]))
      {
        HostInterpreter::setScanSessionPriority(a1, 0);
      }
    }

    otLinkSetDiscoverScanDutyCycle(a1[28], 0);
  }
}

uint64_t HostInterpreter::ProcessUpdateLeaderInfo(HostInterpreter *this)
{
  v2 = otThreadGetLeaderRouterId(*(this + 28)) << 10;
  DeviceRole = otThreadGetDeviceRole(*(this + 28));
  v4 = v2 & 0xFC00;
  if (*(this + 76) == v4)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v6 = logging_obg;
      result = syslog_is_the_mask_enabled(7);
      if (result)
      {
        result = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          HostInterpreter::ProcessUpdateLeaderInfo(this + 76);
          return 0;
        }
      }

      return result;
    }

    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (DeviceRole == 4)
  {
    ExtendedAddress = otLinkGetExtendedAddress(*(this + 28));
    if (ExtendedAddress)
    {
      *(this + 154) = *ExtendedAddress;
    }

    *(this + 76) = otThreadGetRloc16(*(this + 28));
    v9 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v9)
    {
      v10 = v9;
      result = syslog_is_the_mask_enabled(7);
      if (result)
      {
        result = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          HostInterpreter::ProcessUpdateLeaderInfo(this + 76);
          return 0;
        }
      }

      return result;
    }

    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

LABEL_21:
    [PowerEventHandler_Rcp init:];
    return 0;
  }

  v17 = 0;
  do
  {
    if (otThreadGetNextNeighborInfo(*(this + 28), &v17, &v22))
    {
      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13)
      {
        v14 = v13;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = *(this + 76);
          *buf = 67109376;
          v19 = v4;
          v20 = 1024;
          v21 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "HI:UpdateLeaderInfo Leader rloc16:0x%04x not found in neighbor table, last known leader rloc16:0x%04x, send DIAG.req ", buf, 0xEu);
          v16 = 256;
          if (otThreadGetLeaderRloc(*(this + 28), buf))
          {
            return 0;
          }

          goto LABEL_35;
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
        v16 = 256;
        if (otThreadGetLeaderRloc(*(this + 28), buf))
        {
          return 0;
        }

LABEL_35:
        result = otThreadSendDiagnosticGet(*(this + 28), buf, &v16, 2u, HostInterpreter::HandleDiagnosticGetResponseFromLeader, this);
        if (!result)
        {
          return 0;
        }

        return result;
      }

      v16 = 256;
      if (otThreadGetLeaderRloc(*(this + 28), buf))
      {
        return 0;
      }

      goto LABEL_35;
    }
  }

  while (v23 != v2);
  *(this + 154) = v22;
  *(this + 76) = v2;
  v11 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v11)
  {
    v12 = v11;
    result = syslog_is_the_mask_enabled(6);
    if (result)
    {
      result = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (result)
      {
        *buf = 67109120;
        v19 = v23;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "HI:UpdateLeaderInfo Leader rloc16:0x%04x found in neighbor table", buf, 8u);
        return 0;
      }
    }

    return result;
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  [PowerEventHandler_Rcp init:];
  return 0;
}

std::string *HostInterpreter::GetLinkLocalAddr@<X0>(unint64_t a1@<X1>, std::string *a2@<X8>)
{
  v4 = BYTE3(a1);
  v5 = HIBYTE(a1);
  *__str = *"fe80:0:0:0";
  *&__str[15] = unk_10044790F;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  snprintf(__str, 0x1FuLL, "%s:%02x%02x", __str, a1 ^ 2, BYTE1(a1));
  snprintf(__str, 0x1FuLL, "%s:%02x%02x", __str, BYTE2(a1), v4);
  snprintf(__str, 0x1FuLL, "%s:%02x%02x", __str, BYTE4(a1), BYTE5(a1));
  snprintf(__str, 0x1FuLL, "%s:%02x%02x", __str, BYTE6(a1), v5);
  return std::string::assign(a2, __str);
}

void sub_1001486B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessDiagGetSingleHopPeerMeshLocalIPAddr(HostInterpreter *this)
{
  __p[0] = 0;
  __p[1] = 0;
  v30 = 0;
  v28 = 2049;
  v27 = 0;
  LeaderRouterId = otThreadGetLeaderRouterId(*(this + 28));
  Rloc16 = otThreadGetRloc16(*(this + 28));
  DeviceRole = otThreadGetDeviceRole(*(this + 28));
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "ProcessDiagGetSingleHopPeerMeshLocalIPAddr";
      *&buf[12] = 1024;
      *&buf[14] = (LeaderRouterId << 10) & 0xFC00;
      *&buf[18] = 2080;
      *&buf[20] = otThreadDeviceRoleToString(DeviceRole);
      *&buf[28] = 1024;
      *v34 = Rloc16;
      _os_log_debug_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_DEBUG, "%s: parentRloc16 = 0x%x, dutRole = %s, dutRloc16 = 0x%x", buf, 0x22u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v6 = *(this + 28);
  if ((*(v6 + 91291) & 2) != 0 || otThreadGetParentInfo(v6, &v47))
  {
    v7 = 0;
    while (!otThreadGetNextNeighborInfo(*(this + 28), &v27, &v49))
    {
      v8 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v8)
      {
        if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          if ((v51 & 8) != 0)
          {
            v9 = 67;
          }

          else
          {
            v9 = 82;
          }

          *buf = 136317698;
          *&buf[4] = "ProcessDiagGetSingleHopPeerMeshLocalIPAddr";
          *&buf[12] = 1024;
          *&buf[14] = v9;
          *&buf[18] = 1024;
          *&buf[20] = v50;
          *&buf[24] = 1024;
          *&buf[26] = v49;
          *v34 = 1024;
          *&v34[2] = BYTE1(v49);
          v35 = 1024;
          v36 = BYTE2(v49);
          v37 = 1024;
          v38 = BYTE3(v49);
          v39 = 1024;
          v40 = BYTE4(v49);
          v41 = 1024;
          v42 = BYTE5(v49);
          v43 = 1024;
          v44 = BYTE6(v49);
          v45 = 1024;
          v46 = HIBYTE(v49);
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s: Fetch MLE ID %3c  | 0x%04x | %02X%02X%02X%02X%02X%02X%02X%02X", buf, 0x48u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "com.apple.wpantund.ncp";
        *&buf[12] = 2080;
        *&buf[14] = "default";
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
      }

      LinkMode = otThreadGetLinkMode(*(this + 28));
      if ((LinkMode & 2) != 0 && (LinkMode & 1) != 0 && (v51 & 8) != 0)
      {
        v11 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v11)
        {
          if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            if ((v51 & 8) != 0)
            {
              v12 = 67;
            }

            else
            {
              v12 = 82;
            }

            *buf = 136317698;
            *&buf[4] = "ProcessDiagGetSingleHopPeerMeshLocalIPAddr";
            *&buf[12] = 1024;
            *&buf[14] = v12;
            *&buf[18] = 1024;
            *&buf[20] = v50;
            *&buf[24] = 1024;
            *&buf[26] = v49;
            *v34 = 1024;
            *&v34[2] = BYTE1(v49);
            v35 = 1024;
            v36 = BYTE2(v49);
            v37 = 1024;
            v38 = BYTE3(v49);
            v39 = 1024;
            v40 = BYTE4(v49);
            v41 = 1024;
            v42 = BYTE5(v49);
            v43 = 1024;
            v44 = BYTE6(v49);
            v45 = 1024;
            v46 = HIBYTE(v49);
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s: Avoid Sleepy accessory %3c  | Rloc: 0x%04x | Extaddr: %02X%02X%02X%02X%02X%02X%02X%02X", buf, 0x48u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "com.apple.wpantund.ncp";
          *&buf[12] = 2080;
          *&buf[14] = "default";
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
        }
      }

      else
      {
        HostInterpreter::GetLinkLocalAddr(v49, buf);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *buf;
        v30 = *&buf[16];
        if (buf[23] >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = *buf;
        }

        v14 = otIp6AddressFromString(v13, v26);
        if (v14)
        {
          v20 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (!v20)
          {
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_100;
            }

            goto LABEL_80;
          }

          if (!syslog_is_the_mask_enabled(4) || !os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_100;
          }

          v21 = __p;
          if (v30 < 0)
          {
            v21 = __p[0];
          }

          goto LABEL_86;
        }

        v15 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v15)
        {
          if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            HostInterpreter::ProcessDiagGetSingleHopPeerMeshLocalIPAddr(v31, &v32, v15);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "com.apple.wpantund.ncp";
          *&buf[12] = 2080;
          *&buf[14] = "default";
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
        }

        HostInterpreter::setRcpSrpSignalMeshLocalAddressTimer(this);
        v16 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v16)
        {
          if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            if (v30 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = "ProcessDiagGetSingleHopPeerMeshLocalIPAddr";
            *&buf[12] = 2080;
            *&buf[14] = v17;
            *&buf[22] = 1024;
            *&buf[24] = v50;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s: get IPAddress List from linklocalAdrr = %s, Rloc = 0x%04x", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "com.apple.wpantund.ncp";
          *&buf[12] = 2080;
          *&buf[14] = "default";
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
        }

        v14 = otThreadSendDiagnosticGet(*(this + 28), v26, &v28, 2u, HostInterpreter::HandleDiagGetSingleHopPeerResponseIPAddr, this);
        ++v7;
        if (v14)
        {
          goto LABEL_100;
        }
      }
    }

    goto LABEL_91;
  }

  v18 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v18)
  {
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      HostInterpreter::ProcessDiagGetSingleHopPeerMeshLocalIPAddr(&v47);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  HostInterpreter::GetLinkLocalAddr(v47, buf);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *buf;
  v30 = *&buf[16];
  if (buf[23] >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = *buf;
  }

  v14 = otIp6AddressFromString(v19, v26);
  if (v14)
  {
    v20 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v20)
    {
      if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = __p;
        if (v30 < 0)
        {
          v21 = __p[0];
        }

LABEL_86:
        *buf = 136315650;
        *&buf[4] = "ProcessDiagGetSingleHopPeerMeshLocalIPAddr";
        *&buf[12] = 2080;
        *&buf[14] = v21;
        *&buf[22] = 1024;
        *&buf[24] = v14;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: address conversion failure linklocalAdrr[%s] error[%d]", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
LABEL_80:
      [PowerEventHandler_Rcp init:];
    }
  }

  else
  {
    HostInterpreter::setRcpSrpSignalMeshLocalAddressTimer(this);
    v22 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v22)
    {
      if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = __p;
        if (v30 < 0)
        {
          v23 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "ProcessDiagGetSingleHopPeerMeshLocalIPAddr";
        *&buf[12] = 2080;
        *&buf[14] = v23;
        *&buf[22] = 1024;
        *&buf[24] = v48;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s: get IPAddress List from linklocalAdrr = %s, Rloc = 0x%04x", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v14 = otThreadSendDiagnosticGet(*(this + 28), v26, &v28, 2u, HostInterpreter::HandleDiagGetSingleHopPeerResponseIPAddr, this);
    if (!v14)
    {
      v7 = 1;
LABEL_91:
      v24 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v24)
      {
        if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          HostInterpreter::ProcessDiagGetSingleHopPeerMeshLocalIPAddr();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = 23;
      }
    }
  }

LABEL_100:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  return v14;
}

void sub_100149100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    v24 = a1;
    operator delete(__p);
    a1 = v24;
  }

  _Unwind_Resume(a1);
}

size_t HostInterpreter::external_route_pref_to_string@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if ((a1 + 1) > 2)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_1004C5250[a1 + 1];
  }

  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, v3, result);
    a2[v5] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t boost::function2<void,int,boost::any const&>::operator()(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

uint64_t HostInterpreter::get_num_routers(HostInterpreter *this)
{
  v4 = 0;
  v2 = 0;
  if (!otThreadGetNextNeighborInfo(*(this + 28), &v4, v5))
  {
    LODWORD(v2) = 0;
    do
    {
      if ((v5[54] & 8) != 0)
      {
        v2 = v2;
      }

      else
      {
        v2 = (v2 + 1);
      }
    }

    while (!otThreadGetNextNeighborInfo(*(this + 28), &v4, v5));
  }

  return v2;
}

void boost::any::any<std::map<std::string,boost::any> &>()
{
  operator new();
}

{
  operator new();
}

void HostInterpreter::update_on_mesh_prefixes(HostInterpreter *this)
{
  v35 = 0;
  v29 = 0;
  v30 = 0;
  v28 = &v29;
  v2 = (this + 64);
  if (*(this + 7) != (this + 64))
  {
    operator new();
  }

  v3 = 0;
  while (!otNetDataGetNextOnMeshPrefix(*(this + 28), &v35, &v31))
  {
    IPv6Prefix::IPv6Prefix(&v26, &v31, v32);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    ++v3;
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        IPv6Prefix::to_string(&v26, __p);
        v5 = __p[23] >= 0 ? __p : *__p;
        *buf = 67109378;
        *&buf[4] = v3;
        LOWORD(v39[0]) = 2080;
        *(v39 + 2) = v5;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "count[%d] On Mesh Prefix:: [%s]", buf, 0x12u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "com.apple.wpantund.ncp";
      *&__p[12] = 2080;
      *&__p[14] = "default";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", __p, 0x16u);
    }

    v6 = (v33 & 3) << 14;
    if (v6 == 49152)
    {
      v7 = -64;
    }

    else
    {
      v7 = 0;
    }

    if (v6 == 0x4000)
    {
      v8 = 64;
    }

    else
    {
      v8 = v7;
    }

    *buf = 0;
    *&buf[4] = (v33 >> 5) & 2 | ((v33 & 0x80) != 0) | (v33 >> 3) & 4 | (v33 >> 1) & 8 | (16 * ((v33 & 8) != 0)) & 0xDF | (32 * ((v33 & 4) != 0)) | v8;
    buf[6] = HIBYTE(v33) & 1;
    LOWORD(v39[0]) = v34;
    v9 = v29;
    if (v29)
    {
      v10 = &v29;
      do
      {
        v11 = IPv6Prefix::operator<(v9 + 28, &v26);
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0;
        }

        if (!v11)
        {
          v10 = v9;
        }

        v9 = v9[v12];
      }

      while (v9);
      if (v10 != &v29)
      {
        v13 = v29;
        v14 = &v29;
        if (v29)
        {
          v14 = &v29;
          do
          {
            v15 = IPv6Prefix::operator<(&v26, v13 + 28);
            if (v15)
            {
              v16 = 0;
            }

            else
            {
              v16 = 1;
            }

            if (v15)
            {
              v14 = v13;
            }

            v13 = v13[v16];
          }

          while (v13);
        }

        if (v10 != v14)
        {
          while (1)
          {
            v17 = OnMeshPrefixEntry::operator==((v10 + 6), buf);
            v18 = v10[1];
            if (v17)
            {
              break;
            }

            if (v18)
            {
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v19 = v10[2];
                v20 = *v19 == v10;
                v10 = v19;
              }

              while (!v20);
            }

            v10 = v19;
            if (v19 == v14)
            {
              goto LABEL_56;
            }
          }

          v21 = v10;
          if (v18)
          {
            do
            {
              v22 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v22 = v21[2];
              v20 = *v22 == v21;
              v21 = v22;
            }

            while (!v20);
          }

          if (v28 == v10)
          {
            v28 = v22;
          }

          --v30;
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v29, v10);
          operator delete(v10);
        }
      }
    }

LABEL_56:
    if (v2 == HostInterpreter::find_prefix_entry(this, &v26, buf))
    {
      *__p = v26;
      *&__p[16] = v27;
      *&__p[20] = *buf;
      v37 = v39[0];
      operator new();
    }
  }

  v23 = v28;
  if (v28 != &v29)
  {
    do
    {
      if (!*(v23 + 12))
      {
        HostInterpreter::on_mesh_prefix_was_removed(this, 0, (v23 + 28), *(v23 + 44), *(v23 + 52), *(v23 + 54), *(v23 + 28));
      }

      v24 = v23[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v23[2];
          v20 = *v25 == v23;
          v23 = v25;
        }

        while (!v20);
      }

      v23 = v25;
    }

    while (v25 != &v29);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&v28, v29);
}

void sub_100149EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19)
{
  operator delete(v19);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&a18, a19);
  _Unwind_Resume(a1);
}

void HostInterpreter::update_off_mesh_routes(HostInterpreter *this)
{
  v34 = 0;
  v28 = 0;
  v29 = 0;
  v27 = &v28;
  v2 = (this + 88);
  if (*(this + 10) != (this + 88))
  {
    operator new();
  }

  while (!otNetDataGetNextRoute(*(this + 28), &v34, &v30))
  {
    IPv6Prefix::IPv6Prefix(&v25, &v30, v31);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        IPv6Prefix::to_string(&v25, __p);
        v4 = __p[23] >= 0 ? __p : *__p;
        *buf = 136315138;
        *&buf[4] = v4;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Off Mesh Prefix::[%s]", buf, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "com.apple.wpantund.ncp";
      *&__p[12] = 2080;
      *&__p[14] = "default";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", __p, 0x16u);
    }

    v5 = (v33 & 3) << 6;
    if (v5 == 192)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == 64)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    *buf = 0;
    *&buf[4] = v7;
    buf[8] = (v33 & 8) != 0;
    *&buf[10] = v32;
    buf[12] = (v33 & 4) != 0;
    buf[13] = (v33 & 0x10) != 0;
    v8 = v28;
    if (v28)
    {
      v9 = &v28;
      do
      {
        v10 = IPv6Prefix::operator<(v8 + 28, &v25);
        if (v10)
        {
          v11 = 1;
        }

        else
        {
          v11 = 0;
        }

        if (!v10)
        {
          v9 = v8;
        }

        v8 = v8[v11];
      }

      while (v8);
      if (v9 != &v28)
      {
        v12 = v28;
        v13 = &v28;
        if (v28)
        {
          v13 = &v28;
          do
          {
            v14 = IPv6Prefix::operator<(&v25, v12 + 28);
            if (v14)
            {
              v15 = 0;
            }

            else
            {
              v15 = 1;
            }

            if (v14)
            {
              v13 = v12;
            }

            v12 = v12[v15];
          }

          while (v12);
        }

        if (v9 != v13)
        {
          while (1)
          {
            v16 = OffMeshRouteEntry::operator==((v9 + 6), buf);
            v17 = v9[1];
            if (v16)
            {
              break;
            }

            if (v17)
            {
              do
              {
                v18 = v17;
                v17 = *v17;
              }

              while (v17);
            }

            else
            {
              do
              {
                v18 = v9[2];
                v19 = *v18 == v9;
                v9 = v18;
              }

              while (!v19);
            }

            v9 = v18;
            if (v18 == v13)
            {
              goto LABEL_55;
            }
          }

          v20 = v9;
          if (v17)
          {
            do
            {
              v21 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v21 = v20[2];
              v19 = *v21 == v20;
              v20 = v21;
            }

            while (!v19);
          }

          if (v27 == v9)
          {
            v27 = v21;
          }

          --v29;
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v28, v9);
          operator delete(v9);
        }
      }
    }

LABEL_55:
    if (v2 == HostInterpreter::find_route_entry(this, &v25, buf))
    {
      *__p = v25;
      *&__p[16] = v26;
      *&__p[20] = *buf;
      operator new();
    }
  }

  v22 = v27;
  if (v27 != &v28)
  {
    do
    {
      if (!*(v22 + 12))
      {
        HostInterpreter::route_was_removed(this, 0, (v22 + 28), *(v22 + 44), *(v22 + 13), *(v22 + 56), *(v22 + 29), *(v22 + 60));
      }

      v23 = v22[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v22[2];
          v19 = *v24 == v22;
          v22 = v24;
        }

        while (!v19);
      }

      v22 = v24;
    }

    while (v24 != &v28);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&v27, v28);
}

void sub_10014A6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17)
{
  operator delete(v17);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::refresh_routes_on_interface(HostInterpreter *this)
{
  v34 = 256;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "RefreshingRoutes", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v4 = (this + 104);
  v5 = *(this + 13);
  v6 = (this + 112);
  if (v5 != (this + 112))
  {
    while (1)
    {
      while (HostInterpreter::should_add_route_on_interface(this, v5 + 28, &v34) && v34 == *(v5 + 12))
      {
        v8 = v5[1];
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
            v9 = v5[2];
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
        if (v9 == v6)
        {
          goto LABEL_36;
        }
      }

      v11 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v11)
      {
        break;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 136315394;
      *&buf[4] = "com.apple.wpantund.ncp";
      v36 = 2080;
      v37 = "default";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
      v13 = v5[1];
      v14 = v5;
      if (v13)
      {
        do
        {
LABEL_29:
          v15 = v13;
          v13 = *v13;
        }

        while (v13);
        goto LABEL_34;
      }

      do
      {
LABEL_32:
        v15 = v14[2];
        v10 = *v15 == v14;
        v14 = v15;
      }

      while (!v10);
LABEL_34:
      if (*v4 == v5)
      {
        *v4 = v15;
      }

      v7 = *(this + 14);
      --*(this + 15);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, v5);
      operator delete(v5);
      v5 = *(this + 13);
      if (v5 == v6)
      {
        goto LABEL_36;
      }
    }

    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      InterfaceRouteEntry::get_description((v5 + 6), (v5 + 28), 0, buf);
      v12 = buf;
      if (v38 < 0)
      {
        v12 = *buf;
      }

      *v39 = 136315138;
      v40 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "InterfaceRoutes:Rmv %s", v39, 0xCu);
      if (v38 < 0)
      {
        operator delete(*buf);
        v13 = v5[1];
        v14 = v5;
        if (v13)
        {
          goto LABEL_29;
        }

        goto LABEL_32;
      }
    }

LABEL_28:
    v13 = v5[1];
    v14 = v5;
    if (v13)
    {
      goto LABEL_29;
    }

    goto LABEL_32;
  }

LABEL_36:
  v16 = *(this + 10);
  v17 = (this + 88);
  while (v16 != v17)
  {
    v18 = v16;
    v19 = (v16 + 28);
    v20 = *v17;
    v16 = (this + 88);
    if (*v17)
    {
      v16 = (this + 88);
      do
      {
        v21 = IPv6Prefix::operator<(v19, (v20 + 28));
        if (v21)
        {
          v22 = 0;
        }

        else
        {
          v22 = 8;
        }

        if (v21)
        {
          v16 = v20;
        }

        v20 = *&v20[v22];
      }

      while (v20);
    }

    if (HostInterpreter::should_add_route_on_interface(this, v19, &v34))
    {
      for (i = *v6; i; i = *i)
      {
        if ((IPv6Prefix::operator<(v19, i + 28) & 1) == 0)
        {
          if (!IPv6Prefix::operator<(i + 28, v19))
          {
            goto LABEL_38;
          }

          ++i;
        }
      }

      v24 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v24)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          OffMeshRouteEntry::get_description((v18 + 6), v19, 0, buf);
          v25 = buf;
          if (v38 < 0)
          {
            v25 = *buf;
          }

          *v39 = 136315138;
          v40 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "InterfaceRoutes:AddRoute for prefix:%s", v39, 0xCu);
          if (v38 < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "com.apple.wpantund.ncp";
        v36 = 2080;
        v37 = "default";
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
      }

      *buf = v19;
      *(std::__tree<std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::__map_value_compare<IPv6Prefix,std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::less<IPv6Prefix>,true>,std::allocator<std::__value_type<IPv6Prefix,InterfaceRouteEntry>>>::__emplace_unique_key_args<IPv6Prefix,std::piecewise_construct_t const&,std::tuple<IPv6Prefix const&>,std::tuple<>>(this + 104, v19) + 48) = 256;
    }

LABEL_38:
    ;
  }

  v26 = *(this + 7);
  if (v26 != (this + 64))
  {
    do
    {
      if (HostInterpreter::should_add_route_on_interface(this, v26 + 28, &v34))
      {
        for (j = *v6; j; j = *j)
        {
          if ((IPv6Prefix::operator<(v26 + 28, j + 28) & 1) == 0)
          {
            if (!IPv6Prefix::operator<(j + 28, v26 + 28))
            {
              goto LABEL_79;
            }

            ++j;
          }
        }

        v28 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v28)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            OnMeshPrefixEntry::get_description((v26 + 48), (v26 + 28), 0, buf);
            v29 = buf;
            if (v38 < 0)
            {
              v29 = *buf;
            }

            *v39 = 136315138;
            v40 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "InterfaceRoutes:AddRoute for prefix:%s", v39, 0xCu);
            if (v38 < 0)
            {
              operator delete(*buf);
            }
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "com.apple.wpantund.ncp";
          v36 = 2080;
          v37 = "default";
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
        }

        v31 = v34;
        *buf = v26 + 28;
        *(std::__tree<std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::__map_value_compare<IPv6Prefix,std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::less<IPv6Prefix>,true>,std::allocator<std::__value_type<IPv6Prefix,InterfaceRouteEntry>>>::__emplace_unique_key_args<IPv6Prefix,std::piecewise_construct_t const&,std::tuple<IPv6Prefix const&>,std::tuple<>>(this + 104, v26 + 28) + 48) = v31;
        v30 = *(v26 + 1);
        if (!v30)
        {
          do
          {
LABEL_86:
            v32 = *(v26 + 2);
            v10 = *v32 == v26;
            v26 = v32;
          }

          while (!v10);
          goto LABEL_65;
        }
      }

      else
      {
LABEL_79:
        v30 = *(v26 + 1);
        if (!v30)
        {
          goto LABEL_86;
        }
      }

      do
      {
        v32 = v30;
        v30 = *v30;
      }

      while (v30);
LABEL_65:
      v26 = v32;
    }

    while (v32 != (this + 64));
  }

  return HostInterpreter::signal_ipv6route_list_change(this);
}

uint64_t HostInterpreter::get_num_unique_on_mesh_prefixes(HostInterpreter *this)
{
  v12 = 0;
  v8 = 0;
  v9 = 0;
  v7 = &v8;
  while (!otNetDataGetNextOnMeshPrefix(*(this + 28), &v12, &v10))
  {
    IPv6Prefix::IPv6Prefix(&v6, &v10, v11);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        IPv6Prefix::to_string(&v6, __p);
        if (v16 >= 0)
        {
          v3 = __p;
        }

        else
        {
          v3 = *__p;
        }

        *buf = 136315138;
        v18 = v3;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "OnMeshPrefix:[%s]", buf, 0xCu);
        if (v16 < 0)
        {
          operator delete(*__p);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "com.apple.wpantund.ncp";
      v14 = 2080;
      v15 = "default";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", __p, 0x16u);
    }

    IPv6Prefix::to_string(&v6, __p);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v7, __p);
    if (v16 < 0)
    {
      operator delete(*__p);
    }
  }

  v4 = v9;
  std::__tree<std::string>::destroy(&v7, v8);
  return v4;
}

uint64_t HostInterpreter::get_num_unique_off_mesh_routes(HostInterpreter *this)
{
  v12 = 0;
  v8 = 0;
  v9 = 0;
  v7 = &v8;
  while (!otNetDataGetNextRoute(*(this + 28), &v12, &v10))
  {
    IPv6Prefix::IPv6Prefix(&v6, &v10, v11);
    IPv6Prefix::to_string(&v6, __p);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v7, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v2 = v9;
  std::__tree<std::string>::destroy(&v7, v8);
  return v2;
}

void sub_10014B18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char *a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::__tree<std::string>::destroy(&a19, a20);
    _Unwind_Resume(a1);
  }

  std::__tree<std::string>::destroy(&a19, a20);
  _Unwind_Resume(a1);
}

void HostInterpreter::find_and_erase_service_entry(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7)
{
  v8 = *a7;
  v7 = a7[1];
  if (*a7 != v7)
  {
    v12 = 0;
    v13 = *a4;
    v14 = *(a4 + 8) - *a4;
    v15 = *a5;
    v16 = *(a5 + 8) - *a5;
    while (1)
    {
      if (*(v8 + v12 + 8) == a2 && *(v8 + v12 + 12) == a3)
      {
        v17 = *(v8 + v12 + 16);
        if (*(v8 + v12 + 24) - v17 == v14 && !memcmp(v17, v13, v14))
        {
          v18 = v8 + v12;
          if (*(v8 + v12 + 72) == a6)
          {
            v19 = *(v18 + 48);
            if (*(v18 + 56) - v19 == v16 && !memcmp(v19, v15, v16))
            {
              break;
            }
          }
        }
      }

      v12 += 80;
      if (v8 + v12 == v7)
      {
        return;
      }
    }

    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v21 = logging_obg;
      v22 = a7;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        (*(*(v8 + v12) + 16))(__p, v8 + v12);
        v23 = v38 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v40 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "RemoveSrvc:%s", buf, 0xCu);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v22 = a7;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }
    }

    v24 = (v8 + v12);
    v25 = v22[1];
    if ((v8 + v12 + 80) != v25)
    {
      v26 = *v22;
      v27 = *v22 + v8 + v12;
      v28 = -*v22;
      do
      {
        v29 = v27 + v28;
        *(v27 + v28 + 8) = *(v27 + v28 + 88);
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v27 + v28 + 16), *(v27 + v28 + 96), *(v27 + v28 + 104), *(v27 + v28 + 104) - *(v27 + v28 + 96));
        *(v29 + 40) = *(v29 + 120);
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v29 + 48), *(v29 + 128), *(v29 + 136), *(v29 + 136) - *(v29 + 128));
        v30 = v27 + v28;
        *(v30 + 72) = *(v27 + v28 + 152);
        *(v30 + 74) = *(v27 + v28 + 154);
        v27 += 80;
      }

      while ((v27 + v28 + 80) != v25);
      v25 = v22[1];
      v24 = (v27 - v26);
    }

    if (v25 != v24)
    {
      v31 = v25 - 10;
      v32 = v31;
      v33 = v31;
      do
      {
        v34 = *v33;
        v33 -= 10;
        (*v34)(v32);
        v31 -= 10;
        v35 = v32 == v24;
        v32 = v33;
      }

      while (!v35);
    }

    v22[1] = v24;
  }
}

uint64_t HostInterpreter::find_service_entry(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7)
{
  v7 = *a7;
  v8 = a7[1];
  if (*a7 == v8)
  {
    return 0;
  }

  v12 = *a4;
  v13 = *(a4 + 8) - *a4;
  v14 = *a5;
  v15 = *(a5 + 8) - *a5;
  while (1)
  {
    if (*(v7 + 8) == a2 && *(v7 + 12) == a3)
    {
      v16 = *(v7 + 16);
      if (*(v7 + 24) - v16 == v13 && !memcmp(v16, v12, v13) && *(v7 + 72) == a6)
      {
        v17 = *(v7 + 48);
        if (v15 == *(v7 + 56) - v17 && !memcmp(v14, v17, v15))
        {
          break;
        }
      }
    }

    v7 += 80;
    if (v7 == v8)
    {
      return 0;
    }
  }

  return 1;
}

void ServiceEntry::~ServiceEntry(ServiceEntry *this)
{
  *this = off_1004C5358;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = off_1004C52F8;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  *this = off_1004C5358;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = off_1004C52F8;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  operator delete();
}

void HostInterpreter::GetLeaderReelectCountersAsValMap(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  operator new();
}

void sub_10014BB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v17, *(v17 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetNeighborsCountAsValMap(int a1@<W3>, int a2@<W4>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (a1)
  {
    *(&v26.__r_.__value_.__s + 23) = 1;
    LOWORD(v26.__r_.__value_.__l.__data_) = 91;
    v7 = std::string::insert(&v26, 0, "ConnectedChildCount");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v25, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v25;
    }

    else
    {
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v27, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v24 = 1;
    strcpy(__s, "]");
    v13 = std::string::append(&v28, __s, 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v30 = v13->__r_.__value_.__r.__words[2];
    v29 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v24 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      operator delete(v26.__r_.__value_.__l.__data_);
LABEL_13:
      v28.__r_.__value_.__r.__words[0] = &v29;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v29);
      operator new();
    }

LABEL_17:
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    *(&v26.__r_.__value_.__s + 23) = 1;
    LOWORD(v26.__r_.__value_.__l.__data_) = 91;
    v15 = std::string::insert(&v26, 0, "ConnectedRouterCount");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v25, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v25;
    }

    else
    {
      v17 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v25.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v27, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v24 = 1;
    strcpy(__s, "]");
    v21 = std::string::append(&v28, __s, 1uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v30 = v21->__r_.__value_.__r.__words[2];
    v29 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v24 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_28:
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }
    }

    else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }

LABEL_34:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_30:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

LABEL_36:
      operator delete(v26.__r_.__value_.__l.__data_);
LABEL_31:
      v28.__r_.__value_.__r.__words[0] = &v29;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v29);
      operator new();
    }

LABEL_35:
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }
}