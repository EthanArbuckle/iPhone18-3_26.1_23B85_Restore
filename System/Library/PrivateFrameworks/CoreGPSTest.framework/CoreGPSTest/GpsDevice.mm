@interface GpsDevice
- (BOOL)getGpsConfiguration:(id *)a3 error:(id *)a4;
- (BOOL)testApSignalGpio:(id *)a3;
- (BOOL)testCommPing:(id *)a3 id:(id *)a4 error:(id *)a5;
- (BOOL)testExternalFreqAssistance:(id *)a3;
- (BOOL)testGpsCw:(id)a3 error:(id *)a4;
- (BOOL)testGpsModulated:(id)a3 gpsPrn:(int)a4 error:(id *)a5;
- (BOOL)testPeriodic:(id)a3 error:(id *)a4;
- (BOOL)testPowerMode:(unsigned __int8)a3 error:(id *)a4;
- (BOOL)testTimeMarkGpio:(id *)a3;
- (id).cxx_construct;
- (id)init:(id *)a3;
- (void)dealloc;
- (void)flushLogs;
@end

@implementation GpsDevice

- (id)init:(id *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = GpsDevice;
  [(GpsDevice *)&v18 init];
  if (!GpsdLogObjectGeneral)
  {
    v3 = os_log_create("com.apple.gpstest", "general");
    v4 = GpsdLogObjectGeneral;
    GpsdLogObjectGeneral = v3;
  }

  if (!GpsdLogObjectWarning)
  {
    v5 = os_log_create("com.apple.gpstest", "Warning");
    v6 = GpsdLogObjectWarning;
    GpsdLogObjectWarning = v5;
  }

  if (!GpsdLogObjectDevice)
  {
    v7 = os_log_create("com.apple.gpstest", "device");
    v8 = GpsdLogObjectDevice;
    GpsdLogObjectDevice = v7;
  }

  if (!GpsdLogObjectNmea)
  {
    v9 = os_log_create("com.apple.gpstest", "NMEA");
    v10 = GpsdLogObjectNmea;
    GpsdLogObjectNmea = v9;
  }

  if (!GpsdLogObjectGem)
  {
    v11 = os_log_create("com.apple.gpstest", "gem");
    v12 = GpsdLogObjectGem;
    GpsdLogObjectGem = v11;
  }

  v13 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2454AA000, v13, OS_LOG_TYPE_DEBUG, "Logging init, check if the level is enabled", buf, 2u);
    v13 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2454AA000, v13, OS_LOG_TYPE_INFO, "Logging init, check if the level is enabled", buf, 2u);
    v13 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2454AA000, v13, OS_LOG_TYPE_DEFAULT, "Logging init, check if the level is enabled", buf, 2u);
    v13 = GpsdLogObjectGeneral;
  }

  v14 = v13;
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v15);
    *buf = 134217984;
    *&buf[4] = ProcessUptimeSec;
    _os_log_impl(&dword_2454AA000, v14, OS_LOG_TYPE_DEFAULT, "Record process start time, %.1f", buf, 0xCu);
  }

  GpsdPreferences::instance(4);
  CoreGPSTestPreflight();
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GpsDevice;
  [(GpsDevice *)&v2 dealloc];
}

- (BOOL)getGpsConfiguration:(id *)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  fTestDevice = self->_fTestDevice;
  if (fTestDevice)
  {
    v7 = (**fTestDevice[66])(fTestDevice[66], a2);
  }

  else
  {
    v7 = -1;
  }

  a3->var2 = v7;
  v8 = GpsdPlatformInfo::instance(0);
  v9 = *v8;
  a3->var0 = *v8;
  if (!v9)
  {
    [GpsError setError:a4 withCode:4 format:@"Unrecognized hardware"];
    v15 = GpsdLogObjectGeneral;
    v14 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!v14)
    {
      goto LABEL_12;
    }

    LOWORD(v19[0]) = 0;
    v16 = "Unknown hardware platform";
