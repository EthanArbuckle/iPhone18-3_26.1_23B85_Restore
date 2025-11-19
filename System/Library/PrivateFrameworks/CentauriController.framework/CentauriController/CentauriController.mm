void CentauriController::CentauriController(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 72) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  MEMORY[0x245D32260](a1 + 80);
  *(a1 + 144) = 1018212795;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  operator new();
}

void sub_2433A2964(_Unwind_Exception *a1)
{
  v3 = v2;
  std::condition_variable::~condition_variable(v3);
  std::recursive_mutex::~recursive_mutex((v1 + 80));
  std::__function::__value_func<void ()(int,BOOL)>::~__value_func[abi:ne200100](v1 + 48);
  std::thread::~thread((v1 + 32));
  _Unwind_Resume(a1);
}

void CentauriController::~CentauriController(CentauriController *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::stop(this, a2, a3, a4, a5, a6, a7, a8);
  v9 = *(this + 25);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::condition_variable::~condition_variable(this + 3);
  std::recursive_mutex::~recursive_mutex((this + 80));
  std::__function::__value_func<void ()(int,BOOL)>::~__value_func[abi:ne200100](this + 48);
  std::thread::~thread(this + 4);
}

void CentauriController::stop(CentauriController *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "stop");
  std::recursive_mutex::lock((this + 80));
  v9 = *(this + 52);
  if (v9)
  {
    IOObjectRelease(v9);
    *(this + 52) = 0;
  }

  v10 = *(this + 53);
  if (v10)
  {
    IOObjectRelease(v10);
    *(this + 53) = 0;
  }

  v11 = *(this + 1);
  if (v11)
  {
    v12 = *(this + 2);
    if (v12)
    {
      CFRunLoopRemoveSource(v11, v12, *MEMORY[0x277CBF058]);
      *(this + 2) = 0;
    }
  }

  v13 = *(this + 3);
  if (v13)
  {
    IONotificationPortDestroy(v13);
    *(this + 3) = 0;
  }

  v14 = *(this + 55);
  if (v14)
  {
    IOServiceClose(v14);
    *(this + 55) = 0;
  }

  v15 = *(this + 54);
  if (v15)
  {
    IOObjectRelease(v15);
    *(this + 54) = 0;
  }

  v16 = *(this + 28);
  if (v16)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = v16;
    *(this + 28) = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN18CentauriController4stopEv_block_invoke;
    aBlock[3] = &unk_278DB0A00;
    aBlock[4] = &v23;
    CentauriController::ErrorNotifier::cancel(v16, aBlock);
    _Block_object_dispose(&v23, 8);
  }

  v17 = *(this + 29);
  if (v17)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = v17;
    *(this + 29) = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 0x40000000;
    v21[2] = ___ZN18CentauriController4stopEv_block_invoke_2;
    v21[3] = &unk_278DB0A28;
    v21[4] = &v23;
    CentauriController::CrashlogNotifier::cancel(v17, v21);
    _Block_object_dispose(&v23, 8);
  }

  std::recursive_mutex::unlock((this + 80));
  v18 = *(this + 1);
  if (v18)
  {
    CFRunLoopStop(v18);
    CFRelease(*(this + 1));
    *(this + 1) = 0;
  }

  v20 = *(this + 4);
  v19 = (this + 32);
  if (v20)
  {
    std::thread::join(v19);
  }
}

void sub_2433A2BE8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);
  std::recursive_mutex::unlock((v1 + 80));
  _Unwind_Resume(a1);
}

void CentauriController::setLogSink(const void *a1)
{
  if (getLogMutex(void)::once != -1)
  {
    CentauriController::setLogSink();
  }

  v2 = getLogMutex(void)::mutex;
  std::mutex::lock(getLogMutex(void)::mutex);
  if (CentauriController::sLogSink)
  {
    _Block_release(CentauriController::sLogSink);
    CentauriController::sLogSink = 0;
  }

  CentauriController::sLogSink = _Block_copy(a1);

  std::mutex::unlock(v2);
}

void CentauriController::log(unsigned int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v17 = *MEMORY[0x277D85DE8];
  if (getLogMutex(void)::once != -1)
  {
    CentauriController::setLogSink();
  }

  v11 = getLogMutex(void)::mutex;
  std::mutex::lock(getLogMutex(void)::mutex);
  vsnprintf(CentauriController::log(CentauriControllerLogLevel,char const*,...)::buffer, 0x1000uLL, a2, &a9);
  if (CentauriController::sLogSink)
  {
    (*(CentauriController::sLogSink + 16))();
  }

  else if (a1 <= 3)
  {
    if (getLogHandle(void)::onceToken != -1)
    {
      CentauriController::log();
    }

    if (getLogHandle(void)::logHandle)
    {
      v12 = getLogHandle(void)::logHandle;
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    v13 = 0x210u >> (8 * a1);
    if (os_log_type_enabled(v12, (v13 & 0xFE)))
    {
      *buf = 136315138;
      v16 = CentauriController::log(CentauriControllerLogLevel,char const*,...)::buffer;
      _os_log_impl(&dword_2433A2000, v12, v13, "%s", buf, 0xCu);
    }
  }

  std::mutex::unlock(v11);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t CentauriController::setChipPower(CentauriController *this)
{
  v1 = this;
  connect = 0;
  v2 = IOServiceNameMatching("AppleCentauriManager");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v2);
  v11 = MatchingService;
  if (MatchingService)
  {
    v12 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
    if (v12)
    {
      CentauriController::setChipPower(v12, v13, v14, v15, v16, v17, v18, v19);
      v20 = 3758097101;
    }

    else
    {
      v20 = IOConnectCallScalarMethod(connect, v1, 0, 0, 0, 0);
    }
  }

  else
  {
    v20 = 3758097088;
    CentauriController::setChipPower(MatchingService, v4, v5, v6, v7, v8, v9, v10);
  }

  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v11)
  {
    IOObjectRelease(v11);
  }

  return v20;
}

unint64_t CentauriController::getChipPower(CentauriController *this)
{
  v1 = IOServiceNameMatching("AppleCentauriManager");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v1);
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "ChipPowerState", 0x8000100u);
  v12 = v4;
  if (!MatchingService)
  {
    CentauriController::getChipPower(v4, v5, v6, v7, v8, v9, v10, v11);
    v32 = 0;
    v31 = 3758097088;
    if (!v12)
    {
      return v32 | v31;
    }

    goto LABEL_8;
  }

  if (v4)
  {
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, v4, v3, 0);
    if (CFProperty)
    {
      v21 = CFProperty;
      v22 = CFGetTypeID(CFProperty);
      TypeID = CFBooleanGetTypeID();
      if (v22 == TypeID)
      {
        v31 = 0;
        v32 = (CFBooleanGetValue(v21) != 0) << 32;
      }

      else
      {
        CentauriController::getChipPower(TypeID, v24, v25, v26, v27, v28, v29, v30);
        v32 = 0;
        v31 = 3758097102;
      }

      CFRelease(v21);
    }

    else
    {
      CentauriController::getChipPower(0, v14, v15, v16, v17, v18, v19, v20);
      v32 = 0;
      v31 = 3758097136;
    }
  }

  else
  {
    v31 = 3758097085;
    CentauriController::getChipPower(0, v5, v6, v7, v8, v9, v10, v11);
    v32 = 0;
  }

  IOObjectRelease(MatchingService);
  if (v12)
  {
LABEL_8:
    CFRelease(v12);
  }

  return v32 | v31;
}

uint64_t CentauriController::sendBootTimestamps(CentauriController *this, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  connect = 0;
  CentauriController::log(3u, "CentauriController::%s: type: %s\n", a3, a4, a5, a6, a7, a8, "sendBootTimestamps");
  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    if (v8)
    {
      v19 = "FirmwareBootTimestamps";
    }

    else
    {
      v19 = "BootTimestamps";
    }

    v27 = CFStringCreateWithCString(v10, v19, 0x8000100u);
    if (v27)
    {
      CFDictionarySetValue(Mutable, v27, this);
      v28 = *MEMORY[0x277CD2898];
      v29 = IOServiceMatching("AppleCentauriManager");
      MatchingService = IOServiceGetMatchingService(v28, v29);
      v38 = MatchingService;
      if (MatchingService)
      {
        v39 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
        if (v39)
        {
          CentauriController::sendBootTimestamps(v39, v40, v41, v42, v43, v44, v45, v46);
          v53 = 3758097101;
        }

        else
        {
          v53 = IOConnectSetCFProperties(connect, Mutable);
          if (v53)
          {
            CentauriController::log(0, "CentauriController::%s: failed to set properties: 0x%08x\n", v47, v48, v49, v50, v51, v52, "sendBootTimestamps");
          }
        }
      }

      else
      {
        CentauriController::sendBootTimestamps(MatchingService, v31, v32, v33, v34, v35, v36, v37);
        v53 = 3758097088;
      }
    }

    else
    {
      CentauriController::sendBootTimestamps(0, v20, v21, v22, v23, v24, v25, v26);
      v38 = 0;
      v53 = 3758097085;
    }
  }

  else
  {
    v53 = 3758097084;
    CentauriController::sendBootTimestamps(0, v11, v12, v13, v14, v15, v16, v17);
    v38 = 0;
    v27 = 0;
  }

  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v38)
  {
    IOObjectRelease(v38);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v53;
}

