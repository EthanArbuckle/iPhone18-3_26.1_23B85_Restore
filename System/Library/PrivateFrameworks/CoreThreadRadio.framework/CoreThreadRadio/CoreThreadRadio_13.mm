void sub_10011D97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::bad_cast a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, std::runtime_error a32, int a33, __int16 a34, char a35, char a36)
{
  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessLeave(HostInterpreter *this, unsigned __int8 a2, char **a3, char *a4)
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
        LODWORD(v36[0]) = 136315138;
        *(v36 + 4) = "ProcessLeave";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Thread Stop Indication sent", v36, 0xCu);
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
            LODWORD(v36[0]) = 136315394;
            *(v36 + 4) = "ProcessLeave";
            WORD6(v36[0]) = 1024;
            *(v36 + 14) = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: otPlatVendorSetVendorThreadStartStop Error: %d", v36, 0x12u);
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
  *&v36[0] = _NSConcreteStackBlock;
  *(&v36[0] + 1) = 0x40000000;
  *&v36[1] = ___ZN15HostInterpreter38clearRcpSrpSignalMeshLocalAddressTimerEv_block_invoke;
  *(&v36[1] + 1) = &__block_descriptor_tmp_39;
  *&v37 = this;
  dispatch_async(v12, v36);
  if (!HostInterpreter::isThreadSessionJoinEnabled(v13))
  {
    goto LABEL_101;
  }

  v14 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v14)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(v36[0]) = 136315138;
      *(v36 + 4) = "ProcessLeave";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Thread Session Join THREAD_SESSION_OFF", v36, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  saveStringValue("threadSessionJoin", "OFF");
  wcm_notify(0, *(this + 184));
  v15 = HostInterpreter::detachIfWedConnectionInProgress(this);
  if (!v15)
  {
LABEL_101:
    HostInterpreter::clearRcpSrpAnycastServiceCovergenceTimer(this);
    HostInterpreter::clearSrpAdvertisedWithoutPrefixTimer(this);
    HostInterpreter::clearRcpSrpUnicastServiceCovergenceTimer(this);
    HostInterpreter::clearSrpPrefixCovergenceTimer(this);
    HostInterpreter::clearChildRoleDetectionTimer(this);
    HostInterpreter::clearRcpSrpServiceABCTimer(this);
    otIp6SetSlaacEnabled(*(this + 28), 0);
    v16 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v16)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LODWORD(v36[0]) = 136315138;
        *(v36 + 4) = "ProcessLeave";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: SLAAC Disabled, Done", v36, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v15 = otThreadSetEnabled(*(this + 28), 0);
    if (!v15)
    {
      v17 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v17)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          LODWORD(v36[0]) = 136315138;
          *(v36 + 4) = "ProcessLeave";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: Thread stop, Done", v36, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v15 = otIp6SetEnabled(*(this + 28), 0);
      if (!v15)
      {
        v31 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v31)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            LODWORD(v36[0]) = 136315138;
            *(v36 + 4) = "ProcessLeave";
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s: Ifconfig down, Done", v36, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        if (otDatasetGetActive(*(this + 28), v36) != 23)
        {
          v32 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v32)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              LOWORD(v44.__vftable) = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "OT Active Dataset present", &v44, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          memset(v36, 0, sizeof(v36));
          v15 = otDatasetSetActive(*(this + 28), v36);
          if (v15)
          {
            goto LABEL_37;
          }

          v34 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v34)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              LOWORD(v44.__vftable) = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Deleted OT Active Dataset", &v44, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }
        }

        if (otDatasetGetPending(*(this + 28), v36) != 23)
        {
          v33 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v33)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              LOWORD(v44.__vftable) = 0;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "OT pending Dataset present", &v44, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          memset(v36, 0, sizeof(v36));
          v15 = otDatasetSetPending(*(this + 28), v36);
          if (v15)
          {
            goto LABEL_37;
          }

          v35 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v35)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              LOWORD(v44.__vftable) = 0;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Deleted OT pending Dataset", &v44, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }
        }

        otLinkRegenerateExAddr(*(this + 28));
        otThreadResetRloc16(*(this + 28));
        otNetDataReset(*(this + 28));
        HostInterpreter::remove_all_address_prefix_route_entries(this, 1);
        v15 = 0;
        v20 = 0;
        v21 = *a4;
        if (*a4)
        {
          goto LABEL_42;
        }

LABEL_40:
        v22 = std::runtime_error::runtime_error(&v44, "call to empty boost::function");
        v44.__vftable = off_1004C1548;
        boost::throw_exception<boost::bad_function_call>(v22);
      }
    }
  }

LABEL_37:
  HostInterpreter::remove_all_address_prefix_route_entries(this, 1);
  HIDWORD(v19) = v15 - 1;
  LODWORD(v19) = v15 - 1;
  v18 = v19 >> 1;
  if (v18 > 6 || ((0x4Du >> v18) & 1) == 0)
  {
    v20 = 1;
    v21 = *a4;
    if (*a4)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v15 = dword_10044816C[v18];
  v20 = dword_100448188[v18];
  v21 = *a4;
  if (!*a4)
  {
    goto LABEL_40;
  }

LABEL_42:
  (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 8, v20);
  v23 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v23)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LODWORD(v44.__vftable) = 136315138;
      *(&v44.__vftable + 4) = "ProcessLeave";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s: Closing settings fd", &v44, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v24 = *(this + 28);
  otPlatSettingsDeinit();
  usleep(0x186A0u);
  v25 = *(this + 28);
  v26 = otPlatVendorResetRCP() == 0;
  v27 = log_get_logging_obg("com.apple.threadradiod", "default");
  v28 = v27;
  if (!v26)
  {
    if (v27)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        LOWORD(v44.__vftable) = 0;
        v29 = "Failed to Reset RCP2 to sleep state";
LABEL_57:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, v29, &v44, 2u);
        goto LABEL_62;
      }

      goto LABEL_62;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

LABEL_61:
    [PowerEventHandler_Rcp init:];
    goto LABEL_62;
  }

  if (!v27)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    LOWORD(v44.__vftable) = 0;
    v29 = "Reset RCP2 to sleep state";
    goto LABEL_57;
  }

LABEL_62:
  power_assertion_n = 0;
  Thread_DeassertPower();
  return v15;
}

uint64_t HostInterpreter::ProcessNetScan(HostInterpreter *this, unsigned __int8 a2, char **a3, char *a4)
{
  v43 = 16;
  strcpy(__s1, "Scan:ChannelMask");
  v6 = *(a4 + 1);
  if (v6)
  {
    v7 = *(a4 + 1);
    do
    {
      v8 = *(v7 + 55);
      if (v8 >= 0)
      {
        v9 = *(v7 + 55);
      }

      else
      {
        v9 = v7[5];
      }

      if (v8 >= 0)
      {
        v10 = (v7 + 4);
      }

      else
      {
        v10 = v7[4];
      }

      if (v9 >= 0x10)
      {
        v11 = 16;
      }

      else
      {
        v11 = v9;
      }

      v12 = memcmp(__s1, v10, v11);
      v13 = v12 < 0;
      if (!v12)
      {
        v13 = v9 > 0x10;
      }

      if (!v13)
      {
        v14 = memcmp(v10, __s1, v11);
        v15 = v9 < 0x10;
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (!v15)
        {
          v43 = 16;
          strcpy(__s1, "Scan:ChannelMask");
          v41.__vftable = __s1;
          v17 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, __s1);
          v18 = v17[7];
          if (v18)
          {
            v19 = (*(*v18 + 16))(v18);
          }

          else
          {
          }

          v20 = (v19[1] & 0x7FFFFFFFFFFFFFFFLL);
          if (v20 != v21 && strcmp(v20, v21))
          {
            v41.__vftable = 0;
            std::bad_cast::bad_cast(&v41);
            v41.__vftable = off_1004C1D50;
            boost::throw_exception<boost::bad_any_cast>();
          }

          v16 = *(v17[7] + 8);
          if (v43 < 0)
          {
            operator delete(*__s1);
          }

          v6 = *(a4 + 1);
          goto LABEL_29;
        }

        ++v7;
      }

      v7 = *v7;
    }

    while (v7);
  }

  v16 = 0;
LABEL_29:
  v43 = 11;
  strcpy(__s1, "Scan:Period");
  if (!v6)
  {
LABEL_48:
    v30 = 0;
    goto LABEL_49;
  }

  while (1)
  {
    v22 = *(v6 + 55);
    if (v22 >= 0)
    {
      v23 = *(v6 + 55);
    }

    else
    {
      v23 = v6[5];
    }

    if (v22 >= 0)
    {
      v24 = (v6 + 4);
    }

    else
    {
      v24 = v6[4];
    }

    if (v23 >= 0xB)
    {
      v25 = 11;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(__s1, v24, v25);
    v27 = v26 < 0;
    if (!v26)
    {
      v27 = v23 > 0xB;
    }

    if (v27)
    {
      goto LABEL_31;
    }

    v28 = memcmp(v24, __s1, v25);
    v29 = v23 < 0xB;
    if (v28)
    {
      v29 = v28 < 0;
    }

    if (!v29)
    {
      break;
    }

    ++v6;
LABEL_31:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_48;
    }
  }

  v43 = 11;
  v41.__vftable = __s1;
  strcpy(__s1, "Scan:Period");
  v35 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, __s1);
  v36 = v35[7];
  if (v36)
  {
    v37 = (*(*v36 + 16))(v36);
  }

  else
  {
  }

  v38 = (v37[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v38 != v39 && strcmp(v38, v39))
  {
    v41.__vftable = 0;
    std::bad_cast::bad_cast(&v41);
    v41.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  v30 = *(v35[7] + 8);
  if (v43 < 0)
  {
    v40 = *(v35[7] + 8);
    operator delete(*__s1);
    v30 = v40;
  }

LABEL_49:
  active = otLinkActiveScan(*(this + 28), v16, v30, HostInterpreter::HandleActiveScanResultFromBeacon, this);
  if (active)
  {
    v32 = *(a4 + 3);
    if (!v32)
    {
      std::runtime_error::runtime_error(__s1, "call to empty boost::function");
      *__s1 = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(__s1);
    }

    (*((v32 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 32, active);
    TaskQueueWrapper::pop_front(RcpHostContext::sRcpHostContext);
  }

  else
  {
    mNetScanCmdApiData = a4;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *__s1 = 67109120;
      *&__s1[4] = active;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "HI:NetScan error = %d", __s1, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return active;
}

void sub_10011E968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::bad_cast a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::bad_cast::~bad_cast(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void HostInterpreter::ProcessPeekCmd(HostInterpreter *this, unsigned __int8 a2, char **a3, unsigned int *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v6 = logging_obg;
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::ProcessPeekCmd();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v12 = 0;
  v7 = *(a4 + 2);
  if (v7 >= 0x400)
  {
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      if (syslog_is_the_mask_enabled(3))
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessPeekCmd();
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    operator new();
  }

  otPlatPeek(__src, &v12, *a4, v7);
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v10 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v10)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = __src[i];
          buf = 67109376;
          *buf_4 = i;
          *&buf_4[4] = 1024;
          *&buf_4[6] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Byte[%d]=%x", &buf, 0xEu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        buf = 136315394;
        *buf_4 = "com.apple.wpantund.ncp";
        *&buf_4[8] = 2080;
        v15 = "default";
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", &buf, 0x16u);
      }
    }

    if (v12)
    {
      operator new();
    }
  }

  operator new();
}

void sub_10011EE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::runtime_error a17)
{
  std::runtime_error::~runtime_error(&a17);
  (*(*v18 + 8))(v18);
  if (v17)
  {
    operator delete(v17);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::ProcessPrefixAdd(HostInterpreter *this, unsigned __int8 a2, char **a3, const in6_addr *a4)
{
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v7 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a4[1].__u6_addr32[1];
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "OnMeshPrefixes: priority %d", buf, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  std::set<PrefixFlag>::set[abi:ne200100](v33, a4[2].__u6_addr8);
  v9 = OnMeshPrefixEntry::encode_flag_set(v33, a4[1].__u6_addr32[1]);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v33, v33[1]);
  IPv6Prefix::IPv6Prefix(&v31, a4, a4[1].__u6_addr8[0]);
  v10 = a4[1].__u6_addr8[8];
  LODWORD(v29) = 2;
  WORD2(v29) = v9;
  BYTE6(v29) = v10;
  LOWORD(v30) = 0;
  IPv6Prefix::to_string(&v31, buf);
  if ((v38 & 0x80000000) == 0)
  {
    v11 = buf;
  }

  else
  {
    v11 = *buf;
  }

  v12 = ot::Utils::CmdLineParser::ParseAsIp6Prefix(v11, v34);
  v13 = v12;
  if (SBYTE3(v38) < 0)
  {
    operator delete(*buf);
    if (v13)
    {
LABEL_12:
      v14 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v14)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessPrefixAdd();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      goto LABEL_52;
    }
  }

  else if (v12)
  {
    goto LABEL_12;
  }

  if ((gSrpModeNetInfo & 1) == 0)
  {
    prefix_entry = HostInterpreter::find_prefix_entry(this, &v31, &v29);
    v19 = prefix_entry;
    if ((this + 64) == prefix_entry)
    {
      *buf = v31;
      v37 = v32;
      v38 = v29;
      v39 = v30;
      operator new();
    }

    v20 = prefix_entry[52] == v9;
    v21 = log_get_logging_obg("com.apple.threadradiod", "default");
    v22 = v21;
    if (v20)
    {
      if (v21)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessPrefixAdd();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v13 = 0;
      v24 = 0;
      v25 = *&a4[3].__u6_addr32[2];
      if (v25)
      {
        goto LABEL_57;
      }

LABEL_55:
      std::runtime_error::runtime_error(buf, "call to empty boost::function");
      *buf = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(buf);
    }

    if (v21)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessPrefixAdd();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    *(v19 + 26) = v9;
  }

  v15 = (v9 >> 6) & 1;
  if ((~v9 & 0xC0) == 0)
  {
    LOWORD(v15) = 3;
  }

  if (a4[1].__u6_addr8[8])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  *(&v35 + 1) = (v9 >> 6) & 0x200 | (__rbit32(v9 & 0x3F) >> 24) | (v9 >> 4) & 0x400 | v16 | *(&v35 + 1) & 0xF800 | v15;
  v13 = otBorderRouterAddOnMeshPrefix(*(this + 28), v34);
  if (v13)
  {
    v17 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v17)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessPrefixAdd();
      }

      goto LABEL_52;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

LABEL_51:
    [PowerEventHandler_Rcp init:];
    goto LABEL_52;
  }

  v13 = otBorderRouterRegister(*(this + 28));
  if (!v13)
  {
    v24 = 0;
    v25 = *&a4[3].__u6_addr32[2];
    if (v25)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  v23 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v23)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    HostInterpreter::ProcessPrefixAdd();
  }

LABEL_52:
  HIDWORD(v27) = v13 - 1;
  LODWORD(v27) = v13 - 1;
  v26 = v27 >> 1;
  if (v26 > 6 || ((0x4Du >> v26) & 1) == 0)
  {
    v24 = 1;
    v25 = *&a4[3].__u6_addr32[2];
    if (v25)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  v13 = dword_10044816C[v26];
  v24 = dword_100448188[v26];
  v25 = *&a4[3].__u6_addr32[2];
  if (!v25)
  {
    goto LABEL_55;
  }

LABEL_57:
  (*((v25 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 4, v24);
  return v13;
}

void sub_10011F5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessPrefixRemove(HostInterpreter *this, unsigned __int8 a2, char **a3, unsigned __int8 *a4)
{
  memset(v37, 0, sizeof(v37));
  std::set<PrefixFlag>::set[abi:ne200100](v36, a4 + 4);
  v6 = OnMeshPrefixEntry::encode_flag_set(v36, *(a4 + 5));
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v36, v36[1]);
  IPv6Prefix::IPv6Prefix(&v35, a4, a4[16]);
  if ((gSrpModeNetInfo & 1) == 0)
  {
    v7 = a4[24];
    v31 = 2;
    v32 = v6;
    v33 = v7;
    v34 = 0;
    prefix_entry = HostInterpreter::find_prefix_entry(this, &v35, &v31);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    v10 = logging_obg;
    if ((this + 64) == prefix_entry)
    {
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          OnMeshPrefixEntry::get_description(&v31, &v35, 0, &__p);
          v12 = v30 >= 0 ? &__p : __p.__vftable;
          *buf = 136315138;
          v39 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "OnMeshPrefixes: [%s] Prefix not found", buf, 0xCu);
          if (v30 < 0)
          {
            operator delete(__p.__vftable);
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v20 = 0;
      goto LABEL_57;
    }

    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        OnMeshPrefixEntry::get_description(&v31, &v35, 0, &__p);
        v11 = v30 >= 0 ? &__p : __p.__vftable;
        *buf = 136315138;
        v39 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "OnMeshPrefixes: Removing %s", buf, 0xCu);
        if (v30 < 0)
        {
          operator delete(__p.__vftable);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v13 = prefix_entry[1];
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
      v15 = prefix_entry;
      do
      {
        v14 = v15[2];
        v16 = *v14 == v15;
        v15 = v14;
      }

      while (!v16);
    }

    if (*(this + 7) == prefix_entry)
    {
      *(this + 7) = v14;
    }

    v17 = *(this + 8);
    --*(this + 9);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v17, prefix_entry);
    operator delete(prefix_entry);
  }

  IPv6Prefix::to_string(&v35, &__p);
  if (v30 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__vftable;
  }

  v19 = ot::Utils::CmdLineParser::ParseAsIp6Prefix(p_p, v37);
  v20 = v19;
  if (v30 < 0)
  {
    operator delete(__p.__vftable);
    if (v20)
    {
      goto LABEL_35;
    }
  }

  else if (v19)
  {
LABEL_35:
    v21 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v21)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessPrefixRemove();
      }

      goto LABEL_61;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

LABEL_60:
    [PowerEventHandler_Rcp init:];
    goto LABEL_61;
  }

  v20 = otBorderRouterRemoveOnMeshPrefix(*(this + 28), v37);
  if (!v20)
  {
    v20 = otBorderRouterRegister(*(this + 28));
    if (v20)
    {
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v23)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessPrefixRemove();
      }

      goto LABEL_61;
    }

LABEL_57:
    v24 = 0;
    v25 = *(a4 + 7);
    if (v25)
    {
      goto LABEL_66;
    }

LABEL_64:
    std::runtime_error::runtime_error(&__p, "call to empty boost::function");
    __p.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&__p);
  }

  v22 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v22)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    HostInterpreter::ProcessPrefixRemove();
  }