LABEL_14:
    _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, v16, v19, 2u);
    LOBYTE(v14) = 0;
    goto LABEL_12;
  }

  v10 = *(GpsdPlatformInfo::instance(0) + 8);
  a3->var1 = v10;
  if (!v10)
  {
    [GpsError setError:a4 withCode:4 format:@"Unrecognized gnss chip"];
    v15 = GpsdLogObjectGeneral;
    v14 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!v14)
    {
      goto LABEL_12;
    }

    LOWORD(v19[0]) = 0;
    v16 = "Unknown gnss chip";
    goto LABEL_14;
  }

  v11 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    var0 = a3->var0;
    var2 = a3->var2;
    v19[0] = 67109632;
    v19[1] = var0;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = var2;
    _os_log_impl(&dword_2454AA000, v11, OS_LOG_TYPE_DEFAULT, "deviceConfig,%d,hwConfig,%d,dylibIfc,%d", v19, 0x14u);
  }

  LOBYTE(v14) = 1;
LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)testTimeMarkGpio:(id *)a3
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  fTestDevice = self->_fTestDevice;
  if (fTestDevice)
  {
    v6 = GpsFactoryTest::testTimeMark(fTestDevice);
  }

  else
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"--time-mark", @"20000", 0}];
    v6 = forkProcessGpsTest(__p, v7);
  }

  if (v6 == 1)
  {
    if (a3)
    {
      *a3 = 0;
    }
  }

  else
  {
    v8 = errorCodeTranslator(v6);
    v9 = stringifyTest(v6);
    [GpsError setError:a3 withCode:v8 format:@"%@", v9];
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v6 == 1;
}

- (BOOL)testApSignalGpio:(id *)a3
{
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  fTestDevice = self->_fTestDevice;
  if (fTestDevice)
  {
    v5 = GpsFactoryTest::testApSignal(fTestDevice);
  }

  else
  {
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"--host-wake", @"1000", 0}];
    v5 = forkProcessGpsTest(__p, v6);
  }

  if (v5 == 1)
  {
    if (a3)
    {
      *a3 = 0;
    }
  }

  else
  {
    v7 = errorCodeTranslator(v5);
    v8 = stringifyTest(v5);
    [GpsError setError:a3 withCode:v7 format:@"%@", v8];
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v5 == 1;
}

