uint64_t AWDMetricsHandlers_handle_get_channelSelectionData(void *a1)
{
  v1 = a1;
  for (i = 0; i != 60; i += 4)
  {
    v3 = *(&_MergedGlobals_6 + i + 8);
    v4 = v3;
    if (v3)
    {
      v5 = log10(v3) + 1.0;
      v6 = v5 - 4;
      if (v5 <= 4)
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
    [v1 addChannelSelectionsHistogram:(v8 * (v4 / v8))];
  }

  return 0;
}

uint64_t AWDMetricsHandlers_handle_getprop_frameTxPowerHist(void *a1, void *a2)
{
  v3 = a1;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = a2;
  v37 = v4;
  xarray = v3;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(xarray);
    v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
      *(buf.__r_.__value_.__r.__words + 4) = count;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AWDMetrics : TpcFrameTxPowerHist array with size %ld.", &buf, 0xCu);
    }

    if (count)
    {
      v9 = 0;
      v6 = 0;
      do
      {
        v10 = xpc_array_get_dictionary(xarray, v9);

        v6 = v10;
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
        uint64 = xpc_dictionary_get_uint64(v6, "value");
        v15 = std::string::find(&buf, 91, 0);
        v16 = std::string::find(&buf, 93, 0);
        v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        size = buf.__r_.__value_.__l.__size_;
        v19 = buf.__r_.__value_.__r.__words[0];
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
          v21 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = buf.__r_.__value_.__l.__size_;
        }

        v22 = (p_buf + v21);
        if (v21 >= 25)
        {
          v23 = p_buf;
          do
          {
            v24 = memchr(v23, 84, v21 - 24);
            if (!v24)
            {
              break;
            }

            if (v24->__r_.__value_.__r.__words[0] == 0x6D6172463A435054 && v24->__r_.__value_.__l.__size_ == 0x7265776F50785465 && v24->__r_.__value_.__r.__words[2] == 0x6172676F74736948 && v24[1].__r_.__value_.__s.__data_[0] == 109)
            {
              goto LABEL_37;
            }

            v23 = (&v24->__r_.__value_.__l.__data_ + 1);
            v21 = v22 - v23;
          }

          while (v22 - v23 > 24);
        }

        v24 = v22;
LABEL_37:
        if (v24 != v22 && v24 == p_buf && v15 != -1 && v16 != -1)
        {
          if ((v17 & 0x80000000) != 0)
          {
            if (size <= v15)
            {
LABEL_72:
              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else
          {
            if (v15 >= v17)
            {
              goto LABEL_72;
            }

            v19 = &buf;
            size = v17;
          }

          if (size - (v15 + 1) >= v16 - 1)
          {
            v28 = v16 - 1;
          }

          else
          {
            v28 = size - (v15 + 1);
          }

          if (v28 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v28 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v28;
          if (v28)
          {
            memmove(&__dst, &v19->__r_.__value_.__l.__data_ + v15 + 1, v28);
          }

          __dst.__r_.__value_.__s.__data_[v28] = 0;
          v29 = std::stoi(&__dst, 0, 10);
          if (v29 <= 0x10)
          {
            if (uint64)
            {
              v30 = log10(uint64) + 1.0;
              v31 = v30 - 4;
              if (v30 <= 4)
              {
                v31 = 0;
              }

              v32 = v31;
            }

            else
            {
              v32 = 0.0;
            }

            v33 = __exp10(v32);
            *(&v41 + v29) = (v33 * (uint64 / v33));
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          LOBYTE(v17) = *(&buf.__r_.__value_.__s + 23);
        }

        if ((v17 & 0x80) != 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        ++v9;
        v4 = v37;
      }

      while (v9 != count);
      v34 = v41;
    }

    else
    {
      v34 = 0;
      v6 = 0;
    }

    [v4 addFrameTxpowerHistogram:{v34, count}];
    [v4 addFrameTxpowerHistogram:DWORD1(v41)];
    [v4 addFrameTxpowerHistogram:DWORD2(v41)];
    [v4 addFrameTxpowerHistogram:HIDWORD(v41)];
    [v4 addFrameTxpowerHistogram:v42];
    [v4 addFrameTxpowerHistogram:DWORD1(v42)];
    [v4 addFrameTxpowerHistogram:DWORD2(v42)];
    [v4 addFrameTxpowerHistogram:HIDWORD(v42)];
    [v4 addFrameTxpowerHistogram:v43];
    [v4 addFrameTxpowerHistogram:DWORD1(v43)];
    [v4 addFrameTxpowerHistogram:DWORD2(v43)];
    [v4 addFrameTxpowerHistogram:HIDWORD(v43)];
    [v4 addFrameTxpowerHistogram:v44];
    [v4 addFrameTxpowerHistogram:DWORD1(v44)];
    [v4 addFrameTxpowerHistogram:DWORD2(v44)];
    [v4 addFrameTxpowerHistogram:HIDWORD(v44)];
    [v4 addFrameTxpowerHistogram:v45];
    v7 = 0;
  }

  else
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_frameTxPowerHist();
    }

    v6 = 0;
    v7 = 1;
  }

  return v7;
}

uint64_t AWDMetricsHandlers_handle_getprop_neighborTxPowerHist(void *a1, void *a2)
{
  v3 = a1;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = a2;
  v37 = v4;
  xarray = v3;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(xarray);
    v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
      *(buf.__r_.__value_.__r.__words + 4) = count;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AWDMetrics : TpcNeighborTxPowerHist array with size %ld.", &buf, 0xCu);
    }

    if (count)
    {
      v9 = 0;
      v6 = 0;
      do
      {
        v10 = xpc_array_get_dictionary(xarray, v9);

        v6 = v10;
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
        uint64 = xpc_dictionary_get_uint64(v6, "value");
        v15 = std::string::find(&buf, 91, 0);
        v16 = std::string::find(&buf, 93, 0);
        v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        size = buf.__r_.__value_.__l.__size_;
        v19 = buf.__r_.__value_.__r.__words[0];
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
          v21 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = buf.__r_.__value_.__l.__size_;
        }

        v22 = (p_buf + v21);
        if (v21 >= 28)
        {
          v23 = p_buf;
          do
          {
            v24 = memchr(v23, 84, v21 - 27);
            if (!v24)
            {
              break;
            }

            if (v24->__r_.__value_.__r.__words[0] == 0x6769654E3A435054 && v24->__r_.__value_.__l.__size_ == 0x6F507854726F6268 && v24->__r_.__value_.__r.__words[2] == 0x6F74736948726577 && LODWORD(v24[1].__r_.__value_.__l.__data_) == 1835102823)
            {
              goto LABEL_37;
            }

            v23 = (&v24->__r_.__value_.__l.__data_ + 1);
            v21 = v22 - v23;
          }

          while (v22 - v23 > 27);
        }

        v24 = v22;
LABEL_37:
        if (v24 != v22 && v24 == p_buf && v15 != -1 && v16 != -1)
        {
          if ((v17 & 0x80000000) != 0)
          {
            if (size <= v15)
            {
LABEL_72:
              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else
          {
            if (v15 >= v17)
            {
              goto LABEL_72;
            }

            v19 = &buf;
            size = v17;
          }

          if (size - (v15 + 1) >= v16 - 1)
          {
            v28 = v16 - 1;
          }

          else
          {
            v28 = size - (v15 + 1);
          }

          if (v28 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v28 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v28;
          if (v28)
          {
            memmove(&__dst, &v19->__r_.__value_.__l.__data_ + v15 + 1, v28);
          }

          __dst.__r_.__value_.__s.__data_[v28] = 0;
          v29 = std::stoi(&__dst, 0, 10);
          if (v29 <= 0x10)
          {
            if (uint64)
            {
              v30 = log10(uint64) + 1.0;
              v31 = v30 - 4;
              if (v30 <= 4)
              {
                v31 = 0;
              }

              v32 = v31;
            }

            else
            {
              v32 = 0.0;
            }

            v33 = __exp10(v32);
            *(&v41 + v29) = (v33 * (uint64 / v33));
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          LOBYTE(v17) = *(&buf.__r_.__value_.__s + 23);
        }

        if ((v17 & 0x80) != 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        ++v9;
        v4 = v37;
      }

      while (v9 != count);
      v34 = v41;
    }

    else
    {
      v34 = 0;
      v6 = 0;
    }

    [v4 addNbrTxpowerHistogram:{v34, count}];
    [v4 addNbrTxpowerHistogram:DWORD1(v41)];
    [v4 addNbrTxpowerHistogram:DWORD2(v41)];
    [v4 addNbrTxpowerHistogram:HIDWORD(v41)];
    [v4 addNbrTxpowerHistogram:v42];
    [v4 addNbrTxpowerHistogram:DWORD1(v42)];
    [v4 addNbrTxpowerHistogram:DWORD2(v42)];
    [v4 addNbrTxpowerHistogram:HIDWORD(v42)];
    [v4 addNbrTxpowerHistogram:v43];
    [v4 addNbrTxpowerHistogram:DWORD1(v43)];
    [v4 addNbrTxpowerHistogram:DWORD2(v43)];
    [v4 addNbrTxpowerHistogram:HIDWORD(v43)];
    [v4 addNbrTxpowerHistogram:v44];
    [v4 addNbrTxpowerHistogram:DWORD1(v44)];
    [v4 addNbrTxpowerHistogram:DWORD2(v44)];
    [v4 addNbrTxpowerHistogram:HIDWORD(v44)];
    [v4 addNbrTxpowerHistogram:v45];
    v7 = 0;
  }

  else
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_neighborTxPowerHist();
    }

    v6 = 0;
    v7 = 1;
  }

  return v7;
}

uint64_t AWDMetricsHandlers_handle_getprop_neighborEnergySavingsFactorHist(void *a1, void *a2)
{
  v3 = a1;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v42 = 0u;
  v43 = 0u;
  v4 = a2;
  v38 = v4;
  xarray = v3;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(xarray);
    v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
      *(buf.__r_.__value_.__r.__words + 4) = count;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AWDMetrics : TpcNeighborEnergySavingsFactorHist array with size %ld.", &buf, 0xCu);
    }

    if (count)
    {
      v9 = 0;
      v6 = 0;
      do
      {
        v10 = xpc_array_get_dictionary(xarray, v9);

        v6 = v10;
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
        uint64 = xpc_dictionary_get_uint64(v6, "value");
        v15 = std::string::find(&buf, 91, 0);
        v16 = std::string::find(&buf, 93, 0);
        v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
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
          v21 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = buf.__r_.__value_.__l.__size_;
        }

        v22 = (p_buf + v21);
        if (v21 >= 40)
        {
          v23 = p_buf;
          do
          {
            v24 = memchr(v23, 84, v21 - 39);
            if (!v24)
            {
              break;
            }

            if (v24->__r_.__value_.__r.__words[0] == 0x6769654E3A435054 && v24->__r_.__value_.__l.__size_ == 0x72656E45726F6268 && v24->__r_.__value_.__r.__words[2] == 0x676E697661537967 && v24[1].__r_.__value_.__r.__words[0] == 0x48726F7463614673 && v24[1].__r_.__value_.__l.__size_ == 0x6D6172676F747369)
            {
              goto LABEL_40;
            }

            v23 = (&v24->__r_.__value_.__l.__data_ + 1);
            v21 = v22 - v23;
          }

          while (v22 - v23 > 39);
        }

        v24 = v22;
LABEL_40:
        if (v24 != v22 && v24 == p_buf && v15 != -1 && v16 != -1)
        {
          if ((v17 & 0x80000000) != 0)
          {
            if (size <= v15)
            {
LABEL_75:
              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else
          {
            if (v15 >= v17)
            {
              goto LABEL_75;
            }

            v18 = &buf;
            size = v17;
          }

          if (size - (v15 + 1) >= v16 - 1)
          {
            v29 = v16 - 1;
          }

          else
          {
            v29 = size - (v15 + 1);
          }

          if (v29 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v29 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v29;
          if (v29)
          {
            memmove(&__dst, &v18->__r_.__value_.__l.__data_ + v15 + 1, v29);
          }

          __dst.__r_.__value_.__s.__data_[v29] = 0;
          v30 = std::stoi(&__dst, 0, 10);
          if (v30 <= 0x12)
          {
            if (uint64)
            {
              v31 = log10(uint64) + 1.0;
              v32 = v31 - 4;
              if (v31 <= 4)
              {
                v32 = 0;
              }

              v33 = v32;
            }

            else
            {
              v33 = 0.0;
            }

            v34 = __exp10(v33);
            *(&v42 + v30) = (v34 * (uint64 / v34));
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          LOBYTE(v17) = *(&buf.__r_.__value_.__s + 23);
        }

        if ((v17 & 0x80) != 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        ++v9;
        v4 = v38;
      }

      while (v9 != count);
      v35 = v42;
    }

    else
    {
      v35 = 0;
      v6 = 0;
    }

    [v4 addNbrBatteryExtensionFactorHistogram:{v35, count}];
    [v4 addNbrBatteryExtensionFactorHistogram:DWORD1(v42)];
    [v4 addNbrBatteryExtensionFactorHistogram:DWORD2(v42)];
    [v4 addNbrBatteryExtensionFactorHistogram:HIDWORD(v42)];
    [v4 addNbrBatteryExtensionFactorHistogram:v43];
    [v4 addNbrBatteryExtensionFactorHistogram:DWORD1(v43)];
    [v4 addNbrBatteryExtensionFactorHistogram:DWORD2(v43)];
    [v4 addNbrBatteryExtensionFactorHistogram:HIDWORD(v43)];
    [v4 addNbrBatteryExtensionFactorHistogram:v44];
    [v4 addNbrBatteryExtensionFactorHistogram:DWORD1(v44)];
    [v4 addNbrBatteryExtensionFactorHistogram:DWORD2(v44)];
    [v4 addNbrBatteryExtensionFactorHistogram:HIDWORD(v44)];
    [v4 addNbrBatteryExtensionFactorHistogram:v45[0]];
    [v4 addNbrBatteryExtensionFactorHistogram:v45[1]];
    [v4 addNbrBatteryExtensionFactorHistogram:v45[2]];
    [v4 addNbrBatteryExtensionFactorHistogram:v45[3]];
    [v4 addNbrBatteryExtensionFactorHistogram:v45[4]];
    [v4 addNbrBatteryExtensionFactorHistogram:v45[5]];
    [v4 addNbrBatteryExtensionFactorHistogram:v45[6]];
    v7 = 0;
  }

  else
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_neighborEnergySavingsFactorHist();
    }

    v6 = 0;
    v7 = 1;
  }

  return v7;
}

size_t AWDMetricsHandlers_handle_getprop_radiocounters(void *a1, void *a2)
{
  v3 = a1;
  v53 = a2;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v3);
    v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = count;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AWDMetrics : Radio Counters array with size %ld.", buf, 0xCu);
    }

    if (!count)
    {
      goto LABEL_111;
    }

    v7 = 0;
    v4 = 0;
    while (1)
    {
      v8 = xpc_array_get_dictionary(v3, v7);

      v4 = v8;
      string = xpc_dictionary_get_string(v8, "key");
      v10 = strlen(string);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      v55 = v10;
      if (v10)
      {
        memmove(buf, string, v10);
      }

      buf[v11] = 0;
      uint64 = xpc_dictionary_get_uint64(v8, "value");
      v13 = v55;
      if ((v55 & 0x80000000) == 0)
      {
        break;
      }

      if (*&buf[8] == 19)
      {
        v16 = **buf == 0x6C6961665F616363 && *(*buf + 8) == 0x6D657474615F6465;
        if (v16 && *(*buf + 11) == 0x7374706D65747461)
        {
          goto LABEL_95;
        }
      }

      if (*&buf[8] == 21)
      {
        v18 = **buf == 0x65725F6F69646172 && *(*buf + 8) == 0x665F646576696563;
        if (v18 && *(*buf + 13) == 0x73656D6172665F64)
        {
          goto LABEL_91;
        }
      }

      if (*&buf[8] == 18)
      {
        v20 = **buf == 0x6465766965636572 && *(*buf + 8) == 0x6C626D616572705FLL;
        if (v20 && *(*buf + 16) == 29541)
        {
          goto LABEL_79;
        }
      }

      v22 = *buf;
      if (*&buf[8] == 22)
      {
        goto LABEL_59;
      }

LABEL_9:
      operator delete(v22);
LABEL_10:
      if (count == ++v7)
      {
        count = 0;
        goto LABEL_110;
      }
    }

    if (v55 > 0x14u)
    {
      if (v55 == 21)
      {
        if (*buf != 0x65725F6F69646172 || *&buf[8] != 0x665F646576696563 || *&buf[13] != 0x73656D6172665F64)
        {
          goto LABEL_10;
        }

LABEL_91:
        v40 = uint64;
        if (uint64)
        {
          v41 = log10(uint64) + 1.0;
          v42 = v41 - 4;
          if (v41 <= 4)
          {
            v42 = 0;
          }

          v43 = v42;
        }

        else
        {
          v43 = 0.0;
        }

        v48 = __exp10(v43);
        [v53 setRadioReceivedFrames:(v48 * (v40 / v48))];
      }

      else
      {
        if (v55 != 22)
        {
          goto LABEL_10;
        }

        v22 = buf;
LABEL_59:
        v23 = *v22;
        v24 = v22[1];
        v25 = *(v22 + 14);
        if (v23 == 0x6465766965636572 && v24 == 0x5F796772656E655FLL && v25 == 0x73746E6576655F79)
        {
          v28 = uint64;
          if (uint64)
          {
            v29 = log10(uint64) + 1.0;
            v30 = v29 - 4;
            if (v29 <= 4)
            {
              v30 = 0;
            }

            v31 = v30;
          }

          else
          {
            v31 = 0.0;
          }

          v51 = __exp10(v31);
          [v53 setReceivedEnergyEvents:(v51 * (v28 / v51))];
        }
      }
    }

    else if (v55 == 18)
    {
      if (*buf != 0x6465766965636572 || *&buf[8] != 0x6C626D616572705FLL || *&buf[16] != 29541)
      {
        goto LABEL_10;
      }

LABEL_79:
      v34 = uint64;
      if (uint64)
      {
        v35 = log10(uint64) + 1.0;
        v36 = v35 - 4;
        if (v35 <= 4)
        {
          v36 = 0;
        }

        v37 = v36;
      }

      else
      {
        v37 = 0.0;
      }

      v49 = __exp10(v37);
      [v53 setReceivedPreambles:(v49 * (v34 / v49))];
    }

    else
    {
      if (v55 != 19)
      {
        goto LABEL_10;
      }

      v14 = *buf == 0x6C6961665F616363 && *&buf[8] == 0x6D657474615F6465;
      if (!v14 || *&buf[11] != 0x7374706D65747461)
      {
        goto LABEL_10;
      }

LABEL_95:
      v44 = uint64;
      if (uint64)
      {
        v45 = log10(uint64) + 1.0;
        v46 = v45 - 4;
        if (v45 <= 4)
        {
          v46 = 0;
        }

        v47 = v46;
      }

      else
      {
        v47 = 0.0;
      }

      v50 = __exp10(v47);
      [v53 setCcaFailedAttempts:(v50 * (v44 / v50))];
    }

    if ((v13 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    v22 = *buf;
    goto LABEL_9;
  }

  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    AWDMetricsHandlers_handle_getprop_radiocounters();
  }

  count = 1;
LABEL_110:

LABEL_111:
  return count;
}