uint64_t CentauriController::getBootTimestamps(CentauriController *this, const __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "getBootTimestamps");
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "BootTimestamps", 0x8000100u);
  if (v10)
  {
    v18 = v10;
    v19 = *MEMORY[0x277CD2898];
    v20 = IOServiceMatching("AppleCentauriManager");
    MatchingService = IOServiceGetMatchingService(v19, v20);
    if (MatchingService)
    {
      v29 = MatchingService;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, v18, v9, 0);
      if (CFProperty)
      {
        v38 = CFProperty;
        v39 = CFGetTypeID(CFProperty);
        if (v39 == CFDictionaryGetTypeID())
        {
          v47 = 0;
          *this = v38;
        }

        else
        {
          CentauriController::getBootTimestamps(v38, v40, v41, v42, v43, v44, v45, v46);
          v47 = 3758096385;
        }
      }

      else
      {
        CentauriController::getBootTimestamps(0, v31, v32, v33, v34, v35, v36, v37);
        v47 = 3758097136;
      }

      IOObjectRelease(v29);
    }

    else
    {
      CentauriController::getBootTimestamps(MatchingService, v22, v23, v24, v25, v26, v27, v28);
      v47 = 3758097088;
    }

    CFRelease(v18);
  }

  else
  {
    v47 = 3758097085;
    CentauriController::getBootTimestamps(0, v11, v12, v13, v14, v15, v16, v17);
  }

  return v47;
}

uint64_t CentauriController::setHardwareHealth(CentauriController *this)
{
  v1 = this;
  connect = 0;
  input = 0;
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("AppleCentauriManager");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v12 = MatchingService;
  if (MatchingService)
  {
    if (IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect))
    {
      v20 = 1;
    }

    else
    {
      v20 = connect == 0;
    }

    if (v20)
    {
      CentauriController::setHardwareHealth(connect, v13, v14, v15, v16, v17, v18, v19);
      v27 = 3758097101;
    }

    else
    {
      input = v1;
      v27 = IOConnectCallScalarMethod(connect, 6u, &input, 1u, 0, 0);
      if (v27)
      {
        CentauriController::log(0, "CentauriController::%s: failed: 0x%08x", v21, v22, v23, v24, v25, v26, "setHardwareHealth");
      }
    }
  }

  else
  {
    v27 = 3758097088;
    CentauriController::setHardwareHealth(MatchingService, v5, v6, v7, v8, v9, v10, v11);
  }

  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v12)
  {
    IOObjectRelease(v12);
  }

  return v27;
}

uint64_t CentauriController::servicePublishNotification(CentauriController *this, io_iterator_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v124 = *MEMORY[0x277D85DE8];
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "servicePublishNotification");
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  *__s1 = 0u;
  v117 = 0u;
  v115 = 0;
  std::recursive_mutex::lock((this + 80));
  if (*(this + 52))
  {
    v10 = MEMORY[0x277D85F48];
    allocator = *MEMORY[0x277CBECE8];
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v11 = IOIteratorNext(a2);
            v12 = v11;
            if (!v11)
            {
              goto LABEL_42;
            }

            if (MEMORY[0x245D32090](v11, __s1))
            {
              CentauriController::log(0, "CentauriController::%s: failed to get service name: 0x%x\n", v13, v14, v15, v16, v17, v18, "servicePublishNotification");
              goto LABEL_6;
            }

            if (strcmp(__s1, (&off_278DB0AA8)[*this]))
            {
              goto LABEL_6;
            }

            if (*(this + 55))
            {
              CentauriController::log(0, "CentauriController::%s: service publish before terminate\n", v19, v20, v21, v22, v23, v24, "servicePublishNotification");
              IOServiceClose(*(this + 55));
              *(this + 55) = 0;
              IOObjectRelease(*(this + 54));
              *(this + 54) = 0;
              v32 = *(this + 28);
              if (v32)
              {
                v113 = 0;
                *parent = xmmword_2433A9B90;
                CentauriController::ErrorNotifier::unbind(v32, v25, v26, v27, v28, v29, v30, v31);
                CentauriController::ErrorNotifier::invoke(*(this + 28), 0, parent, 3, v33, v34, v35, v36);
              }
            }

            v44 = IOServiceOpen(v12, *v10, 0, this + 55);
            if (v44)
            {
              CentauriController::log(0, "CentauriController::%s: failed to open service: 0x%x\n", v38, v39, v40, v41, v42, v43, "servicePublishNotification");
              v49 = *(this + 28);
              if (v49)
              {
                v113 = 0;
                *parent = xmmword_2433A9B60;
                CentauriController::ErrorNotifier::invoke(v49, v44, parent, 3, v45, v46, v47, v48);
              }

              goto LABEL_6;
            }

            v56 = CentauriController::registerWithService(this, v37, v38, v39, v40, v41, v42, v43);
            if (!v56)
            {
              break;
            }

            CentauriController::log(0, "CentauriController::%s: failed to register with service: 0x%x\n", v50, v51, v52, v53, v54, v55, "servicePublishNotification");
            v61 = *(this + 28);
            if (v61)
            {
              v113 = 0;
              *parent = xmmword_2433A9B78;
              CentauriController::ErrorNotifier::invoke(v61, v56, parent, 3, v57, v58, v59, v60);
            }

LABEL_6:
            IOObjectRelease(v12);
          }

          *(this + 54) = v12;
          v62 = *(this + 28);
          if (v62)
          {
            v63 = CentauriController::ErrorNotifier::bindErrorNotifierToController(v62, this, v50, v51, v52, v53, v54, v55);
            if (v63)
            {
              CentauriController::log(0, "CentauriController::%s: failed to re-initialize error handler 0x%08x\n", v50, v51, v52, v53, v54, v55, "servicePublishNotification");
              v113 = 0;
              *parent = xmmword_2433A9B78;
              CentauriController::ErrorNotifier::invoke(*(this + 28), v63, parent, 3, v64, v65, v66, v67);
            }
          }

          v68 = *(this + 29);
          if (v68)
          {
            v75 = CentauriController::CrashlogNotifier::bindCrashlogNotifierToController(v68, this, v50, v51, v52, v53, v54, v55);
            if (v75)
            {
              CentauriController::log(0, "CentauriController::%s: failed to re-initialize crashlog handler 0x%08x\n", v69, v70, v71, v72, v73, v74, "servicePublishNotification");
              v113 = 0;
              *parent = xmmword_2433A9B78;
              CentauriController::ErrorNotifier::invoke(*(this + 28), v75, parent, 3, v76, v77, v78, v79);
            }
          }

          v80 = *(this + 11);
          if (v80 != 2)
          {
            break;
          }

LABEL_25:
          std::function<void ()(int,BOOL)>::operator()(this + 48, 0, 1);
        }

        if (v80 == 1)
        {
          break;
        }

        v81 = *(this + 24);
        std::mutex::lock(v81);
        std::mutex::unlock(v81);
        std::condition_variable::notify_all(this + 3);
      }

      if (*this)
      {
        goto LABEL_25;
      }

      parent[0] = 0;
      if (IORegistryEntryGetParentEntry(*(this + 54), "IOService", parent))
      {
        CentauriController::log(0, "CentauriController::%s: failed to get parent service: 0x%x\n", v82, v83, v84, v85, v86, v87, "servicePublishNotification");
      }

      else
      {
        CFProperty = IORegistryEntryCreateCFProperty(parent[0], @"device-id", allocator, 0);
        v95 = CFProperty;
        if (CFProperty && (v96 = CFGetTypeID(CFProperty), v96 == CFDataGetTypeID()))
        {
          if (CFDataGetLength(v95) == 4)
          {
            if (*CFDataGetBytePtr(v95) == 6400)
            {
              std::function<void ()(int,BOOL)>::operator()(this + 48, 0, 1);
            }

            else
            {
              CentauriController::log(0, "CentauriController::%s: match with incorrect device ID 0x%08x\n", v103, v104, v105, v106, v107, v108, "servicePublishNotification");
            }
          }

          else
          {
            CentauriController::log(0, "CentauriController::%s: invalid device ID property data width\n", v97, v98, v99, v100, v101, v102, "servicePublishNotification");
          }
        }

        else
        {
          CentauriController::log(0, "CentauriController::%s: invalid pci device ID property\n", v89, v90, v91, v92, v93, v94, "servicePublishNotification");
          if (!v95)
          {
            goto LABEL_35;
          }
        }

        CFRelease(v95);
      }

LABEL_35:
      if (parent[0])
      {
        IOObjectRelease(parent[0]);
      }
    }
  }