LABEL_61:
  HIDWORD(v27) = v20 - 1;
  LODWORD(v27) = v20 - 1;
  v26 = v27 >> 1;
  if (v26 > 6 || ((0x4Du >> v26) & 1) == 0)
  {
    v24 = 1;
    v25 = *(a4 + 7);
    if (v25)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v20 = dword_10044816C[v26];
  v24 = dword_100448188[v26];
  v25 = *(a4 + 7);
  if (!v25)
  {
    goto LABEL_64;
  }

LABEL_66:
  (*((v25 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 64, v24);
  return v20;
}

void sub_10011FB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessPropertyGet(HostInterpreter *this, unsigned __int8 a2, char **a3, void *a4)
{
  v4 = __chkstk_darwin(this);
  v6 = v5;
  v413 = v4;
  v7 = *(v5 + 23);
  *&__s1 = v5;
  if ((v7 & 0x80000000) == 0)
  {
    if (strcmp(v5, "Thread:NetworkData"))
    {
      if (strcmp(v6, "NCP:Channel"))
      {
        if (strcmp(v6, "nm:trigger:devicedata:interval"))
        {
          if (strcmp(v6, "NCP:ChannelMask"))
          {
            if (strcmp(v6, "NCP:TXPower"))
            {
              if (strcmp(v6, "Network:NodeType"))
              {
                if (strcmp(v6, "Network:Role"))
                {
                  if (strcmp(v6, "Network:LastRole"))
                  {
                    if (strcmp(v6, "Network:PartitionId"))
                    {
                      if (strcmp(v6, "Thread:RLOC16"))
                      {
                        if (strcmp(v6, "isPrimaryResident"))
                        {
                          if (strcmp(v6, "wasPrimaryResident"))
                          {
                            if (strcmp(v6, "Network:PSKc"))
                            {
                              if (strcmp(v6, "NCP:ExtendedAddress"))
                              {
                                if (strcmp(v6, "Thread:NeighborMeshLocalAddress"))
                                {
                                  if (strcmp(v6, "Thread:EmacId"))
                                  {
                                    if (strcmp(v6, "NCP:WedExtendedAddress"))
                                    {
                                      if (strcmp(v6, "NCP:WedMleId"))
                                      {
                                        if (strcmp(v6, "wasDeviceEverAChildInCurrentNetwork"))
                                        {
                                          if (strcmp(v6, "Config:TUN:InterfaceName"))
                                          {
                                            if (strcmp(v6, "IPv6:Routes"))
                                            {
                                              if (strcmp(__s1, "thread_version"))
                                              {
                                                if (strcmp(__s1, "cametrics_triggerbased_stability_data"))
                                                {
                                                  if (strcmp(__s1, "cametrics_periodic_stability_data"))
                                                  {
                                                    if (strcmp(__s1, "primary_resident_data"))
                                                    {
                                                      if (strcmp(__s1, "homeThreadInfoData"))
                                                      {
                                                        if (strcmp(__s1, "numOnMeshPrefixes"))
                                                        {
                                                          if (strcmp(__s1, "numRouters"))
                                                          {
                                                            if (strcmp(__s1, "numOffMeshRoutes"))
                                                            {
                                                              if (strcmp(__s1, "Thread:OnMeshPrefixes"))
                                                              {
                                                                if (strcmp(__s1, "Thread:OffMeshRoutes"))
                                                                {
                                                                  if (strcmp(__s1, "nm:networkdata"))
                                                                  {
                                                                    if (strcmp(__s1, "Thread:Services"))
                                                                    {
                                                                      if (strcmp(__s1, "NCP:State"))
                                                                      {
                                                                        if (strcmp(__s1, "Network:Name"))
                                                                        {
                                                                          if (strcmp(__s1, "Network:XPANID"))
                                                                          {
                                                                            if (strcmp(__s1, "Network:PANID"))
                                                                            {
                                                                              if (strcmp(__s1, "NCP:HardwareSerialNumber"))
                                                                              {
                                                                                if (strcmp(__s1, "vendor:assigned:hw:mac"))
                                                                                {
                                                                                  if (strcmp(__s1, "NCP:HardwareAddress"))
                                                                                  {
                                                                                    if (strcmp(__s1, "IPv6:AllAddresses"))
                                                                                    {
                                                                                      if (strcmp(__s1, "Thread:Leader:RouterID"))
                                                                                      {
                                                                                        if (strcmp(__s1, "Thread:Leader:ExtendedAddress"))
                                                                                        {
                                                                                          if (strcmp(__s1, "ChannelUtilizationMonitor:State"))
                                                                                          {
                                                                                            if (strcmp(__s1, "Network:Key"))
                                                                                            {
                                                                                              if (strcmp(__s1, "Network:KeyIndex"))
                                                                                              {
                                                                                                if (strcmp(__s1, "Thread:ActiveDataset:Bytes"))
                                                                                                {
                                                                                                  if (strcmp(__s1, "vendor:assert"))
                                                                                                  {
                                                                                                    if (strcmp(__s1, "vendor:hard:fault"))
                                                                                                    {
                                                                                                      if (strcmp(__s1, "vendor:stack:overflow"))
                                                                                                      {
                                                                                                        if (strcmp(__s1, "Leader:Reelect:Counters"))
                                                                                                        {
                                                                                                          if (strcmp(__s1, "vendor:neighbor:count:histogram") && strcmp(__s1, "vendor:neighbor:count:histogram:AsValMap"))
                                                                                                          {
                                                                                                            if (strcmp(__s1, "vendor:bbr:counters") && strcmp(__s1, "vendor:bbr:counters:AsValMap"))
                                                                                                            {
                                                                                                              if (strcmp(__s1, "vendor:linkloss:counters") && strcmp(__s1, "vendor:linkloss:counters:AsValMap"))
                                                                                                              {
                                                                                                                if (strcmp(__s1, "NCP:Counter:Thread:Mle") && strcmp(__s1, "NCP:Counter:Thread:Mle:AsValMap"))
                                                                                                                {
                                                                                                                  if (strcmp(__s1, "NCP:Counter:Thread:Neighbor:TriggerBased"))
                                                                                                                  {
                                                                                                                    if (strcmp(__s1, "NCP:Counter:AllIPv6") && strcmp(__s1, "NCP:Counter:AllIPv6:AsValMap"))
                                                                                                                    {
                                                                                                                      if (strcmp(__s1, "NCP:Matter:Subscription:Histogram") && strcmp(__s1, "NCP:Matter:Subscription:Histogram:AsValMap"))
                                                                                                                      {
                                                                                                                        if (strcmp(__s1, "NCP:Counter:AllMac") && strcmp(__s1, "NCP:Counter:AllMac:AsValMap"))
                                                                                                                        {
                                                                                                                          if (strcmp(__s1, "vendor:mle:adv:tx:num"))
                                                                                                                          {
                                                                                                                            if (strcmp(__s1, "vendor:min:mac:interframedelay"))
                                                                                                                            {
                                                                                                                              if (strcmp(__s1, "vendor:csl:tx:schedframe:reqahead:timeinus"))
                                                                                                                              {
                                                                                                                                if (strcmp(__s1, "vendor:radio:counters") && strcmp(__s1, "vendor:radio:counters:asvalmap"))
                                                                                                                                {
                                                                                                                                  if (strcmp(__s1, "vendor:joiner:RSSIHistogram") && strcmp(__s1, "vendor:joiner:RSSIHistogram:AsValMap"))
                                                                                                                                  {
                                                                                                                                    if (strcmp(__s1, "Daemon:Version"))
                                                                                                                                    {
                                                                                                                                      if (strcmp(__s1, "DaemonMorty:Version"))
                                                                                                                                      {
                                                                                                                                        if (strcmp(__s1, "vendor:version"))
                                                                                                                                        {
                                                                                                                                          if (strcmp(__s1, "Current:Srp:NetdataMode"))
                                                                                                                                          {
                                                                                                                                            if (strcmp(__s1, "Srp:NetdataMode"))
                                                                                                                                            {
                                                                                                                                              if (strcmp(__s1, "vendor:last:host:wake:reason"))
                                                                                                                                              {
                                                                                                                                                if (strcmp(__s1, "vendor:deepsleep:region:loglevels"))
                                                                                                                                                {
                                                                                                                                                  if (strcmp(__s1, "vendor:deepsleep:loglevel"))
                                                                                                                                                  {
                                                                                                                                                    if (strcmp(__s1, "vendor:deepsleep:filter:list"))
                                                                                                                                                    {
                                                                                                                                                      if (strcmp(__s1, "vendor:MAC:packet:SizeHistogram") && strcmp(__s1, "vendor:MAC:packet:SizeHistogram:AsValMap"))
                                                                                                                                                      {
                                                                                                                                                        if (strcmp(__s1, "vendor:MAC:packet:ErrorHistogram") && strcmp(__s1, "vendor:MAC:packet:ErrorHistogram:AsValMap"))
                                                                                                                                                        {
                                                                                                                                                          if (strcmp(__s1, "vendor:MAC:packet:LQIHistogram") && strcmp(__s1, "vendor:MAC:packet:LQIHistogram:AsValMap"))
                                                                                                                                                          {
                                                                                                                                                            if (strcmp(__s1, "vendor:MAC:packet:RSSIHistogram") && strcmp(__s1, "vendor:MAC:packet:RSSIHistogram:AsValMap"))
                                                                                                                                                            {
                                                                                                                                                              if (strcmp(__s1, "NCP:MacRetryHistogram") && strcmp(__s1, "NCP:MacRetryHistogram:AsValMap"))
                                                                                                                                                              {
                                                                                                                                                                if (strcmp(__s1, "vendor:openthread:radio:counters") && strcmp(__s1, "vendor:openthread:radio:counters:AsValMap"))
                                                                                                                                                                {
                                                                                                                                                                  if (strcmp(__s1, "IPv6:MeshLocalPrefix"))
                                                                                                                                                                  {
                                                                                                                                                                    if (strcmp(__s1, "IPv6:MeshLocalAddress"))
                                                                                                                                                                    {
                                                                                                                                                                      if (strcmp(__s1, "vendor:ncp:state:dump"))
                                                                                                                                                                      {
                                                                                                                                                                        if (strcmp(__s1, "Thread:RouterTable"))
                                                                                                                                                                        {
                                                                                                                                                                          if (strcmp(__s1, "Thread:EidCache"))
                                                                                                                                                                          {
                                                                                                                                                                            if (strcmp(__s1, "Thread:MessageBufferStats"))
                                                                                                                                                                            {
                                                                                                                                                                              if (strcmp(__s1, "is_threadsession_on"))
                                                                                                                                                                              {
                                                                                                                                                                                if (strcmp(__s1, "vendor:power"))
                                                                                                                                                                                {
                                                                                                                                                                                  v8 = strcmp(__s1, "vendor:power:table");
                                                                                                                                                                                  if (v8)
                                                                                                                                                                                  {
                                                                                                                                                                                    if (strcmp(__s1, "vendor:coex:radioload"))
                                                                                                                                                                                    {
                                                                                                                                                                                      if (strcmp(__s1, "vendor:coex:preferredAntenna"))
                                                                                                                                                                                      {
                                                                                                                                                                                        if (strcmp(__s1, "vendor:coex:scanFreqTable"))
                                                                                                                                                                                        {
                                                                                                                                                                                          if (strcmp(__s1, "vendor:coex:CoTxPowerCap"))
                                                                                                                                                                                          {
                                                                                                                                                                                            if (strcmp(__s1, "is_bt_audioCall_on"))
                                                                                                                                                                                            {
                                                                                                                                                                                              if (strcmp(__s1, "vendor:coex:rcp2:counters"))
                                                                                                                                                                                              {
                                                                                                                                                                                                if (strcmp(__s1, "rcp2PcapState"))
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (strcmp(__s1, "Daemon:VirtualInterface:ReadBufferSize"))
                                                                                                                                                                                                  {
                                                                                                                                                                                                    if (strcmp(__s1, "vendor:power:limit:table"))
                                                                                                                                                                                                    {
                                                                                                                                                                                                      if (strcmp(__s1, "vendor:power:limit:table:active:id"))
                                                                                                                                                                                                      {
                                                                                                                                                                                                        if (strcmp(__s1, "vendor:fem:enabled"))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          if (strcmp(__s1, "NCP:PcapEnabled"))
                                                                                                                                                                                                          {
                                                                                                                                                                                                            if (strcmp(__s1, "Daemon:PromiscuousPcap"))
                                                                                                                                                                                                            {
                                                                                                                                                                                                              if (strcmp(__s1, "vendor:ifs:ackdata"))
                                                                                                                                                                                                              {
                                                                                                                                                                                                                if (strcmp(__s1, "ca:reporting:enabled"))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  if (strcmp(__s1, "streamRawRespTimeHist"))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    if (strcmp(__s1, "coex:rcp2:coex:counters:asvalmap"))
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      if (strcmp(__s1, "coex:rcp2:btwifi:load"))
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        if (strcmp(__s1, "Thread:Health:Metrics"))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          if (strcmp(__s1, "ThreadStartMetrics"))
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v9 = __s1;
LABEL_249:
                                                                                                                                                                                                                            if (!strcmp(v9, "NetdataFull:NoUnicastService"))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                              if (logging_obg)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v340 = logging_obg;
                                                                                                                                                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v340, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v341 = __s1;
                                                                                                                                                                                                                                  v342 = *(__s1 + 56);
                                                                                                                                                                                                                                  if (*(__s1 + 23) < 0)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v341 = *__s1;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109378;
                                                                                                                                                                                                                                  HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v342;
                                                                                                                                                                                                                                  LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                                                                                                                                                                  *(&v427[0].__r_.__value_.__r.__words[1] + 2) = v341;
                                                                                                                                                                                                                                  _os_log_impl(&_mh_execute_header, v340, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v427, 0x12u);
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              *v443 = 0;
                                                                                                                                                                                                                              if (*(*(v413 + 28) + 143816) >= 0xF1u)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                HostInterpreter::get_srp_service_advertised_info(v413, v447, __s, v443, v449);
                                                                                                                                                                                                                                if (!*v443)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v404 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                                  if (v404)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v404, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      HostInterpreter::ProcessPropertyGet();
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              operator new();
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            v10 = strcmp(v9, "LeaderOverride");
                                                                                                                                                                                                                            v11 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                            v12 = v11;
                                                                                                                                                                                                                            if (v10)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              if (v11)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v13 = __s1;
                                                                                                                                                                                                                                  if (*(__s1 + 23) < 0)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v13 = *__s1;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315394;
                                                                                                                                                                                                                                  *(v427[0].__r_.__value_.__r.__words + 4) = v13;
                                                                                                                                                                                                                                  WORD2(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                                                                                                                                                                  *(&v427[0].__r_.__value_.__r.__words[1] + 6) = "Prop NotFound";
                                                                                                                                                                                                                                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "HI:PG0:%s=%s", v427, 0x16u);
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              std::string::basic_string[abi:ne200100]<0>(v427, "Property Not Found");
                                                                                                                                                                                                                              operator new();
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            if (v11)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v343 = __s1;
                                                                                                                                                                                                                                v344 = *(__s1 + 56);
                                                                                                                                                                                                                                if (*(__s1 + 23) < 0)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v343 = *__s1;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109378;
                                                                                                                                                                                                                                HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v344;
                                                                                                                                                                                                                                LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                                                                                                                                                                *(&v427[0].__r_.__value_.__r.__words[1] + 2) = v343;
                                                                                                                                                                                                                                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v427, 0x12u);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            gettimeofday(v443, v447);
                                                                                                                                                                                                                            std::string::basic_string[abi:ne200100]<0>(v427, "is_primary_resident");
                                                                                                                                                                                                                            *v449 = v427;
                                                                                                                                                                                                                            v398 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v427[0].__r_.__value_.__l.__data_);
                                                                                                                                                                                                                            v399 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v398 + 7, "1");
                                                                                                                                                                                                                            if (SHIBYTE(v427[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              operator delete(v427[0].__r_.__value_.__l.__data_);
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            v400 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                            if (v400)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v400, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v401 = *(v413 + 39);
                                                                                                                                                                                                                                LODWORD(v427[0].__r_.__value_.__l.__data_) = 134218496;
                                                                                                                                                                                                                                *(v427[0].__r_.__value_.__r.__words + 4) = *v443;
                                                                                                                                                                                                                                WORD2(v427[0].__r_.__value_.__r.__words[1]) = 2048;
                                                                                                                                                                                                                                *(&v427[0].__r_.__value_.__r.__words[1] + 6) = v401;
                                                                                                                                                                                                                                HIWORD(v427[0].__r_.__value_.__r.__words[2]) = 1024;
                                                                                                                                                                                                                                LODWORD(v427[1].__r_.__value_.__l.__data_) = v399;
                                                                                                                                                                                                                                _os_log_impl(&_mh_execute_header, v400, OS_LOG_TYPE_INFO, "Leader re-election attempt(Event) CurrTimeSec[%ld] LastTriggerTime[%ld] Primary[%d]", v427, 0x1Cu);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            ++*(RcpHostContext::sRcpHostContext + 6128);
                                                                                                                                                                                                                            if (otThreadBecomeLeader(*(v413 + 28), 1))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v405 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                              if (v405)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v405, OS_LOG_TYPE_ERROR))
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
                                                                                                                                                                                                                              *(v413 + 39) = *v443;
                                                                                                                                                                                                                              v406 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                              if (v406)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v406, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  HostInterpreter::ProcessPropertyGet();
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              ++*(RcpHostContext::sRcpHostContext + 6132);
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            if ((*(__s1 + 56) & 1) == 0)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              operator new();
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            return 0;
                                                                                                                                                                                                                          }

LABEL_1139:
                                                                                                                                                                                                                          v335 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                          if (v335)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v336 = v335;
                                                                                                                                                                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v336, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v337 = __s1;
                                                                                                                                                                                                                              v338 = *(__s1 + 56);
                                                                                                                                                                                                                              if (*(__s1 + 23) < 0)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v337 = *__s1;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109378;
                                                                                                                                                                                                                              HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v338;
                                                                                                                                                                                                                              LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                                                                                                                                                              *(&v427[0].__r_.__value_.__r.__words[1] + 2) = v337;
                                                                                                                                                                                                                              _os_log_impl(&_mh_execute_header, v336, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v427, 0x12u);
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          v427[0].__r_.__value_.__r.__words[0] = v427;
                                                                                                                                                                                                                          v427[0].__r_.__value_.__l.__size_ = v427;
                                                                                                                                                                                                                          v427[0].__r_.__value_.__r.__words[2] = 0;
                                                                                                                                                                                                                          RcpHostContext::GetThreadStartMetrics(RcpHostContext::sRcpHostContext);
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        goto LABEL_1133;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      goto LABEL_1127;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    goto LABEL_1121;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  goto LABEL_1115;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                goto LABEL_1109;
                                                                                                                                                                                                              }

LABEL_1103:
                                                                                                                                                                                                              v316 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                              if (v316)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v317 = v316;
                                                                                                                                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v317, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v318 = __s1;
                                                                                                                                                                                                                  if (*(__s1 + 23) < 0)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v318 = *__s1;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                                                                                  *(v427[0].__r_.__value_.__r.__words + 4) = v318;
                                                                                                                                                                                                                  _os_log_impl(&_mh_execute_header, v317, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                              {
                                                                                                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                              }

                                                                                                                                                                                                              v447[0].__r_.__value_.__s.__data_[0] = 0;
                                                                                                                                                                                                              IfsAckDataPerNeighbor = otPlatVendorGetIfsAckDataPerNeighbor(v427, v447);
                                                                                                                                                                                                              if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                HostInterpreter::GetIfsAckDataPerNeighborAsString(v427, v447[0].__r_.__value_.__s.__data_[0], v443);
                                                                                                                                                                                                                boost::any::any<std::string &>();
                                                                                                                                                                                                              }

                                                                                                                                                                                                              goto LABEL_299;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            goto LABEL_1102;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          goto LABEL_1098;
                                                                                                                                                                                                        }

LABEL_1094:
                                                                                                                                                                                                        v443[0] = 0;
                                                                                                                                                                                                        v310 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                        if (v310)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v311 = v310;
                                                                                                                                                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v311, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                          {
                                                                                                                                                                                                            LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                                                                            *(v427[0].__r_.__value_.__r.__words + 4) = "vendor:fem:enabled";
                                                                                                                                                                                                            _os_log_impl(&_mh_execute_header, v311, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                        }

                                                                                                                                                                                                        IfsAckDataPerNeighbor = otPlatVendorGetFemEnabled(*(v413 + 28), v443);
                                                                                                                                                                                                        if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          operator new();
                                                                                                                                                                                                        }

                                                                                                                                                                                                        goto LABEL_299;
                                                                                                                                                                                                      }

LABEL_1090:
                                                                                                                                                                                                      v443[0] = 0;
                                                                                                                                                                                                      v308 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                      if (v308)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v309 = v308;
                                                                                                                                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v309, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                                                                          *(v427[0].__r_.__value_.__r.__words + 4) = "vendor:power:limit:table:active:id";
                                                                                                                                                                                                          _os_log_impl(&_mh_execute_header, v309, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                      {
                                                                                                                                                                                                        [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                      }

                                                                                                                                                                                                      IfsAckDataPerNeighbor = otPlatVendorGetPowerLimitTableActiveId(*(v413 + 28), v443);
                                                                                                                                                                                                      if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        operator new();
                                                                                                                                                                                                      }

                                                                                                                                                                                                      goto LABEL_299;
                                                                                                                                                                                                    }

LABEL_1085:
                                                                                                                                                                                                    IfsAckDataPerNeighbor = otPlatVendorGetPowerLimitTable(*(v413 + 28), v427);
                                                                                                                                                                                                    if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v307 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                      if (v307)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v307, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          *v443 = 136315138;
                                                                                                                                                                                                          *&v443[4] = "vendor:power:limit:table";
                                                                                                                                                                                                          _os_log_impl(&_mh_execute_header, v307, OS_LOG_TYPE_INFO, "HI:PG0:%s", v443, 0xCu);
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                      {
                                                                                                                                                                                                        [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                      }

                                                                                                                                                                                                      HostInterpreter::GetPowerLimitTableAsString(v427, v443);
                                                                                                                                                                                                      boost::any::any<std::string &>();
                                                                                                                                                                                                    }

                                                                                                                                                                                                    goto LABEL_299;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  goto LABEL_1079;
                                                                                                                                                                                                }

LABEL_1073:
                                                                                                                                                                                                PcapStateTable = otLinkGetPcapStateTable(*(v413 + 28));
                                                                                                                                                                                                v301 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                if (v301)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v302 = v301;
                                                                                                                                                                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v302, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v303 = __s1;
                                                                                                                                                                                                    if (*(__s1 + 23) < 0)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v303 = *__s1;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                                                                    *(v427[0].__r_.__value_.__r.__words + 4) = v303;
                                                                                                                                                                                                    _os_log_impl(&_mh_execute_header, v302, OS_LOG_TYPE_INFO, "HI:PG0:%s ", v427, 0xCu);
                                                                                                                                                                                                  }
                                                                                                                                                                                                }

                                                                                                                                                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                {
                                                                                                                                                                                                  [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                }

                                                                                                                                                                                                if (PcapStateTable)
                                                                                                                                                                                                {
                                                                                                                                                                                                  *&v427[0].__r_.__value_.__r.__words[1] = 0uLL;
                                                                                                                                                                                                  v427[0].__r_.__value_.__r.__words[0] = &v427[0].__r_.__value_.__l.__size_;
                                                                                                                                                                                                  memset(v443, 0, 24);
                                                                                                                                                                                                  v370 = __s1;
                                                                                                                                                                                                  if (*(__s1 + 23) < 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v370 = *__s1;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  std::string::basic_string[abi:ne200100]<0>(__s, v370);
                                                                                                                                                                                                  std::string::basic_string[abi:ne200100]<0>(v448, "[");
                                                                                                                                                                                                  if ((v448[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v371 = v448;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v371 = v448[0].__r_.__value_.__r.__words[0];
                                                                                                                                                                                                  }

                                                                                                                                                                                                  if ((v448[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    size = HIBYTE(v448[0].__r_.__value_.__r.__words[2]);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    size = v448[0].__r_.__value_.__l.__size_;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  v373 = std::string::append(__s, v371, size);
                                                                                                                                                                                                  v374 = *&v373->__r_.__value_.__l.__data_;
                                                                                                                                                                                                  v447[0].__r_.__value_.__r.__words[2] = v373->__r_.__value_.__r.__words[2];
                                                                                                                                                                                                  *&v447[0].__r_.__value_.__l.__data_ = v374;
                                                                                                                                                                                                  v373->__r_.__value_.__l.__size_ = 0;
                                                                                                                                                                                                  v373->__r_.__value_.__r.__words[2] = 0;
                                                                                                                                                                                                  v373->__r_.__value_.__r.__words[0] = 0;
                                                                                                                                                                                                  std::to_string(&v446, 0);
                                                                                                                                                                                                  if ((v446.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v375 = &v446;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v375 = v446.__r_.__value_.__r.__words[0];
                                                                                                                                                                                                  }

                                                                                                                                                                                                  if ((v446.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v376 = HIBYTE(v446.__r_.__value_.__r.__words[2]);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v376 = v446.__r_.__value_.__l.__size_;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  v377 = std::string::append(v447, v375, v376);
                                                                                                                                                                                                  v378 = *&v377->__r_.__value_.__l.__data_;
                                                                                                                                                                                                  *&v449[16] = *(&v377->__r_.__value_.__l + 2);
                                                                                                                                                                                                  *v449 = v378;
                                                                                                                                                                                                  v377->__r_.__value_.__l.__size_ = 0;
                                                                                                                                                                                                  v377->__r_.__value_.__r.__words[2] = 0;
                                                                                                                                                                                                  v377->__r_.__value_.__r.__words[0] = 0;
                                                                                                                                                                                                  std::string::basic_string[abi:ne200100]<0>(&buf, "]");
                                                                                                                                                                                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    p_buf = &buf;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    p_buf = buf.__r_.__value_.__r.__words[0];
                                                                                                                                                                                                  }

                                                                                                                                                                                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v380 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v380 = buf.__r_.__value_.__l.__size_;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  v381 = std::string::append(v449, p_buf, v380);
                                                                                                                                                                                                  v382 = v381->__r_.__value_.__r.__words[0];
                                                                                                                                                                                                  v456.__r_.__value_.__r.__words[0] = v381->__r_.__value_.__l.__size_;
                                                                                                                                                                                                  *(v456.__r_.__value_.__r.__words + 7) = *(&v381->__r_.__value_.__r.__words[1] + 7);
                                                                                                                                                                                                  v383 = HIBYTE(v381->__r_.__value_.__r.__words[2]);
                                                                                                                                                                                                  v381->__r_.__value_.__l.__size_ = 0;
                                                                                                                                                                                                  v381->__r_.__value_.__r.__words[2] = 0;
                                                                                                                                                                                                  v381->__r_.__value_.__r.__words[0] = 0;
                                                                                                                                                                                                  if ((v443[23] & 0x80000000) != 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    operator delete(*v443);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  *v443 = v382;
                                                                                                                                                                                                  *&v443[8] = v456.__r_.__value_.__r.__words[0];
                                                                                                                                                                                                  *&v443[15] = *(v456.__r_.__value_.__r.__words + 7);
                                                                                                                                                                                                  v443[23] = v383;
                                                                                                                                                                                                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    operator delete(buf.__r_.__value_.__l.__data_);
                                                                                                                                                                                                    if ((v449[23] & 0x80000000) != 0)
                                                                                                                                                                                                    {
LABEL_1328:
                                                                                                                                                                                                      operator delete(*v449);
                                                                                                                                                                                                      if ((SHIBYTE(v446.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        goto LABEL_1329;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      goto LABEL_1336;
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else if ((v449[23] & 0x80000000) != 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    goto LABEL_1328;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  if ((SHIBYTE(v446.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                  {
LABEL_1329:
                                                                                                                                                                                                    if (SHIBYTE(v447[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      goto LABEL_1330;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    goto LABEL_1337;
                                                                                                                                                                                                  }

LABEL_1336:
                                                                                                                                                                                                  operator delete(v446.__r_.__value_.__l.__data_);
                                                                                                                                                                                                  if (SHIBYTE(v447[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                                                                                                  {
LABEL_1330:
                                                                                                                                                                                                    operator delete(v447[0].__r_.__value_.__l.__data_);
                                                                                                                                                                                                    if ((SHIBYTE(v448[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      goto LABEL_1331;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    goto LABEL_1338;
                                                                                                                                                                                                  }

LABEL_1337:
                                                                                                                                                                                                  if ((SHIBYTE(v448[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                  {
LABEL_1331:
                                                                                                                                                                                                    if ((SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      goto LABEL_1333;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    goto LABEL_1332;
                                                                                                                                                                                                  }

LABEL_1338:
                                                                                                                                                                                                  operator delete(v448[0].__r_.__value_.__l.__data_);
                                                                                                                                                                                                  if ((SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                  {
LABEL_1333:
                                                                                                                                                                                                    *v449 = v443;
                                                                                                                                                                                                    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v427, v443);
                                                                                                                                                                                                    boost::any::operator=<unsigned short &>();
                                                                                                                                                                                                  }

LABEL_1332:
                                                                                                                                                                                                  operator delete(__s[0].__r_.__value_.__l.__data_);
                                                                                                                                                                                                  goto LABEL_1333;
                                                                                                                                                                                                }

                                                                                                                                                                                                v403 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                if (v403)
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v403, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                  {
                                                                                                                                                                                                    HostInterpreter::ProcessPropertyGet((__s1 + 23));
                                                                                                                                                                                                  }
                                                                                                                                                                                                }

                                                                                                                                                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                {
                                                                                                                                                                                                  [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                }

                                                                                                                                                                                                goto LABEL_300;
                                                                                                                                                                                              }

                                                                                                                                                                                              goto LABEL_1067;
                                                                                                                                                                                            }

                                                                                                                                                                                            goto LABEL_1063;
                                                                                                                                                                                          }

                                                                                                                                                                                          goto LABEL_1058;
                                                                                                                                                                                        }

LABEL_1050:
                                                                                                                                                                                        v447[0].__r_.__value_.__s.__data_[0] = 0;
                                                                                                                                                                                        MWSFrequencyTable = otPlatVendorGetMWSFrequencyTable(*(v413 + 28), v447, v443);
                                                                                                                                                                                        if (!MWSFrequencyTable)
                                                                                                                                                                                        {
                                                                                                                                                                                          snprintf(v427, 1uLL, "%d", v447[0].__r_.__value_.__s.__data_[0]);
                                                                                                                                                                                          if (v447[0].__r_.__value_.__s.__data_[0])
                                                                                                                                                                                          {
                                                                                                                                                                                            v288 = 0;
                                                                                                                                                                                            v289 = &v427[0].__r_.__value_.__s.__data_[1];
                                                                                                                                                                                            do
                                                                                                                                                                                            {
                                                                                                                                                                                              snprintf(v289, 2uLL, "%02x", v443[2 * v288++]);
                                                                                                                                                                                              v289 += 2;
                                                                                                                                                                                            }

                                                                                                                                                                                            while (v288 < 2 * v447[0].__r_.__value_.__s.__data_[0]);
                                                                                                                                                                                          }

                                                                                                                                                                                          v290 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                          if (v290)
                                                                                                                                                                                          {
                                                                                                                                                                                            if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v290, OS_LOG_TYPE_DEBUG))
                                                                                                                                                                                            {
                                                                                                                                                                                              HostInterpreter::ProcessPropertyGet();
                                                                                                                                                                                            }
                                                                                                                                                                                          }

                                                                                                                                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                          {
                                                                                                                                                                                            [PowerEventHandler_Rcp init:];
                                                                                                                                                                                          }

                                                                                                                                                                                          operator new();
                                                                                                                                                                                        }

                                                                                                                                                                                        IfsAckDataPerNeighbor = MWSFrequencyTable;
                                                                                                                                                                                        goto LABEL_299;
                                                                                                                                                                                      }

LABEL_1045:
                                                                                                                                                                                      v443[0] = 0;
                                                                                                                                                                                      IfsAckDataPerNeighbor = otPlatVendorGetAntenna(*(v413 + 28), v443);
                                                                                                                                                                                      if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                      {
                                                                                                                                                                                        v286 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                        if (v286)
                                                                                                                                                                                        {
                                                                                                                                                                                          if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v286, OS_LOG_TYPE_DEBUG))
                                                                                                                                                                                          {
                                                                                                                                                                                            HostInterpreter::ProcessPropertyGet(v443);
                                                                                                                                                                                          }
                                                                                                                                                                                        }

                                                                                                                                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                        {
                                                                                                                                                                                          [PowerEventHandler_Rcp init:];
                                                                                                                                                                                        }

                                                                                                                                                                                        operator new();
                                                                                                                                                                                      }

                                                                                                                                                                                      goto LABEL_299;
                                                                                                                                                                                    }

                                                                                                                                                                                    goto LABEL_1044;
                                                                                                                                                                                  }

LABEL_1039:
                                                                                                                                                                                  *v443 = 1300;
                                                                                                                                                                                  __chkstk_darwin(v8);
                                                                                                                                                                                  PTB = otPlatVendorGetPTB(*(v413 + 28), &v407, v443);
                                                                                                                                                                                  if (!PTB)
                                                                                                                                                                                  {
                                                                                                                                                                                    v285 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                    if (v285)
                                                                                                                                                                                    {
                                                                                                                                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v285, OS_LOG_TYPE_INFO))
                                                                                                                                                                                      {
                                                                                                                                                                                        LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109120;
                                                                                                                                                                                        HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = *v443;
                                                                                                                                                                                        _os_log_impl(&_mh_execute_header, v285, OS_LOG_TYPE_INFO, "HI:PG0:Get RCP2 PTB file:PTB Read data response,Size=%d", v427, 8u);
                                                                                                                                                                                      }
                                                                                                                                                                                    }

                                                                                                                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                    {
                                                                                                                                                                                      [PowerEventHandler_Rcp init:];
                                                                                                                                                                                    }

                                                                                                                                                                                    operator new();
                                                                                                                                                                                  }

                                                                                                                                                                                  goto LABEL_1283;
                                                                                                                                                                                }

LABEL_1034:
                                                                                                                                                                                v443[0] = 0;
                                                                                                                                                                                IfsAckDataPerNeighbor = otPlatVendorGetPower(*(v413 + 28), v443);
                                                                                                                                                                                if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                {
                                                                                                                                                                                  v283 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                  if (v283)
                                                                                                                                                                                  {
                                                                                                                                                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
                                                                                                                                                                                    {
                                                                                                                                                                                      LODWORD(v427[0].__r_.__value_.__l.__data_) = 134217984;
                                                                                                                                                                                      *(v427[0].__r_.__value_.__r.__words + 4) = vcvtd_n_f64_s32(v443[0], 2uLL);
                                                                                                                                                                                      _os_log_impl(&_mh_execute_header, v283, OS_LOG_TYPE_INFO, "HI:PG0:VendorPower=%f dBm", v427, 0xCu);
                                                                                                                                                                                    }
                                                                                                                                                                                  }

                                                                                                                                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                  {
                                                                                                                                                                                    [PowerEventHandler_Rcp init:];
                                                                                                                                                                                  }

                                                                                                                                                                                  operator new();
                                                                                                                                                                                }

                                                                                                                                                                                goto LABEL_299;
                                                                                                                                                                              }

                                                                                                                                                                              goto LABEL_1030;
                                                                                                                                                                            }

                                                                                                                                                                            goto LABEL_1017;
                                                                                                                                                                          }

                                                                                                                                                                          goto LABEL_1005;
                                                                                                                                                                        }

                                                                                                                                                                        goto LABEL_1001;
                                                                                                                                                                      }

                                                                                                                                                                      goto LABEL_995;
                                                                                                                                                                    }

LABEL_984:
                                                                                                                                                                    MeshLocalEid = otThreadGetMeshLocalEid(*(v413 + 28));
                                                                                                                                                                    if (MeshLocalEid)
                                                                                                                                                                    {
                                                                                                                                                                      otIp6AddressToString(MeshLocalEid, v427, 40);
                                                                                                                                                                      v248 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                      if (v248)
                                                                                                                                                                      {
                                                                                                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v248, OS_LOG_TYPE_INFO))
                                                                                                                                                                        {
                                                                                                                                                                          v249 = __s1;
                                                                                                                                                                          if (*(__s1 + 23) < 0)
                                                                                                                                                                          {
                                                                                                                                                                            v249 = *__s1;
                                                                                                                                                                          }

                                                                                                                                                                          std::string::basic_string[abi:ne200100]<0>(v443, v427);
                                                                                                                                                                          if (v443[23] >= 0)
                                                                                                                                                                          {
                                                                                                                                                                            v250 = v443;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v250 = *v443;
                                                                                                                                                                          }

                                                                                                                                                                          *v449 = 136315394;
                                                                                                                                                                          *&v449[4] = v249;
                                                                                                                                                                          *&v449[12] = 2080;
                                                                                                                                                                          *&v449[14] = v250;
                                                                                                                                                                          _os_log_impl(&_mh_execute_header, v248, OS_LOG_TYPE_INFO, "HI:PG0:%s,mleAddr:%s", v449, 0x16u);
                                                                                                                                                                          if ((v443[23] & 0x80000000) != 0)
                                                                                                                                                                          {
                                                                                                                                                                            operator delete(*v443);
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                      {
                                                                                                                                                                        [PowerEventHandler_Rcp init:];
                                                                                                                                                                      }

                                                                                                                                                                      std::string::basic_string[abi:ne200100]<0>(v443, v427);
                                                                                                                                                                      operator new();
                                                                                                                                                                    }

                                                                                                                                                                    v366 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                    if (v366)
                                                                                                                                                                    {
                                                                                                                                                                      v367 = v366;
                                                                                                                                                                      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v367, OS_LOG_TYPE_ERROR))
                                                                                                                                                                      {
                                                                                                                                                                        HostInterpreter::ProcessPropertyGet((__s1 + 23));
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                    {
                                                                                                                                                                      [PowerEventHandler_Rcp init:];
                                                                                                                                                                    }

                                                                                                                                                                    IfsAckDataPerNeighbor = 1;
                                                                                                                                                                    goto LABEL_299;
                                                                                                                                                                  }

                                                                                                                                                                  goto LABEL_983;
                                                                                                                                                                }

LABEL_981:
                                                                                                                                                                IfsAckDataPerNeighbor = otPlatVendorGetOpenThreadRadioCounters(*(v413 + 28), v427);
                                                                                                                                                                if (!IfsAckDataPerNeighbor)
                                                                                                                                                                {
                                                                                                                                                                  HostInterpreter::GetVendorOpenThreadRadioCountersAsValMap(v443);
                                                                                                                                                                }

                                                                                                                                                                goto LABEL_299;
                                                                                                                                                              }

                                                                                                                                                              goto LABEL_980;
                                                                                                                                                            }

                                                                                                                                                            goto LABEL_979;
                                                                                                                                                          }

                                                                                                                                                          goto LABEL_978;
                                                                                                                                                        }

                                                                                                                                                        goto LABEL_977;
                                                                                                                                                      }

                                                                                                                                                      goto LABEL_976;
                                                                                                                                                    }

                                                                                                                                                    goto LABEL_970;
                                                                                                                                                  }

LABEL_964:
                                                                                                                                                  v240 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                  if (v240)
                                                                                                                                                  {
                                                                                                                                                    v241 = v240;
                                                                                                                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v241, OS_LOG_TYPE_INFO))
                                                                                                                                                    {
                                                                                                                                                      v242 = __s1;
                                                                                                                                                      if (*(__s1 + 23) < 0)
                                                                                                                                                      {
                                                                                                                                                        v242 = *__s1;
                                                                                                                                                      }

                                                                                                                                                      LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                      *(v427[0].__r_.__value_.__r.__words + 4) = v242;
                                                                                                                                                      _os_log_impl(&_mh_execute_header, v241, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                  {
                                                                                                                                                    [PowerEventHandler_Rcp init:];
                                                                                                                                                  }

                                                                                                                                                  v443[0] = 0;
                                                                                                                                                  IfsAckDataPerNeighbor = otPlatVendorGetDeepSleepLogLevel(*(v413 + 28), v443);
                                                                                                                                                  if (!IfsAckDataPerNeighbor)
                                                                                                                                                  {
                                                                                                                                                    operator new();
                                                                                                                                                  }

                                                                                                                                                  goto LABEL_299;
                                                                                                                                                }

                                                                                                                                                goto LABEL_958;
                                                                                                                                              }

LABEL_952:
                                                                                                                                              v234 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                              if (v234)
                                                                                                                                              {
                                                                                                                                                v235 = v234;
                                                                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v235, OS_LOG_TYPE_INFO))
                                                                                                                                                {
                                                                                                                                                  v236 = __s1;
                                                                                                                                                  if (*(__s1 + 23) < 0)
                                                                                                                                                  {
                                                                                                                                                    v236 = *__s1;
                                                                                                                                                  }

                                                                                                                                                  LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                  *(v427[0].__r_.__value_.__r.__words + 4) = v236;
                                                                                                                                                  _os_log_impl(&_mh_execute_header, v235, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                              {
                                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                                              }

                                                                                                                                              *v443 = 0;
                                                                                                                                              IfsAckDataPerNeighbor = otPlatVendorGetHostWakeReason(*(v413 + 28), v443);
                                                                                                                                              if (!IfsAckDataPerNeighbor)
                                                                                                                                              {
                                                                                                                                                operator new();
                                                                                                                                              }

                                                                                                                                              goto LABEL_299;
                                                                                                                                            }

                                                                                                                                            goto LABEL_946;
                                                                                                                                          }

                                                                                                                                          goto LABEL_940;
                                                                                                                                        }

                                                                                                                                        goto LABEL_934;
                                                                                                                                      }

LABEL_928:
                                                                                                                                      v222 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                      if (v222)
                                                                                                                                      {
                                                                                                                                        v223 = v222;
                                                                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v223, OS_LOG_TYPE_INFO))
                                                                                                                                        {
                                                                                                                                          v224 = __s1;
                                                                                                                                          if (*(__s1 + 23) < 0)
                                                                                                                                          {
                                                                                                                                            v224 = *__s1;
                                                                                                                                          }

                                                                                                                                          LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                          *(v427[0].__r_.__value_.__r.__words + 4) = v224;
                                                                                                                                          _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                      {
                                                                                                                                        [PowerEventHandler_Rcp init:];
                                                                                                                                      }

                                                                                                                                      if (*(RcpHostContext::sRcpHostContext + 5679) < 0)
                                                                                                                                      {
                                                                                                                                        std::string::__init_copy_ctor_external(v427, *(RcpHostContext::sRcpHostContext + 5656), *(RcpHostContext::sRcpHostContext + 5664));
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v427[0] = *(RcpHostContext::sRcpHostContext + 5656);
                                                                                                                                      }

                                                                                                                                      v402 = HIBYTE(v427[0].__r_.__value_.__r.__words[2]);
                                                                                                                                      v221 = HIBYTE(v427[0].__r_.__value_.__r.__words[2]);
                                                                                                                                      if ((v427[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                                                                                                      {
                                                                                                                                        v402 = v427[0].__r_.__value_.__l.__size_;
                                                                                                                                      }

                                                                                                                                      if (v402)
                                                                                                                                      {
                                                                                                                                        boost::any::any<std::string &>();
                                                                                                                                      }

LABEL_1432:
                                                                                                                                      IfsAckDataPerNeighbor = 1;
                                                                                                                                      if (v221 < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(v427[0].__r_.__value_.__l.__data_);
                                                                                                                                      }

                                                                                                                                      goto LABEL_299;
                                                                                                                                    }

                                                                                                                                    goto LABEL_924;
                                                                                                                                  }

                                                                                                                                  goto LABEL_920;
                                                                                                                                }

LABEL_915:
                                                                                                                                IfsAckDataPerNeighbor = otPlatVendorGetRadioCounters(*(v413 + 28), v443);
                                                                                                                                if (!IfsAckDataPerNeighbor)
                                                                                                                                {
                                                                                                                                  HostInterpreter::GetVendorRadioCountersAsValMap(v427);
                                                                                                                                }

                                                                                                                                goto LABEL_299;
                                                                                                                              }

                                                                                                                              goto LABEL_911;
                                                                                                                            }

LABEL_906:
                                                                                                                            *v443 = 0;
                                                                                                                            IfsAckDataPerNeighbor = otPlatRadioGetMinInterframeDelay(*(v413 + 28), v443);
                                                                                                                            if (!IfsAckDataPerNeighbor)
                                                                                                                            {
                                                                                                                              v216 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                              if (v216)
                                                                                                                              {
                                                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v216, OS_LOG_TYPE_INFO))
                                                                                                                                {
                                                                                                                                  LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                  *(v427[0].__r_.__value_.__r.__words + 4) = "vendor:min:mac:interframedelay";
                                                                                                                                  _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v427, 0xCu);
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                              {
                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                              }

                                                                                                                              operator new();
                                                                                                                            }

                                                                                                                            goto LABEL_299;
                                                                                                                          }

                                                                                                                          goto LABEL_902;
                                                                                                                        }

                                                                                                                        goto LABEL_901;
                                                                                                                      }

                                                                                                                      goto LABEL_900;
                                                                                                                    }

                                                                                                                    goto LABEL_898;
                                                                                                                  }

                                                                                                                  goto LABEL_899;
                                                                                                                }

                                                                                                                goto LABEL_897;
                                                                                                              }

                                                                                                              goto LABEL_896;
                                                                                                            }

                                                                                                            goto LABEL_889;
                                                                                                          }

                                                                                                          goto LABEL_880;
                                                                                                        }

                                                                                                        goto LABEL_881;
                                                                                                      }

                                                                                                      goto LABEL_878;
                                                                                                    }

                                                                                                    goto LABEL_869;
                                                                                                  }

LABEL_861:
                                                                                                  *v443 = 0;
                                                                                                  IfsAckDataPerNeighbor = otPlatVendorGenerateAssert(*(v413 + 28), v443);
                                                                                                  if (!IfsAckDataPerNeighbor)
                                                                                                  {
                                                                                                    v207 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                    if (v207)
                                                                                                    {
                                                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
                                                                                                      {
                                                                                                        LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109120;
                                                                                                        HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = *v443;
                                                                                                        _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_INFO, "VendorAssert = %u", v427, 8u);
                                                                                                      }
                                                                                                    }

                                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                    {
                                                                                                      [PowerEventHandler_Rcp init:];
                                                                                                    }

                                                                                                    operator new();
                                                                                                  }

                                                                                                  goto LABEL_299;
                                                                                                }

                                                                                                goto LABEL_854;
                                                                                              }

LABEL_842:
                                                                                              v203 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                              if (v203)
                                                                                              {
                                                                                                v204 = v203;
                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v204, OS_LOG_TYPE_INFO))
                                                                                                {
                                                                                                  LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                  *(v427[0].__r_.__value_.__r.__words + 4) = "Network:KeyIndex";
                                                                                                  _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                }
                                                                                              }

                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                              {
                                                                                                [PowerEventHandler_Rcp init:];
                                                                                              }

                                                                                              otThreadGetKeySequenceCounter(*(v413 + 28));
                                                                                              operator new();
                                                                                            }

LABEL_828:
                                                                                            v199 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                            if (v199)
                                                                                            {
                                                                                              v200 = v199;
                                                                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
                                                                                              {
                                                                                                LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                *(v427[0].__r_.__value_.__r.__words + 4) = "Network:Key";
                                                                                                _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                              }
                                                                                            }

                                                                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                            {
                                                                                              [PowerEventHandler_Rcp init:];
                                                                                            }

                                                                                            otThreadGetNetworkKey(*(v413 + 28), v443);
                                                                                            nl::Data::Data(v427, v443, 16);
                                                                                            boost::any::any<nl::Data &>();
                                                                                          }

LABEL_819:
                                                                                          std::string::basic_string[abi:ne200100]<0>(v443, "not-implemented");
                                                                                          v196 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                          if (v196)
                                                                                          {
                                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
                                                                                            {
                                                                                              v197 = *(__s1 + 56);
                                                                                              v198 = v443;
                                                                                              if (v443[23] < 0)
                                                                                              {
                                                                                                v198 = *v443;
                                                                                              }

                                                                                              LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109634;
                                                                                              HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v197;
                                                                                              LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                              *(&v427[0].__r_.__value_.__r.__words[1] + 2) = "ChannelUtilizationMonitor:State";
                                                                                              WORD1(v427[0].__r_.__value_.__r.__words[2]) = 2080;
                                                                                              *(&v427[0].__r_.__value_.__r.__words[2] + 4) = v198;
                                                                                              _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_INFO, "HI:PG%d:%s=%s", v427, 0x1Cu);
                                                                                            }
                                                                                          }

                                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                          {
                                                                                            [PowerEventHandler_Rcp init:];
                                                                                          }

                                                                                          if (*(__s1 + 56))
                                                                                          {
                                                                                            std::string::basic_string[abi:ne200100]<0>(v427, "ChannelUtilizationMonitor:State");
                                                                                            boost::any::any<std::string &>();
                                                                                          }

                                                                                          boost::any::any<std::string &>();
                                                                                        }

LABEL_810:
                                                                                        v193 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                        if (v193)
                                                                                        {
                                                                                          v194 = v193;
                                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v194, OS_LOG_TYPE_INFO))
                                                                                          {
                                                                                            LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                            *(v427[0].__r_.__value_.__r.__words + 4) = "Thread:Leader:ExtendedAddress";
                                                                                            _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v427, 0xCu);
                                                                                          }
                                                                                        }

                                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                        {
                                                                                          [PowerEventHandler_Rcp init:];
                                                                                        }

                                                                                        HostInterpreter::ProcessUpdateLeaderInfo(v413);
                                                                                        *v449 = -1;
                                                                                        nl::Data::Data(v427, v449, 8);
                                                                                        v201 = *(v413 + 76);
                                                                                        if (v201 == (otThreadGetLeaderRouterId(*(v413 + 28)) & 0x3F) << 10)
                                                                                        {
                                                                                          nl::Data::Data(v443, v413 + 154, 8);
                                                                                          if (v427[0].__r_.__value_.__r.__words[0])
                                                                                          {
                                                                                            v427[0].__r_.__value_.__l.__size_ = v427[0].__r_.__value_.__r.__words[0];
                                                                                            operator delete(v427[0].__r_.__value_.__l.__data_);
                                                                                          }

                                                                                          v427[0] = *v443;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v202 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                          if (v202)
                                                                                          {
                                                                                            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
                                                                                            {
                                                                                              HostInterpreter::ProcessPropertyGet();
                                                                                            }
                                                                                          }

                                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                          {
                                                                                            [PowerEventHandler_Rcp init:];
                                                                                          }
                                                                                        }

                                                                                        boost::any::any<nl::Data &>();
                                                                                      }

LABEL_802:
                                                                                      LeaderRouterId = otThreadGetLeaderRouterId(*(v413 + 28));
                                                                                      v191 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                      if (v191)
                                                                                      {
                                                                                        v192 = v191;
                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v192, OS_LOG_TYPE_INFO))
                                                                                        {
                                                                                          LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315394;
                                                                                          *(v427[0].__r_.__value_.__r.__words + 4) = "Thread:Leader:RouterID";
                                                                                          WORD2(v427[0].__r_.__value_.__r.__words[1]) = 1024;
                                                                                          *(&v427[0].__r_.__value_.__r.__words[1] + 6) = LeaderRouterId;
                                                                                          _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_INFO, "HI:PG0:%s=%d", v427, 0x12u);
                                                                                        }
                                                                                      }

                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                      {
                                                                                        [PowerEventHandler_Rcp init:];
                                                                                      }

                                                                                      operator new();
                                                                                    }

LABEL_795:
                                                                                    *v443 = v443;
                                                                                    *&v443[8] = v443;
                                                                                    *&v443[16] = 0;
                                                                                    v189 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                    if (v189)
                                                                                    {
                                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v189, OS_LOG_TYPE_INFO))
                                                                                      {
                                                                                        *v449 = 136315138;
                                                                                        *&v449[4] = "IPv6:AllAddresses";
                                                                                        _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_INFO, "HI:PG0: %s", v449, 0xCu);
                                                                                      }
                                                                                    }

                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                    {
                                                                                      [PowerEventHandler_Rcp init:];
                                                                                    }

                                                                                    UnicastAddresses = otIp6GetUnicastAddresses(*(v413 + 28));
                                                                                    if (UnicastAddresses)
                                                                                    {
                                                                                      otIp6AddressToString(UnicastAddresses, v427, 40);
                                                                                      std::string::basic_string[abi:ne200100]<0>(v449, v427);
                                                                                      operator new();
                                                                                    }

                                                                                    boost::any::any<std::list<std::string> &>();
                                                                                  }

LABEL_788:
                                                                                  v187 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                  if (v187)
                                                                                  {
                                                                                    v188 = v187;
                                                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
                                                                                    {
                                                                                      LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                      *(v427[0].__r_.__value_.__r.__words + 4) = "NCP:HardwareAddress";
                                                                                      _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                    }
                                                                                  }

                                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                  {
                                                                                    [PowerEventHandler_Rcp init:];
                                                                                  }

                                                                                  *v443 = 0;
                                                                                  otPlatVendorGetAssignedHwMac(*(v413 + 28), v443);
                                                                                  nl::Data::Data(v427, v443, 8);
                                                                                  boost::any::any<nl::Data &>();
                                                                                }

LABEL_781:
                                                                                *v449 = 0;
                                                                                otPlatVendorGetAssignedHwMac(*(v413 + 28), v449);
                                                                                snprintf(v427, 0xC8uLL, "%02X%02X%02X%02X%02X%02X%02X%02X", v449[0], v449[1], v449[2], v449[3], v449[4], v449[5], v449[6], v449[7]);
                                                                                v186 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                if (v186)
                                                                                {
                                                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v186, OS_LOG_TYPE_INFO))
                                                                                  {
                                                                                    *v443 = 136315394;
                                                                                    *&v443[4] = "vendor:assigned:hw:mac";
                                                                                    *&v443[12] = 2080;
                                                                                    *&v443[14] = v427;
                                                                                    _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_INFO, "HI:PG0:%s=%s", v443, 0x16u);
                                                                                  }
                                                                                }

                                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                {
                                                                                  [PowerEventHandler_Rcp init:];
                                                                                }

                                                                                std::string::basic_string[abi:ne200100]<0>(v443, v427);
                                                                                operator new();
                                                                              }

LABEL_772:
                                                                              otPlatVendorGetDeviceId(*(v413 + 28), v447);
                                                                              snprintf(v427, 0x1EuLL, "%02X%02X%02X%02X%02X%02X%02X%02X", v447[0].__r_.__value_.__s.__data_[0], v447[0].__r_.__value_.__s.__data_[1], v447[0].__r_.__value_.__s.__data_[2], v447[0].__r_.__value_.__s.__data_[3], v447[0].__r_.__value_.__s.__data_[4], v447[0].__r_.__value_.__s.__data_[5], v447[0].__r_.__value_.__s.__data_[6], v447[0].__r_.__value_.__s.__data_[7]);
                                                                              std::string::basic_string[abi:ne200100]<0>(v443, v427);
                                                                              v183 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                              if (v183)
                                                                              {
                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
                                                                                {
                                                                                  v184 = v443;
                                                                                  if (v443[23] < 0)
                                                                                  {
                                                                                    v184 = *v443;
                                                                                  }

                                                                                  *v449 = 136315394;
                                                                                  *&v449[4] = "NCP:HardwareSerialNumber";
                                                                                  *&v449[12] = 2080;
                                                                                  *&v449[14] = v184;
                                                                                  _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_INFO, "HI:PG0:%s=%s", v449, 0x16u);
                                                                                }
                                                                              }

                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                              {
                                                                                [PowerEventHandler_Rcp init:];
                                                                              }

                                                                              boost::any::any<std::string &>();
                                                                            }

LABEL_708:
                                                                            PanId = otLinkGetPanId(*(v413 + 28));
                                                                            v166 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                            if (v166)
                                                                            {
                                                                              v167 = v166;
                                                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
                                                                              {
                                                                                LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315394;
                                                                                *(v427[0].__r_.__value_.__r.__words + 4) = "Network:PANID";
                                                                                WORD2(v427[0].__r_.__value_.__r.__words[1]) = 1024;
                                                                                *(&v427[0].__r_.__value_.__r.__words[1] + 6) = PanId;
                                                                                _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_INFO, "HI:PG0:%s=0x%x6", v427, 0x12u);
                                                                              }
                                                                            }

                                                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                            {
                                                                              [PowerEventHandler_Rcp init:];
                                                                            }

                                                                            operator new();
                                                                          }

LABEL_701:
                                                                          v163 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                          if (v163)
                                                                          {
                                                                            v164 = v163;
                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
                                                                            {
                                                                              LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                              *(v427[0].__r_.__value_.__r.__words + 4) = "Network:XPANID";
                                                                              _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                            }
                                                                          }

                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                          {
                                                                            [PowerEventHandler_Rcp init:];
                                                                          }

                                                                          otThreadGetExtendedPanId(*(v413 + 28));
                                                                          nl::Data::Data(v427, v185, 8);
                                                                          boost::any::any<nl::Data &>();
                                                                        }

LABEL_684:
                                                                        otThreadGetNetworkName(*(v413 + 28));
                                                                        std::string::basic_string[abi:ne200100]<0>(v427, v156);
                                                                        v157 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                        if (v157)
                                                                        {
                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
                                                                          {
                                                                            v158 = v427;
                                                                            if ((v427[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                                            {
                                                                              v158 = v427[0].__r_.__value_.__r.__words[0];
                                                                            }

                                                                            *v443 = 136315394;
                                                                            *&v443[4] = "Network:Name";
                                                                            *&v443[12] = 2080;
                                                                            *&v443[14] = v158;
                                                                            _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_INFO, "HI:PG0:%s=%s", v443, 0x16u);
                                                                          }
                                                                        }

                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                        {
                                                                          [PowerEventHandler_Rcp init:];
                                                                        }

                                                                        boost::any::any<std::string &>();
                                                                      }

LABEL_628:
                                                                      RcpHostContext::get_rcp_state(RcpHostContext::sRcpHostContext, v427);
                                                                      v140 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                      if (v140)
                                                                      {
                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
                                                                        {
                                                                          v141 = v427;
                                                                          if ((v427[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                                          {
                                                                            v141 = v427[0].__r_.__value_.__r.__words[0];
                                                                          }

                                                                          *v443 = 136315394;
                                                                          *&v443[4] = "NCP:State";
                                                                          *&v443[12] = 2080;
                                                                          *&v443[14] = v141;
                                                                          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_INFO, "HI:PG0:%s=%s", v443, 0x16u);
                                                                        }
                                                                      }

                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                      {
                                                                        [PowerEventHandler_Rcp init:];
                                                                      }

                                                                      boost::any::any<std::string &>();
                                                                    }

LABEL_623:
                                                                    LODWORD(v456.__r_.__value_.__l.__data_) = 0;
                                                                    v134 = *(v413 + 1);
                                                                    v135 = *(v413 + 2);
                                                                    v136 = (v413 + 8);
                                                                    memset(v449, 0, 24);
                                                                    std::vector<ServiceEntry>::__init_with_size[abi:ne200100]<ServiceEntry*,ServiceEntry*>(v449, v134, v135, 0xCCCCCCCCCCCCCCCDLL * ((v135 - v134) >> 4));
                                                                    v447[0].__r_.__value_.__r.__words[0] = v447;
                                                                    v447[0].__r_.__value_.__l.__size_ = v447;
                                                                    v447[0].__r_.__value_.__r.__words[2] = 0;
                                                                    v137 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                    if (v137)
                                                                    {
                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
                                                                      {
                                                                        v139 = *(__s1 + 56);
                                                                        *v443 = 67109378;
                                                                        *&v443[4] = v139;
                                                                        *&v443[8] = 2080;
                                                                        *&v443[10] = "Thread:Services";
                                                                        _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v443, 0x12u);
                                                                      }
                                                                    }

                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                    {
                                                                      [PowerEventHandler_Rcp init:];
                                                                    }

                                                                    if ((*(__s1 + 56) & 1) == 0)
                                                                    {
                                                                      v162 = *(v413 + 1);
                                                                      if (v162 != *(v413 + 2))
                                                                      {
                                                                        *&v138 = 136315394;
                                                                        v411 = v138;
                                                                        *&v443[8] = 0;
                                                                        *&v443[16] = 0;
                                                                        *v443 = &v443[8];
                                                                        LODWORD(v446.__r_.__value_.__l.__data_) = *(v162 + 12);
                                                                        std::string::basic_string[abi:ne200100]<0>(__s, "EnterpriseNumber");
                                                                        v448[0].__r_.__value_.__r.__words[0] = __s;
                                                                        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v443, &__s[0].__r_.__value_.__l.__data_);
                                                                        boost::any::operator=<unsigned int &>();
                                                                      }

                                                                      boost::any::any<std::list<std::map<std::string,boost::any>> &>();
                                                                    }

                                                                    v159 = *(v413 + 28);
                                                                    v160 = *(v159 + 143816);
                                                                    LODWORD(v410) = *(v159 + 143816);
                                                                    update_netdata_maxlength_metric(v160);
                                                                    if (v410 < 0xF1)
                                                                    {
                                                                      goto LABEL_720;
                                                                    }

                                                                    update_netdata_full_metric(1);
                                                                    v161 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                    if (v161)
                                                                    {
                                                                      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                                                                      {
                                                                        HostInterpreter::ProcessPropertyGet();
                                                                      }
                                                                    }

                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                    {
                                                                      [PowerEventHandler_Rcp init:];
                                                                    }

                                                                    v168 = RcpHostContext::sRcpHostContext;
                                                                    std::string::basic_string[abi:ne200100]<0>(v418, "Stability");
                                                                    std::string::basic_string[abi:ne200100]<0>(v416, "Network Data Health");
                                                                    std::string::basic_string[abi:ne200100]<0>(v414, "Network Data full");
                                                                    RcpHostContext::captureABC(v168, v418, v416, v414, 0, 1);
                                                                    if (v415 < 0)
                                                                    {
                                                                      operator delete(v414[0]);
                                                                      if ((v417 & 0x80000000) == 0)
                                                                      {
LABEL_719:
                                                                        if ((v419 & 0x80000000) == 0)
                                                                        {
LABEL_720:
                                                                          v169 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                          if (v169)
                                                                          {
                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
                                                                            {
                                                                              *v443 = 67109120;
                                                                              *&v443[4] = v410;
                                                                              _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_INFO, "NETDATA_LEN = %d", v443, 8u);
                                                                            }
                                                                          }

                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                          {
                                                                            [PowerEventHandler_Rcp init:];
                                                                          }

                                                                          v171 = 0;
                                                                          *&v170 = 136315394;
                                                                          v409 = v170;
                                                                          *&v170 = 67109120;
                                                                          __s1 = v170;
                                                                          *&v170 = 136315138;
                                                                          v411 = v170;
                                                                          while (1)
                                                                          {
                                                                            if (otNetDataGetNextService(*(v413 + 28), &v456, v427))
                                                                            {
                                                                              v179 = *v449;
                                                                              for (i = *&v449[8]; v179 != i; v179 += 80)
                                                                              {
                                                                                if (!*(v179 + 8))
                                                                                {
                                                                                  v181 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                  if (v181)
                                                                                  {
                                                                                    is_the_mask_enabled = syslog_is_the_mask_enabled(6);
                                                                                    if (is_the_mask_enabled)
                                                                                    {
                                                                                      is_the_mask_enabled = os_log_type_enabled(v181, OS_LOG_TYPE_INFO);
                                                                                      if (is_the_mask_enabled)
                                                                                      {
                                                                                        *v443 = 0;
                                                                                        _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_INFO, "Find and erase NCP entry from mServiceEntries", v443, 2u);
                                                                                      }
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    is_the_mask_enabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                                                                                    if (is_the_mask_enabled)
                                                                                    {
                                                                                      *v443 = v409;
                                                                                      *&v443[4] = "com.apple.wpantund.ncp";
                                                                                      *&v443[12] = 2080;
                                                                                      *&v443[14] = "default";
                                                                                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v443, 0x16u);
                                                                                    }
                                                                                  }

                                                                                  HostInterpreter::find_and_erase_service_entry(is_the_mask_enabled, 0, *(v179 + 12), v179 + 16, v179 + 48, *(v179 + 72), v136);
                                                                                  i = *&v449[8];
                                                                                }
                                                                              }

                                                                              HostInterpreter::signal_service_list_change(v413);
                                                                              if (v410 >= 0xF1 && !v171)
                                                                              {
                                                                                HostInterpreter::force_leader_reelection(v413);
                                                                              }

                                                                              std::list<std::map<std::string,boost::any>>::~list(v447);
                                                                              std::vector<ServiceEntry>::~vector[abi:ne200100](v449);
                                                                              return 0;
                                                                            }

                                                                            nl::Data::Data(__s, &v427[0].__r_.__value_.__s.__data_[9], v427[0].__r_.__value_.__s.__data_[8]);
                                                                            if (v427[0].__r_.__value_.__s.__data_[8] == 1 && v427[0].__r_.__value_.__s.__data_[9] == 93)
                                                                            {
                                                                              v172 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                              ++v171;
                                                                              if (v172)
                                                                              {
                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
                                                                                {
                                                                                  *v443 = __s1;
                                                                                  *&v443[4] = v171;
                                                                                  _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_INFO, "unicast_service_count = %d", v443, 8u);
                                                                                }
                                                                              }

                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                              {
                                                                                *v443 = v409;
                                                                                *&v443[4] = "com.apple.wpantund.ncp";
                                                                                *&v443[12] = 2080;
                                                                                *&v443[14] = "default";
                                                                                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v443, 0x16u);
                                                                              }
                                                                            }

                                                                            nl::Data::Data(v448, v441, v440);
                                                                            v173 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                            if (v173)
                                                                            {
                                                                              v174 = syslog_is_the_mask_enabled(6);
                                                                              if (v174)
                                                                              {
                                                                                v174 = os_log_type_enabled(v173, OS_LOG_TYPE_INFO);
                                                                                if (v174)
                                                                                {
                                                                                  *v443 = 0;
                                                                                  _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_INFO, "Find and erase NCP entry from local entries", v443, 2u);
                                                                                }
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v174 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                                                                              if (v174)
                                                                              {
                                                                                *v443 = v409;
                                                                                *&v443[4] = "com.apple.wpantund.ncp";
                                                                                *&v443[12] = 2080;
                                                                                *&v443[14] = "default";
                                                                                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v443, 0x16u);
                                                                              }
                                                                            }

                                                                            HostInterpreter::find_and_erase_service_entry(v174, 0, SHIDWORD(v427[0].__r_.__value_.__r.__words[0]), __s, v448, v442, v449);
                                                                            v175 = ServiceEntry::ServiceEntry(v443, 0, SHIDWORD(v427[0].__r_.__value_.__r.__words[0]), __s, v439 & 1, v448);
                                                                            v176 = v442;
                                                                            if ((HostInterpreter::find_service_entry(v175, 0, SHIDWORD(v427[0].__r_.__value_.__r.__words[0]), __s, v448, v442, v136) & 1) == 0)
                                                                            {
                                                                              WORD4(v444) = v176;
                                                                              BYTE10(v444) = v427[0].__r_.__value_.__s.__data_[0];
                                                                              std::vector<ServiceEntry>::emplace_back<ServiceEntry const&>(v136, v443);
                                                                              v177 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                              if (v177)
                                                                              {
                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
                                                                                {
                                                                                  ServiceEntry::get_description(v443);
                                                                                }
                                                                              }

                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                              {
                                                                                LODWORD(v446.__r_.__value_.__l.__data_) = v409;
                                                                                *(v446.__r_.__value_.__r.__words + 4) = "com.apple.wpantund.ncp";
                                                                                WORD2(v446.__r_.__value_.__r.__words[1]) = 2080;
                                                                                *(&v446.__r_.__value_.__r.__words[1] + 6) = "default";
                                                                                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", &v446, 0x16u);
                                                                                ServiceEntry::~ServiceEntry(v443);
                                                                                v178 = v448[0].__r_.__value_.__r.__words[0];
                                                                                if (!v448[0].__r_.__value_.__r.__words[0])
                                                                                {
                                                                                  goto LABEL_750;
                                                                                }

LABEL_749:
                                                                                v448[0].__r_.__value_.__l.__size_ = v178;
                                                                                operator delete(v178);
                                                                                goto LABEL_750;
                                                                              }
                                                                            }

                                                                            ServiceEntry::~ServiceEntry(v443);
                                                                            v178 = v448[0].__r_.__value_.__r.__words[0];
                                                                            if (v448[0].__r_.__value_.__r.__words[0])
                                                                            {
                                                                              goto LABEL_749;
                                                                            }

LABEL_750:
                                                                            if (__s[0].__r_.__value_.__r.__words[0])
                                                                            {
                                                                              __s[0].__r_.__value_.__l.__size_ = __s[0].__r_.__value_.__r.__words[0];
                                                                              operator delete(__s[0].__r_.__value_.__l.__data_);
                                                                            }
                                                                          }
                                                                        }

LABEL_771:
                                                                        operator delete(v418[0]);
                                                                        goto LABEL_720;
                                                                      }
                                                                    }

                                                                    else if ((v417 & 0x80000000) == 0)
                                                                    {
                                                                      goto LABEL_719;
                                                                    }

                                                                    operator delete(v416[0]);
                                                                    if ((v419 & 0x80000000) == 0)
                                                                    {
                                                                      goto LABEL_720;
                                                                    }

                                                                    goto LABEL_771;
                                                                  }

LABEL_619:
                                                                  LODWORD(v448[0].__r_.__value_.__l.__data_) = 0;
                                                                  Rloc16 = otThreadGetRloc16(*(v413 + 28));
                                                                  memset(v443, 0, sizeof(v443));
                                                                  v444 = 0u;
                                                                  memset(v445, 0, 20);
                                                                  v132 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                  if (v132)
                                                                  {
                                                                    v133 = v132;
                                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
                                                                    {
                                                                      *v449 = 136315138;
                                                                      *&v449[4] = "nm:networkdata";
                                                                      _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_INFO, "HI:PG1:%s", v449, 0xCu);
                                                                    }
                                                                  }

                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                  {
                                                                    [PowerEventHandler_Rcp init:];
                                                                  }

                                                                  otThreadGetPartitionId(*(v413 + 28));
                                                                  v142 = *(*(v413 + 28) + 143816);
                                                                  if (otNetDataGetNextService(*(v413 + 28), v448, v427))
                                                                  {
                                                                    v143 = 0;
                                                                    v144 = 0;
                                                                    v145 = 0;
                                                                  }

                                                                  else
                                                                  {
                                                                    v146 = 0;
                                                                    v143 = 0;
                                                                    v144 = 0;
                                                                    v145 = 0;
                                                                    do
                                                                    {
                                                                      nl::Data::Data(v449, &v427[0].__r_.__value_.__s.__data_[9], v427[0].__r_.__value_.__s.__data_[8]);
                                                                      if (v427[0].__r_.__value_.__s.__data_[8] == 1 && v427[0].__r_.__value_.__s.__data_[9] == 93)
                                                                      {
                                                                        ++v144;
                                                                      }

                                                                      else if (v427[0].__r_.__value_.__s.__data_[8] == 2 && v427[0].__r_.__value_.__s.__data_[9] == 92)
                                                                      {
                                                                        ++v143;
                                                                        if (v146)
                                                                        {
                                                                          v147 = v146;
                                                                          v148 = v443;
                                                                          v149 = v146;
                                                                          while (1)
                                                                          {
                                                                            v150 = *v148++;
                                                                            if (v150 == v427[0].__r_.__value_.__s.__data_[10])
                                                                            {
                                                                              break;
                                                                            }

                                                                            if (!--v149)
                                                                            {
                                                                              goto LABEL_650;
                                                                            }
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v147 = 0;
LABEL_650:
                                                                          v443[v147] = v427[0].__r_.__value_.__s.__data_[10];
                                                                          ++v146;
                                                                          ++v145;
                                                                        }
                                                                      }

                                                                      if (*v449)
                                                                      {
                                                                        *&v449[8] = *v449;
                                                                        operator delete(*v449);
                                                                      }
                                                                    }

                                                                    while (!otNetDataGetNextService(*(v413 + 28), v448, v427));
                                                                    if (v145 >= 2u)
                                                                    {
                                                                      HostInterpreter::setRcpSrpAnycastServiceCovergenceTimer(v413);
                                                                      goto LABEL_657;
                                                                    }
                                                                  }

                                                                  HostInterpreter::clearRcpSrpAnycastServiceCovergenceTimer(v413);
LABEL_657:
                                                                  if (v144 < 2u)
                                                                  {
                                                                    HostInterpreter::clearRcpSrpUnicastServiceCovergenceTimer(v413);
                                                                  }

                                                                  else if ((*(RcpHostContext::sRcpHostContext + 5966) & 1) == 0)
                                                                  {
                                                                    HostInterpreter::setRcpSrpUnicastServiceCovergenceTimer(v413);
                                                                  }

                                                                  LODWORD(v448[0].__r_.__value_.__l.__data_) = 0;
                                                                  v151 = 0;
                                                                  v152 = 0;
                                                                  if (otNetDataGetNextOnMeshPrefix(*(v413 + 28), v448, v447))
                                                                  {
                                                                    goto LABEL_666;
                                                                  }

                                                                  do
                                                                  {
                                                                    ++v152;
                                                                    LOBYTE(v151) = (Rloc16 == WORD2(v447[0].__r_.__value_.__r.__words[2])) | v151;
                                                                  }

                                                                  while (!otNetDataGetNextOnMeshPrefix(*(v413 + 28), v448, v447));
                                                                  v151 &= 1u;
                                                                  if (v152 < 2u)
                                                                  {
LABEL_666:
                                                                    HostInterpreter::clearSrpPrefixCovergenceTimer(v413);
                                                                  }

                                                                  else if ((*(RcpHostContext::sRcpHostContext + 5965) & 1) == 0)
                                                                  {
                                                                    HostInterpreter::setSrpPrefixCovergenceTimer(v413);
                                                                  }

                                                                  if (*(v413 + 81) != v144 || *(v413 + 82) != v143 || *(v413 + 83) != v152)
                                                                  {
                                                                    v153 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                    if (v153)
                                                                    {
                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
                                                                      {
                                                                        *v449 = 67110144;
                                                                        *&v449[8] = 1024;
                                                                        *&v449[10] = v143;
                                                                        *&v449[14] = 1024;
                                                                        *&v449[4] = v144;
                                                                        *&v449[16] = v152;
                                                                        *&v449[20] = 1024;
                                                                        *&v449[22] = v145;
                                                                        v450 = 1024;
                                                                        v451 = v151;
                                                                        _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_INFO, "NetData: numUnicastServices = %d, numAnycastServices = %d, numOnmeshPrefixes = %d, numAnycastServicesUniqueSeq = %d, myOnmeshPrefixAdvertised = %d", v449, 0x20u);
                                                                      }
                                                                    }

                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                    {
                                                                      [PowerEventHandler_Rcp init:];
                                                                    }

                                                                    v154 = v413;
                                                                    *(v413 + 81) = v144;
                                                                    *(v154 + 82) = v143;
                                                                    *(v154 + 83) = v152;
                                                                  }

                                                                  if (!(v145 | v144) || v152)
                                                                  {
                                                                    HostInterpreter::clearSrpAdvertisedWithoutPrefixTimer(v413);
                                                                  }

                                                                  else
                                                                  {
                                                                    HostInterpreter::setSrpAdvertisedWithoutPrefixTimer(v413);
                                                                  }

                                                                  std::string::basic_string[abi:ne200100]<0>(v449, "is_primary_resident");
                                                                  __s[0].__r_.__value_.__r.__words[0] = v449;
                                                                  v155 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, v449);
                                                                  std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v155 + 7, "1");
                                                                  if ((v449[23] & 0x80000000) != 0)
                                                                  {
                                                                    operator delete(*v449);
                                                                  }

                                                                  operator new();
                                                                }

LABEL_616:
                                                                v427[0].__r_.__value_.__r.__words[0] = v427;
                                                                v427[0].__r_.__value_.__l.__size_ = v427;
                                                                v427[0].__r_.__value_.__r.__words[2] = 0;
                                                                v130 = *(v413 + 10);
                                                                if (v130 != (v413 + 88))
                                                                {
                                                                  *&v443[8] = 0;
                                                                  *&v443[16] = 0;
                                                                  *v443 = &v443[8];
                                                                  IPv6Prefix::to_string((v130 + 28), v449);
                                                                  std::string::basic_string[abi:ne200100]<0>(v447, "address");
                                                                  __s[0].__r_.__value_.__r.__words[0] = v447;
                                                                  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v443, &v447[0].__r_.__value_.__l.__data_);
                                                                  boost::any::operator=<std::string>();
                                                                }

                                                                boost::any::any<std::list<std::map<std::string,boost::any>> &>();
                                                              }

LABEL_613:
                                                              v427[0].__r_.__value_.__r.__words[0] = v427;
                                                              v427[0].__r_.__value_.__l.__size_ = v427;
                                                              v427[0].__r_.__value_.__r.__words[2] = 0;
                                                              v129 = *(v413 + 7);
                                                              if (v129 != (v413 + 64))
                                                              {
                                                                OnMeshPrefixEntry::get_description((v129 + 48), (v129 + 28), 1, v443);
                                                                operator new();
                                                              }

                                                              boost::any::any<std::list<std::string> &>();
                                                            }

LABEL_612:
                                                            HostInterpreter::get_num_unique_off_mesh_routes(v413);
                                                            operator new();
                                                          }

LABEL_611:
                                                          HostInterpreter::get_num_routers(v413);
                                                          operator new();
                                                        }

LABEL_610:
                                                        HostInterpreter::get_num_unique_on_mesh_prefixes(v413);
                                                        operator new();
                                                      }

LABEL_609:
                                                      *&v427[0].__r_.__value_.__r.__words[1] = 0uLL;
                                                      v427[0].__r_.__value_.__r.__words[0] = &v427[0].__r_.__value_.__l.__size_;
                                                      LODWORD(v447[0].__r_.__value_.__l.__data_) = getIntValue("numResidentsInHome");
                                                      std::string::basic_string[abi:ne200100]<0>(v443, "numResidentsInHome");
                                                      *v449 = v443;
                                                      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v427, v443);
                                                      boost::any::operator=<unsigned int &>();
                                                    }

LABEL_599:
                                                    *&v443[16] = 0;
                                                    *&v443[8] = 0;
                                                    *v443 = &v443[8];
                                                    memset(v449, 0, 24);
                                                    memset(v447, 0, 24);
                                                    memset(__s, 0, 24);
                                                    StringValue = getStringValue("is_primary_resident");
                                                    if (StringValue)
                                                    {
                                                      v124 = StringValue;
                                                    }

                                                    else
                                                    {
                                                      v124 = "0";
                                                    }

                                                    std::string::assign(v449, v124);
                                                    v125 = getStringValue("is_primary_resident_thread_capable");
                                                    if (v125)
                                                    {
                                                      v126 = v125;
                                                    }

                                                    else
                                                    {
                                                      v126 = "0";
                                                    }

                                                    std::string::assign(v447, v126);
                                                    v127 = getStringValue("primary_resident_info");
                                                    if (v127)
                                                    {
                                                      v128 = v127;
                                                    }

                                                    else
                                                    {
                                                      v128 = "0";
                                                    }

                                                    std::string::assign(__s, v128);
                                                    std::string::basic_string[abi:ne200100]<0>(v427, "is_primary_resident");
                                                    v448[0].__r_.__value_.__r.__words[0] = v427;
                                                    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v443, &v427[0].__r_.__value_.__l.__data_);
                                                    boost::any::operator=<std::string &>();
                                                  }

LABEL_589:
                                                  *&v427[0].__r_.__value_.__r.__words[1] = 0uLL;
                                                  v427[0].__r_.__value_.__r.__words[0] = &v427[0].__r_.__value_.__l.__size_;
                                                  memset(v443, 0, 24);
                                                  memset(v449, 0, 24);
                                                  memset(v447, 0, 24);
                                                  v117 = getStringValue("num_daemon_restart_due_to_reboots");
                                                  if (v117)
                                                  {
                                                    v118 = v117;
                                                  }

                                                  else
                                                  {
                                                    v118 = "0";
                                                  }

                                                  std::string::assign(v443, v118);
                                                  v119 = getStringValue("num_daemon_restart_due_to_crashes_or_jetsams");
                                                  if (v119)
                                                  {
                                                    v120 = v119;
                                                  }

                                                  else
                                                  {
                                                    v120 = "0";
                                                  }

                                                  std::string::assign(v449, v120);
                                                  v121 = getStringValue("num_firmware_resets");
                                                  if (v121)
                                                  {
                                                    v122 = v121;
                                                  }

                                                  else
                                                  {
                                                    v122 = "0";
                                                  }

                                                  std::string::assign(v447, v122);
                                                  std::string::basic_string[abi:ne200100]<0>(__s, "num_daemon_restart_due_to_reboots");
                                                  v448[0].__r_.__value_.__r.__words[0] = __s;
                                                  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v427, &__s[0].__r_.__value_.__l.__data_);
                                                  boost::any::operator=<std::string &>();
                                                }

LABEL_567:
                                                *&v427[0].__r_.__value_.__r.__words[1] = 0uLL;
                                                v427[0].__r_.__value_.__r.__words[0] = &v427[0].__r_.__value_.__l.__size_;
                                                memset(v443, 0, 24);
                                                memset(v449, 0, 24);
                                                memset(v447, 0, 24);
                                                v110 = getStringValue("ca_trigger_based_counters_num_daemon_restart_due_to_reboots");
                                                if (v110)
                                                {
                                                  v111 = v110;
                                                }

                                                else
                                                {
                                                  v111 = "0";
                                                }

                                                std::string::assign(v443, v111);
                                                v112 = getStringValue("ca_trigger_based_counters_num_daemon_restart_due_to_crashes_or_jetsams");
                                                if (v112)
                                                {
                                                  v113 = v112;
                                                }

                                                else
                                                {
                                                  v113 = "0";
                                                }

                                                std::string::assign(v449, v113);
                                                v114 = getStringValue("ca_trigger_based_counters_num_firmware_resets");
                                                if (v114)
                                                {
                                                  v115 = v114;
                                                }

                                                else
                                                {
                                                  v115 = "0";
                                                }

                                                std::string::assign(v447, v115);
                                                std::string::basic_string[abi:ne200100]<0>(__s, "ca_trigger_based_counters_num_daemon_restart_due_to_reboots");
                                                v448[0].__r_.__value_.__r.__words[0] = __s;
                                                std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v427, &__s[0].__r_.__value_.__l.__data_);
                                                boost::any::operator=<std::string &>();
                                              }

LABEL_530:
                                              operator new();
                                            }

                                            goto LABEL_508;
                                          }

LABEL_491:
                                          ThreadNetifName = otSysGetThreadNetifName();
                                          std::string::basic_string[abi:ne200100]<0>(v443, ThreadNetifName);
                                          v89 = log_get_logging_obg("com.apple.threadradiod", "default");
                                          if (v89)
                                          {
                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
                                            {
                                              v90 = *(__s1 + 56);
                                              v91 = v443;
                                              if (v443[23] < 0)
                                              {
                                                v91 = *v443;
                                              }

                                              LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109634;
                                              HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v90;
                                              LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                                              *(&v427[0].__r_.__value_.__r.__words[1] + 2) = "Config:TUN:InterfaceName";
                                              WORD1(v427[0].__r_.__value_.__r.__words[2]) = 2080;
                                              *(&v427[0].__r_.__value_.__r.__words[2] + 4) = v91;
                                              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "HI:PG%d:%s=[%s]", v427, 0x1Cu);
                                            }
                                          }

                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [PowerEventHandler_Rcp init:];
                                          }

                                          if (*(__s1 + 56))
                                          {
                                            std::string::basic_string[abi:ne200100]<0>(v427, "Config:TUN:InterfaceName");
                                            boost::any::any<std::string &>();
                                          }

                                          boost::any::any<std::string &>();
                                        }

LABEL_480:
                                        otThreadGetWasChild(*(v413 + 28));
                                        operator new();
                                      }

LABEL_465:
                                      memset(v427, 0, 40);
                                      std::string::basic_string[abi:ne200100]<0>(v449, "");
                                      std::string::basic_string[abi:ne200100]<0>(v447, "");
                                      v84 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v84)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                                        {
                                          v85 = *(v6 + 56);
                                          *v443 = 136315650;
                                          *&v443[4] = "ProcessPropertyGet";
                                          *&v443[12] = 1024;
                                          *&v443[14] = v85;
                                          *&v443[18] = 2080;
                                          *&v443[20] = "NCP:WedMleId";
                                          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(%d)]: %s] otThreadGetCslPeripheralMleID", v443, 0x1Cu);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }

                                      LinkMode = otThreadGetLinkMode(*(v413 + 28));
                                      if (~LinkMode & 6) != 0 || (LinkMode)
                                      {
                                        v93 = log_get_logging_obg("com.apple.threadradiod", "default");
                                        if (v93)
                                        {
                                          v6 = __s1;
                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
                                          {
                                            v94 = otThreadGetLinkMode(*(v413 + 28));
                                            *v443 = 136315394;
                                            *&v443[4] = "ProcessPropertyGet";
                                            *&v443[12] = 1024;
                                            *&v443[14] = ((~v94 & 6) == 0) & (v94 ^ 1);
                                            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "%s: isSleepyRouter=[%d]", v443, 0x12u);
                                            v6 = __s1;
                                          }
                                        }

                                        else
                                        {
                                          v6 = __s1;
                                          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [PowerEventHandler_Rcp init:];
                                          }
                                        }
                                      }

                                      else
                                      {
                                        otThreadGetCslPeripheralMleID(*(v413 + 28), v427, 40);
                                      }

                                      if (v427[0].__r_.__value_.__s.__data_[0])
                                      {
                                        std::string::assign(v449, v427);
                                        v98 = log_get_logging_obg("com.apple.threadradiod", "default");
                                        if (v98)
                                        {
                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
                                          {
                                            v99 = *(v6 + 56);
                                            v100 = v449;
                                            if (v449[23] < 0)
                                            {
                                              v100 = *v449;
                                            }

                                            *v443 = 136315906;
                                            *&v443[4] = "ProcessPropertyGet";
                                            *&v443[12] = 1024;
                                            *&v443[14] = v99;
                                            *&v443[18] = 2080;
                                            *&v443[20] = "NCP:WedMleId";
                                            *&v443[28] = 2080;
                                            *&v443[30] = v100;
                                            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(%d)]: %s wedMleIdStr = %s", v443, 0x26u);
                                          }

                                          goto LABEL_538;
                                        }

                                        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                        {
                                          goto LABEL_538;
                                        }
                                      }

                                      else
                                      {
                                        v101 = log_get_logging_obg("com.apple.threadradiod", "default");
                                        if (v101)
                                        {
                                          v6 = __s1;
                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
                                          {
                                            v102 = *(__s1 + 56);
                                            *v443 = 136315650;
                                            *&v443[4] = "ProcessPropertyGet";
                                            *&v443[12] = 1024;
                                            *&v443[14] = v102;
                                            *&v443[18] = 2080;
                                            *&v443[20] = "NCP:WedMleId";
                                            _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(%d)]: %s wedMleIdStr empty", v443, 0x1Cu);
                                          }

LABEL_538:
                                          if ((*(v6 + 56) & 1) == 0)
                                          {
                                            v104 = log_get_logging_obg("com.apple.threadradiod", "default");
                                            if (v104)
                                            {
                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                                              {
                                                *v443 = 136315394;
                                                *&v443[4] = "ProcessPropertyGet";
                                                *&v443[12] = 2080;
                                                *&v443[14] = "NCP:WedMleId";
                                                _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(0)]: %s] Events Off", v443, 0x16u);
                                              }
                                            }

                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                            {
                                              [PowerEventHandler_Rcp init:];
                                            }

                                            boost::any::any<std::string &>();
                                          }

                                          v103 = log_get_logging_obg("com.apple.threadradiod", "default");
                                          if (v103)
                                          {
                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
                                            {
                                              *v443 = 136315394;
                                              *&v443[4] = "ProcessPropertyGet";
                                              *&v443[12] = 2080;
                                              *&v443[14] = "NCP:WedMleId";
                                              _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(1)]: %s] Events On", v443, 0x16u);
                                            }
                                          }

                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [PowerEventHandler_Rcp init:];
                                          }

                                          v105 = v449[23];
                                          if (v449[23] < 0)
                                          {
                                            v105 = *&v449[8];
                                          }

                                          if (v105)
                                          {
                                            CslPeripheralAddr = otThreadGetCslPeripheralAddr(*(v413 + 28));
                                            if (!CslPeripheralAddr)
                                            {
                                              goto LABEL_588;
                                            }

                                            std::string::assign(v447, CslPeripheralAddr);
                                            v107 = log_get_logging_obg("com.apple.threadradiod", "default");
                                            if (v107)
                                            {
                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                                              {
                                                v108 = v447;
                                                if ((v447[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                {
                                                  v108 = v447[0].__r_.__value_.__r.__words[0];
                                                }

                                                *v443 = 136315394;
                                                *&v443[4] = "ProcessPropertyGet";
                                                *&v443[12] = 2080;
                                                *&v443[14] = v108;
                                                v109 = "%s: Found Wed Address: %s";
                                                goto LABEL_563;
                                              }

                                              goto LABEL_588;
                                            }

                                            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                            {
                                              goto LABEL_588;
                                            }
                                          }

                                          else
                                          {
                                            v107 = log_get_logging_obg("com.apple.threadradiod", "default");
                                            if (v107)
                                            {
                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                                              {
                                                *v443 = 136315394;
                                                *&v443[4] = "ProcessPropertyGet";
                                                *&v443[12] = 2080;
                                                *&v443[14] = "WakeOnDeviceConnectionStatus";
                                                v109 = "%s: no WED Found, Empty Signal: %s";
LABEL_563:
                                                _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, v109, v443, 0x16u);
                                              }

LABEL_588:
                                              *&v443[16] = 0;
                                              *&v443[8] = 0;
                                              *v443 = &v443[8];
                                              std::string::basic_string[abi:ne200100]<0>(__s, "mleid");
                                              v448[0].__r_.__value_.__r.__words[0] = __s;
                                              std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v443, &__s[0].__r_.__value_.__l.__data_);
                                              boost::any::operator=<std::string &>();
                                            }

                                            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                            {
                                              goto LABEL_588;
                                            }
                                          }

                                          [PowerEventHandler_Rcp init:];
                                          goto LABEL_588;
                                        }

                                        v6 = __s1;
                                        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                        {
                                          goto LABEL_538;
                                        }
                                      }

                                      [PowerEventHandler_Rcp init:];
                                      goto LABEL_538;
                                    }

LABEL_434:
                                    v72 = otThreadGetCslPeripheralAddr(*(v413 + 28));
                                    std::string::basic_string[abi:ne200100]<0>(v427, "");
                                    if (v72)
                                    {
                                      std::string::assign(v427, v72);
                                      v73 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v73)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                                        {
                                          v74 = v427;
                                          if ((v427[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                          {
                                            v74 = v427[0].__r_.__value_.__r.__words[0];
                                          }

                                          *v443 = 136315394;
                                          *&v443[4] = "NCP:WedExtendedAddress";
                                          *&v443[12] = 2080;
                                          *&v443[14] = v74;
                                          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "HI:PG0:%s wedAddrStr = %s", v443, 0x16u);
                                        }

                                        goto LABEL_514;
                                      }

                                      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        goto LABEL_514;
                                      }
                                    }

                                    else
                                    {
                                      v87 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v87)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                                        {
                                          *v443 = 136315138;
                                          *&v443[4] = "NCP:WedExtendedAddress";
                                          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "HI:PG0:%s wedAddrStr empty", v443, 0xCu);
                                        }

LABEL_514:
                                        boost::any::any<std::string &>();
                                      }

                                      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        goto LABEL_514;
                                      }
                                    }

                                    [PowerEventHandler_Rcp init:];
                                    goto LABEL_514;
                                  }

LABEL_425:
                                  PairingDeviceExtAddr = otLinkGetPairingDeviceExtAddr(*(v413 + 28));
                                  memset(v443, 0, 24);
                                  snprintf(v427, 0xC8uLL, "%02X%02X%02X%02X%02X%02X%02X%02X", *PairingDeviceExtAddr, PairingDeviceExtAddr[1], PairingDeviceExtAddr[2], PairingDeviceExtAddr[3], PairingDeviceExtAddr[4], PairingDeviceExtAddr[5], PairingDeviceExtAddr[6], PairingDeviceExtAddr[7]);
                                  std::string::assign(v443, v427);
                                  v70 = log_get_logging_obg("com.apple.threadradiod", "default");
                                  if (v70)
                                  {
                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                                    {
                                      v71 = v443;
                                      if (v443[23] < 0)
                                      {
                                        v71 = *v443;
                                      }

                                      *v449 = 136315394;
                                      *&v449[4] = "Thread:EmacId";
                                      *&v449[12] = 2080;
                                      *&v449[14] = v71;
                                      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "HI:PG0:%s extAddr = %s", v449, 0x16u);
                                    }
                                  }

                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                  {
                                    [PowerEventHandler_Rcp init:];
                                  }

                                  boost::any::any<std::string &>();
                                }

LABEL_418:
                                v66 = log_get_logging_obg("com.apple.threadradiod", "default");
                                if (v66)
                                {
                                  v67 = v66;
                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                                  {
                                    v68 = *(v6 + 56);
                                    LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315650;
                                    *(v427[0].__r_.__value_.__r.__words + 4) = "ProcessPropertyGet";
                                    WORD2(v427[0].__r_.__value_.__r.__words[1]) = 1024;
                                    *(&v427[0].__r_.__value_.__r.__words[1] + 6) = v68;
                                    WORD1(v427[0].__r_.__value_.__r.__words[2]) = 2080;
                                    *(&v427[0].__r_.__value_.__r.__words[2] + 4) = "Thread:NeighborMeshLocalAddress";
                                    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(%d)]: %s] ProcessDiagGetSingleHopPeerMeshLocalIPAddr", v427, 0x1Cu);
                                  }
                                }

                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                {
                                  [PowerEventHandler_Rcp init:];
                                }

                                v75 = otThreadGetLinkMode(*(v413 + 28));
                                if ((~v75 & 6) != 0 || (v75) && !*(v413 + 32))
                                {
                                  SingleHopPeerMeshLocalIPAddr = HostInterpreter::ProcessDiagGetSingleHopPeerMeshLocalIPAddr(v413);
                                }

                                else
                                {
                                  v76 = log_get_logging_obg("com.apple.threadradiod", "default");
                                  if (v76)
                                  {
                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
                                    {
                                      v77 = otThreadGetLinkMode(*(v413 + 28));
                                      v78 = *(v413 + 32);
                                      *(v427[0].__r_.__value_.__r.__words + 4) = "ProcessPropertyGet";
                                      LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315650;
                                      if (v78)
                                      {
                                        v79 = "True";
                                      }

                                      else
                                      {
                                        v79 = "False";
                                      }

                                      WORD2(v427[0].__r_.__value_.__r.__words[1]) = 1024;
                                      *(&v427[0].__r_.__value_.__r.__words[1] + 6) = ((~v77 & 6) == 0) & (v77 ^ 1);
                                      WORD1(v427[0].__r_.__value_.__r.__words[2]) = 2080;
                                      *(&v427[0].__r_.__value_.__r.__words[2] + 4) = v79;
                                      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "%s: isSleepyRouter=%d, rcpSrpMeshLocalAddressTimer started = %s", v427, 0x1Cu);
                                    }
                                  }

                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                  {
                                    [PowerEventHandler_Rcp init:];
                                  }

                                  SingleHopPeerMeshLocalIPAddr = 23;
                                }

                                v81 = *(v6 + 56) == 0;
                                v82 = log_get_logging_obg("com.apple.threadradiod", "default");
                                v83 = v82;
                                if (v81)
                                {
                                  if (v82)
                                  {
                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
                                    {
                                      LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315394;
                                      *(v427[0].__r_.__value_.__r.__words + 4) = "ProcessPropertyGet";
                                      WORD2(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                                      *(&v427[0].__r_.__value_.__r.__words[1] + 6) = "Thread:NeighborMeshLocalAddress";
                                      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(0)]: %s] Events Off", v427, 0x16u);
                                    }
                                  }

                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                  {
                                    [PowerEventHandler_Rcp init:];
                                  }

                                  operator new();
                                }

                                if (v82)
                                {
                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
                                  {
                                    LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315394;
                                    *(v427[0].__r_.__value_.__r.__words + 4) = "ProcessPropertyGet";
                                    WORD2(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                                    *(&v427[0].__r_.__value_.__r.__words[1] + 6) = "Thread:NeighborMeshLocalAddress";
                                    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(1)]: %s] Events On", v427, 0x16u);
                                  }
                                }

                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                {
                                  [PowerEventHandler_Rcp init:];
                                }

                                if (SingleHopPeerMeshLocalIPAddr)
                                {
                                  v86 = log_get_logging_obg("com.apple.threadradiod", "default");
                                  if (v86)
                                  {
                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
                                    {
                                      LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315394;
                                      *(v427[0].__r_.__value_.__r.__words + 4) = "ProcessPropertyGet";
                                      WORD2(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                                      *(&v427[0].__r_.__value_.__r.__words[1] + 6) = "ThreadNeighborMeshLocalAddress";
                                      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "%s: no Neighbor Found, Empty Signal: %s", v427, 0x16u);
                                    }
                                  }

                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                  {
                                    [PowerEventHandler_Rcp init:];
                                  }

                                  v427[0].__r_.__value_.__r.__words[0] = v427;
                                  v427[0].__r_.__value_.__l.__size_ = v427;
                                  v427[0].__r_.__value_.__r.__words[2] = 0;
                                  std::string::basic_string[abi:ne200100]<0>(v443, "ThreadNeighborMeshLocalAddress");
                                  boost::any::any<std::list<std::string> &>();
                                }

                                return 0;
                              }