size_t AWDMetricsHandlers_handle_getprop_radiostat(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v3);
    v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *__p = 134217984;
      *&__p[4] = count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AWDMetrics : Radio Stats array with size %ld.", __p, 0xCu);
    }

    if (!count)
    {
      goto LABEL_226;
    }

    v8 = 0;
    v5 = 0;
    while (1)
    {
      v11 = xpc_array_get_dictionary(v3, v8);

      v5 = v11;
      string = xpc_dictionary_get_string(v11, "key");
      v13 = strlen(string);
      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        operator new();
      }

      v111 = v13;
      if (v13)
      {
        memmove(__p, string, v13);
      }

      __p[v14] = 0;
      uint64 = xpc_dictionary_get_uint64(v5, "value");
      v16 = uint64;
      if (v111 < 0)
      {
        if (*&__p[8] == 9)
        {
          if (**__p == 0x61566E694D747452 && *(*__p + 8) == 108)
          {
LABEL_112:
            v44 = uint64;
            if (uint64)
            {
              v45 = log10(uint64) + 1.0;
              v46 = v45 - 4;
              if (v45 <= 4)
              {
                v46 = 0;
              }

              v47 = v46;
            }

            else
            {
              v47 = 0.0;
            }

            v56 = __exp10(v47);
            [v4 setRttMinVal:(v56 * (v44 / v56))];
            goto LABEL_11;
          }

          if (**__p == 0x615678614D747452 && *(*__p + 8) == 108)
          {
LABEL_120:
            v52 = uint64;
            if (uint64)
            {
              v53 = log10(uint64) + 1.0;
              v54 = v53 - 4;
              if (v53 <= 4)
              {
                v54 = 0;
              }

              v55 = v54;
            }

            else
            {
              v55 = 0.0;
            }

            v62 = __exp10(v55);
            [v4 setRttMaxVal:(v62 * (v52 / v62))];
            goto LABEL_11;
          }

          if (**__p == 0x6156677641747452 && *(*__p + 8) == 108)
          {
LABEL_128:
            v58 = uint64;
            if (uint64)
            {
              v59 = log10(uint64) + 1.0;
              v60 = v59 - 4;
              if (v59 <= 4)
              {
                v60 = 0;
              }

              v61 = v60;
            }

            else
            {
              v61 = 0.0;
            }

            v104 = __exp10(v61);
            [v4 setRttAvgVal:(v104 * (v58 / v104))];
            goto LABEL_11;
          }

          if (**__p == 0x7265703039747452 && *(*__p + 8) == 99)
          {
LABEL_83:
            v35 = uint64;
            if (uint64)
            {
              v36 = log10(uint64) + 1.0;
              v37 = v36 - 4;
              if (v36 <= 4)
              {
                v37 = 0;
              }

              v38 = v37;
            }

            else
            {
              v38 = 0.0;
            }

            v107 = __exp10(v38);
            [v4 setRtt90perc:(v107 * (v35 / v107))];
            goto LABEL_11;
          }
        }

        if (*&__p[8] != 16)
        {
          goto LABEL_138;
        }

        if (**__p == 0x746E497972746552 && *(*__p + 8) == 0x6E694D6C61767265)
        {
LABEL_116:
          v48 = uint64;
          if (uint64)
          {
            v49 = log10(uint64) + 1.0;
            v50 = v49 - 4;
            if (v49 <= 4)
            {
              v50 = 0;
            }

            v51 = v50;
          }

          else
          {
            v51 = 0.0;
          }

          v57 = __exp10(v51);
          [v4 setRetryIntervalMin:(v57 * (v48 / v57))];
          goto LABEL_11;
        }

        if ((v111 & 0x80) != 0)
        {
          if (**__p == 0x746E497972746552 && *(*__p + 8) == 0x78614D6C61767265)
          {
LABEL_189:
            v87 = uint64;
            if (uint64)
            {
              v88 = log10(uint64) + 1.0;
              v89 = v88 - 4;
              if (v88 <= 4)
              {
                v89 = 0;
              }

              v90 = v89;
            }

            else
            {
              v90 = 0.0;
            }

            v103 = __exp10(v90);
            [v4 setRetryIntervalMax:(v103 * (v87 / v103))];
            goto LABEL_11;
          }

LABEL_138:
          if (*&__p[8] != 16)
          {
            goto LABEL_147;
          }

          if (**__p == 0x746E497972746552 && *(*__p + 8) == 0x6776416C61767265)
          {
            goto LABEL_204;
          }

          if ((v111 & 0x80) != 0)
          {
LABEL_147:
            if (*&__p[8] != 19)
            {
              goto LABEL_148;
            }

            if (**__p == 0x746E497972746552 && *(*__p + 8) == 0x5030396C61767265 && *(*__p + 11) == 0x6372655030396C61)
            {
LABEL_170:
              v75 = uint64;
              if (uint64)
              {
                v76 = log10(uint64) + 1.0;
                v77 = v76 - 4;
                if (v76 <= 4)
                {
                  v77 = 0;
                }

                v78 = v77;
              }

              else
              {
                v78 = 0.0;
              }

              v92 = __exp10(v78);
              [v4 setRetryInterval90perc:(v92 * (v75 / v92))];
              goto LABEL_11;
            }

            if ((v111 & 0x80) != 0)
            {
LABEL_148:
              if (*&__p[8] != 10)
              {
                goto LABEL_155;
              }

              v18 = *__p;
              if (**__p == 0x4D79616C65447854 && *(*__p + 8) == 28265)
              {
LABEL_174:
                v79 = uint64;
                if (uint64)
                {
                  v80 = log10(uint64) + 1.0;
                  v81 = v80 - 4;
                  if (v80 <= 4)
                  {
                    v81 = 0;
                  }

                  v82 = v81;
                }

                else
                {
                  v82 = 0.0;
                }

                v93 = __exp10(v82);
                [v4 setTxDelayMin:(v93 * (v79 / v93))];
                goto LABEL_11;
              }

              if ((v111 & 0x80) == 0)
              {
                if (v111 != 10)
                {
                  goto LABEL_155;
                }

                goto LABEL_27;
              }

LABEL_28:
              v19 = *v18;
              v20 = *(v18 + 4);
              if (v19 == 0x4D79616C65447854 && v20 == 30817)
              {
                v22 = uint64;
                if (uint64)
                {
                  v23 = log10(uint64) + 1.0;
                  v24 = v23 - 4;
                  if (v23 <= 4)
                  {
                    v24 = 0;
                  }

                  v25 = v24;
                }

                else
                {
                  v25 = 0.0;
                }

                v102 = __exp10(v25);
                [v4 setTxDelayMax:(v102 * (v22 / v102))];
                goto LABEL_11;
              }

              goto LABEL_155;
            }
          }

LABEL_22:
          if (v111 != 10)
          {
            goto LABEL_155;
          }

LABEL_23:
          if (*__p == 0x4D79616C65447854 && *&__p[8] == 28265)
          {
            goto LABEL_174;
          }

LABEL_27:
          v18 = __p;
          goto LABEL_28;
        }

        switch(v111)
        {
          case 0xAu:
            goto LABEL_23;
          case 0x13u:
            goto LABEL_89;
          case 0x10u:
            goto LABEL_102;
        }
      }

      else
      {
        if (v111 <= 0xFu)
        {
          if (v111 == 9)
          {
            if (*__p == 0x61566E694D747452 && __p[8] == 108)
            {
              goto LABEL_112;
            }

            if (*__p == 0x615678614D747452 && __p[8] == 108)
            {
              goto LABEL_120;
            }

            if (*__p == 0x6156677641747452 && __p[8] == 108)
            {
              goto LABEL_128;
            }

            if (*__p == 0x7265703039747452 && __p[8] == 99)
            {
              goto LABEL_83;
            }

            goto LABEL_155;
          }

          goto LABEL_22;
        }

        if (v111 == 16)
        {
          if (*__p == 0x746E497972746552 && *&__p[8] == 0x6E694D6C61767265)
          {
            goto LABEL_116;
          }

LABEL_102:
          if (*__p == 0x746E497972746552 && *&__p[8] == 0x78614D6C61767265)
          {
            goto LABEL_189;
          }

          if (*__p == 0x746E497972746552 && *&__p[8] == 0x6776416C61767265)
          {
LABEL_204:
            v97 = uint64;
            if (uint64)
            {
              v98 = log10(uint64) + 1.0;
              v99 = v98 - 4;
              if (v98 <= 4)
              {
                v99 = 0;
              }

              v100 = v99;
            }

            else
            {
              v100 = 0.0;
            }

            v106 = __exp10(v100);
            [v4 setRetryIntervalAvg:(v106 * (v97 / v106))];
            goto LABEL_11;
          }

          goto LABEL_155;
        }

        if (v111 == 19)
        {
LABEL_89:
          if (*__p == 0x746E497972746552 && *&__p[8] == 0x5030396C61767265 && *&__p[11] == 0x6372655030396C61)
          {
            goto LABEL_170;
          }
        }
      }

LABEL_155:
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "TxDelayAvg"))
      {
        if (v16)
        {
          v67 = log10(v16) + 1.0;
          v68 = v67 - 4;
          if (v67 <= 4)
          {
            v68 = 0;
          }

          v9 = v68;
        }

        else
        {
          v9 = 0.0;
        }

        v10 = __exp10(v9);
        [v4 setTxDelayAvg:(v10 * (v16 / v10))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "TxDelay90Perc"))
      {
        if (v16)
        {
          v69 = log10(v16) + 1.0;
          v70 = v69 - 4;
          if (v69 <= 4)
          {
            v70 = 0;
          }

          v71 = v70;
        }

        else
        {
          v71 = 0.0;
        }

        v91 = __exp10(v71);
        [v4 setTxDelay90perc:(v91 * (v16 / v91))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "ListeningTime"))
      {
        if (v16)
        {
          v72 = log10(v16) + 1.0;
          v73 = v72 - 4;
          if (v72 <= 4)
          {
            v73 = 0;
          }

          v74 = v73;
        }

        else
        {
          v74 = 0.0;
        }

        v101 = __exp10(v74);
        [v4 setListeningTime:(v101 * (v16 / v101))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "ReceivingTime"))
      {
        if (v16)
        {
          v83 = log10(v16) + 1.0;
          v84 = v83 - 4;
          if (v83 <= 4)
          {
            v84 = 0;
          }

          v85 = v84;
        }

        else
        {
          v85 = 0.0;
        }

        v105 = __exp10(v85);
        [v4 setReceivingTime:(v105 * (v16 / v105))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "TrasmittingTime"))
      {
        if (v16)
        {
          v94 = log10(v16) + 1.0;
          v95 = v94 - 4;
          if (v94 <= 4)
          {
            v95 = 0;
          }

          v96 = v95;
        }

        else
        {
          v96 = 0.0;
        }

        v108 = __exp10(v96);
        [v4 setTransmittingTime:(v108 * (v16 / v108))];
      }

LABEL_11:
      if (v111 < 0)
      {
        operator delete(*__p);
        if (count == ++v8)
        {
LABEL_224:
          count = 0;
          goto LABEL_225;
        }
      }

      else if (count == ++v8)
      {
        goto LABEL_224;
      }
    }
  }

  v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    AWDMetricsHandlers_handle_getprop_radiostat();
  }

  count = 1;
LABEL_225:

LABEL_226:
  return count;
}