LABEL_42:
  std::recursive_mutex::unlock((this + 80));
  result = std::__function::__value_func<void ()(int,BOOL)>::~__value_func[abi:ne200100](v114);
  v110 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2433A391C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriController::ErrorNotifier::unbind(CentauriController::ErrorNotifier *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "unbind");
  result = *(this + 23);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 23) = 0;
  }

  *(this + 10) = 0;
  return result;
}

void CentauriController::ErrorNotifier::invoke(CentauriController::ErrorNotifier *this, int a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    if (a4 == 3)
    {
      v10 = *a3;
      v9 = a3[1];
      v11 = a3[2];
      v12 = *(this + 10);
      CentauriController::log(3u, "CentauriController::%s: result 0x%08x, source %u, code %u, arg %llu, uid 0x%llx\n", a3, a4, a5, a6, a7, a8, "invoke");
      std::recursive_mutex::lock((this + 16));
      if (*(this + 88) == 1)
      {
        CentauriController::log(2u, "CentauriController::%s: cancelled\n", v13, v14, v15, v16, v17, v18, "invoke");
      }

      else
      {
        v19 = *this;
        if (*this)
        {
          v20 = *MEMORY[0x277CBF058];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___ZN18CentauriController13ErrorNotifier6invokeEiPPvj_block_invoke;
          block[3] = &__block_descriptor_tmp;
          v26 = v10;
          v27 = v9;
          block[4] = this;
          block[5] = v11;
          block[6] = v12;
          CFRunLoopPerformBlock(v19, v20, block);
          CFRunLoopWakeUp(*this);
        }

        else
        {
          v21 = *(this + 1);
          if (v21)
          {
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 0x40000000;
            v22[2] = ___ZN18CentauriController13ErrorNotifier6invokeEiPPvj_block_invoke_2;
            v22[3] = &__block_descriptor_tmp_60;
            v23 = v10;
            v24 = v9;
            v22[4] = this;
            v22[5] = v11;
            v22[6] = v12;
            dispatch_async(v21, v22);
          }
        }
      }

      std::recursive_mutex::unlock((this + 16));
    }

    else
    {
      CentauriController::log(0, "CentauriController::%s: invalid number of args: %u\n", a3, a4, a5, a6, a7, a8, "invoke");
    }
  }

  else
  {
    CentauriController::log(0, "CentauriController::%s: no args\n", 0, a4, a5, a6, a7, a8, "invoke");
  }
}

uint64_t CentauriController::registerWithService(CentauriController *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "registerWithService");
  std::recursive_mutex::lock((this + 80));
  v9 = getprogname();
  v16 = *(this + 55);
  if (v16)
  {
    v17 = v9;
    v18 = strlen(v9);
    v25 = IOConnectCallStructMethod(v16, 5u, v17, v18 + 1, 0, 0);
    if (v25)
    {
      CentauriController::log(0, "CentauriController::%s: failed to open 0x%08x\n", v19, v20, v21, v22, v23, v24, "registerWithService");
    }
  }

  else
  {
    CentauriController::log(0, "CentauriController::%s: no driver\n", v10, v11, v12, v13, v14, v15, "registerWithService");
    v25 = 3758097088;
  }

  std::recursive_mutex::unlock((this + 80));
  return v25;
}

uint64_t CentauriController::ErrorNotifier::bindErrorNotifierToController(CentauriController::ErrorNotifier *this, CentauriController *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x277D85DE8];
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "bindErrorNotifierToController");
  v57 = 0u;
  v58 = 0u;
  *reference = 0u;
  v56 = 0u;
  std::recursive_mutex::lock((this + 16));
  if (*(this + 88))
  {
    v45 = "CentauriController::%s: cancelled\n";
LABEL_13:
    CentauriController::log(0, v45, v10, v11, v12, v13, v14, v15, "bindErrorNotifierToController");
    v36 = 3758097112;
    goto LABEL_17;
  }

  if (!a2)
  {
    CentauriController::log(0, "CentauriController::%s: no controller\n", v10, v11, v12, v13, v14, v15, "bindErrorNotifierToController");
    v36 = 3758097090;
LABEL_17:
    CentauriController::ErrorNotifier::unbind(this, v46, v47, v48, v49, v50, v51, v52);
    goto LABEL_9;
  }

  if (!*(a2 + 55))
  {
    v45 = "CentauriController::%s: no driver\n";
    goto LABEL_13;
  }

  MachPort = IONotificationPortGetMachPort(*(a2 + 3));
  if (!MachPort)
  {
    CentauriController::log(0, "CentauriController::%s: no mach port\n", v16, v17, v18, v19, v20, v21, "bindErrorNotifierToController");
    v36 = 3758096385;
    goto LABEL_17;
  }

  std::to_string(&v53, *(a2 + 54));
  *(this + 10) = std::__string_hash<char>::operator()[abi:ne200100](&v54, &v53);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
    v29 = *(this + 10);
  }

  CentauriController::log(3u, "CentauriController::%s: uid 0x%llx\n", v23, v24, v25, v26, v27, v28, "bindErrorNotifierToController");
  reference[1] = CentauriController::ErrorNotifier::bindErrorNotifierToController(CentauriController*)::$_0::__invoke;
  *&v56 = this;
  v36 = IOConnectCallAsyncMethod(*(a2 + 55), 3u, MachPort, reference, 3u, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v36)
  {
    CentauriController::log(0, "CentauriController::%s: set error handler call failed 0x%08x\n", v30, v31, v32, v33, v34, v35, "bindErrorNotifierToController");
    goto LABEL_17;
  }

  v36 = IOServiceAddInterestNotification(*(a2 + 3), *(a2 + 54), "IOGeneralInterest", CentauriController::ErrorNotifier::bindErrorNotifierToController(CentauriController*)::$_1::__invoke, this, this + 23);
  if (v36)
  {
    CentauriController::log(0, "CentauriController::%s: failed to register for interest notifications 0x%08x\n", v37, v38, v39, v40, v41, v42, "bindErrorNotifierToController");
    goto LABEL_17;
  }

LABEL_9:
  std::recursive_mutex::unlock((this + 16));
  v43 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t CentauriController::CrashlogNotifier::bindCrashlogNotifierToController(CentauriController::CrashlogNotifier *this, CentauriController *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x277D85DE8];
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "bindCrashlogNotifierToController");
  v35 = 0u;
  v36 = 0u;
  *reference = 0u;
  v34 = 0u;
  std::recursive_mutex::lock((this + 8));
  if (*(this + 72))
  {
    v31 = "CentauriController::%s: cancelled\n";
    v32 = 2;
LABEL_11:
    CentauriController::log(v32, v31, v10, v11, v12, v13, v14, v15, "bindCrashlogNotifierToController");
    v28 = 3758097112;
    goto LABEL_7;
  }

  if (!a2)
  {
    CentauriController::log(0, "CentauriController::%s: no controller\n", v10, v11, v12, v13, v14, v15, "bindCrashlogNotifierToController");
    v28 = 3758097090;
    goto LABEL_7;
  }

  if (!*(a2 + 55))
  {
    v32 = 0;
    v31 = "CentauriController::%s: no driver\n";
    goto LABEL_11;
  }

  MachPort = IONotificationPortGetMachPort(*(a2 + 3));
  if (MachPort)
  {
    reference[1] = CentauriController::CrashlogNotifier::bindCrashlogNotifierToController(CentauriController*)::$_0::__invoke;
    *&v34 = this;
    v28 = IOConnectCallAsyncMethod(*(a2 + 55), 0xAu, MachPort, reference, 3u, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v28)
    {
      CentauriController::log(0, "CentauriController::%s: set crashlog handler call failed 0x%08x\n", v22, v23, v24, v25, v26, v27, "bindCrashlogNotifierToController");
    }
  }

  else
  {
    CentauriController::log(0, "CentauriController::%s: no mach port\n", MachPort, v17, v18, v19, v20, v21, "bindCrashlogNotifierToController");
    v28 = 3758096385;
  }