LABEL_411:
                              ExtendedAddress = otLinkGetExtendedAddress(*(v413 + 28));
                              nl::Data::Data(v427, ExtendedAddress, 8);
                              v65 = log_get_logging_obg("com.apple.threadradiod", "default");
                              if (v65)
                              {
                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                                {
                                  *v443 = 136315138;
                                  *&v443[4] = "NCP:ExtendedAddress";
                                  _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v443, 0xCu);
                                }
                              }

                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                              {
                                [PowerEventHandler_Rcp init:];
                              }

                              boost::any::any<nl::Data &>();
                            }

LABEL_404:
                            otThreadGetPskc(*(v413 + 28), v443);
                            nl::Data::Data(v427, v443, 16);
                            v63 = log_get_logging_obg("com.apple.threadradiod", "default");
                            if (v63)
                            {
                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                              {
                                *v449 = 136315138;
                                *&v449[4] = "Network:PSKc";
                                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v449, 0xCu);
                              }
                            }

                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                            {
                              [PowerEventHandler_Rcp init:];
                            }

                            boost::any::any<nl::Data &>();
                          }

LABEL_395:
                          std::string::basic_string[abi:ne200100]<0>(v427, "wasPrimaryResident");
                          *v443 = v427;
                          v60 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v427[0].__r_.__value_.__l.__data_);
                          v61 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v60 + 7, "1");
                          if (SHIBYTE(v427[0].__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v427[0].__r_.__value_.__l.__data_);
                          }

                          v62 = log_get_logging_obg("com.apple.threadradiod", "default");
                          if (v62)
                          {
                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                            {
                              LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315394;
                              *(v427[0].__r_.__value_.__r.__words + 4) = "wasPrimaryResident";
                              WORD2(v427[0].__r_.__value_.__r.__words[1]) = 1024;
                              *(&v427[0].__r_.__value_.__r.__words[1] + 6) = v61;
                              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "HI:PG0:%s[%d]]", v427, 0x12u);
                            }
                          }

                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                          {
                            [PowerEventHandler_Rcp init:];
                          }

                          operator new();
                        }