uint64_t AWDMetricsHandlers_handle_getprop_otradiocounters(void *a1, void *a2)
{
  v3 = a1;
  v215 = a2;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v3);
    v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = count;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AWDMetrics : OT Radio Counters array with size %ld.", &buf, 0xCu);
    }

    if (!count)
    {
      v5 = 0;
      goto LABEL_397;
    }

    v7 = 0;
    v4 = 0;
    while (1)
    {
      v8 = xpc_array_get_dictionary(v3, v7);

      v4 = v8;
      string = xpc_dictionary_get_string(v8, "key");
      v10 = strlen(string);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      v217 = v10;
      if (v10)
      {
        memmove(&buf, string, v10);
      }

      *(&buf + v11) = 0;
      uint64 = xpc_dictionary_get_uint64(v8, "value");
      v13 = uint64;
      if (v217 < 0)
      {
        break;
      }

      if (v217 == 18)
      {
        p_buf = &buf;
LABEL_21:
        v15 = *p_buf;
        v16 = *(p_buf + 1);
        v17 = *(p_buf + 8);
        if (v15 == 0x74696D736E617274 && v16 == 0x6D6172665F646574 && v17 == 29541)
        {
          v47 = uint64;
          if (uint64)
          {
            v48 = log10(uint64) + 1.0;
            v49 = v48 - 4;
            if (v48 <= 4)
            {
              v49 = 0;
            }

            v50 = v49;
          }

          else
          {
            v50 = 0.0;
          }

          v65 = __exp10(v50);
          [v215 setTransmittedFrames:(v65 * (v47 / v65))];
          goto LABEL_393;
        }

        goto LABEL_28;
      }

      if (v217 == 19)
      {
        v20 = *(&buf + 1);
        v27 = &buf;
LABEL_44:
        v28 = *v27;
        v29 = v27[1];
        v30 = *(v27 + 11);
        if (v28 == 0x726F7272655F7874 && v29 == 0x726F62615F78745FLL && v30 == 0x646574726F62615FLL)
        {
          v82 = uint64;
          if (uint64)
          {
            v83 = log10(uint64) + 1.0;
            v84 = v83 - 4;
            if (v83 <= 4)
            {
              v84 = 0;
            }

            v85 = v84;
          }

          else
          {
            v85 = 0.0;
          }

          v103 = __exp10(v85);
          [v215 setTxErrorTxAborted:(v103 * (v82 / v103))];
          goto LABEL_393;
        }

LABEL_51:
        if (v217 < 0 && v20 == 36)
        {
          v33 = *buf == 0x726F7272655F7874 && *(buf + 8) == 0x726F62615F78745FLL;
          v34 = v33 && *(buf + 16) == 0x616D73635F646574;
          v35 = v34 && *(buf + 24) == 0x6361625F6766635FLL;
          if (v35 && *(buf + 32) == 1717989227)
          {
            v37 = uint64;
            if (uint64)
            {
              v38 = log10(uint64) + 1.0;
              v39 = v38 - 4;
              if (v38 <= 4)
              {
                v39 = 0;
              }

              v40 = v39;
            }

            else
            {
              v40 = 0.0;
            }

            v121 = __exp10(v40);
            [v215 setTxErrorTxAbortedCsmaCfgBackoff:(v121 * (v37 / v121))];
            goto LABEL_393;
          }
        }
      }

LABEL_104:
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "tx_error_tx_aborted_ifs"))
      {
        if (v13)
        {
          v55 = log10(v13) + 1.0;
          v56 = v55 - 4;
          if (v55 <= 4)
          {
            v56 = 0;
          }

          v57 = v56;
        }

        else
        {
          v57 = 0.0;
        }

        v64 = __exp10(v57);
        [v215 setTxErrorTxAbortedIfs:(v64 * (v13 / v64))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "tx_error_tx_aborted_rx_ack"))
      {
        if (v13)
        {
          v58 = log10(v13) + 1.0;
          v59 = v58 - 4;
          if (v58 <= 4)
          {
            v59 = 0;
          }

          v60 = v59;
        }

        else
        {
          v60 = 0.0;
        }

        v86 = __exp10(v60);
        [v215 setTxErrorTxAbortedRxAck:(v86 * (v13 / v86))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "tx_error_tx_aborted_cca_tx"))
      {
        if (v13)
        {
          v61 = log10(v13) + 1.0;
          v62 = v61 - 4;
          if (v61 <= 4)
          {
            v62 = 0;
          }

          v63 = v62;
        }

        else
        {
          v63 = 0.0;
        }

        v98 = __exp10(v63);
        [v215 setTxErrorTxAbortedCcaTx:(v98 * (v13 / v98))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "tx_error_tx_aborted_tx"))
      {
        if (v13)
        {
          v66 = log10(v13) + 1.0;
          v67 = v66 - 4;
          if (v66 <= 4)
          {
            v67 = 0;
          }

          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        v108 = __exp10(v68);
        [v215 setTxErrorTxAbortedTx:(v108 * (v13 / v108))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "tx_error_not_granted"))
      {
        if (v13)
        {
          v88 = log10(v13) + 1.0;
          v89 = v88 - 4;
          if (v88 <= 4)
          {
            v89 = 0;
          }

          v90 = v89;
        }

        else
        {
          v90 = 0.0;
        }

        v122 = __exp10(v90);
        [v215 setTxErrorNotGranted:(v122 * (v13 / v122))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "tx_error_invalid_ack"))
      {
        if (v13)
        {
          v105 = log10(v13) + 1.0;
          v106 = v105 - 4;
          if (v105 <= 4)
          {
            v106 = 0;
          }

          v107 = v106;
        }

        else
        {
          v107 = 0.0;
        }

        v127 = __exp10(v107);
        [v215 setTxErrorInvalidAck:(v127 * (v13 / v127))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "tx_error_no_ack"))
      {
        if (v13)
        {
          v114 = log10(v13) + 1.0;
          v115 = v114 - 4;
          if (v114 <= 4)
          {
            v115 = 0;
          }

          v116 = v115;
        }

        else
        {
          v116 = 0.0;
        }

        v134 = __exp10(v116);
        [v215 setTxErrorNoAck:(v134 * (v13 / v134))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "tx_error_ack_no_mem"))
      {
        if (v13)
        {
          v124 = log10(v13) + 1.0;
          v125 = v124 - 4;
          if (v124 <= 4)
          {
            v125 = 0;
          }

          v126 = v125;
        }

        else
        {
          v126 = 0.0;
        }

        v138 = __exp10(v126);
        [v215 setTxErrorAckNoMem:(v138 * (v13 / v138))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "received_frames"))
      {
        if (v13)
        {
          v130 = log10(v13) + 1.0;
          v131 = v130 - 4;
          if (v130 <= 4)
          {
            v131 = 0;
          }

          v132 = v131;
        }

        else
        {
          v132 = 0.0;
        }

        v142 = __exp10(v132);
        [v215 setReceivedFrames:(v142 * (v13 / v142))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_receive_failed"))
      {
        if (v13)
        {
          v135 = log10(v13) + 1.0;
          v136 = v135 - 4;
          if (v135 <= 4)
          {
            v136 = 0;
          }

          v137 = v136;
        }

        else
        {
          v137 = 0.0;
        }

        v146 = __exp10(v137);
        [v215 setRxErrorReceiveFailed:(v146 * (v13 / v146))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_invalid_frame"))
      {
        if (v13)
        {
          v139 = log10(v13) + 1.0;
          v140 = v139 - 4;
          if (v139 <= 4)
          {
            v140 = 0;
          }

          v141 = v140;
        }

        else
        {
          v141 = 0.0;
        }

        v150 = __exp10(v141);
        [v215 setRxErrorInvalidFrame:(v150 * (v13 / v150))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_delayed_timeout"))
      {
        if (v13)
        {
          v143 = log10(v13) + 1.0;
          v144 = v143 - 4;
          if (v143 <= 4)
          {
            v144 = 0;
          }

          v145 = v144;
        }

        else
        {
          v145 = 0.0;
        }

        v154 = __exp10(v145);
        [v215 setRxErrorDelayedTimeout:(v154 * (v13 / v154))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_invalid_fcs"))
      {
        if (v13)
        {
          v147 = log10(v13) + 1.0;
          v148 = v147 - 4;
          if (v147 <= 4)
          {
            v148 = 0;
          }

          v149 = v148;
        }

        else
        {
          v149 = 0.0;
        }

        v158 = __exp10(v149);
        [v215 setRxErrorInvalidFcs:(v158 * (v13 / v158))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_dest_addr_filtered"))
      {
        if (v13)
        {
          v151 = log10(v13) + 1.0;
          v152 = v151 - 4;
          if (v151 <= 4)
          {
            v152 = 0;
          }

          v153 = v152;
        }

        else
        {
          v153 = 0.0;
        }

        v162 = __exp10(v153);
        [v215 setRxErrorDestAddrFiltered:(v162 * (v13 / v162))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_runtime_delay"))
      {
        if (v13)
        {
          v155 = log10(v13) + 1.0;
          v156 = v155 - 4;
          if (v155 <= 4)
          {
            v156 = 0;
          }

          v157 = v156;
        }

        else
        {
          v157 = 0.0;
        }

        v166 = __exp10(v157);
        [v215 setRxErrorRuntimeDelay:(v166 * (v13 / v166))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_timeslot_ended"))
      {
        if (v13)
        {
          v159 = log10(v13) + 1.0;
          v160 = v159 - 4;
          if (v159 <= 4)
          {
            v160 = 0;
          }

          v161 = v160;
        }

        else
        {
          v161 = 0.0;
        }

        v170 = __exp10(v161);
        [v215 setRxErrorTimeslotEnded:(v170 * (v13 / v170))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_aborted"))
      {
        if (v13)
        {
          v163 = log10(v13) + 1.0;
          v164 = v163 - 4;
          if (v163 <= 4)
          {
            v164 = 0;
          }

          v165 = v164;
        }

        else
        {
          v165 = 0.0;
        }

        v174 = __exp10(v165);
        [v215 setRxErrorAborted:(v174 * (v13 / v174))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_delayed_timeslot_ended"))
      {
        if (v13)
        {
          v167 = log10(v13) + 1.0;
          v168 = v167 - 4;
          if (v167 <= 4)
          {
            v168 = 0;
          }

          v169 = v168;
        }

        else
        {
          v169 = 0.0;
        }

        v178 = __exp10(v169);
        [v215 setRxErrorDelayedTimeslotEnded:(v178 * (v13 / v178))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_invalid_length"))
      {
        if (v13)
        {
          v171 = log10(v13) + 1.0;
          v172 = v171 - 4;
          if (v171 <= 4)
          {
            v172 = 0;
          }

          v173 = v172;
        }

        else
        {
          v173 = 0.0;
        }

        v182 = __exp10(v173);
        [v215 setRxErrorInvalidLength:(v182 * (v13 / v182))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_invalid_data"))
      {
        if (v13)
        {
          v175 = log10(v13) + 1.0;
          v176 = v175 - 4;
          if (v175 <= 4)
          {
            v176 = 0;
          }

          v177 = v176;
        }

        else
        {
          v177 = 0.0;
        }

        v186 = __exp10(v177);
        [v215 setRxErrorInvalidData:(v186 * (v13 / v186))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_ack_failed_radio_state"))
      {
        if (v13)
        {
          v179 = log10(v13) + 1.0;
          v180 = v179 - 4;
          if (v179 <= 4)
          {
            v180 = 0;
          }

          v181 = v180;
        }

        else
        {
          v181 = 0.0;
        }

        v190 = __exp10(v181);
        [v215 setRxErrorAckFailedRadioState:(v190 * (v13 / v190))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_ack_failed_radio_delay"))
      {
        if (v13)
        {
          v183 = log10(v13) + 1.0;
          v184 = v183 - 4;
          if (v183 <= 4)
          {
            v184 = 0;
          }

          v185 = v184;
        }

        else
        {
          v185 = 0.0;
        }

        v194 = __exp10(v185);
        [v215 setRxErrorAckFailedRadioDelay:(v194 * (v13 / v194))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_ack_denied"))
      {
        if (v13)
        {
          v187 = log10(v13) + 1.0;
          v188 = v187 - 4;
          if (v187 <= 4)
          {
            v188 = 0;
          }

          v189 = v188;
        }

        else
        {
          v189 = 0.0;
        }

        v198 = __exp10(v189);
        [v215 setRxErrorAckDenied:(v198 * (v13 / v198))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "rx_error_ack_aborted"))
      {
        if (v13)
        {
          v191 = log10(v13) + 1.0;
          v192 = v191 - 4;
          if (v191 <= 4)
          {
            v192 = 0;
          }

          v193 = v192;
        }

        else
        {
          v193 = 0.0;
        }

        v202 = __exp10(v193);
        [v215 setRxErrorAckAborted:(v202 * (v13 / v202))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "sleep_state"))
      {
        if (v13)
        {
          v195 = log10(v13) + 1.0;
          v196 = v195 - 4;
          if (v195 <= 4)
          {
            v196 = 0;
          }

          v197 = v196;
        }

        else
        {
          v197 = 0.0;
        }

        v206 = __exp10(v197);
        [v215 setSleepState:(v206 * (v13 / v206))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "energy_detected_requests"))
      {
        if (v13)
        {
          v199 = log10(v13) + 1.0;
          v200 = v199 - 4;
          if (v199 <= 4)
          {
            v200 = 0;
          }

          v201 = v200;
        }

        else
        {
          v201 = 0.0;
        }

        v210 = __exp10(v201);
        [v215 setEnergyDetectedRequests:(v210 * (v13 / v210))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "energy_detected_events"))
      {
        if (v13)
        {
          v203 = log10(v13) + 1.0;
          v204 = v203 - 4;
          if (v203 <= 4)
          {
            v204 = 0;
          }

          v205 = v204;
        }

        else
        {
          v205 = 0.0;
        }

        v211 = __exp10(v205);
        [v215 setEnergyDetectedEvents:(v211 * (v13 / v211))];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "radio_status_double_notification"))
      {
        if (v13)
        {
          v207 = log10(v13) + 1.0;
          v208 = v207 - 4;
          if (v207 <= 4)
          {
            v208 = 0;
          }

          v209 = v208;
        }

        else
        {
          v209 = 0.0;
        }

        v212 = __exp10(v209);
        [v215 setRadioStatusDoubleNotification:(v212 * (v13 / v212))];
      }

LABEL_393:
      if (v217 < 0)
      {
        operator delete(buf);
      }

      if (count == ++v7)
      {
        v5 = 0;
        goto LABEL_396;
      }
    }

    if (*(&buf + 1) == 18)
    {
      p_buf = buf;
      goto LABEL_21;
    }

LABEL_28:
    v20 = *(&buf + 1);
    if (v217 < 0 && *(&buf + 1) == 23)
    {
      if (*buf == 0x726F7272655F7874 && *(buf + 8) == 0x6F6C73656D69745FLL && *(buf + 15) == 0x6465646E655F746FLL)
      {
        v23 = uint64;
        if (uint64)
        {
          v24 = log10(uint64) + 1.0;
          v25 = v24 - 4;
          if (v24 <= 4)
          {
            v25 = 0;
          }

          v26 = v25;
        }

        else
        {
          v26 = 0.0;
        }

        v87 = __exp10(v26);
        [v215 setTxErrorTimeslotEnded:(v87 * (v23 / v87))];
        goto LABEL_393;
      }
    }

    else
    {
      if (v217 < 0 && *(&buf + 1) == 24)
      {
        if (*buf == 0x726F7272655F7874 && *(buf + 8) == 0x6F6C73656D69745FLL && *(buf + 16) == 0x6465696E65645F74)
        {
          v43 = uint64;
          if (uint64)
          {
            v44 = log10(uint64) + 1.0;
            v45 = v44 - 4;
            if (v44 <= 4)
            {
              v45 = 0;
            }

            v46 = v45;
          }

          else
          {
            v46 = 0.0;
          }

          v104 = __exp10(v46);
          [v215 setTxErrorTimeslotDenied:(v104 * (v43 / v104))];
          goto LABEL_393;
        }

        goto LABEL_104;
      }

      if (v217 < 0 && *(&buf + 1) == 37)
      {
        if (*buf == 0x726F7272655F7874 && *(buf + 8) == 0x68635F797375625FLL && *(buf + 16) == 0x63635F6C656E6E61 && *(buf + 24) == 0x74735F746F6E5F61 && *(buf + 29) == 0x646574726174735FLL)
        {
          v99 = uint64;
          if (uint64)
          {
            v100 = log10(uint64) + 1.0;
            v101 = v100 - 4;
            if (v100 <= 4)
            {
              v101 = 0;
            }

            v102 = v101;
          }

          else
          {
            v102 = 0.0;
          }

          v113 = __exp10(v102);
          [v215 setTxErrorBusyChannelCcaNotStarted:(v113 * (v99 / v113))];
          goto LABEL_393;
        }

        goto LABEL_104;
      }

      if (v217 < 0 && *(&buf + 1) == 32)
      {
        if (*buf == 0x726F7272655F7874 && *(buf + 8) == 0x6C656E6E6168635FLL && *(buf + 16) == 0x5F7373656363615FLL && *(buf + 24) == 0x797375625F616363)
        {
          v109 = uint64;
          if (uint64)
          {
            v110 = log10(uint64) + 1.0;
            v111 = v110 - 4;
            if (v110 <= 4)
            {
              v111 = 0;
            }

            v112 = v111;
          }

          else
          {
            v112 = 0.0;
          }

          v123 = __exp10(v112);
          [v215 setTxErrorChannelAccessCcaBusy:(v123 * (v109 / v123))];
          goto LABEL_393;
        }

        if (*buf == 0x726F7272655F7874 && *(buf + 8) == 0x726F62615F78745FLL && *(buf + 16) == 0x616D73635F646574 && *(buf + 24) == 0x66666F6B6361625FLL)
        {
          v117 = uint64;
          if (uint64)
          {
            v118 = log10(uint64) + 1.0;
            v119 = v118 - 4;
            if (v118 <= 4)
            {
              v119 = 0;
            }

            v120 = v119;
          }

          else
          {
            v120 = 0.0;
          }

          v128 = __exp10(v120);
          [v215 setTxErrorTxAbortedCsmaBackoff:(v128 * (v117 / v128))];
          goto LABEL_393;
        }

        if (*buf == 0x726F7272655F7874 && *(buf + 8) == 0x726F62615F78745FLL && *(buf + 16) == 0x616D73635F646574 && *(buf + 24) == 0x657261706572705FLL)
        {
          v78 = uint64;
          if (uint64)
          {
            v79 = log10(uint64) + 1.0;
            v80 = v79 - 4;
            if (v79 <= 4)
            {
              v80 = 0;
            }

            v81 = v80;
          }

          else
          {
            v81 = 0.0;
          }

          v133 = __exp10(v81);
          [v215 setTxErrorTxAbortedCsmaPrepare:(v133 * (v78 / v133))];
          goto LABEL_393;
        }

        goto LABEL_104;
      }

      if (v217 < 0 && *(&buf + 1) == 31)
      {
        if (*buf == 0x726F7272655F7874 && *(buf + 8) == 0x6C656E6E6168635FLL && *(buf + 16) == 0x5F7373656363615FLL && *(buf + 23) == 0x6572756C6961665FLL)
        {
          v94 = uint64;
          if (uint64)
          {
            v95 = log10(uint64) + 1.0;
            v96 = v95 - 4;
            if (v95 <= 4)
            {
              v96 = 0;
            }

            v97 = v96;
          }

          else
          {
            v97 = 0.0;
          }

          v129 = __exp10(v97);
          [v215 setTxErrorChannelAccessFailure:(v129 * (v94 / v129))];
          goto LABEL_393;
        }

        goto LABEL_104;
      }

      if (v217 < 0)
      {
        if (*(&buf + 1) == 19)
        {
          v27 = buf;
          goto LABEL_44;
        }

        goto LABEL_51;
      }
    }

    goto LABEL_104;
  }

  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    AWDMetricsHandlers_handle_getprop_otradiocounters();
  }

  v5 = 1;
LABEL_396:

LABEL_397:
  return v5;
}

uint64_t AWDMetricsHandlers_handle_getprop_macerror(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_macerror();
    }

    v6 = 1;
    goto LABEL_545;
  }

  count = xpc_array_get_count(v3);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AWDMetrics : MACErrorHistogram array with size %ld.", buf, 0xCu);
  }

  if (count)
  {
    v295 = 0;
    v296 = 0;
    v292 = 0;
    v293 = 0;
    v290 = 0;
    v291 = 0;
    v287 = 0;
    v288 = 0;
    v284 = 0;
    v285 = 0;
    v281 = 0;
    v282 = 0;
    v280 = 0;
    v294 = 0;
    v289 = 0;
    v286 = 0;
    v283 = 0;
    v8 = 0;
    v5 = 0;
    while (1)
    {
      v9 = xpc_array_get_dictionary(v3, v8);

      v5 = v9;
      string = xpc_dictionary_get_string(v9, "key");
      v11 = strlen(string);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      v299 = v11;
      if (v11)
      {
        memmove(buf, string, v11);
      }

      buf[v12] = 0;
      uint64 = xpc_dictionary_get_uint64(v9, "value");
      v14 = uint64;
      if ((v299 & 0x80000000) == 0)
      {
        break;
      }

      if (*&buf[8] != 19)
      {
        goto LABEL_201;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D305B726F727245)
      {
LABEL_137:
        v47 = uint64;
        if (uint64)
        {
          v48 = log10(uint64) + 1.0;
          v49 = v48 - 4;
          if (v48 <= 4)
          {
            v49 = 0;
          }

          v50 = v49;
        }

        else
        {
          v50 = 0.0;
        }

        v59 = __exp10(v50);
        HIDWORD(v295) = (v59 * (v47 / v59));
        goto LABEL_270;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D315B726F727245)
      {
LABEL_141:
        v51 = uint64;
        if (uint64)
        {
          v52 = log10(uint64) + 1.0;
          v53 = v52 - 4;
          if (v52 <= 4)
          {
            v53 = 0;
          }

          v54 = v53;
        }

        else
        {
          v54 = 0.0;
        }

        v64 = __exp10(v54);
        HIDWORD(v293) = (v64 * (v51 / v64));
        goto LABEL_270;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D325B726F727245)
      {
LABEL_145:
        v55 = uint64;
        if (uint64)
        {
          v56 = log10(uint64) + 1.0;
          v57 = v56 - 4;
          if (v56 <= 4)
          {
            v57 = 0;
          }

          v58 = v57;
        }

        else
        {
          v58 = 0.0;
        }

        v69 = __exp10(v58);
        HIDWORD(v292) = (v69 * (v55 / v69));
        goto LABEL_270;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D335B726F727245)
      {
LABEL_151:
        v60 = uint64;
        if (uint64)
        {
          v61 = log10(uint64) + 1.0;
          v62 = v61 - 4;
          if (v61 <= 4)
          {
            v62 = 0;
          }

          v63 = v62;
        }

        else
        {
          v63 = 0.0;
        }

        v74 = __exp10(v63);
        HIDWORD(v290) = (v74 * (v60 / v74));
        goto LABEL_270;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D345B726F727245)
      {
LABEL_157:
        v65 = uint64;
        if (uint64)
        {
          v66 = log10(uint64) + 1.0;
          v67 = v66 - 4;
          if (v66 <= 4)
          {
            v67 = 0;
          }

          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        v75 = __exp10(v68);
        HIDWORD(v288) = (v75 * (v65 / v75));
        goto LABEL_270;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D355B726F727245)
      {
LABEL_163:
        v70 = uint64;
        if (uint64)
        {
          v71 = log10(uint64) + 1.0;
          v72 = v71 - 4;
          if (v71 <= 4)
          {
            v72 = 0;
          }

          v73 = v72;
        }

        else
        {
          v73 = 0.0;
        }

        v76 = __exp10(v73);
        HIDWORD(v287) = (v76 * (v70 / v76));
        goto LABEL_270;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D365B726F727245)
      {
LABEL_173:
        v77 = uint64;
        if (uint64)
        {
          v78 = log10(uint64) + 1.0;
          v79 = v78 - 4;
          if (v78 <= 4)
          {
            v79 = 0;
          }

          v80 = v79;
        }

        else
        {
          v80 = 0.0;
        }

        v122 = __exp10(v80);
        HIDWORD(v284) = (v122 * (v77 / v122));
        goto LABEL_270;
      }

      if ((v299 & 0x80) == 0)
      {
        if (v299 != 19)
        {
          goto LABEL_201;
        }

LABEL_121:
        if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D375B726F727245)
        {
          goto LABEL_248;
        }

        if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D385B726F727245)
        {
          goto LABEL_258;
        }

        goto LABEL_193;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D375B726F727245)
      {
LABEL_248:
        v118 = uint64;
        if (uint64)
        {
          v119 = log10(uint64) + 1.0;
          v120 = v119 - 4;
          if (v119 <= 4)
          {
            v120 = 0;
          }

          v121 = v120;
        }

        else
        {
          v121 = 0.0;
        }

        v124 = __exp10(v121);
        HIDWORD(v282) = (v124 * (v118 / v124));
        goto LABEL_270;
      }

      v83 = *buf;
      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D385B726F727245)
      {
LABEL_258:
        v125 = uint64;
        if (uint64)
        {
          v126 = log10(uint64) + 1.0;
          v127 = v126 - 4;
          if (v126 <= 4)
          {
            v127 = 0;
          }

          v128 = v127;
        }

        else
        {
          v128 = 0.0;
        }

        v133 = __exp10(v128);
        HIDWORD(v281) = (v133 * (v125 / v133));
        goto LABEL_270;
      }

      if (v299 < 0)
      {
        goto LABEL_194;
      }

      if (v299 != 19)
      {
        goto LABEL_201;
      }

LABEL_193:
      v83 = buf;
LABEL_194:
      v86 = *v83;
      v87 = v83[1];
      v88 = *(v83 + 11);
      if (v86 != 0x6F4E746365726944 || v87 != 0x726F7272456B6341 || v88 != 0x5D395B726F727245)
      {
LABEL_201:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[10]"))
        {
          if (v14)
          {
            v91 = log10(v14) + 1.0;
            v92 = v91 - 4;
            if (v91 <= 4)
            {
              v92 = 0;
            }

            v93 = v92;
          }

          else
          {
            v93 = 0.0;
          }

          v100 = __exp10(v93);
          HIDWORD(v296) = (v100 * (v14 / v100));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[11]"))
        {
          if (v14)
          {
            v94 = log10(v14) + 1.0;
            v95 = v94 - 4;
            if (v94 <= 4)
            {
              v95 = 0;
            }

            v96 = v95;
          }

          else
          {
            v96 = 0.0;
          }

          v104 = __exp10(v96);
          HIDWORD(v294) = (v104 * (v14 / v104));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[12]"))
        {
          if (v14)
          {
            v97 = log10(v14) + 1.0;
            v98 = v97 - 4;
            if (v97 <= 4)
            {
              v98 = 0;
            }

            v99 = v98;
          }

          else
          {
            v99 = 0.0;
          }

          v108 = __exp10(v99);
          HIDWORD(v291) = (v108 * (v14 / v108));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[13]"))
        {
          if (v14)
          {
            v101 = log10(v14) + 1.0;
            v102 = v101 - 4;
            if (v101 <= 4)
            {
              v102 = 0;
            }

            v103 = v102;
          }

          else
          {
            v103 = 0.0;
          }

          v112 = __exp10(v103);
          HIDWORD(v289) = (v112 * (v14 / v112));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[14]"))
        {
          if (v14)
          {
            v105 = log10(v14) + 1.0;
            v106 = v105 - 4;
            if (v105 <= 4)
            {
              v106 = 0;
            }

            v107 = v106;
          }

          else
          {
            v107 = 0.0;
          }

          v116 = __exp10(v107);
          HIDWORD(v286) = (v116 * (v14 / v116));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[15]"))
        {
          if (v14)
          {
            v109 = log10(v14) + 1.0;
            v110 = v109 - 4;
            if (v109 <= 4)
            {
              v110 = 0;
            }

            v111 = v110;
          }

          else
          {
            v111 = 0.0;
          }

          v117 = __exp10(v111);
          HIDWORD(v285) = (v117 * (v14 / v117));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[16]"))
        {
          if (v14)
          {
            v113 = log10(v14) + 1.0;
            v114 = v113 - 4;
            if (v113 <= 4)
            {
              v114 = 0;
            }

            v115 = v114;
          }

          else
          {
            v115 = 0.0;
          }

          v123 = __exp10(v115);
          HIDWORD(v283) = (v123 * (v14 / v123));
        }

        goto LABEL_270;
      }

      v129 = uint64;
      if (uint64)
      {
        v130 = log10(uint64) + 1.0;
        v131 = v130 - 4;
        if (v130 <= 4)
        {
          v131 = 0;
        }

        v132 = v131;
      }

      else
      {
        v132 = 0.0;
      }

      v134 = __exp10(v132);
      HIDWORD(v280) = (v134 * (v129 / v134));
LABEL_270:
      if ((v299 & 0x80000000) == 0)
      {
        if (v299 != 17)
        {
          goto LABEL_461;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x305B726F72724561 && buf[16] == 93)
        {
          goto LABEL_391;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x315B726F72724561 && buf[16] == 93)
        {
          goto LABEL_395;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x325B726F72724561 && buf[16] == 93)
        {
          goto LABEL_399;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x335B726F72724561 && buf[16] == 93)
        {
          goto LABEL_406;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x345B726F72724561 && buf[16] == 93)
        {
          goto LABEL_413;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x355B726F72724561 && buf[16] == 93)
        {
          goto LABEL_420;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x365B726F72724561 && buf[16] == 93)
        {
          goto LABEL_433;
        }

LABEL_375:
        if (*buf == 0x6343746365726944 && *&buf[8] == 0x375B726F72724561 && buf[16] == 93)
        {
          goto LABEL_516;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x385B726F72724561 && buf[16] == 93)
        {
          goto LABEL_529;
        }

        goto LABEL_453;
      }

      if (*&buf[8] != 17)
      {
        goto LABEL_461;
      }

      if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x305B726F72724561 && *(*buf + 16) == 93)
      {
LABEL_391:
        if (v14)
        {
          v167 = log10(v14) + 1.0;
          v168 = v167 - 4;
          if (v167 <= 4)
          {
            v168 = 0;
          }

          v169 = v168;
        }

        else
        {
          v169 = 0.0;
        }

        v176 = __exp10(v169);
        LODWORD(v295) = (v176 * (v14 / v176));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_505:
        operator delete(*buf);
        goto LABEL_9;
      }

      if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x315B726F72724561 && *(*buf + 16) == 93)
      {
LABEL_395:
        if (v14)
        {
          v170 = log10(v14) + 1.0;
          v171 = v170 - 4;
          if (v170 <= 4)
          {
            v171 = 0;
          }

          v172 = v171;
        }

        else
        {
          v172 = 0.0;
        }

        v180 = __exp10(v172);
        LODWORD(v293) = (v180 * (v14 / v180));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x325B726F72724561 && *(*buf + 16) == 93)
      {
LABEL_399:
        if (v14)
        {
          v173 = log10(v14) + 1.0;
          v174 = v173 - 4;
          if (v173 <= 4)
          {
            v174 = 0;
          }

          v175 = v174;
        }

        else
        {
          v175 = 0.0;
        }

        v184 = __exp10(v175);
        LODWORD(v292) = (v184 * (v14 / v184));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x335B726F72724561 && *(*buf + 16) == 93)
      {
LABEL_406:
        if (v14)
        {
          v177 = log10(v14) + 1.0;
          v178 = v177 - 4;
          if (v177 <= 4)
          {
            v178 = 0;
          }

          v179 = v178;
        }

        else
        {
          v179 = 0.0;
        }

        v188 = __exp10(v179);
        LODWORD(v290) = (v188 * (v14 / v188));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x345B726F72724561 && *(*buf + 16) == 93)
      {
LABEL_413:
        if (v14)
        {
          v181 = log10(v14) + 1.0;
          v182 = v181 - 4;
          if (v181 <= 4)
          {
            v182 = 0;
          }

          v183 = v182;
        }

        else
        {
          v183 = 0.0;
        }

        v189 = __exp10(v183);
        LODWORD(v288) = (v189 * (v14 / v189));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x355B726F72724561 && *(*buf + 16) == 93)
      {
LABEL_420:
        if (v14)
        {
          v185 = log10(v14) + 1.0;
          v186 = v185 - 4;
          if (v185 <= 4)
          {
            v186 = 0;
          }

          v187 = v186;
        }

        else
        {
          v187 = 0.0;
        }

        v190 = __exp10(v187);
        LODWORD(v287) = (v190 * (v14 / v190));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x365B726F72724561 && *(*buf + 16) == 93)
      {
LABEL_433:
        if (v14)
        {
          v191 = log10(v14) + 1.0;
          v192 = v191 - 4;
          if (v191 <= 4)
          {
            v192 = 0;
          }

          v193 = v192;
        }

        else
        {
          v193 = 0.0;
        }

        v234 = __exp10(v193);
        LODWORD(v284) = (v234 * (v14 / v234));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if ((v299 & 0x80) == 0)
      {
        if (v299 != 17)
        {
          goto LABEL_461;
        }

        goto LABEL_375;
      }

      if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x375B726F72724561 && *(*buf + 16) == 93)
      {
LABEL_516:
        if (v14)
        {
          v231 = log10(v14) + 1.0;
          v232 = v231 - 4;
          if (v231 <= 4)
          {
            v232 = 0;
          }

          v233 = v232;
        }

        else
        {
          v233 = 0.0;
        }

        v236 = __exp10(v233);
        LODWORD(v282) = (v236 * (v14 / v236));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      v196 = *buf;
      if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x385B726F72724561 && *(*buf + 16) == 93)
      {
LABEL_529:
        if (v14)
        {
          v237 = log10(v14) + 1.0;
          v238 = v237 - 4;
          if (v237 <= 4)
          {
            v238 = 0;
          }

          v239 = v238;
        }

        else
        {
          v239 = 0.0;
        }

        v243 = __exp10(v239);
        LODWORD(v281) = (v243 * (v14 / v243));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (v299 < 0)
      {
        goto LABEL_454;
      }

      if (v299 != 17)
      {
        goto LABEL_461;
      }

LABEL_453:
      v196 = buf;
LABEL_454:
      v199 = *v196;
      v200 = *(v196 + 1);
      v201 = v196[16];
      if (v199 == 0x6343746365726944 && v200 == 0x395B726F72724561 && v201 == 93)
      {
        if (v14)
        {
          v240 = log10(v14) + 1.0;
          v241 = v240 - 4;
          if (v240 <= 4)
          {
            v241 = 0;
          }

          v242 = v241;
        }

        else
        {
          v242 = 0.0;
        }

        v244 = __exp10(v242);
        LODWORD(v280) = (v244 * (v14 / v244));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

LABEL_461:
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[10]"))
      {
        if (v14)
        {
          v204 = log10(v14) + 1.0;
          v205 = v204 - 4;
          if (v204 <= 4)
          {
            v205 = 0;
          }

          v206 = v205;
        }

        else
        {
          v206 = 0.0;
        }

        v213 = __exp10(v206);
        LODWORD(v296) = (v213 * (v14 / v213));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[11]"))
      {
        if (v14)
        {
          v207 = log10(v14) + 1.0;
          v208 = v207 - 4;
          if (v207 <= 4)
          {
            v208 = 0;
          }

          v209 = v208;
        }

        else
        {
          v209 = 0.0;
        }

        v217 = __exp10(v209);
        LODWORD(v294) = (v217 * (v14 / v217));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[12]"))
      {
        if (v14)
        {
          v210 = log10(v14) + 1.0;
          v211 = v210 - 4;
          if (v210 <= 4)
          {
            v211 = 0;
          }

          v212 = v211;
        }

        else
        {
          v212 = 0.0;
        }

        v221 = __exp10(v212);
        LODWORD(v291) = (v221 * (v14 / v221));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[13]"))
      {
        if (v14)
        {
          v214 = log10(v14) + 1.0;
          v215 = v214 - 4;
          if (v214 <= 4)
          {
            v215 = 0;
          }

          v216 = v215;
        }

        else
        {
          v216 = 0.0;
        }

        v225 = __exp10(v216);
        LODWORD(v289) = (v225 * (v14 / v225));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[14]"))
      {
        if (v14)
        {
          v218 = log10(v14) + 1.0;
          v219 = v218 - 4;
          if (v218 <= 4)
          {
            v219 = 0;
          }

          v220 = v219;
        }

        else
        {
          v220 = 0.0;
        }

        v226 = __exp10(v220);
        LODWORD(v286) = (v226 * (v14 / v226));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[15]"))
      {
        if (v14)
        {
          v222 = log10(v14) + 1.0;
          v223 = v222 - 4;
          if (v222 <= 4)
          {
            v223 = 0;
          }

          v224 = v223;
        }

        else
        {
          v224 = 0.0;
        }

        v230 = __exp10(v224);
        LODWORD(v285) = (v230 * (v14 / v230));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[16]"))
      {
        if (v14)
        {
          v227 = log10(v14) + 1.0;
          v228 = v227 - 4;
          if (v227 <= 4)
          {
            v228 = 0;
          }

          v229 = v228;
        }

        else
        {
          v229 = 0.0;
        }

        v235 = __exp10(v229);
        LODWORD(v283) = (v235 * (v14 / v235));
        if ((v299 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_505;
      }

      if (v299 < 0)
      {
        goto LABEL_505;
      }

LABEL_9:
      if (count == ++v8)
      {
        goto LABEL_544;
      }
    }

    if (v299 != 19)
    {
      goto LABEL_201;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D305B726F727245)
    {
      goto LABEL_137;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D315B726F727245)
    {
      goto LABEL_141;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D325B726F727245)
    {
      goto LABEL_145;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D335B726F727245)
    {
      goto LABEL_151;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D345B726F727245)
    {
      goto LABEL_157;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D355B726F727245)
    {
      goto LABEL_163;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D365B726F727245)
    {
      goto LABEL_173;
    }

    goto LABEL_121;
  }

  v295 = 0;
  v296 = 0;
  v292 = 0;
  v293 = 0;
  v290 = 0;
  v291 = 0;
  v287 = 0;
  v288 = 0;
  v284 = 0;
  v285 = 0;
  v281 = 0;
  v282 = 0;
  v280 = 0;
  v294 = 0;
  v289 = 0;
  v286 = 0;
  v283 = 0;
  v5 = 0;
LABEL_544:
  v245 = [v4 sCntrsMacTx];
  [v245 addTxDirectNoackHistogram:HIDWORD(v295)];

  v246 = [v4 sCntrsMacTx];
  [v246 addTxDirectNoackHistogram:HIDWORD(v293)];

  v247 = [v4 sCntrsMacTx];
  [v247 addTxDirectNoackHistogram:HIDWORD(v292)];

  v248 = [v4 sCntrsMacTx];
  [v248 addTxDirectNoackHistogram:HIDWORD(v290)];

  v249 = [v4 sCntrsMacTx];
  [v249 addTxDirectNoackHistogram:HIDWORD(v288)];

  v250 = [v4 sCntrsMacTx];
  [v250 addTxDirectNoackHistogram:HIDWORD(v287)];

  v251 = [v4 sCntrsMacTx];
  [v251 addTxDirectNoackHistogram:HIDWORD(v284)];

  v252 = [v4 sCntrsMacTx];
  [v252 addTxDirectNoackHistogram:HIDWORD(v282)];

  v253 = [v4 sCntrsMacTx];
  [v253 addTxDirectNoackHistogram:HIDWORD(v281)];

  v254 = [v4 sCntrsMacTx];
  [v254 addTxDirectNoackHistogram:HIDWORD(v280)];

  v255 = [v4 sCntrsMacTx];
  [v255 addTxDirectNoackHistogram:HIDWORD(v296)];

  v256 = [v4 sCntrsMacTx];
  [v256 addTxDirectNoackHistogram:HIDWORD(v294)];

  v257 = [v4 sCntrsMacTx];
  [v257 addTxDirectNoackHistogram:HIDWORD(v291)];

  v258 = [v4 sCntrsMacTx];
  [v258 addTxDirectNoackHistogram:HIDWORD(v289)];

  v259 = [v4 sCntrsMacTx];
  [v259 addTxDirectNoackHistogram:HIDWORD(v286)];

  v260 = [v4 sCntrsMacTx];
  [v260 addTxDirectNoackHistogram:HIDWORD(v285)];

  v261 = [v4 sCntrsMacTx];
  [v261 addTxDirectNoackHistogram:HIDWORD(v283)];

  v262 = [v4 sCntrsMacTx];
  [v262 addTxDirectChannelaccessfailureHistogram:v295];

  v263 = [v4 sCntrsMacTx];
  [v263 addTxDirectChannelaccessfailureHistogram:v293];

  v264 = [v4 sCntrsMacTx];
  [v264 addTxDirectChannelaccessfailureHistogram:v292];

  v265 = [v4 sCntrsMacTx];
  [v265 addTxDirectChannelaccessfailureHistogram:v290];

  v266 = [v4 sCntrsMacTx];
  [v266 addTxDirectChannelaccessfailureHistogram:v288];

  v267 = [v4 sCntrsMacTx];
  [v267 addTxDirectChannelaccessfailureHistogram:v287];

  v268 = [v4 sCntrsMacTx];
  [v268 addTxDirectChannelaccessfailureHistogram:v284];

  v269 = [v4 sCntrsMacTx];
  [v269 addTxDirectChannelaccessfailureHistogram:v282];

  v270 = [v4 sCntrsMacTx];
  [v270 addTxDirectChannelaccessfailureHistogram:v281];

  v271 = [v4 sCntrsMacTx];
  [v271 addTxDirectChannelaccessfailureHistogram:v280];

  v272 = [v4 sCntrsMacTx];
  [v272 addTxDirectChannelaccessfailureHistogram:v296];

  v273 = [v4 sCntrsMacTx];
  [v273 addTxDirectChannelaccessfailureHistogram:v294];

  v274 = [v4 sCntrsMacTx];
  [v274 addTxDirectChannelaccessfailureHistogram:v291];

  v275 = [v4 sCntrsMacTx];
  [v275 addTxDirectChannelaccessfailureHistogram:v289];

  v276 = [v4 sCntrsMacTx];
  [v276 addTxDirectChannelaccessfailureHistogram:v286];

  v277 = [v4 sCntrsMacTx];
  [v277 addTxDirectChannelaccessfailureHistogram:v285];

  v278 = [v4 sCntrsMacTx];
  [v278 addTxDirectChannelaccessfailureHistogram:v283];

  v6 = 0;
LABEL_545:

  return v6;
}

uint64_t AWDMetricsHandlers_handle_getprop_macretry(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_macretry();
    }

    v6 = 1;
    goto LABEL_335;
  }

  count = xpc_array_get_count(v3);
  v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = count;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AWDMetrics : MACRetryHistogram array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v194 = 0;
    v195 = 0;
    v192 = 0;
    v193 = 0;
    v189 = 0;
    v190 = 0;
    v188 = 0;
    v191 = 0;
    v9 = 0;
    v5 = 0;
    while (1)
    {
      v10 = xpc_array_get_dictionary(v3, v9);

      v5 = v10;
      string = xpc_dictionary_get_string(v10, "key");
      v12 = strlen(string);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v201 = v12;
      if (v12)
      {
        memmove(&buf, string, v12);
      }

      *(&buf + v13) = 0;
      uint64 = xpc_dictionary_get_uint64(v5, "value");
      v15 = uint64;
      if ((v201 & 0x80000000) == 0)
      {
        break;
      }

      if (*(&buf + 1) != 14)
      {
        goto LABEL_145;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D305B7972746552)
      {
LABEL_90:
        v32 = uint64;
        if (uint64)
        {
          v33 = log10(uint64) + 1.0;
          v34 = v33 - 4;
          if (v33 <= 4)
          {
            v34 = 0;
          }

          v35 = v34;
        }

        else
        {
          v35 = 0.0;
        }

        v44 = __exp10(v35);
        LODWORD(v199) = (v44 * (v32 / v44));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D315B7972746552)
      {
LABEL_94:
        v36 = uint64;
        if (uint64)
        {
          v37 = log10(uint64) + 1.0;
          v38 = v37 - 4;
          if (v37 <= 4)
          {
            v38 = 0;
          }

          v39 = v38;
        }

        else
        {
          v39 = 0.0;
        }

        v49 = __exp10(v39);
        HIDWORD(v197) = (v49 * (v36 / v49));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D325B7972746552)
      {
LABEL_98:
        v40 = uint64;
        if (uint64)
        {
          v41 = log10(uint64) + 1.0;
          v42 = v41 - 4;
          if (v41 <= 4)
          {
            v42 = 0;
          }

          v43 = v42;
        }

        else
        {
          v43 = 0.0;
        }

        v54 = __exp10(v43);
        HIDWORD(v196) = (v54 * (v40 / v54));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D335B7972746552)
      {
LABEL_104:
        v45 = uint64;
        if (uint64)
        {
          v46 = log10(uint64) + 1.0;
          v47 = v46 - 4;
          if (v46 <= 4)
          {
            v47 = 0;
          }

          v48 = v47;
        }

        else
        {
          v48 = 0.0;
        }

        v59 = __exp10(v48);
        LODWORD(v195) = (v59 * (v45 / v59));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D345B7972746552)
      {
LABEL_110:
        v50 = uint64;
        if (uint64)
        {
          v51 = log10(uint64) + 1.0;
          v52 = v51 - 4;
          if (v51 <= 4)
          {
            v52 = 0;
          }

          v53 = v52;
        }

        else
        {
          v53 = 0.0;
        }

        v60 = __exp10(v53);
        HIDWORD(v193) = (v60 * (v50 / v60));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D355B7972746552)
      {
LABEL_116:
        v55 = uint64;
        if (uint64)
        {
          v56 = log10(uint64) + 1.0;
          v57 = v56 - 4;
          if (v56 <= 4)
          {
            v57 = 0;
          }

          v58 = v57;
        }

        else
        {
          v58 = 0.0;
        }

        v61 = __exp10(v58);
        HIDWORD(v192) = (v61 * (v55 / v61));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D365B7972746552)
      {
LABEL_126:
        v62 = uint64;
        if (uint64)
        {
          v63 = log10(uint64) + 1.0;
          v64 = v63 - 4;
          if (v63 <= 4)
          {
            v64 = 0;
          }

          v65 = v64;
        }

        else
        {
          v65 = 0.0;
        }

        v100 = __exp10(v65);
        HIDWORD(v190) = (v100 * (v62 / v100));
        goto LABEL_207;
      }

      if ((v201 & 0x80) == 0)
      {
        if (v201 != 14)
        {
          goto LABEL_145;
        }

LABEL_80:
        if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D375B7972746552)
        {
          goto LABEL_187;
        }

        if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D385B7972746552)
        {
          goto LABEL_195;
        }

        goto LABEL_140;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D375B7972746552)
      {
LABEL_187:
        v96 = uint64;
        if (uint64)
        {
          v97 = log10(uint64) + 1.0;
          v98 = v97 - 4;
          if (v97 <= 4)
          {
            v98 = 0;
          }

          v99 = v98;
        }

        else
        {
          v99 = 0.0;
        }

        v101 = __exp10(v99);
        HIDWORD(v189) = (v101 * (v96 / v101));
        goto LABEL_207;
      }

      p_buf = buf;
      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D385B7972746552)
      {
LABEL_195:
        v102 = uint64;
        if (uint64)
        {
          v103 = log10(uint64) + 1.0;
          v104 = v103 - 4;
          if (v103 <= 4)
          {
            v104 = 0;
          }

          v105 = v104;
        }

        else
        {
          v105 = 0.0;
        }

        v110 = __exp10(v105);
        HIDWORD(v188) = (v110 * (v102 / v110));
        goto LABEL_207;
      }

      if (v201 < 0)
      {
        goto LABEL_141;
      }

      if (v201 != 14)
      {
        goto LABEL_145;
      }

LABEL_140:
      p_buf = &buf;
LABEL_141:
      v69 = *p_buf;
      v70 = *(p_buf + 6);
      if (v69 != 0x6552746365726944 || v70 != 0x5D395B7972746552)
      {
LABEL_145:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[10]"))
        {
          if (v15)
          {
            v72 = log10(v15) + 1.0;
            v73 = v72 - 4;
            if (v72 <= 4)
            {
              v73 = 0;
            }

            v74 = v73;
          }

          else
          {
            v74 = 0.0;
          }

          v81 = __exp10(v74);
          HIDWORD(v199) = (v81 * (v15 / v81));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[11]"))
        {
          if (v15)
          {
            v75 = log10(v15) + 1.0;
            v76 = v75 - 4;
            if (v75 <= 4)
            {
              v76 = 0;
            }

            v77 = v76;
          }

          else
          {
            v77 = 0.0;
          }

          v85 = __exp10(v77);
          LODWORD(v198) = (v85 * (v15 / v85));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[12]"))
        {
          if (v15)
          {
            v78 = log10(v15) + 1.0;
            v79 = v78 - 4;
            if (v78 <= 4)
            {
              v79 = 0;
            }

            v80 = v79;
          }

          else
          {
            v80 = 0.0;
          }

          v89 = __exp10(v80);
          HIDWORD(v195) = (v89 * (v15 / v89));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[13]"))
        {
          if (v15)
          {
            v82 = log10(v15) + 1.0;
            v83 = v82 - 4;
            if (v82 <= 4)
            {
              v83 = 0;
            }

            v84 = v83;
          }

          else
          {
            v84 = 0.0;
          }

          v93 = __exp10(v84);
          LODWORD(v194) = (v93 * (v15 / v93));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[14]"))
        {
          if (v15)
          {
            v86 = log10(v15) + 1.0;
            v87 = v86 - 4;
            if (v86 <= 4)
            {
              v87 = 0;
            }

            v88 = v87;
          }

          else
          {
            v88 = 0.0;
          }

          v94 = __exp10(v88);
          HIDWORD(v191) = (v94 * (v15 / v94));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[15]"))
        {
          if (v15)
          {
            v90 = log10(v15) + 1.0;
            v91 = v90 - 4;
            if (v90 <= 4)
            {
              v91 = 0;
            }

            v92 = v91;
          }

          else
          {
            v92 = 0.0;
          }

          v95 = __exp10(v92);
          LODWORD(v191) = (v95 * (v15 / v95));
        }

        goto LABEL_207;
      }

      v106 = uint64;
      if (uint64)
      {
        v107 = log10(uint64) + 1.0;
        v108 = v107 - 4;
        if (v107 <= 4)
        {
          v108 = 0;
        }

        v109 = v108;
      }

      else
      {
        v109 = 0.0;
      }

      v111 = __exp10(v109);
      LODWORD(v188) = (v111 * (v106 / v111));
LABEL_207:
      v112 = v201;
      if ((v201 & 0x80000000) == 0)
      {
        if (v201 != 16)
        {
          goto LABEL_10;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D305B7972746552)
        {
LABEL_280:
          if (v15)
          {
            v134 = log10(v15) + 1.0;
            v135 = v134 - 4;
            if (v134 <= 4)
            {
              v135 = 0;
            }

            v136 = v135;
          }

          else
          {
            v136 = 0.0;
          }

          v143 = __exp10(v136);
          HIDWORD(v198) = (v143 * (v15 / v143));
          if ((v112 & 0x80) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D315B7972746552)
        {
          goto LABEL_284;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D325B7972746552)
        {
          goto LABEL_288;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D335B7972746552)
        {
          goto LABEL_295;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D345B7972746552)
        {
          goto LABEL_302;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D355B7972746552)
        {
          goto LABEL_309;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D365B7972746552)
        {
          goto LABEL_322;
        }

        goto LABEL_270;
      }

      if (*(&buf + 1) != 16)
      {
        goto LABEL_9;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D305B7972746552)
      {
        goto LABEL_280;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D315B7972746552)
      {
LABEL_284:
        if (v15)
        {
          v137 = log10(v15) + 1.0;
          v138 = v137 - 4;
          if (v137 <= 4)
          {
            v138 = 0;
          }

          v139 = v138;
        }

        else
        {
          v139 = 0.0;
        }

        v147 = __exp10(v139);
        LODWORD(v197) = (v147 * (v15 / v147));
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D325B7972746552)
      {
LABEL_288:
        if (v15)
        {
          v140 = log10(v15) + 1.0;
          v141 = v140 - 4;
          if (v140 <= 4)
          {
            v141 = 0;
          }

          v142 = v141;
        }

        else
        {
          v142 = 0.0;
        }

        v151 = __exp10(v142);
        LODWORD(v196) = (v151 * (v15 / v151));
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D335B7972746552)
      {
LABEL_295:
        if (v15)
        {
          v144 = log10(v15) + 1.0;
          v145 = v144 - 4;
          if (v144 <= 4)
          {
            v145 = 0;
          }

          v146 = v145;
        }

        else
        {
          v146 = 0.0;
        }

        v155 = __exp10(v146);
        HIDWORD(v194) = (v155 * (v15 / v155));
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D345B7972746552)
      {
LABEL_302:
        if (v15)
        {
          v148 = log10(v15) + 1.0;
          v149 = v148 - 4;
          if (v148 <= 4)
          {
            v149 = 0;
          }

          v150 = v149;
        }

        else
        {
          v150 = 0.0;
        }

        v156 = __exp10(v150);
        LODWORD(v193) = (v156 * (v15 / v156));
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D355B7972746552)
      {
LABEL_309:
        if (v15)
        {
          v152 = log10(v15) + 1.0;
          v153 = v152 - 4;
          if (v152 <= 4)
          {
            v153 = 0;
          }

          v154 = v153;
        }

        else
        {
          v154 = 0.0;
        }

        v157 = __exp10(v154);
        LODWORD(v192) = (v157 * (v15 / v157));
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v126 = buf;
      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D365B7972746552)
      {
LABEL_322:
        if (v15)
        {
          v158 = log10(v15) + 1.0;
          v159 = v158 - 4;
          if (v158 <= 4)
          {
            v159 = 0;
          }

          v160 = v159;
        }

        else
        {
          v160 = 0.0;
        }

        v161 = __exp10(v160);
        LODWORD(v190) = (v161 * (v15 / v161));
LABEL_328:
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if ((v201 & 0x80) == 0)
      {
        if (v201 != 16)
        {
          goto LABEL_10;
        }

LABEL_270:
        v126 = &buf;
      }

      v129 = *v126;
      v128 = v126[1];
      if (v129 != 0x7463657269446E49 || v128 != 0x5D375B7972746552)
      {
        goto LABEL_328;
      }

      if (v15)
      {
        v131 = log10(v15) + 1.0;
        v132 = v131 - 4;
        if (v131 <= 4)
        {
          v132 = 0;
        }

        v133 = v132;
      }

      else
      {
        v133 = 0.0;
      }

      v162 = __exp10(v133);
      LODWORD(v189) = (v162 * (v15 / v162));
      if ((v112 & 0x80) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      operator delete(buf);
LABEL_10:
      if (count == ++v9)
      {
        goto LABEL_334;
      }
    }

    if (v201 != 14)
    {
      goto LABEL_145;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D305B7972746552)
    {
      goto LABEL_90;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D315B7972746552)
    {
      goto LABEL_94;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D325B7972746552)
    {
      goto LABEL_98;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D335B7972746552)
    {
      goto LABEL_104;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D345B7972746552)
    {
      goto LABEL_110;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D355B7972746552)
    {
      goto LABEL_116;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D365B7972746552)
    {
      goto LABEL_126;
    }

    goto LABEL_80;
  }

  v198 = 0;
  v199 = 0;
  v196 = 0;
  v197 = 0;
  v194 = 0;
  v195 = 0;
  v192 = 0;
  v193 = 0;
  v189 = 0;
  v190 = 0;
  v188 = 0;
  v191 = 0;
  v5 = 0;
LABEL_334:
  v163 = [v4 sCntrsMacTx];
  [v163 addTxDirectRetryAttemptsHistogram:v199];

  v164 = [v4 sCntrsMacTx];
  [v164 addTxDirectRetryAttemptsHistogram:HIDWORD(v197)];

  v165 = [v4 sCntrsMacTx];
  [v165 addTxDirectRetryAttemptsHistogram:HIDWORD(v196)];

  v166 = [v4 sCntrsMacTx];
  [v166 addTxDirectRetryAttemptsHistogram:v195];

  v167 = [v4 sCntrsMacTx];
  [v167 addTxDirectRetryAttemptsHistogram:HIDWORD(v193)];

  v168 = [v4 sCntrsMacTx];
  [v168 addTxDirectRetryAttemptsHistogram:HIDWORD(v192)];

  v169 = [v4 sCntrsMacTx];
  [v169 addTxDirectRetryAttemptsHistogram:HIDWORD(v190)];

  v170 = [v4 sCntrsMacTx];
  [v170 addTxDirectRetryAttemptsHistogram:HIDWORD(v189)];

  v171 = [v4 sCntrsMacTx];
  [v171 addTxDirectRetryAttemptsHistogram:HIDWORD(v188)];

  v172 = [v4 sCntrsMacTx];
  [v172 addTxDirectRetryAttemptsHistogram:v188];

  v173 = [v4 sCntrsMacTx];
  [v173 addTxDirectRetryAttemptsHistogram:HIDWORD(v199)];

  v174 = [v4 sCntrsMacTx];
  [v174 addTxDirectRetryAttemptsHistogram:v198];

  v175 = [v4 sCntrsMacTx];
  [v175 addTxDirectRetryAttemptsHistogram:HIDWORD(v195)];

  v176 = [v4 sCntrsMacTx];
  [v176 addTxDirectRetryAttemptsHistogram:v194];

  v177 = [v4 sCntrsMacTx];
  [v177 addTxDirectRetryAttemptsHistogram:HIDWORD(v191)];

  v178 = [v4 sCntrsMacTx];
  [v178 addTxDirectRetryAttemptsHistogram:v191];

  v179 = [v4 sCntrsMacTx];
  [v179 addTxIndirectRetryAttemptsHistogram:HIDWORD(v198)];

  v180 = [v4 sCntrsMacTx];
  [v180 addTxIndirectRetryAttemptsHistogram:v197];

  v181 = [v4 sCntrsMacTx];
  [v181 addTxIndirectRetryAttemptsHistogram:v196];

  v182 = [v4 sCntrsMacTx];
  [v182 addTxIndirectRetryAttemptsHistogram:HIDWORD(v194)];

  v183 = [v4 sCntrsMacTx];
  [v183 addTxIndirectRetryAttemptsHistogram:v193];

  v184 = [v4 sCntrsMacTx];
  [v184 addTxIndirectRetryAttemptsHistogram:v192];

  v185 = [v4 sCntrsMacTx];
  [v185 addTxIndirectRetryAttemptsHistogram:v190];

  v186 = [v4 sCntrsMacTx];
  [v186 addTxIndirectRetryAttemptsHistogram:v189];

  v6 = 0;
LABEL_335:

  return v6;
}

uint64_t AWDMetricsHandlers_handle_getprop_ccaEnergyDetect(void *a1, void *a2)
{
  v3 = a1;
  v134 = a2;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_ccaEnergyDetect();
    }

    v5 = 1;
    goto LABEL_241;
  }

  count = xpc_array_get_count(v3);
  v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = count;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AWDMetrics : CCA Energy Detect Histogram array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v132 = 0;
    v133 = 0;
    v130 = 0;
    v131 = 0;
    v126 = 0;
    v129 = 0;
    v7 = 0;
    v4 = 0;
    while (1)
    {
      v8 = xpc_array_get_dictionary(v3, v7);

      v9 = v8;
      string = xpc_dictionary_get_string(v8, "key");
      v11 = strlen(string);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      v137 = v11;
      if (v11)
      {
        memmove(&buf, string, v11);
      }

      *(&buf + v12) = 0;
      v4 = v9;
      uint64 = xpc_dictionary_get_uint64(v9, "value");
      v14 = uint64;
      if (v137 < 0 && *(&buf + 1) == 34)
      {
        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x3C2028205D307830 && *(buf + 24) == 0x426430392D202020 && *(buf + 32) == 10605)
        {
          v19 = uint64;
          if (uint64)
          {
            v20 = log10(uint64) + 1.0;
            v21 = v20 - 4;
            if (v20 <= 4)
            {
              v21 = 0;
            }

            v22 = v21;
          }

          else
          {
            v22 = 0.0;
          }

          v70 = __exp10(v22);
          LODWORD(v133) = (v70 * (v19 / v70));
          if ((v137 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_238;
        }
      }

      else if (v137 < 0 && *(&buf + 1) == 35)
      {
        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x392D5B205D317830 && *(buf + 24) == 0x6435382D6D426430 && *(buf + 27) == 0x296D426435382D6DLL)
        {
          v66 = uint64;
          if (uint64)
          {
            v67 = log10(uint64) + 1.0;
            v68 = v67 - 4;
            if (v67 <= 4)
            {
              v68 = 0;
            }

            v69 = v68;
          }

          else
          {
            v69 = 0.0;
          }

          v80 = __exp10(v69);
          LODWORD(v132) = (v80 * (v66 / v80));
          if ((v137 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_238:
          operator delete(buf);
          goto LABEL_9;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x382D5B205D327830 && *(buf + 24) == 0x6430382D6D426435 && *(buf + 27) == 0x296D426430382D6DLL)
        {
          v71 = uint64;
          if (uint64)
          {
            v72 = log10(uint64) + 1.0;
            v73 = v72 - 4;
            if (v72 <= 4)
            {
              v73 = 0;
            }

            v74 = v73;
          }

          else
          {
            v74 = 0.0;
          }

          v85 = __exp10(v74);
          HIDWORD(v131) = (v85 * (v71 / v85));
          if ((v137 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_238;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x382D5B205D337830 && *(buf + 24) == 0x6435372D6D426430 && *(buf + 27) == 0x296D426435372D6DLL)
        {
          v76 = uint64;
          if (uint64)
          {
            v77 = log10(uint64) + 1.0;
            v78 = v77 - 4;
            if (v77 <= 4)
            {
              v78 = 0;
            }

            v79 = v78;
          }

          else
          {
            v79 = 0.0;
          }

          v90 = __exp10(v79);
          LODWORD(v131) = (v90 * (v76 / v90));
          if ((v137 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_238;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x372D5B205D347830 && *(buf + 24) == 0x6430372D6D426435 && *(buf + 27) == 0x296D426430372D6DLL)
        {
          v81 = uint64;
          if (uint64)
          {
            v82 = log10(uint64) + 1.0;
            v83 = v82 - 4;
            if (v82 <= 4)
            {
              v83 = 0;
            }

            v84 = v83;
          }

          else
          {
            v84 = 0.0;
          }

          v95 = __exp10(v84);
          HIDWORD(v130) = (v95 * (v81 / v95));
          if ((v137 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_238;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x372D5B205D357830 && *(buf + 24) == 0x6435362D6D426430 && *(buf + 27) == 0x296D426435362D6DLL)
        {
          v86 = uint64;
          if (uint64)
          {
            v87 = log10(uint64) + 1.0;
            v88 = v87 - 4;
            if (v87 <= 4)
            {
              v88 = 0;
            }

            v89 = v88;
          }

          else
          {
            v89 = 0.0;
          }

          v100 = __exp10(v89);
          LODWORD(v130) = (v100 * (v86 / v100));
          if ((v137 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_238;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x362D5B205D367830 && *(buf + 24) == 0x6430362D6D426435 && *(buf + 27) == 0x296D426430362D6DLL)
        {
          v91 = uint64;
          if (uint64)
          {
            v92 = log10(uint64) + 1.0;
            v93 = v92 - 4;
            if (v92 <= 4)
            {
              v93 = 0;
            }

            v94 = v93;
          }

          else
          {
            v94 = 0.0;
          }

          v105 = __exp10(v94);
          HIDWORD(v129) = (v105 * (v91 / v105));
          if ((v137 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_238;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x362D5B205D377830 && *(buf + 24) == 0x6435352D6D426430 && *(buf + 27) == 0x296D426435352D6DLL)
        {
          v96 = uint64;
          if (uint64)
          {
            v97 = log10(uint64) + 1.0;
            v98 = v97 - 4;
            if (v97 <= 4)
            {
              v98 = 0;
            }

            v99 = v98;
          }

          else
          {
            v99 = 0.0;
          }

          v110 = __exp10(v99);
          LODWORD(v129) = (v110 * (v96 / v110));
          if ((v137 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_238;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x352D5B205D387830 && *(buf + 24) == 0x6430352D6D426435 && *(buf + 27) == 0x296D426430352D6DLL)
        {
          v101 = uint64;
          if (uint64)
          {
            v102 = log10(uint64) + 1.0;
            v103 = v102 - 4;
            if (v102 <= 4)
            {
              v103 = 0;
            }

            v104 = v103;
          }

          else
          {
            v104 = 0.0;
          }

          v111 = __exp10(v104);
          HIDWORD(v126) = (v111 * (v101 / v111));
          if ((v137 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_238;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x352D5B205D397830 && *(buf + 24) == 0x6435342D6D426430 && *(buf + 27) == 0x296D426435342D6DLL)
        {
          v106 = uint64;
          if (uint64)
          {
            v107 = log10(uint64) + 1.0;
            v108 = v107 - 4;
            if (v107 <= 4)
            {
              v108 = 0;
            }

            v109 = v108;
          }

          else
          {
            v109 = 0.0;
          }

          v112 = __exp10(v109);
          LODWORD(v126) = (v112 * (v106 / v112));
          if ((v137 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_238;
        }
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "CCAEnergyDetect[0xA] [-45dBm-40dBm)"))
      {
        if (v14)
        {
          v59 = log10(v14) + 1.0;
          v60 = v59 - 4;
          if (v59 <= 4)
          {
            v60 = 0;
          }

          v61 = v60;
        }

        else
        {
          v61 = 0.0;
        }

        v65 = __exp10(v61);
        HIDWORD(v133) = (v65 * (v14 / v65));
        if ((v137 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_238;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "CCAEnergyDetect[0xB] [ >=  -40dBm]"))
      {
        if (v14)
        {
          v62 = log10(v14) + 1.0;
          v63 = v62 - 4;
          if (v62 <= 4)
          {
            v63 = 0;
          }

          v64 = v63;
        }

        else
        {
          v64 = 0.0;
        }

        v75 = __exp10(v64);
        HIDWORD(v132) = (v75 * (v14 / v75));
        if ((v137 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_238;
      }

      if (v137 < 0)
      {
        goto LABEL_238;
      }

LABEL_9:
      if (count == ++v7)
      {
        goto LABEL_240;
      }
    }
  }

  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = 0;
  v126 = 0;
  v129 = 0;
  v4 = 0;
LABEL_240:
  v113 = [v134 sCntrsMacTx];
  [v113 addTxCcaEnergyDetectedHistogram:v133];

  v114 = [v134 sCntrsMacTx];
  [v114 addTxCcaEnergyDetectedHistogram:v132];

  v115 = [v134 sCntrsMacTx];
  [v115 addTxCcaEnergyDetectedHistogram:HIDWORD(v131)];

  v116 = [v134 sCntrsMacTx];
  [v116 addTxCcaEnergyDetectedHistogram:v131];

  v117 = [v134 sCntrsMacTx];
  [v117 addTxCcaEnergyDetectedHistogram:HIDWORD(v130)];

  v118 = [v134 sCntrsMacTx];
  [v118 addTxCcaEnergyDetectedHistogram:v130];

  v119 = [v134 sCntrsMacTx];
  [v119 addTxCcaEnergyDetectedHistogram:HIDWORD(v129)];

  v120 = [v134 sCntrsMacTx];
  [v120 addTxCcaEnergyDetectedHistogram:v129];

  v121 = [v134 sCntrsMacTx];
  [v121 addTxCcaEnergyDetectedHistogram:v128];

  v122 = [v134 sCntrsMacTx];
  [v122 addTxCcaEnergyDetectedHistogram:v127];

  v123 = [v134 sCntrsMacTx];
  [v123 addTxCcaEnergyDetectedHistogram:HIDWORD(v133)];

  v124 = [v134 sCntrsMacTx];
  [v124 addTxCcaEnergyDetectedHistogram:HIDWORD(v132)];

  v5 = 0;
LABEL_241:

  return v5;
}

uint64_t AWDMetricsHandlers_handle_getprop_csmaBackoff(void *a1, void *a2)
{
  v3 = a1;
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v45 = a2;
  xarray = v3;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(xarray);
    v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
      *(buf.__r_.__value_.__r.__words + 4) = count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AWDMetrics : CSMA Backoff Histogram array with size %ld.", &buf, 0xCu);
    }

    if (count)
    {
      v8 = 0;
      v4 = 0;
      v44 = count;
      do
      {
        while (1)
        {
          v13 = xpc_array_get_dictionary(xarray, v8);

          v4 = v13;
          string = xpc_dictionary_get_string(v13, "key");
          v15 = strlen(string);
          if (v15 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v16 = v15;
          if (v15 >= 0x17)
          {
            operator new();
          }

          *(&buf.__r_.__value_.__s + 23) = v15;
          if (v15)
          {
            memmove(&buf, string, v15);
          }

          buf.__r_.__value_.__s.__data_[v16] = 0;
          uint64 = xpc_dictionary_get_uint64(v13, "value");
          size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = buf.__r_.__value_.__l.__size_;
          }

          v20 = (p_buf + size);
          if (size >= 11)
          {
            v21 = p_buf;
            do
            {
              v22 = memchr(v21, 67, size - 10);
              if (!v22)
              {
                break;
              }

              v23 = v22;
              if (*v22 == 0x6B636142414D5343 && *(v22 + 3) == 0x66666F6B63614241)
              {
                goto LABEL_37;
              }

              v21 = (v22 + 1);
              size = v20 - (&v23->__r_.__value_.__l.__data_ + 1);
            }

            while (size > 10);
          }

          v23 = v20;
LABEL_37:
          v25 = std::string::find(&buf, 91, 0);
          v26 = std::string::find(&buf, 93, 0);
          if (v23 != v20 && v23 == p_buf && v25 != -1 && v26 != -1)
          {
            v27 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              v27 = buf.__r_.__value_.__l.__size_;
              if (buf.__r_.__value_.__l.__size_ <= v25)
              {
LABEL_65:
                std::string::__throw_out_of_range[abi:ne200100]();
              }

              v28 = buf.__r_.__value_.__r.__words[0];
            }

            else
            {
              if (v25 >= SHIBYTE(buf.__r_.__value_.__r.__words[2]))
              {
                goto LABEL_65;
              }

              v28 = &buf;
            }

            v29 = v25 + 1;
            v30 = v27 - (v25 + 1);
            if (v30 >= v26 - 1)
            {
              v31 = v26 - 1;
            }

            else
            {
              v31 = v30;
            }

            if (v31 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v31 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v31;
            if (v31)
            {
              memmove(&__dst, v28 + v29, v31);
            }

            count = v44;
            __dst.__r_.__value_.__s.__data_[v31] = 0;
            v32 = std::stoi(&__dst, 0, 10);
            if ((v32 & 0xFEu) <= 9)
            {
              if (uint64)
              {
                v9 = log10(uint64) + 1.0;
                v10 = v9 - 4;
                if (v9 <= 4)
                {
                  v10 = 0;
                }

                v11 = v10;
              }

              else
              {
                v11 = 0.0;
              }

              v12 = __exp10(v11);
              *(&v49 + v32) = (v12 * (uint64 / v12));
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          if (++v8 == count)
          {
            goto LABEL_61;
          }
        }

        operator delete(buf.__r_.__value_.__l.__data_);
        ++v8;
      }

      while (v8 != count);
    }

    else
    {
      v4 = 0;
    }

LABEL_61:
    v33 = [v45 sCntrsMacTx];
    [v33 addTxCsmaBackoffHistogram:v49];

    v34 = [v45 sCntrsMacTx];
    [v34 addTxCsmaBackoffHistogram:DWORD1(v49)];

    v35 = [v45 sCntrsMacTx];
    [v35 addTxCsmaBackoffHistogram:DWORD2(v49)];

    v36 = [v45 sCntrsMacTx];
    [v36 addTxCsmaBackoffHistogram:HIDWORD(v49)];

    v37 = [v45 sCntrsMacTx];
    [v37 addTxCsmaBackoffHistogram:v50];

    v38 = [v45 sCntrsMacTx];
    [v38 addTxCsmaBackoffHistogram:DWORD1(v50)];

    v39 = [v45 sCntrsMacTx];
    [v39 addTxCsmaBackoffHistogram:DWORD2(v50)];

    v40 = [v45 sCntrsMacTx];
    [v40 addTxCsmaBackoffHistogram:HIDWORD(v50)];

    v41 = [v45 sCntrsMacTx];
    [v41 addTxCsmaBackoffHistogram:v51];

    v42 = [v45 sCntrsMacTx];
    [v42 addTxCsmaBackoffHistogram:HIDWORD(v51)];

    v5 = 0;
  }

  else
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_csmaBackoff();
    }

    v5 = 1;
  }

  return v5;
}

uint64_t AWDMetricsHandlers_handle_getprop_allmac(void *a1, void *a2)
{
  v3 = a1;
  v228 = a2;
  xarray = v3;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_allmac();
    }

    v5 = 1;
    goto LABEL_426;
  }

  count = xpc_array_get_count(v3);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AWDMetrics : AllMAC array with size %ld.", buf, 0xCu);
  }

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  if (count)
  {
    v10 = 0;
    v4 = 0;
    while (1)
    {
      v15 = xpc_array_get_dictionary(xarray, v10);

      v4 = v15;
      string = xpc_dictionary_get_string(v15, "key");
      v17 = strlen(string);
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      v231 = v17;
      if (v17)
      {
        memmove(buf, string, v17);
      }

      buf[v18] = 0;
      uint64 = xpc_dictionary_get_uint64(v15, "value");
      v20 = uint64;
      if (v231 < 0)
      {
        if (*&buf[8] == 8 && **buf == 0x6C61746F745F7874)
        {
          goto LABEL_58;
        }

        if (*&buf[8] == 10 && **buf == 0x6163696E755F7874 && *(*buf + 8) == 29811)
        {
          goto LABEL_132;
        }

        if (*&buf[8] != 7)
        {
          if (*&buf[8] == 12 && **buf == 0x64616F72625F7874 && *(*buf + 8) == 1953718627)
          {
            goto LABEL_140;
          }

          goto LABEL_98;
        }

        v29 = *buf;
      }

      else
      {
        if (v231 > 9u)
        {
          if (v231 == 10)
          {
            if (*buf != 0x6163696E755F7874 || *&buf[8] != 29811)
            {
              if (*buf != 0x635F7272655F7874 || *&buf[8] != 24931)
              {
                goto LABEL_145;
              }

LABEL_71:
              v36 = uint64;
              if (uint64)
              {
                v37 = log10(uint64) + 1.0;
                v38 = v37 - 4;
                if (v37 <= 4)
                {
                  v38 = 0;
                }

                v39 = v38;
              }

              else
              {
                v39 = 0.0;
              }

              v108 = __exp10(v39);
              [v9 setTxErrCca:(v108 * (v36 / v108))];
              goto LABEL_234;
            }

LABEL_132:
            v67 = uint64;
            if (uint64)
            {
              v68 = log10(uint64) + 1.0;
              v69 = v68 - 4;
              if (v68 <= 4)
              {
                v69 = 0;
              }

              v70 = v69;
            }

            else
            {
              v70 = 0.0;
            }

            v93 = __exp10(v70);
            [v9 setTxUnicast:(v93 * (v67 / v93))];
            goto LABEL_234;
          }

          if (v231 != 12)
          {
            if (v231 != 19)
            {
              goto LABEL_145;
            }

            v21 = *buf == 0x625F7272655F7874 && *&buf[8] == 0x6E6168635F797375;
            if (!v21 || *&buf[11] != 0x6C656E6E6168635FLL)
            {
              goto LABEL_145;
            }

LABEL_34:
            v23 = uint64;
            if (uint64)
            {
              v24 = log10(uint64) + 1.0;
              v25 = v24 - 4;
              if (v24 <= 4)
              {
                v25 = 0;
              }

              v26 = v25;
            }

            else
            {
              v26 = 0.0;
            }

            v103 = __exp10(v26);
            [v9 setTxErrBusyChannel:(v103 * (v23 / v103))];
            goto LABEL_234;
          }

          if (*buf == 0x64616F72625F7874 && *&buf[8] == 1953718627)
          {
LABEL_140:
            v75 = uint64;
            if (uint64)
            {
              v76 = log10(uint64) + 1.0;
              v77 = v76 - 4;
              if (v76 <= 4)
              {
                v77 = 0;
              }

              v78 = v77;
            }

            else
            {
              v78 = 0.0;
            }

            v99 = __exp10(v78);
            [v9 setTxBroadcast:(v99 * (v75 / v99))];
            goto LABEL_234;
          }

          if (*buf == 0x615F7272655F7874 && *&buf[8] == 1953656674)
          {
            goto LABEL_215;
          }

          v42 = buf;
          goto LABEL_84;
        }

        if (v231 != 7)
        {
          if (v231 != 8 || *buf != 0x6C61746F745F7874)
          {
            goto LABEL_145;
          }

LABEL_58:
          v30 = uint64;
          if (uint64)
          {
            v31 = log10(uint64) + 1.0;
            v32 = v31 - 4;
            if (v31 <= 4)
            {
              v32 = 0;
            }

            v33 = v32;
          }

          else
          {
            v33 = 0.0;
          }

          v94 = __exp10(v33);
          [v9 setTxTotal:(v94 * (v30 / v94))];
          goto LABEL_234;
        }

        v29 = buf;
      }

      v50 = *v29;
      v51 = *(v29 + 3);
      if (v50 == 1683978356 && v51 == 1635017060)
      {
        v71 = uint64;
        if (uint64)
        {
          v72 = log10(uint64) + 1.0;
          v73 = v72 - 4;
          if (v72 <= 4)
          {
            v73 = 0;
          }

          v74 = v73;
        }

        else
        {
          v74 = 0.0;
        }

        v95 = __exp10(v74);
        [v9 setTxData:(v95 * (v71 / v95))];
        goto LABEL_234;
      }

LABEL_98:
      if ((v231 & 0x80) != 0 && *&buf[8] == 26)
      {
        if (**buf != 0x63657269645F7874 || *(*buf + 8) != 0x65725F78616D5F74 || *(*buf + 16) != 0x697078655F797274 || *(*buf + 24) != 31090)
        {
          goto LABEL_145;
        }

        v56 = uint64;
        if (uint64)
        {
          v57 = log10(uint64) + 1.0;
          v58 = v57 - 4;
          if (v57 <= 4)
          {
            v58 = 0;
          }

          v59 = v58;
        }

        else
        {
          v59 = 0.0;
        }

        v102 = __exp10(v59);
        [v9 setTxDirectMaxRetryExpiry:(v102 * (v56 / v102))];
      }

      else
      {
        if ((v231 & 0x80) == 0 || *&buf[8] != 28)
        {
          if ((v231 & 0x80) == 0)
          {
            goto LABEL_145;
          }

          if (*&buf[8] == 19)
          {
            if (**buf != 0x625F7272655F7874 || *(*buf + 8) != 0x6E6168635F797375 || *(*buf + 11) != 0x6C656E6E6168635FLL)
            {
LABEL_145:
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "csl_tx_err_noack"))
              {
                if (v20)
                {
                  v79 = log10(v20) + 1.0;
                  v80 = v79 - 4;
                  if (v79 <= 4)
                  {
                    v80 = 0;
                  }

                  v81 = v80;
                }

                else
                {
                  v81 = 0.0;
                }

                v88 = __exp10(v81);
                [v9 setCslTxErrNoack:(v88 * (v20 / v88))];
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "csl_tx_err_cca"))
              {
                if (v20)
                {
                  v82 = log10(v20) + 1.0;
                  v83 = v82 - 4;
                  if (v82 <= 4)
                  {
                    v83 = 0;
                  }

                  v84 = v83;
                }

                else
                {
                  v84 = 0.0;
                }

                v92 = __exp10(v84);
                [v9 setCslTxErrCca:(v92 * (v20 / v92))];
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "csl_tx_err_abort"))
              {
                if (v20)
                {
                  v85 = log10(v20) + 1.0;
                  v86 = v85 - 4;
                  if (v85 <= 4)
                  {
                    v86 = 0;
                  }

                  v87 = v86;
                }

                else
                {
                  v87 = 0.0;
                }

                v101 = __exp10(v87);
                [v9 setCslTxErrAbort:(v101 * (v20 / v101))];
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "csl_tx_err_busy_channel"))
              {
                if (v20)
                {
                  v89 = log10(v20) + 1.0;
                  v90 = v89 - 4;
                  if (v89 <= 4)
                  {
                    v90 = 0;
                  }

                  v91 = v90;
                }

                else
                {
                  v91 = 0.0;
                }

                v107 = __exp10(v91);
                [v9 setCslTxErrBusyChannel:(v107 * (v20 / v107))];
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "tx_csl_loss_of_sync_csl_timeout"))
              {
                if (v20)
                {
                  v96 = log10(v20) + 1.0;
                  v97 = v96 - 4;
                  if (v96 <= 4)
                  {
                    v97 = 0;
                  }

                  v98 = v97;
                }

                else
                {
                  v98 = 0.0;
                }

                v119 = __exp10(v98);
                [v9 setCslLossOfSyncDueToCslTimeout:(v119 * (v20 / v119))];
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "tx_csl_loss_of_sync_max_retx"))
              {
                if (v20)
                {
                  v104 = log10(v20) + 1.0;
                  v105 = v104 - 4;
                  if (v104 <= 4)
                  {
                    v105 = 0;
                  }

                  v106 = v105;
                }

                else
                {
                  v106 = 0.0;
                }

                v120 = __exp10(v106);
                [v9 setCslLossOfSyncDueToMaxRetx:(v120 * (v20 / v120))];
              }

              goto LABEL_234;
            }

            goto LABEL_34;
          }

          if (*&buf[8] != 12)
          {
            if (*&buf[8] != 10)
            {
              goto LABEL_145;
            }

            if (**buf != 0x635F7272655F7874 || *(*buf + 8) != 24931)
            {
              goto LABEL_145;
            }

            goto LABEL_71;
          }

          v42 = *buf;
          if (**buf == 0x615F7272655F7874 && *(*buf + 8) == 1953656674)
          {
LABEL_215:
            v112 = uint64;
            if (uint64)
            {
              v113 = log10(uint64) + 1.0;
              v114 = v113 - 4;
              if (v113 <= 4)
              {
                v114 = 0;
              }

              v115 = v114;
            }

            else
            {
              v115 = 0.0;
            }

            v116 = __exp10(v115);
            [v9 setTxErrAbort:(v116 * (v112 / v116))];
            goto LABEL_234;
          }

LABEL_84:
          v43 = *v42;
          v44 = *(v42 + 2);
          if (v43 != 0x745F78745F6C7363 || v44 != 1818326127)
          {
            goto LABEL_145;
          }

          v46 = uint64;
          if (uint64)
          {
            v47 = log10(uint64) + 1.0;
            v48 = v47 - 4;
            if (v47 <= 4)
            {
              v48 = 0;
            }

            v49 = v48;
          }

          else
          {
            v49 = 0.0;
          }

          v110 = __exp10(v49);
          [v9 setCslTxTotal:(v110 * (v46 / v110))];
          goto LABEL_234;
        }

        if (**buf != 0x7269646E695F7874 || *(*buf + 8) != 0x5F78616D5F746365 || *(*buf + 16) != 0x78655F7972746572 || *(*buf + 24) != 2037541232)
        {
          goto LABEL_145;
        }

        v63 = uint64;
        if (uint64)
        {
          v64 = log10(uint64) + 1.0;
          v65 = v64 - 4;
          if (v64 <= 4)
          {
            v65 = 0;
          }

          v66 = v65;
        }

        else
        {
          v66 = 0.0;
        }

        v109 = __exp10(v66);
        [v9 setTxIndirectMaxRetryExpiry:(v109 * (v63 / v109))];
      }

LABEL_234:
      if (v231 < 0)
      {
        if (*&buf[8] == 8 && **buf == 0x6C61746F745F7872)
        {
LABEL_348:
          if (v20)
          {
            v156 = log10(v20) + 1.0;
            v157 = v156 - 4;
            if (v156 <= 4)
            {
              v157 = 0;
            }

            v158 = v157;
          }

          else
          {
            v158 = 0.0;
          }

          v171 = __exp10(v158);
          [v8 setRxTotal:(v171 * (v20 / v171))];
          goto LABEL_13;
        }

        if (*&buf[8] == 10 && **buf == 0x6163696E755F7872 && *(*buf + 8) == 29811)
        {
LABEL_285:
          if (v20)
          {
            v132 = log10(v20) + 1.0;
            v133 = v132 - 4;
            if (v132 <= 4)
            {
              v133 = 0;
            }

            v134 = v133;
          }

          else
          {
            v134 = 0.0;
          }

          v170 = __exp10(v134);
          [v8 setRxUnicast:(v170 * (v20 / v170))];
          goto LABEL_13;
        }

        if (*&buf[8] == 7)
        {
          if (**buf == 1683978354 && *(*buf + 3) == 1635017060)
          {
LABEL_328:
            if (v20)
            {
              v148 = log10(v20) + 1.0;
              v149 = v148 - 4;
              if (v148 <= 4)
              {
                v149 = 0;
              }

              v150 = v149;
            }

            else
            {
              v150 = 0.0;
            }

            v172 = __exp10(v150);
            [v8 setRxData:(v172 * (v20 / v172))];
            goto LABEL_13;
          }
        }

        else if (*&buf[8] == 12 && **buf == 0x64616F72625F7872 && *(*buf + 8) == 1953718627)
        {
LABEL_337:
          if (v20)
          {
            v152 = log10(v20) + 1.0;
            v153 = v152 - 4;
            if (v152 <= 4)
            {
              v153 = 0;
            }

            v154 = v153;
          }

          else
          {
            v154 = 0.0;
          }

          v173 = __exp10(v154);
          [v8 setRxBroadcast:(v173 * (v20 / v173))];
          goto LABEL_13;
        }

        if (*&buf[8] != 14)
        {
          if (*&buf[8] == 17)
          {
            v125 = **buf == 0x645F7272655F7872 && *(*buf + 8) == 0x65746163696C7075;
            if (v125 && *(*buf + 16) == 100)
            {
LABEL_299:
              if (v20)
              {
                v137 = log10(v20) + 1.0;
                v138 = v137 - 4;
                if (v137 <= 4)
                {
                  v138 = 0;
                }

                v139 = v138;
              }

              else
              {
                v139 = 0.0;
              }

              v181 = __exp10(v139);
              [v8 setRxErrDuplicated:(v181 * (v20 / v181))];
              goto LABEL_13;
            }
          }

          v130 = *&buf[8];
          if (*&buf[8] == 23)
          {
            goto LABEL_304;
          }

          goto LABEL_356;
        }

        v121 = *buf;
LABEL_269:
        v127 = *v121;
        v128 = *(v121 + 6);
        if (v127 == 0x6E5F7272655F7872 && v128 == 0x656D6172666F6E5FLL)
        {
          if (v20)
          {
            v159 = log10(v20) + 1.0;
            v160 = v159 - 4;
            if (v159 <= 4)
            {
              v160 = 0;
            }

            v161 = v160;
          }

          else
          {
            v161 = 0.0;
          }

          v174 = __exp10(v161);
          [v8 setRxErrNoframe:(v174 * (v20 / v174))];
          goto LABEL_13;
        }

        v130 = *&buf[8];
        if ((v231 & 0x80) != 0 && *&buf[8] == 23)
        {
LABEL_304:
          if (**buf == 0x755F7272655F7872 && *(*buf + 8) == 0x6E5F6E776F6E6B6ELL && *(*buf + 15) == 0x726F62686769656ELL)
          {
            if (v20)
            {
              v167 = log10(v20) + 1.0;
              v168 = v167 - 4;
              if (v167 <= 4)
              {
                v168 = 0;
              }

              v169 = v168;
            }

            else
            {
              v169 = 0.0;
            }

            v183 = __exp10(v169);
            [v8 setRxErrUnknownNeighbor:(v183 * (v20 / v183))];
            goto LABEL_13;
          }

          if (**buf == 0x695F7272655F7872 && *(*buf + 8) == 0x735F64696C61766ELL && *(*buf + 15) == 0x726464615F637273)
          {
            if (v20)
            {
              v144 = log10(v20) + 1.0;
              v145 = v144 - 4;
              if (v144 <= 4)
              {
                v145 = 0;
              }

              v146 = v145;
            }

            else
            {
              v146 = 0.0;
            }

            v185 = __exp10(v146);
            [v8 setRxErrInvalidSrcAddr:(v185 * (v20 / v185))];
            goto LABEL_13;
          }

          goto LABEL_387;
        }

        if ((v231 & 0x80) != 0)
        {
LABEL_356:
          if (v130 != 10)
          {
            if (v130 != 15)
            {
              goto LABEL_387;
            }

            if (**buf == 0x735F7272655F7872 && *(*buf + 7) == 0x7974697275636573)
            {
              goto LABEL_364;
            }

            goto LABEL_362;
          }

          v163 = *buf;
        }

        else
        {
LABEL_362:
          if (v231 != 10)
          {
            goto LABEL_387;
          }

LABEL_363:
          v163 = buf;
        }

        v175 = *v163;
        v176 = *(v163 + 4);
        if (v175 == 0x665F7272655F7872 && v176 == 29539)
        {
          if (v20)
          {
            v178 = log10(v20) + 1.0;
            v179 = v178 - 4;
            if (v178 <= 4)
            {
              v179 = 0;
            }

            v180 = v179;
          }

          else
          {
            v180 = 0.0;
          }

          v184 = __exp10(v180);
          [v8 setRxErrFcs:(v184 * (v20 / v184))];
          goto LABEL_13;
        }

        goto LABEL_387;
      }

      if (v231 <= 0xBu)
      {
        switch(v231)
        {
          case 7u:
            if (*buf == 1683978354 && *&buf[3] == 1635017060)
            {
              goto LABEL_328;
            }

            break;
          case 8u:
            if (*buf == 0x6C61746F745F7872)
            {
              goto LABEL_348;
            }

            break;
          case 0xAu:
            if (*buf == 0x6163696E755F7872 && *&buf[8] == 29811)
            {
              goto LABEL_285;
            }

            goto LABEL_363;
        }
      }

      else
      {
        if (v231 > 0xEu)
        {
          if (v231 == 15)
          {
            if (*buf == 0x735F7272655F7872 && *&buf[7] == 0x7974697275636573)
            {
LABEL_364:
              if (v20)
              {
                v164 = log10(v20) + 1.0;
                v165 = v164 - 4;
                if (v164 <= 4)
                {
                  v165 = 0;
                }

                v166 = v165;
              }

              else
              {
                v166 = 0.0;
              }

              v182 = __exp10(v166);
              [v8 setRxErrSecurity:(v182 * (v20 / v182))];
              goto LABEL_13;
            }
          }

          else if (v231 == 17)
          {
            v135 = *buf == 0x645F7272655F7872 && *&buf[8] == 0x65746163696C7075;
            if (v135 && buf[16] == 100)
            {
              goto LABEL_299;
            }
          }

          goto LABEL_387;
        }

        if (v231 == 12)
        {
          if (*buf == 0x64616F72625F7872 && *&buf[8] == 1953718627)
          {
            goto LABEL_337;
          }

          goto LABEL_387;
        }

        if (v231 == 14)
        {
          v121 = buf;
          goto LABEL_269;
        }
      }

LABEL_387:
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "rx_err_other"))
      {
        if (v20)
        {
          v11 = log10(v20) + 1.0;
          v12 = v11 - 4;
          if (v11 <= 4)
          {
            v12 = 0;
          }

          v13 = v12;
        }

        else
        {
          v13 = 0.0;
        }

        v14 = __exp10(v13);
        [v8 setRxErrOther:(v14 * (v20 / v14))];
      }

LABEL_13:
      if (v231 < 0)
      {
        operator delete(*buf);
        if (count == ++v10)
        {
          goto LABEL_405;
        }
      }

      else if (count == ++v10)
      {
        goto LABEL_405;
      }
    }
  }

  v4 = 0;
LABEL_405:
  v186 = [v9 txErrCca];
  v187 = [v9 txErrAbort];
  v188 = v187 + v186 + [v9 txErrBusyChannel];
  v189 = 100 * [v9 txErrCca];
  v190 = (v189 / v188);
  v191 = 0.0;
  if (v188 <= v189)
  {
    v192 = log10((v189 / v188)) + 1.0;
    v193 = v192 - 4;
    if (v192 <= 4)
    {
      v193 = 0;
    }

    v191 = v193;
  }

  v194 = __exp10(v191);
  [v9 setTxErrCcaPercentage:(v194 * (v190 / v194))];
  v195 = 100 * [v9 txErrAbort];
  v196 = (v195 / v188);
  v197 = 0.0;
  if (v188 <= v195)
  {
    v198 = log10((v195 / v188)) + 1.0;
    v199 = v198 - 4;
    if (v198 <= 4)
    {
      v199 = 0;
    }

    v197 = v199;
  }

  v200 = __exp10(v197);
  [v9 setTxErrAbortPercentage:(v200 * (v196 / v200))];
  v201 = 100 * [v9 txErrBusyChannel];
  v202 = (v201 / v188);
  v203 = 0.0;
  if (v188 <= v201)
  {
    v204 = log10((v201 / v188)) + 1.0;
    v205 = v204 - 4;
    if (v204 <= 4)
    {
      v205 = 0;
    }

    v203 = v205;
  }

  v206 = __exp10(v203);
  [v9 setTxErrBusyChannelPercentage:(v206 * (v202 / v206))];
  v207 = [v9 txTotal];
  v208 = (100 * v188 / v207);
  v209 = 0.0;
  if (v207 <= 100 * v188)
  {
    v210 = log10((100 * v188 / v207)) + 1.0;
    v211 = v210 - 4;
    if (v210 <= 4)
    {
      v211 = 0;
    }

    v209 = v211;
  }

  v212 = __exp10(v209);
  [v9 setTxErrPercentage:(v212 * (v208 / v212))];
  v213 = [v8 rxErrSecurity];
  v214 = [v8 rxErrFcs];
  v215 = [v8 rxErrOther];
  v216 = [v8 rxErrInvalidSrcAddr];
  v217 = [v8 rxErrUnknownNeighbor];
  v218 = [v8 rxErrNoframe];
  v219 = [v8 rxErrDuplicated];
  v220 = [v8 rxTotal];
  v221 = 100 * (v214 + v213 + v215 + v216 + v217 + v218 + v219);
  v222 = (v221 / v220);
  v223 = 0.0;
  if (v220 <= v221)
  {
    v224 = log10((v221 / v220)) + 1.0;
    v225 = v224 - 4;
    if (v224 <= 4)
    {
      v225 = 0;
    }

    v223 = v225;
  }

  v226 = __exp10(v223);
  [v8 setRxErrPercentage:(v226 * (v222 / v226))];
  [v228 setSCntrsMacTx:v9];
  [v228 setSCntrsMacRx:v8];

  v5 = 0;
LABEL_426:

  return v5;
}

uint64_t AWDMetricsHandlers_handle_getprop_vendorcoex_histograms(void *a1, void *a2)
{
  v3 = a1;
  v148[0] = 0;
  v148[1] = 0;
  v147 = v148;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v170 = 0u;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v151 = 0u;
  memset(v150, 0, 44);
  v135 = a2;
  xarray = v3;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_vendorcoex_histograms();
    }

    v5 = 1;
    goto LABEL_331;
  }

  count = xpc_array_get_count(v3);
  v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AWDMetrics : now onto Coex hist array with size %ld.", &buf, 0xCu);
  }

  v7 = objc_opt_new();
  v8 = v7;
  if (count)
  {
    v9 = 0;
    v4 = 0;
    v136 = v7;
    while (1)
    {
      v10 = xpc_array_get_dictionary(xarray, v9);

      v11 = v10;
      v145 = v10;
      string = xpc_dictionary_get_string(v10, "key");
      v13 = strlen(string);
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v13;
      if (v13)
      {
        memmove(&buf, string, v13);
      }

      v142 = v9;
      buf.__r_.__value_.__s.__data_[v14] = 0;
      uint64 = xpc_dictionary_get_uint64(v11, "value");
      v15 = std::string::find(&buf, 91, 0);
      v143 = std::string::find(&buf, 93, 0);
      v16 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v140 = buf.__r_.__value_.__r.__words[0];
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
        v19 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = buf.__r_.__value_.__l.__size_;
      }

      v20 = (p_buf + v19);
      v21 = v19;
      v22 = p_buf;
      if (v19 >= 40)
      {
        do
        {
          v23 = memchr(v22, 99, v21 - 39);
          if (!v23)
          {
            break;
          }

          if (v23->__r_.__value_.__r.__words[0] == 0x5F78725F78656F63 && v23->__r_.__value_.__l.__size_ == 0x72675F6C61746F74 && v23->__r_.__value_.__r.__words[2] == 0x797475645F746E61 && v23[1].__r_.__value_.__r.__words[0] == 0x685F656C6379635FLL && v23[1].__r_.__value_.__l.__size_ == 0x6D6172676F747369)
          {
            goto LABEL_41;
          }

          v22 = (&v23->__r_.__value_.__l.__data_ + 1);
          v21 = v20 - v22;
        }

        while (v20 - v22 > 39);
        v23 = (p_buf + v19);
LABEL_41:
        v29 = v23 != v20 && v23 == p_buf;
        v144 = v29;
        v32 = v19;
        v33 = p_buf;
        do
        {
          v34 = memchr(v33, 99, v32 - 39);
          if (!v34)
          {
            break;
          }

          if (v34->__r_.__value_.__r.__words[0] == 0x5F78745F78656F63 && v34->__r_.__value_.__l.__size_ == 0x72675F6C61746F74 && v34->__r_.__value_.__r.__words[2] == 0x797475645F746E61 && v34[1].__r_.__value_.__r.__words[0] == 0x685F656C6379635FLL && v34[1].__r_.__value_.__l.__size_ == 0x6D6172676F747369)
          {
            goto LABEL_66;
          }

          v33 = (&v34->__r_.__value_.__l.__data_ + 1);
          v32 = v20 - v33;
        }

        while (v20 - v33 > 39);
        v34 = (p_buf + v19);
LABEL_66:
        v30 = v34 != v20 && v34 == p_buf;
        if (v19 >= 46)
        {
          v40 = v19;
          v41 = p_buf;
          while (1)
          {
            v42 = memchr(v41, 99, v40 - 45);
            if (!v42)
            {
LABEL_93:
              v48 = 0;
              goto LABEL_243;
            }

            v43 = v42->__r_.__value_.__r.__words[0] == 0x5F78725F78656F63 && v42->__r_.__value_.__l.__size_ == 0x6963696C6F736E75;
            v44 = v43 && v42->__r_.__value_.__r.__words[2] == 0x6E6172675F646574;
            v45 = v44 && v42[1].__r_.__value_.__r.__words[0] == 0x635F797475645F74;
            v46 = v45 && v42[1].__r_.__value_.__l.__size_ == 0x7369685F656C6379;
            if (v46 && *(&v42[1].__r_.__value_.__r.__words[1] + 6) == 0x6D6172676F747369)
            {
              break;
            }

            v41 = (&v42->__r_.__value_.__l.__data_ + 1);
            v40 = v20 - v41;
            if (v20 - v41 <= 45)
            {
              goto LABEL_93;
            }
          }

          v48 = v42 != v20 && v42 == p_buf;
LABEL_243:
          v102 = v19;
          v103 = p_buf;
          v138 = v48;
          do
          {
            if (v102 == 45)
            {
              break;
            }

            v31 = memchr(v103, 99, v102 - 45);
            if (!v31)
            {
              break;
            }

            if (v31->__r_.__value_.__r.__words[0] == 0x5F78745F78656F63 && v31->__r_.__value_.__l.__size_ == 0x6963696C6F736E75 && v31->__r_.__value_.__r.__words[2] == 0x6E6172675F646574 && v31[1].__r_.__value_.__r.__words[0] == 0x635F797475645F74 && v31[1].__r_.__value_.__l.__size_ == 0x7369685F656C6379 && *(&v31[1].__r_.__value_.__r.__words[1] + 6) == 0x6D6172676F747369)
            {
              goto LABEL_95;
            }

            v103 = (&v31->__r_.__value_.__l.__data_ + 1);
            v102 = v20 - v103;
          }

          while (v20 - v103 > 45);
        }

        else
        {
          v138 = 0;
        }

        v31 = (p_buf + v19);
      }

      else
      {
        v138 = 0;
        v144 = 0;
        v30 = 0;
        v31 = (p_buf + v19);
      }

LABEL_95:
      v50 = v31 != v20 && v31 == p_buf;
      if (v19 >= 31)
      {
        v52 = v19;
        v53 = p_buf;
        do
        {
          v54 = memchr(v53, 99, v52 - 30);
          if (!v54)
          {
            break;
          }

          if (v54->__r_.__value_.__r.__words[0] == 0x746F745F78656F63 && v54->__r_.__value_.__l.__size_ == 0x746E6172675F6C61 && v54->__r_.__value_.__r.__words[2] == 0x69685F656D69745FLL && *(&v54->__r_.__value_.__r.__words[2] + 7) == 0x6D6172676F747369)
          {
            goto LABEL_117;
          }

          v53 = (&v54->__r_.__value_.__l.__data_ + 1);
          v52 = v20 - v53;
        }

        while (v20 - v53 > 30);
        v54 = (p_buf + v19);
LABEL_117:
        v51 = v54 != v20 && v54 == p_buf;
        if (v19 >= 42)
        {
          v59 = p_buf;
          do
          {
            v60 = memchr(v59, 99, v19 - 41);
            if (!v60)
            {
              break;
            }

            if (v60->__r_.__value_.__r.__words[0] == 0x6F62615F78656F63 && v60->__r_.__value_.__l.__size_ == 0x5F6575645F737472 && v60->__r_.__value_.__r.__words[2] == 0x746E6172675F6F74 && v60[1].__r_.__value_.__r.__words[0] == 0x73656B6F7665725FLL && v60[1].__r_.__value_.__l.__size_ == 0x72676F747369685FLL && LOWORD(v60[1].__r_.__value_.__r.__words[2]) == 28001)
            {
              goto LABEL_144;
            }

            v59 = (&v60->__r_.__value_.__l.__data_ + 1);
            v19 = v20 - v59;
          }

          while (v20 - v59 > 41);
        }
      }

      else
      {
        v51 = 0;
      }

      v60 = v20;
LABEL_144:
      v67 = v60 != v20 && v60 == p_buf;
      v68 = v144;
      if (v15 == -1)
      {
        v68 = 0;
      }

      if (!v68 || v143 == -1)
      {
        v70 = v15 != -1 && v30;
        if (!v70 || v143 == -1)
        {
          v72 = v138;
          if (v15 == -1)
          {
            v72 = 0;
          }

          if (!v72 || v143 == -1)
          {
            v80 = v15 != -1 && v50;
            if (!v80 || v143 == -1)
            {
              v92 = v15 != -1 && v51;
              if (!v92 || v143 == -1)
              {
                if (v15 == -1)
                {
                  v67 = 0;
                }

                v109 = v140;
                if (!v67 || v143 == -1)
                {
                  goto LABEL_9;
                }

                if ((v16 & 0x80000000) != 0)
                {
                  if (size <= v15)
                  {
LABEL_343:
                    std::string::__throw_out_of_range[abi:ne200100]();
                  }
                }

                else
                {
                  if (v15 >= v16)
                  {
                    goto LABEL_343;
                  }

                  v109 = &buf;
                  size = v16;
                }

                v125 = v15 + 1;
                if (size - (v15 + 1) >= v143 - 1)
                {
                  v126 = v143 - 1;
                }

                else
                {
                  v126 = size - (v15 + 1);
                }

                if (v126 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v126 >= 0x17)
                {
                  operator new();
                }

                *(&__dst.__r_.__value_.__s + 23) = v126;
                if (v126)
                {
                  memmove(&__dst, v109 + v125, v126);
                }

                __dst.__r_.__value_.__s.__data_[v126] = 0;
                v127 = std::stoi(&__dst, 0, 10);
                if (v127 <= 0xA)
                {
                  if (uint64)
                  {
                    v128 = log10(uint64) + 1.0;
                    v129 = v128 - 4;
                    if (v128 <= 4)
                    {
                      v129 = 0;
                    }

                    v130 = v129;
                  }

                  else
                  {
                    v130 = 0.0;
                  }

                  v132 = __exp10(v130);
                  *(v150 + v127) = (v132 * (uint64 / v132));
                  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_9;
                  }

LABEL_324:
                  operator delete(__dst.__r_.__value_.__l.__data_);
                  goto LABEL_9;
                }
              }

              else
              {
                v93 = v140;
                if ((v16 & 0x80000000) != 0)
                {
                  if (size <= v15)
                  {
LABEL_341:
                    std::string::__throw_out_of_range[abi:ne200100]();
                  }
                }

                else
                {
                  if (v15 >= v16)
                  {
                    goto LABEL_341;
                  }

                  v93 = &buf;
                  size = v16;
                }

                v117 = v15 + 1;
                if (size - (v15 + 1) >= v143 - 1)
                {
                  v118 = v143 - 1;
                }

                else
                {
                  v118 = size - (v15 + 1);
                }

                if (v118 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v118 >= 0x17)
                {
                  operator new();
                }

                *(&__dst.__r_.__value_.__s + 23) = v118;
                if (v118)
                {
                  memmove(&__dst, v93 + v117, v118);
                }

                __dst.__r_.__value_.__s.__data_[v118] = 0;
                v119 = std::stoi(&__dst, 0, 10);
                if ((v119 & 0xF0) == 0)
                {
                  v120 = v119;
                  if (uint64)
                  {
                    v121 = log10(uint64) + 1.0;
                    v122 = v121 - 4;
                    if (v121 <= 4)
                    {
                      v122 = 0;
                    }

                    v123 = v122;
                  }

                  else
                  {
                    v123 = 0.0;
                  }

                  v131 = __exp10(v123);
                  v89 = (v131 * (uint64 / v131));
                  v90 = v120 & 0xF;
                  v91 = &v151;
                  goto LABEL_322;
                }
              }
            }

            else
            {
              if ((v16 & 0x80000000) != 0)
              {
                v81 = v140;
                if (size <= v15)
                {
LABEL_339:
                  std::string::__throw_out_of_range[abi:ne200100]();
                }
              }

              else
              {
                if (v15 >= v16)
                {
                  goto LABEL_339;
                }

                v81 = &buf;
                size = v16;
              }

              v110 = v15 + 1;
              if (size - (v15 + 1) >= v143 - 1)
              {
                v111 = v143 - 1;
              }

              else
              {
                v111 = size - (v15 + 1);
              }

              if (v111 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v111 >= 0x17)
              {
                operator new();
              }

              *(&__dst.__r_.__value_.__s + 23) = v111;
              if (v111)
              {
                memmove(&__dst, v81 + v110, v111);
              }

              __dst.__r_.__value_.__s.__data_[v111] = 0;
              v112 = std::stoi(&__dst, 0, 10);
              if ((v112 & 0xFCu) <= 0x13)
              {
                if (uint64)
                {
                  v113 = log10(uint64) + 1.0;
                  v114 = v113 - 4;
                  if (v113 <= 4)
                  {
                    v114 = 0;
                  }

                  v115 = v114;
                }

                else
                {
                  v115 = 0.0;
                }

                v124 = __exp10(v115);
                v89 = (v124 * (uint64 / v124));
                v90 = v112;
                v91 = &v165;
                goto LABEL_322;
              }
            }
          }

          else
          {
            if ((v16 & 0x80000000) != 0)
            {
              v73 = v140;
              if (size <= v15)
              {
LABEL_337:
                std::string::__throw_out_of_range[abi:ne200100]();
              }
            }

            else
            {
              if (v15 >= v16)
              {
                goto LABEL_337;
              }

              v73 = &buf;
              size = v16;
            }

            v94 = v15 + 1;
            if (size - (v15 + 1) >= v143 - 1)
            {
              v95 = v143 - 1;
            }

            else
            {
              v95 = size - (v15 + 1);
            }

            if (v95 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v95 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v95;
            if (v95)
            {
              memmove(&__dst, v73 + v94, v95);
            }

            __dst.__r_.__value_.__s.__data_[v95] = 0;
            v96 = std::stoi(&__dst, 0, 10);
            if ((v96 & 0xFCu) <= 0x13)
            {
              if (uint64)
              {
                v97 = log10(uint64) + 1.0;
                v98 = v97 - 4;
                if (v97 <= 4)
                {
                  v98 = 0;
                }

                v99 = v98;
              }

              else
              {
                v99 = 0.0;
              }

              v116 = __exp10(v99);
              v89 = (v116 * (uint64 / v116));
              v90 = v96;
              v91 = &v170;
              goto LABEL_322;
            }
          }
        }

        else
        {
          if ((v16 & 0x80000000) != 0)
          {
            v71 = v140;
            if (size <= v15)
            {
LABEL_335:
              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else
          {
            if (v15 >= v16)
            {
              goto LABEL_335;
            }

            v71 = &buf;
            size = v16;
          }

          v82 = v15 + 1;
          if (size - (v15 + 1) >= v143 - 1)
          {
            v83 = v143 - 1;
          }

          else
          {
            v83 = size - (v15 + 1);
          }

          if (v83 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v83 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v83;
          if (v83)
          {
            memmove(&__dst, v71 + v82, v83);
          }

          __dst.__r_.__value_.__s.__data_[v83] = 0;
          v84 = std::stoi(&__dst, 0, 10);
          if ((v84 & 0xFCu) <= 0x13)
          {
            if (uint64)
            {
              v85 = log10(uint64) + 1.0;
              v86 = v85 - 4;
              if (v85 <= 4)
              {
                v86 = 0;
              }

              v87 = v86;
            }

            else
            {
              v87 = 0.0;
            }

            v100 = __exp10(v87);
            v89 = (v100 * (uint64 / v100));
            v90 = v84;
            v91 = &v160;
            goto LABEL_322;
          }
        }
      }

      else
      {
        if ((v16 & 0x80000000) != 0)
        {
          v69 = v140;
          if (size <= v15)
          {
LABEL_333:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v15 >= v16)
          {
            goto LABEL_333;
          }

          v69 = &buf;
          size = v16;
        }

        v74 = v15 + 1;
        if (size - (v15 + 1) >= v143 - 1)
        {
          v75 = v143 - 1;
        }

        else
        {
          v75 = size - (v15 + 1);
        }

        if (v75 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v75 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v75;
        if (v75)
        {
          memmove(&__dst, v69 + v74, v75);
        }

        __dst.__r_.__value_.__s.__data_[v75] = 0;
        v76 = std::stoi(&__dst, 0, 10);
        if ((v76 & 0xFCu) <= 0x13)
        {
          if (uint64)
          {
            v77 = log10(uint64) + 1.0;
            v78 = v77 - 4;
            if (v77 <= 4)
            {
              v78 = 0;
            }

            v79 = v78;
          }

          else
          {
            v79 = 0.0;
          }

          v88 = __exp10(v79);
          v89 = (v88 * (uint64 / v88));
          v90 = v76;
          v91 = &v155;
LABEL_322:
          *(v91 + v90) = v89;
        }
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_324;
      }

LABEL_9:
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        v9 = v142 + 1;
        v8 = v136;
        v4 = v145;
        if (v142 + 1 == count)
        {
LABEL_328:
          v133 = v155;
          goto LABEL_330;
        }
      }

      else
      {
        v9 = v142 + 1;
        v8 = v136;
        v4 = v145;
        if (v142 + 1 == count)
        {
          goto LABEL_328;
        }
      }
    }
  }

  v133 = 0;
  v4 = 0;
LABEL_330:
  [v8 addCoexRxTotalGrantDutyCycleHistogram:v133];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:DWORD1(v155)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:DWORD2(v155)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:HIDWORD(v155)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:v156];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:DWORD1(v156)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:DWORD2(v156)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:HIDWORD(v156)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:v157];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:DWORD1(v157)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:DWORD2(v157)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:HIDWORD(v157)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:v158];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:DWORD1(v158)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:DWORD2(v158)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:HIDWORD(v158)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:v159];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:DWORD1(v159)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:DWORD2(v159)];
  [v8 addCoexRxTotalGrantDutyCycleHistogram:HIDWORD(v159)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:v160];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:DWORD1(v160)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:DWORD2(v160)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:HIDWORD(v160)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:v161];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:DWORD1(v161)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:DWORD2(v161)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:HIDWORD(v161)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:v162];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:DWORD1(v162)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:DWORD2(v162)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:HIDWORD(v162)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:v163];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:DWORD1(v163)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:DWORD2(v163)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:HIDWORD(v163)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:v164];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:DWORD1(v164)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:DWORD2(v164)];
  [v8 addCoexTxTotalGrantDutyCycleHistogram:HIDWORD(v164)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:v170];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:DWORD1(v170)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:DWORD2(v170)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:HIDWORD(v170)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:v171];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:DWORD1(v171)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:DWORD2(v171)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:HIDWORD(v171)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:v172];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:DWORD1(v172)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:DWORD2(v172)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:HIDWORD(v172)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:v173];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:DWORD1(v173)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:DWORD2(v173)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:HIDWORD(v173)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:v174];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:DWORD1(v174)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:DWORD2(v174)];
  [v8 addCoexRxUnsolicitedGrantDutyCycleHistogram:HIDWORD(v174)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:v165];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:DWORD1(v165)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:DWORD2(v165)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:HIDWORD(v165)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:v166];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:DWORD1(v166)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:DWORD2(v166)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:HIDWORD(v166)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:v167];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:DWORD1(v167)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:DWORD2(v167)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:HIDWORD(v167)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:v168];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:DWORD1(v168)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:DWORD2(v168)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:HIDWORD(v168)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:v169];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:DWORD1(v169)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:DWORD2(v169)];
  [v8 addCoexTxUnsolicitedGrantDutyCycleHistogram:HIDWORD(v169)];
  [v8 addCoexTotalGrantTimeHistogram:v151];
  [v8 addCoexTotalGrantTimeHistogram:DWORD1(v151)];
  [v8 addCoexTotalGrantTimeHistogram:DWORD2(v151)];
  [v8 addCoexTotalGrantTimeHistogram:HIDWORD(v151)];
  [v8 addCoexTotalGrantTimeHistogram:v152];
  [v8 addCoexTotalGrantTimeHistogram:DWORD1(v152)];
  [v8 addCoexTotalGrantTimeHistogram:DWORD2(v152)];
  [v8 addCoexTotalGrantTimeHistogram:HIDWORD(v152)];
  [v8 addCoexTotalGrantTimeHistogram:v153];
  [v8 addCoexTotalGrantTimeHistogram:DWORD1(v153)];
  [v8 addCoexTotalGrantTimeHistogram:DWORD2(v153)];
  [v8 addCoexTotalGrantTimeHistogram:HIDWORD(v153)];
  [v8 addCoexTotalGrantTimeHistogram:v154];
  [v8 addCoexTotalGrantTimeHistogram:DWORD1(v154)];
  [v8 addCoexTotalGrantTimeHistogram:DWORD2(v154)];
  [v8 addCoexTotalGrantTimeHistogram:HIDWORD(v154)];
  [v8 addCoexAbortsDueToGrantRevokesHistogram:LODWORD(v150[0])];
  [v8 addCoexAbortsDueToGrantRevokesHistogram:DWORD1(v150[0])];
  [v8 addCoexAbortsDueToGrantRevokesHistogram:DWORD2(v150[0])];
  [v8 addCoexAbortsDueToGrantRevokesHistogram:HIDWORD(v150[0])];
  [v8 addCoexAbortsDueToGrantRevokesHistogram:LODWORD(v150[1])];
  [v8 addCoexAbortsDueToGrantRevokesHistogram:DWORD1(v150[1])];
  [v8 addCoexAbortsDueToGrantRevokesHistogram:DWORD2(v150[1])];
  [v8 addCoexAbortsDueToGrantRevokesHistogram:HIDWORD(v150[1])];
  [v8 addCoexAbortsDueToGrantRevokesHistogram:LODWORD(v150[2])];
  [v8 addCoexAbortsDueToGrantRevokesHistogram:DWORD1(v150[2])];
  [v8 addCoexAbortsDueToGrantRevokesHistogram:DWORD2(v150[2])];
  [v135 setSHistCoex:v8];

  v5 = 0;
LABEL_331:

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v147, v148[0]);
  return v5;
}

void sub_100092FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, char *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a27, a28);
  _Unwind_Resume(a1);
}

uint64_t AWDMetricsHandlers_handle_getprop_vendorcoex(void *a1, void *a2)
{
  v3 = a1;
  v147[0] = 0;
  v147[1] = 0;
  v146 = v147;
  v155 = 0;
  v153 = 0u;
  v154 = 0u;
  v152 = 0u;
  v150 = 0u;
  memset(v151, 0, sizeof(v151));
  v149 = 0u;
  v139 = a2;
  v140 = v3;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_vendorcoex();
    }

    v5 = 1;
    goto LABEL_238;
  }

  count = xpc_array_get_count(v3);
  v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AWDMetrics : now onto Coex array with size %ld.", &buf, 0xCu);
  }

  v7 = objc_opt_new();
  v144 = v7;
  if (count)
  {
    v8 = 0;
    v4 = 0;
    while (1)
    {
      v15 = xpc_array_get_dictionary(v3, v8);

      v4 = v15;
      string = xpc_dictionary_get_string(v15, "key");
      v17 = strlen(string);
      if (v17 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v17;
      if (v17)
      {
        memmove(&buf, string, v17);
      }

      buf.__r_.__value_.__s.__data_[v18] = 0;
      uint64 = xpc_dictionary_get_uint64(v4, "value");
      v20 = uint64;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0 && buf.__r_.__value_.__l.__size_ == 23)
      {
        v21 = *buf.__r_.__value_.__l.__data_ == 0x736E755F78656F63 && *(buf.__r_.__value_.__r.__words[0] + 8) == 0x6465746963696C6FLL;
        if (v21 && *(buf.__r_.__value_.__r.__words[0] + 15) == 0x73746E6172675F64)
        {
          v9 = uint64;
          v10 = v144;
          if (uint64)
          {
            v11 = log10(uint64) + 1.0;
            v12 = v11 - 4;
            if (v11 <= 4)
            {
              v12 = 0;
            }

            v13 = v12;
          }

          else
          {
            v13 = 0.0;
          }

          v14 = __exp10(v13);
          [v10 setCoexUnsolicitedGrants:(v14 * (v9 / v14))];
          goto LABEL_14;
        }

        if (*buf.__r_.__value_.__l.__data_ == 0x5F78745F78656F63 && *(buf.__r_.__value_.__r.__words[0] + 8) == 0x725F6465696E6564 && *(buf.__r_.__value_.__r.__words[0] + 15) == 0x7374736575716572)
        {
          v32 = uint64;
          if (uint64)
          {
            v33 = log10(uint64) + 1.0;
            v34 = v33 - 4;
            if (v33 <= 4)
            {
              v34 = 0;
            }

            v35 = v34;
          }

          else
          {
            v35 = 0.0;
          }

          v56 = v144;
          v57 = __exp10(v35);
          [v56 setCoexTxDeniedRequests:(v57 * (v32 / v57))];
          goto LABEL_14;
        }

        if (*buf.__r_.__value_.__l.__data_ == 0x5F78725F78656F63 && *(buf.__r_.__value_.__r.__words[0] + 8) == 0x725F6465696E6564 && *(buf.__r_.__value_.__r.__words[0] + 15) == 0x7374736575716572)
        {
          v27 = uint64;
          if (uint64)
          {
            v28 = log10(uint64) + 1.0;
            v29 = v28 - 4;
            if (v28 <= 4)
            {
              v29 = 0;
            }

            v30 = v29;
          }

          else
          {
            v30 = 0.0;
          }

          v60 = v144;
          v61 = __exp10(v30);
          [v60 setCoexRxDeniedRequests:(v61 * (v27 / v61))];
          goto LABEL_14;
        }
      }

      else
      {
        if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          if (buf.__r_.__value_.__l.__size_ != 16)
          {
            if (buf.__r_.__value_.__l.__size_ != 24)
            {
              goto LABEL_112;
            }

LABEL_70:
            if (*buf.__r_.__value_.__l.__data_ == 0x5F78745F78656F63 && *(buf.__r_.__value_.__r.__words[0] + 8) == 0x5F6465746E617267 && *(buf.__r_.__value_.__r.__words[0] + 16) == 0x7374736575716572)
            {
              v52 = uint64;
              if (uint64)
              {
                v53 = log10(uint64) + 1.0;
                v54 = v53 - 4;
                if (v53 <= 4)
                {
                  v54 = 0;
                }

                v55 = v54;
              }

              else
              {
                v55 = 0.0;
              }

              v102 = v144;
              v103 = __exp10(v55);
              [v102 setCoexTxGrantedRequests:(v103 * (v52 / v103))];
              goto LABEL_14;
            }

            if (*buf.__r_.__value_.__l.__data_ == 0x5F78725F78656F63 && *(buf.__r_.__value_.__r.__words[0] + 8) == 0x5F6465746E617267 && *(buf.__r_.__value_.__r.__words[0] + 16) == 0x7374736575716572)
            {
              v43 = uint64;
              if (uint64)
              {
                v44 = log10(uint64) + 1.0;
                v45 = v44 - 4;
                if (v44 <= 4)
                {
                  v45 = 0;
                }

                v46 = v45;
              }

              else
              {
                v46 = 0.0;
              }

              v108 = v144;
              v109 = __exp10(v46);
              [v108 setCoexRxGrantedRequests:(v109 * (v43 / v109))];
              goto LABEL_14;
            }

            goto LABEL_112;
          }

          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (HIBYTE(buf.__r_.__value_.__r.__words[2]) != 16)
          {
            goto LABEL_112;
          }

          p_buf = &buf;
        }

        v37 = p_buf->__r_.__value_.__r.__words[0];
        size = p_buf->__r_.__value_.__l.__size_;
        if (v37 == 0x5F78745F78656F63 && size == 0x7374736575716572)
        {
          v47 = uint64;
          if (uint64)
          {
            v48 = log10(uint64) + 1.0;
            v49 = v48 - 4;
            if (v48 <= 4)
            {
              v49 = 0;
            }

            v50 = v49;
          }

          else
          {
            v50 = 0.0;
          }

          v58 = v144;
          v59 = __exp10(v50);
          [v58 setCoexTxRequests:(v59 * (v47 / v59))];
          goto LABEL_14;
        }

        if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0 && buf.__r_.__value_.__l.__size_ == 24)
        {
          goto LABEL_70;
        }

        if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          if (buf.__r_.__value_.__l.__size_ != 16)
          {
            goto LABEL_112;
          }

          v51 = buf.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (HIBYTE(buf.__r_.__value_.__r.__words[2]) != 16)
          {
            goto LABEL_112;
          }

          v51 = &buf;
        }

        v63 = v51->__r_.__value_.__r.__words[0];
        v62 = v51->__r_.__value_.__l.__size_;
        if (v63 == 0x5F78725F78656F63 && v62 == 0x7374736575716572)
        {
          v104 = uint64;
          if (uint64)
          {
            v105 = log10(uint64) + 1.0;
            v106 = v105 - 4;
            if (v105 <= 4)
            {
              v106 = 0;
            }

            v107 = v106;
          }

          else
          {
            v107 = 0.0;
          }

          v111 = v144;
          v112 = __exp10(v107);
          [v111 setCoexRxRequests:(v112 * (v104 / v112))];
          goto LABEL_14;
        }
      }

LABEL_112:
      v65 = std::string::find(&buf, 91, 0);
      v66 = std::string::find(&buf, 93, 0);
      v67 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      v68 = buf.__r_.__value_.__l.__size_;
      v142 = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &buf;
      }

      else
      {
        v69 = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v70 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v70 = buf.__r_.__value_.__l.__size_;
      }

      if (v70 < 28)
      {
        goto LABEL_14;
      }

      v71 = v66;
      v72 = (v69 + v70);
      v73 = v70;
      v74 = v69;
      v141 = v4;
      do
      {
        v75 = memchr(v74, 99, v73 - 27);
        if (!v75)
        {
          break;
        }

        if (v75->__r_.__value_.__r.__words[0] == 0x5F78725F78656F63 && v75->__r_.__value_.__l.__size_ == 0x69745F746E617267 && v75->__r_.__value_.__r.__words[2] == 0x6F747369685F656DLL && LODWORD(v75[1].__r_.__value_.__l.__data_) == 1835102823)
        {
          goto LABEL_133;
        }

        v74 = (&v75->__r_.__value_.__l.__data_ + 1);
        v73 = v72 - v74;
      }

      while (v72 - v74 > 27);
      v75 = (v69 + v70);
LABEL_133:
      v80 = v75 != v72 && v75 == v69;
      v81 = v69;
      do
      {
        v82 = memchr(v81, 99, v70 - 27);
        if (!v82)
        {
          break;
        }

        if (v82->__r_.__value_.__r.__words[0] == 0x5F78745F78656F63 && v82->__r_.__value_.__l.__size_ == 0x69745F746E617267 && v82->__r_.__value_.__r.__words[2] == 0x6F747369685F656DLL && LODWORD(v82[1].__r_.__value_.__l.__data_) == 1835102823)
        {
          goto LABEL_153;
        }

        v81 = (&v82->__r_.__value_.__l.__data_ + 1);
        v70 = v72 - v81;
      }

      while (v72 - v81 > 27);
      v82 = v72;
LABEL_153:
      v86 = v65 != -1 && v80;
      if (!v86 || v71 == -1)
      {
        v21 = v82 == v72;
        v3 = v140;
        v4 = v141;
        if (v21 || v82 != v69 || v65 == -1 || v71 == -1)
        {
          goto LABEL_14;
        }

        if ((v67 & 0x80000000) != 0)
        {
          v88 = v142;
          if (v68 <= v65)
          {
LABEL_242:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v65 >= v67)
          {
            goto LABEL_242;
          }

          v88 = &buf;
          v68 = v67;
        }

        v95 = v65 + 1;
        if (v68 - (v65 + 1) >= v71 - 1)
        {
          v96 = v71 - 1;
        }

        else
        {
          v96 = v68 - (v65 + 1);
        }

        if (v96 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v96 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v96;
        if (v96)
        {
          memmove(&__dst, v88 + v95, v96);
        }

        __dst.__r_.__value_.__s.__data_[v96] = 0;
        v97 = std::stoi(&__dst, 0, 10);
        if (v97 <= 0xE)
        {
          if (v20)
          {
            v98 = log10(v20) + 1.0;
            v99 = v98 - 4;
            if (v98 <= 4)
            {
              v99 = 0;
            }

            v100 = v99;
          }

          else
          {
            v100 = 0.0;
          }

          v110 = __exp10(v100);
          *(&v149 + v97) = (v110 * (v20 / v110));
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_14;
          }

LABEL_201:
          operator delete(__dst.__r_.__value_.__l.__data_);
          goto LABEL_14;
        }
      }

      else
      {
        v3 = v140;
        v4 = v141;
        if ((v67 & 0x80000000) != 0)
        {
          v87 = v142;
          if (v68 <= v65)
          {
LABEL_240:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v65 >= v67)
          {
            goto LABEL_240;
          }

          v87 = &buf;
          v68 = v67;
        }

        v89 = v65 + 1;
        if (v68 - (v65 + 1) >= v71 - 1)
        {
          v90 = v71 - 1;
        }

        else
        {
          v90 = v68 - (v65 + 1);
        }

        if (v90 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v90 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v90;
        if (v90)
        {
          memmove(&__dst, v87 + v89, v90);
        }

        __dst.__r_.__value_.__s.__data_[v90] = 0;
        v91 = std::stoi(&__dst, 0, 10);
        if ((v91 & 0xFEu) <= 0xD)
        {
          if (v20)
          {
            v92 = log10(v20) + 1.0;
            v93 = v92 - 4;
            if (v92 <= 4)
            {
              v93 = 0;
            }

            v94 = v93;
          }

          else
          {
            v94 = 0.0;
          }

          v101 = __exp10(v94);
          *(&v152 + v91) = (v101 * (v20 / v101));
        }
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_201;
      }

LABEL_14:
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        ++v8;
        v7 = v144;
        if (v8 == count)
        {
LABEL_215:
          v113 = v152;
          goto LABEL_217;
        }
      }

      else
      {
        ++v8;
        v7 = v144;
        if (v8 == count)
        {
          goto LABEL_215;
        }
      }
    }
  }

  v113 = 0;
  v4 = 0;
LABEL_217:
  [v7 addCoexRxGrantTimeHistogram:{v113, v139}];
  [v7 addCoexRxGrantTimeHistogram:DWORD1(v152)];
  [v7 addCoexRxGrantTimeHistogram:DWORD2(v152)];
  [v7 addCoexRxGrantTimeHistogram:HIDWORD(v152)];
  [v7 addCoexRxGrantTimeHistogram:v153];
  [v7 addCoexRxGrantTimeHistogram:DWORD1(v153)];
  [v7 addCoexRxGrantTimeHistogram:DWORD2(v153)];
  [v7 addCoexRxGrantTimeHistogram:HIDWORD(v153)];
  [v7 addCoexRxGrantTimeHistogram:v154];
  [v7 addCoexRxGrantTimeHistogram:DWORD1(v154)];
  [v7 addCoexRxGrantTimeHistogram:DWORD2(v154)];
  [v7 addCoexRxGrantTimeHistogram:HIDWORD(v154)];
  [v7 addCoexRxGrantTimeHistogram:v155];
  [v7 addCoexRxGrantTimeHistogram:HIDWORD(v155)];
  [v7 addCoexTxGrantTimeHistogram:v149];
  [v7 addCoexTxGrantTimeHistogram:DWORD1(v149)];
  [v7 addCoexTxGrantTimeHistogram:DWORD2(v149)];
  [v7 addCoexTxGrantTimeHistogram:HIDWORD(v149)];
  [v7 addCoexTxGrantTimeHistogram:v150];
  [v7 addCoexTxGrantTimeHistogram:DWORD1(v150)];
  [v7 addCoexTxGrantTimeHistogram:DWORD2(v150)];
  [v7 addCoexTxGrantTimeHistogram:HIDWORD(v150)];
  [v7 addCoexTxGrantTimeHistogram:v151[0]];
  [v7 addCoexTxGrantTimeHistogram:v151[1]];
  [v7 addCoexTxGrantTimeHistogram:v151[2]];
  [v7 addCoexTxGrantTimeHistogram:v151[3]];
  [v7 addCoexTxGrantTimeHistogram:v151[4]];
  [v7 addCoexTxGrantTimeHistogram:v151[5]];
  [v7 addCoexTxGrantTimeHistogram:v151[6]];
  [v7 setTxGrantedReqPercentage:{100 * objc_msgSend(v7, "coexTxGrantedRequests") / (objc_msgSend(v7, "coexTxDeniedRequests") + objc_msgSend(v7, "coexTxGrantedRequests"))}];
  v114 = [v7 txGrantedReqPercentage];
  v115 = v114;
  if (v114)
  {
    v116 = log10(v114) + 1.0;
    v117 = v116 - 4;
    if (v116 <= 4)
    {
      v117 = 0;
    }

    v118 = v117;
  }

  else
  {
    v118 = 0.0;
  }

  v119 = __exp10(v118);
  [v7 setTxGrantedReqPercentage:(v119 * (v115 / v119))];
  [v7 setTxDeniedReqPercentage:{100 * objc_msgSend(v7, "coexTxDeniedRequests") / (objc_msgSend(v7, "coexTxDeniedRequests") + objc_msgSend(v7, "coexTxGrantedRequests"))}];
  v120 = [v7 txDeniedReqPercentage];
  v121 = v120;
  if (v120)
  {
    v122 = log10(v120) + 1.0;
    v123 = v122 - 4;
    if (v122 <= 4)
    {
      v123 = 0;
    }

    v124 = v123;
  }

  else
  {
    v124 = 0.0;
  }

  v125 = __exp10(v124);
  [v7 setTxDeniedReqPercentage:(v125 * (v121 / v125))];
  [v7 setRxGrantedReqPercentage:{100 * objc_msgSend(v7, "coexRxGrantedRequests") / (objc_msgSend(v7, "coexRxDeniedRequests") + objc_msgSend(v7, "coexRxGrantedRequests"))}];
  v126 = [v7 rxGrantedReqPercentage];
  v127 = v126;
  if (v126)
  {
    v128 = log10(v126) + 1.0;
    v129 = v128 - 4;
    if (v128 <= 4)
    {
      v129 = 0;
    }

    v130 = v129;
  }

  else
  {
    v130 = 0.0;
  }

  v131 = __exp10(v130);
  [v7 setRxGrantedReqPercentage:(v131 * (v127 / v131))];
  [v7 setRxDeniedReqPercentage:{100 * objc_msgSend(v7, "coexRxDeniedRequests") / (objc_msgSend(v7, "coexRxDeniedRequests") + objc_msgSend(v7, "coexRxGrantedRequests"))}];
  v132 = [v7 rxDeniedReqPercentage];
  v133 = v132;
  if (v132)
  {
    v134 = log10(v132) + 1.0;
    v135 = v134 - 4;
    if (v134 <= 4)
    {
      v135 = 0;
    }

    v136 = v135;
  }

  else
  {
    v136 = 0.0;
  }

  v137 = __exp10(v136);
  [v7 setRxDeniedReqPercentage:(v137 * (v133 / v137))];
  [v139 setSCntrsCoex:v7];

  v5 = 0;
LABEL_238:

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v146, v147[0]);
  return v5;
}

void sub_100093FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, char *a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a21, a22);
  _Unwind_Resume(a1);
}

uint64_t AWDMetricsHandlers_handle_getprop_threadmle(void *a1, void *a2)
{
  v3 = a1;
  v96 = a2;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_threadmle();
    }

    v5 = 1;
    goto LABEL_200;
  }

  count = xpc_array_get_count(v3);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AWDMetrics : AWDMetricsHandlers_handle_getprop_threadmle - reading array with size %ld.", buf, 0xCu);
  }

  v97 = objc_opt_new();
  if (count)
  {
    v8 = 0;
    v4 = 0;
    while (1)
    {
      v14 = xpc_array_get_dictionary(v3, v8);

      v4 = v14;
      string = xpc_dictionary_get_string(v14, "key");
      v16 = strlen(string);
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v17 = v16;
      if (v16 >= 0x17)
      {
        operator new();
      }

      v99 = v16;
      if (v16)
      {
        memmove(buf, string, v16);
      }

      buf[v17] = 0;
      uint64 = xpc_dictionary_get_uint64(v4, "value");
      v19 = v99;
      if (v99 < 0)
      {
        v29 = *&buf[8];
        if (*&buf[8] == 16)
        {
          if (**buf == 0x6F725F646C696863 && *(*buf + 8) == 0x746E756F635F656CLL)
          {
            goto LABEL_102;
          }

          v29 = *&buf[8];
        }

        else if (*&buf[8] == 19)
        {
          if (**buf == 0x64656C6261736964 && *(*buf + 8) == 0x6F635F656C6F725FLL && *(*buf + 11) == 0x746E756F635F656CLL)
          {
            goto LABEL_106;
          }

          if (**buf == 0x6465686361746564 && *(*buf + 8) == 0x6F635F656C6F725FLL && *(*buf + 11) == 0x746E756F635F656CLL)
          {
            goto LABEL_110;
          }
        }

        if (v29 == 17)
        {
          v35 = **buf == 0x725F726574756F72 && *(*buf + 8) == 0x6E756F635F656C6FLL;
          if (v35 && *(*buf + 16) == 116)
          {
            goto LABEL_169;
          }
        }

        v37 = *&buf[8];
        if (*&buf[8] == 17)
        {
          if (**buf == 0x725F72656461656CLL && *(*buf + 8) == 0x6E756F635F656C6FLL && *(*buf + 16) == 116)
          {
            goto LABEL_177;
          }

          v37 = *&buf[8];
        }

        if (v37 != 15)
        {
          goto LABEL_137;
        }

        v13 = *buf;
      }

      else
      {
        v13 = buf;
        if (v99 > 0x10u)
        {
          if (v99 == 17)
          {
            if (*buf == 0x725F726574756F72 && *&buf[8] == 0x6E756F635F656C6FLL && buf[16] == 116)
            {
LABEL_169:
              v77 = uint64;
              if (uint64)
              {
                v78 = log10(uint64) + 1.0;
                v79 = v78 - 3;
                if (v78 <= 3)
                {
                  v79 = 0;
                }

                v80 = v79;
              }

              else
              {
                v80 = 0.0;
              }

              v89 = __exp10(v80);
              [v97 setRouterRoleCount:(v89 * (v77 / v89))];
              goto LABEL_194;
            }

            if (*buf == 0x725F72656461656CLL && *&buf[8] == 0x6E756F635F656C6FLL && buf[16] == 116)
            {
LABEL_177:
              v85 = uint64;
              if (uint64)
              {
                v86 = log10(uint64) + 1.0;
                v87 = v86 - 3;
                if (v86 <= 3)
                {
                  v87 = 0;
                }

                v88 = v87;
              }

              else
              {
                v88 = 0.0;
              }

              v91 = __exp10(v88);
              [v97 setLeaderRoleCount:(v91 * (v85 / v91))];
              goto LABEL_194;
            }

            v13 = buf;
          }

          else if (v99 == 19)
          {
            if (*buf == 0x64656C6261736964 && *&buf[8] == 0x6F635F656C6F725FLL && *&buf[11] == 0x746E756F635F656CLL)
            {
LABEL_106:
              v49 = uint64;
              if (uint64)
              {
                v50 = log10(uint64) + 1.0;
                v51 = v50 - 3;
                if (v50 <= 3)
                {
                  v51 = 0;
                }

                v52 = v51;
              }

              else
              {
                v52 = 0.0;
              }

              v58 = __exp10(v52);
              [v97 setDisabledRoleCount:(v58 * (v49 / v58))];
              goto LABEL_194;
            }

            if (*buf == 0x6465686361746564 && *&buf[8] == 0x6F635F656C6F725FLL && *&buf[11] == 0x746E756F635F656CLL)
            {
LABEL_110:
              v53 = uint64;
              if (uint64)
              {
                v54 = log10(uint64) + 1.0;
                v55 = v54 - 3;
                if (v54 <= 3)
                {
                  v55 = 0;
                }

                v56 = v55;
              }

              else
              {
                v56 = 0.0;
              }

              v92 = __exp10(v56);
              [v97 setDetachedRoleCount:(v92 * (v53 / v92))];
              goto LABEL_194;
            }

            v13 = buf;
          }

          if (v99 != 20)
          {
            goto LABEL_15;
          }

LABEL_27:
          v20 = *v13;
          v21 = *(v13 + 1);
          v22 = *(v13 + 4);
          if (v20 == 0x635F746E65726170 && v21 == 0x635F7365676E6168 && v22 == 1953396079)
          {
            v25 = uint64;
            if (uint64)
            {
              v26 = log10(uint64) + 1.0;
              v27 = v26 - 3;
              if (v26 <= 3)
              {
                v27 = 0;
              }

              v28 = v27;
            }

            else
            {
              v28 = 0.0;
            }

            v93 = __exp10(v28);
            [v97 setParentChangesCount:(v93 * (v25 / v93))];
          }

          goto LABEL_194;
        }

        if (v99 != 15)
        {
          if (v99 != 16)
          {
            goto LABEL_15;
          }

          if (*buf != 0x6F725F646C696863 || *&buf[8] != 0x746E756F635F656CLL)
          {
            goto LABEL_15;
          }

LABEL_102:
          v45 = uint64;
          if (uint64)
          {
            v46 = log10(uint64) + 1.0;
            v47 = v46 - 3;
            if (v46 <= 3)
            {
              v47 = 0;
            }

            v48 = v47;
          }

          else
          {
            v48 = 0.0;
          }

          v57 = __exp10(v48);
          [v97 setChildRoleCount:(v57 * (v45 / v57))];
LABEL_194:
          if ((v19 & 0x80) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }
      }

      v63 = *v13;
      v64 = *(v13 + 7);
      if (v63 == 0x615F686361747461 && v64 == 0x7374706D65747461)
      {
        v81 = uint64;
        if (uint64)
        {
          v82 = log10(uint64) + 1.0;
          v83 = v82 - 3;
          if (v82 <= 3)
          {
            v83 = 0;
          }

          v84 = v83;
        }

        else
        {
          v84 = 0.0;
        }

        v90 = __exp10(v84);
        [v97 setAttachAttempts:(v90 * (v81 / v90))];
        goto LABEL_194;
      }

LABEL_137:
      if ((v99 & 0x80) == 0 || *&buf[8] != 26)
      {
        if ((v99 & 0x80) != 0 && *&buf[8] == 32)
        {
          v13 = *buf;
          if (**buf != 0x705F726574746562 || *(*buf + 8) != 0x6E6F697469747261 || *(*buf + 16) != 0x5F6863617474615FLL || *(*buf + 24) != 0x7374706D65747461)
          {
            goto LABEL_14;
          }

          v73 = uint64;
          if (uint64)
          {
            v74 = log10(uint64) + 1.0;
            v75 = v74 - 3;
            if (v74 <= 3)
            {
              v75 = 0;
            }

            v76 = v75;
          }

          else
          {
            v76 = 0.0;
          }

          v94 = __exp10(v76);
          [v97 setBetterPartitionAttachAttempts:(v94 * (v73 / v94))];
          goto LABEL_13;
        }

        if ((v99 & 0x80) == 0)
        {
          goto LABEL_15;
        }

        v13 = *buf;
        if (*&buf[8] != 20)
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }

      v13 = *buf;
      if (**buf != 0x6F69746974726170 || *(*buf + 8) != 0x6168635F64695F6ELL || *(*buf + 16) != 0x756F635F7365676ELL || *(*buf + 24) != 29806)
      {
        goto LABEL_14;
      }

      v69 = uint64;
      if (uint64)
      {
        v9 = log10(uint64) + 1.0;
        v10 = v9 - 3;
        if (v9 <= 3)
        {
          v10 = 0;
        }

        v11 = v10;
      }

      else
      {
        v11 = 0.0;
      }

      v12 = __exp10(v11);
      [v97 setPartitionIdChangesCount:(v12 * (v69 / v12))];
LABEL_13:
      v13 = *buf;
LABEL_14:
      operator delete(v13);
LABEL_15:
      if (count == ++v8)
      {
        goto LABEL_199;
      }
    }
  }

  v4 = 0;
LABEL_199:
  [v96 setSCntrsMle:{v97, v96}];

  v5 = 0;
LABEL_200:

  return v5;
}

uint64_t AWDMetricsHandlers_handle_getprop_allipv6(void *a1, void *a2)
{
  v3 = a1;
  v90 = a2;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_allipv6();
    }

    v5 = 1;
    goto LABEL_165;
  }

  count = xpc_array_get_count(v3);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AWDMetrics : AWDMetricsHandlers_handle_getprop_allipv6 - reading array with size %ld.", &buf, 0xCu);
  }

  v8 = objc_opt_new();
  if (count)
  {
    v9 = 0;
    v4 = 0;
    while (1)
    {
      v10 = xpc_array_get_dictionary(v3, v9);

      v4 = v10;
      string = xpc_dictionary_get_string(v10, "key");
      v12 = strlen(string);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v93 = v12;
      if (v12)
      {
        memmove(&buf, string, v12);
      }

      *(&buf + v13) = 0;
      uint64 = xpc_dictionary_get_uint64(v4, "value");
      v15 = v93;
      if ((v93 & 0x80000000) == 0)
      {
        break;
      }

      if (*(&buf + 1) == 10)
      {
        if (*buf == 0x65636375735F7874 && *(buf + 8) == 29555)
        {
          goto LABEL_88;
        }

        if (*buf == 0x756C6961665F7874 && *(buf + 8) == 25970)
        {
          goto LABEL_96;
        }

        if (*buf == 0x65636375735F7872 && *(buf + 8) == 29555)
        {
          goto LABEL_104;
        }

        if (*buf == 0x756C6961665F7872 && *(buf + 8) == 25970)
        {
          goto LABEL_84;
        }
      }

      if (*(&buf + 1) == 11)
      {
        if (*buf == 0x79616C65645F7874 && *(buf + 3) == 0x6E696D79616C6564)
        {
          goto LABEL_118;
        }

        if ((v93 & 0x80) == 0)
        {
          if (v93 != 11)
          {
            goto LABEL_10;
          }

LABEL_62:
          if (buf != 0x79616C65645F7874 || *(&buf + 3) != 0x78616D79616C6564)
          {
            p_buf = &buf;
LABEL_128:
            v61 = *p_buf;
            v62 = *(p_buf + 3);
            if (v61 == 0x79616C65645F7874 && v62 == 0x67766179616C6564)
            {
              v64 = uint64;
              if (uint64)
              {
                v65 = log10(uint64) + 1.0;
                v66 = v65 - 3;
                if (v65 <= 3)
                {
                  v66 = 0;
                }

                v67 = v66;
              }

              else
              {
                v67 = 0.0;
              }

              v75 = __exp10(v67);
              [v8 setTxDelayavg:(v75 * (v64 / v75))];
            }

LABEL_151:
            if ((v15 & 0x80) == 0)
            {
              goto LABEL_10;
            }

            v59 = buf;
            goto LABEL_9;
          }

LABEL_137:
          v68 = uint64;
          if (uint64)
          {
            v69 = log10(uint64) + 1.0;
            v70 = v69 - 3;
            if (v69 <= 3)
            {
              v70 = 0;
            }

            v71 = v70;
          }

          else
          {
            v71 = 0.0;
          }

          v73 = __exp10(v71);
          [v8 setTxDelaymax:(v73 * (v68 / v73))];
          goto LABEL_151;
        }
      }

      else if (*(&buf + 1) == 18)
      {
        if (*buf == 0x705F7070615F7874 && *(buf + 8) == 0x65636375735F746BLL && *(buf + 16) == 29555)
        {
          goto LABEL_92;
        }

        if ((v93 & 0x80) == 0)
        {
          if (v93 != 11)
          {
            goto LABEL_10;
          }

LABEL_58:
          if (buf != 0x79616C65645F7874 || *(&buf + 3) != 0x6E696D79616C6564)
          {
            goto LABEL_62;
          }

LABEL_118:
          v55 = uint64;
          if (uint64)
          {
            v56 = log10(uint64) + 1.0;
            v57 = v56 - 3;
            if (v56 <= 3)
            {
              v57 = 0;
            }

            v58 = v57;
          }

          else
          {
            v58 = 0.0;
          }

          v72 = __exp10(v58);
          [v8 setTxDelaymin:(v72 * (v55 / v72))];
          goto LABEL_151;
        }
      }

      v59 = buf;
      if (*(&buf + 1) == 11)
      {
        if (*buf != 0x79616C65645F7874 || *(buf + 3) != 0x78616D79616C6564)
        {
          p_buf = buf;
          goto LABEL_128;
        }

        goto LABEL_137;
      }

LABEL_9:
      operator delete(v59);
LABEL_10:
      if (count == ++v9)
      {
        goto LABEL_154;
      }
    }

    if (v93 == 10)
    {
      if (buf == 0x65636375735F7874 && WORD4(buf) == 29555)
      {
LABEL_88:
        v35 = uint64;
        if (uint64)
        {
          v36 = log10(uint64) + 1.0;
          v37 = v36 - 3;
          if (v36 <= 3)
          {
            v37 = 0;
          }

          v38 = v37;
        }

        else
        {
          v38 = 0.0;
        }

        v47 = __exp10(v38);
        [v8 setTxSuccess:(v47 * (v35 / v47))];
      }

      else if (buf == 0x756C6961665F7874 && WORD4(buf) == 25970)
      {
LABEL_96:
        v43 = uint64;
        if (uint64)
        {
          v44 = log10(uint64) + 1.0;
          v45 = v44 - 3;
          if (v44 <= 3)
          {
            v45 = 0;
          }

          v46 = v45;
        }

        else
        {
          v46 = 0.0;
        }

        v53 = __exp10(v46);
        [v8 setTxFailure:(v53 * (v43 / v53))];
      }

      else if (buf == 0x65636375735F7872 && WORD4(buf) == 29555)
      {
LABEL_104:
        v49 = uint64;
        if (uint64)
        {
          v50 = log10(uint64) + 1.0;
          v51 = v50 - 3;
          if (v50 <= 3)
          {
            v51 = 0;
          }

          v52 = v51;
        }

        else
        {
          v52 = 0.0;
        }

        v74 = __exp10(v52);
        [v8 setRxSuccess:(v74 * (v49 / v74))];
      }

      else
      {
        if (buf != 0x756C6961665F7872 || WORD4(buf) != 25970)
        {
          goto LABEL_10;
        }

LABEL_84:
        v31 = uint64;
        if (uint64)
        {
          v32 = log10(uint64) + 1.0;
          v33 = v32 - 3;
          if (v32 <= 3)
          {
            v33 = 0;
          }

          v34 = v33;
        }

        else
        {
          v34 = 0.0;
        }

        v76 = __exp10(v34);
        [v8 setRxFailure:(v76 * (v31 / v76))];
      }

      goto LABEL_151;
    }

    if (v93 != 11)
    {
      if (v93 != 18)
      {
        goto LABEL_10;
      }

      v16 = buf == 0x705F7070615F7874 && *(&buf + 1) == 0x65636375735F746BLL;
      if (!v16 || v92 != 29555)
      {
        goto LABEL_10;
      }

LABEL_92:
      v39 = uint64;
      if (uint64)
      {
        v40 = log10(uint64) + 1.0;
        v41 = v40 - 3;
        if (v40 <= 3)
        {
          v41 = 0;
        }

        v42 = v41;
      }

      else
      {
        v42 = 0.0;
      }

      v48 = __exp10(v42);
      [v8 setTxAppPktSucess:(v48 * (v39 / v48))];
      goto LABEL_151;
    }

    goto LABEL_58;
  }

  v4 = 0;