LABEL_7:
  std::recursive_mutex::unlock((this + 8));
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t std::function<void ()(int,BOOL)>::operator()(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void CentauriController::serviceTerminateNotification(CentauriController *this, io_iterator_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x277D85DE8];
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "serviceTerminateNotification");
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *__s1 = 0u;
  v34 = 0u;
  std::recursive_mutex::lock((this + 80));
  if (*(this + 53))
  {
    while (1)
    {
      v10 = IOIteratorNext(a2);
      v11 = v10;
      if (!v10)
      {
        break;
      }

      if (*(this + 55))
      {
        if (MEMORY[0x245D32090](v10, __s1))
        {
          CentauriController::log(0, "CentauriController::%s: failed to get service name: 0x%x\n", v12, v13, v14, v15, v16, v17, "serviceTerminateNotification");
        }

        else if (!strcmp(__s1, (&off_278DB0AA8)[*this]))
        {
          IOServiceClose(*(this + 55));
          *(this + 55) = 0;
          IOObjectRelease(*(this + 54));
          *(this + 54) = 0;
          v25 = *(this + 28);
          if (v25)
          {
            v32 = 0;
            *v31 = xmmword_2433A9B90;
            CentauriController::ErrorNotifier::unbind(v25, v18, v19, v20, v21, v22, v23, v24);
            CentauriController::ErrorNotifier::invoke(*(this + 28), 0, v31, 3, v26, v27, v28, v29);
          }
        }
      }

      IOObjectRelease(v11);
    }
  }

  std::recursive_mutex::unlock((this + 80));
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t CentauriController::reset(std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69[4] = *MEMORY[0x277D85DE8];
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "reset");
  v67 = 0u;
  v68 = 0u;
  *reference = 0u;
  v66 = 0u;
  v63 = (a1 + 80);
  v64 = 1;
  std::recursive_mutex::lock((a1 + 80));
  if (!*(a1 + 220))
  {
    CentauriController::log(0, "CentauriController::%s: no driver\n", v11, v12, v13, v14, v15, v16, "reset");
    v40 = 3758097088;
    goto LABEL_21;
  }

  if (*a1 == 2)
  {
    ResetHint = CentauriController::getResetHint(a1, v10, v11, v12, v13, v14, v15, v16);
    if (ResetHint)
    {
      v25 = "CentauriController::%s: failed to get reset hint 0x%08x\n";
LABEL_5:
      CentauriController::log(0, v25, v19, v20, v21, v22, v23, v24, "reset");
      goto LABEL_9;
    }

    if ((ResetHint & 0x100000000) == 0)
    {
      if (!CentauriController::setResetHint(a1, v18, v19, v20, v21, v22, v23, v24))
      {
        CentauriController::log(2u, "CentauriController::%s: detected a new driver, skipping reset\n", v19, v20, v21, v22, v23, v24, "reset");
        v40 = 0;
        goto LABEL_22;
      }

      v25 = "CentauriController::%s: failed to set reset hint 0x%08x\n";
      goto LABEL_5;
    }
  }

LABEL_9:
  MachPort = IONotificationPortGetMachPort(*(a1 + 24));
  if (MachPort)
  {
    v33 = (a1 + 40);
    v69[0] = &unk_28561BCC8;
    v69[1] = a1;
    v69[3] = v69;
    std::__function::__value_func<void ()(int,BOOL)>::swap[abi:ne200100](v69, (a1 + 48));
    std::__function::__value_func<void ()(int,BOOL)>::~__value_func[abi:ne200100](v69);
    *(a1 + 44) = 1;
    reference[1] = CentauriController::reset(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_1::__invoke;
    *&v66 = a1 + 40;
    v40 = IOConnectCallAsyncMethod(*(a1 + 220), 2u, MachPort, reference, 3u, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v40)
    {
      CentauriController::log(0, "CentauriController::%s: reset call failed 0x%08x\n", v34, v35, v36, v37, v38, v39, "reset");
    }

    else
    {
      v69[0] = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * a2;
      while ((*(a1 + 44) - 3) > 1)
      {
        if (std::condition_variable_any::wait_until<std::unique_lock<std::recursive_mutex>,std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(a1 + 144, &v63, v69))
        {
          if ((*(a1 + 44) - 3) > 1)
          {
            CentauriController::log(0, "CentauriController::%s: timeout waiting for reset completion or termination\n", v41.__d_.__rep_, v42.__d_.__rep_, v43.__d_.__rep_, v44.__d_.__rep_, v45.__d_.__rep_, v46.__d_.__rep_, "reset");
            v40 = 3758097110;
            goto LABEL_21;
          }

          break;
        }
      }

      inputStructCnt_8 = *v33;
      CentauriController::log(2u, "CentauriController::%s: reset completion ret 0x%08x state %u\n", v41.__d_.__rep_, v42.__d_.__rep_, v43.__d_.__rep_, v44.__d_.__rep_, v45.__d_.__rep_, v46.__d_.__rep_, "reset");
      if (*a1 == 2 && *(a1 + 44) == 4 && CentauriController::setResetHint(a1, v47, v48, v49, v50, v51, v52, v53))
      {
        CentauriController::log(0, "CentauriController::%s: failed to set reset hint 0x%08x\n", v54, v55, v56, v57, v58, v59, "reset");
      }

      v40 = *v33;
    }
  }

  else
  {
    CentauriController::log(0, "CentauriController::%s: no mach port\n", v26, v27, v28, v29, v30, v31, "reset");
    v40 = 3758096385;
  }

LABEL_21:
  *(a1 + 44) = 0;
  std::__function::__value_func<void ()(int,BOOL)>::operator=[abi:ne200100](a1 + 48);
  if (v64)
  {
LABEL_22:
    std::recursive_mutex::unlock(v63);
  }

  v60 = *MEMORY[0x277D85DE8];
  return v40;
}

