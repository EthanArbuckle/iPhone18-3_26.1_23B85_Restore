void sub_100095C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  _Unwind_Resume(exception_object);
}

double AWDMetricsHandlers_handle_restore_stabilityData(void)
{
  result = *&stability_settings;
  xmmword_10052B084 = stability_settings;
  dword_10052B094 = xmmword_1004E5768;
  qword_10052B098 = *(&xmmword_1004E5768 + 1);
  return result;
}

void AWDMetricsHandlers_handle_restore_daemon_reset(void)
{
  v3 = 18;
  strcpy(__p, "num_daemon_restart");
  v4 = __p;
  v0 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
  v1 = (v0 + 7);
  if ((*(v0 + 79) & 0x80000000) == 0)
  {
    dword_10052B080 = atoi(v1);
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(*__p);
    return;
  }

  dword_10052B080 = atoi(*v1);
  if (v3 < 0)
  {
    goto LABEL_5;
  }
}

void sub_100095EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AWDMetricsHandlers_handle_reset_daemon(void)
{
  dword_10052B080 = 0;
  BYTE7(v3[2]) = 18;
  strcpy(v3, "num_daemon_restanum_daemon_restart");
  v4 = &v3[1];
  v0 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v3[1]);
  std::string::assign((v0 + 7), "0");
  if (SBYTE7(v3[2]) < 0)
  {
    operator delete(*&v3[1]);
  }

  BYTE7(v3[2]) = 18;
  strcpy(&v3[2], "rt");
  v3[1] = v3[0];
  v4 = &v3[1];
  v1 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v3[1]);
  v2 = (v1 + 7);
  if (*(v1 + 79) < 0)
  {
    v2 = *v2;
  }

  saveStringValue("num_daemon_restart", v2);
  if (SBYTE7(v3[2]) < 0)
  {
    operator delete(*&v3[1]);
  }
}

void sub_100095FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AWDMetricsHandlers_handle_update_PowerCounter_HostWakeup(int a1)
{
  v2 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AWDMetrics : AWDMetricsHandlers_handle_update_PowerCounter_HostWakeup HostWakeup Reason %d \n", v3, 8u);
  }

  LODWORD(xmmword_10052B0C0) = xmmword_10052B0C0 + 1;
  ++*(&xmmword_10052ADD0 + a1 + 188);
}

uint64_t AWDMetricsHandlers_handle_get_PowerCountersData(void *a1)
{
  v1 = a1;
  [v1 setHostWakeupsCount:xmmword_10052B0C0];
  [v1 addHostWakeupsCountHistogram:DWORD1(xmmword_10052B0C0)];
  [v1 addHostWakeupsCountHistogram:DWORD2(xmmword_10052B0C0)];
  [v1 addHostWakeupsCountHistogram:HIDWORD(xmmword_10052B0C0)];
  [v1 addHostWakeupsCountHistogram:dword_10052B0D0];
  [v1 addHostWakeupsCountHistogram:dword_10052B0D4];
  [v1 addHostWakeupsCountHistogram:dword_10052B0D8];
  [v1 addHostWakeupsCountHistogram:dword_10052B0DC];
  [v1 addHostWakeupsCountHistogram:xmmword_10052B0E0];
  [v1 addHostWakeupsCountHistogram:DWORD1(xmmword_10052B0E0)];
  [v1 addHostWakeupsCountHistogram:DWORD2(xmmword_10052B0E0)];
  [v1 addHostWakeupsCountHistogram:HIDWORD(xmmword_10052B0E0)];
  [v1 addHostWakeupsCountHistogram:dword_10052B0F0];
  [v1 addHostWakeupsCountHistogram:dword_10052B0F4];
  [v1 addHostWakeupsCountHistogram:dword_10052B0F8];
  [v1 addHostWakeupsCountHistogram:dword_10052B0FC];
  [v1 addHostWakeupsCountHistogram:xmmword_10052B100];
  [v1 addHostWakeupsCountHistogram:DWORD1(xmmword_10052B100)];
  [v1 addHostWakeupsCountHistogram:DWORD2(xmmword_10052B100)];
  [v1 addHostWakeupsCountHistogram:HIDWORD(xmmword_10052B100)];
  [v1 addHostWakeupsCountHistogram:dword_10052B110];
  [v1 addHostWakeupsCountHistogram:dword_10052B114];
  [v1 addHostWakeupsCountHistogram:dword_10052B118];
  [v1 addHostWakeupsCountHistogram:dword_10052B11C];

  return 0;
}

uint64_t AWDMetricsHandlers_handle_getprop_connectednodes(void *a1, void *a2)
{
  v3 = a1;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  v4 = a2;
  v45 = v4;
  xarray = v3;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_connectednodes();
    }

    v6 = 0;
    v7 = 1;
    goto LABEL_156;
  }

  count = xpc_array_get_count(v3);
  v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AWDMetrics : ConnectedNodesHistogram array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v9 = 0;
    v6 = 0;
    while (1)
    {
      v10 = xpc_array_get_dictionary(xarray, v9);

      v48 = v10;
      string = xpc_dictionary_get_string(v10, "key");
      v12 = strlen(string);
      if (v12 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v12;
      if (v12)
      {
        memmove(&buf, string, v12);
      }

      buf.__r_.__value_.__s.__data_[v13] = 0;
      uint64 = xpc_dictionary_get_uint64(v10, "value");
      v14 = std::string::find(&buf, 91, 0);
      v15 = std::string::find(&buf, 93, 0);
      v16 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v18 = buf.__r_.__value_.__r.__words[0];
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
        v20 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = buf.__r_.__value_.__l.__size_;
      }

      v21 = (p_buf + v20);
      if (v20 > 19)
      {
        v22 = v20;
        v23 = p_buf;
        do
        {
          v24 = memchr(v23, 67, v22 - 19);
          if (!v24)
          {
            break;
          }

          if (v24->__r_.__value_.__r.__words[0] == 0x657463656E6E6F43 && v24->__r_.__value_.__l.__size_ == 0x43726574756F5264 && LODWORD(v24->__r_.__value_.__r.__words[2]) == 1953396079)
          {
            goto LABEL_35;
          }

          v23 = (&v24->__r_.__value_.__l.__data_ + 1);
          v22 = v21 - v23;
        }

        while (v21 - v23 > 19);
      }

      v24 = (p_buf + v20);
LABEL_35:
      v28 = v24 != v21 && v24 == p_buf;
      if (v20 >= 19)
      {
        v29 = p_buf;
        do
        {
          v30 = memchr(v29, 67, v20 - 18);
          if (!v30)
          {
            break;
          }

          if (v30->__r_.__value_.__r.__words[0] == 0x657463656E6E6F43 && v30->__r_.__value_.__l.__size_ == 0x6F43646C69684364 && *(&v30->__r_.__value_.__r.__words[1] + 3) == 0x746E756F43646C69)
          {
            goto LABEL_53;
          }

          v29 = (&v30->__r_.__value_.__l.__data_ + 1);
          v20 = v21 - v29;
        }

        while (v21 - v29 > 18);
      }

      v30 = v21;
LABEL_53:
      v33 = v14 != -1 && v28;
      if (v33 && v15 != -1)
      {
        break;
      }

      if (v30 != v21 && v30 == p_buf && v14 != -1 && v15 != -1)
      {
        if ((v16 & 0x80000000) != 0)
        {
          if (size <= v14)
          {
LABEL_127:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v14 >= v16)
          {
            goto LABEL_127;
          }

          v18 = &buf;
          size = v16;
        }

        if (size - (v14 + 1) >= v15 - 1)
        {
          v38 = v15 - 1;
        }

        else
        {
          v38 = size - (v14 + 1);
        }

        if (v38 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v38 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v38;
        if (v38)
        {
          memmove(&__dst, &v18->__r_.__value_.__l.__data_ + v14 + 1, v38);
        }

        __dst.__r_.__value_.__s.__data_[v38] = 0;
        v39 = std::stoi(&__dst, 0, 10);
        if ((v39 & 0xF8u) <= 0x17)
        {
          v36 = v39;
          v37 = &v51;
LABEL_94:
          *(v37 + v36) = uint64;
        }

LABEL_95:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        ++v9;
        v4 = v45;
        v6 = v48;
        if (v9 == count)
        {
          goto LABEL_98;
        }
      }

      else
      {
        ++v9;
        v4 = v45;
        v6 = v48;
        if (v9 == count)
        {
          goto LABEL_98;
        }
      }
    }

    if ((v16 & 0x80000000) != 0)
    {
      if (size <= v14)
      {
LABEL_123:
        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else
    {
      if (v14 >= v16)
      {
        goto LABEL_123;
      }

      v18 = &buf;
      size = v16;
    }

    if (size - (v14 + 1) >= v15 - 1)
    {
      v34 = v15 - 1;
    }

    else
    {
      v34 = size - (v14 + 1);
    }

    if (v34 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v34 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v34;
    if (v34)
    {
      memmove(&__dst, &v18->__r_.__value_.__l.__data_ + v14 + 1, v34);
    }

    __dst.__r_.__value_.__s.__data_[v34] = 0;
    v35 = std::stoi(&__dst, 0, 10);
    if ((v35 & 0xF8u) <= 0x17)
    {
      v36 = v35;
      v37 = &v57;
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v6 = 0;
LABEL_98:
  if (v57)
  {
    v40 = &v57;
    v41 = &v51;
  }

  else if (DWORD1(v57))
  {
    v41 = &v51 + 1;
    v40 = &v57 + 1;
  }

  else if (DWORD2(v57))
  {
    v41 = &v51 + 2;
    v40 = &v57 + 2;
  }

  else if (HIDWORD(v57))
  {
    v41 = (&v51 | 0xC);
    v40 = (&v57 | 0xC);
  }

  else if (v58)
  {
    v40 = &v58;
    v41 = &v52;
  }

  else if (DWORD1(v58))
  {
    v41 = &v52 + 1;
    v40 = &v58 + 1;
  }

  else if (DWORD2(v58))
  {
    v41 = &v52 + 2;
    v40 = &v58 + 2;
  }

  else if (HIDWORD(v58))
  {
    v41 = &v52 + 3;
    v40 = &v58 + 3;
  }

  else if (v59)
  {
    v40 = &v59;
    v41 = &v53;
  }

  else
  {
    if (DWORD1(v59))
    {
      v41 = &v53 + 1;
      v40 = &v59 + 1;
    }

    else if (DWORD2(v59))
    {
      v41 = &v53 + 2;
      v40 = &v59 + 2;
    }

    else if (HIDWORD(v59))
    {
      v41 = &v53 + 3;
      v40 = &v59 + 3;
    }

    else if (v60)
    {
      v40 = &v60;
      v41 = &v54;
    }

    else if (DWORD1(v60))
    {
      v41 = &v54 + 1;
      v40 = &v60 + 1;
    }

    else if (DWORD2(v60))
    {
      v41 = &v54 + 2;
      v40 = &v60 + 2;
    }

    else if (HIDWORD(v60))
    {
      v41 = &v54 + 3;
      v40 = &v60 + 3;
    }

    else if (v61)
    {
      v40 = &v61;
      v41 = &v55;
    }

    else if (DWORD1(v61))
    {
      v41 = &v55 + 1;
      v40 = &v61 + 1;
    }

    else if (DWORD2(v61))
    {
      v41 = &v55 + 2;
      v40 = &v61 + 2;
    }

    else if (HIDWORD(v61))
    {
      v41 = &v55 + 3;
      v40 = &v61 + 3;
    }

    else if (v62)
    {
      v40 = &v62;
      v41 = &v56;
    }

    else if (DWORD1(v62))
    {
      v41 = &v56 + 1;
      v40 = &v62 + 1;
    }

    else if (DWORD2(v62))
    {
      v41 = &v56 + 2;
      v40 = &v62 + 2;
    }

    else
    {
      v42 = 92;
      if (!HIDWORD(v62))
      {
        v42 = 0;
      }

      v41 = (&v51 + v42);
      if (HIDWORD(v62))
      {
        v40 = &v62 + 3;
      }

      else
      {
        v40 = &v57;
      }
    }

    v4 = v45;
  }

  [v4 setChildNodesCount:{*v41, count}];
  [v4 setRouterNodesCount:*v40];
  v7 = 0;
LABEL_156:

  return v7;
}

uint64_t AWDMetricsHandlers_ctcsmetrics_update(int a1, int a2, int a3)
{
  v4 = dword_10052B1D8 == a1 && dword_10052B1E0 == a2 && dword_10052B1E4 == a3;
  v5 = !v4;
  if (!v4)
  {
    dword_10052B1D8 = a1;
    dword_10052B1E0 = a2;
    dword_10052B1E4 = a3;
  }

  return v5;
}

void AWDMetricsHandlers_topologymetrics_update(int a1, int a2, int a3, double a4, double a5)
{
  v8 = a2 + a1 + a3;
  v9 = dword_10052B1C0;
  ++dword_10052B1C4;
  if (dword_10052B1C0 == 10)
  {
    v9 = 0;
    dword_10052B1C0 = 0;
  }

  *(&xmmword_10052ADD0 + v9 + 212) = v8;
  *(&xmmword_10052ADD0 + dword_10052B1C0 + 222) = a2;
  *(&xmmword_10052ADD0 + dword_10052B1C0 + 232) = a3;
  *(&xmmword_10052ADD0 + dword_10052B1C0 + 242) = a1;
  v10 = v8 - dword_10052B1CC;
  if (v8 - dword_10052B1CC < 0)
  {
    v10 = dword_10052B1CC - v8;
  }

  if (HIDWORD(qword_10052B1D0) > v10)
  {
    v10 = HIDWORD(qword_10052B1D0);
  }

  ++dword_10052B1C0;
  HIDWORD(qword_10052B1D0) = v10;
  v11 = dword_10052B1C8;
  if (v8 != dword_10052B1CC)
  {
    v11 = ++dword_10052B1C8;
  }

  LODWORD(a5) = dword_10052B1C4;
  LODWORD(qword_10052B1D0) = vcvtpd_u64_f64(v11 / *&a5 * 100.0);
  v12 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67111424;
    v13[1] = v8;
    v14 = 1024;
    v15 = a1;
    v16 = 1024;
    v17 = a2;
    v18 = 1024;
    v19 = a3;
    v20 = 1024;
    v21 = dword_10052B1C0;
    v22 = 1024;
    v23 = dword_10052B1CC;
    v24 = 1024;
    v25 = HIDWORD(qword_10052B1D0);
    v26 = 1024;
    v27 = dword_10052B1C4;
    v28 = 1024;
    v29 = dword_10052B1C8;
    v30 = 1024;
    v31 = qword_10052B1D0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "AWDMetricsHandlers_topologymetrics_update::updateTopologyStats - totalNodes=%d totalRouters=%d totalFed=%d totalSed=%d  totalArrayEntries=%d mPrevTotalNodes=%d  mMaxTopologyChange=%d mTotalTimePoint=%d mTotalUpdateTimePoint=%d mPercentageChange=%d", v13, 0x3Eu);
  }

  dword_10052B1CC = v8;
}

double AWDMetricsHandlers_topologymetrics_reset(void)
{
  qword_10052B1D0 = 0;
  result = 0.0;
  xmmword_10052B120 = 0u;
  *algn_10052B130 = 0u;
  xmmword_10052B140 = 0u;
  unk_10052B150 = 0u;
  xmmword_10052B160 = 0u;
  unk_10052B170 = 0u;
  xmmword_10052B180 = 0u;
  unk_10052B190 = 0u;
  xmmword_10052B1A0 = 0u;
  unk_10052B1B0 = 0u;
  unk_10052B1BC = 0u;
  return result;
}

uint64_t AWDMetricsHandlers_topologymetrics_IsModified(void)
{
  if (dword_10052B1C8)
  {
    return 1;
  }

  v1 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "AWDMetrics : AWDMetricsHandlers_topologymetrics_IsModified : No change in topology from previous. Return here", v2, 2u);
  }

  return 0;
}

uint64_t AWDMetricsHandlers_topologymetrics_get(void *a1)
{
  v1 = a1;
  if (dword_10052B1C0)
  {
    v2 = 0;
    do
    {
      v3 = *(&_MergedGlobals_6 + v2 + 214);
      v4 = v3;
      if (v3)
      {
        v5 = log10(v3) + 1.0;
        v6 = v5 - 1;
        if (v5 <= 1)
        {
          v6 = 0;
        }

        v7 = v6;
      }

      else
      {
        v7 = 0.0;
      }

      v8 = __exp10(v7);
      [v1 addNodeCount:(v8 * (v4 / v8))];
      ++v2;
    }

    while (v2 < dword_10052B1C0);
    if (dword_10052B1C0)
    {
      v9 = 0;
      do
      {
        v10 = *(&_MergedGlobals_6 + v9 + 244);
        v11 = v10;
        if (v10)
        {
          v12 = log10(v10) + 1.0;
          v13 = v12 - 1;
          if (v12 <= 1)
          {
            v13 = 0;
          }

          v14 = v13;
        }

        else
        {
          v14 = 0.0;
        }

        v15 = __exp10(v14);
        [v1 addRouterCount:(v15 * (v11 / v15))];
        ++v9;
      }

      while (v9 < dword_10052B1C0);
      if (dword_10052B1C0)
      {
        v16 = 0;
        do
        {
          v17 = *(&_MergedGlobals_6 + v16 + 224);
          v18 = v17;
          if (v17)
          {
            v19 = log10(v17) + 1.0;
            v20 = v19 - 1;
            if (v19 <= 1)
            {
              v20 = 0;
            }

            v21 = v20;
          }

          else
          {
            v21 = 0.0;
          }

          v22 = __exp10(v21);
          [v1 addFEDCount:(v22 * (v18 / v22))];
          ++v16;
        }

        while (v16 < dword_10052B1C0);
        if (dword_10052B1C0)
        {
          v23 = 0;
          do
          {
            v24 = *(&_MergedGlobals_6 + v23 + 234);
            v25 = v24;
            if (v24)
            {
              v26 = log10(v24) + 1.0;
              v27 = v26 - 1;
              if (v26 <= 1)
              {
                v27 = 0;
              }

              v28 = v27;
            }

            else
            {
              v28 = 0.0;
            }

            v29 = __exp10(v28);
            [v1 addSEDCount:(v29 * (v25 / v29))];
            ++v23;
          }

          while (v23 < dword_10052B1C0);
        }
      }
    }
  }

  [v1 setMaxChangeinNodeCount:HIDWORD(qword_10052B1D0)];
  [v1 setPercTopologyChangeTimeInstances:qword_10052B1D0];
  qword_10052B1D0 = 0;
  xmmword_10052B120 = 0u;
  *algn_10052B130 = 0u;
  xmmword_10052B140 = 0u;
  unk_10052B150 = 0u;
  xmmword_10052B160 = 0u;
  unk_10052B170 = 0u;
  xmmword_10052B180 = 0u;
  unk_10052B190 = 0u;
  xmmword_10052B1A0 = 0u;
  unk_10052B1B0 = 0u;
  unk_10052B1BC = 0u;

  return 0;
}