LABEL_154:
  [v8 setTxSuccessRate:{100 * objc_msgSend(v8, "txSuccess") / (objc_msgSend(v8, "txFailure") + objc_msgSend(v8, "txSuccess"))}];
  v77 = [v8 txSuccessRate];
  v78 = v77;
  if (v77)
  {
    v79 = log10(v77) + 1.0;
    v80 = v79 - 4;
    if (v79 <= 4)
    {
      v80 = 0;
    }

    v81 = v80;
  }

  else
  {
    v81 = 0.0;
  }

  v82 = __exp10(v81);
  [v8 setTxSuccessRate:(v82 * (v78 / v82))];
  [v8 setRxSuccessRate:{100 * objc_msgSend(v8, "rxSuccess") / (objc_msgSend(v8, "rxFailure") + objc_msgSend(v8, "rxSuccess"))}];
  v83 = [v8 rxSuccessRate];
  v84 = v83;
  if (v83)
  {
    v85 = log10(v83) + 1.0;
    v86 = v85 - 4;
    if (v85 <= 4)
    {
      v86 = 0;
    }

    v87 = v86;
  }

  else
  {
    v87 = 0.0;
  }

  v88 = __exp10(v87);
  [v8 setRxSuccessRate:(v88 * (v84 / v88))];
  [v90 setSCntrsIp:v8];

  v5 = 0;