void sub_2433A4528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::recursive_mutex *a15, char a16)
{
  if (a16 == 1)
  {
    std::recursive_mutex::unlock(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriController::getResetHint(CentauriController *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "getResetHint");
  output = 1;
  outputCnt = 1;
  std::recursive_mutex::lock((this + 80));
  if (*this == 2)
  {
    v15 = *(this + 55);
    if (v15)
    {
      v22 = IOConnectCallScalarMethod(v15, 8u, 0, 0, &output, &outputCnt);
      if (v22)
      {
        CentauriController::log(0, "CentauriController::%s: failed to get reset hint 0x%08x\n", v16, v17, v18, v19, v20, v21, "getResetHint");
      }
    }

    else
    {
      CentauriController::log(0, "CentauriController::%s: no driver\n", v9, v10, v11, v12, v13, v14, "getResetHint");
      v22 = -536870208;
    }
  }

  else
  {
    CentauriController::log(0, "CentauriController::%s: only beta can get reset hint\n", v9, v10, v11, v12, v13, v14, "getResetHint");
    v22 = -536870174;
  }

  v23 = output;
  std::recursive_mutex::unlock((this + 80));
  if (v23)
  {
    v24 = v22 == 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0x100000000;
  if (!v24)
  {
    v25 = 0;
  }

  return v25 | v22;
}

uint64_t CentauriController::setResetHint(CentauriController *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "setResetHint");
  input = 1;
  std::recursive_mutex::lock((this + 80));
  if (*this == 2)
  {
    v15 = *(this + 55);
    if (v15)
    {
      v22 = IOConnectCallScalarMethod(v15, 7u, &input, 1u, 0, 0);
      if (v22)
      {
        CentauriController::log(0, "CentauriController::%s: failed to set reset hint 0x%08x\n", v16, v17, v18, v19, v20, v21, "setResetHint");
      }
    }

    else
    {
      CentauriController::log(0, "CentauriController::%s: no driver\n", v9, v10, v11, v12, v13, v14, "setResetHint");
      v22 = 3758097088;
    }
  }

  else
  {
    CentauriController::log(0, "CentauriController::%s: only beta can set reset hint\n", v9, v10, v11, v12, v13, v14, "setResetHint");
    v22 = 3758097122;
  }

  std::recursive_mutex::unlock((this + 80));
  return v22;
}

uint64_t CentauriController::collectLogs(std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v50[4] = *MEMORY[0x277D85DE8];
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "collectLogs");
  input = v9;
  v47 = 0u;
  v48 = 0u;
  *reference = 0u;
  v46 = 0u;
  v43 = (a1 + 80);
  v44 = 1;
  std::recursive_mutex::lock((a1 + 80));
  if (a2)
  {
    if (*(a1 + 220))
    {
      MachPort = IONotificationPortGetMachPort(*(a1 + 24));
      if (MachPort)
      {
        v25 = (a1 + 40);
        v50[0] = &unk_28561BD58;
        v50[1] = a1;
        v50[3] = v50;
        std::__function::__value_func<void ()(int,BOOL)>::swap[abi:ne200100](v50, (a1 + 48));
        std::__function::__value_func<void ()(int,BOOL)>::~__value_func[abi:ne200100](v50);
        *(a1 + 44) = 2;
        reference[1] = CentauriController::collectLogs(char const*,unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_1::__invoke;
        *&v46 = a1 + 40;
        v26 = strlen(a2);
        v33 = IOConnectCallAsyncMethod(*(a1 + 220), 1u, MachPort, reference, 3u, &input, 1u, a2, v26 + 1, 0, 0, 0, 0);
        if (v33)
        {
          CentauriController::log(0, "CentauriController::%s: collectLogs call failed 0x%08x\n", v27, v28, v29, v30, v31, v32, "collectLogs");
        }

        else
        {
          v50[0] = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * a4;
          do
          {
            if ((*(a1 + 44) - 3) <= 1)
            {
              goto LABEL_9;
            }
          }

          while (!std::condition_variable_any::wait_until<std::unique_lock<std::recursive_mutex>,std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(a1 + 144, &v43, v50));
          if ((*(a1 + 44) - 3) <= 1)
          {
LABEL_9:
            v42 = *v25;
            CentauriController::log(2u, "CentauriController::%s: collect logs completion ret 0x%08x state %u\n", v34.__d_.__rep_, v35.__d_.__rep_, v36.__d_.__rep_, v37.__d_.__rep_, v38.__d_.__rep_, v39.__d_.__rep_, "collectLogs");
            v33 = *v25;
            goto LABEL_11;
          }

          CentauriController::log(0, "CentauriController::%s: timeout waiting for collectLogs completion or termination\n", v34.__d_.__rep_, v35.__d_.__rep_, v36.__d_.__rep_, v37.__d_.__rep_, v38.__d_.__rep_, v39.__d_.__rep_, "collectLogs");
          v33 = 3758097110;
        }
      }

      else
      {
        CentauriController::log(0, "CentauriController::%s: no mach port\n", v18, v19, v20, v21, v22, v23, "collectLogs");
        v33 = 3758096385;
      }
    }

    else
    {
      CentauriController::log(0, "CentauriController::%s: no driver\n", v12, v13, v14, v15, v16, v17, "collectLogs");
      v33 = 3758097088;
    }
  }

  else
  {
    CentauriController::log(0, "CentauriController::%s: no reason\n", v12, v13, v14, v15, v16, v17, "collectLogs");
    v33 = 3758097090;
  }

LABEL_11:
  *(a1 + 44) = 0;
  std::__function::__value_func<void ()(int,BOOL)>::operator=[abi:ne200100](a1 + 48);
  if (v44 == 1)
  {
    std::recursive_mutex::unlock(v43);
  }

  v40 = *MEMORY[0x277D85DE8];
  return v33;
}

void sub_2433A4A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::recursive_mutex *a15, char a16)
{
  if (a16)
  {
    std::recursive_mutex::unlock(a15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t CentauriController::getChipState(CentauriController *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x277D85DE8];
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "getChipState");
  {
    v38 = xmmword_2433A9BE8;
    v39 = unk_2433A9BF8;
    v40 = xmmword_2433A9C08;
    *output = xmmword_2433A9BA8;
    v35 = unk_2433A9BB8;
    v36 = xmmword_2433A9BC8;
    v37 = unk_2433A9BD8;
    std::unordered_map<unsigned long long,CentauriControllerChipState>::unordered_map(CentauriController::getChipState(void)::chipStateMap, output, 7);
    __cxa_atexit(std::unordered_map<unsigned long long,CentauriControllerChipState>::~unordered_map[abi:ne200100], CentauriController::getChipState(void)::chipStateMap, &dword_2433A2000);
  }

  output[0] = -1;
  outputCnt = 1;
  std::recursive_mutex::lock((this + 80));
  if (*this)
  {
    CentauriController::log(0, "CentauriController::%s: only control can get chip state\n", v9, v10, v11, v12, v13, v14, "getChipState");
    v30 = 0;
    v22 = -536870174;
    goto LABEL_9;
  }

  v15 = *(this + 55);
  if (!v15)
  {
    CentauriController::log(0, "CentauriController::%s: no driver\n", v9, v10, v11, v12, v13, v14, "getChipState");
    v30 = 0;
    v22 = -536870208;
    goto LABEL_9;
  }

  v22 = IOConnectCallScalarMethod(v15, 9u, 0, 0, output, &outputCnt);
  if (v22)
  {
    CentauriController::log(0, "CentauriController::%s: failed to get chip state 0x%08x\n", v16, v17, v18, v19, v20, v21, "getChipState");
    v30 = 0;
    goto LABEL_9;
  }

  if (outputCnt != 1)
  {
    CentauriController::log(0, "CentauriController::%s: chip state has invalid length %u\n", v16, v17, v18, v19, v20, v21, "getChipState");
LABEL_15:
    v30 = 0;
    v22 = -536870911;
    goto LABEL_9;
  }

  if (!std::__hash_table<std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CentauriControllerChipState>>>::find<unsigned long long>(CentauriController::getChipState(void)::chipStateMap, output))
  {
    CentauriController::log(0, "CentauriController::%s: invalid chip state %llu\n", v23, v24, v25, v26, v27, v28, "getChipState");
    goto LABEL_15;
  }

  v29 = std::__hash_table<std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CentauriControllerChipState>>>::find<unsigned long long>(CentauriController::getChipState(void)::chipStateMap, output);
  if (!v29)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v22 = 0;
  v30 = *(v29 + 6) << 32;
LABEL_9:
  std::recursive_mutex::unlock((this + 80));
  v31 = *MEMORY[0x277D85DE8];
  return v30 | v22;
}

uint64_t CentauriController::ErrorNotifier::ErrorNotifier(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  MEMORY[0x245D32260](a1 + 16);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 8);
  if (*a1)
  {
    if (v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "multiple thread contexts");
      goto LABEL_15;
    }
  }

  else if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "no thread context");
LABEL_15:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278DB0918, MEMORY[0x277D82610]);
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "no block");
    goto LABEL_15;
  }

  v9 = _Block_copy(a4);
  *(a1 + 96) = v9;
  if (!v9)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D321B0](v11, "failed to copy block");
    __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_2433A4E28(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::recursive_mutex::~recursive_mutex((v1 + 16));
  _Unwind_Resume(a1);
}

void CentauriController::ErrorNotifier::~ErrorNotifier(CentauriController::ErrorNotifier *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    _Block_release(v2);
    *(this + 12) = 0;
  }

  if (*this)
  {
    CFRelease(*this);
    *this = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    dispatch_release(v3);
    *(this + 1) = 0;
  }

  *(this + 10) = 0;
  std::recursive_mutex::~recursive_mutex((this + 16));
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

uint64_t ___ZN18CentauriController13ErrorNotifier6invokeEiPPvj_block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 96);
  if (v1)
  {
    return (*(v1 + 16))(*(*(result + 32) + 96), *(result + 56), *(result + 60), *(result + 40), *(result + 48));
  }

  return result;
}

uint64_t ___ZN18CentauriController13ErrorNotifier6invokeEiPPvj_block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 96);
  if (v1)
  {
    return (*(v1 + 16))(*(*(result + 32) + 96), *(result + 56), *(result + 60), *(result + 40), *(result + 48));
  }

  return result;
}

void CentauriController::ErrorNotifier::cancel(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  if (!v3)
  {
    CentauriController::ErrorNotifier::cancel();
  }

  v4 = v3;
  std::recursive_mutex::lock((a1 + 16));
  *(a1 + 88) = 1;
  CentauriController::ErrorNotifier::unbind(a1, v5, v6, v7, v8, v9, v10, v11);
  std::recursive_mutex::unlock((a1 + 16));
  v12 = *a1;
  if (*a1)
  {
    v13 = *MEMORY[0x277CBF058];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN18CentauriController13ErrorNotifier6cancelEU13block_pointerFvvE_block_invoke;
    block[3] = &unk_278DB0968;
    block[4] = v4;
    CFRunLoopPerformBlock(v12, v13, block);
    CFRunLoopWakeUp(*a1);
  }

  else
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = ___ZN18CentauriController13ErrorNotifier6cancelEU13block_pointerFvvE_block_invoke_2;
      v15[3] = &unk_278DB0990;
      v15[4] = v4;
      dispatch_async(v14, v15);
    }

    else
    {
      v4[2](v4);

      _Block_release(v4);
    }
  }
}

void ___ZN18CentauriController13ErrorNotifier6cancelEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

void ___ZN18CentauriController13ErrorNotifier6cancelEU13block_pointerFvvE_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

uint64_t CentauriController::registerErrorHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "registerErrorHandler");
  std::recursive_mutex::lock((a1 + 80));
  if (!*(a1 + 224))
  {
    operator new();
  }

  CentauriController::log(0, "CentauriController::%s: already registered error handler\n", v9, v10, v11, v12, v13, v14, "registerErrorHandler");
  std::recursive_mutex::unlock((a1 + 80));
  return 3758097122;
}

uint64_t CentauriController::getCurrentDriverUID(CentauriController *this, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "getCurrentDriverUID");
  v18 = *(this + 28);
  if (v18)
  {
    result = 0;
    *a2 = *(v18 + 80);
  }

  else
  {
    CentauriController::getCurrentDriverUID(v10, v11, v12, v13, v14, v15, v16, v17);
    return 3758097112;
  }

  return result;
}

uint64_t CentauriController::CrashlogNotifier::CrashlogNotifier(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  MEMORY[0x245D32260](a1 + 8);
  *(a1 + 72) = 0;
  if (!*a1 || (dispatch_retain(*a1), !*a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "no thread context");
    goto LABEL_8;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "no block");
LABEL_8:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278DB0918, MEMORY[0x277D82610]);
  }

  v5 = _Block_copy(a3);
  *(a1 + 80) = v5;
  if (!v5)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D321B0](v8, "failed to copy block");
    __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_2433A547C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::recursive_mutex::~recursive_mutex((v1 + 8));
  _Unwind_Resume(a1);
}