void _GLOBAL__sub_I_AWDMetricsHandlers_mm()
{
  v0 = objc_autoreleasePoolPush();
  *&dword_10052B0B0 = 0;
  xmmword_10052B0A0 = 0uLL;
  word_10052B0B8 = 0;
  unk_1004E56F8 = 0;
  m_daemonVersionString = 0uLL;
  __cxa_atexit(&std::string::~string, &m_daemonVersionString, &_mh_execute_header);
  unk_1004E5710 = 0;
  m_vendorVersionString = 0uLL;
  __cxa_atexit(&std::string::~string, &m_vendorVersionString, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t ne_tunnel_open()
{
  interfaceRef = NEVirtualInterfaceCreateNexus();
  if (!interfaceRef)
  {
    interfaceRef = NEVirtualInterfaceCreateNexus();
    if (!interfaceRef)
    {
      v0 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v0)
      {
        if (syslog_is_the_mask_enabled(3))
        {
          if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
          {
            ne_tunnel_open_cold_1(v0);
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }
    }

    v10 = 6;
    strcpy(v9, "ABSENT");
    v8 = 6;
    strcpy(v7, "ABSENT");
    v6[24] = 6;
    strcpy(v6, "\tABSENT");
    strcpy(v5, "Stability");
    v4[23] = 13;
    strcpy(v4, "Invalid State");
    operator new();
  }

  NEVirtualInterfaceEnableFlowswitch();
  v1 = NEVirtualInterfaceDupSocket();
  v2 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v2)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v12 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Openned a tunnel with fd: %d ", buf, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return v1;
}

void sub_10009754C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a34 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a23);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v34 - 73) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((*(v34 - 73) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v34 - 49) & 0x80000000) == 0)
    {
LABEL_14:
      _Unwind_Resume(exception_object);
    }

LABEL_13:
    operator delete(*(v34 - 72));
    _Unwind_Resume(exception_object);
  }

LABEL_12:
  operator delete(*(v34 - 96));
  if ((*(v34 - 49) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t ne_tunnel_name(char *a1, int a2)
{
  v4 = NEVirtualInterfaceCopyName();
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFStringGetTypeID())
    {
      v8 = 0xFFFFFFFFLL;
LABEL_38:
      CFRelease(v5);
      return v8;
    }

    CFStringGetCString(v5, a1, a2, 0x8000100u);
    v7 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v7)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = a1;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Openned tunnel name is: %s ", &v16, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v9 = NEVirtualInterfaceSetRankNever() == 0;
    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    v11 = v10;
    if (v9)
    {
      if (v10)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          ne_tunnel_name_cold_3(a1, v11);
        }

LABEL_24:

        v12 = NEVirtualInterfaceUpdateAdHocService() == 0;
        v13 = log_get_logging_obg("com.apple.threadradiod", "default");
        v14 = v13;
        if (v12)
        {
          if (v13)
          {
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              ne_tunnel_name_cold_6(a1, v14);
            }

            goto LABEL_37;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
LABEL_36:
            [PowerEventHandler_Rcp init:];
          }
        }

        else
        {
          if (v13)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v16 = 136315138;
              v17 = a1;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Updated AdHoc service on %s", &v16, 0xCu);
            }

            goto LABEL_37;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }
        }

LABEL_37:

        v8 = 0;
        goto LABEL_38;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v10)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v16 = 136315138;
          v17 = a1;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Set rank on %s", &v16, 0xCu);
        }

        goto LABEL_24;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    [PowerEventHandler_Rcp init:];
    goto LABEL_24;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ne_tunnel_get_ifindex()
{
  Index = NEVirtualInterfaceGetIndex();
  v1 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v1)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v3[0] = 67109120;
      v3[1] = Index;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Opened tunnel ifIndex is: %d ", v3, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return Index;
}

uint64_t ne_tunnel_add_address(void *a1, int a2, int a3)
{
  memset(v38, 0, sizeof(v38));
  v37 = 0u;
  *__s = 14906;
  inet_ntop(30, a1, __s, 0x2Eu);
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v29 = v5;
  if (v5)
  {
    memcpy(__dst, __s, v5);
  }

  *(__dst + v6) = 0;
  v27 = 8;
  strcpy(v26, "ff:fe00:");
  v7 = v29;
  if ((v29 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v29 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  v9 = v8 + v7;
  if (v7 >= 8)
  {
    v10 = v8;
    do
    {
      v11 = memchr(v10, 102, v7 - 7);
      if (!v11)
      {
        break;
      }

      if (*v11 == *v26)
      {
        goto LABEL_18;
      }

      v10 = (v11 + 1);
      v7 = v9 - v10;
    }

    while (v9 - v10 > 7);
  }

  v11 = v9;
LABEL_18:
  v12 = v11 == v9 || v11 - v8 == -1;
  v13 = v12;
  if (v12)
  {
    v14 = a3;
  }

  else
  {
    v14 = 0;
  }

  v15 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v15)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      buf[0] = 136315906;
      *&buf[1] = __s;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = a2;
      HIWORD(buf[4]) = 1024;
      buf[5] = v14;
      LOWORD(buf[6]) = 1024;
      *(&buf[6] + 2) = v13 ^ 1;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Add Address: address_string: %s, prefixlen: %d preferred=%d isAddressLocator=%d", buf, 0x1Eu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v16 = CFStringCreateWithCString(0, __s, 0x8000100u);
  v17 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v17)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      buf[0] = 138412290;
      *&buf[1] = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Add Address: address: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v35[0] = -1;
  v35[1] = -1;
  if ((a2 & 0x80) != 0)
  {
    v18 = 128;
  }

  else
  {
    v18 = a2;
  }

  bzero(v35 + ((v18 + 7) >> 3), 16 - ((v18 + 7) >> 3));
  if ((v18 & 7) != 0)
  {
    *(v35 + (v18 >> 3)) &= -256 >> (v18 & 7);
  }

  memset(&buf[4] + 2, 0, 28);
  *(buf + 2) = 0u;
  LOWORD(buf[0]) = 14906;
  inet_ntop(30, v35, buf, 0x2Eu);
  v19 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v19)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v30 = 136315394;
      v31 = buf;
      v32 = 1024;
      v33[0] = a2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Add Address: prefix_string: %s, prefixlen: %d", v30, 0x12u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v20 = CFStringCreateWithCString(0, buf, 0x8000100u);
  v21 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v21)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v30 = 138412290;
      v31 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Add Address: prefix_mask: %@", v30, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (v16 && v20)
  {
    if (v13)
    {
      v22 = NEVirtualInterfaceAddAddress();
    }

    else
    {
      *(v33 + 2) = 0xFFFFFFFFLL;
      v22 = NEVirtualInterfaceAddAddressWithLifetime();
    }

    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = 0xFFFFFFFFLL;
    }

    goto LABEL_66;
  }

  v23 = 0;
  v24 = 0;
  if (v16)
  {
LABEL_66:
    CFRelease(v16);
    v24 = v23;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v29 < 0)
  {
    operator delete(__dst[0]);
  }

  return v24;
}

void sub_100098030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ne_tunnel_remove_address(void *a1)
{
  memset(v10, 0, sizeof(v10));
  v9 = 0u;
  *cStr = 14906;
  inet_ntop(30, a1, cStr, 0x2Eu);
  v1 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v1)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = cStr;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Remove Address: address_string: %s", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v3 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v3)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Remove Address: address: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (NEVirtualInterfaceRemoveAddress())
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

uint64_t ne_tunnel_remove_all_address(void)
{
  v0 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v0)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Ne Remove All Address", v2, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (NEVirtualInterfaceRemoveAllAddresses())
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void _GLOBAL__sub_I_ne_tunnel_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t create_new_crash_dump_file(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = +[NSDate date];
  [v5 timeIntervalSince1970];
  v6 = [NSDate dateWithTimeIntervalSince1970:?];

  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setDateFormat:@"YYYY-MM-dd'T'HH:mm:ss.SSS"];
  v8 = [v7 stringFromDate:v6];
  v9 = [NSString alloc];
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v10 = [v9 initWithFormat:@"%@%s%s%@", @"fillmore_", a3, "_", v8];
  v11 = [[NSString alloc] initWithFormat:@"%@%@", @"/var/mobile/Library/Logs/CrashReporter/CoreThread/crashes/", v10];
  v12 = +[NSFileManager defaultManager];
  v13 = fileManager;
  fileManager = v12;

  v23 = 0;
  v14 = [fileManager fileExistsAtPath:@"/var/mobile/Library/Logs/CrashReporter/CoreThread/crashes/" isDirectory:&v23];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v25 = v14;
    *&v25[4] = 1024;
    *&v25[6] = v23;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Directory Existence, isFile: %d, isDir: %d", buf, 0xEu);
  }

  if ((v23 & 1) != 0 || (v22 = 0, [fileManager createDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/CoreThread/crashes/" withIntermediateDirectories:1 attributes:0 error:&v22], (v15 = v22) == 0))
  {
    if ([fileManager fileExistsAtPath:v11])
    {
      [fileManager removeItemAtPath:v11 error:0];
    }

    v18 = v11;
    v19 = [v11 cStringUsingEncoding:4];
    v20 = strlen(v19);
    memcpy(a1, v19, v20 + 1);
    v17 = 1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v25 = v11;
      *&v25[8] = 2112;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "New created file - file_path:%@, fileName: %@", buf, 0x16u);
    }
  }

  else
  {
    v16 = v15;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v25 = @"/var/mobile/Library/Logs/CrashReporter/CoreThread/crashes/";
      *&v25[8] = 2112;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "error creating directory %@: %@", buf, 0x16u);
    }

    v17 = 0;
  }

  return v17;
}

uint64_t append_data_to_file(const char *a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = fopen(a1, "a+b");
  if (v5)
  {
    v6 = v5;
    v7 = fwrite(a2, 1uLL, a3, v5);
    fflush(v6);
    fclose(v6);
    return v7;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "File Open Error", v9, 2u);
    }

    return 0;
  }
}

uint64_t create_new_sniffer_folder(std::string *a1)
{
  v2 = [[NSString alloc] initWithFormat:@"%@", @"/var/mobile/Library/Logs/CrashReporter/CoreThread/sniffer/"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v16 = @"/var/mobile/Library/Logs/CrashReporter/CoreThread/sniffer/";
    *&v16[8] = 2112;
    v17 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "SNIFFER_TLF::creating directory path %@: %@", buf, 0x16u);
  }

  v3 = +[NSFileManager defaultManager];
  v4 = fileManager;
  fileManager = v3;

  v14 = 0;
  v5 = [fileManager fileExistsAtPath:@"/var/mobile/Library/Logs/CrashReporter/CoreThread/sniffer/" isDirectory:&v14];
  if (v14)
  {
    v6 = v5;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v16 = v6;
      *&v16[4] = 1024;
      *&v16[6] = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "SNIFFER_TLF::Sniffer: Directory exists, isFile: %d, isDir: %d", buf, 0xEu);
    }

    goto LABEL_10;
  }

  v13 = 0;
  [fileManager createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v13];
  v7 = v13;
  if (!v7)
  {
LABEL_10:
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      *a1->__r_.__value_.__l.__data_ = 0;
      a1->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      a1->__r_.__value_.__s.__data_[0] = 0;
      *(&a1->__r_.__value_.__s + 23) = 0;
    }

    v10 = v2;
    std::string::assign(a1, [v2 cStringUsingEncoding:4]);
    v9 = 1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = a1->__r_.__value_.__r.__words[0];
      }

      *buf = 138412802;
      *v16 = @"/var/mobile/Library/Logs/CrashReporter/CoreThread/sniffer/";
      *&v16[8] = 2112;
      v17 = v2;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "SNIFFER_TLF::directory path %@: %@ : %s", buf, 0x20u);
    }

    goto LABEL_18;
  }

  v8 = v7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v16 = @"/var/mobile/Library/Logs/CrashReporter/CoreThread/sniffer/";
    *&v16[8] = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "SNIFFER_TLF::sniffer: error creating directory %@: %@", buf, 0x16u);
  }

  v9 = 0;
LABEL_18:

  return v9;
}

void get_timestamp_sniffer_backup_filename(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v7 = [NSDate dateWithTimeIntervalSince1970:?];

  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"YYYY-MM-dd'T'HH:mm:ss.SSS"];
  v4 = [v3 stringFromDate:v7];
  v5 = [[NSString alloc] initWithFormat:@"%@%s%@%s", @"/var/mobile/Library/Logs/CrashReporter/CoreThread/sniffer/", "sniffer_logs_", v4, ".pcapng"];
  v6 = [v5 cStringUsingEncoding:4];
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  std::string::assign(a1, v6);
}

void backup_current_sniffer_file(void)
{
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  get_timestamp_sniffer_backup_filename(__p);
  v0 = [[NSString alloc] initWithFormat:@"%@%s", @"/var/mobile/Library/Logs/CrashReporter/CoreThread/sniffer/", "sniffer_logs.pcapng"];
  v1 = v0;
  v2 = [v0 cStringUsingEncoding:4];
  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v4] = 0;
  if (v12 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = strlen(v5);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&v9.__pn_.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memmove(&v9, v5, v6);
  }

  v9.__pn_.__r_.__value_.__s.__data_[v7] = 0;
  boost::filesystem::detail::status(&__dst, 0, buf);
  if (*buf < 2u)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "SNIFFER_TLF::backup_current_sniffer_file sfile[%s] does not exist ", buf, 0xCu);
    }
  }

  else
  {
    boost::filesystem::detail::rename(&__dst, &v9, 0, v8);
  }

  if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
LABEL_22:

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100098F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t create_new_settings_folder(uint64_t a1)
{
  v2 = [[NSString alloc] initWithFormat:@"%@", @"/var/db/com.apple.threadradiod/"];
  v3 = +[NSFileManager defaultManager];
  v4 = fileManager;
  fileManager = v3;

  v13 = 0;
  v5 = [fileManager fileExistsAtPath:@"/var/db/com.apple.threadradiod/" isDirectory:&v13];
  if (v13)
  {
    v6 = v5;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v15 = v6;
      *&v15[4] = 1024;
      *&v15[6] = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Settings: Directory exists, isFile: %d, isDir: %d", buf, 0xEu);
    }

    goto LABEL_8;
  }

  v12 = 0;
  [fileManager createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v12];
  v7 = v12;
  if (!v7)
  {
LABEL_8:
    if (*(a1 + 23) < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }

    v10 = v2;
    std::string::assign(a1, [v2 cStringUsingEncoding:4]);
    v9 = 1;
    goto LABEL_12;
  }

  v8 = v7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v15 = @"/var/db/com.apple.threadradiod/";
    *&v15[8] = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Settings: error creating directory %@: %@", buf, 0x16u);
  }

  v9 = 0;
LABEL_12:

  return v9;
}

void getBTFWCrashDumpPath(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  v2 = +[NSFileManager defaultManager];
  v3 = fileManager;
  fileManager = v2;

  v4 = +[NSDate distantPast];
  v5 = [fileManager enumeratorAtPath:@"/Library/Logs/CrashReporter/CoreCapture/BT/"];
  v20 = a1;
  v6 = [v5 nextObject];
  v7 = 0;
  v8 = 0;
  while (v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [@"/Library/Logs/CrashReporter/CoreCapture/BT/" stringByAppendingPathComponent:v6];
    v11 = v10;
    if (!v10 || ![v10 containsString:@"BTFWCoreDump.bin"])
    {
      v13 = v8;
      goto LABEL_18;
    }

    v23 = v8;
    v12 = [fileManager attributesOfItemAtPath:v11 error:&v23];
    v13 = v23;

    if (v12)
    {
      v14 = [v12 fileCreationDate];

      if ([v14 compare:v4] != 1)
      {
        v7 = v14;
        goto LABEL_17;
      }

      v15 = [v11 UTF8String];
      v16 = strlen(v15);
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v17 = v16;
      if (v16 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v22) = v16;
      if (v16)
      {
        memmove(&__dst, v15, v16);
        *(&__dst + v17) = 0;
        v18 = v20;
        if ((*(v20 + 23) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        LOBYTE(__dst) = 0;
        v18 = v20;
        if ((*(v20 + 23) & 0x80000000) == 0)
        {
LABEL_14:
          *v18 = __dst;
          *(v18 + 16) = v22;
          v7 = v14;

          v4 = v7;
          goto LABEL_17;
        }
      }

      operator delete(*v18);
      goto LABEL_14;
    }

LABEL_17:

LABEL_18:
    v19 = [v5 nextObject];

    objc_autoreleasePoolPop(v9);
    v6 = v19;
    v8 = v13;
  }
}

void checkCTRSettingsFileLimit(void)
{
  context = objc_autoreleasePoolPush();
  v27 = [[NSString alloc] initWithFormat:@"%@", @"/var/db/com.apple.threadradiod/"];
  v26 = +[NSDate distantFuture];
  v32 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  v0 = +[NSFileManager defaultManager];
  v1 = fileManager;
  fileManager = v0;

  [fileManager fileExistsAtPath:@"/var/db/com.apple.threadradiod/" isDirectory:&v32];
  if (v32 != 1)
  {
    v18 = 0;
    v6 = 0;
    v19 = 0;
    v3 = 0;
    if (SHIBYTE(v31) < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v22 = [fileManager contentsOfDirectoryAtPath:v27 error:0];
  if ([v22 count] < 0x65uLL)
  {
    v25 = 0;
    v6 = 0;
    v19 = 0;
    v3 = 0;
    goto LABEL_36;
  }

  v2 = [fileManager enumeratorAtPath:v27];
  [v2 nextObject];
  v4 = v3 = 0;
  if (!v4)
  {
    v6 = 0;
    v25 = 0;
    v19 = 0;
    goto LABEL_35;
  }

  v5 = 0;
  v6 = 0;
  v25 = 0;
  v23 = 0;
  do
  {
    v7 = [v27 stringByAppendingPathComponent:v4];

    v6 = v7;
    if (!v7)
    {
      goto LABEL_19;
    }

    v29 = v5;
    v8 = [fileManager attributesOfItemAtPath:v7 error:&v29];
    v9 = v29;

    if (v8)
    {
      v10 = [v8 fileModificationDate];

      if ([v10 compare:v26] != -1)
      {
        v3 = v10;
        goto LABEL_18;
      }

      v11 = v7;
      v12 = [v7 UTF8String];
      v13 = strlen(v12);
      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        operator new();
      }

      buf[23] = v13;
      if (v13)
      {
        memmove(buf, v12, v13);
        buf[v14] = 0;
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        buf[0] = 0;
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
LABEL_13:
          *__p = *buf;
          v31 = *&buf[16];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v15 = __p;
            if (v31 < 0)
            {
              v15 = __p[0];
            }

            *buf = 136315394;
            *&buf[4] = "checkCTRSettingsFileLimit";
            *&buf[12] = 2080;
            *&buf[14] = v15;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: Found oldest CTR settings file %s", buf, 0x16u);
          }

          v3 = v10;

          v16 = v7;
          v23 = 1;
          v25 = v16;
          v26 = v3;
          goto LABEL_18;
        }
      }

      operator delete(__p[0]);
      goto LABEL_13;
    }

LABEL_18:

    v5 = v9;
LABEL_19:
    v17 = [v2 nextObject];

    v4 = v17;
  }

  while (v17);
  if (v23)
  {
    v28 = v5;
    v20 = [fileManager removeItemAtPath:v25 error:&v28];
    v19 = v28;

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v21 = __p;
      if (v31 < 0)
      {
        v21 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "checkCTRSettingsFileLimit";
      *&buf[12] = 2080;
      *&buf[14] = v21;
      *&buf[22] = 2112;
      v34 = v19;
      v35 = 1024;
      v36 = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: Remove oldest CTR settings file %s error: %@ fileDeleted: %d", buf, 0x26u);
    }
  }

  else
  {
    v19 = v5;
  }

LABEL_35:

LABEL_36:
  v18 = v25;
  if (SHIBYTE(v31) < 0)
  {
LABEL_25:
    operator delete(__p[0]);
  }

LABEL_26:

  objc_autoreleasePoolPop(context);
}

void sub_100099A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *ot::MeshCoP::SecureTransport::HandleReceive(unsigned __int8 *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *this;
  if (!*this)
  {
    return this;
  }

  v10 = this;
  if (v8 == 1)
  {
    if (*(this + 392))
    {
      --*(this + 392);
    }

    *(this + 872) = *(a3 + 1);
    *(this + 445) = *(a3 + 17);
    this[893] = this[893] & 0xFB | *(a3 + 37) & 4;
    *(this + 856) = *a3;
    *(this + 444) = *(a3 + 16);
    this = ot::MeshCoP::SecureTransport::Setup(this, 0, a3, a4, a5, a6, a7, a8);
    if (!this)
    {
      v8 = *v10;
LABEL_13:
      if (v8 == 3)
      {
        v12 = mbedtls_ssl_set_client_transport_id(v10 + 6, v10 + 872, 16);
        ot::Crypto::MbedTls::MapError(v12);
      }

      *(v10 + 101) = a2;
      this = ot::MeshCoP::SecureTransport::Process(v10);
      *(v10 + 101) = 0;
    }
  }

  else
  {
    v11 = *(this + 109) == *(a3 + 2) && *(this + 110) == *(a3 + 3);
    if (v11 && *(this + 445) == *(a3 + 17))
    {
      goto LABEL_13;
    }
  }

  return this;
}

ot::MeshCoP::SecureTransport *ot::MeshCoP::SecureTransport::SecureTransport(ot::MeshCoP::SecureTransport *this, ot::Instance *a2, int a3, int a4)
{
  *this = 0;
  *(this + 22) = 256;
  *(this + 93) = ot::MeshCoP::SecureTransport::HandleTimer;
  *(this + 95) = this + 744;
  *(this + 96) = this;
  *(this + 194) = 0;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(this + 780) = v6 | v5 | *(this + 780) & 0xF8;
  *(this + 782) = 0;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 886) = 0;
  *(this + 105) = 0;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  ot::Ip6::Udp::Socket::Socket((this + 896), a2, ot::Ip6::Udp::SocketIn<ot::MeshCoP::SecureTransport,&ot::MeshCoP::SecureTransport::HandleReceive>::HandleUdpReceive, this);
  *(this + 968) = 0u;
  *(this + 496) = 0;
  *(this + 4) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0;
  bzero(this + 48, 0x2B8uLL);
  return this;
}