LABEL_381:
                        std::string::basic_string[abi:ne200100]<0>(v427, "is_primary_resident");
                        *v443 = v427;
                        v58 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v427[0].__r_.__value_.__l.__data_);
                        std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v58 + 7, "1");
                        if (SHIBYTE(v427[0].__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v427[0].__r_.__value_.__l.__data_);
                        }

                        v59 = log_get_logging_obg("com.apple.threadradiod", "default");
                        if (v59)
                        {
                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
                          {
                            LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                            *(v427[0].__r_.__value_.__r.__words + 4) = "is_primary_resident";
                            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v427, 0xCu);
                          }
                        }

                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          [PowerEventHandler_Rcp init:];
                        }

                        operator new();
                      }

LABEL_374:
                      otThreadGetRloc16(*(v413 + 28));
                      v56 = log_get_logging_obg("com.apple.threadradiod", "default");
                      if (v56)
                      {
                        v57 = v56;
                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
                        {
                          LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                          *(v427[0].__r_.__value_.__r.__words + 4) = "Thread:RLOC16";
                          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v427, 0xCu);
                        }
                      }

                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        [PowerEventHandler_Rcp init:];
                      }

                      operator new();
                    }

LABEL_336:
                    PartitionId = otThreadGetPartitionId(*(v413 + 28));
                    v48 = log_get_logging_obg("com.apple.threadradiod", "default");
                    if (v48)
                    {
                      v49 = v48;
                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                      {
                        v50 = *(v6 + 56);
                        LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109634;
                        HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v50;
                        LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                        *(&v427[0].__r_.__value_.__r.__words[1] + 2) = "Network:PartitionId";
                        WORD1(v427[0].__r_.__value_.__r.__words[2]) = 1024;
                        HIDWORD(v427[0].__r_.__value_.__r.__words[2]) = PartitionId;
                        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "HI:PG%d:%s[%d]", v427, 0x18u);
                      }
                    }

                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      [PowerEventHandler_Rcp init:];
                    }

                    if (*(v6 + 56))
                    {
                      std::string::basic_string[abi:ne200100]<0>(v427, "Network:PartitionId");
                      operator new();
                    }

                    operator new();
                  }

LABEL_318:
                  v38 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v38)
                  {
                    v39 = v38;
                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                    {
                      std::string::basic_string[abi:ne200100]<0>(v427, "Network:LastRole");
                      *v449 = v427;
                      v40 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v427[0].__r_.__value_.__l.__data_);
                      v41 = v40 + 7;
                      if (*(v40 + 79) < 0)
                      {
                        v41 = *v41;
                      }

                      *v443 = 136315394;
                      *&v443[4] = "Network:PartitionId";
                      *&v443[12] = 2080;
                      *&v443[14] = v41;
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "HI:PG0:%s[%s]", v443, 0x16u);
                      if (SHIBYTE(v427[0].__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v427[0].__r_.__value_.__l.__data_);
                      }
                    }
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [PowerEventHandler_Rcp init:];
                  }

                  std::string::basic_string[abi:ne200100]<0>(v427, "Network:LastRole");
                  *v443 = v427;
                  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v427[0].__r_.__value_.__l.__data_);
                  boost::any::any<std::string &>();
                }

LABEL_313:
                DeviceRole = otThreadGetDeviceRole(*(v413 + 28));
                memset(v443, 0, 24);
                if (DeviceRole >= 5)
                {
                  snprintf(v427, 0x10uLL, "(role-%u)", DeviceRole);
                  std::string::assign(v443, v427);
                }

                else
                {
                  std::string::assign(v443, off_1004C5228[DeviceRole]);
                }

                v42 = log_get_logging_obg("com.apple.threadradiod", "default");
                if (v42)
                {
                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                  {
                    v43 = *(v6 + 56);
                    v44 = v443;
                    if (v443[23] < 0)
                    {
                      v44 = *v443;
                    }

                    LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109634;
                    HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v43;
                    LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                    *(&v427[0].__r_.__value_.__r.__words[1] + 2) = "Network:Role";
                    WORD1(v427[0].__r_.__value_.__r.__words[2]) = 2080;
                    *(&v427[0].__r_.__value_.__r.__words[2] + 4) = v44;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "HI:PG%d:%s=%s", v427, 0x1Cu);
                  }
                }

                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  [PowerEventHandler_Rcp init:];
                }

                if (*(v6 + 56))
                {
                  std::string::basic_string[abi:ne200100]<0>(v427, "Network:Role");
                  boost::any::any<std::string &>();
                }

                boost::any::any<std::string &>();
              }

LABEL_301:
              v29 = otThreadGetDeviceRole(*(v413 + 28));
              v30 = otThreadGetLinkMode(*(v413 + 28));
              v31 = v30;
              memset(v443, 0, 24);
              if (v29 <= 2)
              {
                if (v29 < 2)
                {
                  v32 = "unknown";
LABEL_359:
                  std::string::assign(v443, v32);
                  goto LABEL_360;
                }

                if (v29 == 2)
                {
                  std::string::assign(v443, "end-device");
                  if ((v31 & 2) == 0 && (v31 & 1) == 0)
                  {
                    IsCslEnabled = otLinkIsCslEnabled(*(v413 + 28));
                    v36 = "sleepy-end-device";
                    v37 = "synchronized-sleepy-end-device";
                    v46 = !IsCslEnabled;
                    goto LABEL_356;
                  }

LABEL_360:
                  otInstanceGetUptimeAsString(*(v413 + 28), v449, 24);
                  v52 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v52)
                  {
                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                    {
                      v53 = *(v6 + 56);
                      v54 = v443;
                      if (v443[23] < 0)
                      {
                        v54 = *v443;
                      }

                      LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315906;
                      *(v427[0].__r_.__value_.__r.__words + 4) = v449;
                      WORD2(v427[0].__r_.__value_.__r.__words[1]) = 1024;
                      *(&v427[0].__r_.__value_.__r.__words[1] + 6) = v53;
                      WORD1(v427[0].__r_.__value_.__r.__words[2]) = 2080;
                      *(&v427[0].__r_.__value_.__r.__words[2] + 4) = "Network:NodeType";
                      WORD2(v427[1].__r_.__value_.__r.__words[0]) = 2080;
                      *(v427[1].__r_.__value_.__r.__words + 6) = v54;
                      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "%s HI:PG%d:%s=%s", v427, 0x26u);
                    }
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [PowerEventHandler_Rcp init:];
                  }

                  if (*(v6 + 56))
                  {
                    *(&v427[0].__r_.__value_.__s + 23) = 16;
                    strcpy(v427, "Network:NodeType");
                    operator new();
                  }

                  boost::any::any<std::string &>();
                }

LABEL_373:
                snprintf(v427, 0x10uLL, "(node-type-%u)", v29);
                std::string::assign(v443, v427);
                goto LABEL_360;
              }

              if (v29 == 3)
              {
                v36 = "sleepy-router";
                v37 = "router";
              }

              else
              {
                if (v29 != 4)
                {
                  goto LABEL_373;
                }

                v36 = "sleepy-router";
                v37 = "leader";
              }

              v46 = (v30 & 1) == 0;
LABEL_356:
              if (v46)
              {
                v32 = v36;
              }

              else
              {
                v32 = v37;
              }

              goto LABEL_359;
            }

LABEL_291:
            v449[0] = 0;
            IfsAckDataPerNeighbor = otPlatRadioGetTransmitPower(*(v413 + 28), v449);
            if (IfsAckDataPerNeighbor)
            {
              goto LABEL_299;
            }

            v28 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v28)
            {
              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315394;
                *(v427[0].__r_.__value_.__r.__words + 4) = "NCP:TXPower";
                WORD2(v427[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&v427[0].__r_.__value_.__r.__words[1] + 6) = v449[0];
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "HI:PG0:%s[%d]", v427, 0x12u);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            if (v449[0] < 8 || *(v413 + 336) != 3 && *(v413 + 336))
            {
LABEL_353:
              operator new();
            }

            v51 = RcpHostContext::sRcpHostContext;
            std::string::basic_string[abi:ne200100]<0>(v424, "Error");
            std::string::basic_string[abi:ne200100]<0>(v422, "Regulatory Error");
            std::string::basic_string[abi:ne200100]<0>(v420, "Power Level Exceeded for CN");
            RcpHostContext::captureABC(v51, v424, v422, v420, 0, 1);
            if (v421 < 0)
            {
              operator delete(v420[0]);
              if ((v423 & 0x80000000) == 0)
              {
LABEL_352:
                if ((v425 & 0x80000000) == 0)
                {
                  goto LABEL_353;
                }

LABEL_394:
                operator delete(v424[0]);
                goto LABEL_353;
              }
            }

            else if ((v423 & 0x80000000) == 0)
            {
              goto LABEL_352;
            }

            operator delete(v422[0]);
            if ((v425 & 0x80000000) == 0)
            {
              goto LABEL_353;
            }

            goto LABEL_394;
          }

LABEL_276:
          SupportedChannelMask = otLinkGetSupportedChannelMask(*(v413 + 28));
          v24 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v24)
          {
            v25 = v24;
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = *(v6 + 56);
              LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109634;
              HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v26;
              LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
              *(&v427[0].__r_.__value_.__r.__words[1] + 2) = "NCP:ChannelMask";
              WORD1(v427[0].__r_.__value_.__r.__words[2]) = 1024;
              HIDWORD(v427[0].__r_.__value_.__r.__words[2]) = SupportedChannelMask;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "HI:PG:%d:%s[%u]", v427, 0x18u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          snprintf(v449, 0x10uLL, "0x%x", SupportedChannelMask);
          v33 = strlen(v449);
          if (v33 <= 0x7FFFFFFFFFFFFFF7)
          {
            v34 = v33;
            if (v33 < 0x17)
            {
              *(&v427[0].__r_.__value_.__s + 23) = v33;
              if (v33)
              {
                memcpy(v427, v449, v33);
              }

              v427[0].__r_.__value_.__s.__data_[v34] = 0;
              operator new();
            }

            operator new();
          }

          std::string::__throw_length_error[abi:ne200100]();
        }

LABEL_265:
        v20 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v20)
        {
          v21 = v20;
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
            *(v427[0].__r_.__value_.__r.__words + 4) = "nm:trigger:devicedata:interval";
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "HI:PG:%s", v427, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        operator new();
      }