void CentauriController::CrashlogNotifier::~CrashlogNotifier(CentauriController::CrashlogNotifier *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    _Block_release(v2);
    *(this + 10) = 0;
  }

  if (*this)
  {
    dispatch_release(*this);
    *this = 0;
  }

  std::recursive_mutex::~recursive_mutex((this + 8));
}

void CentauriController::CrashlogNotifier::cancel(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  if (!v3)
  {
    CentauriController::CrashlogNotifier::cancel();
  }

  v4 = v3;
  std::recursive_mutex::lock((a1 + 8));
  *(a1 + 72) = 1;
  v5 = *a1;
  if (*a1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN18CentauriController16CrashlogNotifier6cancelEU13block_pointerFvvE_block_invoke;
    block[3] = &unk_278DB09B8;
    block[4] = v4;
    dispatch_async(v5, block);
  }

  else
  {
    v4[2](v4);
    _Block_release(v4);
  }

  std::recursive_mutex::unlock((a1 + 8));
}

void ___ZN18CentauriController16CrashlogNotifier6cancelEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

uint64_t CentauriController::registerCrashlogHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "registerCrashlogHandler");
  std::recursive_mutex::lock((a1 + 80));
  if (*a1)
  {
    CentauriController::log(0, "CentauriController::%s: only control can register a crashlog handler\n", v9, v10, v11, v12, v13, v14, "registerCrashlogHandler");
    v15 = 3758097122;
  }

  else
  {
    if (!*(a1 + 232))
    {
      operator new();
    }

    CentauriController::log(0, "CentauriController::%s: already registered crashlog handler\n", v9, v10, v11, v12, v13, v14, "registerCrashlogHandler");
    v15 = 3758097109;
  }

  std::recursive_mutex::unlock((a1 + 80));
  return v15;
}

uint64_t CentauriController::allocateSecondaryMemory(CentauriController *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "allocateSecondaryMemory");
  input = a2;
  v24 = (this + 80);
  v25 = 1;
  std::recursive_mutex::lock((this + 80));
  if (!*(this + 54))
  {
    v27 = std::chrono::steady_clock::now().__d_.__rep_ + 1000000000;
    while (!*(this + 54))
    {
      if (std::condition_variable_any::wait_until<std::unique_lock<std::recursive_mutex>,std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(this + 144, &v24, &v27))
      {
        if (*(this + 54))
        {
          break;
        }

        CentauriController::log(0, "CentauriController::%s: timed out waiting for driver\n", v10, v11, v12, v13, v14, v15, "allocateSecondaryMemory");
        v22 = 3758097110;
        goto LABEL_9;
      }
    }
  }

  if (*this)
  {
    CentauriController::log(0, "CentauriController::%s: only control can allocate secondary memory\n", v10, v11, v12, v13, v14, v15, "allocateSecondaryMemory");
    v22 = 3758097122;
  }

  else
  {
    v22 = IOConnectCallScalarMethod(*(this + 55), 7u, &input, 1u, 0, 0);
    if (v22)
    {
      CentauriController::log(0, "CentauriController::%s: failed to allocate secondary memory 0x%08x\n", v16, v17, v18, v19, v20, v21, "allocateSecondaryMemory");
    }
  }

LABEL_9:
  if (v25 == 1)
  {
    std::recursive_mutex::unlock(v24);
  }

  return v22;
}

void sub_2433A5948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::recursive_mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::recursive_mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

void CentauriController::mapSecondaryMemory(CentauriController *this@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a2, a3, a4, a5, a6, a7, "mapSecondaryMemory");
  v26 = 0;
  v27 = 0;
  std::recursive_mutex::lock((this + 80));
  if (*this)
  {
    CentauriController::log(0, "CentauriController::%s: only control can map secondary memory\n", v10, v11, v12, v13, v14, v15, "mapSecondaryMemory");
    v23 = -536870174;
  }

  else
  {
    v16 = *(this + 55);
    if (v16)
    {
      v23 = MEMORY[0x245D31FF0](v16, 1, *MEMORY[0x277D85F48], &v27, &v26, 1);
      if (v23)
      {
        CentauriController::log(0, "CentauriController::%s: failed to map secondary memory 0x%08x\n", v17, v18, v19, v20, v21, v22, "mapSecondaryMemory");
      }

      else if (v27 && v26)
      {
        v23 = 0;
      }

      else
      {
        CentauriController::log(0, "CentauriController::%s: invalid secondary memory mapping: address %p, size %llu\n", v17, v18, v19, v20, v21, v22, "mapSecondaryMemory");
        v23 = -536870911;
      }
    }

    else
    {
      CentauriController::log(0, "CentauriController::%s: no driver\n", v10, v11, v12, v13, v14, v15, "mapSecondaryMemory");
      v23 = -536870208;
    }
  }

  v24 = v27;
  if (v23)
  {
    v24 = 0;
  }

  v25 = v26;
  if (v23)
  {
    v25 = 0;
  }

  *a8 = v23;
  *(a8 + 8) = v24;
  *(a8 + 16) = v25;
  std::recursive_mutex::unlock((this + 80));
}

uint64_t CentauriController::unmapSecondaryMemory(CentauriController *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "unmapSecondaryMemory");
  std::recursive_mutex::lock((this + 80));
  if (*this)
  {
    CentauriController::log(0, "CentauriController::%s: only control can unmap secondary memory\n", v10, v11, v12, v13, v14, v15, "unmapSecondaryMemory");
    v23 = 3758097122;
  }

  else
  {
    v16 = *(this + 55);
    if (v16)
    {
      v23 = MEMORY[0x245D32010](v16, 1, *MEMORY[0x277D85F48], a2);
      if (v23)
      {
        CentauriController::log(0, "CentauriController::%s: failed to unmap secondary memory 0x%08x\n", v17, v18, v19, v20, v21, v22, "unmapSecondaryMemory");
      }
    }

    else
    {
      CentauriController::log(0, "CentauriController::%s: no driver\n", v10, v11, v12, v13, v14, v15, "unmapSecondaryMemory");
      v23 = 3758097088;
    }
  }

  std::recursive_mutex::unlock((this + 80));
  return v23;
}

uint64_t CentauriController::setMemSwapRegions(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "setMemSwapRegions");
  std::recursive_mutex::lock((a1 + 80));
  if (*a1)
  {
    CentauriController::log(0, "CentauriController::%s: only control can set mem swap regions\n", v10, v11, v12, v13, v14, v15, "setMemSwapRegions");
    v23 = 3758097122;
  }

  else
  {
    v16 = *(a1 + 220);
    if (v16)
    {
      v23 = IOConnectCallStructMethod(v16, 8u, a2, 0x30uLL, 0, 0);
      if (v23)
      {
        CentauriController::log(0, "CentauriController::%s: failed to set mem swap regions 0x%08x\n", v17, v18, v19, v20, v21, v22, "setMemSwapRegions");
      }
    }

    else
    {
      CentauriController::log(0, "CentauriController::%s: no driver\n", v10, v11, v12, v13, v14, v15, "setMemSwapRegions");
      v23 = 3758097088;
    }
  }

  std::recursive_mutex::unlock((a1 + 80));
  return v23;
}

uint64_t CentauriController::getCrashlogs(CentauriController *this, const __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(3u, "CentauriController::%s: \n", a3, a4, a5, a6, a7, a8, "getCrashlogs");
  outputStruct = 0;
  errorString = 0;
  outputStructCnt = -3;
  std::recursive_mutex::lock((this + 80));
  v16 = *(this + 55);
  if (!v16)
  {
    CentauriController::log(0, "CentauriController::%s: no driver\n", v10, v11, v12, v13, v14, v15, "getCrashlogs");
    v23 = 3758097088;
    goto LABEL_13;
  }

  v23 = IOConnectCallStructMethod(v16, 4u, 0, 0, &outputStruct, &outputStructCnt);
  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = outputStruct == 0;
  }

  if (v24 || outputStructCnt == 0)
  {
    CentauriController::log(0, "CentauriController::%s: failed to get crashlogs 0x%08x\n", v17, v18, v19, v20, v21, v22, "getCrashlogs");
    goto LABEL_13;
  }

  v32 = IOCFUnserializeBinary(outputStruct, outputStructCnt, *MEMORY[0x277CBECE8], 0, &errorString);
  if (!errorString)
  {
    if (!v32)
    {
      CentauriController::log(0, "CentauriController::%s: unserialized data not found\n", v26, v27, v28, v29, v30, v31, "getCrashlogs");
      v23 = 3758097136;
      goto LABEL_13;
    }

    v33 = CFGetTypeID(v32);
    if (v33 == CFArrayGetTypeID())
    {
      *a2 = v32;
      CFArrayGetCount(v32);
      CentauriController::log(2u, "CentauriController::%s: Got %u crashlogs\n", v40, v41, v42, v43, v44, v45, "getCrashlogs");
      v23 = 0;
      goto LABEL_13;
    }

    CentauriController::log(0, "CentauriController::%s: unserialize data is not an array\n", v34, v35, v36, v37, v38, v39, "getCrashlogs");
    v23 = 3758097102;
    goto LABEL_24;
  }

  CFStringGetCStringPtr(errorString, 0x8000100u);
  CentauriController::log(0, "CentauriController::%s: unserialize failed with error %s\n", v47, v48, v49, v50, v51, v52, "getCrashlogs");
  v23 = 3758097097;
  if (v32)
  {
LABEL_24:
    CFRelease(v32);
  }