LABEL_165:

  return v5;
}

uint64_t AWDMetricsHandlers_handle_get_CTCSNumberOfThirdPartyBRs(unsigned int *a1)
{
  if (a1)
  {
    *a1 = dword_10052B1D8;
  }

  return 0;
}

uint64_t AWDMetricsHandlers_handle_get_CTCSNumberOfPreferredNWs(unsigned int *a1, unsigned int *a2)
{
  if (a1 && a2)
  {
    *a1 = dword_10052B1E0;
    *a2 = dword_10052B1E4;
  }

  return 0;
}

uint64_t AWDMetricsHandlers_handle_get_stabilityCountersData(void *a1)
{
  memset(&v15, 0, sizeof(v15));
  v1 = a1;
  v2 = v1;
  if ((DWORD1(xmmword_10052B0A0) - 1) >= 3)
  {
    v3 = 4;
  }

  else
  {
    v3 = DWORD1(xmmword_10052B0A0);
  }

  [v1 setNcpResetType:v3];
  std::string::append(&v15, "{");
  std::string::append(&v15, "FAULT_BLOCK_RANDOM_ID=");
  std::to_string(&__p, xmmword_10052B0A0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v15, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(&v15, ";");
  std::string::append(&v15, "ADDRESS=");
  std::to_string(&__p, dword_10052B0B0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v15, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(&v15, ";");
  std::string::append(&v15, "LINE=");
  std::to_string(&__p, dword_10052B0B4);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v15, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(&v15, ";");
  std::string::append(&v15, "}");
  v10 = [NSString alloc];
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  v12 = [v10 initWithUTF8String:v11];
  [v2 setNcpCrashReason:v12];

  [v2 setIsMtbfQualified:0];
  if (xmmword_10052B0A0 == -559038737)
  {
    [v2 setIsMtbfQualified:1];
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10009565C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = v21;

  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

__n128 AWDMetricsHandlers_handle_update_stabilityData(uint64_t a1)
{
  qword_10052B098 = *(a1 + 8);
  LODWORD(xmmword_10052B084) = xmmword_10052B084 + 1;
  ++dword_10052B094;
  result = *a1;
  *(&xmmword_10052B0A0 + 10) = *(a1 + 10);
  xmmword_10052B0A0 = result;
  LODWORD(xmmword_1004E5768) = dword_10052B094;
  LODWORD(stability_settings) = xmmword_10052B084;
  return result;
}

void AWDMetricsHandlers_Get_HealthInfo(void)
{
  memset(&v35, 0, sizeof(v35));
  std::string::append(&v35, "Daemon Restart = ");
  std::to_string(&v34, dword_10052B080);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v0 = &v34;
  }

  else
  {
    v0 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  std::string::append(&v35, v0, size);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::string::append(&v35, ". ");
  std::string::append(&v35, "RCP FW Resets = ");
  std::to_string(&v34, xmmword_10052B084);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v34;
  }

  else
  {
    v2 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v3 = v34.__r_.__value_.__l.__size_;
  }

  std::string::append(&v35, v2, v3);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::string::append(&v35, ". ");
  std::string::append(&v35, "Time since last reset= ");
  if (!xmmword_10052B084)
  {
    std::string::append(&v35, "N.A");
    goto LABEL_80;
  }

  v4 = qword_10052B098;
  if (qword_10052B098 >= 0xE3C7A73401)
  {
    v4 = (qword_10052B098 - 978307200000) / 0x3E8uLL;
  }

  v5 = CFAbsoluteTimeGetCurrent() - v4;
  if (v5 > 0.0)
  {
    std::to_string(&v34, v5);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v34;
    }

    else
    {
      v6 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = v34.__r_.__value_.__l.__size_;
    }

    std::string::append(&v35, v6, v7);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    std::string::append(&v35, "sec. ");
  }

  std::to_string(&v32, DWORD1(xmmword_10052B084));
  v8 = std::string::insert(&v32, 0, "#Asserts= ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v33, ". ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v34;
  }

  else
  {
    v12 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v34.__r_.__value_.__l.__size_;
  }

  std::string::append(&v35, v12, v13);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_38:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

LABEL_70:
      operator delete(v32.__r_.__value_.__l.__data_);
LABEL_39:
      std::to_string(&v32, DWORD2(xmmword_10052B084));
      v14 = std::string::insert(&v32, 0, "#HardFaults= ");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = std::string::append(&v33, ". ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v34;
      }

      else
      {
        v18 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v34.__r_.__value_.__l.__size_;
      }

      std::string::append(&v35, v18, v19);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_47:
          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

LABEL_73:
          operator delete(v32.__r_.__value_.__l.__data_);
LABEL_48:
          std::to_string(&v32, HIDWORD(xmmword_10052B084));
          v20 = std::string::insert(&v32, 0, "#StackOverflows= ");
          v21 = *&v20->__r_.__value_.__l.__data_;
          v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&v33.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          v22 = std::string::append(&v33, ". ");
          v23 = *&v22->__r_.__value_.__l.__data_;
          v34.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
          *&v34.__r_.__value_.__l.__data_ = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &v34;
          }

          else
          {
            v24 = v34.__r_.__value_.__r.__words[0];
          }

          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v25 = v34.__r_.__value_.__l.__size_;
          }

          std::string::append(&v35, v24, v25);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_56:
              if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_57;
              }