{
  *this = 0;
  *(this + 22) = 256;
  *(this + 93) = ot::MeshCoP::SecureTransport::HandleTimer;
  *(this + 95) = this + 744;
  *(this + 96) = this;
  *(this + 194) = 0;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(this + 780) = v6 | v5 | *(this + 780) & 0xF8;
  *(this + 782) = 0;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 886) = 0;
  *(this + 105) = 0;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  ot::Ip6::Udp::Socket::Socket((this + 896), a2, ot::Ip6::Udp::SocketIn<ot::MeshCoP::SecureTransport,&ot::MeshCoP::SecureTransport::HandleReceive>::HandleUdpReceive, this);
  *(this + 968) = 0u;
  *(this + 496) = 0;
  *(this + 4) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0;
  bzero(this + 48, 0x2B8uLL);
  return this;
}

void **ot::MeshCoP::SecureTransport::FreeMbedtls(ot::MeshCoP::SecureTransport *this)
{
  if ((*(this + 780) & 4) != 0)
  {
    mbedtls_ssl_cookie_free(this + 88);
  }

  mbedtls_ssl_config_free(this + 63);

  return mbedtls_ssl_free(this + 6);
}

void ot::MeshCoP::SecureTransport::SetState(_BYTE *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 != a2)
  {
    v10 = ot::MeshCoP::SecureTransport::StateToString(ot::MeshCoP::SecureTransport::State)::kStateStrings[a2];
    v9 = a2;
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "State: %s -> %s", a3, a4, a5, a6, a7, a8, ot::MeshCoP::SecureTransport::StateToString(ot::MeshCoP::SecureTransport::State)::kStateStrings[*a1]);
    *a1 = v9;
  }
}

uint64_t ot::MeshCoP::SecureTransport::Open(ot::MeshCoP::SecureTransport *this, void (*a2)(void *, unsigned __int8 *, unsigned __int16), void (*a3)(void *, BOOL), void *a4)
{
  if (*this)
  {
    return 24;
  }

  result = ot::Ip6::Udp::Socket::Open((this + 896));
  if (!result)
  {
    *(this + 102) = a3;
    *(this + 103) = a4;
    *(this + 104) = a2;
    *(this + 105) = a4;
    *(this + 392) = *(this + 391);
    v15 = *this;
    if (v15 == 1)
    {
      return 0;
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "State: %s -> %s", v9, v10, v11, v12, v13, v14, ot::MeshCoP::SecureTransport::StateToString(ot::MeshCoP::SecureTransport::State)::kStateStrings[v15]);
      result = 0;
      *this = 1;
    }
  }

  return result;
}

uint64_t ot::MeshCoP::SecureTransport::SetMaxConnectionAttempts(ot::MeshCoP::SecureTransport *this, __int16 a2, void (*a3)(void *), void *a4)
{
  if (*this)
  {
    return 13;
  }

  result = 0;
  *(this + 391) = a2;
  *(this + 99) = a3;
  *(this + 100) = a4;
  return result;
}

uint64_t ot::MeshCoP::SecureTransport::Connect(ot::MeshCoP::SecureTransport *this, const ot::Ip6::SockAddr *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*this != 1)
  {
    return 13;
  }

  if (*(this + 392))
  {
    --*(this + 392);
  }

  *(this + 872) = *a2;
  *(this + 445) = *(a2 + 8);
  return ot::MeshCoP::SecureTransport::Setup(this, 1, a3, a4, a5, a6, a7, a8);
}

uint64_t ot::MeshCoP::SecureTransport::Setup(ot::MeshCoP::SecureTransport *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *this;
  if (v9 != 1)
  {
    v12 = 4294940672;
    if (v9 != 2)
    {
LABEL_13:

      return ot::Crypto::MbedTls::MapError(v12);
    }

    goto LABEL_17;
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "State: %s -> %s", a3, a4, a5, a6, a7, a8, "Open");
  *this = 2;
  mbedtls_ssl_init();
  mbedtls_ssl_config_init();
  v11 = *(this + 780);
  if ((v11 & 4) != 0)
  {
    mbedtls_ssl_cookie_init(this + 704);
    v11 = *(this + 780);
  }

  v12 = mbedtls_ssl_config_defaults(this + 504, a2 ^ 1u, (v11 & 4) != 0, 0);
  if (!v12)
  {
    mbedtls_ssl_conf_rng(this + 504, ot::Crypto::MbedTls::CryptoSecurePrng, 0);
    *(this + 63) = vdup_n_s32(0x303u);
    mbedtls_ssl_conf_ciphersuites(this + 504, this + 4);
    if (*(this + 1) == 49407)
    {
      mbedtls_ssl_conf_groups(this + 504, &ot::MeshCoP::SecureTransport::sGroups);
    }

    mbedtls_ssl_set_export_keys_cb(this + 48, ot::MeshCoP::SecureTransport::HandleMbedtlsExportKeys, this);
    mbedtls_ssl_conf_handshake_timeout(this + 504, 8000, 60000);
    mbedtls_ssl_conf_dbg(this + 504, ot::MeshCoP::SecureTransport::HandleMbedtlsDebug, this);
    if ((a2 & 1) == 0 && (*(this + 780) & 4) != 0)
    {
      v12 = mbedtls_ssl_cookie_setup(this + 704, ot::Crypto::MbedTls::CryptoSecurePrng, 0);
      if (v12)
      {
        goto LABEL_12;
      }

      mbedtls_ssl_conf_dtls_cookies(this + 63, mbedtls_ssl_cookie_write, mbedtls_ssl_cookie_check, this + 704);
    }

    v12 = mbedtls_ssl_setup(this + 6, this + 126);
    if (!v12)
    {
      mbedtls_ssl_set_bio(this + 6, this, ot::MeshCoP::SecureTransport::HandleMbedtlsTransmit, ot::MeshCoP::SecureTransport::HandleMbedtlsReceive, 0);
      if ((*(this + 780) & 4) != 0)
      {
        mbedtls_ssl_set_timer_cb(this + 6, this, ot::MeshCoP::SecureTransport::HandleMbedtlsSetTimer, ot::MeshCoP::SecureTransport::HandleMbedtlsGetTimer);
      }

      if (*(this + 1) == 49407)
      {
        v12 = mbedtls_ssl_set_hs_ecjpake_password(this + 6, this + 12, *(this + 44));
        if (v12)
        {
          goto LABEL_12;
        }

        v22 = *(this + 1);
        *(this + 101) = 0;
        *(this + 992) = 0;
        if (v22 == 49407)
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "DTLS started", a3, a4, a5, a6, a7, a8, v24);
        }
      }

      else
      {
        *(this + 101) = 0;
        *(this + 992) = 0;
      }

      v23 = *this;
      if (v23 != 3)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "State: %s -> %s", a3, a4, a5, a6, a7, a8, ot::MeshCoP::SecureTransport::StateToString(ot::MeshCoP::SecureTransport::State)::kStateStrings[v23]);
        *this = 3;
      }

      ot::MeshCoP::SecureTransport::Process(this);
      v12 = 0;

      return ot::Crypto::MbedTls::MapError(v12);
    }
  }

LABEL_12:
  if (*this != 2)
  {
    goto LABEL_13;
  }

LABEL_17:
  v14 = v12;
  if (!*(this + 391) || *(this + 392))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "State: %s -> %s", a3, a4, a5, a6, a7, a8, "Initializing");
    *this = 1;
    if ((*(this + 780) & 4) != 0)
    {
      mbedtls_ssl_cookie_free(this + 88);
    }

    mbedtls_ssl_config_free(this + 63);
    mbedtls_ssl_free(this + 6);
LABEL_22:
    v12 = v14;

    return ot::Crypto::MbedTls::MapError(v12);
  }

  ot::MeshCoP::SecureTransport::Disconnect(this);
  if (*this)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "State: %s -> %s", v15, v16, v17, v18, v19, v20, ot::MeshCoP::SecureTransport::StateToString(ot::MeshCoP::SecureTransport::State)::kStateStrings[*this]);
    *this = 0;
  }

  *(this + 780) &= ~1u;
  *(this + 121) = 0;
  ot::Ip6::Udp::Socket::Close((this + 896));
  ot::TimerMilli::Stop((this + 744));
  v21 = *(this + 99);
  if (!v21)
  {
    goto LABEL_22;
  }

  v21(*(this + 100));
  v12 = v14;

  return ot::Crypto::MbedTls::MapError(v12);
}

uint64_t ot::MeshCoP::SecureTransport::SetClientId(ot::MeshCoP::SecureTransport *this, const unsigned __int8 *a2, unsigned int a3)
{
  v3 = mbedtls_ssl_set_client_transport_id(this + 6, a2, a3);

  return ot::Crypto::MbedTls::MapError(v3);
}

void **ot::MeshCoP::SecureTransport::Receive(ot::MeshCoP::SecureTransport *this, ot::Message *a2)
{
  *(this + 101) = a2;
  result = ot::MeshCoP::SecureTransport::Process(this);
  *(this + 101) = 0;
  return result;
}

uint64_t ot::MeshCoP::SecureTransport::Bind(ot::MeshCoP::SecureTransport *this, __int16 a2)
{
  if (*this != 1)
  {
    return 13;
  }

  if (*(this + 121))
  {
    return 24;
  }

  return ot::Ip6::Udp::Socket::Bind((this + 896), a2, 0);
}

uint64_t ot::MeshCoP::SecureTransport::Bind(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != 1)
  {
    return 13;
  }

  if (*(a1 + 912))
  {
    return 24;
  }

  if (*(a1 + 968))
  {
    return 24;
  }

  result = 0;
  *(a1 + 968) = a2;
  *(a1 + 976) = a3;
  return result;
}

void ot::MeshCoP::SecureTransport::HandleMbedtlsDebug(ot::MeshCoP::SecureTransport *this, void *a2, uint64_t a3, const char *a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 3:
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "[%u] %s", a3, a4, a5, a6, a7, a8, *(this + 456));
      break;
    case 2:
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("SecTransport", "[%u] %s", a3, a4, a5, a6, a7, a8, *(this + 456));
      break;
    case 1:
      ot::Logger::LogAtLevel<(ot::LogLevel)1>("SecTransport", "[%u] %s", a3, a4, a5, a6, a7, a8, *(this + 456));
      break;
  }
}

uint64_t ot::MeshCoP::SecureTransport::HandleMbedtlsTransmit(ot::MeshCoP::SecureTransport *this, char *a2, const unsigned __int8 *a3)
{
  v3 = a3;
  v5 = ot::MeshCoP::SecureTransport::HandleSecureTransportSend(this, a2, a3, *(this + 992));
  *(this + 992) = *(this + 993);
  if (v5 == 3)
  {
    return 4294940544;
  }

  if (v5)
  {
    v6 = ot::ErrorToString(v5);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("SecTransport", "HandleMbedtlsTransmit: %s error", v7, v8, v9, v10, v11, v12, v6);
    return 4294967218;
  }

  return v3;
}

uint64_t ot::MeshCoP::SecureTransport::HandleMbedtlsReceive(ot::MeshCoP::SecureTransport *this, char *a2, unsigned __int8 *a3)
{
  v4 = *(this + 101);
  if (!v4)
  {
    return 4294940416;
  }

  v6 = v4[29];
  v7 = v4[28] - v6;
  if (v7 < 1)
  {
    return 4294940416;
  }

  if (v7 >= a3)
  {
    LOWORD(v7) = a3;
  }

  Bytes = ot::Message::ReadBytes(v4, v6, a2, v7);
  ot::Message::MoveOffset(*(this + 101), Bytes);
  return Bytes;
}

unint64_t ot::MeshCoP::SecureTransport::HandleMbedtlsSetTimer(ot::MeshCoP::SecureTransport *this, void *a2, unsigned int a3)
{
  v4 = *(this + 780);
  if (a3)
  {
    v5 = a2;
    *(this + 780) = v4 | 1;
    ot::TimerMilli::Start((this + 744), a3);
    result = otPlatAlarmMilliGetNow();
    *(this + 194) = result + v5;
  }

  else
  {
    *(this + 780) = v4 & 0xFE;
    v8 = (this + 744);

    return ot::TimerMilli::Stop(v8);
  }

  return result;
}

uint64_t ot::MeshCoP::SecureTransport::HandleMbedtlsGetTimer(ot::MeshCoP::SecureTransport *this, void *a2)
{
  if ((*(this + 780) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 95) == (this + 744))
  {
    return 2;
  }

  return (otPlatAlarmMilliGetNow() - *(this + 194)) >= 0;
}

void **ot::MeshCoP::SecureTransport::Process(ot::MeshCoP::SecureTransport *this)
{
  result = __chkstk_darwin(this);
  v2 = *result;
  if ((v2 - 3) > 1)
  {
    return result;
  }

  v3 = result;
  while (1)
  {
    v4 = (v3 + 48);
    if (v2 == 3)
    {
      result = mbedtls_ssl_handshake(v4);
      if (*(v3 + 14) == 27)
      {
        v11 = *v3;
        if (v11 != 4)
        {
          v12 = result;
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "State: %s -> %s", v5, v6, v7, v8, v9, v10, ot::MeshCoP::SecureTransport::StateToString(ot::MeshCoP::SecureTransport::State)::kStateStrings[v11]);
          result = v12;
          *v3 = 4;
        }

        v13 = *(v3 + 102);
        if (v13)
        {
          v14 = result;
          v13(*(v3 + 103), 1);
          result = v14;
        }
      }
    }

    else
    {
      result = mbedtls_ssl_read(v4, v16, 0x4000uLL);
    }

    if (result < 1)
    {
      break;
    }

    v15 = *(v3 + 104);
    if (v15)
    {
      result = v15(*(v3 + 105), v16, result);
    }

    v2 = *v3;
    if ((v2 - 3) >= 2)
    {
      return result;
    }
  }

  if (result <= -27265)
  {
    if (result == -30848 || result == -30592)
    {
      mbedtls_ssl_close_notify(v3 + 6);
    }

    else
    {
      if (result != -29056)
      {
        goto LABEL_26;
      }

      if (*(v3 + 14) == 27)
      {
        goto LABEL_27;
      }

      mbedtls_ssl_send_alert_message((v3 + 48), 2, 20);
    }

    return ot::MeshCoP::SecureTransport::Disconnect(v3);
  }

  if (result > -26753)
  {
    if (result == -26752 || !result)
    {
      return result;
    }
  }

  else
  {
    if (result == -27264)
    {
      goto LABEL_27;
    }

    if (result == -26880)
    {
      return result;
    }
  }

LABEL_26:
  if (*(v3 + 14) != 27)
  {
    mbedtls_ssl_send_alert_message((v3 + 48), 2, 40);
    return ot::MeshCoP::SecureTransport::Disconnect(v3);
  }

LABEL_27:
  result = mbedtls_ssl_session_reset((v3 + 48));
  if (*(v3 + 1) == 49407)
  {
    return mbedtls_ssl_set_hs_ecjpake_password(v3 + 6, (v3 + 12), v3[44]);
  }

  return result;
}

uint64_t ot::MeshCoP::SecureTransport::Close(void **this)
{
  ot::MeshCoP::SecureTransport::Disconnect(this);
  if (*this)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "State: %s -> %s", v2, v3, v4, v5, v6, v7, ot::MeshCoP::SecureTransport::StateToString(ot::MeshCoP::SecureTransport::State)::kStateStrings[*this]);
    *this = 0;
  }

  *(this + 780) &= ~1u;
  this[121] = 0;
  ot::Ip6::Udp::Socket::Close((this + 112));

  return ot::TimerMilli::Stop((this + 93));
}