LABEL_13:
  if (errorString)
  {
    CFRelease(errorString);
    errorString = 0;
  }

  if (outputStruct)
  {
    mach_vm_deallocate(*MEMORY[0x277D85F48], outputStruct, outputStructCnt);
    outputStruct = 0;
  }

  std::recursive_mutex::unlock((this + 80));
  return v23;
}

void sub_2433A6308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::recursive_mutex *a17, char a18, atomic_ullong *a19)
{
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100]((v19 - 56));
  if (a18 == 1)
  {
    std::recursive_mutex::unlock(a17);
  }

  if (a19)
  {
    if (!atomic_fetch_add(a19 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*a19 + 16))(a19);
    }
  }

  std::promise<__CFRunLoop *>::~promise((v19 - 72));
  _Unwind_Resume(a1);
}

uint64_t std::future<__CFRunLoop *>::get(std::__assoc_sub_state **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<__CFRunLoop *>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
  }

  return v3;
}

void sub_2433A6434(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<__CFRunLoop *>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN18CentauriController5startENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000EEEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  CentauriController::servicePublishNotification(v8, v8[52], a3, a4, a5, a6, a7, a8);
  v15 = v8[53];

  CentauriController::serviceTerminateNotification(v8, v15, v9, v10, v11, v12, v13, v14);
}

CentauriController::ErrorNotifier *___ZN18CentauriController4stopEv_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24);
  if (result)
  {
    CentauriController::ErrorNotifier::~ErrorNotifier(result);
    result = MEMORY[0x245D323C0]();
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = 0;
  return result;
}

CentauriController::CrashlogNotifier *___ZN18CentauriController4stopEv_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24);
  if (result)
  {
    CentauriController::CrashlogNotifier::~CrashlogNotifier(result);
    result = MEMORY[0x245D323C0]();
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = 0;
  return result;
}

void std::unique_lock<std::recursive_mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  std::recursive_mutex::unlock(*a1);
  *(a1 + 8) = 0;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__shared_ptr_emplace<std::mutex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28561BC38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D323C0);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

os_log_t ___ZL12getLogHandlev_block_invoke()
{
  result = os_log_create("com.apple.centauricontroller", "default");
  getLogHandle(void)::logHandle = result;
  return result;
}