LABEL_261:
      Channel = otLinkGetChannel(*(v413 + 28));
      v17 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v17)
      {
        v18 = v17;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = *(v6 + 56);
          LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109634;
          HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v19;
          LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
          *(&v427[0].__r_.__value_.__r.__words[1] + 2) = "NCP:Channel";
          WORD1(v427[0].__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(v427[0].__r_.__value_.__r.__words[2]) = Channel;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "HI:PG:%d:%s[%u]", v427, 0x18u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      if (*(v6 + 56))
      {
        *(&v427[0].__r_.__value_.__s + 23) = 11;
        strcpy(v427, "NCP:Channel");
        operator new();
      }

      operator new();
    }

LABEL_257:
    buf.__r_.__value_.__r.__words[0] = &buf;
    buf.__r_.__value_.__l.__size_ = &buf;
    buf.__r_.__value_.__r.__words[2] = 0;
    memset(&v456, 0, sizeof(v456));
    v426[0] = -1;
    v14 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v14)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(v6 + 56);
        LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109378;
        HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v15;
        LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
        *(&v427[0].__r_.__value_.__r.__words[1] + 2) = "Thread:NetworkData";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "HI:PG:%d:%s", v427, 0x12u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    if (otNetDataGet(*(v413 + 28), 0, v443, v426))
    {
      v22 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v22)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessPropertyGet();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      memset(v445, 0, 175);
      v444 = 0u;
      memset(v443, 0, sizeof(v443));
      v426[0] = 1;
    }

    otNetDataGetVersion(*(v413 + 28));
    if (v426[0])
    {
      operator new();
    }

    *&v409 = 0;
    *(&v454 + 1) = 0;
    v455 = 0;
    *&v454 = &v454 + 8;
    std::string::assign(&v456, "RAW");
    operator new();
  }

  v9 = *v5;
  if (!strcmp(*v5, "Thread:NetworkData"))
  {
    goto LABEL_257;
  }

  if (!strcmp(v9, "NCP:Channel"))
  {
    goto LABEL_261;
  }

  if (!strcmp(v9, "nm:trigger:devicedata:interval"))
  {
    goto LABEL_265;
  }

  if (!strcmp(v9, "NCP:ChannelMask"))
  {
    goto LABEL_276;
  }

  if (!strcmp(v9, "NCP:TXPower"))
  {
    goto LABEL_291;
  }

  if (!strcmp(v9, "Network:NodeType"))
  {
    goto LABEL_301;
  }

  if (!strcmp(v9, "Network:Role"))
  {
    goto LABEL_313;
  }

  if (!strcmp(v9, "Network:LastRole"))
  {
    goto LABEL_318;
  }

  if (!strcmp(v9, "Network:PartitionId"))
  {
    goto LABEL_336;
  }

  if (!strcmp(v9, "Thread:RLOC16"))
  {
    goto LABEL_374;
  }

  if (!strcmp(v9, "isPrimaryResident"))
  {
    goto LABEL_381;
  }

  if (!strcmp(v9, "wasPrimaryResident"))
  {
    goto LABEL_395;
  }

  if (!strcmp(v9, "Network:PSKc"))
  {
    goto LABEL_404;
  }

  if (!strcmp(v9, "NCP:ExtendedAddress"))
  {
    goto LABEL_411;
  }

  if (!strcmp(v9, "Thread:NeighborMeshLocalAddress"))
  {
    goto LABEL_418;
  }

  if (!strcmp(v9, "Thread:EmacId"))
  {
    goto LABEL_425;
  }

  if (!strcmp(v9, "NCP:WedExtendedAddress"))
  {
    goto LABEL_434;
  }

  if (!strcmp(v9, "NCP:WedMleId"))
  {
    goto LABEL_465;
  }

  if (!strcmp(v9, "wasDeviceEverAChildInCurrentNetwork"))
  {
    goto LABEL_480;
  }

  if (!strcmp(v9, "Config:TUN:InterfaceName"))
  {
    goto LABEL_491;
  }

  if (!strcmp(v9, "IPv6:Routes"))
  {
LABEL_508:
    v95 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v95)
    {
      v96 = v95;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
      {
        v97 = *(__s1 + 56);
        LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109378;
        HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v97;
        LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
        *(&v427[0].__r_.__value_.__r.__words[1] + 2) = "IPv6:Routes";
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v427, 0x12u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v427[0].__r_.__value_.__r.__words[0] = v427;
    v427[0].__r_.__value_.__l.__size_ = v427;
    v427[0].__r_.__value_.__r.__words[2] = 0;
    if ((*(__s1 + 56) & 1) == 0)
    {
      v116 = *(v413 + 13);
      if (v116 != (v413 + 112))
      {
        *&v443[8] = 0;
        *&v443[16] = 0;
        *v443 = &v443[8];
        IPv6Prefix::to_string((v116 + 28), v449);
        std::string::basic_string[abi:ne200100]<0>(v447, "Address");
        __s[0].__r_.__value_.__r.__words[0] = v447;
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v443, &v447[0].__r_.__value_.__l.__data_);
        boost::any::operator=<std::string>();
      }

      boost::any::any<std::list<std::map<std::string,boost::any>> &>();
    }

    HostInterpreter::update_on_mesh_prefixes(v413);
    HostInterpreter::update_off_mesh_routes(v413);
    HostInterpreter::refresh_routes_on_interface(v413);
    std::list<std::map<std::string,boost::any>>::~list(v427);
    return 0;
  }

  if (!strcmp(v9, "thread_version"))
  {
    goto LABEL_530;
  }

  if (!strcmp(v9, "cametrics_triggerbased_stability_data"))
  {
    goto LABEL_567;
  }

  if (!strcmp(v9, "cametrics_periodic_stability_data"))
  {
    goto LABEL_589;
  }

  if (!strcmp(v9, "primary_resident_data"))
  {
    goto LABEL_599;
  }

  if (!strcmp(v9, "homeThreadInfoData"))
  {
    goto LABEL_609;
  }

  if (!strcmp(v9, "numOnMeshPrefixes"))
  {
    goto LABEL_610;
  }

  if (!strcmp(v9, "numRouters"))
  {
    goto LABEL_611;
  }

  if (!strcmp(v9, "numOffMeshRoutes"))
  {
    goto LABEL_612;
  }

  if (!strcmp(v9, "Thread:OnMeshPrefixes"))
  {
    goto LABEL_613;
  }

  if (!strcmp(v9, "Thread:OffMeshRoutes"))
  {
    goto LABEL_616;
  }

  if (!strcmp(v9, "nm:networkdata"))
  {
    goto LABEL_619;
  }

  if (!strcmp(v9, "Thread:Services"))
  {
    goto LABEL_623;
  }

  if (!strcmp(v9, "NCP:State"))
  {
    goto LABEL_628;
  }

  if (!strcmp(v9, "Network:Name"))
  {
    goto LABEL_684;
  }

  if (!strcmp(v9, "Network:XPANID"))
  {
    goto LABEL_701;
  }

  if (!strcmp(v9, "Network:PANID"))
  {
    goto LABEL_708;
  }

  if (!strcmp(v9, "NCP:HardwareSerialNumber"))
  {
    goto LABEL_772;
  }

  if (!strcmp(v9, "vendor:assigned:hw:mac"))
  {
    goto LABEL_781;
  }

  if (!strcmp(v9, "NCP:HardwareAddress"))
  {
    goto LABEL_788;
  }

  if (!strcmp(v9, "IPv6:AllAddresses"))
  {
    goto LABEL_795;
  }

  if (!strcmp(v9, "Thread:Leader:RouterID"))
  {
    goto LABEL_802;
  }

  if (!strcmp(v9, "Thread:Leader:ExtendedAddress"))
  {
    goto LABEL_810;
  }

  if (!strcmp(v9, "ChannelUtilizationMonitor:State"))
  {
    goto LABEL_819;
  }

  if (!strcmp(v9, "Network:Key"))
  {
    goto LABEL_828;
  }

  if (!strcmp(v9, "Network:KeyIndex"))
  {
    goto LABEL_842;
  }

  if (strcmp(v9, "Thread:ActiveDataset:Bytes"))
  {
    if (strcmp(v9, "vendor:assert"))
    {
      if (strcmp(v9, "vendor:hard:fault"))
      {
        if (strcmp(v9, "vendor:stack:overflow"))
        {
          if (strcmp(v9, "Leader:Reelect:Counters"))
          {
            if (strcmp(v9, "vendor:neighbor:count:histogram") && strcmp(v9, "vendor:neighbor:count:histogram:AsValMap"))
            {
              if (strcmp(v9, "vendor:bbr:counters") && strcmp(v9, "vendor:bbr:counters:AsValMap"))
              {
                if (strcmp(v9, "vendor:linkloss:counters") && strcmp(v9, "vendor:linkloss:counters:AsValMap"))
                {
                  if (strcmp(v9, "NCP:Counter:Thread:Mle") && strcmp(v9, "NCP:Counter:Thread:Mle:AsValMap"))
                  {
                    if (strcmp(v9, "NCP:Counter:Thread:Neighbor:TriggerBased"))
                    {
                      if (strcmp(v9, "NCP:Counter:AllIPv6") && strcmp(v9, "NCP:Counter:AllIPv6:AsValMap"))
                      {
                        if (strcmp(v9, "NCP:Matter:Subscription:Histogram") && strcmp(v9, "NCP:Matter:Subscription:Histogram:AsValMap"))
                        {
                          if (strcmp(v9, "NCP:Counter:AllMac") && strcmp(v9, "NCP:Counter:AllMac:AsValMap"))
                          {
                            if (strcmp(v9, "vendor:mle:adv:tx:num"))
                            {
                              if (strcmp(v9, "vendor:min:mac:interframedelay"))
                              {
                                if (strcmp(v9, "vendor:csl:tx:schedframe:reqahead:timeinus"))
                                {
                                  if (strcmp(v9, "vendor:radio:counters") && strcmp(v9, "vendor:radio:counters:asvalmap"))
                                  {
                                    if (strcmp(v9, "vendor:joiner:RSSIHistogram") && strcmp(v9, "vendor:joiner:RSSIHistogram:AsValMap"))
                                    {
                                      if (strcmp(v9, "Daemon:Version"))
                                      {
                                        if (strcmp(v9, "DaemonMorty:Version"))
                                        {
                                          if (strcmp(v9, "vendor:version"))
                                          {
                                            if (strcmp(v9, "Current:Srp:NetdataMode"))
                                            {
                                              if (strcmp(v9, "Srp:NetdataMode"))
                                              {
                                                if (strcmp(v9, "vendor:last:host:wake:reason"))
                                                {
                                                  if (strcmp(v9, "vendor:deepsleep:region:loglevels"))
                                                  {
                                                    if (strcmp(v9, "vendor:deepsleep:loglevel"))
                                                    {
                                                      if (strcmp(v9, "vendor:deepsleep:filter:list"))
                                                      {
                                                        if (strcmp(v9, "vendor:MAC:packet:SizeHistogram") && strcmp(v9, "vendor:MAC:packet:SizeHistogram:AsValMap"))
                                                        {
                                                          if (strcmp(v9, "vendor:MAC:packet:ErrorHistogram") && strcmp(v9, "vendor:MAC:packet:ErrorHistogram:AsValMap"))
                                                          {
                                                            if (strcmp(v9, "vendor:MAC:packet:LQIHistogram") && strcmp(v9, "vendor:MAC:packet:LQIHistogram:AsValMap"))
                                                            {
                                                              if (strcmp(v9, "vendor:MAC:packet:RSSIHistogram") && strcmp(v9, "vendor:MAC:packet:RSSIHistogram:AsValMap"))
                                                              {
                                                                if (strcmp(v9, "NCP:MacRetryHistogram") && strcmp(v9, "NCP:MacRetryHistogram:AsValMap"))
                                                                {
                                                                  if (strcmp(v9, "vendor:openthread:radio:counters") && strcmp(v9, "vendor:openthread:radio:counters:AsValMap"))
                                                                  {
                                                                    if (strcmp(v9, "IPv6:MeshLocalPrefix"))
                                                                    {
                                                                      if (strcmp(v9, "IPv6:MeshLocalAddress"))
                                                                      {
                                                                        if (strcmp(v9, "vendor:ncp:state:dump"))
                                                                        {
                                                                          if (strcmp(v9, "Thread:RouterTable"))
                                                                          {
                                                                            if (strcmp(v9, "Thread:EidCache"))
                                                                            {
                                                                              if (strcmp(v9, "Thread:MessageBufferStats"))
                                                                              {
                                                                                if (strcmp(v9, "is_threadsession_on"))
                                                                                {
                                                                                  if (strcmp(v9, "vendor:power"))
                                                                                  {
                                                                                    v8 = strcmp(v9, "vendor:power:table");
                                                                                    if (v8)
                                                                                    {
                                                                                      if (strcmp(v9, "vendor:coex:radioload"))
                                                                                      {
                                                                                        if (strcmp(v9, "vendor:coex:preferredAntenna"))
                                                                                        {
                                                                                          if (strcmp(v9, "vendor:coex:scanFreqTable"))
                                                                                          {
                                                                                            if (strcmp(v9, "vendor:coex:CoTxPowerCap"))
                                                                                            {
                                                                                              if (strcmp(v9, "is_bt_audioCall_on"))
                                                                                              {
                                                                                                if (strcmp(v9, "vendor:coex:rcp2:counters"))
                                                                                                {
                                                                                                  if (strcmp(v9, "rcp2PcapState"))
                                                                                                  {
                                                                                                    if (strcmp(v9, "Daemon:VirtualInterface:ReadBufferSize"))
                                                                                                    {
                                                                                                      if (strcmp(v9, "vendor:power:limit:table"))
                                                                                                      {
                                                                                                        if (strcmp(v9, "vendor:power:limit:table:active:id"))
                                                                                                        {
                                                                                                          if (strcmp(v9, "vendor:fem:enabled"))
                                                                                                          {
                                                                                                            if (strcmp(v9, "NCP:PcapEnabled"))
                                                                                                            {
                                                                                                              if (strcmp(v9, "Daemon:PromiscuousPcap"))
                                                                                                              {
                                                                                                                if (strcmp(v9, "vendor:ifs:ackdata"))
                                                                                                                {
                                                                                                                  if (strcmp(v9, "ca:reporting:enabled"))
                                                                                                                  {
                                                                                                                    if (strcmp(v9, "streamRawRespTimeHist"))
                                                                                                                    {
                                                                                                                      if (strcmp(v9, "coex:rcp2:coex:counters:asvalmap"))
                                                                                                                      {
                                                                                                                        if (strcmp(v9, "coex:rcp2:btwifi:load"))
                                                                                                                        {
                                                                                                                          if (strcmp(v9, "Thread:Health:Metrics"))
                                                                                                                          {
                                                                                                                            if (strcmp(v9, "ThreadStartMetrics"))
                                                                                                                            {
                                                                                                                              goto LABEL_249;
                                                                                                                            }

                                                                                                                            goto LABEL_1139;
                                                                                                                          }

LABEL_1133:
                                                                                                                          v331 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                          if (v331)
                                                                                                                          {
                                                                                                                            v332 = v331;
                                                                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v332, OS_LOG_TYPE_INFO))
                                                                                                                            {
                                                                                                                              v333 = __s1;
                                                                                                                              v334 = *(__s1 + 56);
                                                                                                                              if (*(__s1 + 23) < 0)
                                                                                                                              {
                                                                                                                                v333 = *__s1;
                                                                                                                              }

                                                                                                                              LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109378;
                                                                                                                              HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v334;
                                                                                                                              LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                                                              *(&v427[0].__r_.__value_.__r.__words[1] + 2) = v333;
                                                                                                                              _os_log_impl(&_mh_execute_header, v332, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v427, 0x12u);
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                          {
                                                                                                                            [PowerEventHandler_Rcp init:];
                                                                                                                          }

                                                                                                                          v427[0].__r_.__value_.__r.__words[0] = v427;
                                                                                                                          v427[0].__r_.__value_.__l.__size_ = v427;
                                                                                                                          v427[0].__r_.__value_.__r.__words[2] = 0;
                                                                                                                          HostInterpreter::GetThreadHealthMetrics();
                                                                                                                        }

LABEL_1127:
                                                                                                                        v328 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                        if (v328)
                                                                                                                        {
                                                                                                                          v329 = v328;
                                                                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v329, OS_LOG_TYPE_INFO))
                                                                                                                          {
                                                                                                                            v330 = __s1;
                                                                                                                            if (*(__s1 + 23) < 0)
                                                                                                                            {
                                                                                                                              v330 = *__s1;
                                                                                                                            }

                                                                                                                            LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                            *(v427[0].__r_.__value_.__r.__words + 4) = v330;
                                                                                                                            _os_log_impl(&_mh_execute_header, v329, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                        {
                                                                                                                          [PowerEventHandler_Rcp init:];
                                                                                                                        }

                                                                                                                        *&v427[0].__r_.__value_.__r.__words[1] = 0uLL;
                                                                                                                        v427[0].__r_.__value_.__r.__words[0] = &v427[0].__r_.__value_.__l.__size_;
                                                                                                                        HostInterpreter::GetCoExRCP2BTWifiLoadAsValMap(v443);
                                                                                                                      }

LABEL_1121:
                                                                                                                      v325 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                      if (v325)
                                                                                                                      {
                                                                                                                        v326 = v325;
                                                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v326, OS_LOG_TYPE_INFO))
                                                                                                                        {
                                                                                                                          v327 = __s1;
                                                                                                                          if (*(__s1 + 23) < 0)
                                                                                                                          {
                                                                                                                            v327 = *__s1;
                                                                                                                          }

                                                                                                                          LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                          *(v427[0].__r_.__value_.__r.__words + 4) = v327;
                                                                                                                          _os_log_impl(&_mh_execute_header, v326, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                      {
                                                                                                                        [PowerEventHandler_Rcp init:];
                                                                                                                      }

                                                                                                                      HostInterpreter::GetCoExRCP2CountersAsValMap(v427);
                                                                                                                    }

LABEL_1115:
                                                                                                                    v322 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                    if (v322)
                                                                                                                    {
                                                                                                                      v323 = v322;
                                                                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v323, OS_LOG_TYPE_INFO))
                                                                                                                      {
                                                                                                                        v324 = __s1;
                                                                                                                        if (*(__s1 + 23) < 0)
                                                                                                                        {
                                                                                                                          v324 = *__s1;
                                                                                                                        }

                                                                                                                        LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                        *(v427[0].__r_.__value_.__r.__words + 4) = v324;
                                                                                                                        _os_log_impl(&_mh_execute_header, v323, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                    {
                                                                                                                      [PowerEventHandler_Rcp init:];
                                                                                                                    }

                                                                                                                    v437 = 0;
                                                                                                                    v435 = 0u;
                                                                                                                    v436 = 0u;
                                                                                                                    v433 = 0u;
                                                                                                                    v434 = 0u;
                                                                                                                    v431 = 0u;
                                                                                                                    v432 = 0u;
                                                                                                                    v429 = 0u;
                                                                                                                    v430 = 0u;
                                                                                                                    v428 = 0u;
                                                                                                                    memset(v427, 0, sizeof(v427));
                                                                                                                    otGetStreamRawResponseHistogram(*(v413 + 28), v427);
                                                                                                                    *&v443[16] = 0;
                                                                                                                    *&v443[8] = 0;
                                                                                                                    *v443 = &v443[8];
                                                                                                                    memset(v449, 0, 24);
                                                                                                                    v384 = __s1;
                                                                                                                    if (*(__s1 + 23) < 0)
                                                                                                                    {
                                                                                                                      v384 = *__s1;
                                                                                                                    }

                                                                                                                    std::string::basic_string[abi:ne200100]<0>(v448, v384);
                                                                                                                    std::string::basic_string[abi:ne200100]<0>(&v446, "[");
                                                                                                                    if ((v446.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v385 = &v446;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v385 = v446.__r_.__value_.__r.__words[0];
                                                                                                                    }

                                                                                                                    if ((v446.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v386 = HIBYTE(v446.__r_.__value_.__r.__words[2]);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v386 = v446.__r_.__value_.__l.__size_;
                                                                                                                    }

                                                                                                                    v387 = std::string::append(v448, v385, v386);
                                                                                                                    v388 = *&v387->__r_.__value_.__l.__data_;
                                                                                                                    __s[0].__r_.__value_.__r.__words[2] = v387->__r_.__value_.__r.__words[2];
                                                                                                                    *&__s[0].__r_.__value_.__l.__data_ = v388;
                                                                                                                    v387->__r_.__value_.__l.__size_ = 0;
                                                                                                                    v387->__r_.__value_.__r.__words[2] = 0;
                                                                                                                    v387->__r_.__value_.__r.__words[0] = 0;
                                                                                                                    std::to_string(&buf, 0);
                                                                                                                    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v389 = &buf;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v389 = buf.__r_.__value_.__r.__words[0];
                                                                                                                    }

                                                                                                                    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v390 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v390 = buf.__r_.__value_.__l.__size_;
                                                                                                                    }

                                                                                                                    v391 = std::string::append(__s, v389, v390);
                                                                                                                    v392 = *&v391->__r_.__value_.__l.__data_;
                                                                                                                    v447[0].__r_.__value_.__r.__words[2] = v391->__r_.__value_.__r.__words[2];
                                                                                                                    *&v447[0].__r_.__value_.__l.__data_ = v392;
                                                                                                                    v391->__r_.__value_.__l.__size_ = 0;
                                                                                                                    v391->__r_.__value_.__r.__words[2] = 0;
                                                                                                                    v391->__r_.__value_.__r.__words[0] = 0;
                                                                                                                    std::string::basic_string[abi:ne200100]<0>(&v456, "]");
                                                                                                                    if ((v456.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v393 = &v456;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v393 = v456.__r_.__value_.__r.__words[0];
                                                                                                                    }

                                                                                                                    if ((v456.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v394 = HIBYTE(v456.__r_.__value_.__r.__words[2]);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v394 = v456.__r_.__value_.__l.__size_;
                                                                                                                    }

                                                                                                                    v395 = std::string::append(v447, v393, v394);
                                                                                                                    v396 = v395->__r_.__value_.__r.__words[0];
                                                                                                                    *&v454 = v395->__r_.__value_.__l.__size_;
                                                                                                                    *(&v454 + 7) = *(&v395->__r_.__value_.__r.__words[1] + 7);
                                                                                                                    v397 = HIBYTE(v395->__r_.__value_.__r.__words[2]);
                                                                                                                    v395->__r_.__value_.__l.__size_ = 0;
                                                                                                                    v395->__r_.__value_.__r.__words[2] = 0;
                                                                                                                    v395->__r_.__value_.__r.__words[0] = 0;
                                                                                                                    if ((v449[23] & 0x80000000) != 0)
                                                                                                                    {
                                                                                                                      operator delete(*v449);
                                                                                                                    }

                                                                                                                    *v449 = v396;
                                                                                                                    *&v449[8] = v454;
                                                                                                                    *&v449[15] = *(&v454 + 7);
                                                                                                                    v449[23] = v397;
                                                                                                                    if (SHIBYTE(v456.__r_.__value_.__r.__words[2]) < 0)
                                                                                                                    {
                                                                                                                      operator delete(v456.__r_.__value_.__l.__data_);
                                                                                                                      if (SHIBYTE(v447[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                      {
LABEL_1390:
                                                                                                                        operator delete(v447[0].__r_.__value_.__l.__data_);
                                                                                                                        if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                        {
                                                                                                                          goto LABEL_1391;
                                                                                                                        }

                                                                                                                        goto LABEL_1398;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else if (SHIBYTE(v447[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                    {
                                                                                                                      goto LABEL_1390;
                                                                                                                    }

                                                                                                                    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                    {
LABEL_1391:
                                                                                                                      if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                      {
                                                                                                                        goto LABEL_1392;
                                                                                                                      }

                                                                                                                      goto LABEL_1399;
                                                                                                                    }

LABEL_1398:
                                                                                                                    operator delete(buf.__r_.__value_.__l.__data_);
                                                                                                                    if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                    {
LABEL_1392:
                                                                                                                      operator delete(__s[0].__r_.__value_.__l.__data_);
                                                                                                                      if ((SHIBYTE(v446.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                      {
                                                                                                                        goto LABEL_1393;
                                                                                                                      }

                                                                                                                      goto LABEL_1400;
                                                                                                                    }

LABEL_1399:
                                                                                                                    if ((SHIBYTE(v446.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                    {
LABEL_1393:
                                                                                                                      if ((SHIBYTE(v448[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                      {
                                                                                                                        goto LABEL_1395;
                                                                                                                      }

                                                                                                                      goto LABEL_1394;
                                                                                                                    }

LABEL_1400:
                                                                                                                    operator delete(v446.__r_.__value_.__l.__data_);
                                                                                                                    if ((SHIBYTE(v448[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                    {
LABEL_1395:
                                                                                                                      v447[0].__r_.__value_.__r.__words[0] = v449;
                                                                                                                      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v443, v449);
                                                                                                                      boost::any::operator=<unsigned int &>();
                                                                                                                    }

LABEL_1394:
                                                                                                                    operator delete(v448[0].__r_.__value_.__l.__data_);
                                                                                                                    goto LABEL_1395;
                                                                                                                  }

LABEL_1109:
                                                                                                                  v319 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                  if (v319)
                                                                                                                  {
                                                                                                                    v320 = v319;
                                                                                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v320, OS_LOG_TYPE_INFO))
                                                                                                                    {
                                                                                                                      v321 = __s1;
                                                                                                                      if (*(__s1 + 23) < 0)
                                                                                                                      {
                                                                                                                        v321 = *__s1;
                                                                                                                      }

                                                                                                                      LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                      *(v427[0].__r_.__value_.__r.__words + 4) = v321;
                                                                                                                      _os_log_impl(&_mh_execute_header, v320, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                  {
                                                                                                                    [PowerEventHandler_Rcp init:];
                                                                                                                  }

                                                                                                                  operator new();
                                                                                                                }

                                                                                                                goto LABEL_1103;
                                                                                                              }

LABEL_1102:
                                                                                                              std::string::basic_string[abi:ne200100]<0>(v427, "Daemon:PromiscuousPcap");
                                                                                                              *v443 = v427;
                                                                                                              std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v427[0].__r_.__value_.__l.__data_);
                                                                                                              boost::any::any<std::string &>();
                                                                                                            }

LABEL_1098:
                                                                                                            v312 = *(v413 + 28);
                                                                                                            PcapEnabled = otPlatRadioGetPcapEnabled();
                                                                                                            v314 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                            if (v314)
                                                                                                            {
                                                                                                              v315 = v314;
                                                                                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v315, OS_LOG_TYPE_INFO))
                                                                                                              {
                                                                                                                LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315394;
                                                                                                                *(v427[0].__r_.__value_.__r.__words + 4) = "NCP:PcapEnabled";
                                                                                                                WORD2(v427[0].__r_.__value_.__r.__words[1]) = 1024;
                                                                                                                *(&v427[0].__r_.__value_.__r.__words[1] + 6) = PcapEnabled;
                                                                                                                _os_log_impl(&_mh_execute_header, v315, OS_LOG_TYPE_INFO, "HI:PG0:%s,isPcapEnable:%d", v427, 0x12u);
                                                                                                              }
                                                                                                            }

                                                                                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                            {
                                                                                                              [PowerEventHandler_Rcp init:];
                                                                                                            }

                                                                                                            operator new();
                                                                                                          }

                                                                                                          goto LABEL_1094;
                                                                                                        }

                                                                                                        goto LABEL_1090;
                                                                                                      }

                                                                                                      goto LABEL_1085;
                                                                                                    }

LABEL_1079:
                                                                                                    v304 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                    if (v304)
                                                                                                    {
                                                                                                      v305 = v304;
                                                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v305, OS_LOG_TYPE_INFO))
                                                                                                      {
                                                                                                        v306 = __s1;
                                                                                                        if (*(__s1 + 23) < 0)
                                                                                                        {
                                                                                                          v306 = *__s1;
                                                                                                        }

                                                                                                        LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                        *(v427[0].__r_.__value_.__r.__words + 4) = v306;
                                                                                                        _os_log_impl(&_mh_execute_header, v305, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                      }
                                                                                                    }

                                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                    {
                                                                                                      [PowerEventHandler_Rcp init:];
                                                                                                    }

                                                                                                    otSysGetThreadVirtualInterfaceReadBufferSize();
                                                                                                    operator new();
                                                                                                  }

                                                                                                  goto LABEL_1073;
                                                                                                }

LABEL_1067:
                                                                                                v297 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                if (v297)
                                                                                                {
                                                                                                  v298 = v297;
                                                                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v298, OS_LOG_TYPE_INFO))
                                                                                                  {
                                                                                                    v299 = __s1;
                                                                                                    if (*(__s1 + 23) < 0)
                                                                                                    {
                                                                                                      v299 = *__s1;
                                                                                                    }

                                                                                                    LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                    *(v427[0].__r_.__value_.__r.__words + 4) = v299;
                                                                                                    _os_log_impl(&_mh_execute_header, v298, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                                                                  }
                                                                                                }

                                                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                {
                                                                                                  [PowerEventHandler_Rcp init:];
                                                                                                }

                                                                                                if (!HostInterpreter::CoexCounterUpdate(v413, coexCounters))
                                                                                                {
                                                                                                  operator new();
                                                                                                }

                                                                                                goto LABEL_300;
                                                                                              }

LABEL_1063:
                                                                                              v294 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                              if (v294)
                                                                                              {
                                                                                                v295 = v294;
                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v295, OS_LOG_TYPE_INFO))
                                                                                                {
                                                                                                  v296 = *(v413 + 184);
                                                                                                  LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315394;
                                                                                                  *(v427[0].__r_.__value_.__r.__words + 4) = "is_bt_audioCall_on";
                                                                                                  WORD2(v427[0].__r_.__value_.__r.__words[1]) = 1024;
                                                                                                  *(&v427[0].__r_.__value_.__r.__words[1] + 6) = v296;
                                                                                                  _os_log_impl(&_mh_execute_header, v295, OS_LOG_TYPE_INFO, "BT Load, Audio detection: HostInterpreter::ProcessPropertyGet[E(0)]: %s, BTAudioCallStatus is %d]", v427, 0x12u);
                                                                                                }
                                                                                              }

                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                              {
                                                                                                [PowerEventHandler_Rcp init:];
                                                                                              }

                                                                                              operator new();
                                                                                            }

LABEL_1058:
                                                                                            v291 = *(v413 + 28);
                                                                                            if (otPlatRadioGetRcp2Vendor2Enabled())
                                                                                            {
                                                                                              v292 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                              if (v292)
                                                                                              {
                                                                                                v293 = v292;
                                                                                                if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v293, OS_LOG_TYPE_DEBUG))
                                                                                                {
                                                                                                  HostInterpreter::ProcessPropertyGet();
                                                                                                }
                                                                                              }

                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                              {
                                                                                                [PowerEventHandler_Rcp init:];
                                                                                              }

                                                                                              operator new();
                                                                                            }

                                                                                            return 0;
                                                                                          }

                                                                                          goto LABEL_1050;
                                                                                        }

                                                                                        goto LABEL_1045;
                                                                                      }

LABEL_1044:
                                                                                      operator new();
                                                                                    }

                                                                                    goto LABEL_1039;
                                                                                  }

                                                                                  goto LABEL_1034;
                                                                                }

LABEL_1030:
                                                                                RcpHostContext::isThreadSessionEnabled(RcpHostContext::sRcpHostContext);
                                                                                v281 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                if (v281)
                                                                                {
                                                                                  v282 = v281;
                                                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v282, OS_LOG_TYPE_INFO))
                                                                                  {
                                                                                    LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                    *(v427[0].__r_.__value_.__r.__words + 4) = "is_threadsession_on";
                                                                                    _os_log_impl(&_mh_execute_header, v282, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v427, 0xCu);
                                                                                  }
                                                                                }

                                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                {
                                                                                  [PowerEventHandler_Rcp init:];
                                                                                }

                                                                                operator new();
                                                                              }

LABEL_1017:
                                                                              *v443 = v443;
                                                                              *&v443[8] = v443;
                                                                              *&v443[16] = 0;
                                                                              std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v427);
                                                                              memset(v449, 0, 24);
                                                                              v268 = *(v413 + 28);
                                                                              if (*(v268 + 85220) == 1)
                                                                              {
                                                                                v269 = (v268 + 65805);
                                                                                v270 = *(v413 + 28);
                                                                                std::string::basic_string[abi:ne200100]<0>(v447, "");
                                                                                std::stringbuf::str();
                                                                                if (SHIBYTE(v447[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                {
                                                                                  operator delete(v447[0].__r_.__value_.__l.__data_);
                                                                                }

                                                                                v271 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], "Buf", 3);
                                                                                *(v271 + *(*v271 - 24) + 24) = 3;
                                                                                v447[0].__r_.__value_.__s.__data_[0] = 48;
                                                                                std::operator<<[abi:ne200100]<std::char_traits<char>>(v271, v447);
                                                                                std::ostream::operator<<();
                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], ":", 1);
                                                                                std::ostream::operator<<();
                                                                                if (*(v269 - 33))
                                                                                {
                                                                                  v272 = " (A), ";
                                                                                }

                                                                                else
                                                                                {
                                                                                  v272 = " (D), ";
                                                                                }

                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], v272, 6);
                                                                                v273 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], "#A:", 3);
                                                                                *(v273 + *(*v273 - 24) + 24) = 10;
                                                                                v447[0].__r_.__value_.__s.__data_[0] = 48;
                                                                                std::operator<<[abi:ne200100]<std::char_traits<char>>(v273, v447);
                                                                                v274 = *(v269 - 41);
                                                                                std::ostream::operator<<();
                                                                                v275 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], ", #D:", 5);
                                                                                *(v275 + *(*v275 - 24) + 24) = 10;
                                                                                v447[0].__r_.__value_.__s.__data_[0] = 48;
                                                                                std::operator<<[abi:ne200100]<std::char_traits<char>>(v275, v447);
                                                                                v276 = *(v269 - 37);
                                                                                std::ostream::operator<<();
                                                                                if (*(v269 - 32))
                                                                                {
                                                                                  v277 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], ", LastAllocTimestamp: ", 22);
                                                                                  v278 = strlen(v269 - 32);
                                                                                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v277, (v269 - 32), v278);
                                                                                }

                                                                                if (*v269)
                                                                                {
                                                                                  v279 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], ", LastDeallocTimestamp: ", 24);
                                                                                  v280 = strlen(v269);
                                                                                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v279, v269, v280);
                                                                                }

                                                                                std::stringbuf::str();
                                                                                if ((v449[23] & 0x80000000) != 0)
                                                                                {
                                                                                  operator delete(*v449);
                                                                                }

                                                                                *v449 = v447[0];
                                                                                std::list<std::string>::push_back();
                                                                              }

                                                                              std::string::basic_string[abi:ne200100]<0>(v447, "");
                                                                              std::stringbuf::str();
                                                                              if (SHIBYTE(v447[0].__r_.__value_.__r.__words[2]) < 0)
                                                                              {
                                                                                operator delete(v447[0].__r_.__value_.__l.__data_);
                                                                              }

                                                                              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], "BufferStats is disabled.", 24);
                                                                              std::stringbuf::str();
                                                                              if ((v449[23] & 0x80000000) != 0)
                                                                              {
                                                                                operator delete(*v449);
                                                                              }

                                                                              *v449 = v447[0];
                                                                              std::list<std::string>::push_back();
                                                                            }

LABEL_1005:
                                                                            *&v448[0].__r_.__value_.__l.__data_ = 0uLL;
                                                                            v447[0].__r_.__value_.__r.__words[0] = v447;
                                                                            v447[0].__r_.__value_.__l.__size_ = v447;
                                                                            v447[0].__r_.__value_.__r.__words[2] = 0;
                                                                            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v427);
                                                                            memset(__s, 0, 24);
                                                                            if (!otThreadGetNextCacheEntry(*(v413 + 28), v449, v448))
                                                                            {
                                                                              std::string::basic_string[abi:ne200100]<0>(v443, "");
                                                                              std::stringbuf::str();
                                                                              if ((v443[23] & 0x80000000) != 0)
                                                                              {
                                                                                operator delete(*v443);
                                                                              }

                                                                              ot::Ip6::Address::ToString(v449, v443);
                                                                              v259 = strlen(&v443[12]);
                                                                              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], &v443[12], v259);
                                                                              v260 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], " ", 1);
                                                                              v443[0] = 48;
                                                                              v261 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v260, v443);
                                                                              v262 = *v261;
                                                                              *(v261 + *(*v261 - 24) + 24) = 4;
                                                                              *(v261 + *(v262 - 24) + 8) = *(v261 + *(v262 - 24) + 8) & 0xFFFFFFB5 | 8;
                                                                              std::ostream::operator<<();
                                                                              v263 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], " ", 1);
                                                                              v264 = strlen(HostInterpreter::ProcessPropertyGet(unsigned char,char **,void *)::kStateStrings[*&v449[20]]);
                                                                              v265 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v263, HostInterpreter::ProcessPropertyGet(unsigned char,char **,void *)::kStateStrings[*&v449[20]], v264);
                                                                              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v265, " canEvict=", 10);
                                                                              std::ostream::operator<<();
                                                                              if (*&v449[20])
                                                                              {
                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], " timeout=", 9);
                                                                                std::ostream::operator<<();
                                                                              }

                                                                              else if ((v449[24] & 4) != 0)
                                                                              {
                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], " transTime=", 11);
                                                                                std::ostream::operator<<();
                                                                                v266 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], " eid=", 5);
                                                                                ot::Ip6::Address::ToString(&v452, v443);
                                                                                v267 = strlen(&v443[12]);
                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v266, &v443[12], v267);
                                                                              }

                                                                              if (*&v449[20] == 3)
                                                                              {
                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2], " retryDelay=", 12);
                                                                                std::ostream::operator<<();
                                                                              }

                                                                              std::endl[abi:ne200100]<char,std::char_traits<char>>(&v427[0].__r_.__value_.__r.__words[2]);
                                                                              std::stringbuf::str();
                                                                              if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                                              {
                                                                                operator delete(__s[0].__r_.__value_.__l.__data_);
                                                                              }

                                                                              __s[0] = *v443;
                                                                              std::list<std::string>::push_back();
                                                                            }

                                                                            boost::any::any<std::list<std::string> &>();
                                                                          }

LABEL_1001:
                                                                          v255 = *(v413 + 28);
                                                                          MaxRouterId = otThreadGetMaxRouterId();
                                                                          *v449 = v449;
                                                                          *&v449[8] = v449;
                                                                          *&v449[16] = 0;
                                                                          v257 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                          if (v257)
                                                                          {
                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v257, OS_LOG_TYPE_INFO))
                                                                            {
                                                                              *v443 = 0;
                                                                              _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_INFO, "| ID | RLOC16 | ExtendedAddress | NextHop  | PathCost | LQIn | LQOut | Age | Link", v443, 2u);
                                                                            }
                                                                          }

                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                          {
                                                                            [PowerEventHandler_Rcp init:];
                                                                          }

                                                                          v368 = 0;
                                                                          *&v258 = 136315394;
                                                                          v411 = v258;
                                                                          *&v258 = 67112960;
                                                                          v410 = v258;
                                                                          while (otThreadGetRouterInfo(*(v413 + 28), v368, v447))
                                                                          {
                                                                            if (MaxRouterId < ++v368)
                                                                            {
                                                                              boost::any::any<std::list<std::string> &>();
                                                                            }
                                                                          }

                                                                          v369 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                          if (v369)
                                                                          {
                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v369, OS_LOG_TYPE_INFO))
                                                                            {
                                                                              *v443 = v410;
                                                                              *&v443[8] = 1024;
                                                                              *&v443[10] = LOWORD(v447[0].__r_.__value_.__r.__words[1]);
                                                                              *&v443[14] = 1024;
                                                                              *&v443[4] = v447[0].__r_.__value_.__s.__data_[10];
                                                                              *&v443[16] = v447[0].__r_.__value_.__s.__data_[0];
                                                                              *&v443[20] = 1024;
                                                                              *&v443[22] = v447[0].__r_.__value_.__s.__data_[1];
                                                                              *&v443[26] = 1024;
                                                                              *&v443[32] = 1024;
                                                                              *&v443[34] = v447[0].__r_.__value_.__s.__data_[3];
                                                                              *&v443[38] = 1024;
                                                                              *&v443[28] = v447[0].__r_.__value_.__s.__data_[2];
                                                                              *&v443[40] = v447[0].__r_.__value_.__s.__data_[4];
                                                                              *&v443[44] = 1024;
                                                                              *&v443[46] = v447[0].__r_.__value_.__s.__data_[5];
                                                                              *&v443[50] = 1024;
                                                                              *&v443[56] = 1024;
                                                                              *&v443[58] = v447[0].__r_.__value_.__s.__data_[7];
                                                                              *&v443[62] = 1024;
                                                                              *&v443[52] = v447[0].__r_.__value_.__s.__data_[6];
                                                                              LODWORD(v444) = v447[0].__r_.__value_.__s.__data_[11];
                                                                              WORD2(v444) = 1024;
                                                                              *(&v444 + 6) = v447[0].__r_.__value_.__s.__data_[12];
                                                                              WORD5(v444) = 1024;
                                                                              LOWORD(v445[0]) = 1024;
                                                                              *(v445 + 2) = v447[0].__r_.__value_.__s.__data_[14];
                                                                              WORD3(v445[0]) = 1024;
                                                                              HIDWORD(v444) = v447[0].__r_.__value_.__s.__data_[13];
                                                                              DWORD2(v445[0]) = v447[0].__r_.__value_.__s.__data_[15];
                                                                              WORD6(v445[0]) = 1024;
                                                                              *(v445 + 14) = (v447[0].__r_.__value_.__s.__data_[16] >> 1) & 1;
                                                                              _os_log_impl(&_mh_execute_header, v369, OS_LOG_TYPE_INFO, "| %2d| 0x%04x | %02X%02X%02X%02X%02X%02X%02X%02X | %8d | %8d | %9d | %3u | %3d |%2d", v443, 0x62u);
                                                                            }
                                                                          }

                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                          {
                                                                            *v443 = v411;
                                                                            *&v443[4] = "com.apple.wpantund.ncp";
                                                                            *&v443[12] = 2080;
                                                                            *&v443[14] = "default";
                                                                            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v443, 0x16u);
                                                                          }

                                                                          snprintf(v427, 0x3E8uLL, "Router id = %u,RLOC16 = 0x%x,ExtendedAddress=%02X%02X%02X%02X%02X%02X%02X%02X,NextHop = %d,PathCost= %d, LQIn =%d, LQOut= %d, Age= %d, Link= %d", v447[0].__r_.__value_.__s.__data_[10], LOWORD(v447[0].__r_.__value_.__r.__words[1]), v447[0].__r_.__value_.__s.__data_[0], v447[0].__r_.__value_.__s.__data_[1], v447[0].__r_.__value_.__s.__data_[2], v447[0].__r_.__value_.__s.__data_[3], v447[0].__r_.__value_.__s.__data_[4], v447[0].__r_.__value_.__s.__data_[5], v447[0].__r_.__value_.__s.__data_[6], v447[0].__r_.__value_.__s.__data_[7], v447[0].__r_.__value_.__s.__data_[11], v447[0].__r_.__value_.__s.__data_[12], v447[0].__r_.__value_.__s.__data_[13], v447[0].__r_.__value_.__s.__data_[14], v447[0].__r_.__value_.__s.__data_[15], (v447[0].__r_.__value_.__s.__data_[16] >> 1) & 1);
                                                                          std::string::basic_string[abi:ne200100]<0>(v443, v427);
                                                                          operator new();
                                                                        }

LABEL_995:
                                                                        v251 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                        if (v251)
                                                                        {
                                                                          v252 = v251;
                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v252, OS_LOG_TYPE_INFO))
                                                                          {
                                                                            v253 = __s1;
                                                                            v254 = *(__s1 + 56);
                                                                            if (*(__s1 + 23) < 0)
                                                                            {
                                                                              v253 = *__s1;
                                                                            }

                                                                            LODWORD(v427[0].__r_.__value_.__l.__data_) = 67109378;
                                                                            HIDWORD(v427[0].__r_.__value_.__r.__words[0]) = v254;
                                                                            LOWORD(v427[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                            *(&v427[0].__r_.__value_.__r.__words[1] + 2) = v253;
                                                                            _os_log_impl(&_mh_execute_header, v252, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v427, 0x12u);
                                                                          }
                                                                        }

                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                        {
                                                                          [PowerEventHandler_Rcp init:];
                                                                        }

                                                                        v427[0].__r_.__value_.__r.__words[0] = v427;
                                                                        v427[0].__r_.__value_.__l.__size_ = v427;
                                                                        v427[0].__r_.__value_.__r.__words[2] = 0;
                                                                        HostInterpreter::GetRcpStateInfo(v413);
                                                                      }

                                                                      goto LABEL_984;
                                                                    }

LABEL_983:
                                                                    MeshLocalPrefix = otThreadGetMeshLocalPrefix(*(v413 + 28));
                                                                    snprintf(v427, 0xC8uLL, "%x:%x:%x:%x::/64", __rev16(*MeshLocalPrefix), __rev16(MeshLocalPrefix[1]), __rev16(MeshLocalPrefix[2]), __rev16(MeshLocalPrefix[3]));
                                                                    std::string::basic_string[abi:ne200100]<0>(v443, v427);
                                                                    operator new();
                                                                  }

                                                                  goto LABEL_981;
                                                                }

LABEL_980:
                                                                v449[0] = 0;
                                                                v447[0].__r_.__value_.__s.__data_[0] = 0;
                                                                otLinkGetTxDirectRetrySuccessHistogram(*(v413 + 28), v449);
                                                                otLinkGetTxIndirectRetrySuccessHistogram(*(v413 + 28), v447);
                                                                HostInterpreter::GetMacRetryHistogramAsValMap(v449[0], v447[0].__r_.__value_.__s.__data_[0], v427);
                                                                boost::any::any<std::map<std::string,boost::any> &>();
                                                              }

LABEL_979:
                                                              v449[0] = 0;
                                                              v447[0].__r_.__value_.__s.__data_[0] = 0;
                                                              otLinkGetRouterRssiHistogram(*(v413 + 28), v449);
                                                              otLinkGetEndDeviceRssiHistogram(*(v413 + 28), v447);
                                                              HostInterpreter::GetNeighRSSIHistogramAsValMap(v449[0], v447[0].__r_.__value_.__s.__data_[0], v427);
                                                              boost::any::any<std::map<std::string,boost::any> &>();
                                                            }

LABEL_978:
                                                            v449[0] = 0;
                                                            otLinkGetLqiHistogram(*(v413 + 28), v449);
                                                            HostInterpreter::GetMacPacketLQIHistogramAsValMap(v449[0], v427);
                                                            boost::any::any<std::map<std::string,boost::any> &>();
                                                          }

LABEL_977:
                                                          v449[0] = 0;
                                                          v447[0].__r_.__value_.__s.__data_[0] = 0;
                                                          otLinkGetTxDirectErrorNoAckHistogram(*(v413 + 28), v449);
                                                          otLinkGetTxDirectErrorChannelAccessFailureHistogram(*(v413 + 28), v447);
                                                          HostInterpreter::GetMacPacketErrHistogramAsValMap(v449[0], v447[0].__r_.__value_.__s.__data_[0], v427);
                                                          boost::any::any<std::map<std::string,boost::any> &>();
                                                        }

LABEL_976:
                                                        v449[0] = 0;
                                                        v447[0].__r_.__value_.__s.__data_[0] = 0;
                                                        otLinkGetTxPacketSizeHistogram(*(v413 + 28), v449);
                                                        otLinkGetRxPacketSizeHistogram(*(v413 + 28), v447);
                                                        HostInterpreter::GetMacPacketSizeHistogramAsValMap(v449[0], v447[0].__r_.__value_.__s.__data_[0], v427);
                                                        boost::any::any<std::map<std::string,boost::any> &>();
                                                      }

LABEL_970:
                                                      v243 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                      if (v243)
                                                      {
                                                        v244 = v243;
                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v244, OS_LOG_TYPE_INFO))
                                                        {
                                                          v245 = __s1;
                                                          if (*(__s1 + 23) < 0)
                                                          {
                                                            v245 = *__s1;
                                                          }

                                                          LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                          *(v427[0].__r_.__value_.__r.__words + 4) = v245;
                                                          _os_log_impl(&_mh_execute_header, v244, OS_LOG_TYPE_INFO, "HI:PG0v:%s", v427, 0xCu);
                                                        }
                                                      }

                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                      {
                                                        [PowerEventHandler_Rcp init:];
                                                      }

                                                      *&v443[16] = 0;
                                                      *&v443[8] = 0;
                                                      *v443 = &v443[8];
                                                      v456.__r_.__value_.__s.__data_[0] = 0;
                                                      DeepSleepFilterList = otPlatVendorGetDeepSleepFilterList(*(v413 + 28), v427, &v456);
                                                      if (DeepSleepFilterList)
                                                      {
                                                        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v443, *&v443[8]);
                                                        IfsAckDataPerNeighbor = DeepSleepFilterList;
                                                        goto LABEL_299;
                                                      }

                                                      if (!v456.__r_.__value_.__s.__data_[0])
                                                      {
                                                        boost::any::any<std::map<std::string,boost::any> &>();
                                                      }

                                                      std::string::basic_string[abi:ne200100]<0>(v448, "[");
                                                      v356 = std::string::insert(v448, 0, "DeepSleepFilterList");
                                                      v357 = *&v356->__r_.__value_.__l.__data_;
                                                      __s[0].__r_.__value_.__r.__words[2] = v356->__r_.__value_.__r.__words[2];
                                                      *&__s[0].__r_.__value_.__l.__data_ = v357;
                                                      v356->__r_.__value_.__l.__size_ = 0;
                                                      v356->__r_.__value_.__r.__words[2] = 0;
                                                      v356->__r_.__value_.__r.__words[0] = 0;
                                                      std::to_string(&v446, 0);
                                                      if ((v446.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                      {
                                                        v358 = &v446;
                                                      }

                                                      else
                                                      {
                                                        v358 = v446.__r_.__value_.__r.__words[0];
                                                      }

                                                      if ((v446.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                      {
                                                        v359 = HIBYTE(v446.__r_.__value_.__r.__words[2]);
                                                      }

                                                      else
                                                      {
                                                        v359 = v446.__r_.__value_.__l.__size_;
                                                      }

                                                      v360 = std::string::append(__s, v358, v359);
                                                      v361 = *&v360->__r_.__value_.__l.__data_;
                                                      v447[0].__r_.__value_.__r.__words[2] = v360->__r_.__value_.__r.__words[2];
                                                      *&v447[0].__r_.__value_.__l.__data_ = v361;
                                                      v360->__r_.__value_.__l.__size_ = 0;
                                                      v360->__r_.__value_.__r.__words[2] = 0;
                                                      v360->__r_.__value_.__r.__words[0] = 0;
                                                      std::string::basic_string[abi:ne200100]<0>(&buf, "]");
                                                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                      {
                                                        v362 = &buf;
                                                      }

                                                      else
                                                      {
                                                        v362 = buf.__r_.__value_.__r.__words[0];
                                                      }

                                                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                      {
                                                        v363 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                      }

                                                      else
                                                      {
                                                        v363 = buf.__r_.__value_.__l.__size_;
                                                      }

                                                      v364 = std::string::append(v447, v362, v363);
                                                      v365 = *&v364->__r_.__value_.__l.__data_;
                                                      *&v449[16] = *(&v364->__r_.__value_.__l + 2);
                                                      *v449 = v365;
                                                      v364->__r_.__value_.__l.__size_ = 0;
                                                      v364->__r_.__value_.__r.__words[2] = 0;
                                                      v364->__r_.__value_.__r.__words[0] = 0;
                                                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        operator delete(buf.__r_.__value_.__l.__data_);
                                                        if (SHIBYTE(v447[0].__r_.__value_.__r.__words[2]) < 0)
                                                        {
LABEL_1233:
                                                          operator delete(v447[0].__r_.__value_.__l.__data_);
                                                          if ((SHIBYTE(v446.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                          {
                                                            goto LABEL_1234;
                                                          }

                                                          goto LABEL_1239;
                                                        }
                                                      }

                                                      else if (SHIBYTE(v447[0].__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        goto LABEL_1233;
                                                      }

                                                      if ((SHIBYTE(v446.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                      {
LABEL_1234:
                                                        if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                        {
                                                          goto LABEL_1235;
                                                        }

                                                        goto LABEL_1240;
                                                      }

LABEL_1239:
                                                      operator delete(v446.__r_.__value_.__l.__data_);
                                                      if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                      {
LABEL_1235:
                                                        operator delete(__s[0].__r_.__value_.__l.__data_);
                                                        if ((SHIBYTE(v448[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                        {
                                                          goto LABEL_1242;
                                                        }

LABEL_1241:
                                                        operator delete(v448[0].__r_.__value_.__l.__data_);
LABEL_1242:
                                                        v447[0].__r_.__value_.__r.__words[0] = v449;
                                                        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v443, v449);
                                                        boost::any::operator=<unsigned char &>();
                                                      }

LABEL_1240:
                                                      if ((SHIBYTE(v448[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                      {
                                                        goto LABEL_1242;
                                                      }

                                                      goto LABEL_1241;
                                                    }

                                                    goto LABEL_964;
                                                  }

LABEL_958:
                                                  v237 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                  if (v237)
                                                  {
                                                    v238 = v237;
                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v238, OS_LOG_TYPE_INFO))
                                                    {
                                                      v239 = __s1;
                                                      if (*(__s1 + 23) < 0)
                                                      {
                                                        v239 = *__s1;
                                                      }

                                                      LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                      *(v427[0].__r_.__value_.__r.__words + 4) = v239;
                                                      _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                    }
                                                  }

                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                  {
                                                    [PowerEventHandler_Rcp init:];
                                                  }

                                                  *&v443[16] = 0;
                                                  *&v443[8] = 0;
                                                  *v443 = &v443[8];
                                                  v456.__r_.__value_.__s.__data_[0] = -12;
                                                  PTB = otPlatVendorGetDeepSleepRegionLogLevels(*(v413 + 28), v427, &v456);
                                                  if (PTB)
                                                  {
                                                    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v443, *&v443[8]);
LABEL_1283:
                                                    IfsAckDataPerNeighbor = PTB;
                                                    goto LABEL_299;
                                                  }

                                                  if (!v456.__r_.__value_.__s.__data_[0])
                                                  {
                                                    boost::any::any<std::map<std::string,boost::any> &>();
                                                  }

                                                  std::string::basic_string[abi:ne200100]<0>(v448, "[");
                                                  v345 = std::string::insert(v448, 0, "DeepSleepRegionLogLevel");
                                                  v346 = *&v345->__r_.__value_.__l.__data_;
                                                  __s[0].__r_.__value_.__r.__words[2] = v345->__r_.__value_.__r.__words[2];
                                                  *&__s[0].__r_.__value_.__l.__data_ = v346;
                                                  v345->__r_.__value_.__l.__size_ = 0;
                                                  v345->__r_.__value_.__r.__words[2] = 0;
                                                  v345->__r_.__value_.__r.__words[0] = 0;
                                                  std::to_string(&v446, 0);
                                                  if ((v446.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                  {
                                                    v347 = &v446;
                                                  }

                                                  else
                                                  {
                                                    v347 = v446.__r_.__value_.__r.__words[0];
                                                  }

                                                  if ((v446.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                  {
                                                    v348 = HIBYTE(v446.__r_.__value_.__r.__words[2]);
                                                  }

                                                  else
                                                  {
                                                    v348 = v446.__r_.__value_.__l.__size_;
                                                  }

                                                  v349 = std::string::append(__s, v347, v348);
                                                  v350 = *&v349->__r_.__value_.__l.__data_;
                                                  v447[0].__r_.__value_.__r.__words[2] = v349->__r_.__value_.__r.__words[2];
                                                  *&v447[0].__r_.__value_.__l.__data_ = v350;
                                                  v349->__r_.__value_.__l.__size_ = 0;
                                                  v349->__r_.__value_.__r.__words[2] = 0;
                                                  v349->__r_.__value_.__r.__words[0] = 0;
                                                  std::string::basic_string[abi:ne200100]<0>(&buf, "]");
                                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                  {
                                                    v351 = &buf;
                                                  }

                                                  else
                                                  {
                                                    v351 = buf.__r_.__value_.__r.__words[0];
                                                  }

                                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                  {
                                                    v352 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                  }

                                                  else
                                                  {
                                                    v352 = buf.__r_.__value_.__l.__size_;
                                                  }

                                                  v353 = std::string::append(v447, v351, v352);
                                                  v354 = *&v353->__r_.__value_.__l.__data_;
                                                  *&v449[16] = *(&v353->__r_.__value_.__l + 2);
                                                  *v449 = v354;
                                                  v353->__r_.__value_.__l.__size_ = 0;
                                                  v353->__r_.__value_.__r.__words[2] = 0;
                                                  v353->__r_.__value_.__r.__words[0] = 0;
                                                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                  {
                                                    operator delete(buf.__r_.__value_.__l.__data_);
                                                    if (SHIBYTE(v447[0].__r_.__value_.__r.__words[2]) < 0)
                                                    {
LABEL_1199:
                                                      operator delete(v447[0].__r_.__value_.__l.__data_);
                                                      if ((SHIBYTE(v446.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                      {
                                                        goto LABEL_1200;
                                                      }

                                                      goto LABEL_1205;
                                                    }
                                                  }

                                                  else if (SHIBYTE(v447[0].__r_.__value_.__r.__words[2]) < 0)
                                                  {
                                                    goto LABEL_1199;
                                                  }

                                                  if ((SHIBYTE(v446.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                  {
LABEL_1200:
                                                    if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      goto LABEL_1201;
                                                    }

                                                    goto LABEL_1206;
                                                  }

LABEL_1205:
                                                  operator delete(v446.__r_.__value_.__l.__data_);
                                                  if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                  {
LABEL_1201:
                                                    operator delete(__s[0].__r_.__value_.__l.__data_);
                                                    if ((SHIBYTE(v448[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                    {
                                                      goto LABEL_1208;
                                                    }

LABEL_1207:
                                                    operator delete(v448[0].__r_.__value_.__l.__data_);
LABEL_1208:
                                                    v447[0].__r_.__value_.__r.__words[0] = v449;
                                                    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v443, v449);
                                                    boost::any::operator=<unsigned char &>();
                                                  }

LABEL_1206:
                                                  if ((SHIBYTE(v448[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                  {
                                                    goto LABEL_1208;
                                                  }

                                                  goto LABEL_1207;
                                                }

                                                goto LABEL_952;
                                              }

LABEL_946:
                                              v231 = log_get_logging_obg("com.apple.threadradiod", "default");
                                              if (v231)
                                              {
                                                v232 = v231;
                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
                                                {
                                                  v233 = __s1;
                                                  if (*(__s1 + 23) < 0)
                                                  {
                                                    v233 = *__s1;
                                                  }

                                                  LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                  *(v427[0].__r_.__value_.__r.__words + 4) = v233;
                                                  _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                                }
                                              }

                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                              {
                                                [PowerEventHandler_Rcp init:];
                                              }

                                              std::string::basic_string[abi:ne200100]<0>(v427, "Srp:NetdataMode");
                                              *v443 = v427;
                                              std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v427[0].__r_.__value_.__l.__data_);
                                              boost::any::any<std::string &>();
                                            }

LABEL_940:
                                            v228 = log_get_logging_obg("com.apple.threadradiod", "default");
                                            if (v228)
                                            {
                                              v229 = v228;
                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
                                              {
                                                v230 = __s1;
                                                if (*(__s1 + 23) < 0)
                                                {
                                                  v230 = *__s1;
                                                }

                                                LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                                *(v427[0].__r_.__value_.__r.__words + 4) = v230;
                                                _os_log_impl(&_mh_execute_header, v229, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                              }
                                            }

                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                            {
                                              [PowerEventHandler_Rcp init:];
                                            }

                                            operator new();
                                          }

LABEL_934:
                                          v225 = log_get_logging_obg("com.apple.threadradiod", "default");
                                          if (v225)
                                          {
                                            v226 = v225;
                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v226, OS_LOG_TYPE_INFO))
                                            {
                                              v227 = __s1;
                                              if (*(__s1 + 23) < 0)
                                              {
                                                v227 = *__s1;
                                              }

                                              LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                              *(v427[0].__r_.__value_.__r.__words + 4) = v227;
                                              _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
                                            }
                                          }

                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [PowerEventHandler_Rcp init:];
                                          }

                                          if (!otPlatVendorGetVersion(*(v413 + 28), v427, 500))
                                          {
                                            std::string::basic_string[abi:ne200100]<0>(v443, v427);
                                            if ((v443[23] & 0x80000000) != 0)
                                            {
                                              if (!*&v443[8])
                                              {
                                                IfsAckDataPerNeighbor = 1;
                                                operator delete(*v443);
                                                goto LABEL_299;
                                              }
                                            }

                                            else if (!v443[23])
                                            {
                                              goto LABEL_300;
                                            }

                                            boost::any::any<std::string &>();
                                          }

LABEL_300:
                                          operator new();
                                        }

                                        goto LABEL_928;
                                      }

LABEL_924:
                                      VersionString = otGetVersionString();
                                      std::string::basic_string[abi:ne200100]<0>(v427, VersionString);
                                      v220 = HIBYTE(v427[0].__r_.__value_.__r.__words[2]);
                                      v221 = HIBYTE(v427[0].__r_.__value_.__r.__words[2]);
                                      if ((v427[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                      {
                                        v220 = v427[0].__r_.__value_.__l.__size_;
                                      }

                                      if (v220)
                                      {
                                        boost::any::any<std::string &>();
                                      }

                                      goto LABEL_1432;
                                    }

LABEL_920:
                                    v449[0] = 0;
                                    otLinkGetJoinerRssiHistogram(*(v413 + 28), v449);
                                    HostInterpreter::GetJoinerRssiHistogramAsValMap(v449[0], v427);
                                    boost::any::any<std::map<std::string,boost::any> &>();
                                  }

                                  goto LABEL_915;
                                }

LABEL_911:
                                otLinkGetCslRequestAhead(*(v413 + 28));
                                v217 = log_get_logging_obg("com.apple.threadradiod", "default");
                                if (v217)
                                {
                                  v218 = v217;
                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v218, OS_LOG_TYPE_INFO))
                                  {
                                    LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                    *(v427[0].__r_.__value_.__r.__words + 4) = "vendor:csl:tx:schedframe:reqahead:timeinus";
                                    _os_log_impl(&_mh_execute_header, v218, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v427, 0xCu);
                                  }
                                }

                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                {
                                  [PowerEventHandler_Rcp init:];
                                }

                                operator new();
                              }

                              goto LABEL_906;
                            }

LABEL_902:
                            otLinkGetMleAdvTxNum(*(v413 + 28));
                            v214 = log_get_logging_obg("com.apple.threadradiod", "default");
                            if (v214)
                            {
                              v215 = v214;
                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v215, OS_LOG_TYPE_INFO))
                              {
                                LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
                                *(v427[0].__r_.__value_.__r.__words + 4) = "vendor:mle:adv:tx:num";
                                _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v427, 0xCu);
                              }
                            }

                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                            {
                              [PowerEventHandler_Rcp init:];
                            }

                            operator new();
                          }

LABEL_901:
                          otLinkGetCounters(*(v413 + 28));
                          HostInterpreter::GetMacCountersAsValMap(v427);
                        }

LABEL_900:
                        otAppGetCounters(*(v413 + 28));
                        otAppUpdateMatterSubscriptionCountHistogram(*(v413 + 28));
                        HostInterpreter::GetMatterSubscriptionHistogramsAsValMap(v427);
                      }

LABEL_898:
                      otThreadGetIp6Counters(*(v413 + 28));
                      otAppGetCounters(*(v413 + 28));
                      HostInterpreter::GetOtIpCountersAsValMap(v427);
                    }

LABEL_899:
                    v427[0].__r_.__value_.__r.__words[0] = v427;
                    v427[0].__r_.__value_.__l.__size_ = v427;
                    v427[0].__r_.__value_.__r.__words[2] = 0;
                    HostInterpreter::GetNeighborTriggerBasedCounters(v413);
                    boost::any::any<std::list<std::map<std::string,boost::any>> &>();
                  }

LABEL_897:
                  otThreadGetMleCounters(*(v413 + 28));
                  HostInterpreter::GetMleOtCountersAsValMap(v427);
                }

LABEL_896:
                otThreadGetMleLinkLossCounters(*(v413 + 28));
                *&v427[0].__r_.__value_.__r.__words[1] = 0uLL;
                v427[0].__r_.__value_.__r.__words[0] = &v427[0].__r_.__value_.__l.__size_;
                std::string::basic_string[abi:ne200100]<0>(v443, "link_loss_nbr_child_count");
                *v449 = v443;
                std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v427, v443);
                boost::any::operator=<unsigned short &>();
              }

LABEL_889:
              otThreadGetBbrCounters(*(v413 + 28));
              *&v427[0].__r_.__value_.__r.__words[1] = 0uLL;
              v427[0].__r_.__value_.__r.__words[0] = &v427[0].__r_.__value_.__l.__size_;
              std::string::basic_string[abi:ne200100]<0>(v443, "bbr_primary_count");
              *v449 = v443;
              std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v427, v443);
              boost::any::operator=<unsigned short &>();
            }

LABEL_880:
            v449[0] = 0;
            v447[0].__r_.__value_.__s.__data_[0] = 0;
            otThreadGetConnectedChildNodesHistogram(*(v413 + 28), v449);
            otThreadGetConnectedRouterNodesHistogram(*(v413 + 28), v447);
            HostInterpreter::GetNeighborsCountAsValMap(v449[0], v447[0].__r_.__value_.__s.__data_[0], v427);
            boost::any::any<std::map<std::string,boost::any> &>();
          }

LABEL_881:
          HostInterpreter::GetLeaderReelectCountersAsValMap(v427);
        }