void **ot::MeshCoP::SecureTransport::Disconnect(void **this)
{
  if (*this - 3 <= 1)
  {
    v2 = this;
    mbedtls_ssl_close_notify(this + 6);
    v9 = *v2;
    if (v9 != 5)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "State: %s -> %s", v3, v4, v5, v6, v7, v8, ot::MeshCoP::SecureTransport::StateToString(ot::MeshCoP::SecureTransport::State)::kStateStrings[v9]);
      *v2 = 5;
    }

    ot::TimerMilli::Start((v2 + 744), 0x7D0u);
    *(v2 + 886) = 0;
    *(v2 + 856) = 0u;
    *(v2 + 872) = 0u;
    if ((v2[780] & 4) != 0)
    {
      mbedtls_ssl_cookie_free(v2 + 88);
    }

    mbedtls_ssl_config_free(v2 + 63);

    return mbedtls_ssl_free(v2 + 6);
  }

  return this;
}

uint64_t ot::MeshCoP::SecureTransport::SetPsk(ot::MeshCoP::SecureTransport *this, const unsigned __int8 *a2, size_t __n)
{
  if (__n > 0x20)
  {
    return 7;
  }

  v4 = __n;
  memcpy(this + 12, a2, __n);
  result = 0;
  *(this + 44) = v4;
  *(this + 4) = 49407;
  return result;
}

uint64_t ot::MeshCoP::SecureTransport::Send(ot::MeshCoP::SecureTransport *this, ot::Message *a2, unsigned int a3)
{
  if (a3 > 0x480)
  {
    return 3;
  }

  v5 = (*(a2 + 78) >> 3) & 0xF;
  if (v5)
  {
    *(this + 992) = v5;
  }

  ot::Message::ReadBytes(a2, 0, v9, a3);
  v7 = mbedtls_ssl_write(this + 48, v9, a3);
  result = ot::Crypto::MbedTls::MapError(v7);
  if (!result)
  {
    ot::Message::Free(a2);
    return 0;
  }

  return result;
}

uint64_t ot::MeshCoP::SecureTransport::HandleMbedtlsTransmit(ot::MeshCoP::SecureTransport *this, char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = ot::MeshCoP::SecureTransport::HandleSecureTransportSend(this, a2, a3, *(this + 992));
  *(this + 992) = *(this + 993);
  if (v5 == 3)
  {
    return 4294940544;
  }

  if (v5)
  {
    v6 = ot::ErrorToString(v5);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("SecTransport", "HandleMbedtlsTransmit: %s error", v7, v8, v9, v10, v11, v12, v6);
    return 4294967218;
  }

  return v3;
}

uint64_t ot::MeshCoP::SecureTransport::HandleSecureTransportSend(uint64_t a1, char *a2, unsigned __int16 a3, int a4)
{
  v8 = ot::Ip6::Udp::Socket::NewMessage((a1 + 896));
  if (!v8)
  {
    return 3;
  }

  v9 = v8;
  v10 = *(v8 + 78) & 0xFFFFFF87 | (8 * (a4 & 0xF));
  *(v8 + 78) = v10;
  *(v8 + 78) = v10 & 0xFFFFFEFF | ((((*(a1 + 780) & 2) >> 1) & 1) << 8);
  result = ot::Message::AppendBytes(v8, a2, a3);
  if (result)
  {
    goto LABEL_10;
  }

  if (a4)
  {
    *(v9 + 78) = *(v9 + 78) & 0xFFFFFF87 | (8 * (a4 & 0xF));
  }

  v12 = *(a1 + 968);
  if (v12)
  {
    result = v12(*(a1 + 976), v9, a1 + 856);
    if (!result)
    {
      return result;
    }

LABEL_10:
    v13 = result;
    ot::Message::Free(v9);
    return v13;
  }

  result = ot::Ip6::Udp::Socket::SendTo((a1 + 896), v9, (a1 + 856));
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t ot::MeshCoP::SecureTransport::HandleMbedtlsReceive(ot::MeshCoP::SecureTransport *this, char *a2, unint64_t a3)
{
  v4 = *(this + 101);
  if (!v4)
  {
    return 4294940416;
  }

  v6 = v4[29];
  v7 = v4[28] - v6;
  if (v7 < 1)
  {
    return 4294940416;
  }

  if (v7 >= a3)
  {
    LOWORD(v7) = a3;
  }

  Bytes = ot::Message::ReadBytes(v4, v6, a2, v7);
  ot::Message::MoveOffset(*(this + 101), Bytes);
  return Bytes;
}

uint64_t ot::MeshCoP::SecureTransport::HandleMbedtlsGetTimer(ot::MeshCoP::SecureTransport *this)
{
  if ((*(this + 780) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 95) == (this + 744))
  {
    return 2;
  }

  return (otPlatAlarmMilliGetNow() - *(this + 194)) >= 0;
}

unint64_t ot::MeshCoP::SecureTransport::HandleMbedtlsSetTimer(ot::MeshCoP::SecureTransport *this, int a2, unsigned int a3)
{
  v4 = *(this + 780);
  if (a3)
  {
    *(this + 780) = v4 | 1;
    ot::TimerMilli::Start((this + 744), a3);
    result = otPlatAlarmMilliGetNow();
    *(this + 194) = result + a2;
  }

  else
  {
    *(this + 780) = v4 & 0xFE;
    v8 = (this + 744);

    return ot::TimerMilli::Stop(v8);
  }

  return result;
}

void ot::MeshCoP::SecureTransport::HandleMbedtlsExportKeys(uint64_t a1, int a2, _BYTE *a3, unint64_t a4, __int128 *a5, _OWORD *a6, int a7)
{
  ot::Crypto::Sha256::Sha256(v17);
  if (!a2 && *(a1 + 4) == 49407)
  {
    v14 = a6[1];
    v18[0] = *a6;
    v15 = *a5;
    v16 = a5[1];
    v18[1] = v14;
    v18[2] = v15;
    v18[3] = v16;
    mbedtls_ssl_tls_prf(a7, a3, a4, "key expansion", v18, 64, v19, 0x28uLL);
    ot::Crypto::Sha256::Start(v17);
    ot::Crypto::Sha256::Update(v17, v19, 0x28u);
    ot::Crypto::Sha256::Finish(v17, v20);
    ot::KeyManager::SetKek(&unk_100500450, v20);
  }

  ot::Crypto::Sha256::~Sha256(v17);
}

void sub_10009AFF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ot::Crypto::Sha256::~Sha256(va);
  _Unwind_Resume(a1);
}

void **ot::MeshCoP::SecureTransport::HandleTimer(void **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *this;
  if ((v8 - 3) > 1)
  {
    if (v8 == 5)
    {
      v9 = this;
      if (*(this + 391) && !*(this + 392))
      {
        ot::MeshCoP::SecureTransport::Disconnect(this);
        v18 = v9;
        if (*v9)
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "State: %s -> %s", v12, v13, v14, v15, v16, v17, ot::MeshCoP::SecureTransport::StateToString(ot::MeshCoP::SecureTransport::State)::kStateStrings[*v9]);
          v18 = v9;
          *v9 = 0;
        }

        *(v18 + 780) &= ~1u;
        v18[121] = 0;
        ot::Ip6::Udp::Socket::Close((v9 + 112));
        this = ot::TimerMilli::Stop((v9 + 93));
        v19 = v9;
        v20 = v9[102];
        if (v20)
        {
          this = v20(v9[103], 0);
          v19 = v9;
        }

        v21 = v19[99];
        if (v21)
        {
          v22 = v19[100];

          return v21(v22);
        }
      }

      else
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "State: %s -> %s", a3, a4, a5, a6, a7, a8, "CloseNotify");
        *v9 = 1;
        this = ot::TimerMilli::Stop((v9 + 93));
        v10 = v9[102];
        if (v10)
        {
          v11 = v9[103];

          return v10(v11, 0);
        }
      }
    }
  }

  else
  {

    return ot::MeshCoP::SecureTransport::Process(this);
  }

  return this;
}

void ot::MeshCoP::SecureTransport::HandleMbedtlsDebug(ot::MeshCoP::SecureTransport *this, int a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 3:
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("SecTransport", "[%u] %s", a3, a4, a5, a6, a7, a8, *(this + 456));
      break;
    case 2:
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("SecTransport", "[%u] %s", a3, a4, a5, a6, a7, a8, *(this + 456));
      break;
    case 1:
      ot::Logger::LogAtLevel<(ot::LogLevel)1>("SecTransport", "[%u] %s", a3, a4, a5, a6, a7, a8, *(this + 456));
      break;
  }
}

id InternalClientIPCHelper::decodeComplexValToDict(InternalClientIPCHelper *this, any a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(NSMutableDictionary);
  if (*this)
  {
    v5 = (*(**this + 16))(*this);
  }

  else
  {
  }

  v6 = v5[1];
  if (v6 == 0x8000000100444031 || ((v6 & 0x8000000100444031 & 0x8000000000000000) != 0) != __OFSUB__(v6, 0x8000000100444031) && !strcmp((v6 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100444031 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    boost::any_cast<std::list<std::string>>(this, &__p);
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = objc_alloc_init(NSMutableArray);
    for (i = v67; i != &__p; i = *(i + 1))
    {
      v10 = i + 16;
      if (i[39] < 0)
      {
        v10 = *v10;
      }

      v11 = [NSString stringWithUTF8String:v10];
      [v8 addObject:v11];
    }

    [v7 setObject:v8 forKey:@"String Values"];
    [v4 setValuesForKeysWithDictionary:v7];

    if (v68)
    {
      v12 = v67;
      v13 = *(__p + 1);
      v14 = *v67;
      *(v14 + 8) = v13;
      *v13 = v14;
      v68 = 0;
      if (v12 != &__p)
      {
        do
        {
          v15 = *(v12 + 1);
          if (v12[39] < 0)
          {
            operator delete(*(v12 + 2));
          }

          operator delete(v12);
          v12 = v15;
        }

        while (v15 != &__p);
      }
    }

    goto LABEL_61;
  }

  if (*this)
  {
    v16 = (*(**this + 16))(*this);
  }

  else
  {
  }

  v17 = v16[1];
  if (v17 == 0x8000000100444085 || ((v17 & 0x8000000100444085 & 0x8000000000000000) != 0) != __OFSUB__(v17, 0x8000000100444085) && !strcmp((v17 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100444085 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    boost::any_cast<std::set<std::string>>(this, &__p);
    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = objc_alloc_init(NSMutableArray);
    v20 = __p;
    if (__p != &v67)
    {
      do
      {
        v21 = v20 + 32;
        if (v20[55] < 0)
        {
          v21 = *v21;
        }

        v22 = [NSString stringWithUTF8String:v21];
        [v19 addObject:v22];

        v23 = *(v20 + 1);
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
            v24 = *(v20 + 2);
            v25 = *v24 == v20;
            v20 = v24;
          }

          while (!v25);
        }

        v20 = v24;
      }

      while (v24 != &v67);
    }

    [v18 setObject:v19 forKey:@"String Values"];
    [v4 setValuesForKeysWithDictionary:v18];

    std::__tree<std::string>::destroy(&__p, v67);
    goto LABEL_61;
  }

  if (*this)
  {
    v26 = (*(**this + 16))(*this);
  }

  else
  {
  }

  v27 = v26[1];
  if (v27 == 0x8000000100447D88 || ((v27 & 0x8000000100447D88 & 0x8000000000000000) != 0) != __OFSUB__(v27, 0x8000000100447D88) && !strcmp((v27 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100447D88 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    boost::any_cast<nl::Data>(this, &__p);
    v28 = objc_alloc_init(NSMutableDictionary);
    v29 = objc_alloc_init(NSMutableArray);
    v30 = __p;
    if (__p != v67)
    {
      do
      {
        std::to_string(&v65, *v30);
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          v32 = v65.__r_.__value_.__r.__words[0];
          operator delete(v65.__r_.__value_.__l.__data_);
          v31 = v32;
        }

        else
        {
          v31 = &v65;
        }

        v33 = [NSString stringWithUTF8String:v31];
        [v29 addObject:v33];

        v30 = (v30 + 1);
      }

      while (v30 != v67);
    }

    goto LABEL_59;
  }

  if (*this)
  {
    v34 = (*(**this + 16))(*this);
  }

  else
  {
  }

  v35 = v34[1];
  if (v35 == 0x80000001004440E6 || ((v35 & 0x80000001004440E6 & 0x8000000000000000) != 0) != __OFSUB__(v35, 0x80000001004440E6) && !strcmp((v35 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004440E6 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    boost::any_cast<std::vector<unsigned char>>(this, &__p);
    v28 = objc_alloc_init(NSMutableDictionary);
    v29 = objc_alloc_init(NSMutableArray);
    v36 = __p;
    if (__p != v67)
    {
      do
      {
        std::to_string(&v65, *v36);
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          v37 = v65.__r_.__value_.__r.__words[0];
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        else
        {
          v37 = &v65;
        }

        v38 = [NSString stringWithUTF8String:v37];
        [v29 addObject:v38];

        v36 = (v36 + 1);
      }

      while (v36 != v67);
    }

LABEL_59:
    [v28 setObject:v29 forKey:@"String Values"];
    [v4 setValuesForKeysWithDictionary:v28];

    if (__p)
    {
      v67 = __p;
      operator delete(__p);
    }

    goto LABEL_61;
  }

  if (*this)
  {
    v41 = (*(**this + 16))(*this);
  }

  else
  {
  }

  v42 = v41[1];
  if (v42 == 0x800000010044410ALL || ((v42 & 0x800000010044410ALL & 0x8000000000000000) != 0) != __OFSUB__(v42, 0x800000010044410ALL) && !strcmp((v42 & 0x7FFFFFFFFFFFFFFFLL), (0x800000010044410ALL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    boost::any_cast<std::set<int>>(this, &__p);
    v43 = objc_alloc_init(NSMutableDictionary);
    v44 = objc_alloc_init(NSMutableArray);
    v45 = __p;
    if (__p != &v67)
    {
      do
      {
        std::to_string(&v65, *(v45 + 7));
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          v46 = v65.__r_.__value_.__r.__words[0];
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        else
        {
          v46 = &v65;
        }

        v47 = [NSString stringWithUTF8String:v46];
        [v44 addObject:v47];

        v48 = *(v45 + 1);
        if (v48)
        {
          do
          {
            v49 = v48;
            v48 = *v48;
          }

          while (v48);
        }

        else
        {
          do
          {
            v49 = *(v45 + 2);
            v25 = *v49 == v45;
            v45 = v49;
          }

          while (!v25);
        }

        v45 = v49;
      }

      while (v49 != &v67);
    }

    [v43 setObject:v44 forKey:@"String Values"];
    [v4 setValuesForKeysWithDictionary:v43];

    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&__p, v67);
    goto LABEL_61;
  }

  if (*this)
  {
    v50 = (*(**this + 16))(*this);
  }

  else
  {
  }

  v51 = v50[1];
  if (v51 == 0x8000000100444137 || ((v51 & 0x8000000100444137 & 0x8000000000000000) != 0) != __OFSUB__(v51, 0x8000000100444137) && !strcmp((v51 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100444137 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    boost::any_cast<std::map<std::string,boost::any>>(this, &__p);
    v52 = objc_alloc_init(NSMutableDictionary);
    v53 = __p;
    if (__p != &v67)
    {
      do
      {
        v54 = v53 + 4;
        if (SHIBYTE(v53[6].var0) < 0)
        {
          v54 = v54->var0;
        }

        v55 = [NSString stringWithUTF8String:v54];
        any_to_string(v53 + 7, &v65);
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v65;
        }

        else
        {
          v56 = v65.__r_.__value_.__r.__words[0];
        }

        v57 = [NSString stringWithUTF8String:v56];
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        [v52 setObject:v57 forKeyedSubscript:v55];

        var0 = v53[1].var0;
        if (var0)
        {
          do
          {
            v59 = var0;
            var0 = *var0;
          }

          while (var0);
        }

        else
        {
          do
          {
            v59 = v53[2].var0;
            v25 = *v59 == v53;
            v53 = v59;
          }

          while (!v25);
        }

        v53 = v59;
      }

      while (v59 != &v67);
    }

    [v4 setValuesForKeysWithDictionary:v52];

    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&__p, v67);
    goto LABEL_61;
  }

  if (*this)
  {
    v60 = (*(**this + 16))(*this);
  }

  else
  {
  }

  {
    boost::any_cast<std::list<std::map<std::string,boost::any>>>(this, &__p);
    v61 = objc_alloc_init(NSMutableDictionary);
    if (v67 != &__p)
    {
      *(&v65.__r_.__value_.__s + 23) = 8;
      strcpy(&v65, "Element:");
      std::to_string(&v64, 1);
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = &v64;
      }

      else
      {
        v62 = v64.__r_.__value_.__r.__words[0];
      }

      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v64.__r_.__value_.__l.__size_;
      }

      std::string::append(&v65, v62, size);
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      operator new();
    }

    [v4 setValuesForKeysWithDictionary:v61];

    std::list<std::map<std::string,boost::any>>::~list(&__p);
LABEL_61:
    v39 = v4;
    goto LABEL_62;
  }

  v39 = 0;
LABEL_62:

  objc_autoreleasePoolPop(v3);

  return v39;
}

void sub_10009BCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  std::list<std::map<std::string,boost::any>>::~list(va);
  _Unwind_Resume(a1);
}

void sub_10009BCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::list<std::map<std::string,boost::any>>::~list(va);

  _Unwind_Resume(a1);
}

void sub_10009BD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, char *a23)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&__p, a23);

  _Unwind_Resume(a1);
}

void sub_10009BEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char *a17)
{
  std::__tree<std::string>::destroy(&a16, a17);

  _Unwind_Resume(a1);
}

void sub_10009BEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char *a17)
{
  std::__tree<std::string>::destroy(&a16, a17);

  _Unwind_Resume(a1);
}

void sub_10009BEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&a16, a17);

  _Unwind_Resume(a1);
}

void sub_10009BF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  std::list<std::string>::~list(va);
  JUMPOUT(0x10009BFD8);
}

void sub_10009BF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *boost::any_cast<std::list<std::string>>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
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
  if (v6 != (0x8000000100444031 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v6, (0x8000000100444031 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    v9.__vftable = 0;
    std::bad_cast::bad_cast(&v9);
    v9.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  v7 = *a1 + 8;

  return std::list<std::string>::list(a2, v7);
}

uint64_t boost::any_cast<std::set<std::string>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (*(*v4 + 16))(v4);
  }

  else
  {
  }

  result = v5[1] & 0x7FFFFFFFFFFFFFFFLL;
  if (result != (0x8000000100444085 & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, (0x8000000100444085 & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      v13.__vftable = 0;
      std::bad_cast::bad_cast(&v13);
      v13.__vftable = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }
  }

  *(a2 + 8) = 0;
  v7 = *a1;
  *(a2 + 16) = 0;
  *a2 = a2 + 8;
  v8 = *(v7 + 8);
  v9 = (v7 + 16);
  if (v8 != (v7 + 16))
  {
    do
    {
      result = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a2, (a2 + 8), v8 + 4);
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
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
    }

    while (v11 != v9);
  }

  return result;
}