LABEL_76:
              operator delete(v32.__r_.__value_.__l.__data_);
LABEL_57:
              std::to_string(&v32, dword_10052B094);
              v26 = std::string::insert(&v32, 0, "#UnknownFaults= ");
              v27 = *&v26->__r_.__value_.__l.__data_;
              v33.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
              *&v33.__r_.__value_.__l.__data_ = v27;
              v26->__r_.__value_.__l.__size_ = 0;
              v26->__r_.__value_.__r.__words[2] = 0;
              v26->__r_.__value_.__r.__words[0] = 0;
              v28 = std::string::append(&v33, ". ");
              v29 = *&v28->__r_.__value_.__l.__data_;
              v34.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
              *&v34.__r_.__value_.__l.__data_ = v29;
              v28->__r_.__value_.__l.__size_ = 0;
              v28->__r_.__value_.__r.__words[2] = 0;
              v28->__r_.__value_.__r.__words[0] = 0;
              if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v30 = &v34;
              }

              else
              {
                v30 = v34.__r_.__value_.__r.__words[0];
              }

              if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v31 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v31 = v34.__r_.__value_.__l.__size_;
              }

              std::string::append(&v35, v30, v31);
              if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v34.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_65:
                  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_80;
                  }

LABEL_79:
                  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_80:
                  operator new();
                }
              }

              else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_65;
              }

              operator delete(v33.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }
          }

          else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          operator delete(v33.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_76;
        }
      }

      else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      operator delete(v33.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_73;
    }
  }

  else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  goto LABEL_70;
}