LABEL_878:
        v211 = *(v413 + 28);
        if (!otPlatVendorGenerateStackOverflow())
        {
          v212 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v212)
          {
            v213 = v212;
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v213, OS_LOG_TYPE_INFO))
            {
              LOWORD(v427[0].__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_INFO, "StackOverflow", v427, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          std::string::basic_string[abi:ne200100]<0>(v427, "StackOverflow triggered");
          operator new();
        }

        goto LABEL_300;
      }

LABEL_869:
      v208 = *(v413 + 28);
      if (!otPlatVendorGenerateHardFault())
      {
        v209 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v209)
        {
          v210 = v209;
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v210, OS_LOG_TYPE_INFO))
          {
            LOWORD(v427[0].__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v210, OS_LOG_TYPE_INFO, "HardFault", v427, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        std::string::basic_string[abi:ne200100]<0>(v427, "Hard fault triggered");
        operator new();
      }

      goto LABEL_300;
    }

    goto LABEL_861;
  }

LABEL_854:
  v205 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v205)
  {
    v206 = v205;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
    {
      LODWORD(v427[0].__r_.__value_.__l.__data_) = 136315138;
      *(v427[0].__r_.__value_.__r.__words + 4) = "Thread:ActiveDataset:Bytes";
      _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_INFO, "HI:PG0:%s", v427, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  IfsAckDataPerNeighbor = otDatasetGetActiveTlvs(*(v413 + 28), v427);
  if (!IfsAckDataPerNeighbor)
  {
    nl::Data::Data(v443, v427, v438);
    boost::any::any<nl::Data &>();
  }

LABEL_299:
  if (IfsAckDataPerNeighbor)
  {
    goto LABEL_300;
  }

  return IfsAckDataPerNeighbor;
}

void sub_10012F0A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 560);
  if (v3)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100131544()
{
  if (*(v0 + 495) < 0)
  {
    v1 = *(v0 + 472);
    JUMPOUT(0x100131554);
  }

  JUMPOUT(0x100131580);
}

void sub_10013155C()
{
  if (*(v0 + 12359) < 0)
  {
    v1 = *(v0 + 12336);
    JUMPOUT(0x100131574);
  }

  JUMPOUT(0x1001315A0);
}