uint64_t boost::any_cast<nl::Data>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (*(*v4 + 16))(v4);
  }

  else
  {
  }

  result = v5[1] & 0x7FFFFFFFFFFFFFFFLL;
  if (result != (0x8000000100447D88 & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, (0x8000000100447D88 & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      v10.__vftable = 0;
      std::bad_cast::bad_cast(&v10);
      v10.__vftable = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }
  }

  v7 = *a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t boost::any_cast<std::vector<unsigned char>>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (*(*v4 + 16))(v4);
  }

  else
  {
  }

  result = v5[1] & 0x7FFFFFFFFFFFFFFFLL;
  if (result != (0x80000001004440E6 & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, (0x80000001004440E6 & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      v10.__vftable = 0;
      std::bad_cast::bad_cast(&v10);
      v10.__vftable = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }
  }

  v7 = *a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t boost::any_cast<std::set<int>>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (*(*v4 + 16))(v4);
  }

  else
  {
  }

  result = v5[1] & 0x7FFFFFFFFFFFFFFFLL;
  if (result != (0x800000010044410ALL & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, (0x800000010044410ALL & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      v14.__vftable = 0;
      std::bad_cast::bad_cast(&v14);
      v14.__vftable = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }
  }

  a2[1] = 0;
  v7 = *a1;
  a2[2] = 0;
  *a2 = a2 + 1;
  v8 = *(v7 + 8);
  v9 = (v7 + 16);
  if (v8 != (v7 + 16))
  {
    do
    {
      result = std::__tree<int>::__find_equal<int>(a2, a2 + 1, &v14, &v13, v8 + 7);
      if (!*result)
      {
        operator new();
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
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
    }

    while (v11 != v9);
  }

  return result;
}

uint64_t boost::any_cast<std::map<std::string,boost::any>>@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
  if (v6 != (0x8000000100444137 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v6, (0x8000000100444137 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    v9.__vftable = 0;
    std::bad_cast::bad_cast(&v9);
    v9.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>();
  }

  v7 = (*a1 + 8);

  return std::map<std::string,boost::any>::map[abi:ne200100](a2, v7);
}

uint64_t boost::any_cast<std::list<std::map<std::string,boost::any>>>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (*(*v4 + 16))(v4);
  }

  else
  {
  }

  result = v5[1] & 0x7FFFFFFFFFFFFFFFLL;
  if (result != (0x80000001004441B3 & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, (0x80000001004441B3 & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      v9.__vftable = 0;
      std::bad_cast::bad_cast(&v9);
      v9.__vftable = off_1004C1D50;
      boost::throw_exception<boost::bad_any_cast>();
    }
  }

  v7 = *a1;
  v8 = *a1 + 8;
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  if (*(v7 + 16) != v8)
  {
    operator new();
  }

  return result;
}

void sub_10009C96C(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__list_imp<std::map<std::string,boost::any>>::clear(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::list<std::map<std::string,boost::any>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy((v2 + 2), v2[3]);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

char *std::list<std::string>::~list(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

void std::__list_imp<std::string>::clear(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__list_imp<std::map<std::string,boost::any>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy((v2 + 2), v2[3]);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void boost::throw_exception<boost::bad_any_cast>()
{
  exception = __cxa_allocate_exception(0x38uLL);
  boost::wrapexcept<boost::bad_any_cast>::wrapexcept(exception);
}

void *std::list<std::string>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void sub_10009CC9C(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__list_imp<std::string>::clear(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::wrapexcept<boost::bad_any_cast>::wrapexcept(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = -1;
  *result = &off_1004C1CD8;
  *(result + 8) = off_1004C1D08;
  *(result + 16) = off_1004C1D30;
  return result;
}

std::bad_cast *boost::wrapexcept<boost::bad_any_cast>::~wrapexcept(std::bad_cast *a1)
{
  a1[2].__vftable = &off_1004C1570;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 + 1);
  return a1;
}

void boost::wrapexcept<boost::bad_any_cast>::rethrow(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  boost::wrapexcept<boost::bad_any_cast>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_any_cast>::~wrapexcept(std::bad_cast *a1)
{
  a1[2].__vftable = &off_1004C1570;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 + 1);

  operator delete();
}

void non-virtual thunk toboost::wrapexcept<boost::bad_any_cast>::~wrapexcept(std::bad_cast *a1)
{
  a1[1].__vftable = &off_1004C1570;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_cast + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_cast::~bad_cast(a1);
}

{
  a1[1].__vftable = &off_1004C1570;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_cast + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_cast::~bad_cast(a1);

  operator delete();
}

{
  a1->__vftable = &off_1004C1570;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 - 1);
}

{
  a1->__vftable = &off_1004C1570;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 - 1);

  operator delete();
}

void boost::bad_any_cast::~bad_any_cast(std::bad_cast *this)
{
  std::bad_cast::~bad_cast(this);

  operator delete();
}

__n128 boost::wrapexcept<boost::bad_any_cast>::wrapexcept(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &off_1004C1518;
  a1->n128_u64[1] = off_1004C1D50;
  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = &off_1004C1570;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[2];
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[2] = result;
  a1->n128_u64[0] = &off_1004C1CD8;
  a1->n128_u64[1] = off_1004C1D08;
  a1[1].n128_u64[0] = off_1004C1D30;
  return result;
}

uint64_t std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_10009D540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::string,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__tree_node<std::string,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

uint64_t std::map<std::string,boost::any>::map[abi:ne200100](uint64_t a1, const void ***a2)
{
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      if (!*std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, v3, &v11, &v10, v5 + 4))
      {
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__construct_node<std::pair<std::string const,boost::any> const&>();
      }

      v7 = v5[1];
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
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }

  return a1;
}

void boost::any::holder<std::map<std::string,boost::any>>::~holder(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(a1 + 8, *(a1 + 16));

  operator delete();
}

void postFollowUpNotification(void)
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(CTRFollowUpController);
  if (!v1)
  {
    v2 = log_get_logging_obg("com.apple.wpantund", "default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      postFollowUpNotification(v2);
    }
  }

  if ([(CTRFollowUpController *)v1 ctrUtilPostFollowUpItem:@"x-hw"])
  {
    v3 = log_get_logging_obg("com.apple.wpantund", "default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "postFollowUpNotification";
      v6 = 1024;
      v7 = 1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: FAULT detected, Posted Followup Notification : return val : %d", &v4, 0x12u);
    }
  }

  else
  {
    v3 = log_get_logging_obg("com.apple.wpantund", "default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      postFollowUpNotification(v3);
    }
  }

  objc_autoreleasePoolPop(v0);
}

void clearFollowUpNotification(void)
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(CTRFollowUpController);
  if (!v1)
  {
    v2 = log_get_logging_obg("com.apple.wpantund", "default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      clearFollowUpNotification(v2);
    }
  }

  [(CTRFollowUpController *)v1 ctrUtilClearFollowUpItem:@"x-hw"];

  objc_autoreleasePoolPop(v0);
}

void dskeychainRcp::printCFData(CFDataRef *this, const __CFData **a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v4 = logging_obg;
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      dskeychainRcp::printCFData();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  Length = CFDataGetLength(*this);
  BytePtr = CFDataGetBytePtr(*this);
  v7 = BytePtr;
  v8 = Length % 20;
  if (Length >= 20)
  {
    v9 = (BytePtr + 9);
    v10 = Length / 20;
    do
    {
      v11 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v11)
      {
        v12 = v11;
        if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(v9 - 9);
          v14 = *(v9 - 8);
          v15 = *(v9 - 7);
          v16 = *(v9 - 6);
          v17 = *(v9 - 5);
          v18 = *(v9 - 4);
          v19 = *(v9 - 3);
          v20 = *(v9 - 2);
          v21 = *(v9 - 1);
          v22 = *v9;
          v23 = v9[1];
          v24 = v9[2];
          v25 = v9[3];
          v26 = v9[4];
          v27 = v9[5];
          v28 = v9[6];
          v29 = v9[7];
          v30 = v9[8];
          v39 = v9[9];
          v40 = v9[10];
          *buf = 67113984;
          *v42 = v13;
          *&v42[4] = 1024;
          *&v42[6] = v14;
          LOWORD(v43) = 1024;
          *(&v43 + 2) = v15;
          HIWORD(v43) = 1024;
          v44 = v16;
          v45 = 1024;
          v46 = v17;
          v47 = 1024;
          v48 = v18;
          v49 = 1024;
          v50 = v19;
          v51 = 1024;
          v52 = v20;
          v53 = 1024;
          v54 = v21;
          v55 = 1024;
          v56 = v22;
          v57 = 1024;
          v58 = v23;
          v59 = 1024;
          v60 = v24;
          v61 = 1024;
          v62 = v25;
          v63 = 1024;
          v64 = v26;
          v65 = 1024;
          v66 = v27;
          v67 = 1024;
          v68 = v28;
          v69 = 1024;
          v70 = v29;
          v71 = 1024;
          v72 = v30;
          v73 = 1024;
          v74 = v39;
          v75 = 1024;
          v76 = v40;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, " %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u", buf, 0x7Au);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v42 = "com.apple.wpantund.ncp";
        *&v42[8] = 2080;
        v43 = "default";
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
      }

      v9 += 20;
      --v10;
    }

    while (v10);
  }

  if (v8 < 1)
  {
    goto LABEL_25;
  }

  v31 = &v7[20 * (Length / 20)];
  v32 = buf;
  v33 = v8;
  do
  {
    v34 = *v31++;
    sprintf(v32, "%u ", v34);
    v32 += 2;
    --v33;
  }

  while (v33);
  buf[2 * v8] = 0;
  v35 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v35)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
      v37 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v37)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }

LABEL_25:
    v37 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!v37)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v36 = v35;
  if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_25;
  }

  dskeychainRcp::printCFData();
  v37 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v37)
  {
LABEL_30:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    return;
  }

LABEL_26:
  v38 = v37;
  if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    dskeychainRcp::printCFData();
  }
}

void dskeychainRcp::GetDatasetAddDictionary(CFMutableDictionaryRef *this, __CFDictionary **a2)
{
  CFDictionaryAddValue(*this, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(*this, kSecAttrAccessGroup, @"com.apple.thread.dataset");
  CFDictionaryAddValue(*this, kSecAttrSynchronizable, kCFBooleanFalse);
  v3 = *this;

  CFDictionaryAddValue(v3, kSecAttrAccessible, kSecAttrAccessibleAlways);
}

void dskeychainRcp::GetDataSetMatchingQuery(CFMutableDictionaryRef *this, __CFDictionary **a2)
{
  CFDictionaryAddValue(*this, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(*this, kSecAttrAccessGroup, @"com.apple.thread.dataset");
  CFDictionaryAddValue(*this, kSecMatchLimit, kSecMatchLimitOne);
  CFDictionaryAddValue(*this, kSecReturnPersistentRef, kCFBooleanFalse);
  v3 = *this;

  CFDictionaryAddValue(v3, kSecReturnData, kCFBooleanTrue);
}

void dskeychainRcp::GetDataSetDeleteQuery(CFMutableDictionaryRef *this, __CFDictionary **a2)
{
  CFDictionaryAddValue(*this, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(*this, kSecAttrSynchronizable, kCFBooleanFalse);
  CFDictionaryAddValue(*this, kSecAttrAccessGroup, @"com.apple.thread.dataset");
  CFDictionaryAddValue(*this, kSecReturnPersistentRef, kCFBooleanFalse);
  v3 = *this;

  CFDictionaryAddValue(v3, kSecAttrAccessible, kSecAttrAccessibleAlways);
}

uint64_t dskeychainRcp::AddKeychainItem(CFDictionaryRef *this, __CFDictionary **a2)
{
  v2 = SecItemAdd(*this, 0);
  if (!v2)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v7 = logging_obg;
      if (syslog_is_the_mask_enabled(6))
      {
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
        result = 1;
        if (!v8)
        {
          return result;
        }

        buf = 67109120;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "dskeychain::AddKeychainItem: SecItemAdd SUCCESS: err=%d", &buf, 8u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    return 1;
  }

  if (v2 != -25299)
  {
    v9 = SecCopyErrorMessageString(v2, 0);
    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v10)
    {
      v11 = v10;
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        dskeychainRcp::AddKeychainItem();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    CFRelease(v9);
    v13 = 5;
    strcpy(v12, "Error");
    operator new();
  }

  v3 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v3)
  {
    v4 = v3;
    result = syslog_is_the_mask_enabled(3);
    if (result)
    {
      result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      if (result)
      {
        dskeychainRcp::AddKeychainItem();
        return 0;
      }
    }
  }

  else
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      [PowerEventHandler_Rcp init:];
      return 0;
    }
  }

  return result;
}

void sub_10009E488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      if ((a27 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a22);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

uint64_t dskeychainRcp::FindKeychainItem(CFDictionaryRef *this, CFTypeRef *a2, const void **a3)
{
  v4 = SecItemCopyMatching(*this, a2);
  if (v4)
  {
    v5 = SecCopyErrorMessageString(v4, 0);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v7 = logging_obg;
      if (syslog_is_the_mask_enabled(3))
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          dskeychainRcp::FindKeychainItem();
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    CFRelease(v5);
    return 0;
  }

  v8 = log_get_logging_obg("com.apple.threadradiod", "default");
  v9 = v8;
  if (!a2)
  {
    if (v8)
    {
      result = syslog_is_the_mask_enabled(3);
      if (!result)
      {
        return result;
      }

      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      dskeychainRcp::FindKeychainItem();
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

    return 0;
  }

  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    return 1;
  }

  if (!syslog_is_the_mask_enabled(6))
  {
    return 1;
  }

  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  result = 1;
  if (v10)
  {
    v12[0] = 67109120;
    v12[1] = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "dskeychain::FindKeychainItem: SecItemCopyMatching  SUCCESS:err = %d,", v12, 8u);
    return 1;
  }

  return result;
}

BOOL dskeychainRcp::DeleteKeychainItem(CFDictionaryRef *this, __CFDictionary **a2)
{
  v2 = SecItemDelete(*this);
  v3 = v2;
  if (v2)
  {
    v4 = SecCopyErrorMessageString(v2, 0);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v6 = logging_obg;
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        dskeychainRcp::DeleteKeychainItem();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    CFRelease(v4);
  }

  else
  {
    v7 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v7)
    {
      v8 = v7;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "dskeychain::DeleteKeychainItem: Keychain item deleted", v10, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  return v3 == 0;
}

uint64_t dskeychainRcp::AddDataSet(unsigned int a1, const UInt8 *a2, unsigned int a3)
{
  if (a1 < 2)
  {
    if (a3)
    {
      dskeychainRcp::DeleteDataSet(a1);
      v6 = CFDataCreate(0, a2, a3);
      v30 = v6;
      Length = CFDataGetLength(v6);
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        v9 = logging_obg;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = Length;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Input Data: CF Data len= %ld", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      dskeychainRcp::printCFData(&v30, v10);
      Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
      *buf = Mutable;
      CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
      CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, @"com.apple.thread.dataset");
      CFDictionaryAddValue(Mutable, kSecAttrSynchronizable, kCFBooleanFalse);
      CFDictionaryAddValue(Mutable, kSecAttrAccessible, kSecAttrAccessibleAlways);
      CFDictionaryAddValue(Mutable, kSecValueData, v6);
      v17 = log_get_logging_obg("com.apple.threadradiod", "default");
      v18 = v17;
      if (!a1)
      {
        if (v17)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *v29 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "dskeychain::AddDataSet: Adding Active DataSet", v29, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        CFDictionaryAddValue(Mutable, kSecAttrService, @"ThreadActiveDataSet");
        v22 = dskeychainRcp::AddKeychainItem(buf, v23);
        goto LABEL_53;
      }

      if (v17)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "dskeychain::AddDataSet: Adding Pending DataSet", v29, 2u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      CFDictionaryAddValue(Mutable, kSecAttrService, @"ThreadPendingDataSet");
      if (!dskeychainRcp::AddKeychainItem(buf, v19))
      {
        v22 = 0;
LABEL_53:
        CFRelease(v6);
        CFRelease(Mutable);
        return v22;
      }

      v20 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v20)
      {
        v21 = v20;
        if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          dskeychainRcp::AddDataSet();
          *v29 = 0;
          if (!SecItemPersistKeychainWritesAtHighPerformanceCost())
          {
            goto LABEL_50;
          }

          goto LABEL_44;
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
        *v29 = 0;
        if (!SecItemPersistKeychainWritesAtHighPerformanceCost())
        {
          goto LABEL_50;
        }

        goto LABEL_44;
      }

      *v29 = 0;
      if (!SecItemPersistKeychainWritesAtHighPerformanceCost())
      {
LABEL_50:
        if (*v29)
        {
          CFRelease(*v29);
        }

        else
        {
          v26 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v26)
          {
            v27 = v26;
            if (syslog_is_the_mask_enabled(6))
            {
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *v28 = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Pending dataset: cferror NULL", v28, 2u);
              }
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }
        }

        v22 = 1;
        goto LABEL_53;
      }

LABEL_44:
      v24 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v24)
      {
        v25 = v24;
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          dskeychainRcp::AddDataSet();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      goto LABEL_50;
    }

    v14 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v14)
    {
      v15 = v14;
      result = syslog_is_the_mask_enabled(3);
      if (result)
      {
        result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (result)
        {
          dskeychainRcp::AddDataSet();
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

LABEL_16:
    [PowerEventHandler_Rcp init:];
    return 0;
  }

  v11 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v11)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  v12 = v11;
  result = syslog_is_the_mask_enabled(6);
  if (result)
  {
    result = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 67109120;
      *&buf[4] = a1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "dskeychain::AddDataSet: Invalid add request on datasetType: %d", buf, 8u);
      return 0;
    }
  }

  return result;
}

uint64_t dskeychainRcp::DeleteDataSet(unsigned int a1)
{
  if (a1 < 2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    *buf = Mutable;
    CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
    CFDictionaryAddValue(Mutable, kSecAttrSynchronizable, kCFBooleanFalse);
    CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, @"com.apple.thread.dataset");
    CFDictionaryAddValue(Mutable, kSecReturnPersistentRef, kCFBooleanFalse);
    CFDictionaryAddValue(Mutable, kSecAttrAccessible, kSecAttrAccessibleAlways);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    v4 = logging_obg;
    if (a1)
    {
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(6))
        {
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "dskeychain::DeleteDataSet: Remove Pending DataSet", v11, 2u);
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v8 = @"ThreadPendingDataSet";
      goto LABEL_22;
    }

    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "dskeychain::DeleteDataSet: Remove Active DataSet", v11, 2u);
        v8 = @"ThreadActiveDataSet";
LABEL_22:
        CFDictionaryAddValue(Mutable, kSecAttrService, v8);
        v10 = dskeychainRcp::DeleteKeychainItem(buf, v9);
        CFRelease(Mutable);
        return v10;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
      v8 = @"ThreadActiveDataSet";
      goto LABEL_22;
    }

    v8 = @"ThreadActiveDataSet";
    goto LABEL_22;
  }

  v5 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v5)
  {
    v6 = v5;
    result = syslog_is_the_mask_enabled(6);
    if (result)
    {
      result = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (result)
      {
        *buf = 67109120;
        *&buf[4] = a1;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "dskeychain::DeleteDataSet: Invalid dataset delete request: %d", buf, 8u);
        return 0;
      }
    }
  }

  else
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      [PowerEventHandler_Rcp init:];
      return 0;
    }
  }

  return result;
}