- (BOOL)testCommPing:(id *)a3 id:(id *)a4 error:(id *)a5
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "");
  fTestDevice = self->_fTestDevice;
  if (fTestDevice)
  {
    v10 = GpsFactoryTest::testCommPing(fTestDevice);
  }

  else
  {
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"--ping", @"10000", 0}];
    v10 = forkProcessGpsTest(&__str, v46);
    v11 = a4;
    std::string::basic_string[abi:ne200100]<0>(&__p, "commPing result: ");
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

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
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    if (v15)
    {
      if (size >= v15)
      {
        v23 = p_str + size;
        v24 = p_p->__r_.__value_.__s.__data_[0];
        v25 = p_str;
        do
        {
          v26 = size - v15;
          if (v26 == -1)
          {
            break;
          }

          v27 = memchr(v25, v24, v26 + 1);
          if (!v27)
          {
            break;
          }

          v28 = v27;
          if (!memcmp(v27, p_p, v15))
          {
            if (v28 != v23)
            {
              v16 = v28 - p_str;
              if (v28 - p_str != -1)
              {
                goto LABEL_18;
              }
            }

            break;
          }

          v25 = (v28 + 1);
          size = v23 - (v28 + 1);
        }

        while (size >= v15);
      }

      MEMORY[0x245D6AB60](&__str, "");
      a4 = v11;
    }

    else
    {
      v16 = 0;
LABEL_18:
      std::string::basic_string(&v51, &__str, v16 + v15, 0xFFFFFFFFFFFFFFFFLL, &v48);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v51;
      v17 = std::string::find(&__str, 10, 0);
      std::string::basic_string(&v51, &__str, 0, v17, &v48);
      a4 = v11;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v51;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  std::string::basic_string[abi:ne200100]<0>(&v51, "");
  if (v10 == 1)
  {
    v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = __str.__r_.__value_.__l.__size_;
    }

    if (v18)
    {
      std::string::basic_string[abi:ne200100]<0>(&v48, " ID:");
      v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &__str;
      }

      else
      {
        v20 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = __str.__r_.__value_.__l.__size_;
      }

      if ((v50 & 0x80u) == 0)
      {
        v21 = &v48;
      }

      else
      {
        v21 = v48;
      }

      if ((v50 & 0x80u) == 0)
      {
        v22 = v50;
      }

      else
      {
        v22 = v49;
      }

      if (v22)
      {
        if (v19 >= v22)
        {
          v40 = v20 + v19;
          v41 = *v21;
          v42 = v20;
          do
          {
            v43 = v19 - v22;
            if (v43 == -1)
            {
              break;
            }

            v44 = memchr(v42, v41, v43 + 1);
            if (!v44)
            {
              break;
            }

            v45 = v44;
            if (!memcmp(v44, v21, v22))
            {
              if (v45 != v40)
              {
                v29 = v45 - v20;
                if (v45 - v20 != -1)
                {
                  goto LABEL_51;
                }
              }

              break;
            }

            v42 = (v45 + 1);
            v19 = v40 - (v45 + 1);
          }

          while (v19 >= v22);
        }

        std::string::operator=(&__p, &__str);
      }

      else
      {
        v29 = 0;
LABEL_51:
        std::string::basic_string(&v47, &__str, 0, v29, v54);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v47;
        v30 = v50;
        if ((v50 & 0x80u) != 0)
        {
          v30 = v49;
        }

        std::string::basic_string(&v47, &__str, v30 + v29, 0xFFFFFFFFFFFFFFFFLL, v54);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        v51 = v47;
      }

      if (v50 < 0)
      {
        operator delete(v48);
      }
    }
  }

  v31 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = __p.__r_.__value_.__r.__words[0];
  }

  v32 = &v51;
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v32 = v51.__r_.__value_.__r.__words[0];
  }

  NSLog(&cfstr_LocalresultsSI.isa, v31, v32);
  if (v10 == 1)
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (!a3)
    {
LABEL_78:
      if (!a4)
      {
        goto LABEL_87;
      }

LABEL_79:
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v51.__r_.__value_.__l.__size_)
        {
          v37 = v51.__r_.__value_.__r.__words[0];
          goto LABEL_86;
        }
      }

      else if (*(&v51.__r_.__value_.__s + 23))
      {
        v37 = &v51;
LABEL_86:
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
        *a4 = v38;

        goto LABEL_87;
      }

LABEL_74:
      *a4 = 0;
      goto LABEL_87;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_)
      {
        v33 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_77;
      }
    }

    else if (*(&__p.__r_.__value_.__s + 23))
    {
      v33 = &__p;
LABEL_77:
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v33];
      *a3 = v36;

      goto LABEL_78;
    }

    *a3 = 0;
    if (a4)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v34 = errorCodeTranslator(v10);
    v35 = stringifyTest(v10);
    [GpsError setError:a5 withCode:v34 format:@"%@", v35];

    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      goto LABEL_74;
    }
  }

LABEL_87:
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v10 == 1;
}

- (BOOL)testGpsCw:(id)a3 error:(id *)a4
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  fTestDevice = self->_fTestDevice;
  if (fTestDevice)
  {
    v7 = GpsFactoryTest::testCw(fTestDevice, 10000.0, __p, 10, 2, 0, 0xFFFFFFFFLL);
  }

  else
  {
    v8 = MEMORY[0x277CBEA60];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 10];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 10000];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 10000];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 10000];
    v13 = [v8 arrayWithObjects:{@"--cw", v9, @"--bandwidth", v10, @"--band", v11, @"--subband", v12, 0}];

    v7 = forkProcessGpsTest(__p, v13);
  }

  if (v7 == 1)
  {
    if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    v14 = errorCodeTranslator(v7);
    v15 = stringifyTest(v7);
    [GpsError setError:a4 withCode:v14 format:@"%@", v15];
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return v7 == 1;
}