uint64_t CentauriController::reset(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_1::__invoke(uint64_t result, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (result)
  {
    std::__function::__value_func<void ()(int,BOOL)>::__value_func[abi:ne200100](v4, result + 8);
    if (v5)
    {
      std::function<void ()(int,BOOL)>::operator()(v4, a2, 0);
    }

    result = std::__function::__value_func<void ()(int,BOOL)>::~__value_func[abi:ne200100](v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2433A67A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(int,BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(int,BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t CentauriController::collectLogs(char const*,unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_1::__invoke(uint64_t result, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (result)
  {
    std::__function::__value_func<void ()(int,BOOL)>::__value_func[abi:ne200100](v4, result + 8);
    if (v5)
    {
      std::function<void ()(int,BOOL)>::operator()(v4, a2, 0);
    }

    result = std::__function::__value_func<void ()(int,BOOL)>::~__value_func[abi:ne200100](v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2433A68E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(int,BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CentauriController::ErrorNotifier::bindErrorNotifierToController(CentauriController*)::$_0::__invoke(CentauriController::ErrorNotifier *this, int a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this)
  {
    CentauriController::ErrorNotifier::invoke(this, a2, a3, a4, a5, a6, a7, a8);
  }
}

void CentauriController::ErrorNotifier::bindErrorNotifierToController(CentauriController*)::$_1::__invoke(CentauriController::ErrorNotifier *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[3] = *MEMORY[0x277D85DE8];
  if (a1 && (a3 | 0x20) == 0xE0000230)
  {
    v8 = 3;
    if (a3 == -536870352)
    {
      v8 = 4;
    }

    v10[0] = 1000;
    v10[1] = v8;
    v10[2] = 0;
    CentauriController::ErrorNotifier::invoke(a1, 0, v10, 3, a5, a6, a7, a8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void CentauriController::CrashlogNotifier::bindCrashlogNotifierToController(CentauriController*)::$_0::__invoke(NSObject **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    CentauriController::log(3u, "CentauriController::%s: result 0x%08x\n", a3, a4, a5, a6, a7, a8, "operator()");
    v9 = *a1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZZN18CentauriController16CrashlogNotifier32bindCrashlogNotifierToControllerEPS_ENK3__0clEPviPS3_j_block_invoke;
    block[3] = &__block_descriptor_tmp_116;
    block[4] = a1;
    dispatch_async(v9, block);
  }
}

uint64_t ___ZZN18CentauriController16CrashlogNotifier32bindCrashlogNotifierToControllerEPS_ENK3__0clEPviPS3_j_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

CentauriController *CentauriController::start(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0::__invoke(CentauriController *this, io_iterator_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this)
  {
    return CentauriController::servicePublishNotification(this, a2, a3, a4, a5, a6, a7, a8);
  }

  return this;
}

void CentauriController::start(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_1::__invoke(CentauriController *this, io_iterator_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this)
  {
    CentauriController::serviceTerminateNotification(this, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t std::__function::__value_func<void ()(int,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::__function::__func<CentauriController::reset(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0,std::allocator<CentauriController::reset(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0>,void ()(int,BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28561BCC8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<CentauriController::reset(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0,std::allocator<CentauriController::reset(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0>,void ()(int,BOOL)>::operator()(uint64_t a1, int *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  std::recursive_mutex::lock((v5 + 80));
  CentauriController::log(2u, "CentauriController::%s: reset completion result 0x%08x terminated %u\n", v6, v7, v8, v9, v10, v11, "operator()");
  if (*(v5 + 44) == 1)
  {
    if (!v3 || (v4 & 1) != 0)
    {
      if (v4)
      {
        v18 = 4;
      }

      else
      {
        v18 = 3;
      }

      *(v5 + 40) = v3;
      *(v5 + 44) = v18;
      v19 = *(v5 + 192);
      std::mutex::lock(v19);
      std::mutex::unlock(v19);
      std::condition_variable::notify_all((v5 + 144));
    }

    else
    {
      CentauriController::log(0, "CentauriController::%s: reset failed with 0x%08x, waiting for dext re-publish\n", v12, v13, v14, v15, v16, v17, "operator()");
    }
  }

  std::recursive_mutex::unlock((v5 + 80));
}

uint64_t std::__function::__func<CentauriController::reset(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0,std::allocator<CentauriController::reset(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0>,void ()(int,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
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

void *std::__function::__value_func<void ()(int,BOOL)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2433A6FAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL std::condition_variable_any::wait_until<std::unique_lock<std::recursive_mutex>,std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(uint64_t a1, uint64_t a2, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a3)
{
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15.__m_ = v7;
  v15.__owns_ = 1;
  std::mutex::lock(v7);
  std::unique_lock<std::recursive_mutex>::unlock[abi:ne200100](a2);
  if (*a3 <= std::chrono::steady_clock::now().__d_.__rep_)
  {
    v12 = 1;
    goto LABEL_19;
  }

  v8 = *a3;
  v9.__d_.__rep_ = v8 - std::chrono::steady_clock::now().__d_.__rep_;
  if (v9.__d_.__rep_ >= 1)
  {
    std::chrono::steady_clock::now();
    v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v10.__d_.__rep_)
    {
      v11 = 0;
      goto LABEL_16;
    }

    if (v10.__d_.__rep_ < 1)
    {
      if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v11 = 0x8000000000000000;
        goto LABEL_16;
      }
    }

    else if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v11 = 1000 * v10.__d_.__rep_;
LABEL_14:
    if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v13.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_17:
      std::condition_variable::__do_timed_wait(a1, &v15, v13);
      std::chrono::steady_clock::now();
      goto LABEL_18;
    }

LABEL_16:
    v13.__d_.__rep_ = v11 + v9.__d_.__rep_;
    goto LABEL_17;
  }

LABEL_18:
  v12 = std::chrono::steady_clock::now().__d_.__rep_ >= *a3;
LABEL_19:
  std::unique_lock<std::mutex>::unlock[abi:ne200100](&v15);
  std::unique_lock<std::recursive_mutex>::lock[abi:ne200100](a2);
  if (v15.__owns_)
  {
    std::mutex::unlock(v15.__m_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v12;
}

void sub_2433A7128(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::unique_lock<std::mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    std::unique_lock<std::recursive_mutex>::lock[abi:ne200100]();
  }
}

void std::unique_lock<std::recursive_mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::recursive_mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  std::__function::__value_func<void ()(int,BOOL)>::operator=[abi:ne200100](v3);
}

uint64_t std::__function::__value_func<void ()(int,BOOL)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__function::__func<CentauriController::collectLogs(char const*,unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0,std::allocator<CentauriController::collectLogs(char const*,unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0>,void ()(int,BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28561BD58;
  a2[1] = v2;
  return result;
}

void std::__function::__func<CentauriController::collectLogs(char const*,unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0,std::allocator<CentauriController::collectLogs(char const*,unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0>,void ()(int,BOOL)>::operator()(uint64_t a1, int *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  std::recursive_mutex::lock((v5 + 80));
  CentauriController::log(2u, "CentauriController::%s: collectLogs completion result 0x%08x terminated %u\n", v6, v7, v8, v9, v10, v11, "operator()");
  if (*(v5 + 44) == 2)
  {
    if (v4)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    *(v5 + 40) = v3;
    *(v5 + 44) = v12;
    v13 = *(v5 + 192);
    std::mutex::lock(v13);
    std::mutex::unlock(v13);
    std::condition_variable::notify_all((v5 + 144));
  }

  std::recursive_mutex::unlock((v5 + 80));
}

uint64_t std::__function::__func<CentauriController::collectLogs(char const*,unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0,std::allocator<CentauriController::collectLogs(char const*,unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0>,void ()(int,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<unsigned long long,CentauriControllerChipState>::unordered_map(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CentauriControllerChipState>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,CentauriControllerChipState> const&>(a1, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CentauriControllerChipState>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,CentauriControllerChipState> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CentauriControllerChipState>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CentauriControllerChipState>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CentauriControllerChipState>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CentauriControllerChipState>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CentauriControllerChipState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CentauriControllerChipState>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278DB0910, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
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

void std::__assoc_state<__CFRunLoop *>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x245D323C0);
}

uint64_t *std::promise<__CFRunLoop *>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x245D321E0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x245D321F0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x277D82838] + 16);
  exception[1] = a1[1];

  return MEMORY[0x2821F74F8](v3);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x245D321E0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,CentauriController::start(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_2>>(uint64_t *a1)
{
  v7 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  memset(&context, 0, sizeof(context));
  v4 = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &context);
  rl = CFRunLoopGetCurrent();
  v5 = *MEMORY[0x277CBF058];
  CFRunLoopAddSource(rl, v4, *MEMORY[0x277CBF058]);
  std::promise<__CFRunLoop *>::set_value(v7[1], &rl);
  CFRunLoopRun();
  CFRunLoopRemoveSource(rl, v4, v5);
  CFRelease(v4);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,CentauriController::start(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_2>>::~unique_ptr[abi:ne200100](&v7);
  return 0;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,CentauriController::start(std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_2>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x245D323C0](v3, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x245D32220]();
    MEMORY[0x245D323C0](v3, 0x20C4093837F09);
  }

  return a1;
}

void std::promise<__CFRunLoop *>::set_value(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<__CFRunLoop *>::set_value<__CFRunLoop * const&>(v3, a2);
}

void std::__assoc_state<__CFRunLoop *>::set_value<__CFRunLoop * const&>(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<__CFRunLoop *>::move(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v6.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v6);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v5, &a1->__exception_);
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
    __break(1u);
  }

  else
  {
    v3 = a1[1].__vftable;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_2433A8580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

unint64_t CentauriControllerGetChipPower(CentauriController *a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  result = CentauriController::getChipPower(a1);
  if (!result)
  {
    *a1 = BYTE4(result);
  }

  return result;
}

uint64_t CentauriControllerSendBootTimestamps(CentauriController *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return CentauriController::sendBootTimestamps(a1, 0, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t CentauriControllerGetBootTimestamps(CentauriController *a1, const __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return CentauriController::getBootTimestamps(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t CentauriControllerSendFirmwareBootTimestamps(CentauriController *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return CentauriController::sendBootTimestamps(a1, 1, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t CentauriControllerCreateWithParameters(unsigned int a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
    if (a1 <= 2)
    {
      operator new();
    }
  }

  return 3758097090;
}

CentauriController *CentauriControllerFree(CentauriController *result)
{
  if (result)
  {
    CentauriController::~CentauriController(result);

    JUMPOUT(0x245D323C0);
  }

  return result;
}

uint64_t CentauriControllerReset(std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return CentauriController::reset(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t CentauriControllerCollectLogs(std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a1, const char *a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    return 3758097090;
  }

  if (a3)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 | 4;
  }

  return CentauriController::collectLogs(a1, a2, v8, a5, a5, a6, a7, a8);
}

uint64_t CentauriControllerCollectLogsWithOptions(std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a1, const char *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    return CentauriController::collectLogs(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

unint64_t CentauriControllerGetChipState(CentauriController *this, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 3758097090;
  if (this && a2)
  {
    result = CentauriController::getChipState(this, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      *a2 = HIDWORD(result);
    }
  }

  return result;
}

uint64_t CentauriControllerRegisterUniqueErrorHandlerWithLoop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a1 && a3)
  {
    return CentauriController::registerErrorHandler(a1, a2, 0, a3, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t CentauriControllerRegisterUniqueErrorHandlerWithQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a1 && a3)
  {
    return CentauriController::registerErrorHandler(a1, 0, a2, a3, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t CentauriControllerRegisterCrashlogHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a1 && a3)
  {
    return CentauriController::registerCrashlogHandler(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t CentauriControllerGetCurrentDriverInstance(CentauriController *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    return CentauriController::getCurrentDriverUID(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t CentauriControllerAllocateSecondaryMemory(CentauriController *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    return CentauriController::allocateSecondaryMemory(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t CentauriControllerMapSecondaryMemory(CentauriController *this, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 3758097090;
  if (this && a2 && a3)
  {
    CentauriController::mapSecondaryMemory(this, a3, a4, a5, a6, a7, a8, &v12);
    result = v12;
    if (!v12)
    {
      *a2 = v13;
      *a3 = v14;
    }
  }

  return result;
}

uint64_t CentauriControllerUnmapSecondaryMemory(CentauriController *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    return CentauriController::unmapSecondaryMemory(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t CentauriControllerSetMemSwapRegions(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    return CentauriController::setMemSwapRegions(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t CentauriControllerGetCrashlogs(CentauriController *a1, const __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    return CentauriController::getCrashlogs(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

void CentauriController::setChipPower(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(0, "CentauriController::%s: failed to open device\n", a3, a4, a5, a6, a7, a8, "setChipPower");
}

{
  CentauriController::log(0, "CentauriController::%s: no driver\n", a3, a4, a5, a6, a7, a8, "setChipPower");
}

void CentauriController::getChipPower(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(0, "CentauriController::%s: wrong type on power property\n", a3, a4, a5, a6, a7, a8, "getChipPower");
}

{
  CentauriController::log(0, "CentauriController::%s: no power property\n", a3, a4, a5, a6, a7, a8, "getChipPower");
}

{
  CentauriController::log(0, "CentauriController::%s: failed to allocate CFString\n", a3, a4, a5, a6, a7, a8, "getChipPower");
}

{
  CentauriController::log(0, "CentauriController::%s: no driver\n", a3, a4, a5, a6, a7, a8, "getChipPower");
}

void CentauriController::sendBootTimestamps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(0, "CentauriController::%s: failed to open device\n", a3, a4, a5, a6, a7, a8, "sendBootTimestamps");
}

{
  CentauriController::log(0, "CentauriController::%s: no driver\n", a3, a4, a5, a6, a7, a8, "sendBootTimestamps");
}

{
  CentauriController::log(0, "CentauriController::%s: failed to allocate CFString\n", a3, a4, a5, a6, a7, a8, "sendBootTimestamps");
}

{
  CentauriController::log(0, "CentauriController::%s: failed to allocate CFDictionary\n", a3, a4, a5, a6, a7, a8, "sendBootTimestamps");
}

void CentauriController::getBootTimestamps(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(0, "CentauriController::%s: property has wrong type\n", a3, a4, a5, a6, a7, a8, "getBootTimestamps");

  CFRelease(a1);
}

void CentauriController::getBootTimestamps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(0, "CentauriController::%s: property not found\n", a3, a4, a5, a6, a7, a8, "getBootTimestamps");
}

{
  CentauriController::log(0, "CentauriController::%s: no driver\n", a3, a4, a5, a6, a7, a8, "getBootTimestamps");
}

{
  CentauriController::log(0, "CentauriController::%s: failed to create property name\n", a3, a4, a5, a6, a7, a8, "getBootTimestamps");
}

void CentauriController::setHardwareHealth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CentauriController::log(0, "CentauriController::%s: failed to open device\n", a3, a4, a5, a6, a7, a8, "setHardwareHealth");
}

{
  CentauriController::log(0, "CentauriController::%s: no driver\n", a3, a4, a5, a6, a7, a8, "setHardwareHealth");
}

atomic_ullong *std::future<__CFRunLoop *>::get(atomic_ullong *result)
{
  if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))();
  }

  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}