uint64_t dskeychainRcp::FindDataSet(int a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  v13 = Mutable;
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, @"com.apple.thread.dataset");
  CFDictionaryAddValue(Mutable, kSecMatchLimit, kSecMatchLimitOne);
  CFDictionaryAddValue(Mutable, kSecReturnPersistentRef, kCFBooleanFalse);
  CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v4 = logging_obg;
  if (a1 == 1)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "dskeychain::FindDataSet: Reading Pending DataSet", buf, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v5 = @"ThreadPendingDataSet";
    goto LABEL_20;
  }

  if (!a1)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "dskeychain::FindDataSet: Reading Active DataSet", buf, 2u);
      }

      goto LABEL_16;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v5 = @"ThreadActiveDataSet";
      goto LABEL_20;
    }

    [PowerEventHandler_Rcp init:];
    v5 = @"ThreadActiveDataSet";
LABEL_20:
    CFDictionaryAddValue(Mutable, kSecAttrService, v5);
    *buf = 0;
    KeychainItem = dskeychainRcp::FindKeychainItem(&v13, buf, v6);
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    v9 = v8;
    if (KeychainItem)
    {
      if (v8)
      {
        if (syslog_is_the_mask_enabled(6))
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "dskeychain::FindDataSet: keychain item found", v11, 2u);
          }
        }

        goto LABEL_33;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v8)
      {
        if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          dskeychainRcp::FindDataSet();
        }

        goto LABEL_33;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        [PowerEventHandler_Rcp init:];
      }
    }

LABEL_33:
    CFRelease(Mutable);
    CFRelease(*buf);
    return KeychainItem;
  }

  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      dskeychainRcp::FindDataSet();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  CFRelease(Mutable);
  return 0;
}

uint64_t dskeychainRcp::FindAndGetDataSet(unsigned int a1, ot::MeshCoP::Dataset::Info *a2)
{
  if (a1 < 2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    v21 = Mutable;
    CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
    CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, @"com.apple.thread.dataset");
    CFDictionaryAddValue(Mutable, kSecMatchLimit, kSecMatchLimitOne);
    CFDictionaryAddValue(Mutable, kSecReturnPersistentRef, kCFBooleanFalse);
    CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    v6 = logging_obg;
    if (a1)
    {
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "dskeychain::FindAndGetDataSet: Reading Pending DataSet", buf, 2u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v9 = @"ThreadPendingDataSet";
      goto LABEL_24;
    }

    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "dskeychain::FindAndGetDataSet: Reading Active DataSet", buf, 2u);
        v9 = @"ThreadActiveDataSet";
LABEL_24:
        CFDictionaryAddValue(Mutable, kSecAttrService, v9);
        theData = 0;
        if (dskeychainRcp::FindKeychainItem(&v21, &theData, v12))
        {
          Length = CFDataGetLength(theData);
          BytePtr = CFDataGetBytePtr(theData);
          v15 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v15)
          {
            v16 = v15;
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v23 = Length;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "dskeychain::FindAndGetDataSet: keychainItem Data: CF Data len= %ld", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          dskeychainRcp::printCFData(&theData, v17);
          v10 = HostInterpreter::rcp_ot_dataset_update(HostInterpreter::sHostInterpreter, a1, BytePtr, Length, a2);
          CFRelease(Mutable);
          Mutable = theData;
        }

        else
        {
          v18 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v18)
          {
            v19 = v18;
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              dskeychainRcp::FindAndGetDataSet();
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          v10 = 0;
        }

        CFRelease(Mutable);
        return v10;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
      v9 = @"ThreadActiveDataSet";
      goto LABEL_24;
    }

    v9 = @"ThreadActiveDataSet";
    goto LABEL_24;
  }

  v7 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v7)
  {
    v8 = v7;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v23) = a1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "dskeychain::FindAndGetDataSet: Invalid dataset find request: 0x%x", buf, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return 0;
}

void XPCIPCAPI_v1_rcp::to_upper(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  v3 = a2;
  LODWORD(a2) = *(a1 + 23);
  if ((a2 & 0x80000000) == 0)
  {
    *&v3->__r_.__value_.__l.__data_ = *a1;
    v4 = *(a1 + 8);
    v3->__r_.__value_.__r.__words[2] = *(a1 + 16);
    a2 = a2;
    if (a2 < 0)
    {
      a2 = v4;
    }

    if (!a2)
    {
      return;
    }

LABEL_9:
    for (i = 0; i < v10; ++i)
    {
      if ((v3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = v3;
      }

      else
      {
        v7 = v3->__r_.__value_.__r.__words[0];
      }

      v8 = __toupper(v7->__r_.__value_.__s.__data_[i]);
      if ((v3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = v3;
      }

      else
      {
        v9 = v3->__r_.__value_.__r.__words[0];
      }

      v9->__r_.__value_.__s.__data_[i] = v8;
      v10 = *(a1 + 23);
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a1 + 8);
      }
    }

    return;
  }

  std::string::__init_copy_ctor_external(v3, *a1, *(a1 + 8));
  v5 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    goto LABEL_9;
  }
}

void sub_10009F968(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void XPCIPCAPI_v1_rcp::XPCIPCAPI_v1_rcp(XPCIPCAPI_v1_rcp *this, void *a2)
{
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v3 = a2[1];
  *(this + 4) = *a2;
  *(this + 5) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  XPCIPCAPI_v1_rcp::init_callback_tables(this);
  XPCIPCAPI_v1_rcp::init_supported_properties(this);
}

void sub_10009FAC8(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3, *(v1 + 56));
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](v2);
  v5 = *(v1 + 24);
  if (v5)
  {
    dispatch_release(v5);
  }

  std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::destroy(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void XPCIPCAPI_v1_rcp::init_callback_tables(XPCIPCAPI_v1_rcp *this)
{
  v23 = 8;
  strcpy(__p, "RouteAdd");
  v24 = __p;
  v2 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_route_add_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v2 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 11;
  strcpy(__p, "RouteRemove");
  v24 = __p;
  v3 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_route_remove_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v3 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 10;
  strcpy(__p, "ServiceAdd");
  v24 = __p;
  v4 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_service_add_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v4 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 13;
  strcpy(__p, "ServiceRemove");
  v24 = __p;
  v5 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_service_remove_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v5 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 13;
  strcpy(__p, "ConfigGateway");
  v24 = __p;
  v6 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_config_gateway_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v6 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 19;
  strcpy(__p, "UpdateAccessoryData");
  v24 = __p;
  v7 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_update_accessory_addr;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v7 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 7;
  strcpy(__p, "PropGet");
  v24 = __p;
  v8 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_prop_get_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v8 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 7;
  strcpy(__p, "PropSet");
  v24 = __p;
  v9 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_prop_set_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v9 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 11;
  strcpy(__p, "ThreadStart");
  v24 = __p;
  v10 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_thread_start_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v10 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 10;
  strcpy(__p, "ThreadStop");
  v24 = __p;
  v11 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_thread_stop_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v11 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 4;
  strcpy(__p, "Join");
  v24 = __p;
  v12 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_join_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v12 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 4;
  strcpy(__p, "Form");
  v24 = __p;
  v13 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_form_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v13 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 5;
  strcpy(__p, "Leave");
  v24 = __p;
  v14 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_leave_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v14 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 9;
  strcpy(__p, "HardReset");
  v24 = __p;
  v15 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_hard_reset_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v15 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 6;
  strcpy(__p, "Status");
  v24 = __p;
  v16 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_status_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v16 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 12;
  strcpy(__p, "NetScanStart");
  v24 = __p;
  v17 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_net_scan_start_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v17 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 15;
  strcpy(__p, "EnergyScanStart");
  v24 = __p;
  v18 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_energy_scan_start_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v18 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 17;
  strcpy(__p, "DiscoverScanStart");
  v24 = __p;
  v19 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_discover_scan_start_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v19 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 8;
  strcpy(__p, "OtCtlCmd");
  v24 = __p;
  v20 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_otctl_cmd_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v20 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }

  v23 = 4;
  strcpy(__p, "Peek");
  v24 = __p;
  v21 = std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v26 = 0;
  v27 = this;
  v24 = boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>>(boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::arg<3>>>)::stored_vtable + 1;
  v25 = XPCIPCAPI_v1_rcp::interface_peek_handler;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(&v24, (v21 + 7));
  if (v24 && (v24 & 1) == 0 && *v24)
  {
    (*v24)(&v25, &v25, 2);
  }

  if (v23 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1000A0890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void (**a16)(void, void, void))
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void XPCIPCAPI_v1_rcp::~XPCIPCAPI_v1_rcp(XPCIPCAPI_v1_rcp *this)
{
  v2 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "XPCIPCAPI_v1_rcp: Destructor", v6, 2u);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 48, *(this + 7));
      v4 = *(this + 5);
      if (!v4)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 48, *(this + 7));
    v4 = *(this + 5);
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 48, *(this + 7));
  v4 = *(this + 5);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

LABEL_13:
  v5 = *(this + 3);
  if (v5)
  {
    dispatch_release(v5);
  }

  std::__tree<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::function<void ()(void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::destroy(this, *(this + 1));
}

__n128 XPCIPCAPI_v1_rcp::get_case_corrected_property@<Q0>(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X8>)
{
  p_p = &__p;
  XPCIPCAPI_v1_rcp::to_upper(a2, &__p);
  v9 = *(a1 + 56);
  v7 = a1 + 56;
  v8 = v9;
  v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v9)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v12 = v7;
    do
    {
      v13 = *(v8 + 55);
      if (v13 >= 0)
      {
        v14 = *(v8 + 55);
      }

      else
      {
        v14 = *(v8 + 40);
      }

      if (v13 >= 0)
      {
        v15 = (v8 + 32);
      }

      else
      {
        v15 = *(v8 + 32);
      }

      if (size >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = size;
      }

      v17 = memcmp(v15, p_p, v16);
      v18 = v14 < size;
      if (v17)
      {
        v18 = v17 < 0;
      }

      v19 = !v18;
      if (v18)
      {
        v20 = 8;
      }

      else
      {
        v20 = 0;
      }

      if (v19)
      {
        v12 = v8;
      }

      v8 = *(v8 + v20);
    }

    while (v8);
    if (v12 != v7)
    {
      v21 = *(v12 + 55);
      v22 = v21 >= 0 ? *(v12 + 55) : *(v12 + 40);
      v23 = v21 >= 0 ? (v12 + 32) : *(v12 + 32);
      v24 = v22 >= size ? size : v22;
      v25 = memcmp(p_p, v23, v24);
      v26 = size < v22;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (!v26)
      {
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_40;
        }

LABEL_44:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v12 == v7)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }
  }

  v12 = v7;
  if (v10 < 0)
  {
    goto LABEL_44;
  }

LABEL_40:
  if (v12 != v7)
  {
LABEL_41:
    std::string::operator=(a2, (v12 + 56));
  }

LABEL_42:
  result = *&a2->__r_.__value_.__l.__data_;
  *a3 = *&a2->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&a2->__r_.__value_.__l + 2);
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void XPCIPCAPI_v1_rcp::property_changed(uint64_t a1, char *a2, any *a3)
{
  memset(&v41, 0, sizeof(v41));
  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "method", "property_changed");
  v7 = a2[23];
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 1);
  }

  if (v7)
  {
    v9 = *a2;
    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    do
    {
      v11 = *v10;
      if (v11 < 0)
      {
        v14 = __maskrune(*v10, 0x500uLL);
      }

      else
      {
        v14 = _DefaultRuneLocale.__runetype[v11] & 0x500;
      }

      if (v11 != 95 && v14 == 0)
      {
        if (v11 == 58)
        {
          LOBYTE(v11) = 47;
        }

        else
        {
          if (v11 != 46)
          {
            goto LABEL_9;
          }

          LOBYTE(v11) = 95;
        }
      }

      std::string::push_back(&v41, v11);
LABEL_9:
      ++v10;
      v12 = a2[23];
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 1);
      }
    }

    while (v10 != &v13[v12]);
  }

  std::operator+<char>();
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
    *__p = *buf;
    v40 = *&buf[16];
    v16.var0 = a3->var0;
    if (a3->var0)
    {
      goto LABEL_28;
    }

LABEL_30:
    goto LABEL_31;
  }

  *__p = *buf;
  v40 = *&buf[16];
  v16.var0 = a3->var0;
  if (!a3->var0)
  {
    goto LABEL_30;
  }

LABEL_28:
  v17 = (*(*v16.var0 + 16))(v16);
LABEL_31:
  v18 = v17[1];
  if (v18 != 0x80000001004441B3 && (((v18 & 0x80000001004441B3 & 0x8000000000000000) != 0) == __OFSUB__(v18, 0x80000001004441B3) || strcmp((v18 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004441B3 & 0x7FFFFFFFFFFFFFFFLL))))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        v21 = a2[23];
        v22 = *a2;
        v23 = SHIBYTE(v40);
        v24 = __p[0];
        any_to_string(a3, v37);
        v25 = __p;
        if (v23 < 0)
        {
          v25 = v24;
        }

        if (v21 >= 0)
        {
          v26 = a2;
        }

        else
        {
          v26 = v22;
        }

        *buf = 136315650;
        if (v38 >= 0)
        {
          v27 = v37;
        }

        else
        {
          v27 = v37[0];
        }

        *&buf[4] = v26;
        *&buf[12] = 2080;
        *&buf[14] = v25;
        *&buf[22] = 2080;
        v43 = v27;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "XPCIPCAPI_v1_rcp:PropChanged: Key %s, Path: %s - value: %s", buf, 0x20u);
        if (v38 < 0)
        {
          operator delete(v37[0]);
        }
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

  v19 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v19)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "valMap Received", buf, 2u);
  }

LABEL_56:
  if (v40 >= 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  xpc_dictionary_set_string(v6, "path", v28);
  if (a2[23] >= 0)
  {
    v29 = a2;
  }

  else
  {
    v29 = *a2;
  }

  xpc_dictionary_set_string(v6, "key", v29);
  append_to_xpc_object_by_value_type(v6, a3);
  v30 = _Block_copy(&__block_literal_global_4);
  v31 = *(a1 + 24);
  if (v31)
  {
    dispatch_retain(*(a1 + 24));
  }

  *buf = v30;
  *&buf[8] = v31;
  v32 = *(a1 + 32);
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *a2, *(a2 + 1));
  }

  else
  {
    v36 = *a2;
  }

  if (v6)
  {
    v35 = v6;
  }

  else
  {
    v6 = xpc_null_create();
    v35 = v6;
    if (!v6)
    {
      v6 = 0;
      v35 = xpc_null_create();
      if (v30)
      {
        goto LABEL_75;
      }

      goto LABEL_72;
    }
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    v35 = xpc_null_create();
    if (!v30)
    {
      goto LABEL_72;
    }

LABEL_75:
    aBlock = _Block_copy(v30);
    object = v31;
    if (!v31)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  xpc_retain(v6);
  if (v30)
  {
    goto LABEL_75;
  }

LABEL_72:
  aBlock = 0;
  object = v31;
  if (v31)
  {
LABEL_76:
    dispatch_retain(v31);
  }

LABEL_77:
  CtrXPC::Server::broadcastEvent(v32, &v36, &v35, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v35);
  v35 = 0;
  xpc_release(v6);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (*&buf[8])
  {
    dispatch_release(*&buf[8]);
  }

  if (*buf)
  {
    _Block_release(*buf);
  }

  if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_91:
    operator delete(v41.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_91;
  }
}

void sub_1000A6630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN16XPCIPCAPI_v1_rcp16property_changedERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN5boost3anyE_block_invoke(id a1)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v2 = logging_obg;
    if (syslog_is_the_mask_enabled(6))
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v3 = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "All Clients Rcvd the Property-Changed Event", v3, 2u);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