- (BOOL)testGpsModulated:(id)a3 gpsPrn:(int)a4 error:(id *)a5
{
  v8 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  fTestDevice = self->_fTestDevice;
  if (fTestDevice)
  {
    v10 = GpsFactoryTest::testModulated(fTestDevice, __p, 10, 2, a4);
  }

  else
  {
    v11 = MEMORY[0x277CBEA60];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 10];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 10000];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 10000];
    v15 = [v11 arrayWithObjects:{@"--modulated", v12, @"--band", v13, @"--subband", v14, 0}];

    v10 = forkProcessGpsTest(__p, v15);
  }

  if (v10 == 1)
  {
    if (a5)
    {
      *a5 = 0;
    }
  }

  else
  {
    v16 = errorCodeTranslator(v10);
    v17 = stringifyTest(v10);
    [GpsError setError:a5 withCode:v16 format:@"%@", v17];

    v8 = 0;
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  return v10 == 1;
}

- (BOOL)testPeriodic:(id)a3 error:(id *)a4
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  fTestDevice = self->_fTestDevice;
  if (fTestDevice)
  {
    v7 = GpsFactoryTest::testPeriodicFix(fTestDevice, __p, 10);
  }

  else
  {
    v8 = MEMORY[0x277CBEA60];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 10];
    v10 = [v8 arrayWithObjects:{@"--periodic", v9, 0}];

    v7 = forkProcessGpsTest(__p, v10);
  }

  if (v7 == 1)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = v20;
    v13 = __p[0];
    v14 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v12 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = v13;
    }

    v16 = [v11 stringWithCString:v15 encoding:v14];
    *a4 = 0;
  }

  else
  {
    v17 = errorCodeTranslator(v7);
    v16 = stringifyTest(v7);
    [GpsError setError:a4 withCode:v17 format:@"%@", v16];
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  return v7 == 1;
}

- (BOOL)testPowerMode:(unsigned __int8)a3 error:(id *)a4
{
  fTestDevice = self->_fTestDevice;
  if (fTestDevice)
  {
    v6 = GpsFactoryTest::testPowerMode(fTestDevice, 4 * (a3 != 0));
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v14 = 0;
    v7 = MEMORY[0x277CBEA60];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 4 * (a3 != 0)];
    v9 = [v7 arrayWithObjects:{@"--power-mode", v8, 0}];

    v6 = forkProcessGpsTest(__p, v9);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v6 == 1)
  {
    if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    v10 = errorCodeTranslator(v6);
    v11 = stringifyTest(v6);
    [GpsError setError:a4 withCode:v10 format:@"%@", v11];
  }

  return v6 == 1;
}

- (BOOL)testExternalFreqAssistance:(id *)a3
{
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  fTestDevice = self->_fTestDevice;
  if (fTestDevice)
  {
    v5 = GpsFactoryTest::testPeriodicFix(fTestDevice, __p, 10);
  }

  else
  {
    v6 = MEMORY[0x277CBEA60];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 10];
    v8 = [v6 arrayWithObjects:{@"--periodic", v7, 0}];

    v5 = forkProcessGpsTest(__p, v8);
  }

  if (v5 == 1)
  {
    if (a3)
    {
      *a3 = 0;
    }
  }

  else
  {
    v9 = errorCodeTranslator(v5);
    v10 = stringifyTest(v5);
    [GpsError setError:a3 withCode:v9 format:@"%@", v10];
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  return v5 == 1;
}

- (void)flushLogs
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[GpsDevice flushLogs]";
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
  }

  fTestDevice = self->_fTestDevice;
  if (fTestDevice)
  {
    v5 = fTestDevice[67];
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  *(self + 8) = 6;
  *(self + 9) = 0;
  *(self + 80) = 1;
  *(self + 96) = 0;
  *(self + 81) = 0;
  *(self + 89) = 0;
  *(self + 108) = 0;
  *(self + 100) = 0;
  *(self + 29) = -1;
  *(self + 120) = 0;
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 20) = 0;
  *(self + 124) = 0u;
  *(self + 140) = 0u;
  *(self + 46) = 115200;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  return self;
}

@end