void sub_1001315CC(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v2 - 176, *(v2 - 168));
  v4 = *(v1 + 48);
  if (v4)
  {
    operator delete(v4);
    if (*(v2 - 129) < 0)
    {
LABEL_3:
      operator delete(*(v2 - 152));
      std::list<std::map<std::string,boost::any>>::~list(v2 - 128);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v2 - 129) < 0)
  {
    goto LABEL_3;
  }

  std::list<std::map<std::string,boost::any>>::~list(v2 - 128);
  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::ProcessPropertySet(HostInterpreter *this, unsigned __int8 a2, char **a3, char *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v7 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a4;
      if (a4[23] < 0)
      {
        v8 = *a4;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "HI:PS:%s", &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if ((a4[23] & 0x80000000) == 0)
  {
    if (strcmp(a4, "OpenThread:LogTimestampBase"))
    {
      if (strcmp(a4, "Network:PSKc"))
      {
        if (strcmp(a4, "Network:NodeType"))
        {
          if (strcmp(a4, "vendor:coex:preferredAntenna"))
          {
            if (strcmp(a4, "vendor:coex:scanFreqTable"))
            {
              if (strcmp(a4, "vendor:coex:CoTxPowerCap"))
              {
                if (strcmp(a4, "vendor:coex:radioload"))
                {
                  if (strcmp(a4, "vendor:coex:rcp2:state:collection"))
                  {
                    if (strcmp(a4, "vendor:coex:rcp2:state:table:reset"))
                    {
                      if (strcmp(a4, "vendor:power"))
                      {
                        if (strcmp(a4, "Thread:Pairing:Status"))
                        {
                          if (strcmp(a4, "Thread:FWUpdate"))
                          {
                            if (strcmp(a4, "Thread:EmacId"))
                            {
                              if (strcmp(a4, "StartCurrentNetworkDiscoveryScan"))
                              {
                                if (strcmp(a4, "NCP:TXPower"))
                                {
                                  if (strcmp(a4, "Thread:ActiveDataset:Bytes"))
                                  {
                                    if (strcmp(a4, "Interface:Up"))
                                    {
                                      if (strcmp(a4, "vendor:power:limit:table:active:id"))
                                      {
                                        if (strcmp(a4, "vendor:assert"))
                                        {
                                          if (strcmp(a4, "vendor:hard:reset:test"))
                                          {
                                            if (strcmp(a4, "vendor:mle:adv:tx:num"))
                                            {
                                              if (strcmp(a4, "Daemon:VirtualInterface:ReadBufferSize"))
                                              {
                                                if (strcmp(a4, "vendor:min:mac:interframedelay"))
                                                {
                                                  if (strcmp(a4, "vendor:csl:tx:schedframe:reqahead:timeinus"))
                                                  {
                                                    if (strcmp(a4, "vendor:neighbor:count:histogram"))
                                                    {
                                                      if (strcmp(a4, "vendor:bbr:counters"))
                                                      {
                                                        if (strcmp(a4, "vendor:linkloss:counters"))
                                                        {
                                                          if (strcmp(a4, "NCP:Counter:Thread:Mle"))
                                                          {
                                                            if (strcmp(a4, "NCP:Counter:AllIPv6"))
                                                            {
                                                              if (strcmp(a4, "NCP:Matter:Subscription:Histogram"))
                                                              {
                                                                if (strcmp(a4, "ca:reporting:enabled"))
                                                                {
                                                                  if (strcmp(a4, "streamRawRespTimeHistReset"))
                                                                  {
                                                                    if (strcmp(a4, "rcp2PcapStateReset"))
                                                                    {
                                                                      if (strcmp(a4, "NCP:Counter:AllMac"))
                                                                      {
                                                                        if (strcmp(a4, "vendor:radio:stats"))
                                                                        {
                                                                          if (strcmp(a4, "vendor:radio:counters"))
                                                                          {
                                                                            if (strcmp(a4, "vendor:joiner:RSSIHistogram"))
                                                                            {
                                                                              if (strcmp(a4, "vendor:deepsleep:filter:list"))
                                                                              {
                                                                                if (strcmp(a4, "vendor:deepsleep:loglevel"))
                                                                                {
                                                                                  if (strcmp(a4, "vendor:deepsleep:region:loglevels"))
                                                                                  {
                                                                                    if (strcmp(a4, "vendor:last:host:wake:reason"))
                                                                                    {
                                                                                      if (strcmp(a4, "vendor:MAC:packet:SizeHistogram"))
                                                                                      {
                                                                                        if (strcmp(a4, "vendor:MAC:packet:ErrorHistogram"))
                                                                                        {
                                                                                          if (strcmp(a4, "vendor:MAC:packet:LQIHistogram"))
                                                                                          {
                                                                                            if (strcmp(a4, "vendor:MAC:packet:RSSIHistogram"))
                                                                                            {
                                                                                              if (strcmp(a4, "NCP:MacRetryHistogram"))
                                                                                              {
                                                                                                if (strcmp(a4, "ResetAppAndRouteMetricsHistograms"))
                                                                                                {
                                                                                                  if (strcmp(a4, "UpdateAppAndRouteMetricsHistograms"))
                                                                                                  {
                                                                                                    if (strcmp(a4, "vendor:openthread:radio:counters"))
                                                                                                    {
                                                                                                      if (strcmp(a4, "vendor:cntr:stats:reset"))
                                                                                                      {
                                                                                                        if (strcmp(a4, "NCP:HostPowerState"))
                                                                                                        {
                                                                                                          if (strcmp(a4, "NCP:PcapEnabled"))
                                                                                                          {
                                                                                                            if (strcmp(a4, "Daemon:PromiscuousPcap"))
                                                                                                            {
                                                                                                              if (strcmp(a4, "Srp:NetdataMode"))
                                                                                                              {
                                                                                                                if (strcmp(a4, "UpdateLeaderInfo"))
                                                                                                                {
                                                                                                                  if (strcmp(a4, "NCP:Counter:Thread:Neighbor:TriggerBased"))
                                                                                                                  {
                                                                                                                    v9 = strcmp(a4, "Thread:Health:Metrics");
                                                                                                                    if (v9)
                                                                                                                    {
                                                                                                                      if (strcmp(a4, "Leader:Reelect:Counters"))
                                                                                                                      {
                                                                                                                        v10 = a4;
                                                                                                                        if (strcmp(a4, "bt_state_change"))
                                                                                                                        {
LABEL_69:
                                                                                                                          if (!strcmp(v10, "ap_state"))
                                                                                                                          {
                                                                                                                            any_to_BOOL(a4 + 3);
                                                                                                                            std::string::basic_string[abi:ne200100]<0>(&buf, "ap_state");
                                                                                                                            operator new();
                                                                                                                          }

                                                                                                                          v11 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                          if (v11)
                                                                                                                          {
                                                                                                                            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                                                                                                                            {
                                                                                                                              HostInterpreter::ProcessPropertySet(a4 + 23);
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                          {
                                                                                                                            [PowerEventHandler_Rcp init:];
                                                                                                                          }

                                                                                                                          goto LABEL_558;
                                                                                                                        }

LABEL_133:
                                                                                                                        any_to_BOOL(a4 + 3);
                                                                                                                        std::string::basic_string[abi:ne200100]<0>(&buf, "bt_state_change");
                                                                                                                        operator new();
                                                                                                                      }

                                                                                                                      goto LABEL_590;
                                                                                                                    }

                                                                                                                    goto LABEL_589;
                                                                                                                  }

LABEL_577:
                                                                                                                  for (*v149 = 0; !otThreadGetNextNeighborInfo(*(this + 28), v149, &buf); v159 = 0u)
                                                                                                                  {
                                                                                                                    v162 = 0u;
                                                                                                                    v161 = 0u;
                                                                                                                    v160 = 0u;
                                                                                                                  }

LABEL_347:
                                                                                                                  boost::function1<void,int>::operator()(a4 + 4);
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_570;
                                                                                                              }

                                                                                                              goto LABEL_563;
                                                                                                            }

                                                                                                            goto LABEL_550;
                                                                                                          }

                                                                                                          goto LABEL_545;
                                                                                                        }

LABEL_541:
                                                                                                        v133 = any_to_int(a4 + 3);
                                                                                                        v134 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                        if (v134)
                                                                                                        {
                                                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
                                                                                                          {
                                                                                                            LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                                                                            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v133;
                                                                                                            _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_INFO, "Set PowerState:%u", &buf, 8u);
                                                                                                          }
                                                                                                        }

                                                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                        {
                                                                                                          [PowerEventHandler_Rcp init:];
                                                                                                        }

                                                                                                        BufferSize = otPlatRadioSetHostPowerState(*(this + 28), v133);
                                                                                                        if (!BufferSize)
                                                                                                        {
                                                                                                          goto LABEL_558;
                                                                                                        }

                                                                                                        goto LABEL_255;
                                                                                                      }

                                                                                                      goto LABEL_539;
                                                                                                    }

                                                                                                    goto LABEL_537;
                                                                                                  }

LABEL_536:
                                                                                                  CoreAnalyticsHistogramMetricsHelper::ProcessAppAndRouteMetricsHistograms((this + 328));
                                                                                                  goto LABEL_558;
                                                                                                }

LABEL_535:
                                                                                                otAppResetAppAndRoutingMetricsHistograms(*(this + 28));
                                                                                                boost::function1<void,int>::operator()(a4 + 4);
                                                                                                return 0;
                                                                                              }

LABEL_534:
                                                                                              otLinkResetTxRetrySuccessHistogram(*(this + 28));
                                                                                              boost::function1<void,int>::operator()(a4 + 4);
                                                                                              return 0;
                                                                                            }

LABEL_533:
                                                                                            otLinkResetNeighborRssiHistogram(*(this + 28));
                                                                                            boost::function1<void,int>::operator()(a4 + 4);
                                                                                            return 0;
                                                                                          }

LABEL_532:
                                                                                          otLinkResetLqiHistogram(*(this + 28));
                                                                                          boost::function1<void,int>::operator()(a4 + 4);
                                                                                          return 0;
                                                                                        }

LABEL_531:
                                                                                        otLinkResetTxErrorHistogram(*(this + 28));
                                                                                        boost::function1<void,int>::operator()(a4 + 4);
                                                                                        return 0;
                                                                                      }

LABEL_530:
                                                                                      otLinkResetPacketSizeHistogram(*(this + 28));
                                                                                      boost::function1<void,int>::operator()(a4 + 4);
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_528;
                                                                                  }

                                                                                  goto LABEL_525;
                                                                                }

                                                                                goto LABEL_523;
                                                                              }

                                                                              goto LABEL_521;
                                                                            }

LABEL_520:
                                                                            otLinkResetJoinerRssiHistogram(*(this + 28));
                                                                            boost::function1<void,int>::operator()(a4 + 4);
                                                                            return 0;
                                                                          }

                                                                          goto LABEL_517;
                                                                        }

                                                                        goto LABEL_513;
                                                                      }

LABEL_511:
                                                                      otLinkResetCounters(*(this + 28));
                                                                      *(RcpHostContext::sRcpHostContext + 216 * (*(RcpHostContext::sRcpHostContext + 6136) & 3) + 6155) = 1;
                                                                      boost::function1<void,int>::operator()(a4 + 4);
                                                                      return 0;
                                                                    }

LABEL_496:
                                                                    otLinkResetPcapStateTable(*(this + 28));
                                                                    boost::function1<void,int>::operator()(a4 + 4);
                                                                    return 0;
                                                                  }

LABEL_494:
                                                                  v122 = *(this + 28);
                                                                  BufferSize = otResetStreamRawResponseHistogram();
                                                                  if (BufferSize)
                                                                  {
                                                                    goto LABEL_255;
                                                                  }

LABEL_558:
                                                                  boost::function1<void,int>::operator()(a4 + 4);
                                                                  return 0;
                                                                }

LABEL_492:
                                                                v120 = any_to_uint64(a4 + 3, 0);
                                                                if (v120)
                                                                {
                                                                  *(RcpHostContext::sRcpHostContext + 5972) = 1;
                                                                  std::string::basic_string[abi:ne200100]<0>(&buf, "ca:reporting:enabled");
                                                                  *v149 = &buf;
                                                                  v121 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_);
                                                                  std::string::assign((v121 + 7), "1");
                                                                }

                                                                else
                                                                {
                                                                  *(RcpHostContext::sRcpHostContext + 5972) = 0;
                                                                  std::string::basic_string[abi:ne200100]<0>(&buf, "ca:reporting:enabled");
                                                                  *v149 = &buf;
                                                                  v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_);
                                                                  std::string::assign((v123 + 7), "0");
                                                                }

                                                                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                {
                                                                  operator delete(buf.__r_.__value_.__l.__data_);
                                                                }

                                                                std::string::basic_string[abi:ne200100]<0>(&buf, "ca:reporting:enabled");
                                                                *v149 = &buf;
                                                                v124 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_);
                                                                v125 = (v124 + 7);
                                                                if (*(v124 + 79) < 0)
                                                                {
                                                                  v125 = *v125;
                                                                }

                                                                saveStringValue("ca:reporting:enabled", v125);
                                                                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                {
                                                                  operator delete(buf.__r_.__value_.__l.__data_);
                                                                }

                                                                v126 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                if (v126)
                                                                {
                                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
                                                                  {
                                                                    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                                    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v120;
                                                                    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_INFO, "mEnableCaReporting=%d", &buf, 8u);
                                                                  }
                                                                }

                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                {
                                                                  [PowerEventHandler_Rcp init:];
                                                                }

                                                                goto LABEL_558;
                                                              }

LABEL_490:
                                                              otAppResetMatterSubscriptionCounts(*(this + 28));
                                                              boost::function1<void,int>::operator()(a4 + 4);
                                                              return 0;
                                                            }

LABEL_488:
                                                            otThreadResetIp6Counters(*(this + 28));
                                                            otThreadResetAppCounters(*(this + 28));
                                                            *(RcpHostContext::sRcpHostContext + 216 * (*(RcpHostContext::sRcpHostContext + 6136) & 3) + 6154) = 1;
                                                            boost::function1<void,int>::operator()(a4 + 4);
                                                            return 0;
                                                          }

LABEL_484:
                                                          otThreadResetMleCounters(*(this + 28));
                                                          boost::function1<void,int>::operator()(a4 + 4);
                                                          return 0;
                                                        }

LABEL_483:
                                                        otThreadResetMleLinkLossCounters(*(this + 28));
                                                        boost::function1<void,int>::operator()(a4 + 4);
                                                        return 0;
                                                      }

LABEL_475:
                                                      otThreadResetBbrCounters(*(this + 28));
                                                      v119 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                      if (v119)
                                                      {
                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
                                                        {
                                                          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                                                          _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_INFO, "ResetBBR counters", &buf, 2u);
                                                        }
                                                      }

                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                      {
                                                        [PowerEventHandler_Rcp init:];
                                                      }

                                                      goto LABEL_558;
                                                    }

LABEL_470:
                                                    otThreadResetConnectedChildNodesHistogram(*(this + 28));
                                                    otThreadResetConnectedRouterNodesHistogram(*(this + 28));
                                                    boost::function1<void,int>::operator()(a4 + 4);
                                                    return 0;
                                                  }

LABEL_456:
                                                  v116 = any_to_uint64(a4 + 3, 0);
                                                  v117 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                  if (v117)
                                                  {
                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
                                                    {
                                                      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v116;
                                                      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_INFO, "csl:tx:schedframe:reqahead:timeinus %d", &buf, 8u);
                                                    }
                                                  }

                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                  {
                                                    [PowerEventHandler_Rcp init:];
                                                  }

                                                  BufferSize = otLinkSetCslRequestAhead(*(this + 28), v116);
                                                  if (!BufferSize)
                                                  {
                                                    persist_csl_request_ahead();
                                                  }

                                                  goto LABEL_255;
                                                }

LABEL_448:
                                                v114 = any_to_uint64(a4 + 3, 0);
                                                v115 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                if (v115)
                                                {
                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
                                                  {
                                                    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v114;
                                                    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_INFO, "vendor:min:mac:interframedelay %d", &buf, 8u);
                                                  }
                                                }

                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                {
                                                  [PowerEventHandler_Rcp init:];
                                                }

                                                BufferSize = otPlatRadioSetMinInterframeDelay(*(this + 28), v114);
                                                if (!BufferSize)
                                                {
                                                  boost::function1<void,int>::operator()(a4 + 4);
                                                  persist_interframe_delay();
                                                }

                                                goto LABEL_255;
                                              }

LABEL_420:
                                              v109 = any_to_uint64(a4 + 3, 0);
                                              v110 = log_get_logging_obg("com.apple.threadradiod", "default");
                                              if (v110)
                                              {
                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
                                                {
                                                  LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                  HIDWORD(buf.__r_.__value_.__r.__words[0]) = v109;
                                                  _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_INFO, "Daemon:VirtualInterface:ReadBufferSize %d", &buf, 8u);
                                                }
                                              }

                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                              {
                                                [PowerEventHandler_Rcp init:];
                                              }

                                              BufferSize = otSysSetThreadirtualInterfaceReadBufferSize(v109);
                                              if (!BufferSize)
                                              {
                                                persist_virtual_interface_readbuffersize();
                                              }

                                              goto LABEL_255;
                                            }

LABEL_412:
                                            v107 = any_to_uint64(a4 + 3, 0);
                                            v108 = log_get_logging_obg("com.apple.threadradiod", "default");
                                            if (v108)
                                            {
                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                                              {
                                                LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                HIDWORD(buf.__r_.__value_.__r.__words[0]) = v107;
                                                _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, "mle:adv:tx:num %d", &buf, 8u);
                                              }
                                            }

                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                            {
                                              [PowerEventHandler_Rcp init:];
                                            }

                                            BufferSize = otLinkSetMleAdvTxNum(*(this + 28), v107);
                                            if (!BufferSize)
                                            {
                                              persist_num_mle_adv();
                                            }

                                            goto LABEL_255;
                                          }

LABEL_393:
                                          v102 = any_to_uint64(a4 + 3, 0);
                                          v103 = log_get_logging_obg("com.apple.threadradiod", "default");
                                          if (v103)
                                          {
                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
                                            {
                                              LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v102;
                                              _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "Set hardResetTestMode:%u", &buf, 8u);
                                            }
                                          }

                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [PowerEventHandler_Rcp init:];
                                          }

                                          BufferSize = otPlatVendorSetHardResetTest(*(this + 28), v102);
                                          if (!BufferSize)
                                          {
                                            goto LABEL_558;
                                          }

                                          goto LABEL_255;
                                        }

LABEL_369:
                                        v96 = any_to_uint64(a4 + 3, 0);
                                        v97 = log_get_logging_obg("com.apple.threadradiod", "default");
                                        if (v97)
                                        {
                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
                                          {
                                            LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v96;
                                            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "vendor:assert %d", &buf, 8u);
                                          }
                                        }

                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                        {
                                          [PowerEventHandler_Rcp init:];
                                        }

                                        BufferSize = otPlatVendorSetAssert(*(this + 28), v96);
                                        if (!BufferSize)
                                        {
                                          goto LABEL_558;
                                        }

                                        goto LABEL_255;
                                      }

LABEL_363:
                                      *(this + 336) = any_to_int(a4 + 3);
                                      v88 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v88)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
                                        {
                                          v95 = *(this + 336);
                                          LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v95;
                                          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "vendor:power:limit:table:active:id==activeId[%d]", &buf, 8u);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }

                                      BufferSize = otPlatVendorSetPowerLimitTableActiveId(*(this + 28), *(this + 336), v89, v90, v91, v92, v93, v94);
                                      if (!BufferSize)
                                      {
                                        goto LABEL_558;
                                      }

                                      goto LABEL_255;
                                    }

LABEL_357:
                                    v84 = any_to_BOOL(a4 + 3);
                                    RcpHostContext::get_rcp_state(RcpHostContext::sRcpHostContext, &buf);
                                    v85 = log_get_logging_obg("com.apple.threadradiod", "default");
                                    if (v85)
                                    {
                                      is_the_mask_enabled = syslog_is_the_mask_enabled(6);
                                      if (is_the_mask_enabled)
                                      {
                                        is_the_mask_enabled = os_log_type_enabled(v85, OS_LOG_TYPE_INFO);
                                        if (is_the_mask_enabled)
                                        {
                                          p_buf = &buf;
                                          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                          {
                                            p_buf = buf.__r_.__value_.__r.__words[0];
                                          }

                                          *v149 = 136315138;
                                          *&v149[4] = p_buf;
                                          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "CurrentRCPState = %s", v149, 0xCu);
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

                                    if (v84)
                                    {
                                      RcpHostContext::init_threadstart_radio_start(RcpHostContext::sRcpHostContext);
                                      otIp6SetSlaacEnabled(*(this + 28), 1);
                                      BufferSize = otIp6SetEnabled(*(this + 28), 1);
                                      if (BufferSize)
                                      {
                                        goto LABEL_251;
                                      }

                                      v98 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v98)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
                                        {
                                          *v149 = 67109120;
                                          *&v149[4] = 1;
                                          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "SetProp interfaceUp = %d", v149, 8u);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }

                                      BufferSize = otThreadSetEnabled(*(this + 28), 1);
                                      if (BufferSize)
                                      {
                                        goto LABEL_251;
                                      }

                                      LinkMode = otThreadGetLinkMode(*(this + 28));
                                      if ((~LinkMode & 6) == 0 && (LinkMode & 1) == 0)
                                      {
                                        otThreadBecomeLeader(*(this + 28), 0);
                                      }

                                      v112 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v112)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
                                        {
                                          *v149 = 0;
                                          _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_INFO, "HI:ThreadStart,Done", v149, 2u);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }

                                      HostInterpreter::saveExtendedMACAddressIfNotAvailableinDB(this);
                                      HostInterpreter::transactionEnabled(v118, 1);
                                    }

                                    else
                                    {
                                      HostInterpreter::transactionEnabled(is_the_mask_enabled, 0);
                                      otIp6SetSlaacEnabled(*(this + 28), 0);
                                      BufferSize = otThreadSetEnabled(*(this + 28), 0);
                                      if (BufferSize)
                                      {
                                        goto LABEL_251;
                                      }

                                      v99 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v99)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
                                        {
                                          *v149 = 0;
                                          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "HI:ThreadStop,Done", v149, 2u);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }

                                      BufferSize = otIp6SetEnabled(*(this + 28), 0);
                                      if (BufferSize)
                                      {
                                        goto LABEL_251;
                                      }

                                      v113 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v113)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                                        {
                                          *v149 = 67109120;
                                          *&v149[4] = 0;
                                          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "SetProp interfaceUp=%d", v149, 8u);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }
                                    }

                                    goto LABEL_469;
                                  }

                                  goto LABEL_349;
                                }

LABEL_314:
                                v149[0] = 0;
                                any_to_string(a4 + 3, &buf);
                                if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                {
                                  v78 = &buf;
                                }

                                else
                                {
                                  v78 = buf.__r_.__value_.__r.__words[0];
                                }

                                BufferSize = ot::Utils::CmdLineParser::ParseAsInt8(v78, v149, v77);
                                if (!BufferSize)
                                {
                                  BufferSize = otPlatRadioSetTransmitPower(*(this + 28), v149[0]);
                                  if (!BufferSize)
                                  {
                                    persist_tx_power();
                                  }
                                }

                                goto LABEL_251;
                              }

LABEL_308:
                              any_to_string(a4 + 3, &buf);
                              v75 = *(this + 28);
                              if (otPlatRadioGetRcp2Vendor2Enabled())
                              {
                                v76 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "quick-scan");
                              }

                              else
                              {
                                v76 = 0;
                              }

                              BufferSize = HostInterpreter::ProcessDiscoverScanForCurrentNetwork(this, v76);
                              if (!BufferSize)
                              {
                                boost::function1<void,int>::operator()(a4 + 4);
                              }

                              goto LABEL_251;
                            }

LABEL_302:
                            any_to_string(a4 + 3, &buf);
                            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                            {
                              if (buf.__r_.__value_.__l.__size_)
                              {
                                v74 = buf.__r_.__value_.__r.__words[0];
LABEL_322:
                                BufferSize = ot::Utils::CmdLineParser::ParseAsHexString(v74, &v153, 8);
                                if (!BufferSize)
                                {
                                  otLinkSetPairingDeviceExtAddr(*(this + 28), &v153);
                                  v79 = log_get_logging_obg("com.apple.threadradiod", "default");
                                  if (v79)
                                  {
                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                                    {
                                      v80 = &buf;
                                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                      {
                                        v80 = buf.__r_.__value_.__r.__words[0];
                                      }

                                      *v149 = 136315138;
                                      *&v149[4] = v80;
                                      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "HI:PropThreadEmacId:%s", v149, 0xCu);
                                    }

                                    goto LABEL_469;
                                  }

                                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                  {
                                    goto LABEL_355;
                                  }

                                  goto LABEL_469;
                                }

LABEL_251:
                                if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                {
                                  goto LABEL_254;
                                }

                                v23 = buf.__r_.__value_.__r.__words[0];
                                goto LABEL_253;
                              }
                            }

                            else if (*(&buf.__r_.__value_.__s + 23))
                            {
                              v74 = &buf;
                              goto LABEL_322;
                            }

                            otLinkSetPairingDeviceExtAddr(*(this + 28), 0);
                            goto LABEL_469;
                          }

LABEL_293:
                          *(this + 171) = any_to_BOOL(a4 + 3);
                          v71 = log_get_logging_obg("com.apple.threadradiod", "default");
                          if (v71)
                          {
                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                            {
                              v72 = *(this + 171);
                              LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v72;
                              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "HI:kWPANTUNDProperty_ThreadFWUpdate fwUpdate=[%d]", &buf, 8u);
                            }
                          }

                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                          {
                            [PowerEventHandler_Rcp init:];
                          }

                          BufferSize = otThreadSetFirmwareUpdate(*(this + 28), *(this + 171));
                          if (!BufferSize)
                          {
                            goto LABEL_558;
                          }

                          goto LABEL_255;
                        }

LABEL_267:
                        *(this + 170) = any_to_BOOL(a4 + 3);
                        v63 = log_get_logging_obg("com.apple.threadradiod", "default");
                        if (v63)
                        {
                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                          {
                            v64 = *(this + 170);
                            LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v64;
                            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "HI:kWPANTUNDProperty_ThreadPairingStatus pairingStatus=[%d]", &buf, 8u);
                          }
                        }

                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          [PowerEventHandler_Rcp init:];
                        }

                        goto LABEL_558;
                      }

LABEL_258:
                      LOBYTE(v153.var0) = 0;
                      any_to_string(a4 + 3, &buf);
                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v61 = &buf;
                      }

                      else
                      {
                        v61 = buf.__r_.__value_.__r.__words[0];
                      }

                      BufferSize = ot::Utils::CmdLineParser::ParseAsInt8(v61, &v153, v60);
                      if (BufferSize)
                      {
                        goto LABEL_251;
                      }

                      BufferSize = otPlatVendorSetPower(*(this + 28), &v153);
                      if (BufferSize)
                      {
                        goto LABEL_251;
                      }

                      v62 = log_get_logging_obg("com.apple.threadradiod", "default");
                      if (v62)
                      {
                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                        {
                          *v149 = 134217984;
                          *&v149[4] = vcvtd_n_f64_s32(SLOBYTE(v153.var0), 2uLL);
                          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "HI:PropSetVendorPower=%f dBm", v149, 0xCu);
                        }

                        goto LABEL_469;
                      }

                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
LABEL_355:
                        [PowerEventHandler_Rcp init:];
                      }

LABEL_469:
                      boost::function1<void,int>::operator()(a4 + 4);
                      BufferSize = 0;
                      goto LABEL_251;
                    }

LABEL_227:
                    v51 = *(this + 28);
                    if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 || (BufferSize = otPlatVendorResetOrStopCoexCollection(*(this + 28), 1), !BufferSize))
                    {
                      v52 = log_get_logging_obg("com.apple.threadradiod", "default");
                      if (v52)
                      {
                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                        {
                          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Clear coex counters but continue the data collection", &buf, 2u);
                        }
                      }

                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        [PowerEventHandler_Rcp init:];
                      }

                      goto LABEL_558;
                    }

                    goto LABEL_255;
                  }

LABEL_222:
                  v48 = any_to_BOOL(a4 + 3);
                  v49 = log_get_logging_obg("com.apple.threadradiod", "default");
                  v50 = v49;
                  if (v48)
                  {
                    if (v49)
                    {
                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                        *(buf.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
                        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s Clear the counters and start coex counter collection.", &buf, 0xCu);
                      }
                    }

                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      [PowerEventHandler_Rcp init:];
                    }

                    v68 = *(this + 28);
                    if (otPlatRadioGetRcp2Vendor2Enabled())
                    {
                      goto LABEL_558;
                    }

                    v69 = otPlatVendorResetOrStopCoexCollection(*(this + 28), 1);
                  }

                  else
                  {
                    if (v49)
                    {
                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                        *(buf.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
                        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s Stop coex counter collection.", &buf, 0xCu);
                      }
                    }

                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      [PowerEventHandler_Rcp init:];
                    }

                    v70 = *(this + 28);
                    if (otPlatRadioGetRcp2Vendor2Enabled())
                    {
                      goto LABEL_558;
                    }

                    v69 = otPlatVendorResetOrStopCoexCollection(*(this + 28), 0);
                  }

                  BufferSize = v69;
                  if (v69)
                  {
                    goto LABEL_255;
                  }

                  goto LABEL_558;
                }

LABEL_183:
                v33 = any_to_uint64(a4 + 3, 0);
                v34 = log_get_logging_obg("com.apple.threadradiod", "default");
                if (v34)
                {
                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                  {
                    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
                    *(buf.__r_.__value_.__r.__words + 4) = v33;
                    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "BT Load: Vendor:coex:RadioLoad is 0x%llx", &buf, 0xCu);
                  }
                }

                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  [PowerEventHandler_Rcp init:];
                }

                isCoexLoadSimulationEnabled = RcpHostContext::isCoexLoadSimulationEnabled(RcpHostContext::sRcpHostContext);
                if (isCoexLoadSimulationEnabled)
                {
                  isCoexLoadSimulationEnabled = HostInterpreter::isSimulatedCoexLoad(isCoexLoadSimulationEnabled, v33);
                  if (!isCoexLoadSimulationEnabled)
                  {
                    return 0;
                  }
                }

                *(this + 22) = v33;
                HostInterpreter::generateBTWIFIAudioLoadCAEventToTNM(isCoexLoadSimulationEnabled, v33);
                isAudioNoThreadFeatureEnabled = RcpHostContext::isAudioNoThreadFeatureEnabled(RcpHostContext::sRcpHostContext);
                if (isAudioNoThreadFeatureEnabled)
                {
                  *(this + 184) = HostInterpreter::isAudioEscoLeaScoAos(isAudioNoThreadFeatureEnabled, v33);
                  v55 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v55)
                  {
                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                    {
                      v56 = *(this + 184);
                      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                      *(buf.__r_.__value_.__r.__words + 4) = "otError HostInterpreter::ProcessPropertySet(uint8_t, char **, void *)";
                      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
                      *(&buf.__r_.__value_.__r.__words[1] + 6) = v56;
                      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s, BT Load, Audio detection: BTAudioCallStatus is %d", &buf, 0x12u);
                    }
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [PowerEventHandler_Rcp init:];
                  }

                  if ((*(this + 170) & 1) == 0)
                  {
                    v65 = *(this + 184);
                    v66 = HostInterpreter::anyThreadSessionEnabled(this);
                    if (v65)
                    {
                      if (v66)
                      {
                        v67 = log_get_logging_obg("com.apple.threadradiod", "default");
                        if (v67)
                        {
                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                          {
                            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                            *(buf.__r_.__value_.__r.__words + 4) = "otError HostInterpreter::ProcessPropertySet(uint8_t, char **, void *)";
                            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s, BT Load, Audio detection: Thread is ON and eSCO is happening, stop thread and notify HK", &buf, 0xCu);
                          }
                        }

                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          [PowerEventHandler_Rcp init:];
                        }

                        std::string::basic_string[abi:ne200100]<0>(&buf, "bt_airpod_esco");
                        operator new();
                      }
                    }

                    else if (!v66)
                    {
                      v73 = log_get_logging_obg("com.apple.threadradiod", "default");
                      if (v73)
                      {
                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                        {
                          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                          *(buf.__r_.__value_.__r.__words + 4) = "otError HostInterpreter::ProcessPropertySet(uint8_t, char **, void *)";
                          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "%s, BT Load, Audio detection: eSCO is done, notify HK", &buf, 0xCu);
                        }
                      }

                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        [PowerEventHandler_Rcp init:];
                      }

                      std::string::basic_string[abi:ne200100]<0>(&buf, "bt_airpod_esco");
                      operator new();
                    }
                  }
                }

                otLinkSetCoexLoadMap(*(this + 28), v33);
                if (!HostInterpreter::anyThreadSessionEnabled(this))
                {
                  v81 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v81)
                  {
                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                    {
                      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                      *(buf.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
                      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "BT Load: %s Receive coex load value when Thread is offline.", &buf, 0xCu);
                    }
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [PowerEventHandler_Rcp init:];
                  }
                }

                goto LABEL_347;
              }

LABEL_180:
              v32 = *(this + 28);
              if (otPlatRadioGetRcp2Vendor2Enabled())
              {
                any_to_string(a4 + 3, &buf);
                boost::function1<void,int>::operator()(a4 + 4);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              return 0;
            }