uint64_t dispatch::callback<void({block_pointer})(void)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void XPCIPCAPI_v1_rcp::received_beacon(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "method", "Beacon");
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (*v5)
  {
    xpc_dictionary_set_string(v4, "kWPANTUNDProperty_NetworkName", v5);
  }

  memcpyrev(&value, a2 + 24, 8uLL);
  if (value.i64[0])
  {
    memcpyrev(&value, a2 + 24, 8uLL);
    xpc_dictionary_set_uint64(v4, "kWPANTUNDProperty_NetworkXPANID", value.u64[0]);
  }

  xpc_dictionary_set_uint64(v4, "kWPANTUNDProperty_NetworkPANID", *(a2 + 32));
  if (*(a2 + 38))
  {
    xpc_dictionary_set_int64(v4, "kWPANTUNDProperty_NetworkNodeType", *(a2 + 38));
  }

  if (*(a2 + 34))
  {
    xpc_dictionary_set_uint64(v4, "kWPANTUNDProperty_NCPChannel", *(a2 + 34));
    v6 = *(a2 + 36);
    if (v6 != -128)
    {
      xpc_dictionary_set_int64(v4, "RSSI", v6);
    }

    xpc_dictionary_set_BOOL(v4, "kWPANTUNDProperty_NestLabs_NetworkAllowingJoin", *(a2 + 35));
  }

  memcpyrev(&value, a2 + 39, 8uLL);
  if (value.i64[0])
  {
    xpc_dictionary_set_data(v4, "kWPANTUNDProperty_NCPHardwareAddress", (a2 + 39), 8uLL);
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v8 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      value.i16[0] = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "XPCIPCAPI_v1_rcp: Sending Beacon", &value, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v9 = *(a1 + 32);
  v15 = 6;
  strcpy(__p, "Beacon");
  if (v4)
  {
    v13 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    v13 = v4;
    if (!v4)
    {
      v10 = xpc_null_create();
      v4 = 0;
      goto LABEL_29;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_30;
  }

  v10 = xpc_null_create();
LABEL_29:
  v13 = v10;
LABEL_30:
  aBlock = 0;
  object = 0;
  CtrXPC::Server::broadcastEvent(v9, __p, &v13, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v13);
  v13 = 0;
  xpc_release(v4);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000A6AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void XPCIPCAPI_v1_rcp::received_energy_scan_result(uint64_t a1, unsigned __int8 *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "method", "EnergyScanResult");
  v5 = *a2;
  v6 = a2[1];
  xpc_dictionary_set_int64(v4, "NCP:Channel", v5);
  xpc_dictionary_set_int64(v4, "RSSI", v6);
  v7 = *(a1 + 32);
  v13 = 16;
  strcpy(__p, "EnergyScanResult");
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    v11 = v4;
    if (!v4)
    {
      v8 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  v11 = v8;
LABEL_9:
  aBlock = 0;
  object = 0;
  CtrXPC::Server::broadcastEvent(v7, __p, &v11, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v11);
  v11 = 0;
  xpc_release(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1000A6C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a10);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void XPCIPCAPI_v1_rcp::otctl_output_event(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "method", "OtctlOutputEvent");
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  xpc_dictionary_set_string(v4, "line", v5);
  v6 = *(a1 + 32);
  v12 = 16;
  strcpy(__p, "OtctlOutputEvent");
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    v10 = v4;
    if (!v4)
    {
      v7 = xpc_null_create();
      v4 = 0;
      goto LABEL_11;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_12;
  }

  v7 = xpc_null_create();
LABEL_11:
  v10 = v7;
LABEL_12:
  aBlock = 0;
  object = 0;
  CtrXPC::Server::broadcastEvent(v6, __p, &v10, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v10);
  v10 = 0;
  xpc_release(v4);
  if (v12 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1000A6E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a10);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void XPCIPCAPI_v1_rcp::add_interface(XPCIPCAPI_v1_rcp *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "XPCIPCAPI_v1_rcp - Interface added ", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v4 = RcpHostContext::sRcpHostContext;
  v7 = 0u;
  v9[1] = 0;
  v9[2] = this;
  *buf = boost::function2<void,std::string const&,boost::any const&>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf2<void,XPCIPCAPI_v1_rcp,std::string const&,boost::any const&>,boost::_bi::list3<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>>>>(boost::_bi::bind_t<void,boost::_mfi::mf2<void,XPCIPCAPI_v1_rcp,std::string const&,boost::any const&>,boost::_bi::list3<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>>>)::stored_vtable + 1;
  v9[0] = XPCIPCAPI_v1_rcp::property_changed;
  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::swap(buf, &v7 + 8);
  if (*buf && (buf[0] & 1) == 0)
  {
    if (**buf)
    {
      (**buf)(v9, v9, 2);
    }
  }

  v5 = *(v4 + 184);
  v6 = *(v5 + 24);
  v9[19] = 10;
  v9[20] = buf;
  v9[21] = 0;
  v9[22] = v6;
  pthread_mutex_lock(v6);
  boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::nolock_connect(v5, buf);
}

void sub_1000A7760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void XPCIPCAPI_v1_rcp::message_handler(uint64_t a1, std::string::size_type a2, xpc_object_t xdict, uint64_t a4)
{
  v5 = xdict;
  string = xpc_dictionary_get_string(xdict, "method");
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v10 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a2;
      if (*(a2 + 23) < 0)
      {
        v11 = *a2;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = string;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "XPCIPCAPI_v1_rcp->MH: Inbound XPC message for method %s from %s", &buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v12 = strlen(string);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  v49 = a4;
  if (v12 >= 0x17)
  {
    operator new();
  }

  *(&buf.__r_.__value_.__s + 23) = v12;
  if (v12)
  {
    memmove(&buf, string, v12);
    buf.__r_.__value_.__s.__data_[v13] = 0;
    v18 = *(a1 + 8);
    v14 = a1 + 8;
    v15 = v18;
    v17 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (!v18)
    {
      goto LABEL_58;
    }
  }

  else
  {
    buf.__r_.__value_.__s.__data_[0] = 0;
    v16 = *(a1 + 8);
    v14 = a1 + 8;
    v15 = v16;
    v17 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (!v16)
    {
      goto LABEL_58;
    }
  }

  v48 = string;
  v19 = a2;
  v20 = v5;
  if ((v17 & 0x80u) == 0)
  {
    size = v17;
  }

  else
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  if ((v17 & 0x80u) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  v23 = v14;
  do
  {
    v24 = *(v15 + 55);
    if (v24 >= 0)
    {
      v25 = *(v15 + 55);
    }

    else
    {
      v25 = *(v15 + 40);
    }

    if (v24 >= 0)
    {
      v26 = (v15 + 32);
    }

    else
    {
      v26 = *(v15 + 32);
    }

    if (size >= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = size;
    }

    v28 = memcmp(v26, p_buf, v27);
    v29 = v25 < size;
    if (v28)
    {
      v29 = v28 < 0;
    }

    v30 = !v29;
    if (v29)
    {
      v31 = 8;
    }

    else
    {
      v31 = 0;
    }

    if (v30)
    {
      v23 = v15;
    }

    v15 = *(v15 + v31);
  }

  while (v15);
  v5 = v20;
  a2 = v19;
  string = v48;
  if (v23 != v14)
  {
    v32 = *(v23 + 55);
    if (v32 >= 0)
    {
      v33 = *(v23 + 55);
    }

    else
    {
      v33 = *(v23 + 40);
    }

    if (v32 >= 0)
    {
      v34 = (v23 + 32);
    }

    else
    {
      v34 = *(v23 + 32);
    }

    if (v33 >= size)
    {
      v35 = size;
    }

    else
    {
      v35 = v33;
    }

    v36 = memcmp(p_buf, v34, v35);
    v37 = size < v33;
    if (v36)
    {
      v37 = v36 < 0;
    }

    if (!v37)
    {
      if ((v17 & 0x80) != 0)
      {
        goto LABEL_59;
      }

LABEL_55:
      v38 = v49;
      if (v23 == v14)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }
  }

LABEL_58:
  v23 = v14;
  if ((v17 & 0x80) == 0)
  {
    goto LABEL_55;
  }

LABEL_59:
  operator delete(buf.__r_.__value_.__l.__data_);
  v38 = v49;
  if (v23 == v14)
  {
LABEL_60:
    v39 = strlen(string);
    if (v39 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v40 = v39;
    if (v39 >= 0x17)
    {
      operator new();
    }

    *(&buf.__r_.__value_.__s + 23) = v39;
    if (v39)
    {
      memmove(&buf, string, v39);
      buf.__r_.__value_.__s.__data_[v40] = 0;
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      buf.__r_.__value_.__s.__data_[0] = 0;
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_64:
        v56 = *a2;
        goto LABEL_79;
      }
    }

    std::string::__init_copy_ctor_external(&v56, *a2, *(a2 + 8));
LABEL_79:
    v44 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v55, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      v55 = buf;
    }

    v45 = *v38;
    if (*v38)
    {
      v45 = _Block_copy(v45);
      v46 = v45;
      v47 = *(v38 + 8);
      v53 = v45;
      v54 = v47;
      if (!v47)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v46 = 0;
      v47 = *(v38 + 8);
      v53 = 0;
      v54 = v47;
      if (!v47)
      {
LABEL_85:
        XPCIPCAPI_v1_rcp::CallbackOtctl_Helper(v45, "Cmd Not Supported in RCP", &v56, &v55, &v53);
        if (v47)
        {
          dispatch_release(v47);
        }

        if (v46)
        {
          _Block_release(v46);
        }

        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_91:
            if ((v44 & 0x80000000) == 0)
            {
              return;
            }

LABEL_97:
            v43 = buf.__r_.__value_.__r.__words[0];
            goto LABEL_98;
          }
        }

        else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }

        operator delete(v56.__r_.__value_.__l.__data_);
        if ((v44 & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_97;
      }
    }

    dispatch_retain(v47);
    goto LABEL_85;
  }

LABEL_56:
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, *a2, *(a2 + 8));
  }

  else
  {
    v52 = *a2;
  }

  v41 = *v38;
  if (*v38)
  {
    v41 = _Block_copy(v41);
  }

  v42 = *(v38 + 8);
  aBlock = v41;
  object = v42;
  if (v42)
  {
    dispatch_retain(v42);
  }

  boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()((v23 + 56), v5, &v52, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    v43 = v52.__r_.__value_.__r.__words[0];
LABEL_98:
    operator delete(v43);
  }
}

void sub_1000A7E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v34 & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v34 & 0x80) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v35 - 128));
  _Unwind_Resume(exception_object);
}

void XPCIPCAPI_v1_rcp::CallbackOtctl_Helper(uint64_t a1, const char *a2, uint64_t **a3, const char *a4, uint64_t a5)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v10 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a4;
      if (a4[23] < 0)
      {
        v11 = *a4;
      }

      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      *v18 = 136315394;
      *&v18[4] = v11;
      *&v18[12] = 2080;
      *&v18[14] = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "XPCIPCAPI_v1_rcp Sending XPC response for method %s to %s", v18, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (a4[23] < 0)
  {
    a4 = *a4;
  }

  xpc_dictionary_set_string(v12, "method", a4);
  xpc_dictionary_set_string(v13, "response", a2);
  if (v13)
  {
    v14 = *a5;
    if (*a5)
    {
LABEL_15:
      v15 = _Block_copy(v14);
      goto LABEL_18;
    }
  }

  else
  {
    v13 = xpc_null_create();
    v14 = *a5;
    if (*a5)
    {
      goto LABEL_15;
    }
  }

  v15 = 0;
LABEL_18:
  v16 = *(a5 + 8);
  *v18 = _NSConcreteStackBlock;
  *&v18[8] = 1174405120;
  *&v18[16] = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ENS1_6objectEEEEvDpT__block_invoke;
  v19 = &__block_descriptor_tmp_194;
  if (v15)
  {
    v17 = _Block_copy(v15);
    v22 = 0;
    aBlock = v17;
    object = v13;
    if (v13)
    {
LABEL_20:
      xpc_retain(v13);
      goto LABEL_23;
    }
  }

  else
  {
    v22 = 0;
    aBlock = 0;
    object = v13;
    if (v13)
    {
      goto LABEL_20;
    }
  }

  object = xpc_null_create();
LABEL_23:
  dispatch_async(v16, v18);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v13);
}

void sub_1000A813C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void boost::function3<void,void *,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>::operator()(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (!*a1)
  {
    v6 = std::runtime_error::runtime_error(&v10, "call to empty boost::function");
    v10.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a3;
  v9 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *object = *a4;
  *__p = v5;
  *a4 = 0;
  *(a4 + 8) = 0;
  v4(a1 + 1, a2, __p, object);
  if (object[1])
  {
    dispatch_release(object[1]);
  }

  if (object[0])
  {
    _Block_release(object[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000A8258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void XPCIPCAPI_v1_rcp::CallbackWithStatus_Helper(uint64_t a1, int a2, uint64_t **a3, const char *a4, uint64_t a5)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v10 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a4;
      if (a4[23] < 0)
      {
        v11 = *a4;
      }

      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      *v18 = 136315650;
      *&v18[4] = v11;
      *&v18[12] = 2080;
      *&v18[14] = a3;
      *&v18[22] = 1024;
      LODWORD(v19) = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "XPCIPCAPI_v1_rcp Sending XPC response for method %s to %s, ret : %d", v18, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (*a5 && *(a5 + 8))
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = v12;
    if (a4[23] < 0)
    {
      a4 = *a4;
    }

    xpc_dictionary_set_string(v12, "method", a4);
    xpc_dictionary_set_int64(v13, "ret", a2);
    if (v13)
    {
      v14 = *a5;
      if (*a5)
      {
LABEL_17:
        v15 = _Block_copy(v14);
        goto LABEL_20;
      }
    }

    else
    {
      v13 = xpc_null_create();
      v14 = *a5;
      if (*a5)
      {
        goto LABEL_17;
      }
    }

    v15 = 0;
LABEL_20:
    v16 = *(a5 + 8);
    *v18 = _NSConcreteStackBlock;
    *&v18[8] = 1174405120;
    *&v18[16] = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ENS1_6objectEEEEvDpT__block_invoke;
    v19 = &__block_descriptor_tmp_194;
    if (v15)
    {
      v17 = _Block_copy(v15);
      v22 = 0;
      aBlock = v17;
      object = v13;
      if (v13)
      {
LABEL_22:
        xpc_retain(v13);
LABEL_25:
        dispatch_async(v16, v18);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v15)
        {
          _Block_release(v15);
        }

        xpc_release(v13);
        return;
      }
    }

    else
    {
      v22 = 0;
      aBlock = 0;
      object = v13;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    object = xpc_null_create();
    goto LABEL_25;
  }
}

void sub_1000A84FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void XPCIPCAPI_v1_rcp::CallbackWithStatus2_Helper(uint64_t a1, int a2, uint64_t **a3, const char *a4, const char *a5, uint64_t a6)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v12 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = a4;
      if (a4[23] < 0)
      {
        v13 = *a4;
      }

      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      *v20 = 136315394;
      *&v20[4] = v13;
      *&v20[12] = 2080;
      *&v20[14] = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "XPCIPCAPI_v1_rcp Sending XPC response for method %s to %s", v20, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (*a6 && *(a6 + 8))
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (a4[23] < 0)
    {
      a4 = *a4;
    }

    xpc_dictionary_set_string(v14, "method", a4);
    if (a5[23] < 0)
    {
      a5 = *a5;
    }

    xpc_dictionary_set_string(v15, "property_name", a5);
    xpc_dictionary_set_int64(v15, "ret", a2);
    if (v15)
    {
      v16 = *a6;
      if (*a6)
      {
LABEL_19:
        v17 = _Block_copy(v16);
        goto LABEL_22;
      }
    }

    else
    {
      v15 = xpc_null_create();
      v16 = *a6;
      if (*a6)
      {
        goto LABEL_19;
      }
    }

    v17 = 0;
LABEL_22:
    v18 = *(a6 + 8);
    *v20 = _NSConcreteStackBlock;
    *&v20[8] = 1174405120;
    *&v20[16] = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ENS1_6objectEEEEvDpT__block_invoke;
    v21 = &__block_descriptor_tmp_194;
    if (v17)
    {
      v19 = _Block_copy(v17);
      v24 = 0;
      aBlock = v19;
      object = v15;
      if (v15)
      {
LABEL_24:
        xpc_retain(v15);
LABEL_27:
        dispatch_async(v18, v20);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v17)
        {
          _Block_release(v17);
        }

        xpc_release(v15);
        return;
      }
    }

    else
    {
      v24 = 0;
      aBlock = 0;
      object = v15;
      if (v15)
      {
        goto LABEL_24;
      }
    }

    object = xpc_null_create();
    goto LABEL_27;
  }
}

void sub_1000A87C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void XPCIPCAPI_v1_rcp::CallbackWithStatusArg1_Helper(uint64_t a1, int a2, any *a3, char *a4, const char *a5, const char *a6, const void **a7)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v14 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = a5;
      if (a5[23] < 0)
      {
        v15 = *a5;
        v16 = a6;
        if ((a6[23] & 0x80000000) == 0)
        {
LABEL_6:
          if ((a4[23] & 0x80000000) == 0)
          {
LABEL_7:
            *v24 = 136315650;
            *&v24[4] = v15;
            *&v24[12] = 2080;
            *&v24[14] = v16;
            *&v24[22] = 2080;
            v25 = a4;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "WPANTUND_v1 Sending XPC response for method %s for property %s to %s", v24, 0x20u);
            goto LABEL_10;
          }

LABEL_42:
          a4 = *a4;
          goto LABEL_7;
        }
      }

      else
      {
        v16 = a6;
        if ((a6[23] & 0x80000000) == 0)
        {
          goto LABEL_6;
        }
      }

      v16 = *a6;
      if ((a4[23] & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_42;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

LABEL_10:
  if (!*a7 || !a7[1])
  {
    return;
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v17;
  if (a5[23] < 0)
  {
    a5 = *a5;
  }

  xpc_dictionary_set_string(v17, "method", a5);
  if (a6[23] < 0)
  {
    a6 = *a6;
  }

  xpc_dictionary_set_string(v18, "property_name", a6);
  if (a3->var0)
  {
    v19 = 0;
  }

  else
  {
    v19 = 17;
  }

  if (a2)
  {
    v19 = a2;
  }

  xpc_dictionary_set_int64(v18, "ret", v19);
  if (!a3->var0)
  {
    operator new();
  }

  append_to_xpc_object_by_value_type(v18, a3);
  if (v18)
  {
    v20 = *a7;
    if (*a7)
    {
LABEL_26:
      v21 = _Block_copy(v20);
      goto LABEL_29;
    }
  }

  else
  {
    v18 = xpc_null_create();
    v20 = *a7;
    if (*a7)
    {
      goto LABEL_26;
    }
  }

  v21 = 0;
LABEL_29:
  v22 = a7[1];
  *v24 = _NSConcreteStackBlock;
  *&v24[8] = 1174405120;
  *&v24[16] = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ENS1_6objectEEEEvDpT__block_invoke;
  v25 = &__block_descriptor_tmp_194;
  if (!v21)
  {
    v28 = 0;
    aBlock = 0;
    object = v18;
    if (v18)
    {
      goto LABEL_31;
    }

LABEL_33:
    object = xpc_null_create();
    goto LABEL_34;
  }

  v23 = _Block_copy(v21);
  v28 = 0;
  aBlock = v23;
  object = v18;
  if (!v18)
  {
    goto LABEL_33;
  }

LABEL_31:
  xpc_retain(v18);
LABEL_34:
  dispatch_async(v22, v24);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  xpc_release(v18);
}

void sub_1000A8B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void XPCIPCAPI_v1_rcp::CallbackWithStatusArg2_Helper(uint64_t a1, int a2, any *a3, uint64_t **a4, const char *a5, uint64_t a6)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v12 = logging_obg;
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = a5;
      if (a5[23] < 0)
      {
        v13 = *a5;
      }

      if (*(a4 + 23) < 0)
      {
        a4 = *a4;
      }

      *v21 = 136315394;
      *&v21[4] = v13;
      *&v21[12] = 2080;
      *&v21[14] = a4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "XPCIPCAPI_v1_rcp Sending XPC response for method %s to %s", v21, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (*a6 && *(a6 + 8))
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (a5[23] < 0)
    {
      a5 = *a5;
    }

    xpc_dictionary_set_string(v14, "method", a5);
    if (a3->var0)
    {
      v16 = 0;
    }

    else
    {
      v16 = 17;
    }

    if (a2)
    {
      v16 = a2;
    }

    xpc_dictionary_set_int64(v15, "ret", v16);
    if (!a3->var0)
    {
      operator new();
    }

    append_to_xpc_object_by_value_type(v15, a3);
    if (v15)
    {
      v17 = *a6;
      if (*a6)
      {
LABEL_25:
        v18 = _Block_copy(v17);
        goto LABEL_28;
      }
    }

    else
    {
      v15 = xpc_null_create();
      v17 = *a6;
      if (*a6)
      {
        goto LABEL_25;
      }
    }

    v18 = 0;
LABEL_28:
    v19 = *(a6 + 8);
    *v21 = _NSConcreteStackBlock;
    *&v21[8] = 1174405120;
    *&v21[16] = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ENS1_6objectEEEEvDpT__block_invoke;
    v22 = &__block_descriptor_tmp_194;
    if (v18)
    {
      v20 = _Block_copy(v18);
      v25 = 0;
      aBlock = v20;
      object = v15;
      if (v15)
      {
LABEL_30:
        xpc_retain(v15);
LABEL_33:
        dispatch_async(v19, v21);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v18)
        {
          _Block_release(v18);
        }

        xpc_release(v15);
        return;
      }
    }

    else
    {
      v25 = 0;
      aBlock = 0;
      object = v15;
      if (v15)
      {
        goto LABEL_30;
      }
    }

    object = xpc_null_create();
    goto LABEL_33;
  }
}