LABEL_167:
            strcpy(v147, "d");
            any_to_string(a4 + 3, &v153);
            v27 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v27)
            {
              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                var0 = &v153;
                if (v154 < 0)
                {
                  var0 = v153.var0;
                }

                *v149 = 136315650;
                *&v149[4] = "ProcessPropertySet";
                v150 = 2080;
                *v151 = var0;
                *&v151[8] = 1024;
                v152 = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s WRM Notified Scan Table : %s,  error[%d]", v149, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            if (v154 >= 0)
            {
              v35 = &v153;
            }

            else
            {
              v35 = v153.var0;
            }

            BufferSize = ot::Utils::CmdLineParser::ParseAsHexString(v35, v147, &buf, v28);
            v36 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v36)
            {
              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *v149 = 136315650;
                *&v149[4] = "ProcessPropertySet";
                v150 = 1024;
                *v151 = *v147;
                *&v151[4] = 1024;
                *&v151[6] = buf.__r_.__value_.__s.__data_[0];
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s parse scan table : %d, [%x] ", v149, 0x18u);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            v37 = buf.__r_.__value_.__s.__data_[0];
            if (((2 * buf.__r_.__value_.__s.__data_[0]) | 1) != *v147)
            {
              *v147 = buf.__r_.__value_.__s.__data_[0];
              if (buf.__r_.__value_.__s.__data_[0])
              {
                v146 = this;
                v38 = 0;
                v39 = &buf.__r_.__value_.__s.__data_[2];
                do
                {
                  v40 = __rev16(*(v39 - 1));
                  v156[v38] = v40;
                  v41 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v41)
                  {
                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      *v149 = 136315650;
                      *&v149[4] = "ProcessPropertySet";
                      v150 = 1024;
                      *v151 = v38;
                      *&v151[4] = 1024;
                      *&v151[6] = v40;
                      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s scanLow : %d, [%d] ", v149, 0x18u);
                    }
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *v149 = 136315394;
                    *&v149[4] = "com.apple.wpantund.ncp";
                    v150 = 2080;
                    *v151 = "default";
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v149, 0x16u);
                  }

                  v39 += 2;
                  ++v38;
                  v37 = v147[0];
                }

                while (v38 < *v147);
                if (*v147)
                {
                  v42 = 0;
                  v43 = &buf.__r_.__value_.__s.__data_[2 * (v147[0] & 0x7F) + 2];
                  do
                  {
                    v44 = __rev16(*(v43 - 1));
                    v155[v42] = v44;
                    v45 = log_get_logging_obg("com.apple.threadradiod", "default");
                    if (v45)
                    {
                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                      {
                        *v149 = 136315650;
                        *&v149[4] = "ProcessPropertySet";
                        v150 = 1024;
                        *v151 = v42;
                        *&v151[4] = 1024;
                        *&v151[6] = v44;
                        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s scanHigh : %d, [%d] ", v149, 0x18u);
                      }
                    }

                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      *v149 = 136315394;
                      *&v149[4] = "com.apple.wpantund.ncp";
                      v150 = 2080;
                      *v151 = "default";
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v149, 0x16u);
                    }

                    v43 += 2;
                    ++v42;
                    v37 = v147[0];
                  }

                  while (v42 < *v147);
                }

                this = v146;
              }

              v46 = otPlatVendorSetMWSFrequencyTable(*(this + 28), v37, v156, v155);
              v47 = *(a4 + 4);
              if (!v47)
              {
                std::runtime_error::runtime_error(v149, "call to empty boost::function");
                *v149 = off_1004C1548;
                boost::throw_exception<boost::bad_function_call>(v149);
              }

              BufferSize = v46;
              (*((v47 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 0);
            }

            if ((v154 & 0x80000000) == 0)
            {
LABEL_254:
              if (!BufferSize)
              {
                return BufferSize;
              }

              goto LABEL_255;
            }

            v23 = v153.var0;
LABEL_253:
            operator delete(v23);
            goto LABEL_254;
          }

LABEL_158:
          any_to_string(a4 + 3, &buf);
          LOWORD(v153.var0) = 0;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &buf;
          }

          else
          {
            v25 = buf.__r_.__value_.__r.__words[0];
          }

          BufferSize = ot::Utils::CmdLineParser::ParseAsUint16(v25, &v153, v24);
          if (!BufferSize)
          {
            if (getCoreBTState())
            {
              goto LABEL_249;
            }

            v26 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v26)
            {
              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *v149 = 136315394;
                *&v149[4] = "ProcessPropertySet";
                v150 = 1024;
                *v151 = LOWORD(v153.var0);
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s WRM notifies to switch Preferred Antenna :%d ", v149, 0x12u);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            BufferSize = otPlatVendorSetPreferredAntenna(*(this + 28), v153.var0);
            if (!BufferSize)
            {
LABEL_249:
              v57 = *(a4 + 4);
              if (!v57)
              {
                std::runtime_error::runtime_error(v149, "call to empty boost::function");
                *v149 = off_1004C1548;
                boost::throw_exception<boost::bad_function_call>(v149);
              }

              (*((v57 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 0);
              BufferSize = 0;
            }
          }

          goto LABEL_251;
        }

LABEL_150:
        any_to_string(a4 + 3, &buf);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v148, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
        }

        else
        {
          v148 = buf;
        }

        v30 = HostInterpreter::DeviceModeConfig(this, &v148);
        BufferSize = v30;
        if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v148.__r_.__value_.__l.__data_);
          if (BufferSize)
          {
            goto LABEL_251;
          }
        }

        else if (v30)
        {
          goto LABEL_251;
        }

        v31 = *(a4 + 4);
        if (!v31)
        {
          std::runtime_error::runtime_error(v149, "call to empty boost::function");
          *v149 = off_1004C1548;
          boost::throw_exception<boost::bad_function_call>(v149);
        }

        (*((v31 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 0);
        goto LABEL_251;
      }

LABEL_143:
      any_to_string(a4 + 3, &buf);
      v156[0] = 16;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &buf;
      }

      else
      {
        v18 = buf.__r_.__value_.__r.__words[0];
      }

      BufferSize = ot::Utils::CmdLineParser::ParseAsHexString(v18, v156, &v153, v17);
      if (!BufferSize)
      {
        BufferSize = otThreadSetPskc(*(this + 28), &v153);
        if (!BufferSize)
        {
          v20 = *(a4 + 4);
          if (!v20)
          {
            std::runtime_error::runtime_error(v149, "call to empty boost::function");
            *v149 = off_1004C1548;
            boost::throw_exception<boost::bad_function_call>(v149);
          }

          (*((v20 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 0);
          BufferSize = 0;
        }
      }

      goto LABEL_251;
    }

LABEL_134:
    v153.var0 = 0;
    any_to_string(a4 + 3, v149);
    if (v151[9] >= 0)
    {
      v13 = v149;
    }

    else
    {
      v13 = *v149;
    }

    v14 = ot::Utils::CmdLineParser::ParseAsUint64(v13, &v153, v12);
    v15 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v15)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = v149;
        if (v151[9] < 0)
        {
          v16 = *v149;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v16;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v153;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        v158 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "LogTimestampBase:%s,[%llu],err:%d", &buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v21 = otPlatVendorSetLogTimestampBase(v153.var0);
    v22 = *(a4 + 4);
    if (!v22)
    {
      std::runtime_error::runtime_error(&buf, "call to empty boost::function");
      buf.__r_.__value_.__r.__words[0] = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(&buf);
    }

    BufferSize = v21;
    (*((v22 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 0);
    goto LABEL_156;
  }

  v10 = *a4;
  if (!strcmp(*a4, "OpenThread:LogTimestampBase"))
  {
    goto LABEL_134;
  }

  if (!strcmp(v10, "Network:PSKc"))
  {
    goto LABEL_143;
  }

  if (!strcmp(v10, "Network:NodeType"))
  {
    goto LABEL_150;
  }

  if (!strcmp(v10, "vendor:coex:preferredAntenna"))
  {
    goto LABEL_158;
  }

  if (!strcmp(v10, "vendor:coex:scanFreqTable"))
  {
    goto LABEL_167;
  }

  if (!strcmp(v10, "vendor:coex:CoTxPowerCap"))
  {
    goto LABEL_180;
  }

  if (!strcmp(v10, "vendor:coex:radioload"))
  {
    goto LABEL_183;
  }

  if (!strcmp(v10, "vendor:coex:rcp2:state:collection"))
  {
    goto LABEL_222;
  }

  if (!strcmp(v10, "vendor:coex:rcp2:state:table:reset"))
  {
    goto LABEL_227;
  }

  if (!strcmp(v10, "vendor:power"))
  {
    goto LABEL_258;
  }

  if (!strcmp(v10, "Thread:Pairing:Status"))
  {
    goto LABEL_267;
  }

  if (!strcmp(v10, "Thread:FWUpdate"))
  {
    goto LABEL_293;
  }

  if (!strcmp(v10, "Thread:EmacId"))
  {
    goto LABEL_302;
  }

  if (!strcmp(v10, "StartCurrentNetworkDiscoveryScan"))
  {
    goto LABEL_308;
  }

  if (!strcmp(v10, "NCP:TXPower"))
  {
    goto LABEL_314;
  }

  if (!strcmp(v10, "Thread:ActiveDataset:Bytes"))
  {
LABEL_349:
    v82 = *(this + 28);
    if (otPlatRadioGetRcp2Vendor2Enabled())
    {
      v83 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v83)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "%s:Thread Start Indication sent", &buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      started = otPlatVendorSetVendorThreadStartStop(*(this + 28), 1);
      if (started)
      {
        v101 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v101)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = started;
            _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "%s:otPlatVendorSetVendorThreadStartStop Err: %d", &buf, 0x12u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }
      }
    }

    any_to_string(a4 + 3, v149);
    LOWORD(v153.var0) = 254;
    if (v151[9] >= 0)
    {
      v105 = v149;
    }

    else
    {
      v105 = *v149;
    }

    BufferSize = ot::Utils::CmdLineParser::ParseAsHexString(v105, &v153, &buf, v104);
    if (!BufferSize)
    {
      v163 = v153.var0;
      BufferSize = otDatasetSetActiveTlvs(*(this + 28), &buf);
      if (!BufferSize)
      {
        v106 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v106)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
          {
            v156[0] = 0;
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_INFO, "Dataset commit active TLVs,Done", v156, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        HostInterpreter::setExtendedMACAddressInDataSetIfAvailableinDB(this);
        boost::function1<void,int>::operator()(a4 + 4);
        BufferSize = 0;
      }
    }

LABEL_156:
    if ((v151[9] & 0x80000000) == 0)
    {
      goto LABEL_254;
    }

    v23 = *v149;
    goto LABEL_253;
  }

  if (!strcmp(v10, "Interface:Up"))
  {
    goto LABEL_357;
  }

  if (!strcmp(v10, "vendor:power:limit:table:active:id"))
  {
    goto LABEL_363;
  }

  if (!strcmp(v10, "vendor:assert"))
  {
    goto LABEL_369;
  }

  if (!strcmp(v10, "vendor:hard:reset:test"))
  {
    goto LABEL_393;
  }

  if (!strcmp(v10, "vendor:mle:adv:tx:num"))
  {
    goto LABEL_412;
  }

  if (!strcmp(v10, "Daemon:VirtualInterface:ReadBufferSize"))
  {
    goto LABEL_420;
  }

  if (!strcmp(v10, "vendor:min:mac:interframedelay"))
  {
    goto LABEL_448;
  }

  if (!strcmp(v10, "vendor:csl:tx:schedframe:reqahead:timeinus"))
  {
    goto LABEL_456;
  }

  if (!strcmp(v10, "vendor:neighbor:count:histogram"))
  {
    goto LABEL_470;
  }

  if (!strcmp(v10, "vendor:bbr:counters"))
  {
    goto LABEL_475;
  }

  if (!strcmp(v10, "vendor:linkloss:counters"))
  {
    goto LABEL_483;
  }

  if (!strcmp(v10, "NCP:Counter:Thread:Mle"))
  {
    goto LABEL_484;
  }

  if (!strcmp(v10, "NCP:Counter:AllIPv6"))
  {
    goto LABEL_488;
  }

  if (!strcmp(v10, "NCP:Matter:Subscription:Histogram"))
  {
    goto LABEL_490;
  }

  if (!strcmp(v10, "ca:reporting:enabled"))
  {
    goto LABEL_492;
  }

  if (!strcmp(v10, "streamRawRespTimeHistReset"))
  {
    goto LABEL_494;
  }

  if (!strcmp(v10, "rcp2PcapStateReset"))
  {
    goto LABEL_496;
  }

  if (!strcmp(v10, "NCP:Counter:AllMac"))
  {
    goto LABEL_511;
  }

  if (!strcmp(v10, "vendor:radio:stats"))
  {
LABEL_513:
    v127 = *(this + 28);
    BufferSize = otPlatVendorResetRadioStats();
    if (BufferSize)
    {
      goto LABEL_255;
    }

    goto LABEL_558;
  }

  if (!strcmp(v10, "vendor:radio:counters"))
  {
LABEL_517:
    v128 = *(this + 28);
    BufferSize = otPlatVendorResetRadioCounters();
    if (BufferSize)
    {
      goto LABEL_255;
    }

    goto LABEL_558;
  }

  if (!strcmp(v10, "vendor:joiner:RSSIHistogram"))
  {
    goto LABEL_520;
  }

  if (!strcmp(v10, "vendor:deepsleep:filter:list"))
  {
LABEL_521:
    v149[0] = 0;
    BufferSize = otPlatVendorSetDeepSleepFilterList(*(this + 28), &buf, v149);
    if (!BufferSize)
    {
      boost::function1<void,int>::operator()(a4 + 4);
    }

    goto LABEL_254;
  }

  if (!strcmp(v10, "vendor:deepsleep:loglevel"))
  {
LABEL_523:
    v129 = any_to_uint64(a4 + 3, 0);
    BufferSize = otPlatVendorSetDeepSleepLogLevel(*(this + 28), v129);
    if (BufferSize)
    {
      goto LABEL_255;
    }

    goto LABEL_558;
  }

  if (!strcmp(v10, "vendor:deepsleep:region:loglevels"))
  {
LABEL_525:
    v149[0] = -12;
    BufferSize = otPlatVendorSetDeepSleepRegionLogLevels(*(this + 28), &buf, v149);
    if (!BufferSize)
    {
      boost::function1<void,int>::operator()(a4 + 4);
    }

    goto LABEL_254;
  }

  if (!strcmp(v10, "vendor:last:host:wake:reason"))
  {
LABEL_528:
    v130 = *(this + 28);
    BufferSize = otPlatVendorSetHostWakeReason();
    if (BufferSize)
    {
      goto LABEL_255;
    }

    goto LABEL_558;
  }

  if (!strcmp(v10, "vendor:MAC:packet:SizeHistogram"))
  {
    goto LABEL_530;
  }

  if (!strcmp(v10, "vendor:MAC:packet:ErrorHistogram"))
  {
    goto LABEL_531;
  }

  if (!strcmp(v10, "vendor:MAC:packet:LQIHistogram"))
  {
    goto LABEL_532;
  }

  if (!strcmp(v10, "vendor:MAC:packet:RSSIHistogram"))
  {
    goto LABEL_533;
  }

  if (!strcmp(v10, "NCP:MacRetryHistogram"))
  {
    goto LABEL_534;
  }

  if (!strcmp(v10, "ResetAppAndRouteMetricsHistograms"))
  {
    goto LABEL_535;
  }

  if (!strcmp(v10, "UpdateAppAndRouteMetricsHistograms"))
  {
    goto LABEL_536;
  }

  if (!strcmp(v10, "vendor:openthread:radio:counters"))
  {
LABEL_537:
    v131 = *(this + 28);
    BufferSize = otPlatVendorResetOpenThreadRadioCounters();
    if (BufferSize)
    {
      goto LABEL_255;
    }

    goto LABEL_558;
  }

  if (strcmp(v10, "vendor:cntr:stats:reset"))
  {
    if (strcmp(v10, "NCP:HostPowerState"))
    {
      if (strcmp(v10, "NCP:PcapEnabled"))
      {
        if (strcmp(v10, "Daemon:PromiscuousPcap"))
        {
          if (strcmp(v10, "Srp:NetdataMode"))
          {
            if (strcmp(v10, "UpdateLeaderInfo"))
            {
              if (strcmp(v10, "NCP:Counter:Thread:Neighbor:TriggerBased"))
              {
                v9 = strcmp(v10, "Thread:Health:Metrics");
                if (v9)
                {
                  if (strcmp(v10, "Leader:Reelect:Counters"))
                  {
                    if (strcmp(v10, "bt_state_change"))
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_133;
                  }

LABEL_590:
                  RcpHostContext::clear_leader_reelect_counters(RcpHostContext::sRcpHostContext);
                  boost::function1<void,int>::operator()(a4 + 4);
                  return 0;
                }

LABEL_589:
                buf.__r_.__value_.__r.__words[0] = &buf;
                buf.__r_.__value_.__l.__size_ = &buf;
                buf.__r_.__value_.__r.__words[2] = 0;
                HostInterpreter::ClearThreadHealthMetrics(v9);
              }

              goto LABEL_577;
            }

LABEL_570:
            HostInterpreter::ProcessUpdateLeaderInfo(this);
            boost::function1<void,int>::operator()(a4 + 4);
            return 0;
          }

LABEL_563:
          if (any_to_int(a4 + 3) << 24)
          {
            std::string::basic_string[abi:ne200100]<0>(&buf, "Srp:NetdataMode");
            *v149 = &buf;
            v143 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_);
            std::string::assign((v143 + 7), "1");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&buf, "Srp:NetdataMode");
            *v149 = &buf;
            v145 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_);
            std::string::assign((v145 + 7), "0");
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          persist_srp_netdatamode();
        }

LABEL_550:
        v139 = any_to_BOOL(a4 + 3);
        v140 = log_get_logging_obg("com.apple.threadradiod", "default");
        v141 = v140;
        if (v139)
        {
          if (v140)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
            {
              buf.__r_.__value_.__r.__words[0] = 0x210B04000100;
              v142 = "HI:%d:Start promiscuous pcap capture";
LABEL_569:
              _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_INFO, v142, &buf, 8u);
              goto LABEL_588;
            }

            goto LABEL_588;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_588;
          }
        }

        else
        {
          if (v140)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
            {
              buf.__r_.__value_.__r.__words[0] = 0x210D04000100;
              v142 = "HI:%d:Stop promiscuous pcap capture";
              goto LABEL_569;
            }

LABEL_588:
            persist_promiscuous_pcap_enabled();
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_588;
          }
        }

        [PowerEventHandler_Rcp init:];
        goto LABEL_588;
      }

LABEL_545:
      v135 = any_to_BOOL(a4 + 3);
      v136 = log_get_logging_obg("com.apple.threadradiod", "default");
      v137 = v136;
      if (v135)
      {
        if (v136)
        {
          v138 = syslog_is_the_mask_enabled(6);
          if (v138)
          {
            v138 = os_log_type_enabled(v137, OS_LOG_TYPE_INFO);
            if (v138)
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
              *(buf.__r_.__value_.__r.__words + 4) = "otError HostInterpreter::ProcessPropertySet(uint8_t, char **, void *)";
              WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = 8408;
              _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_INFO, "%s:%d:Start pcap capture", &buf, 0x12u);
            }
          }
        }

        else
        {
          v138 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v138)
          {
            [PowerEventHandler_Rcp init:];
          }
        }

        PcapManagerInstance = PcapManager::getPcapManagerInstance(v138);
        PcapManager::start_pcap_capture(PcapManagerInstance);
        std::string::basic_string[abi:ne200100]<0>(&buf, "Daemon:PromiscuousPcap");
        *v149 = &buf;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_);
        boost::any::any<std::string &>();
      }

      if (v136)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
        {
          buf.__r_.__value_.__r.__words[0] = 0x20E504000100;
          _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_INFO, "HI:%d:Stop pcap capture", &buf, 8u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      std::string::basic_string[abi:ne200100]<0>(&buf, "Daemon:PromiscuousPcap");
      *v149 = &buf;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_);
      boost::any::any<std::string &>();
    }

    goto LABEL_541;
  }

LABEL_539:
  v132 = *(this + 28);
  BufferSize = otPlatVendorCntrStatsReset();
  if (!BufferSize)
  {
    goto LABEL_558;
  }

LABEL_255:
  v58 = *(a4 + 4);
  if (!v58)
  {
    std::runtime_error::runtime_error(&buf, "call to empty boost::function");
    buf.__r_.__value_.__r.__words[0] = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&buf);
  }

  (*((v58 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 1);
  return BufferSize;
}

void sub_1001350B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::runtime_error a44, int a45, __int16 a46, char a47, char a48)
{
  if (__p)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(__p);
    v48 = &a44;
  }

  if (a48 < 0)
  {
    operator delete(v48->__vftable);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HostInterpreter::ProcessRcpInit(HostInterpreter *this, unsigned __int8 a2, char **a3, void *a4)
{
  HIBYTE(v6) = 11;
  strcpy(buf, "NCP:TXPower");
  *v4 = buf;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf);
  operator new();
}

void sub_10013694C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  if (a19)
  {
    (*(*a19 + 8))(a19);
  }

  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  if (a24)
  {
    (*(*a24 + 8))(a24);
  }

  if (a25)
  {
    (*(*a25 + 8))(a25);
  }

  if (a26)
  {
    (*(*a26 + 8))(a26);
  }

  if (!a27)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*a27 + 8))(a27);
  _Unwind_Resume(exception_object);
}

void HostInterpreter::ProcessRcpReportCrashInfo(HostInterpreter *this, unsigned __int8 a2, char **a3, _BYTE *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v6 = logging_obg;
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::ProcessRcpReportCrashInfo();
      if (*a4 != 1)
      {
LABEL_15:
        DWORD1(xmmword_1004E5778) = 0;
        *(&xmmword_1004E5778 + 1) = *(&xmmword_1004E5768 + 1);
        v11 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v11)
        {
          v12 = v11;
          if (syslog_is_the_mask_enabled(7))
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              HostInterpreter::ProcessRcpReportCrashInfo();
            }
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        v15[0] = xmmword_1004E5778;
        v15[1] = xmmword_1004E5788;
        AWDMetricsClient_update_StabilityData(v15);
        HostInterpreter::persist_awd_stability_counters(v13);
      }

LABEL_8:
      v7 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v7)
      {
        v8 = v7;
        is_the_mask_enabled = syslog_is_the_mask_enabled(7);
        if (is_the_mask_enabled)
        {
          is_the_mask_enabled = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
          if (is_the_mask_enabled)
          {
            HostInterpreter::ProcessRcpReportCrashInfo();
            HostInterpreter::clearHealthInfoMetrics(v10);
          }
        }
      }

      else
      {
        is_the_mask_enabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (is_the_mask_enabled)
        {
          [PowerEventHandler_Rcp init:];
          HostInterpreter::clearHealthInfoMetrics(v14);
        }
      }

      HostInterpreter::clearHealthInfoMetrics(is_the_mask_enabled);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
    if (*a4 != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (*a4 != 1)
  {
    goto LABEL_15;
  }

  goto LABEL_8;
}

uint64_t HostInterpreter::ProcessReconnectThread(HostInterpreter *this, unsigned __int8 a2, char **a3, void *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "ProcessReconnectThread";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Invoked", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return 0;
}

uint64_t HostInterpreter::ProcessReset(HostInterpreter *this, unsigned __int8 a2, char **a3, char *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v7 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "HI:Reset (Soft)", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v8 = otThreadSetEnabled(*(this + 28), 0);
  if (!v8)
  {
    v9 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v9)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "ProcessReset";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Soft Reset: Thread STOP, Done", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v8 = otIp6SetEnabled(*(this + 28), 0);
    if (!v8)
    {
      v16 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v16)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Soft Reset: Ifconfig DOWN, Done", buf, 2u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      HostInterpreter::remove_all_address_prefix_route_entries(this, 1);
      if (dskeychainRcp::FindAndGetDataSet(0, buf))
      {
        v8 = otDatasetSetActive(*(this + 28), buf);
        if (v8)
        {
          goto LABEL_15;
        }

        if (dskeychainRcp::FindAndGetDataSet(1u, v21))
        {
          v8 = otDatasetSetPending(*(this + 28), v21);
          if (v8)
          {
            goto LABEL_15;
          }
        }

        v8 = otIp6SetEnabled(*(this + 28), 1);
        if (v8)
        {
          goto LABEL_15;
        }

        v17 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v17)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            LOWORD(v24.__vftable) = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Ifconfig UP, Done", &v24, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        v8 = otThreadSetEnabled(*(this + 28), 1);
        if (v8)
        {
          goto LABEL_15;
        }

        LinkMode = otThreadGetLinkMode(*(this + 28));
        if ((~LinkMode & 6) == 0 && (LinkMode & 1) == 0)
        {
          otThreadBecomeLeader(*(this + 28), 0);
        }

        v20 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v20)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            LODWORD(v24.__vftable) = 136315138;
            *(&v24.__vftable + 4) = "ProcessReset";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Thread START, Done", &v24, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }
      }

      else
      {
        v18 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v18)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Active Dataset not present", v21, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }
      }

      v8 = 0;
      v12 = 0;
      v13 = *a4;
      if (*a4)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

LABEL_15:
  HIDWORD(v11) = v8 - 1;
  LODWORD(v11) = v8 - 1;
  v10 = v11 >> 1;
  if (v10 > 6 || ((0x4Du >> v10) & 1) == 0)
  {
    v12 = 1;
    v13 = *a4;
    if (*a4)
    {
      goto LABEL_20;
    }

LABEL_18:
    v14 = std::runtime_error::runtime_error(&v24, "call to empty boost::function");
    v24.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(v14);
  }

  v8 = dword_10044816C[v10];
  v12 = dword_100448188[v10];
  v13 = *a4;
  if (!*a4)
  {
    goto LABEL_18;
  }

LABEL_20:
  (*((v13 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 8, v12);
  return v8;
}

uint64_t HostInterpreter::ProcessRouteAdd(HostInterpreter *this, unsigned __int8 a2, char **a3, in6_addr *a4)
{
  v31[1] = 0;
  v32 = 0;
  v31[0] = 0;
  v6 = a4[1].__u6_addr32[1];
  if (v6 == -1)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  BYTE4(v32) = v8 | (8 * a4[1].__u6_addr8[8]) | (4 * a4[1].__u6_addr8[9]) | 0x10;
  IPv6Prefix::IPv6Prefix(&v29, a4, a4[1].__u6_addr8[0]);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      IPv6Prefix::to_string(&v29, __p);
      v10 = (SBYTE3(v28) & 0x80u) == 0 ? __p : __p[0];
      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 1024;
      *&buf[14] = gSrpModeNetInfo;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "OffMeshPrefix::[%s],srpMode[%d]", buf, 0x12u);
      if (SBYTE3(v28) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v11 = a4[1].__u6_addr32[1];
  v12 = a4[1].__u6_addr8[8];
  v13 = a4[1].__u6_addr8[9];
  *buf = 2;
  *&buf[4] = v11;
  buf[8] = v12;
  *&buf[10] = 0;
  buf[12] = v13;
  buf[13] = (v32 & 0x1000000000) != 0;
  IPv6Prefix::to_string(&v29, __p);
  if ((SBYTE3(v28) & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  v15 = ot::Utils::CmdLineParser::ParseAsIp6Prefix(v14, v31);
  v16 = v15;
  if (SBYTE3(v28) < 0)
  {
    operator delete(__p[0]);
    if (v16)
    {
      goto LABEL_22;
    }
  }

  else if (v15)
  {
LABEL_22:
    v17 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v17)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessRouteAdd();
      }

      goto LABEL_56;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

LABEL_55:
    [PowerEventHandler_Rcp init:];
    goto LABEL_56;
  }

  if ((gSrpModeNetInfo & 1) == 0)
  {
    if ((this + 88) == HostInterpreter::find_route_entry(this, &v29, buf))
    {
      *__p = v29;
      v27 = v30;
      v28 = *buf;
      operator new();
    }

    v19 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v19)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessRouteAdd();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v16 = 0;
    v21 = 0;
    v22 = *a4[2].__u6_addr8;
    if (v22)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v16 = otBorderRouterAddRoute(*(this + 28), v31);
  if (!v16)
  {
    v16 = otBorderRouterRegister(*(this + 28));
    if (v16)
    {
      v20 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v20)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessRouteAdd();
      }

      goto LABEL_56;
    }

    v21 = 0;
    v22 = *a4[2].__u6_addr8;
    if (v22)
    {
      goto LABEL_61;
    }

LABEL_59:
    std::runtime_error::runtime_error(__p, "call to empty boost::function");
    __p[0] = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(__p);
  }

  v18 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v18)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    HostInterpreter::ProcessRouteAdd();
  }

LABEL_56:
  HIDWORD(v24) = v16 - 1;
  LODWORD(v24) = v16 - 1;
  v23 = v24 >> 1;
  if (v23 > 6 || ((0x4Du >> v23) & 1) == 0)
  {
    v21 = 1;
    v22 = *a4[2].__u6_addr8;
    if (v22)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v16 = dword_10044816C[v23];
  v21 = dword_100448188[v23];
  v22 = *a4[2].__u6_addr8;
  if (!v22)
  {
    goto LABEL_59;
  }

LABEL_61:
  (*((v22 & 0xFFFFFFFFFFFFFFFELL) + 8))(&a4[2].__u6_addr32[2], v21);
  return v16;
}

void sub_100137E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessRouteRemove(HostInterpreter *this, unsigned __int8 a2, char **a3, in6_addr *a4)
{
  memset(v32, 0, sizeof(v32));
  IPv6Prefix::IPv6Prefix(&v31, a4, a4[1].__u6_addr8[0]);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      IPv6Prefix::to_string(&v31, &__p);
      v7 = v30 >= 0 ? &__p : __p.__vftable;
      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 1024;
      v36 = gSrpModeNetInfo;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Off Mesh Prefix::[%s] srpMode[%d]", buf, 0x12u);
      if (v30 < 0)
      {
        operator delete(__p.__vftable);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if ((gSrpModeNetInfo & 1) == 0)
  {
    *buf = 2;
    buf[8] = 1;
    *&buf[10] = 0;
    route_entry = HostInterpreter::find_route_entry(this, &v31, buf);
    v9 = log_get_logging_obg("com.apple.threadradiod", "default");
    v10 = v9;
    if ((this + 88) == route_entry)
    {
      if (v9)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          OffMeshRouteEntry::get_description(buf, &v31, 0, &__p);
          v12 = v30 >= 0 ? &__p : __p.__vftable;
          *v33 = 136315138;
          v34 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "OffMeshPrefixes:[%s] Prefix not found", v33, 0xCu);
          if (v30 < 0)
          {
            operator delete(__p.__vftable);
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v20 = 0;
      goto LABEL_67;
    }

    if (v9)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        OffMeshRouteEntry::get_description(buf, &v31, 0, &__p);
        v11 = v30 >= 0 ? &__p : __p.__vftable;
        *v33 = 136315138;
        v34 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "OffMeshPrefixes:Removing %s", v33, 0xCu);
        if (v30 < 0)
        {
          operator delete(__p.__vftable);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v13 = route_entry[1];
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
      v15 = route_entry;
      do
      {
        v14 = v15[2];
        v16 = *v14 == v15;
        v15 = v14;
      }

      while (!v16);
    }

    if (*(this + 10) == route_entry)
    {
      *(this + 10) = v14;
    }

    v17 = *(this + 11);
    --*(this + 12);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v17, route_entry);
    operator delete(route_entry);
  }

  IPv6Prefix::to_string(&v31, &__p);
  if (v30 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__vftable;
  }

  v19 = ot::Utils::CmdLineParser::ParseAsIp6Prefix(p_p, v32);
  v20 = v19;
  if (v30 < 0)
  {
    operator delete(__p.__vftable);
    if (v20)
    {
      goto LABEL_45;
    }
  }

  else if (v19)
  {
LABEL_45:
    v21 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v21)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessRouteRemove();
      }

      goto LABEL_71;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

LABEL_70:
    [PowerEventHandler_Rcp init:];
    goto LABEL_71;
  }

  v20 = otBorderRouterRemoveRoute(*(this + 28), v32);
  if (!v20)
  {
    v20 = otBorderRouterRegister(*(this + 28));
    if (v20)
    {
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v23)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessRouteRemove();
      }

      goto LABEL_71;
    }

LABEL_67:
    v24 = 0;
    v25 = *&a4[1].__u6_addr32[2];
    if (v25)
    {
      goto LABEL_76;
    }

LABEL_74:
    std::runtime_error::runtime_error(&__p, "call to empty boost::function");
    __p.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&__p);
  }

  v22 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v22)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    HostInterpreter::ProcessRouteRemove();
  }

LABEL_71:
  HIDWORD(v27) = v20 - 1;
  LODWORD(v27) = v20 - 1;
  v26 = v27 >> 1;
  if (v26 > 6 || ((0x4Du >> v26) & 1) == 0)
  {
    v24 = 1;
    v25 = *&a4[1].__u6_addr32[2];
    if (v25)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  v20 = dword_10044816C[v26];
  v24 = dword_100448188[v26];
  v25 = *&a4[1].__u6_addr32[2];
  if (!v25)
  {
    goto LABEL_74;
  }

LABEL_76:
  (*((v25 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 2, v24);
  return v20;
}