void sub_1000A8EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void XPCIPCAPI_v1_rcp::status_response_helper(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!*a4 || !*(a4 + 8))
  {
    return;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v7, "ret", a2);
  if (*(a3 + 23) < 0)
  {
    xpc_dictionary_set_string(v7, "method", *a3);
    if (v7)
    {
LABEL_5:
      *v18 = 0;
      v8 = xpc_array_create(0, 0);
      v17 = 0;
      time(&v17);
      v9 = ctime(&v17);
      v9[strcspn(v9, "\n")] = 0;
      XPCHelpers::xpc_append_dictionary(v8, "Status at Time", 0xA, v9, v10);
      RcpHostContext::get_rcp_state(RcpHostContext::sRcpHostContext, &block);
      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        if (block.__r_.__value_.__l.__size_)
        {
          p_block = block.__r_.__value_.__r.__words[0];
        }

        else
        {
          p_block = "uninitialized";
        }
      }

      else if (*(&block.__r_.__value_.__s + 23))
      {
        p_block = &block;
      }

      else
      {
        p_block = "uninitialized";
      }

      XPCHelpers::xpc_append_dictionary(v8, "RCP:State", 0xA, p_block, v11);
      XPCHelpers::xpc_append_dictionary(v8, "Daemon:Enabled", 0xA, "true", v14);
      getSystemUptimeInSec();
      operator new();
    }
  }

  else
  {
    xpc_dictionary_set_string(v7, "method", a3);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v13 = xpc_null_create();
  if (*a4)
  {
    v15 = _Block_copy(*a4);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + 8);
  block.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
  block.__r_.__value_.__l.__size_ = 1174405120;
  block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ENS1_6objectEEEEvDpT__block_invoke;
  v20 = &__block_descriptor_tmp_194;
  if (!v15)
  {
    v23 = 0;
    aBlock = 0;
    object = v13;
    if (v13)
    {
      goto LABEL_20;
    }

LABEL_22:
    object = xpc_null_create();
    goto LABEL_23;
  }

  v23 = 0;
  aBlock = _Block_copy(v15);
  object = v13;
  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_20:
  xpc_retain(v13);
LABEL_23:
  dispatch_async(v16, &block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v13);
}

void XPCIPCAPI_v1_rcp::status_offline_response_helper(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!*a4 || !*(a4 + 8))
  {
    return;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v7, "ret", a2);
  if (*(a3 + 23) < 0)
  {
    xpc_dictionary_set_string(v7, "method", *a3);
    if (v7)
    {
LABEL_5:
      *v18 = 0;
      v8 = xpc_array_create(0, 0);
      v17 = 0;
      time(&v17);
      v9 = ctime(&v17);
      v9[strcspn(v9, "\n")] = 0;
      XPCHelpers::xpc_append_dictionary(v8, "Status at Time", 0xA, v9, v10);
      RcpHostContext::get_rcp_state(RcpHostContext::sRcpHostContext, &block);
      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        if (block.__r_.__value_.__l.__size_)
        {
          p_block = block.__r_.__value_.__r.__words[0];
        }

        else
        {
          p_block = "uninitialized";
        }
      }

      else if (*(&block.__r_.__value_.__s + 23))
      {
        p_block = &block;
      }

      else
      {
        p_block = "uninitialized";
      }

      XPCHelpers::xpc_append_dictionary(v8, "RCP:State", 0xA, p_block, v11);
      XPCHelpers::xpc_append_dictionary(v8, "Daemon:Enabled", 0xA, "true", v14);
      getSystemUptimeInSec();
      operator new();
    }
  }

  else
  {
    xpc_dictionary_set_string(v7, "method", a3);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v13 = xpc_null_create();
  if (*a4)
  {
    v15 = _Block_copy(*a4);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + 8);
  block.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
  block.__r_.__value_.__l.__size_ = 1174405120;
  block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ENS1_6objectEEEEvDpT__block_invoke;
  v20 = &__block_descriptor_tmp_194;
  if (!v15)
  {
    v23 = 0;
    aBlock = 0;
    object = v13;
    if (v13)
    {
      goto LABEL_20;
    }

LABEL_22:
    object = xpc_null_create();
    goto LABEL_23;
  }

  v23 = 0;
  aBlock = _Block_copy(v15);
  object = v13;
  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_20:
  xpc_retain(v13);
LABEL_23:
  dispatch_async(v16, &block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v13);
}

void XPCIPCAPI_v1_rcp::interface_otctl_cmd_handler(int a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "method");
  v4 = strlen(string);
  if (v4 <= 0x7FFFFFFFFFFFFFF7)
  {
    v5 = v4;
    if (v4 < 0x17)
    {
      v12 = v4;
      if (v4)
      {
        memmove(&__dst, string, v4);
      }

      *(&__dst + v5) = 0;
      v6 = xpc_dictionary_get_string(xdict, "otctl_cmd");
      v7 = strlen(v6);
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        v8 = v7;
        if (v7 < 0x17)
        {
          v10 = v7;
          if (v7)
          {
            memmove(&v9, v6, v7);
          }

          *(&v9 + v8) = 0;
          operator new();
        }

        operator new();
      }

      std::string::__throw_length_error[abi:ne200100]();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_1000AB338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 0x80) == 0)
    {
LABEL_3:
      if (*(v25 - 97) < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((v24 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v25 - 144));
  if (*(v25 - 97) < 0)
  {
LABEL_4:
    operator delete(*(v25 - 120));
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

void sub_1000AB404()
{
  if ((*(v0 - 97) & 0x80000000) == 0)
  {
    JUMPOUT(0x1000AB3FCLL);
  }

  JUMPOUT(0x1000AB398);
}

void boost::bind<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>,XPCIPCAPI_v1_rcp*,boost::arg<1>,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, std::string *a7@<X8>)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a4, *(a4 + 8));
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = *a4;
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v20 = *a5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v20, *a5, *(a5 + 8));
LABEL_6:
  v13 = *a6;
  if (*a6)
  {
    v13 = _Block_copy(v13);
  }

  v14 = *(a6 + 8);
  v18 = v13;
  v19 = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::list5(&v22, a3, &v21, &v20, &v18);
  a7->__r_.__value_.__r.__words[0] = a1;
  a7->__r_.__value_.__l.__size_ = a2;
  a7->__r_.__value_.__r.__words[2] = v22;
  if (SHIBYTE(v24) < 0)
  {
    std::string::__init_copy_ctor_external(a7 + 1, v23, *(&v23 + 1));
  }

  else
  {
    *&a7[1].__r_.__value_.__l.__data_ = v23;
    a7[1].__r_.__value_.__r.__words[2] = v24;
  }

  if (SHIBYTE(v26) < 0)
  {
    std::string::__init_copy_ctor_external(a7 + 2, __p, *(&__p + 1));
  }

  else
  {
    *&a7[2].__r_.__value_.__l.__data_ = __p;
    a7[2].__r_.__value_.__r.__words[2] = v26;
  }

  v15 = aBlock;
  if (aBlock)
  {
    v15 = _Block_copy(aBlock);
  }

  v16 = object;
  a7[3].__r_.__value_.__r.__words[0] = v15;
  a7[3].__r_.__value_.__l.__size_ = v16;
  if (v16)
  {
    dispatch_retain(v16);
    if (object)
    {
      dispatch_release(object);
    }
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
LABEL_25:
      v17 = v19;
      if (!v19)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v23);
  v17 = v19;
  if (v19)
  {
LABEL_26:
    dispatch_release(v17);
  }

LABEL_27:
  if (v18)
  {
    _Block_release(v18);
  }

  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_36:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_36;
  }
}

void sub_1000AB614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (*(v24 + 47) < 0)
  {
    operator delete(*(v24 + 24));
  }

  boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::~list5(&a24);
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a18);
  _Unwind_Resume(a1);
}

void boost::function<void ()(char const*)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(&v3, (a2 + 1));
  boost::function<void ()(char const*)>::function<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(v4, &v2);
}

void sub_1000AB780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

uint64_t boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 24));
  return a1;
}

void XPCIPCAPI_v1_rcp::interface_status_handler(int a1, xpc_object_t xdict, uint64_t **a3, uint64_t a4)
{
  string = xpc_dictionary_get_string(xdict, "method");
  v7 = strlen(string);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v7;
  if (v7)
  {
    memmove(&__dst, string, v7);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      *buf = 136315394;
      *&buf[4] = string;
      *&buf[12] = 2080;
      *&buf[14] = a3;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "XPCIPCAPI_v1_rcp Handling %s method handler for %s", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  RcpHostContext::get_rcp_state(RcpHostContext::sRcpHostContext, buf);
  if (v25 < 0)
  {
    if (*&buf[8] == 13 && **buf == 0x616974696E696E75 && *(*buf + 5) == 0x64657A696C616974)
    {
      goto LABEL_37;
    }

    if (*&buf[8] != 7)
    {
      goto LABEL_36;
    }

    v12 = *buf;
  }

  else
  {
    if (v25 != 7)
    {
      if (v25 != 13)
      {
        goto LABEL_36;
      }

      if (*buf != 0x616974696E696E75 || *&buf[5] != 0x64657A696C616974)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    v12 = buf;
  }

  v13 = *v12;
  v14 = *(v12 + 3);
  if (v13 != 1818650223 || v14 != 1701734764)
  {
LABEL_36:
    operator new();
  }

LABEL_37:
  v16 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = __dst;
  }

  v17 = *a4;
  if (*a4)
  {
    v17 = _Block_copy(v17);
    v18 = v17;
    v19 = *(a4 + 8);
    v20 = v17;
    v21 = v19;
    if (!v19)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v18 = 0;
  v19 = *(a4 + 8);
  v20 = 0;
  v21 = v19;
  if (v19)
  {
LABEL_47:
    dispatch_retain(v19);
  }

LABEL_48:
  XPCIPCAPI_v1_rcp::status_offline_response_helper(v17, 0, &v22, &v20);
  if (v19)
  {
    dispatch_release(v19);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if ((v25 & 0x80000000) == 0)
  {
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_43:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(*buf);
  if (v16 < 0)
  {
    goto LABEL_43;
  }
}

void sub_1000ABC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (*(v33 - 97) < 0)
  {
    operator delete(*(v33 - 120));
  }

  _Unwind_Resume(exception_object);
}

void boost::bind<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>,XPCIPCAPI_v1_rcp*,boost::arg<1>,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X8>)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a4, *(a4 + 8));
    v11 = *a5;
    if (!*a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = *a4;
  v11 = *a5;
  if (*a5)
  {
LABEL_5:
    v11 = _Block_copy(v11);
  }

LABEL_6:
  v12 = *(a5 + 8);
  v15 = v11;
  v16 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::list4(&v18, a3, &v17, &v15);
  a6->__r_.__value_.__r.__words[0] = a1;
  a6->__r_.__value_.__l.__size_ = a2;
  a6->__r_.__value_.__r.__words[2] = v18;
  if (SHIBYTE(v20) < 0)
  {
    std::string::__init_copy_ctor_external(a6 + 1, __p, *(&__p + 1));
  }

  else
  {
    *&a6[1].__r_.__value_.__l.__data_ = __p;
    a6[1].__r_.__value_.__r.__words[2] = v20;
  }

  v13 = aBlock;
  if (aBlock)
  {
    v13 = _Block_copy(aBlock);
  }

  v14 = object;
  a6[2].__r_.__value_.__r.__words[0] = v13;
  a6[2].__r_.__value_.__l.__size_ = v14;
  if (v14)
  {
    dispatch_retain(v14);
    if (object)
    {
      dispatch_release(object);
    }
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1000ABEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::~list4(&a18);
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::function<void ()(int)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 3), *(a2 + 4));
    v3 = *(a2 + 6);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *(a2 + 24);
    v3 = *(a2 + 6);
    __p.__r_.__value_.__r.__words[2] = *(a2 + 5);
    if (!v3)
    {
LABEL_6:
      v4 = *(a2 + 7);
      aBlock = v3;
      object = v4;
      if (v4)
      {
        dispatch_retain(v4);
      }

      boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(v10, &v5);
    }
  }

  v3 = _Block_copy(v3);
  goto LABEL_6;
}

void sub_1000AC010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

uint64_t boost::_bi::bind_t<void,boost::_mfi::mf3<void,XPCIPCAPI_v1_rcp,int,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list4<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1000AC648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a40 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a35);
  goto LABEL_6;
}

void boost::function<void ()(int)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage5<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage5(&v3, (a2 + 1));
  boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(v4, &v2);
}

void sub_1000AC7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf4<void,XPCIPCAPI_v1_rcp,char const*,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list5<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void sub_1000ACD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000AD434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a41 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a41 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a36);
  goto LABEL_6;
}

void sub_1000ADAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a40 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a35);
  goto LABEL_6;
}

void sub_1000AE7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a31 < 0)
  {
    operator delete(__p);
    if ((*(v32 - 169) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v32 - 169) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v32 - 192));
  goto LABEL_6;
}

void XPCIPCAPI_v1_rcp::interface_update_accessory_addr()
{
  operator new();
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000AEFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a41 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a41 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a36);
  goto LABEL_6;
}

void XPCIPCAPI_v1_rcp::interface_prop_get_handler()
{
  memset(&v0, 0, sizeof(v0));
  operator new();
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000AFD38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void boost::bind<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>,XPCIPCAPI_v1_rcp*,boost::arg<1>,boost::arg<2>,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a4, *(a4 + 8));
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = *a4;
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v21 = *a5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v21, *a5, *(a5 + 8));
LABEL_6:
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a6, *(a6 + 8));
  }

  else
  {
    v20 = *a6;
  }

  v15 = *a7;
  if (*a7)
  {
    v15 = _Block_copy(v15);
  }

  v16 = *(a7 + 8);
  v18 = v15;
  v19 = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::list7(v23, a3, &v22, &v21, &v20, &v18);
  *a8 = a1;
  a8[1] = a2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7((a8 + 2), v23);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v29 < 0)
  {
    operator delete(__p);
    if ((v27 & 0x80000000) == 0)
    {
LABEL_19:
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_30;
    }
  }

  else if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v26);
  if ((v25 & 0x80000000) == 0)
  {
LABEL_20:
    v17 = v19;
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_30:
  operator delete(v24);
  v17 = v19;
  if (v19)
  {
LABEL_21:
    dispatch_release(v17);
  }

LABEL_22:
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_34:
      operator delete(v22.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_34;
  }
}

void sub_1000B01D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

void boost::function<void ()(int,boost::any const&)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v3, (a2 + 1));
  boost::function<void ()(int,boost::any const&)>::function<boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(v4, &v2);
}

void sub_1000B0364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

uint64_t boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    _Block_release(v3);
  }

  if ((*(a1 + 95) & 0x80000000) == 0)
  {
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

  operator delete(*(a1 + 72));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*(a1 + 24));
  return a1;
}

void sub_1000B0BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::function<void ()(int)>::operator=<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  boost::_bi::storage7<boost::_bi::value<XPCIPCAPI_v1_rcp *>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>::storage7(&v3, (a2 + 1));
  boost::function<void ()(int)>::function<boost::_bi::bind_t<void,boost::_mfi::mf5<void,XPCIPCAPI_v1_rcp,int,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list6<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>>(v4, &v2);
}

void sub_1000B0E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::function<void ()(std::string const&,boost::any const&)>::~function((v9 - 48));
  boost::_bi::bind_t<void,boost::_mfi::mf6<void,XPCIPCAPI_v1_rcp,int,boost::any const&,std::string,std::string,std::string,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>,boost::_bi::list7<boost::_bi::value<XPCIPCAPI_v1_rcp*>,boost::arg<1>,boost::arg<2>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<std::string>,boost::_bi::value<dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>>>>::~bind_t(&a9);
  _Unwind_Resume(a1);
}

void XPCIPCAPI_v1_rcp::interface_thread_start_handler(int a1, xpc_object_t xdict, uint64_t *a3)
{
  string = xpc_dictionary_get_string(xdict, "method");
  v5 = strlen(string);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      v10 = v5;
      if (v5)
      {
        memmove(&__dst, string, v5);
      }

      *(&__dst + v6) = 0;
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v8 = a3;
          if (*(a3 + 23) < 0)
          {
            v8 = *a3;
          }

          *buf = 136315394;
          v12 = string;
          v13 = 2080;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "interface_thread_start_handler: method %s from %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_1000B1170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if (*(v25 - 97) < 0)
    {
LABEL_3:
      operator delete(*(v25 - 120));
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v25 - 97) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void XPCIPCAPI_v1_rcp::interface_thread_stop_handler(int a1, xpc_object_t xdict, uint64_t *a3)
{
  string = xpc_dictionary_get_string(xdict, "method");
  v5 = strlen(string);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      v10 = v5;
      if (v5)
      {
        memmove(&__dst, string, v5);
      }

      *(&__dst + v6) = 0;
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v8 = a3;
          if (*(a3 + 23) < 0)
          {
            v8 = *a3;
          }

          *buf = 136315394;
          v12 = string;
          v13 = 2080;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "interface_thread_start_handler: method %s from %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_1000B1558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if (*(v25 - 97) < 0)
    {
LABEL_3:
      operator delete(*(v25 - 120));
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v25 - 97) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B24E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 185) < 0)
  {
    operator delete(*(v48 - 208));
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B3158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 169) < 0)
  {
    operator delete(*(v44 - 192));
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B3584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if (*(v25 - 113) < 0)
    {
LABEL_3:
      operator delete(*(v25 - 136));
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v25 - 113) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B3974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if (*(v25 - 113) < 0)
    {
LABEL_3:
      operator delete(*(v25 - 136));
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v25 - 113) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void XPCIPCAPI_v1_rcp::interface_hard_reset_handler(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v6 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Trigger RCP2 FLR", v16, 2u);
      CoreBTtriggerFLR();
      if (!*a4)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
    CoreBTtriggerFLR();
    if (!*a4)
    {
      return;
    }

    goto LABEL_8;
  }

  CoreBTtriggerFLR();
  if (!*a4)
  {
    return;
  }

LABEL_8:
  if (!a4[1])
  {
    return;
  }

  v7 = xpc_null_create();
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_dictionary)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v10 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v10);
  xpc_dictionary_set_string(v9, "method", "HardReset");
  xpc_dictionary_set_uint64(v9, "ret", 0);
  if (v9)
  {
    xpc_retain(v9);
    v11 = v9;
    v12 = *a4;
    if (*a4)
    {
LABEL_17:
      v13 = _Block_copy(v12);
      goto LABEL_20;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a4;
    if (*a4)
    {
      goto LABEL_17;
    }
  }

  v13 = 0;
LABEL_20:
  v14 = a4[1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1174405120;
  v16[2] = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJhS2_EEEvDpT__block_invoke;
  v16[3] = &__block_descriptor_tmp_199;
  if (!v13)
  {
    v19 = 0;
    aBlock = 0;
    object = v11;
    if (v11)
    {
      goto LABEL_22;
    }

LABEL_24:
    object = xpc_null_create();
    goto LABEL_25;
  }

  v15 = _Block_copy(v13);
  v19 = 0;
  aBlock = v15;
  object = v11;
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_22:
  xpc_retain(v11);
LABEL_25:
  dispatch_async(v14, v16);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  xpc_release(v11);
  xpc_release(v9);
}