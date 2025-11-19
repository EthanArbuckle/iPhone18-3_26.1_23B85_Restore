uint64_t FBDecoder_DecodeArguments(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = (a2 + v10);
  v12 = memchr((a2 + v10), 0, a3 - v10);
  if (v12)
  {
    v13 = v12;
    v35 = a2;
    v36 = a1;
    v14 = a1[1];
    v15 = v12 + 1;
    if (v11 == v12)
    {
LABEL_37:
      result = 0;
      *v36 = ((v15 + 3) & 0xFFFFFFFC) - v35;
      v36[1] = v14;
      return result;
    }

    v16 = a2 + a3;
    while (1)
    {
      v17 = v14;
      if (v14 >= a5)
      {
        return 2;
      }

      v18 = a4 + 16 * v14;
      *(v18 + 11) = 0;
      *(v18 + 8) = 1;
      v19 = *v11;
      if (v19 == 64)
      {
        v20 = 0;
        v22 = v11 + 1;
        v21 = v11[1];
        if (v11 + 1 != v13)
        {
          v23 = v21 - 48;
          if ((v21 - 48) <= 9)
          {
            LOWORD(v20) = 0;
            v24 = v11 + 2;
            do
            {
              LOWORD(v20) = v23 + 10 * v20;
              v25 = v24 == v13;
              v27 = *v24++;
              v26 = v27;
              if (v25)
              {
                break;
              }

              v23 = v26 - 48;
            }

            while ((v26 - 48) < 0xA);
            v20 = v20;
            v22 = v24 - 1;
          }
        }

        *(v18 + 11) = 1;
        *(v18 + 8) = v20;
        v19 = *v22;
        v28 = 3;
        v11 = v22;
      }

      else
      {
        v28 = 2;
        v20 = 1;
      }

      if (v19 == 117)
      {
        *(v18 + 11) = v28;
        v29 = *++v11;
        v19 = v29;
      }

      *(v18 + 10) = v19;
      result = 0xFFFFFFFFLL;
      if (v19 <= 97)
      {
        if (v19 != 67)
        {
          if (v19 != 83 && v19 != 85)
          {
            return result;
          }

          if (v16 - v15 >= 8 && *v15 == 0xFFFFFFFFLL)
          {
            *v18 = 0;
            *(v18 + 8) = 0;
            ++v15;
          }

          else
          {
            *v18 = v15;
            v33 = memchr(v15, 0, v16 - v15);
            if (!v33)
            {
              return 0xFFFFFFFFLL;
            }

            *(v18 + 8) = v33 - v15;
            v15 = v33 + 1;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v31 = v19 - 98;
        if (v31 > 0x15)
        {
          return result;
        }

        if (((1 << v31) & 0x244404) == 0)
        {
          if (((1 << v31) & 0x90) != 0)
          {
            v34 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            *v18 = v34;
            v15 = (v34 + 4 * v20);
          }

          else
          {
            if (v31)
            {
              return result;
            }

            *v18 = v15;
            v15 = (v15 + v20);
          }

          goto LABEL_32;
        }
      }

      v32 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      *v18 = v32;
      v15 = (v32 + 8 * v20);
LABEL_32:
      if (v16 < v15)
      {
        return 0xFFFFFFFFLL;
      }

      if ((v11 + 1) < v16 && v11[1] == 60)
      {
        v11 = memchr(v11 + 2, 62, v13 - (v11 + 2));
      }

      v14 = v17 + 1;
      if (++v11 == v13)
      {
        goto LABEL_37;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void GPUTools::Interpose::DYInterposeCommonInit(GPUTools::Interpose *this, DYGuestAppClient *(*a2)(void))
{
  v2 = a2;
  v4 = objc_autoreleasePoolPush();
  if (GPUTools::Interpose::DYInterposeCommonInit(DYGuestAppClient * (*)(void),int)::onceToken != -1)
  {
    GPUTools::Interpose::DYInterposeCommonInit();
  }

  v5 = (this)();
  if (!v5)
  {
    dy_abort("platform initialization failed");
  }

  v6 = v5;
  DYSetGuestAppClient(v2, v5);
  dispatch_resume([v6 globalSyncQueue]);
  [v6 sendTimebaseUpdate];
  MainBundle = CFBundleGetMainBundle();
  v8 = [(__CFURL *)CFBundleCopyBundleURL(MainBundle) path];
  if (!v8)
  {
    GPUTools::Interpose::DYInterposeCommonInit();
  }

  v9 = v8;
  v10 = [(__CFURL *)CFBundleCopyExecutableURL(MainBundle) path];
  if (!v10)
  {
    GPUTools::Interpose::DYInterposeCommonInit();
  }

  v11 = v10;
  Identifier = CFBundleGetIdentifier(MainBundle);
  [v6 sendMessage:{+[DYTransportMessage messageWithKind:attributes:payload:](DYTransportMessage, "messageWithKind:attributes:payload:", 1536, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", getpid()), @"pid", v9, @"path", v11, @"executable-path", Identifier, @"identifier", 0), 0)}];

  objc_autoreleasePoolPop(v4);
}

char *___ZN8GPUTools9Interpose21DYInterposeCommonInitEPFP16DYGuestAppClientvEi_block_invoke()
{
  GPUTools::Interpose::gHostPort = MEMORY[0x253030EF0]();
  v0 = mach_timebase_info(&g_DYTimebaseInfo);

  return GPUTools::Interpose::DYFetchSandboxEntitlements(v0);
}

char *GPUTools::Interpose::DYFetchSandboxEntitlements(GPUTools::Interpose *this)
{
  if (getenv("DY_SANDBOX_SOCKET"))
  {
    sandbox_extension_consume();
  }

  result = getenv("DY_SANDBOX_GENERIC");
  if (result)
  {

    return sandbox_extension_consume();
  }

  return result;
}

DYUNIXDomainSocketTransport *GPUTools::Interpose::DYCreateTransport(GPUTools::Interpose *this, const char *a2)
{
  v2 = getenv(this);
  if (!v2)
  {
    dy_abort("[create_transport] GT_HOST_URL environment not set");
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCACA8] stringWithCString:v2 encoding:4];
  if (!v4)
  {
    GPUTools::Interpose::DYCreateTransport();
  }

  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  if (!v5)
  {
    dy_abort("[create_transport] failed to parse GT_HOST_URL: %s", v3);
  }

  v6 = v5;
  v7 = [v5 scheme];
  if (([v7 isEqualToString:@"null"] & 1) == 0)
  {
    if ([v7 isEqualToString:@"file"])
    {
      v9 = [[DYUNIXDomainSocketTransport alloc] initWithMode:1];
    }

    else
    {
      if (([v7 isEqualToString:@"dysmt"] & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", @"dysmtdeferred"))
      {
        goto LABEL_16;
      }

      v9 = [[DYSharedMemoryTransport alloc] initWithMode:1 uniqueIdentifier:0];
    }

    v8 = v9;
    [(DYUNIXDomainSocketTransport *)v9 setUrl:v6];
    if (v8)
    {
      return v8;
    }

LABEL_16:
    dy_abort("[create_transport] failed to create transport; GT_HOST_URL: %s", v3);
  }

  return 0;
}

uint64_t (*GPUTools::Interpose::DYInterposeSetMessageDispatcher(uint64_t (*result)(GPUTools::Interpose *__hidden this, DYGuestAppClient *, GPUTools::FB::Stream *, const void *, unint64_t), uint64_t (*a2)(GPUTools::Interpose *__hidden this, DYGuestAppClient *, DYTransportMessage *, const char *, const void *, unint64_t)))(GPUTools::Interpose *__hidden this, DYGuestAppClient *, GPUTools::FB::Stream *, const void *, unint64_t)
{
  GPUTools::Interpose::sDispatcher = result;
  off_281C11B50 = a2;
  return result;
}

void GPUTools::Interpose::DYInterposeDefaultFlushStream(GPUTools::Interpose *this, DYGuestAppClient *a2, GPUTools::FB::Stream *a3, const void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEB38]);
  saveptrQueue = a2->_saveptrQueue;
  v11 = [MEMORY[0x277CCABB0] numberWithBool:(BYTE4(a2->_stopCaptureQueue) & 1) == 0];
  v12 = [v9 initWithObjectsAndKeys:{saveptrQueue, @"buffer name", v11, @"has pstream header", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(-[GPUTools::Interpose activeCaptureDescriptor](this, "activeCaptureDescriptor"), "sessionId")), @"capture serial", 0}];
  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
  v14 = [[DYTransportMessage alloc] initWithKind:1792 attributes:v12 payload:v13];

  [(GPUTools::Interpose *)this sendTimebaseUpdate];
  [(GPUTools::Interpose *)this sendMessage:v14];

  objc_autoreleasePoolPop(v8);
}

void GPUTools::Interpose::DYInterposeDefaultStorePointer(GPUTools::Interpose *this, DYGuestAppClient *a2, DYTransportMessage *a3, const char *a4, const void *a5)
{
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
  -[GPUTools::Interpose sendCaptureData:name:inReplyTo:](this, "sendCaptureData:name:inReplyTo:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:a3], a2);
}

uint64_t GPUTools::Interpose::DYSavePointer(GPUTools::Interpose *this, DYGuestAppClient *a2, void *data, char *__dst, char *a5, uint64_t a6, DYTransportMessage *a7, char a8, _BYTE *a9, BOOL *a10)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!a2 || !data)
  {
    strcpy(__dst, kDYNullURL[0]);
LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  v13 = a7;
  CC_SHA256(data, a2, md);
  if (a5 >= 0x41)
  {
    v17 = 0;
    v18 = __dst;
    do
    {
      snprintf(v18, a5, "%02x", md[v17++]);
      a5 -= 2;
      v18 += 2;
    }

    while (v17 != 32);
  }

  if ((v13 & 1) == 0 && (a8 & 1) == 0)
  {
    goto LABEL_11;
  }

  if ([(GPUTools::Interpose *)this liveDebugging])
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:data length:a2];
    -[GPUTools::Interpose sendCaptureData:name:inReplyTo:](this, "sendCaptureData:name:inReplyTo:", v19, [MEMORY[0x277CCACA8] stringWithUTF8String:__dst], 0);
    v20 = 1;
  }

  else
  {
    *md = 0;
    v32 = md;
    v33 = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    v23 = [(GPUTools::Interpose *)this saveptrQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN8GPUTools9Interpose13DYSavePointerEP16DYGuestAppClientmPKvPcmP18DYTransportMessagebbPb_block_invoke;
    block[3] = &unk_27930BE50;
    block[8] = __dst;
    block[9] = data;
    block[10] = a2;
    block[4] = this;
    block[5] = a6;
    block[6] = &v27;
    block[7] = md;
    v26 = a8;
    dispatch_sync(v23, block);
    if (a9)
    {
      *a9 = *(v28 + 24);
    }

    v20 = v32[24];
    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(md, 8);
  }

LABEL_12:
  v21 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

void sub_24D66DAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void ___ZN8GPUTools9Interpose13DYSavePointerEP16DYGuestAppClientmPKvPcmP18DYTransportMessagebbPb_block_invoke(uint64_t a1)
{
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:*(a1 + 64) encoding:1];
  v2 = [objc_msgSend(*(a1 + 32) "saveptrPtrInfoDict")];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 72)];
  v4 = [objc_msgSend(*(a1 + 32) "ptrUrlInfoDict")];
  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v4 compare:v6] != 0;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [objc_msgSend(*(a1 + 32) "ptrUrlInfoDict")];
  }

  if (v2)
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      [v2 incrementUsage];
    }
  }

  else
  {
    v5 = [[BufferInfo alloc] initWithSize:*(a1 + 80) usage:1];
    [objc_msgSend(*(a1 + 32) "saveptrPtrInfoDict")];
    (off_281C11B50)(*(a1 + 32), *(a1 + 40), [v6 UTF8String], *(a1 + 72), *(a1 + 80));

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

Method GPUTools::Interpose::DYInstallObjCMethodOverrides(Method result)
{
  v1 = *result;
  if (*(result + 1) != *result)
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    do
    {
      result = class_getInstanceMethod(*(v1 + v3), *(v1 + v3 + 8));
      if (result)
      {
        v5 = result;
        **(*v2 + v3 + 16) = method_getImplementation(result);
        v6 = *v2 + v3;
        if (!**(v6 + 16))
        {
          GPUTools::Interpose::DYInstallObjCMethodOverrides();
        }

        v7 = *v6;
        v8 = *(v6 + 8);
        v9 = *(v6 + 24);
        TypeEncoding = method_getTypeEncoding(v5);
        result = class_addMethod(v7, v8, v9, TypeEncoding);
        if ((result & 1) == 0)
        {
          result = method_setImplementation(v5, *(*v2 + v3 + 24));
        }
      }

      ++v4;
      v1 = *v2;
      v3 += 32;
    }

    while (v4 < (v2[1] - *v2) >> 5);
  }

  return result;
}

void dy_abort(char *a1, ...)
{
  va_start(va, a1);
  __s[0] = 0;
  va_copy(&__s[1], va);
  vasprintf(__s, a1, va);
  if (__crashreporter_info__)
  {
    v2 = strlen(__crashreporter_info__);
    v3 = v2 + strlen(__s[0]);
    v1 = malloc_type_malloc(v3 + 2, 0x604D46CEuLL);
    strlcpy(v1, __crashreporter_info__, v3 + 2);
    strlcat(v1, "\n", v3 + 2);
    strlcat(v1, __s[0], v3 + 2);
    free(__s[0]);
  }

  else
  {
    v1 = __s[0];
  }

  __crashreporter_info__ = v1;
  syslog(3, "aborting: %s\n", v1);
  abort();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
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
}

uint64_t DYTimingBenchmark()
{
  MEMORY[0x28223BE20]();
  v0 = 0;
  v7 = *MEMORY[0x277D85DE8];
  do
  {
    v1 = mach_absolute_time();
    v2 = mach_absolute_time() - v1;
    if (g_DYTimebaseInfo != dword_27F0982A4)
    {
      v2 = __udivti3();
    }

    *&v5[v0] = v2;
    v0 += 8;
  }

  while (v0 != 80008);
  qsort_b(v5, 0x2711uLL, 8uLL, &__block_literal_global_0);
  result = v6;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __DYTimingBenchmark_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 > *a3;
  }
}

void sub_24D66EB50(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      *(v2 + 40) = 0;
      objc_end_catch();
    }

    JUMPOUT(0x24D66EAB4);
  }

  JUMPOUT(0x24D66EB44);
}

void dy_ProbesInit()
{
  v0 = objc_autoreleasePoolPush();
  g_dySignpostLog = MEMORY[0x277D86228];
  if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
  {
    g_dySignpostLog = os_log_create("com.apple.gputools", "GPUToolsCore");
  }

  objc_autoreleasePoolPop(v0);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_24D66FB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D670700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t smt_poll_thread_entry(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  snprintf(__str, 0x40uLL, "gputools.smt_poll.%p", a1);
  pthread_setname_np(__str);
  if ((a1[3] & 1) == 0)
  {
    do
    {
      dispatch_sync(v2, v3);
      usleep(0x1F40u);
    }

    while (*(a1 + 24) != 1);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t GPUTools::SM::ProcessStateSettingReturnCode(unsigned int a1, int a2)
{
  if (a1 == 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = 3;
  }

  if (a2 == 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = a1;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if ((a1 | 2) == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = a1;
  }

  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 2;
  }

  if (a2 != 2)
  {
    v5 = a1;
  }

  if (a2 != 1)
  {
    v4 = v5;
  }

  if (a2 <= 2)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t GPUTools::FB::Stream::Stream(uint64_t a1, void *aBlock, const void *a3)
{
  *a1 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  if (!aBlock)
  {
    GPUTools::FB::Stream::Stream();
  }

  *(a1 + 8) = 0;
  *(a1 + 40) = _Block_copy(aBlock);
  if (a3)
  {
    *(a1 + 48) = _Block_copy(a3);
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  if (!aBlock)
  {
    GPUTools::FB::Stream::Stream();
  }

  *(a1 + 8) = 0;
  *(a1 + 40) = _Block_copy(aBlock);
  if (a3)
  {
    *(a1 + 48) = _Block_copy(a3);
  }

  return a1;
}

GPUTools::FB::Stream *GPUTools::FB::Stream::Stream(GPUTools::FB::Stream *this, __CFData *a2)
{
  v5[4] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN8GPUTools2FB6StreamC2EP8__CFData_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_0;
  aBlock[4] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN8GPUTools2FB6StreamC2EP8__CFData_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_3;
  *this = 0;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 60) = 0;
  *(this + 5) = _Block_copy(aBlock);
  *(this + 6) = _Block_copy(v5);
  if (!a2)
  {
    __assert_rtn("GPUTools::FB::Stream::Stream(CFMutableDataRef)", "", 0, "data");
  }

  CFRetain(a2);
  return this;
}

{
  v5[4] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN8GPUTools2FB6StreamC1EP8__CFData_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_5;
  aBlock[4] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN8GPUTools2FB6StreamC1EP8__CFData_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_6;
  *this = 0;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 60) = 0;
  *(this + 5) = _Block_copy(aBlock);
  *(this + 6) = _Block_copy(v5);
  if (!a2)
  {
    __assert_rtn("GPUTools::FB::Stream::Stream(CFMutableDataRef)", "", 0, "data");
  }

  CFRetain(a2);
  return this;
}

void ___ZN8GPUTools2FB6StreamC2EP8__CFData_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16) - v2;
  v4 = *(a2 + 60) == 0;
  if (*(a2 + 60))
  {
    v5 = (v2 + 8);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = v3 - 8;
  }

  CFDataAppendBytes(*(a1 + 32), v5, v6);
}

void GPUTools::FB::Stream::~Stream(GPUTools::FB::Stream *this)
{
  if (*(this + 1))
  {
    while (atomic_exchange(this + 14, 1u) == 1)
    {
        ;
      }
    }

    if (!*(this + 1))
    {
      __assert_rtn("void GPUTools::FB::Stream::Close()", "", 0, "_bh.buffer != nullptr");
    }

    CFRelease(*(this + 4));
    *(this + 4) = 0;
    if (*this)
    {
      GPUTools::VMBuffer::~VMBuffer(*this);
      MEMORY[0x253030980]();
    }

    *(this + 60) = 0;
    *this = 0u;
    *(this + 1) = 0u;
    atomic_store(0, this + 14);
  }

  v2 = *(this + 6);
  if (v2)
  {
    (*(v2 + 16))(v2, this);
    _Block_release(*(this + 6));
  }

  v3 = *(this + 5);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZN8GPUTools2FB6StreamC1EP8__CFData_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16) - v2;
  v4 = *(a2 + 60) == 0;
  if (*(a2 + 60))
  {
    v5 = (v2 + 8);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = v3 - 8;
  }

  CFDataAppendBytes(*(a1 + 32), v5, v6);
}

uint64_t GPUTools::FB::Stream::Stream(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  return GPUTools::FB::Stream::operator=(a1, a2);
}

{
  *a1 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  return GPUTools::FB::Stream::operator=(a1, a2);
}

uint64_t GPUTools::FB::Stream::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    while (atomic_exchange((a1 + 56), 1u) == 1)
    {
        ;
      }
    }

    while (atomic_exchange((a2 + 56), 1u) == 1)
    {
        ;
      }
    }

    while (atomic_exchange((a1 + 56), 1u) == 1)
    {
        ;
      }
    }

    if (!*(a1 + 8))
    {
      __assert_rtn("void GPUTools::FB::Stream::Close()", "", 0, "_bh.buffer != nullptr");
    }

    CFRelease(*(a1 + 32));
    *(a1 + 32) = 0;
    if (*a1)
    {
      GPUTools::VMBuffer::~VMBuffer(*a1);
      MEMORY[0x253030980]();
    }

    *(a1 + 60) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    atomic_store(0, (a1 + 56));
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v4 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v4;
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 60) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
    atomic_store(0, (a2 + 56));
    atomic_store(0, (a1 + 56));
  }

  return a1;
}

void sub_24D671B1C(_Unwind_Exception *a1)
{
  atomic_store(0, (v1 + 56));
  atomic_store(0, (v2 + 56));
  atomic_store(0, (v1 + 56));
  _Unwind_Resume(a1);
}

double GPUTools::FB::Stream::Close(GPUTools::FB::Stream *this)
{
  while (atomic_exchange(this + 14, 1u) == 1)
  {
      ;
    }
  }

  if (!*(this + 1))
  {
    __assert_rtn("void GPUTools::FB::Stream::Close()", "", 0, "_bh.buffer != nullptr");
  }

  CFRelease(*(this + 4));
  *(this + 4) = 0;
  if (*this)
  {
    GPUTools::VMBuffer::~VMBuffer(*this);
    MEMORY[0x253030980]();
  }

  *(this + 60) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  atomic_store(0, this + 14);
  return result;
}

void GPUTools::FB::Stream::Open(GPUTools::FB::Stream *this, const __CFString *a2)
{
  while (atomic_exchange(this + 14, 1u) == 1)
  {
      ;
    }
  }

  if (a2)
  {
    if (!*(this + 1))
    {
      operator new();
    }

    v2 = "_bh.buffer == nullptr";
  }

  else
  {
    v2 = "filename";
  }

  __assert_rtn("BOOL GPUTools::FB::Stream::Open(CFStringRef)", "", 0, v2);
}

void sub_24D671D78(_Unwind_Exception *a1)
{
  MEMORY[0x253030980](v2, 0x1000C40EED21634);
  atomic_store(0, (v1 + 56));
  _Unwind_Resume(a1);
}

uint64_t GPUTools::FB::Stream::Send(GPUTools::FB::Stream *this)
{
  while (atomic_exchange(this + 14, 1u) == 1)
  {
      ;
    }
  }

  v2 = *(this + 60);
  *(this + 60) = 0;
  v3 = *(this + 5);
  result = (*(*(this + 5) + 16))();
  *(this + 60) = v2;
  atomic_store(0, this + 14);
  return result;
}

void GPUTools::FB::Stream::WriteFunction(GPUTools::FB::Stream *this, const GPUTools::FD::Function *a2)
{
  v2 = a2;
  v4 = 0;
  v5 = 0;
  v6 = a2;
  do
  {
    ++v5;
    v6 = *(v6 + 65);
    v4 -= 24;
  }

  while (v6);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *v22 = &v26;
  v23 = 0;
  if (v5)
  {
    if (v5 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<GPUTools::FB::Fbuf>::__throw_length_error[abi:ne200100]();
  }

  v7 = 0;
  do
  {
    v8 = v26;
    GPUTools::FB::FunctionArgumentProvider::FunctionArgumentProvider(v22, v2, 0);
    if (v25 >= 0)
    {
      v10 = &v24;
    }

    else
    {
      v10 = v24;
    }

    GPUTools::FB::Encode(&v8[v7], *v2, *(v2 + 1) & 0xFFFFFBC6, v10, v22, v9);
    *(v8[v7].var0.var0 + 2) = *(v2 + 57);
    *(v8[v7].var0.var0 + 3) = *(v2 + 58);
    *(v8[v7].var0.var0 + 1) = *(v2 + 64);
    v11 = *(v2 + 1);
    if (v11)
    {
      GPUTools::FB::FunctionArgumentProvider::FunctionArgumentProvider(v19, v2, 1);
      if (v21 >= 0)
      {
        v13 = &v20;
      }

      else
      {
        v13 = v20;
      }

      GPUTools::FB::Encode(&v26[v7], 0xFFFFD000, 0, v13, v19, v12);
      GPUTools::FB::FunctionArgumentProvider::~FunctionArgumentProvider(v19);
      v11 = *(v2 + 1);
    }

    if ((v11 & 8) != 0)
    {
      GPUTools::FB::EncodeStaticBacktrace(&v8[v7], *(v2 + 59), *(v2 + 240));
      v11 = *(v2 + 1);
    }

    if ((v11 & 0x10) != 0)
    {
      GPUTools::FB::EncodeGLError(&v8[v7], *(v2 + 241));
      v11 = *(v2 + 1);
    }

    if ((v11 & 0x20) != 0)
    {
      GPUTools::FB::EncodePerfEvents(&v8[v7], *(v2 + 121), *(v2 + 61), *(v2 + 124));
      v11 = *(v2 + 1);
    }

    if ((v11 & 0x400) != 0)
    {
      GPUTools::FB::EncodeGCDQueueInfo(&v8[v7], *(v2 + 63), *(v2 + 125));
    }

    v2 = *(v2 + 65);
    GPUTools::FB::FunctionArgumentProvider::~FunctionArgumentProvider(v22);
    ++v7;
  }

  while (v2);
  GPUTools::FB::Stream::Writev_partial(this, v26, 0, 1);
  v14 = v26;
  if (v26)
  {
    v15 = v27;
    v16 = v26;
    if (v27 != v26)
    {
      do
      {
        var0 = v15[-1].var0.var0;
        --v15;
        v17 = var0;
        if (var0)
        {
          free(v17);
        }

        v15->var0.var0 = 0;
        v15->var1 = 0;
        v15->var2 = 0;
      }

      while (v15 != v14);
      v16 = v26;
    }

    v27 = v14;
    operator delete(v16);
  }
}

double GPUTools::FB::Stream::Write_nolock(GPUTools::FB::Stream *this, Fbuf *a2, size_t __n, int a4)
{
  v4 = *(this + 3);
  if (__n > v4)
  {
    dy_abort("fbuf exceeded capacity of fbuf stream by %lu bytes", __n - v4);
  }

  v10 = *(this + 1);
  v9 = *(this + 2);
  if (v9 + __n - v10 - 8 > v4)
  {
    (*(*(this + 5) + 16))();
    v9 = (*(this + 1) + 8);
    *(this + 2) = v9;
    *(this + 60) = 1;
  }

  memcpy(v9, a2->var0.var0, __n);
  *(this + 2) += __n;
  if (a4)
  {
    var0 = a2->var0.var0;
    a2->var1 = a2->var0.var0;
    if (a2->var2 >= 0x24)
    {
      var0[8] = 0;
      result = 0.0;
      *var0 = 0u;
      *(var0 + 1) = 0u;
    }
  }

  return result;
}

void *GPUTools::FB::Stream::Writev_nopartial(GPUTools::FB::Stream *this, const void **a2, uint64_t a3, char a4)
{
  v4 = a3;
  v5 = a2;
  if (!a3)
  {
    v7 = 0;
    if (atomic_exchange(this + 14, 1u) != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (a3 == 1)
  {
    v7 = 0;
    v8 = 0;
LABEL_9:
    v13 = a3 - v8;
    v14 = &a2[3 * v8];
    do
    {
      v15 = *v14;
      v14 += 3;
      v7 += *v15;
      --v13;
    }

    while (v13);
    goto LABEL_11;
  }

  v9 = 0;
  v10 = 0;
  v8 = a3 & 0xFFFFFFFFFFFFFFFELL;
  v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
  v12 = a2;
  do
  {
    v9 += **v12;
    v10 += **(v12 + 3);
    v12 = (v12 + 48);
    v11 -= 2;
  }

  while (v11);
  v7 = v10 + v9;
  if (v8 != a3)
  {
    goto LABEL_9;
  }

LABEL_11:
  v16 = *(this + 3);
  v17 = v7 >= v16;
  v18 = v7 - v16;
  if (v18 != 0 && v17)
  {
    dy_abort("fbufs exceeded capacity of fbuf stream by %lu bytes", v18);
  }

  while (atomic_exchange(this + 14, 1u) == 1)
  {
LABEL_13:
      ;
    }
  }

LABEL_15:
  result = *(this + 2);
  if (result + v7 - *(this + 1) - 8 > *(this + 3))
  {
    v22 = a4;
    (*(*(this + 5) + 16))();
    result = (*(this + 1) + 8);
    *(this + 2) = result;
    *(this + 60) = 1;
    a4 = v22;
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  else if (!a3)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    result = GPUTools::FB::Stream::Writev_nopartial(v5, this + 2, v4);
  }

  else
  {
    do
    {
      v20 = *v5;
      v5 += 3;
      v21 = *v20;
      memcpy(result, v20, v21);
      result = (*(this + 2) + v21);
      *(this + 2) = result;
      --v4;
    }

    while (v4);
  }

LABEL_19:
  atomic_store(0, this + 14);
  return result;
}

_DWORD *GPUTools::FB::Stream::Writev_partial(_DWORD *this, Fbuf *a2, uint64_t a3, char a4)
{
  v4 = a3;
  v6 = this;
  while (atomic_exchange(this + 14, 1u) == 1)
  {
      ;
    }
  }

  if (a3)
  {
    if (a4)
    {
      while (1)
      {
        var0 = a2->var0.var0;
        v8 = *a2->var0.var0;
        v9 = *(v6 + 24);
        if (v9 < v8)
        {
          break;
        }

        v10 = *(v6 + 16);
        if (v10 + v8 - *(v6 + 8) - 8 > v9)
        {
          (*(*(v6 + 40) + 16))();
          v10 = (*(v6 + 8) + 8);
          *(v6 + 16) = v10;
          *(v6 + 60) = 1;
          var0 = a2->var0.var0;
        }

        this = memcpy(v10, var0, v8);
        *(v6 + 16) += v8;
        v11 = a2->var0.var0;
        a2->var1 = a2->var0.var0;
        if (a2->var2 >= 0x24)
        {
          v11[8] = 0;
          *v11 = 0u;
          *(v11 + 1) = 0u;
        }

        ++a2;
        if (!--v4)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
        v12 = a2->var0.var0;
        v8 = *a2->var0.var0;
        v9 = *(v6 + 24);
        if (v9 < v8)
        {
          break;
        }

        v13 = *(v6 + 16);
        if (v13 + v8 - *(v6 + 8) - 8 > v9)
        {
          (*(*(v6 + 40) + 16))();
          v13 = (*(v6 + 8) + 8);
          *(v6 + 16) = v13;
          *(v6 + 60) = 1;
          v12 = a2->var0.var0;
        }

        this = memcpy(v13, v12, v8);
        *(v6 + 16) += v8;
        ++a2;
        if (!--v4)
        {
          goto LABEL_17;
        }
      }
    }

    dy_abort("fbuf exceeded capacity of fbuf stream by %lu bytes", v8 - v9);
  }

LABEL_17:
  atomic_store(0, (v6 + 56));
  return this;
}

void ***std::__exception_guard_exceptions<std::vector<GPUTools::FB::Fbuf>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v7 = *(v4 - 3);
          v4 -= 24;
          v6 = v7;
          if (v7)
          {
            free(v6);
          }

          *v4 = 0;
          *(v4 + 1) = 0;
          *(v4 + 4) = 0;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void **std::vector<GPUTools::FB::Fbuf>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 3);
        v3 -= 24;
        v5 = v6;
        if (v6)
        {
          free(v5);
        }

        *v3 = 0;
        *(v3 + 1) = 0;
        *(v3 + 4) = 0;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void GPUTools::DYLockUtils::Lock(os_unfair_lock_t lock, volatile int *a2)
{
  if (GPUTools::DYLockUtils::ShouldUseLegacyLock(void)::onceToken != -1)
  {
    GPUTools::DYLockUtils::Lock();
  }

  if (GPUTools::DYLockUtils::ShouldUseLegacyLock(void)::shouldUseLegacyLock == 1)
  {

    MEMORY[0x282204B30](lock);
  }

  else
  {

    os_unfair_lock_lock(lock);
  }
}

uint64_t GPUTools::DYLockUtils::ShouldUseLegacyLock(GPUTools::DYLockUtils *this)
{
  if (GPUTools::DYLockUtils::ShouldUseLegacyLock(void)::onceToken != -1)
  {
    GPUTools::DYLockUtils::Lock();
  }

  return GPUTools::DYLockUtils::ShouldUseLegacyLock(void)::shouldUseLegacyLock;
}

void GPUTools::DYLockUtils::Unlock(os_unfair_lock_t lock, volatile int *a2)
{
  if (GPUTools::DYLockUtils::ShouldUseLegacyLock(void)::onceToken != -1)
  {
    GPUTools::DYLockUtils::Lock();
  }

  if (GPUTools::DYLockUtils::ShouldUseLegacyLock(void)::shouldUseLegacyLock == 1)
  {

    MEMORY[0x282204B40](lock);
  }

  else
  {

    os_unfair_lock_unlock(lock);
  }
}

uint64_t GPUTools::DYLockUtils::TryLock(os_unfair_lock_t lock, volatile int *a2)
{
  if (GPUTools::DYLockUtils::ShouldUseLegacyLock(void)::onceToken != -1)
  {
    GPUTools::DYLockUtils::Lock();
  }

  if (GPUTools::DYLockUtils::ShouldUseLegacyLock(void)::shouldUseLegacyLock == 1)
  {

    return MEMORY[0x282204B38](lock);
  }

  else
  {

    return os_unfair_lock_trylock(lock);
  }
}

void *___ZN8GPUTools11DYLockUtils19ShouldUseLegacyLockEv_block_invoke()
{
  GPUTools::DYLockUtils::ShouldUseLegacyLock(void)::shouldUseLegacyLock = 1;
  result = dlsym(0xFFFFFFFFFFFFFFFELL, "os_unfair_lock_lock");
  GPUTools::DYLockUtils::ShouldUseLegacyLock(void)::shouldUseLegacyLock = result == 0;
  return result;
}

void sub_24D673E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

CFTypeRef DYCreateDictionaryFromVMStatistics(char *valuePtr)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = *&off_27930C7A8;
  v14 = xmmword_27930C7B8;
  *keys = xmmword_27930C758;
  v9 = *&off_27930C768;
  v10 = xmmword_27930C778;
  v15 = @"speculative_count";
  v11 = *&off_27930C788;
  v12 = xmmword_27930C798;
  v2 = *MEMORY[0x277CBECE8];
  values[0] = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
  values[1] = CFNumberCreate(v2, kCFNumberIntType, valuePtr + 4);
  values[2] = CFNumberCreate(v2, kCFNumberIntType, valuePtr + 8);
  values[3] = CFNumberCreate(v2, kCFNumberIntType, valuePtr + 12);
  values[4] = CFNumberCreate(v2, kCFNumberLongLongType, valuePtr + 16);
  values[5] = CFNumberCreate(v2, kCFNumberLongLongType, valuePtr + 24);
  values[6] = CFNumberCreate(v2, kCFNumberLongLongType, valuePtr + 32);
  values[7] = CFNumberCreate(v2, kCFNumberLongLongType, valuePtr + 40);
  values[8] = CFNumberCreate(v2, kCFNumberLongLongType, valuePtr + 48);
  values[9] = CFNumberCreate(v2, kCFNumberLongLongType, valuePtr + 56);
  values[10] = CFNumberCreate(v2, kCFNumberLongLongType, valuePtr + 64);
  values[11] = CFNumberCreate(v2, kCFNumberLongLongType, valuePtr + 72);
  values[12] = CFNumberCreate(v2, kCFNumberLongLongType, valuePtr + 80);
  values[13] = CFNumberCreate(v2, kCFNumberIntType, valuePtr + 88);
  values[14] = CFNumberCreate(v2, kCFNumberIntType, valuePtr + 92);
  v3 = CFDictionaryCreate(v2, keys, values, 15, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (i = 0; i != 15; ++i)
  {
    CFRelease(values[i]);
  }

  result = CFMakeCollectable(v3);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DYFillVMStatisticsFromDictionary(_OWORD *a1, CFDictionaryRef theDict)
{
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  *a1 = 0u;
  a1[5] = 0u;
  v4 = a1 + 5;
  a1[4] = 0u;
  v5 = a1 + 4;
  a1[3] = 0u;
  v6 = a1 + 3;
  a1[2] = 0u;
  v7 = a1 + 2;
  a1[1] = 0u;
  v8 = a1 + 1;
  Value = CFDictionaryGetValue(theDict, @"free_count");
  CFNumberGetValue(Value, kCFNumberIntType, a1);
  v10 = CFDictionaryGetValue(theDict, @"active_count");
  CFNumberGetValue(v10, kCFNumberIntType, a1 + 4);
  v11 = CFDictionaryGetValue(theDict, @"inactive_count");
  CFNumberGetValue(v11, kCFNumberIntType, a1 + 8);
  v12 = CFDictionaryGetValue(theDict, @"wire_count");
  CFNumberGetValue(v12, kCFNumberIntType, a1 + 12);
  v13 = CFDictionaryGetValue(theDict, @"zero_fill_count");
  CFNumberGetValue(v13, kCFNumberLongLongType, v8);
  v14 = CFDictionaryGetValue(theDict, @"reactivations");
  CFNumberGetValue(v14, kCFNumberLongLongType, a1 + 24);
  v15 = CFDictionaryGetValue(theDict, @"pageins");
  CFNumberGetValue(v15, kCFNumberLongLongType, v7);
  v16 = CFDictionaryGetValue(theDict, @"pageouts");
  CFNumberGetValue(v16, kCFNumberLongLongType, a1 + 40);
  v17 = CFDictionaryGetValue(theDict, @"faults");
  CFNumberGetValue(v17, kCFNumberLongLongType, v6);
  v18 = CFDictionaryGetValue(theDict, @"cow_faults");
  CFNumberGetValue(v18, kCFNumberLongLongType, a1 + 56);
  v19 = CFDictionaryGetValue(theDict, @"lookups");
  CFNumberGetValue(v19, kCFNumberLongLongType, v5);
  v20 = CFDictionaryGetValue(theDict, @"hits");
  CFNumberGetValue(v20, kCFNumberLongLongType, a1 + 72);
  v21 = CFDictionaryGetValue(theDict, @"purges");
  CFNumberGetValue(v21, kCFNumberLongLongType, v4);
  v22 = CFDictionaryGetValue(theDict, @"purgeable_count");
  CFNumberGetValue(v22, kCFNumberIntType, a1 + 88);
  v23 = CFDictionaryGetValue(theDict, @"speculative_count");

  return CFNumberGetValue(v23, kCFNumberIntType, a1 + 92);
}

void sub_24D67682C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL DYCheckGLDispatchTableSize(uint64_t a1)
{
  v1 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:a1];
  if (!v1)
  {
    DYCheckGLDispatchTableSize_cold_8();
  }

  v2 = [v1 pathForResource:@"GLEngine.bundle" ofType:0];
  if (!v2)
  {
    DYCheckGLDispatchTableSize_cold_7();
  }

  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:v2];
  if (!v3)
  {
    DYCheckGLDispatchTableSize_cold_6();
  }

  v4 = [v3 executablePath];
  if (!v4)
  {
    DYCheckGLDispatchTableSize_cold_5();
  }

  v5 = v4;
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v4);
  v7 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
  if (!v7)
  {
    DYCheckGLDispatchTableSize_cold_4();
  }

  v8 = v7;
  if (!CFStringGetFileSystemRepresentation(v5, v7, MaximumSizeOfFileSystemRepresentation))
  {
    DYCheckGLDispatchTableSize_cold_3();
  }

  v9 = dlopen(v8, 5);
  free(v8);
  if (!v9)
  {
    DYCheckGLDispatchTableSize_cold_2();
  }

  v10 = dlsym(v9, "gliGetInteger");
  if (!v10)
  {
    DYCheckGLDispatchTableSize_cold_1();
  }

  v12 = 0;
  if (v10(0, 224, &v12))
  {
    dy_abort("dispatch table size query failed");
  }

  dlclose(v9);
  return v12 == 8288;
}

char *DYGetMTLInterposeDylibPath(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (sGTMTLCaptureMode != 1 || (v5 = &DYGetCapturePath(void)::libPath, DYGetCapturePathForLibrary(&DYGetCapturePath(void)::libPath, "/System/Library/PrivateFrameworks/GPUToolsCapture.framework/GPUToolsCapture", "/usr/lib/libMTLCapture.dylib", a4, a5), !DYGetCapturePath(void)::libPath))
  {
    DYGetLegacyCapturePath();
    return DYGetLegacyCapturePath(void)::libPath;
  }

  return v5;
}

char *DYGetLegacyCapturePath(void)
{
  v0 = [MEMORY[0x277CBEBC0] fileURLWithPath:{objc_msgSend(@"/", "stringByAppendingPathComponent:", @"/Developer/Library/PrivateFrameworks/MTLToolsDeviceSupport.framework/libMTLInterpose.dylib"}];
  result = stat([v0 fileSystemRepresentation], &v2);
  if (!result)
  {
    return strncpy(DYGetLegacyCapturePath(void)::libPath, [v0 fileSystemRepresentation], 0x400uLL);
  }

  return result;
}

char *DYGetCapturePathForLibrary(char *a1, uint64_t a2, const char *a3, const char *a4, const char *a5)
{
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:{objc_msgSend(@"/", "stringByAppendingPathComponent:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", a2, a4, a5))}];
  result = stat([v7 fileSystemRepresentation], &v10);
  if (!result)
  {
    result = strncpy(a1, [v7 fileSystemRepresentation], 0x400uLL);
  }

  if (!*a1)
  {
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:{objc_msgSend(@"/", "stringByAppendingPathComponent:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", a3))}];
    result = stat([v9 fileSystemRepresentation], &v10);
    if (!result)
    {
      return strncpy(a1, [v9 fileSystemRepresentation], 0x400uLL);
    }
  }

  return result;
}

uint64_t DYModifyEnvironmentForDualCaptureSupport(uint64_t result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (sGTMTLCaptureMode == 2)
  {
    v17 = v7;
    v18 = v6;
    v19 = v5;
    v11 = result;
    v12 = MEMORY[0x277CCACA8];
    DYGetCapturePathForLibrary(&DYGetCapturePath(void)::libPath, "/System/Library/PrivateFrameworks/GPUToolsCapture.framework/GPUToolsCapture", "/usr/lib/libMTLCapture.dylib", a4, a5);
    v13 = [v12 stringWithUTF8String:&DYGetCapturePath(void)::libPath];
    v14 = MEMORY[0x277CCACA8];
    DYGetLegacyCapturePath();
    [v11 setObject:objc_msgSend(v14 forKeyedSubscript:{"stringWithUTF8String:", DYGetLegacyCapturePath(void)::libPath), @"GPUTOOLS_LEGACY_INTERPOSER_PATH"}];
    [v11 setObject:v13 forKeyedSubscript:@"DYMTL_TOOLS_DYLIB_PATH"];
    v15 = [v11 objectForKey:@"DYLD_INSERT_LIBRARIES"];
    if (!v15)
    {
      v15 = &stru_2860A9480;
    }

    v16 = [(__CFString *)v15 dy_appendComponentsString:v13 usingSeparator:@":" unique:1, v8, v17, v18, v19, v9];

    return [v11 setObject:v16 forKey:@"DYLD_INSERT_LIBRARIES"];
  }

  return result;
}

uint64_t DYAppendInsertLibrary(void *a1, uint64_t a2)
{
  v4 = [a1 objectForKey:@"DYLD_INSERT_LIBRARIES"];
  if (!v4)
  {
    v4 = &stru_2860A9480;
  }

  v5 = [(__CFString *)v4 dy_appendComponentsString:a2 usingSeparator:@":" unique:1];

  return [a1 setObject:v5 forKey:@"DYLD_INSERT_LIBRARIES"];
}

void *DYGetInterposeDylibHandle(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = a1;
  v6 = 1;
  v7 = DYGetMTLInterposeDylibPath(a1, a2, a3, a4, a5);
  do
  {
    v8 = v6;
    result = dlopen(v7, v5);
    if (result)
    {
      break;
    }

    v6 = 0;
    v7 = "/usr/lib/libglInterpose.dylib";
  }

  while ((v8 & 1) != 0);
  return result;
}

void DYPrependInsertLibrary(void *a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [a1 objectForKey:@"DYLD_INSERT_LIBRARIES"];
    [a1 setObject:a2 forKey:@"DYLD_INSERT_LIBRARIES"];
    v4 = [a1 objectForKey:@"DYLD_INSERT_LIBRARIES"];
    if (!v4)
    {
      v4 = &stru_2860A9480;
    }

    [a1 setObject:-[__CFString dy_appendComponentsString:usingSeparator:unique:](v4 forKey:{"dy_appendComponentsString:usingSeparator:unique:", v5, @":", 1), @"DYLD_INSERT_LIBRARIES"}];
  }
}

void *DYSetBlockPointer(void *aBlock, const void **a2)
{
  if (!a2)
  {
    DYSetBlockPointer_cold_1();
  }

  if (*a2)
  {
    _Block_release(*a2);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void DYLogv(int a1, const char *a2, va_list a3)
{
  v4 = 0;
  vasprintf(&v4, a2, a3);
  _log_asl(a1, v4);
  free(v4);
}

void _log_asl(int a1, uint64_t a2)
{
  if (_log_asl_aslc_once != -1)
  {
    _log_asl_cold_1();
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___log_asl_block_invoke_2;
  v5[3] = &__block_descriptor_44_e5_v8__0l;
  if (a1 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a1;
  }

  v6 = v4;
  v5[4] = a2;
  dispatch_sync(_log_asl_log_queue, v5);
}

void _DYOLog(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = objc_opt_class();
  v14 = [v12 initWithFormat:@"<%@: %p>: %@", NSStringFromClass(v13), a1, a3];
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v14 arguments:&a9];
  _log_asl(a2, [v15 UTF8String]);
}

void _DYOCondLog(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = objc_opt_class();
    v14 = [v12 initWithFormat:@"<%@: %p>: %@", NSStringFromClass(v13), a2, a4];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v14 arguments:&a9];
    _log_asl(a3, [v15 UTF8String]);
  }
}

asl_object_t ___log_asl_block_invoke()
{
  _log_asl_log_queue = dispatch_queue_create("com.apple.gt.log", 0);
  _log_asl_log_stderr = getenv("GT_LOG_TO_STDERR") != 0;
  result = asl_open(0, 0, 2u);
  _log_asl_aslc = result;
  return result;
}

uint64_t ___log_asl_block_invoke_2(uint64_t a1)
{
  result = asl_log(_log_asl_aslc, 0, *(a1 + 40), "%s", *(a1 + 32));
  if (_log_asl_log_stderr == 1)
  {
    return fprintf(*MEMORY[0x277D85DF8], "%s\n", *(a1 + 32));
  }

  return result;
}

uint64_t DYFSFileExists(uint64_t a1)
{
  v3 = 0;
  v1 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  return v1 & (v3 ^ 1u);
}

uint64_t DYFSDirectoryExists(uint64_t a1)
{
  v3 = 0;
  v1 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  return (v1 & v3);
}

uint64_t DYFSCreateTempFileURL(uint64_t a1, uint64_t a2, __CFString *a3, uint64_t a4, uint64_t *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  if (!a3)
  {
    a3 = &stru_2860A9480;
  }

  v11 = [(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:[(__CFString *)a3 stringByAppendingString:@"XXXXXX"]];
  CFStringGetFileSystemRepresentation(v11, buffer, 1024);
  v12 = mkstemp(buffer);
  if (v12 == -1)
  {
    if (a5)
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      result = 0;
      *a5 = v15;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  close(v12);
  v13 = [v10 stringWithFileSystemRepresentation:buffer length:strlen(buffer)];
  if (![v10 removeItemAtPath:v13 error:a5])
  {
    goto LABEL_13;
  }

  if (a1)
  {
    if ([v10 createDirectoryAtPath:v13 withIntermediateDirectories:0 attributes:0 error:a5])
    {
      v13 = [v13 stringByAppendingPathComponent:a1];
      goto LABEL_8;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (a2)
  {
    v13 = [v13 stringByAppendingPathExtension:a2];
  }

  result = [MEMORY[0x277CBEBC0] fileURLWithPath:v13 isDirectory:a4];
LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

NSUInteger DYFSCreateDirectory(uint64_t a1, NSSearchPathDirectory directory, void *a3)
{
  v8 = 0;
  v5 = NSSearchPathForDirectoriesInDomains(directory, 1uLL, 1);
  result = [(NSArray *)v5 count];
  if (result)
  {
    v7 = [-[NSArray objectAtIndex:](v5 objectAtIndex:{0), "stringByAppendingPathComponent:", a1}];
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v8)
    {
      result = 0;
      if (a3)
      {
        *a3 = v8;
      }
    }

    else
    {
      return [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:1];
    }
  }

  return result;
}

void *DYFSCanWriteAtURL(void *result)
{
  if (result)
  {
    result = [result URLByDeletingLastPathComponent];
    if (result)
    {
      return (access([objc_msgSend(result "path")], 2) == 0);
    }
  }

  return result;
}

const char *GTMessageKindAsString(int a1)
{
  if (a1 <= 1791)
  {
    if (a1 > 1029)
    {
      switch(a1)
      {
        case 1536:
          v1 = "kDYMessageInferiorLaunched";
          break;
        case 1537:
          v1 = "kDYMessageInferiorSignalInterposeSemaphore";
          break;
        case 1538:
          v1 = "kDYMessageGuestAppCSSignature";
          break;
        case 1539:
          v1 = "kDYMessageGuestAppTimebase";
          break;
        case 1540:
          v1 = "kDYMessageGuestAppInvalidateSavePointerAliases";
          break;
        case 1541:
          v1 = "kDYMessageGuestAppProfilingData";
          break;
        case 1542:
          v1 = "kDYMessageGuestAppGLContextsInfo";
          break;
        case 1543:
          v1 = "kDYMessageGuestAppCADisplayLinkEvent";
          break;
        case 1544:
          v1 = "kDYMessageGuestAppMultitaskingSuspensionState";
          break;
        case 1545:
          v1 = "kDYMessageGuestAppLockGraphics";
          break;
        case 1546:
          v1 = "kDYMessageGuestAppUnlockGraphics";
          break;
        case 1547:
          v1 = "kDYMessageGuestAppMTLCommandQueuesInfo";
          break;
        case 1548:
          v1 = "kDYMessageGuestAppMTLCommandBuffersCaptured";
          break;
        case 1549:
          v1 = "kDYMessageGuestAppMTLCaptureScopesInfo";
          break;
        case 1550:
          v1 = "kDYMessageGuestAppCAMetalLayersInfo";
          break;
        case 1551:
          v1 = "kDYMessageGuestAppMTLDevicesInfo";
          break;
        default:
          if (a1 != 1030)
          {
            goto LABEL_60;
          }

          v1 = "kDYGenerateShaderDebuggerTrace";
          break;
      }

      return v1;
    }

    if (a1 > 266)
    {
      if (a1 > 1024)
      {
        if (a1 <= 1026)
        {
          if (a1 == 1025)
          {
            return "kDYMessageFetchResourceList";
          }

          else
          {
            return "kDYMessageFetchResourceObject";
          }
        }

        else if (a1 == 1027)
        {
          return "kDYMessageFetchState";
        }

        else if (a1 == 1028)
        {
          return "kDYMessageUpdateResourceObject";
        }

        else
        {
          return "kDYMessageClearResourceOverrides";
        }
      }

      if (a1 <= 511)
      {
        if (a1 == 267)
        {
          return "kDYMessageCaptureSentAllMetadata";
        }

        if (a1 == 271)
        {
          return "kDYMessageCaptureDataChunk";
        }
      }

      else
      {
        switch(a1)
        {
          case 512:
            return "kDYMessageBreakpoint";
          case 513:
            return "kDYMessageBreakpointContinue";
          case 1024:
            return "kDYMessageCurrentDrawFramebufferImage";
        }
      }
    }

    else
    {
      if (a1 > 261)
      {
        if (a1 <= 263)
        {
          if (a1 == 262)
          {
            return "kDYMessageCaptureDataReferenceCounts";
          }

          else
          {
            return "kDYMessageCaptureSentAllData";
          }
        }

        else if (a1 == 264)
        {
          return "kDYMessageCaptureActivateSession";
        }

        else if (a1 == 265)
        {
          return "kDYMessageCaptureInvalidateSession";
        }

        else
        {
          return "kDYMessageCaptureSentUsedData";
        }
      }

      if (a1 <= 257)
      {
        if (a1 == 256)
        {
          return "kDYMessageCaptureStart";
        }

        if (a1 == 257)
        {
          return "kDYMessageCaptureStarted";
        }
      }

      else
      {
        switch(a1)
        {
          case 258:
            return "kDYMessageCaptureData";
          case 259:
            return "kDYMessageCaptureCreateAlias";
          case 260:
            return "kDYMessageCaptureStop";
        }
      }
    }

LABEL_60:
    v1 = GTMessageKindAsString_str();
    snprintf(v1, 0x40uLL, "Unrecognized message: %d", v2);
    return v1;
  }

  if (a1 <= 4095)
  {
    if (a1 <= 2303)
    {
      if (a1 <= 1793)
      {
        if (a1 == 1792)
        {
          return "kDYMessageTraceBufferedFstreamData";
        }

        else
        {
          return "kDYMessageTraceConfiguration";
        }
      }

      switch(a1)
      {
        case 1794:
          return "kDYMessageTraceOverridesConfiguration";
        case 1795:
          return "kDYMessageTraceFlushBuffers";
        case 1796:
          return "kDYMessageTraceModeChanged";
      }
    }

    else
    {
      if (a1 <= 2306)
      {
        if (a1 == 2304)
        {
          return "kDYMessageFSStreamInitializeTransfer";
        }

        if (a1 == 2305)
        {
          return "kDYMessageFSStreamInitializeTransferAck";
        }

        return "kDYMessageFSStreamItemData";
      }

      switch(a1)
      {
        case 2307:
          return "kDYMessageFSStreamFinishedSending";
        case 2308:
          return "kDYMessageFSStreamFinishedSendingAck";
        case 2309:
          return "kDYMessageFSStreamAbort";
      }
    }

    goto LABEL_60;
  }

  switch(a1)
  {
    case 4096:
      return "kDYMessageReplayerAppReady";
    case 4097:
    case 4123:
    case 4124:
    case 4125:
    case 4126:
    case 4127:
    case 4128:
      goto LABEL_60;
    case 4098:
      return "kDYMessageReplayerReplayArchive";
    case 4099:
      return "kDYMessageReplayerExperimentResult";
    case 4100:
      return "kDYMessageReplayerReplayFinished";
    case 4101:
      return "kDYMessageReplayerSetBackgroundImage";
    case 4102:
      return "kDYMessageReplayerDeleteAllArchives";
    case 4103:
      return "kDYMessageReplayerBeginDebugArchive";
    case 4104:
      return "kDYMessageReplayerEndDebugArchive";
    case 4105:
      return "kDYMessageReplayerDebugStatus";
    case 4106:
      return "kDYMessageReplayerDebugFuncStop";
    case 4107:
      return "kDYMessageReplayerDebugEnableWireframePresent";
    case 4108:
      return "kDYMessageReplayerDebugEnableDrawCallPresent";
    case 4109:
      return "kDYMessageReplayerDebugWireframeLineWidth";
    case 4110:
      return "kDYMessageReplayerDebugWireframeLineColor";
    case 4111:
      return "kDYMessageReplayerDebugDisableFunctions";
    case 4112:
      return "kDYMessageReplayerDebugEnableFunctions";
    case 4113:
      return "kDYMessageReplayerSetBackgroundImageData";
    case 4114:
      return "kDYMessageReplayerLoadArchives";
    case 4115:
      return "kDYMessageReplayerQueryLoadedArchivesInfo";
    case 4116:
      return "kDYMessageReplayerArchivesDirectoryPath";
    case 4117:
      return "kDYMessageReplayerQueryShaderInfo";
    case 4118:
      return "kDYMessageReplayerDerivedCounterData";
    case 4119:
      return "kDYMessageReplayerGenerateThumbnails";
    case 4120:
      return "kDYMessageReplayerGenerateDependencyGraphThumbnails";
    case 4121:
      return "kDYMessageFetchResourceObjectBatch";
    case 4122:
      return "kDYMessageReplayerDebugEnableOutlinePresent";
    case 4129:
      return "kGTMessageReplayerResourcesUsedForFunctionIndex";
    default:
      if (a1 == 4353)
      {
        v1 = "kGTMessageDiagnosticsReceivedData";
      }

      else
      {
        if (a1 != 4865)
        {
          goto LABEL_60;
        }

        v1 = "kGTMessageRunnablePID";
      }

      break;
  }

  return v1;
}

const char *GTResourceTypeAsString(uint64_t a1)
{
  if (a1 <= 21)
  {
    if (a1 == 1)
    {
      return "Texture";
    }

    if (a1 == 2)
    {
      return "Buffer";
    }
  }

  else
  {
    switch(a1)
    {
      case 22:
        return "Threadgroup buffer";
      case 24:
        return "Indirect command buffer";
      case 39:
        return "Rasterization rate map";
    }
  }

  return "Resource";
}

size_t DYIOSurfaceUtilsPlaneCount(__IOSurface *a1)
{
  result = IOSurfaceGetPlaneCount(a1);
  if (!result)
  {
    return IOSurfaceGetAllocSize(a1) != 0;
  }

  return result;
}

uint64_t DYIOSurfaceUtilsGetPlaneInfo@<X0>(__IOSurface *a1@<X0>, size_t a2@<X1>, size_t *a3@<X8>)
{
  a3[5] = 0;
  *a3 = a2;
  a3[2] = IOSurfaceGetHeightOfPlane(a1, a2);
  a3[1] = IOSurfaceGetWidthOfPlane(a1, a2);
  a3[3] = IOSurfaceGetBytesPerRowOfPlane(a1, a2);
  a3[4] = IOSurfaceGetBytesPerElementOfPlane(a1, a2);
  result = IOSurfaceGetPixelFormat(a1);
  *(a3 + 10) = result;
  if (result == 1647534392)
  {
    v7 = 4;
    if (a2)
    {
      v7 = 1;
    }

    a3[4] = v7;
  }

  return result;
}

size_t DYIOSurfaceUtilsPerPlaneInfo(__IOSurface *a1, uint64_t a2, uint64_t (*a3)(uint64_t, size_t *))
{
  result = DYIOSurfaceUtilsPlaneCount(a1);
  if (result)
  {
    v7 = result;
    for (i = 0; i != v7; ++i)
    {
      DYIOSurfaceUtilsGetPlaneInfo(a1, i, v9);
      result = a3(a2, v9);
    }
  }

  return result;
}

uint64_t DYIOSurfaceUtilsStorePlaneData(__IOSurface *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  v7[3] = a3;
  v7[0] = a1;
  v7[1] = a2;
  v8 = a4;
  BYTE1(v8) = a5;
  BYTE2(v8) = 1;
  v7[2] = 0;
  IOSurfaceLock(a1, 1u, 0);
  DYIOSurfaceUtilsPerPlaneInfo(a1, v7, StorePlaneData);
  return IOSurfaceUnlock(a1, 1u, 0);
}

void StorePlaneData()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v15 = *MEMORY[0x277D85DE8];
  if (*(v0 + 34) != 1 || *(v0 + 24) == *v1)
  {
    if (*(v0 + 32) == 1)
    {
      v4 = v1[4] * v1[1];
    }

    else
    {
      v4 = v1[3];
    }

    v5 = *(v0 + 8);
    v6 = *(v0 + 16);
    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(*v0, *v1);
    if (BaseAddressOfPlane)
    {
      v8 = BaseAddressOfPlane;
      if (*(v3 + 33))
      {
        v9 = v2[3];
        if (v9 <= 0x10000)
        {
          v10 = &v14;
        }

        else
        {
          v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
        }

        if (v2[2])
        {
          v12 = 0;
          do
          {
            memcpy(v10, &v8[v2[3] * v12], v2[3]);
            memcpy(&v5[v6], v10, v4);
            v6 += v4;
            ++v12;
          }

          while (v12 < v2[2]);
        }

        if (v2[3] > 0x10000)
        {
          free(v10);
        }
      }

      else if (v2[2])
      {
        v11 = 0;
        do
        {
          memcpy(&v5[v6], &v8[v2[3] * v11], v4);
          v6 += v4;
          ++v11;
        }

        while (v11 < v2[2]);
      }
    }

    else
    {
      bzero(v5, v2[2] * v4);
    }

    *(v3 + 16) = v6;
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t DYIOSurfaceUtilsStoreData(__IOSurface *a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v6[3] = 0;
  v6[1] = a2;
  v6[2] = 0;
  v6[0] = a1;
  v7 = a3;
  BYTE1(v7) = a4;
  IOSurfaceLock(a1, 1u, 0);
  DYIOSurfaceUtilsPerPlaneInfo(a1, v6, StorePlaneData);
  return IOSurfaceUnlock(a1, 1u, 0);
}

uint64_t DYGetGuestAppClient(int a1)
{
  if (g_init_guest_app_client_once != -1)
  {
    DYGetGuestAppClient_cold_1();
  }

  dispatch_sync(g_set_app_client[a1], &__block_literal_global_5);
  return g_app_client[a1];
}

void init_guest_app_client(void *a1)
{
  g_set_app_client = dispatch_queue_create(0, 0);
  dispatch_suspend(g_set_app_client);
  v1 = dispatch_queue_create(0, 0);
  qword_27F0880D0 = v1;

  dispatch_suspend(v1);
}

void DYSetGuestAppClient(int a1, uint64_t a2)
{
  if (g_init_guest_app_client_once != -1)
  {
    DYGetGuestAppClient_cold_1();
  }

  v4 = (&DYSetGuestAppClient::onceToken + 8 * a1);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __DYSetGuestAppClient_block_invoke;
  v5[3] = &unk_27930C9B8;
  v6 = a1;
  v5[4] = a2;
  if (*v4 != -1)
  {
    dispatch_once(v4, v5);
  }
}

void __DYSetGuestAppClient_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  g_app_client[v1] = *(a1 + 32);
  dispatch_resume(g_set_app_client[v1]);
}

uint64_t DYGetGlobalClientTransport(void *a1)
{
  if (g_init_guest_app_client_once != -1)
  {
    DYGetGuestAppClient_cold_1();
  }

  return [a1 valueForKey:@"transport"];
}

uint64_t DYGetGlobalTransportSource(void *a1)
{
  if (g_init_guest_app_client_once != -1)
  {
    DYGetGuestAppClient_cold_1();
  }

  return [a1 valueForKey:@"source"];
}

uint64_t DYDisableBufferSwaps(uint64_t a1)
{
  if (g_interpose_api_once != -1)
  {
    DYDisableBufferSwaps_cold_1();
  }

  v2 = g_interpose_api;

  return v2(a1);
}

uint64_t init_interpose_api(void *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = DYGetInterposeDylibHandle(272, a2, a3, a4, a5);
  if (!v5)
  {
    DYCheckGLDispatchTableSize_cold_2();
  }

  v6 = v5;
  g_interpose_api = dlsym(v5, "reset_graphics_timing");
  if (!g_interpose_api)
  {
    init_interpose_api();
  }

  g_interpose_api = dlsym(v6, "get_graphics_timing");
  if (!g_interpose_api)
  {
    init_interpose_api();
  }

  g_interpose_api = dlsym(v6, "get_profiling_data");
  if (!g_interpose_api)
  {
    init_interpose_api();
  }

  g_interpose_api = dlsym(v6, "get_all_per_function_profiling_data");
  if (!g_interpose_api)
  {
    init_interpose_api();
  }

  g_interpose_api = dlsym(v6, "disable_buffer_swaps");
  if (!g_interpose_api)
  {
    init_interpose_api();
  }

  return dlclose(v6);
}

uint64_t DYResetGraphicsTiming()
{
  if (g_interpose_api_once != -1)
  {
    DYDisableBufferSwaps_cold_1();
  }

  v1 = g_interpose_api;

  return v1();
}

uint64_t DYGetGraphicsTiming(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (g_interpose_api_once != -1)
  {
    DYDisableBufferSwaps_cold_1();
  }

  v6 = g_interpose_api;

  return v6(a1, a2, a3);
}

uint64_t DYGetProfilingData()
{
  if (g_interpose_api_once != -1)
  {
    DYDisableBufferSwaps_cold_1();
  }

  v1 = g_interpose_api;

  return v1();
}

uint64_t DYGetAllPerFunctionProfilingData()
{
  if (g_interpose_api_once != -1)
  {
    DYDisableBufferSwaps_cold_1();
  }

  v1 = g_interpose_api;

  return v1();
}

void sub_24D67B0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x253030980](v3, 0x10B0C40F47DA5FCLL);
  GPUTools::FD::IFunctionDecoder::~IFunctionDecoder(va);
  _Unwind_Resume(a1);
}

uint64_t DYCADisplayLinkInterposeInit(DYGuestAppClient *a1)
{
  if (DYCADisplayLinkInterposeInit(DYGuestAppClient *)::onceToken != -1)
  {
    DYCADisplayLinkInterposeInit();
  }

  v2 = _appClients;

  return [v2 addObject:a1];
}

void ___Z28DYCADisplayLinkInterposeInitP16DYGuestAppClient_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v6[1] = sel__initWithDisplayLink_;
  v6[2] = &o_CADisplayLink_initWithDisplayLink;
  v6[3] = CADisplayLink_initWithDisplayLink;
  v6[4] = objc_opt_class();
  v6[5] = sel__initWithDisplayLinkItem_;
  v6[6] = &o_CADisplayLink_initWithDisplayLink;
  v6[7] = CADisplayLink_initWithDisplayLink;
  v6[8] = objc_opt_class();
  v6[9] = sel_setFrameInterval_;
  v6[10] = &o_CADisplayLink_setFrameInterval;
  v6[11] = CADisplayLink_setFrameInterval;
  v6[12] = objc_opt_class();
  v6[13] = sel_setPreferredFramesPerSecond_;
  v6[14] = &o_CADisplayLink_setPreferredFramesPerSecond;
  v6[15] = CADisplayLink_setPreferredFramesPerSecond;
  v6[16] = objc_opt_class();
  v6[17] = sel_addToRunLoop_forMode_;
  v6[18] = &o_CADisplayLink_addToRunLoopForMode;
  v6[19] = CADisplayLink_addToRunLoopForMode;
  v6[20] = objc_opt_class();
  v6[21] = sel_removeFromRunLoop_forMode_;
  v6[22] = &o_CADisplayLink_removeFromRunLoopForMode;
  v6[23] = CADisplayLink_removeFromRunLoopForMode;
  v6[24] = objc_opt_class();
  v6[25] = sel_invalidate;
  v6[26] = &o_CADisplayLink_invalidate;
  v6[27] = CADisplayLink_invalidate;
  v4 = 0;
  v5 = 0;
  __p = 0;
  std::vector<GPUTools::Interpose::DYObjCMethodOverride>::__init_with_size[abi:ne200100]<GPUTools::Interpose::DYObjCMethodOverride const*,GPUTools::Interpose::DYObjCMethodOverride const*>(&__p, v6, &v7, 7uLL);
  GPUTools::Interpose::DYInstallObjCMethodOverrides(&__p);
  v0 = objc_opt_class();
  ClassMethod = class_getClassMethod(v0, sel_displayLinkWithDisplay_target_selector_);
  if (!ClassMethod)
  {
    __assert_rtn("void DYCADisplayLinkInterposeInit(DYGuestAppClient *)_block_invoke", "", 0, "method");
  }

  o_CADisplayLink_displayLinkWithDisplay_target_selector = method_setImplementation(ClassMethod, CADisplayLink_displayLinkWithDisplay_target_selector);
  _appClients = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_24D67B990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CADisplayLink *CADisplayLink_initWithDisplayLink(CADisplayLink *a1, objc_selector *a2, void *a3)
{
  v4 = o_CADisplayLink_initWithDisplayLink(a1, a2, a3);
  if (v4)
  {
    GPUTools::DYLockUtils::Lock(&sDisplayLinkIdentifierMapLock, v3);
    if (!spDisplayLinkIdentifierMap)
    {
      operator new();
    }

    v5 = ++_CreateCADisplayLinkIdentifierFor(CADisplayLink *)::sDisplayLinkIdentifier;
    v11[0] = v4;
    v11[2] = v11;
    std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(spDisplayLinkIdentifierMap, v11)[3] = v5;
    GPUTools::DYLockUtils::Unlock(&sDisplayLinkIdentifierMapLock, v6);
    IntervalDictionary = _GetIntervalDictionary(v4, v7);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZL33CADisplayLink_initWithDisplayLinkP13CADisplayLinkP13objc_selectorPv_block_invoke;
    v10[3] = &unk_27930C9E0;
    v10[4] = IntervalDictionary;
    [_appClients enumerateObjectsUsingBlock:v10];
  }

  return v4;
}

uint64_t CADisplayLink_setFrameInterval(CADisplayLink *a1, objc_selector *a2)
{
  o_CADisplayLink_setFrameInterval(a1, a2);
  IntervalDictionary = _GetIntervalDictionary(a1, v3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZL30CADisplayLink_setFrameIntervalP13CADisplayLinkP13objc_selectorl_block_invoke;
  v6[3] = &unk_27930C9E0;
  v6[4] = IntervalDictionary;
  return [_appClients enumerateObjectsUsingBlock:v6];
}

uint64_t CADisplayLink_setPreferredFramesPerSecond(CADisplayLink *a1, objc_selector *a2)
{
  o_CADisplayLink_setPreferredFramesPerSecond(a1, a2);
  IntervalDictionary = _GetIntervalDictionary(a1, v3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZL41CADisplayLink_setPreferredFramesPerSecondP13CADisplayLinkP13objc_selectorl_block_invoke;
  v6[3] = &unk_27930C9E0;
  v6[4] = IntervalDictionary;
  return [_appClients enumerateObjectsUsingBlock:v6];
}

uint64_t CADisplayLink_addToRunLoopForMode(CADisplayLink *a1, objc_selector *a2, NSRunLoop *a3, NSString *a4)
{
  o_CADisplayLink_addToRunLoopForMode(a1, a2);
  CADisplayLinkIdentifierFor = _GetCADisplayLinkIdentifierFor(a1, v7);
  v9 = MEMORY[0x277CBEAC0];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:CADisplayLinkIdentifierFor];
  v11 = [v9 dictionaryWithObjectsAndKeys:{&unk_2860B2058, @"event", v10, @"identifier", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", a3), @"runLoop", a4, @"mode", 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___ZL33CADisplayLink_addToRunLoopForModeP13CADisplayLinkP13objc_selectorP9NSRunLoopP8NSString_block_invoke;
  v13[3] = &unk_27930C9E0;
  v13[4] = v11;
  return [_appClients enumerateObjectsUsingBlock:v13];
}

uint64_t CADisplayLink_removeFromRunLoopForMode(CADisplayLink *a1, objc_selector *a2, NSRunLoop *a3, NSString *a4)
{
  o_CADisplayLink_removeFromRunLoopForMode(a1, a2);
  CADisplayLinkIdentifierFor = _GetCADisplayLinkIdentifierFor(a1, v7);
  v9 = MEMORY[0x277CBEAC0];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:CADisplayLinkIdentifierFor];
  v11 = [v9 dictionaryWithObjectsAndKeys:{&unk_2860B2070, @"event", v10, @"identifier", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", a3), @"runLoop", a4, @"mode", 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___ZL38CADisplayLink_removeFromRunLoopForModeP13CADisplayLinkP13objc_selectorP9NSRunLoopP8NSString_block_invoke;
  v13[3] = &unk_27930C9E0;
  v13[4] = v11;
  return [_appClients enumerateObjectsUsingBlock:v13];
}

uint64_t CADisplayLink_invalidate(CADisplayLink *a1, objc_selector *a2)
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{&unk_2860B2088, @"event", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", _GetCADisplayLinkIdentifierFor(a1, a2)), @"identifier", 0}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZL24CADisplayLink_invalidateP13CADisplayLinkP13objc_selector_block_invoke;
  v8[3] = &unk_27930C9E0;
  v8[4] = v4;
  [_appClients enumerateObjectsUsingBlock:v8];
  GPUTools::DYLockUtils::Lock(&sDisplayLinkIdentifierMapLock, v5);
  if (spDisplayLinkIdentifierMap)
  {
    v9 = a1;
    std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::__erase_unique<void *>(spDisplayLinkIdentifierMap, &v9);
  }

  GPUTools::DYLockUtils::Unlock(&sDisplayLinkIdentifierMapLock, v6);
  return o_CADisplayLink_invalidate(a1, a2);
}

uint64_t CADisplayLink_displayLinkWithDisplay_target_selector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [[DYDisplayLinkInterposer alloc] initWithTarget:a4 selector:a5];
  v9 = o_CADisplayLink_displayLinkWithDisplay_target_selector(a1, a2, a3, v8, sel_forwardDisplayLinkCallback_);

  return v9;
}

uint64_t _GetIntervalDictionary(CADisplayLink *a1, volatile int *a2)
{
  CADisplayLinkIdentifierFor = _GetCADisplayLinkIdentifierFor(a1, a2);
  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:CADisplayLinkIdentifierFor];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CADisplayLink preferredFramesPerSecond](a1, "preferredFramesPerSecond")}];
  return [v4 dictionaryWithObjectsAndKeys:{&unk_2860B2040, @"event", v5, @"identifier", v6, @"targetFPS", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", -[CADisplayLink frameInterval](a1, "frameInterval")), @"interval", 0}];
}

uint64_t ___ZL33CADisplayLink_initWithDisplayLinkP13CADisplayLinkP13objc_selectorPv_block_invoke(uint64_t a1, void *a2)
{
  v3 = [DYTransportMessage messageWithKind:1543 attributes:0 plistPayload:*(a1 + 32)];

  return [a2 sendMessage:v3];
}

void *std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

uint64_t _GetCADisplayLinkIdentifierFor(CADisplayLink *a1, volatile int *a2)
{
  GPUTools::DYLockUtils::Lock(&sDisplayLinkIdentifierMapLock, a2);
  if (spDisplayLinkIdentifierMap && (v7 = a1, (v4 = std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(spDisplayLinkIdentifierMap, &v7)) != 0))
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0;
  }

  GPUTools::DYLockUtils::Unlock(&sDisplayLinkIdentifierMapLock, v3);
  return v5;
}

void *std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

uint64_t ___ZL41CADisplayLink_setPreferredFramesPerSecondP13CADisplayLinkP13objc_selectorl_block_invoke(uint64_t a1, void *a2)
{
  v3 = [DYTransportMessage messageWithKind:1543 attributes:0 plistPayload:*(a1 + 32)];

  return [a2 sendMessage:v3];
}

uint64_t ___ZL30CADisplayLink_setFrameIntervalP13CADisplayLinkP13objc_selectorl_block_invoke(uint64_t a1, void *a2)
{
  v3 = [DYTransportMessage messageWithKind:1543 attributes:0 plistPayload:*(a1 + 32)];

  return [a2 sendMessage:v3];
}

uint64_t ___ZL33CADisplayLink_addToRunLoopForModeP13CADisplayLinkP13objc_selectorP9NSRunLoopP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = [DYTransportMessage messageWithKind:1543 attributes:0 plistPayload:*(a1 + 32)];

  return [a2 sendMessage:v3];
}

uint64_t ___ZL38CADisplayLink_removeFromRunLoopForModeP13CADisplayLinkP13objc_selectorP9NSRunLoopP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = [DYTransportMessage messageWithKind:1543 attributes:0 plistPayload:*(a1 + 32)];

  return [a2 sendMessage:v3];
}

uint64_t ___ZL24CADisplayLink_invalidateP13CADisplayLinkP13objc_selector_block_invoke(uint64_t a1, void *a2)
{
  v3 = [DYTransportMessage messageWithKind:1543 attributes:0 plistPayload:*(a1 + 32)];

  return [a2 sendMessage:v3];
}

uint64_t *std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::__erase_unique<void *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,unsigned long long>>>::__emplace_unique_key_args<_opaque_pthread_t *,std::piecewise_construct_t const&,std::tuple<_opaque_pthread_t *&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::vector<GPUTools::Interpose::DYObjCMethodOverride>::__init_with_size[abi:ne200100]<GPUTools::Interpose::DYObjCMethodOverride const*,GPUTools::Interpose::DYObjCMethodOverride const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<GPUTools::Interpose::DYObjCMethodOverride>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24D67CD98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<GPUTools::Interpose::DYObjCMethodOverride>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::Interpose::DYObjCMethodOverride>>(a1, a2);
  }

  std::vector<GPUTools::FB::Fbuf>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::Interpose::DYObjCMethodOverride>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t GPUTools::Interpose::DYInterposeThreadEntry(GPUTools::Interpose *this, void *a2)
{
  if (this >= 2)
  {
    GPUTools::Interpose::DYInterposeThreadEntry();
  }

  GPUTools::Interpose::DYInterposeCommonInit(*(&GPUTools::Interpose::g_context + this), this);
  return 0;
}

uint64_t GPUTools::Interpose::DYInitInterpose(GPUTools::Interpose *this, DYGuestAppClient *(*a2)(void))
{
  v2 = a2;
  v18 = *MEMORY[0x277D85DE8];
  v4 = getenv("GT_TRUE_BINARY");
  if (!v4 || (v5 = v4, MainBundle = CFBundleGetMainBundle(), v7 = CFBundleCopyExecutableURL(MainBundle), CFURLGetFileSystemRepresentation(v7, 1u, buffer, 1024), CFRelease(v7), fprintf(*MEMORY[0x277D85DF8], "true_binary=%s\npath=%s\n", v5, buffer), result = strcmp(buffer, v5), !result))
  {
    unsetenv("DYLD_INSERT_LIBRARIES");
    v9 = getenv("GT_CWD");
    if (v9)
    {
      chdir(v9);
    }

    if (GPUTools::Interpose::DYInitInterpose(DYGuestAppClient * (*)(void),int)::onceToken != -1)
    {
      GPUTools::Interpose::DYInitInterpose();
    }

    GPUTools::Interpose::g_context[v2] = this;
    __dmb(0xBu);
    pthread_attr_init(buffer);
    pthread_attr_setdetachstate(buffer, 2);
    v16 = 0;
    pthread_create(&v16, buffer, GPUTools::Interpose::DYInterposeThreadEntry, v2);
    pthread_attr_destroy(buffer);
    v10 = DYGetGuestAppClient(v2);
    v11 = DYGetGlobalClientTransport(v10);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (result = [v11 deferred], (result & 1) == 0))
    {
      do
      {
        v12 = DYGetGuestAppClient(v2);
        result = [DYGetGlobalClientTransport(v12) invalid];
        if (result)
        {
          break;
        }

        v13 = GPUTools::Interpose::gInterposeSemaphore;
        v14 = dispatch_time(0, 2000000000);
        result = dispatch_semaphore_wait(v13, v14);
      }

      while (result);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

dispatch_semaphore_t ___ZN8GPUTools9Interpose15DYInitInterposeEPFP16DYGuestAppClientvEi_block_invoke()
{
  result = dispatch_semaphore_create(0);
  GPUTools::Interpose::gInterposeSemaphore = result;
  return result;
}

DYError *DYErrorFromDictionary(void *a1)
{
  result = [a1 objectForKey:@"error domain"];
  if (result)
  {
    v3 = result;
    v4 = [objc_msgSend(a1 objectForKey:{@"error code", "integerValue"}];
    v5 = [a1 objectForKey:@"error description"];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v5 forKey:*MEMORY[0x277CCA450]];

    return [DYError errorWithDomain:v3 code:v4 userInfo:v6];
  }

  return result;
}

void *DYDictionaryFromError(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = MEMORY[0x277CBEAC0];
    v3 = [result domain];
    return [v2 dictionaryWithObjectsAndKeys:{v3, @"error domain", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v1, "code")), @"error code", objc_msgSend(v1, "localizedDescription"), @"error description", 0}];
  }

  return result;
}

uint64_t DYErrorIsTransportError(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 code];
  if ((v2 - 31) >= 0xA && (v2 & 0xFFFFFFFFFFFFFF00) != 0x100)
  {
    return 0;
  }

  v4 = [a1 domain];

  return [v4 isEqualToString:@"DYErrorDomain"];
}

__CFString *_StringForError(uint64_t a1)
{
  if (a1 > 255)
  {
    if (a1 > 1535)
    {
      if (a1 > 4351)
      {
        if (a1 <= 4609)
        {
          if (a1 > 4607)
          {
            if (a1 == 4608)
            {
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find the specified username and host (%ld)", 4608];
            }

            else
            {
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Specified remote machine is not available. Please make sure to login with specified user (%ld)", 4609];
            }
          }

          if (a1 == 4352)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"Shader profiler failed due to an internal error (%ld)", 4352];
          }

          if (a1 == 4353)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"Shader profiler does not support multi-context captures (%ld)", 4353];
          }
        }

        else
        {
          if (a1 <= 4611)
          {
            if (a1 == 4610)
            {
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find the target path provided (%ld)", 4610];
            }

            else
            {
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot authenticate SSH, make sure the authentication is done right (%ld)", 4611];
            }
          }

          switch(a1)
          {
            case 4612:
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find Xcode.app on the remote machine. Please make sure that Xcode.app is in the Applications folder (%ld)", 4612];
            case 4613:
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Metal.framework is not available on the remote machine (%ld)", 4613];
            case 4614:
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Missing environment variables, please make sure all the required environment variables are enabled (%ld)", 4614];
          }
        }
      }

      else if (a1 <= 2048)
      {
        if (a1 > 1792)
        {
          if (a1 == 1793)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"guest app session error (%ld)", 1793];
          }

          if (a1 == 2048)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"already replaying (%ld)", 2048];
          }
        }

        else
        {
          if (a1 == 1536)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"position does not exist in archive (%ld)", 1536];
          }

          if (a1 == 1792)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"no data (%ld)", 1792];
          }
        }
      }

      else if (a1 <= 2304)
      {
        if (a1 == 2049)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"no loaded archives (%ld)", 2049];
        }

        if (a1 == 2304)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"no resource streamer (%ld)", 2304];
        }
      }

      else
      {
        switch(a1)
        {
          case 2305:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"no archive data (%ld)", 2305];
          case 2306:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"no thumbnail support (%ld)", 2306];
          case 4096:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create core symbolicator (%ld)", 4096];
        }
      }
    }

    else if (a1 > 514)
    {
      if (a1 <= 518)
      {
        if (a1 > 516)
        {
          if (a1 == 517)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"GL dispatch table mismatch (%ld)", 517];
          }

          else
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"inferior and host session ids mismatch (%ld)", 518];
          }
        }

        else if (a1 == 515)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"capture session activation failed (%ld)", 515];
        }

        else
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"inferior already running (%ld)", 516];
        }
      }

      if (a1 <= 1024)
      {
        if (a1 == 519)
        {
          return @"Device connection lost.";
        }

        if (a1 == 1024)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"truncated data (%ld)", 1024];
        }
      }

      else
      {
        switch(a1)
        {
          case 1025:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"invalid transport message payload (%ld)", 1025];
          case 1026:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"unexpected transport message (%ld)", 1026];
          case 1280:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"invalid function stream header (%ld)", 1280];
        }
      }
    }

    else
    {
      if (a1 <= 259)
      {
        if (a1 > 257)
        {
          if (a1 == 258)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"transport source cancelled (%ld)", 258];
          }

          else
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"corrupt transport message header (%ld)", 259];
          }
        }

        else if (a1 == 256)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"invalid socket descriptor (%ld)", 256];
        }

        else
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"invalid socket url (%ld)", 257];
        }
      }

      if (a1 > 511)
      {
        if (a1 == 512)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"guest app crashed (%ld)", 512];
        }

        if (a1 == 513)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"another capture session is active (%ld)", 513];
        }

        return [MEMORY[0x277CCACA8] stringWithFormat:@"capture session is already active (%ld)", 514];
      }

      if (a1 == 260)
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"corrupt transport message attributes (%ld)", 260];
      }

      if (a1 == 261)
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"message too large (%ld)", 261];
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 1:
      return [MEMORY[0x277CCACA8] stringWithFormat:@"invalid filename (%ld)", 1];
    case 2:
      return [MEMORY[0x277CCACA8] stringWithFormat:@"data is too large (%ld)", 2];
    case 3:
      return [MEMORY[0x277CCACA8] stringWithFormat:@"IO failure (%ld)", 3];
    case 4:
      return [MEMORY[0x277CCACA8] stringWithFormat:@"out of memory (%ld)", 4];
    case 5:
      v2 = MEMORY[0x277CCACA8];
      v3 = 5;
      goto LABEL_90;
    case 6:
      v2 = MEMORY[0x277CCACA8];
      v3 = 6;
LABEL_90:
      result = [v2 stringWithFormat:@"Unable to connect to the device. (%ld)", v3];
      break;
    case 7:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"read-only capture archive (%ld)", 7];
      break;
    case 8:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"truncated capture archive store (%ld)", 8];
      break;
    case 9:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"truncated capture archive index (%ld)", 9];
      break;
    case 10:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid capture archive index (%ld)", 10];
      break;
    case 11:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown capture archive index version (%ld)", 11];
      break;
    case 12:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"file exists in capture archive (%ld)", 12];
      break;
    case 13:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"file does not exists in capture archive (%ld)", 13];
      break;
    case 14:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"capture archive does not exist (%ld)", 14];
      break;
    case 15:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"missing capture archive index (%ld)", 15];
      break;
    case 16:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid capture archive metadata (%ld)", 16];
      break;
    case 18:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"corrupted capture archive store (%ld)", 18];
      break;
    case 19:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"could not write capture archive metadata (%ld)", 19];
      break;
    case 20:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"capture archive has been closed (%ld)", 20];
      break;
    case 21:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"already tried to launch guest app (%ld)", 21];
      break;
    case 22:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid launch dictionary (%ld)", 22];
      break;
    case 23:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"guest app not found (%ld)", 23];
      break;
    case 24:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"guest app launch timed out (%ld)", 24];
      break;
    case 25:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid guest app session (%ld)", 25];
      break;
    case 26:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"guest app has not been launched yet (%ld)", 26];
      break;
    case 28:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"did not find interpose dylib (%ld)", 28];
      break;
    case 29:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to launch guest app (%ld)", 29];
      break;
    case 30:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"guest app terminated (%ld)", 30];
      break;
    case 31:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"lost transport connection (%ld)", 31];
      break;
    case 32:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid transport (%ld)", 32];
      break;
    case 33:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"transport is not connected (%ld)", 33];
      break;
    case 34:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"message has already been sent (%ld)", 34];
      break;
    case 35:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"in-reply-to message has not been sent (%ld)", 35];
      break;
    case 36:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to encode message attributes (%ld)", 36];
      break;
    case 37:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"connect timed out (%ld)", 37];
      break;
    case 38:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"undefined socket path (%ld)", 38];
      break;
    case 39:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"socket path is too long (%ld)", 39];
      break;
    case 40:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"message originated from this transport (%ld)", 40];
      break;
    case 41:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"initialized function stream with immutable data but swapping is required (%ld)", 41];
      break;
    case 42:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"transfer refused (%ld)", 42];
      break;
    case 43:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"protocol error (%ld)", 43];
      break;
    case 44:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"path outside destination root (%ld)", 44];
      break;
    case 45:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"transfer aborted (%ld)", 45];
      break;
    case 46:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown item type (%ld)", 46];
      break;
    default:
      return 0;
  }

  return result;
}

unint64_t GPUTools::error::__init@<X0>(GPUTools::error *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = _StringForError(this);
  if (!v4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown error (%ld)", this];
  }

  v5 = [(__CFString *)v4 UTF8String];
  result = strlen(v5);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v5, result);
  }

  a2[v7] = 0;
  return result;
}

void GPUTools::FB::Decoder::EmitRichSemanticTypes(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *(a2 + 24);
  v6 = *v5;
  if (a4 <= 2)
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        if (v6 <= 878)
        {
          if (v6 > 233)
          {
            if (v6 != 234 && v6 != 238 && v6 != 247)
            {
              goto LABEL_75;
            }

LABEL_47:
            if (**(v5 + 72) >> 1 != 17008)
            {
              goto LABEL_75;
            }

            goto LABEL_48;
          }

          if (v6 != 141)
          {
            if (v6 != 217)
            {
              goto LABEL_75;
            }

            goto LABEL_57;
          }

LABEL_58:
          v9 = 29;
          goto LABEL_78;
        }

        v10 = 25;
        if (v6 <= 881)
        {
          if (v6 != 879 && v6 != 881)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }

        if (v6 == 882)
        {
          goto LABEL_47;
        }

        if (v6 != 885)
        {
          if (v6 != 920)
          {
            goto LABEL_75;
          }

          v9 = 24;
          goto LABEL_78;
        }

LABEL_74:
        *(a3 + 12) = v10;
        goto LABEL_75;
      }

      goto LABEL_19;
    }

    v10 = 29;
    if (v6 <= 468)
    {
      if (v6 > 139)
      {
        if (v6 <= 145)
        {
          if (v6 == 140)
          {
            goto LABEL_74;
          }

          if (v6 == 143)
          {
            goto LABEL_26;
          }
        }

        else if (v6 == 146 || v6 == 382 || v6 == 384)
        {
          goto LABEL_26;
        }
      }

      else if (v6 <= 35)
      {
        if (v6 == 2)
        {
          goto LABEL_48;
        }

        if (v6 == 10)
        {
          goto LABEL_26;
        }
      }

      else
      {
        switch(v6)
        {
          case 36:
LABEL_21:
            v9 = 20;
            goto LABEL_78;
          case 44:
            goto LABEL_48;
          case 139:
            goto LABEL_26;
        }
      }
    }

    else if (v6 <= 799)
    {
      switch(v6)
      {
        case 469:
          v9 = 21;
          goto LABEL_78;
        case 470:
          v9 = 22;
          goto LABEL_78;
        case 497:
          goto LABEL_74;
      }
    }

    else
    {
      if ((v6 - 800) <= 0x2D)
      {
        if (((1 << (v6 - 32)) & 0x3C0001800000) != 0)
        {
LABEL_26:
          v10 = 27;
          goto LABEL_74;
        }

        if (v6 == 800)
        {
          goto LABEL_48;
        }
      }

      if (v6 == 897)
      {
        v9 = 31;
        goto LABEL_78;
      }
    }

    if ((v6 - 386) > 0x1F)
    {
      goto LABEL_75;
    }

LABEL_48:
    v10 = 32;
    goto LABEL_74;
  }

  if (a4 != 3)
  {
    if (a4 == 4)
    {
      if (v6 != 865)
      {
        if (v6 != 240)
        {
          goto LABEL_75;
        }

        v7 = **(v5 + 120);
        if (v7 != 36048 && v7 != 36051)
        {
          return;
        }

        goto LABEL_58;
      }

      v9 = 23;
LABEL_78:
      *(a3 + 12) = v9;
      return;
    }

LABEL_19:
    if (a4 != 9 || v6 != 28)
    {
      goto LABEL_75;
    }

    goto LABEL_21;
  }

  if (v6 > 860)
  {
    if ((v6 - 861) > 0x18)
    {
      goto LABEL_75;
    }

    v11 = 1 << (v6 - 93);
    if ((v11 & 0xA03) == 0)
    {
      if ((v11 & 0x1040000) == 0)
      {
        goto LABEL_75;
      }

      v10 = 26;
      goto LABEL_74;
    }

    goto LABEL_45;
  }

  if ((v6 - 598) < 4 || (v6 - 294) < 2)
  {
LABEL_45:
    if (**(v5 + 96) != 34892)
    {
      goto LABEL_75;
    }

    v10 = 29;
    goto LABEL_74;
  }

  if (v6 == 216)
  {
LABEL_57:
    v9 = 17;
    goto LABEL_78;
  }

LABEL_75:
  if (a4 && (v6 & 0xFFFFFFFE) == 0x1A)
  {
    v9 = 28;
    goto LABEL_78;
  }

  if (a4)
  {
    v9 = 17;
    if (v6 == 78 || v6 == 131 || a4 != 1 && v6 == 79)
    {
      goto LABEL_78;
    }
  }

  if (a5 == 1 && v6 == 235)
  {
    v9 = 30;
    goto LABEL_78;
  }
}

void GPUTools::FB::Decoder::DecodeArguments(unint64_t a1, uint64_t a2, char *a3, int a4, uint64_t a5)
{
  v5 = a5;
  v6 = a2;
  v7 = a1;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  __endptr = a3;
  v13 = *(a2 + 16);
  v91 = 0;
  v89 = a1;
  while (1)
  {
    v14 = 0;
    v15 = *a3;
    if (v15 <= 0x3F)
    {
      break;
    }

    if (v15 != 64)
    {
      if (v15 == 117)
      {
        v16 = 1;
      }

      else
      {
        if (v15 != 99)
        {
          v25 = 0;
          goto LABEL_23;
        }

        v16 = 0;
        v14 = 1;
      }

      v25 = v14;
      v26 = *++a3;
      v15 = v26;
      __endptr = a3;
      v14 = v16;
      goto LABEL_23;
    }

    v22 = v9;
    v23 = v13;
    __endptr = a3 + 1;
    a1 = strtoul(a3 + 1, &__endptr, 10);
    v91 = a1;
    v24 = v5 + 24 * v12;
    *(v24 + 22) = 1;
    if (a1 >= 0x10000)
    {
      GPUTools::FB::Decoder::DecodeArguments();
    }

    v10 = 0;
    *(v24 + 20) = a1;
    v11 = 1;
    v8 = &v91;
    v7 = v89;
    v13 = v23;
    v9 = v22;
LABEL_209:
    a3 = __endptr;
  }

  if (*a3 > 0x39u)
  {
    if (v15 != 60)
    {
      v25 = 0;
      if (v15 == 58)
      {
        dy_abort("url list decoding is no longer supported");
      }

LABEL_23:
      if (v11)
      {
        v86 = v25;
        v27 = v15 - 65;
        if (v15 - 65 > 0x37 || ((1 << v27) & 0xCCA93A01BFFDBFLL) == 0)
        {
          v78 = v15;
LABEL_252:
          dy_abort("unknown format character: '%c' (in '%s')\n", v78, a3);
        }

        v82 = &v13[v9];
        v83 = v9;
        v28 = v5 + 24 * v12;
        v84 = (v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v85 = v15;
        v29 = 1;
        v87 = v13;
        v88 = v12;
        do
        {
          v30 = &v13[v9];
          switch(v27)
          {
            case 0u:
            case 1u:
            case 4u:
            case 5u:
            case 7u:
            case 8u:
            case 0xAu:
            case 0xBu:
            case 0xEu:
            case 0x10u:
            case 0x11u:
            case 0x13u:
            case 0x17u:
            case 0x24u:
              LOBYTE(v14) = 1;
              goto LABEL_29;
            case 2u:
            case 0xDu:
            case 0xFu:
            case 0x2Fu:
              LOBYTE(v14) = 1;
              goto LABEL_43;
            case 3u:
            case 0xCu:
            case 0x18u:
            case 0x33u:
              LOBYTE(v14) = 1;
              goto LABEL_37;
            case 0x21u:
              if (v14)
              {
                v46 = 2;
              }

              else
              {
                v46 = 1;
              }

              *(v28 + 8) = v46;
              v47 = *&v8[4 * v10];
              v9 += v47;
              *&v8[4 * v10] = v9 - v47;
              break;
            case 0x23u:
              if (v7[13])
              {
                v45 = ((v30 + 3) & 0xFFFFFFFFFFFFFFFCLL);
              }

              else
              {
                v45 = &v13[v9];
              }

              v35 = *&v8[4 * v10];
              if (v7[12] == 1 && v35)
              {
                v53 = *&v8[4 * v10];
                do
                {
                  *v45 = bswap64(*v45);
                  ++v45;
                  --v53;
                }

                while (v53);
              }

              v37 = 10;
              goto LABEL_50;
            case 0x25u:
            case 0x2Du:
              if (v7[13])
              {
                v30 = (v30 + 3) & 0xFFFFFFFFFFFFFFFCLL;
              }

              LODWORD(v31) = *&v8[4 * v10];
              if (v7[12] == 1 && v31)
              {
                v51 = 0;
                do
                {
                  *(v30 + 4 * v51) = bswap32(*(v30 + 4 * v51));
                  ++v51;
                  v31 = *&v8[4 * v10];
                }

                while (v51 < v31);
              }

              v32 = 9;
              goto LABEL_35;
            case 0x28u:
            case 0x37u:
LABEL_29:
              if (v7[13])
              {
                v30 = (v30 + 3) & 0xFFFFFFFFFFFFFFFCLL;
              }

              LODWORD(v31) = *&v8[4 * v10];
              if (v7[12] == 1 && v31)
              {
                v48 = 0;
                do
                {
                  *(v30 + 4 * v48) = bswap32(*(v30 + 4 * v48));
                  ++v48;
                  v31 = *&v8[4 * v10];
                }

                while (v48 < v31);
              }

              if (v14)
              {
                v32 = 6;
              }

              else
              {
                v32 = 5;
              }

LABEL_35:
              *(v28 + 8) = v32;
              v9 += (4 * v31);
              v33 = v9 - 4 * v31;
              goto LABEL_51;
            case 0x2Bu:
LABEL_37:
              if (v7[13])
              {
                v34 = ((v30 + 3) & 0xFFFFFFFFFFFFFFFCLL);
              }

              else
              {
                v34 = &v13[v9];
              }

              v35 = *&v8[4 * v10];
              if (v7[12] == 1 && v35)
              {
                v49 = *&v8[4 * v10];
                do
                {
                  *v34 = bswap64(*v34);
                  ++v34;
                  --v49;
                }

                while (v49);
              }

              v36 = (v14 & 1) == 0;
              v37 = 11;
              goto LABEL_48;
            case 0x32u:
              if (v7[13])
              {
                v42 = ((v30 + 1) & 0xFFFFFFFFFFFFFFFELL);
              }

              else
              {
                v42 = &v13[v9];
              }

              v43 = *&v8[4 * v10];
              if (v7[12] == 1 && v43)
              {
                v52 = *&v8[4 * v10];
                do
                {
                  *v42 = bswap32(*v42) >> 16;
                  v42 += 2;
                  --v52;
                }

                while (v52);
              }

              if (v14)
              {
                v44 = 4;
              }

              else
              {
                v44 = 3;
              }

              *(v28 + 8) = v44;
              v9 += (2 * v43);
              *&v8[4 * v10] = v9 - 2 * v43;
              v29 = 2;
              break;
            case 0x36u:
LABEL_43:
              if (v7[13])
              {
                v38 = ((v30 + 3) & 0xFFFFFFFFFFFFFFFCLL);
              }

              else
              {
                v38 = &v13[v9];
              }

              v35 = *&v8[4 * v10];
              if (v7[12] == 1 && v35)
              {
                v50 = *&v8[4 * v10];
                do
                {
                  *v38 = bswap64(*v38);
                  ++v38;
                  --v50;
                }

                while (v50);
              }

              v36 = (v14 & 1) == 0;
              v37 = 7;
LABEL_48:
              if (!v36)
              {
                ++v37;
              }

LABEL_50:
              *(v28 + 8) = v37;
              v9 += (8 * v35);
              v33 = v9 - 8 * v35;
LABEL_51:
              *&v8[4 * v10] = v33;
              v29 = 4;
              break;
            default:
              *(v28 + 8) = 13;
              *(v28 + 22) |= 0x40u;
              v39 = v7[13];
              if (v39)
              {
                v29 = 4;
                v30 = v84;
              }

              v40 = *(v30 + 4 * (*&v8[4 * v10] - 1));
              a1 = strlen((v40 + v30));
              if (v39)
              {
                v41 = a1 + 1;
              }

              else
              {
                v41 = (a1 & 0xFFFFFFFC) + 4;
              }

              v9 += (v40 + v41);
              v6 = a2;
              v12 = v88;
              v7 = v89;
              v13 = v87;
              v15 = v85;
              break;
          }

          ++v10;
          --v11;
        }

        while (v11);
        v54 = v7[13];
        if (v54 == 1)
        {
          v13 = ((&v82[v29 - 1] & -v29) - v83);
        }

        v5 = a5;
        v25 = v86;
LABEL_158:
        if (!v54)
        {
          goto LABEL_159;
        }

        goto LABEL_160;
      }

      v55 = v5 + 24 * v12;
      *(v55 + 20) = 1;
      switch(v15)
      {
        case 'A':
        case 'B':
        case 'E':
        case 'F':
        case 'H':
        case 'I':
        case 'K':
        case 'L':
        case 'O':
        case 'Q':
        case 'R':
        case 'T':
        case 'X':
        case 'e':
          v14 = 1;
          goto LABEL_110;
        case 'C':
        case 'N':
        case 'P':
        case 'p':
          v14 = 1;
          goto LABEL_144;
        case 'D':
        case 'M':
        case 'Y':
        case 't':
          v14 = 1;
          goto LABEL_150;
        case 'S':
        case 'U':
        case 'V':
          *(v55 + 8) = 13;
          if (v6[1] - v13 + v6[2] >= 4uLL && *v13 == -1)
          {
            *v55 = 0;
            v9 = 8;
            goto LABEL_161;
          }

          v70 = v15;
          v71 = v13;
          a1 = strlen(v13);
          v7 = v89;
          if (v89[13])
          {
            v9 = a1 + 1;
            v13 = v71;
            v15 = v70;
            goto LABEL_160;
          }

          v9 = (a1 & 0xFFFFFFFFFFFFFFFCLL) + 4;
          v29 = 1;
          v13 = v71;
          v15 = v70;
          break;
        case 'b':
          if (v14)
          {
            v73 = 2;
          }

          else
          {
            v73 = 1;
          }

          *(v55 + 8) = v73;
          v54 = v7[13];
          v29 = 1;
          v9 = 1;
          goto LABEL_158;
        case 'd':
          v54 = v7[13];
          if (v7[13])
          {
            v13 = ((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v7[12] == 1)
          {
            *v13 = bswap64(*v13);
          }

          v63 = 10;
          goto LABEL_157;
        case 'f':
        case 'n':
          v54 = v7[13];
          if (v7[13])
          {
            v13 = ((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v7[12] == 1)
          {
            *v13 = bswap32(*v13);
          }

          v56 = 9;
          goto LABEL_117;
        case 'i':
        case 'x':
LABEL_110:
          v54 = v7[13];
          if (v7[13])
          {
            v13 = ((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v7[12] == 1)
          {
            *v13 = bswap32(*v13);
          }

          if (v14)
          {
            v56 = 6;
          }

          else
          {
            v56 = 5;
          }

LABEL_117:
          *(v55 + 8) = v56;
          v29 = 4;
          v9 = 4;
          goto LABEL_158;
        case 'l':
LABEL_150:
          v54 = v7[13];
          if (v7[13])
          {
            v13 = ((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v7[12] == 1)
          {
            *v13 = bswap64(*v13);
          }

          v62 = v14 == 0;
          v63 = 11;
          goto LABEL_155;
        case 's':
          v54 = v7[13];
          if (v7[13])
          {
            v13 = ((v13 + 1) & 0xFFFFFFFFFFFFFFFELL);
          }

          if (v7[12] == 1)
          {
            *v13 = bswap32(*v13) >> 16;
          }

          if (v14)
          {
            v72 = 4;
          }

          else
          {
            v72 = 3;
          }

          *(v55 + 8) = v72;
          v29 = 2;
          v9 = 2;
          goto LABEL_158;
        case 'w':
LABEL_144:
          v54 = v7[13];
          if (v7[13])
          {
            v13 = ((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v7[12] == 1)
          {
            *v13 = bswap64(*v13);
          }

          v62 = v14 == 0;
          v63 = 7;
LABEL_155:
          if (!v62)
          {
            ++v63;
          }

LABEL_157:
          *(v55 + 8) = v63;
          v29 = 4;
          v9 = 8;
          goto LABEL_158;
        default:
          v78 = v15;
          goto LABEL_252;
      }

LABEL_159:
      if ((&v13[v29 - 1] & -v29) == v13)
      {
LABEL_160:
        *(v5 + 24 * v12) = v13;
      }

      else
      {
        v74 = v13;
        v75 = v15;
        *(v5 + 24 * v12) = GPUTools::AlignmentBuffer::CopyAndAlign((v6 + 4), v13, v9, v29);
        v90 = v5 + 24 * v12;
        std::vector<void **>::push_back[abi:ne200100]((v6 + 8), &v90);
        v15 = v75;
        v13 = v74;
        v7 = v89;
      }

LABEL_161:
      switch(v15)
      {
        case 'A':
          v64 = v5 + 24 * v12;
          v65 = 45;
          goto LABEL_201;
        case 'B':
          v64 = v5 + 24 * v12;
          v65 = 37;
          goto LABEL_201;
        case 'C':
          v64 = v5 + 24 * v12;
          v65 = 15;
          goto LABEL_201;
        case 'D':
        case 'H':
          v64 = v5 + 24 * v12;
          v65 = 40;
          goto LABEL_201;
        case 'E':
          v64 = v5 + 24 * v12;
          v65 = 46;
          goto LABEL_201;
        case 'F':
          v64 = v5 + 24 * v12;
          v65 = 38;
          goto LABEL_201;
        case 'I':
          v64 = v5 + 24 * v12;
          v65 = 42;
          goto LABEL_201;
        case 'K':
          v64 = v5 + 24 * v12;
          v65 = 44;
          goto LABEL_201;
        case 'L':
          v64 = v5 + 24 * v12;
          v65 = 36;
          goto LABEL_201;
        case 'M':
        case 'O':
          v64 = v5 + 24 * v12;
          v65 = 41;
          goto LABEL_201;
        case 'N':
        case 'e':
        case 'n':
          v64 = v5 + 24 * v12;
          v65 = 18;
          goto LABEL_201;
        case 'P':
          v64 = v5 + 24 * v12;
          v65 = 47;
          goto LABEL_201;
        case 'Q':
          v64 = v5 + 24 * v12;
          v65 = 43;
          goto LABEL_201;
        case 'R':
          v64 = v5 + 24 * v12;
          v65 = 35;
          goto LABEL_201;
        case 'S':
          v64 = v5 + 24 * v12;
          v65 = 14;
          goto LABEL_201;
        case 'T':
          v64 = v5 + 24 * v12;
          v65 = 34;
          goto LABEL_201;
        case 'U':
          v67 = v5 + 24 * v12;
          *(v67 + 12) = 0;
          v68 = *(v67 + 22) | 8;
          goto LABEL_190;
        case 'V':
          v67 = v5 + 24 * v12;
          *(v67 + 12) = 12;
          v68 = *(v67 + 22) | 0x10;
LABEL_190:
          *(v67 + 22) = v68;
          goto LABEL_202;
        case 'X':
          v64 = v5 + 24 * v12;
          v65 = 39;
          goto LABEL_201;
        case 'Y':
          v64 = v5 + 24 * v12;
          v65 = 33;
          goto LABEL_201;
        case 'b':
        case 'd':
        case 'f':
        case 'i':
        case 'l':
        case 's':
        case 'w':
          v64 = v5 + 24 * v12;
          v65 = *(v64 + 8);
          goto LABEL_201;
        case 'p':
        case 't':
          v64 = v5 + 24 * v12;
          v65 = 13;
          goto LABEL_201;
        case 'x':
          v64 = v5 + 24 * v12;
          v65 = 19;
LABEL_201:
          *(v64 + 12) = v65;
LABEL_202:
          if (v7[14] == 1)
          {
            v69 = v13;
            GPUTools::FB::Decoder::EmitRichSemanticTypes(a1, v6, v5 + 24 * v12, v12, a4);
            v13 = v69;
            v7 = v89;
          }

          if (v25)
          {
            *(v5 + 24 * v12 + 22) |= 4u;
          }

          *(v5 + 24 * v12 + 16) = v9;
          v13 += v9;
          if (v6[1] < &v13[-v6[2]])
          {
            GPUTools::FB::Decoder::DecodeArguments();
          }

          ++__endptr;
          if (++v12 >= 0x11u)
          {
            GPUTools::FB::Decoder::DecodeArguments();
          }

          v9 = 0;
          v11 = 0;
          break;
        default:
          dy_abort("unknown format character: '%c' (in '%s')\n", v15, __endptr);
      }

      goto LABEL_209;
    }

    v19 = 0;
    v20 = a3[1];
    __endptr = a3 + 1;
    if (v20 == 117)
    {
      v21 = 1;
    }

    else
    {
      if (v20 != 99)
      {
        v58 = a3 + 1;
        v57 = 0;
LABEL_122:
        if (v20 <= 107)
        {
          if (v20 > 101)
          {
            if (v20 == 102)
            {
              v60 = 9;
            }

            else
            {
              if (v20 != 105)
              {
                goto LABEL_248;
              }

              if (v19)
              {
                v60 = 6;
              }

              else
              {
                v60 = 5;
              }
            }
          }

          else if (v20 == 98)
          {
            if (v19)
            {
              v60 = 2;
            }

            else
            {
              v60 = 1;
            }
          }

          else
          {
            if (v20 != 100)
            {
              goto LABEL_248;
            }

            v60 = 10;
          }

          goto LABEL_176;
        }

        if (v20 > 115)
        {
          if (v20 == 116)
          {
            v60 = 13;
LABEL_176:
            v66 = v5 + 24 * v12;
            *(v66 - 12) = v60;
            if (v57)
            {
              *(v66 - 2) |= 4u;
            }

            __endptr = v58 + 2;
            goto LABEL_209;
          }

          if (v20 != 119)
          {
LABEL_248:
            dy_abort("unknown or invalid format character: '%c' (in '%s')\n", v20, v58);
          }

          v61 = v19 == 0;
          v60 = 7;
        }

        else if (v20 == 108)
        {
          v61 = v19 == 0;
          v60 = 11;
        }

        else
        {
          if (v20 != 115)
          {
            goto LABEL_248;
          }

          v61 = v19 == 0;
          v60 = 3;
        }

        if (!v61)
        {
          ++v60;
        }

        goto LABEL_176;
      }

      v21 = 0;
      v19 = 1;
    }

    v57 = v19;
    v59 = a3[2];
    v58 = a3 + 2;
    v20 = v59;
    __endptr = v58;
    v19 = v21;
    goto LABEL_122;
  }

  if (v15 == 35)
  {
    __endptr = a3 + 1;
    v17 = v13;
    a1 = strtoul(a3 + 1, &__endptr, 10);
    v7 = v89;
    v11 = a1;
    if (v89[13])
    {
      v13 = ((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    }

    else
    {
      v13 = v17;
    }

    if (v89[12] != 1)
    {
      goto LABEL_13;
    }

    if (a1)
    {
      v76 = a1;
      v77 = v13;
      do
      {
        *v77 = bswap32(*v77);
        ++v77;
        --v76;
      }

      while (v76);
LABEL_13:
      v18 = v12;
      *(v5 + 24 * v12 + 22) = 2;
      if (a1 >= 0x10000)
      {
        GPUTools::FB::Decoder::DecodeArguments();
      }
    }

    else
    {
      v18 = v12;
      *(v5 + 24 * v12 + 22) = 2;
    }

    v10 = 0;
    *(v5 + 24 * v18 + 20) = a1;
    v9 += 4 * a1;
    v8 = v13;
    goto LABEL_209;
  }

  v25 = 0;
  if (*a3)
  {
    goto LABEL_23;
  }

  if (!a4)
  {
    *(v6[3] + 10) = v12;
  }

  v6[2] = (v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

void std::vector<void **>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<GPUTools::FB::Fbuf>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t GPUTools::FB::Decoder::Decoder(uint64_t result, int a2, char a3)
{
  *result = &unk_2860A8EF0;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 14) = 1;
  if (a2 >= 5)
  {
    dy_abort("unknown or unsupported fbuf version: %d", a2);
  }

  *(result + 13) = a2 == 4;
  return result;
}

void GPUTools::FB::Decoder::DecodeHeader(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if ((v3 - 3) >= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = *(a2 + 8);
        if (v4 <= 0x17)
        {
          GPUTools::FB::Decoder::DecodeHeader();
        }

        v13 = *(a2 + 16);
        v9 = *v13;
        if (*(a1 + 12))
        {
          v9 = bswap32(v9);
          *v13 = v9;
          v23 = vrev32_s8(*(v13 + 4));
          *(v13 + 4) = v23;
          v16 = bswap32(*(v13 + 12));
          *(v13 + 12) = v16;
          v17 = bswap64(*(v13 + 16));
          *(v13 + 16) = v17;
          v14 = v23.i32[1];
          v15 = v23.i32[0];
        }

        else
        {
          v15 = *(v13 + 4);
          v14 = *(v13 + 8);
          v16 = *(v13 + 12);
          v17 = *(v13 + 16);
        }

        *(a2 + 88) = v9;
        *(a2 + 92) = v15;
        *(a2 + 104) = v17;
        *(a2 + 112) = v16;
        *(a2 + 96) = 0;
        *(a2 + 120) = v14;
        v8 = v13 + 24;
      }

      else
      {
        if (v3 != 2)
        {
          dy_abort("unknown or unsupported fbuf version: %d", *(a1 + 8));
        }

        v4 = *(a2 + 8);
        if (v4 <= 0x1B)
        {
          GPUTools::FB::Decoder::DecodeHeader();
        }

        v18 = *(a2 + 16);
        v9 = *v18;
        if (*(a1 + 12))
        {
          v9 = bswap32(v9);
          v19 = bswap32(*(v18 + 4));
          *v18 = v9;
          *(v18 + 4) = v19;
          v20 = vrev64q_s8(*(v18 + 8));
          *(v18 + 8) = v20;
          v21 = bswap32(*(v18 + 24));
          *(v18 + 24) = v21;
        }

        else
        {
          v19 = *(v18 + 4);
          v20 = *(v18 + 8);
          v21 = *(v18 + 24);
        }

        *(a2 + 88) = v9;
        *(a2 + 92) = v19;
        *(a2 + 104) = v20;
        *(a2 + 96) = 0;
        v8 = v18 + 28;
        *(a2 + 120) = v21;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v4 <= 0xB)
      {
        GPUTools::FB::Decoder::DecodeHeader();
      }

      v10 = *(a2 + 16);
      v9 = *v10;
      if (*(a1 + 12))
      {
        v9 = bswap32(v9);
        *v10 = v9;
        v22 = vrev32_s8(*(v10 + 4));
        *(v10 + 4) = v22;
        v11 = v22.i32[1];
        v12 = v22.i32[0];
      }

      else
      {
        v12 = *(v10 + 4);
        v11 = *(v10 + 8);
      }

      *(a2 + 88) = v9;
      *(a2 + 92) = v12;
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      *(a2 + 96) = 0;
      v8 = v10 + 12;
      *(a2 + 120) = v11;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    if (v4 <= 0x23)
    {
      GPUTools::FB::Decoder::DecodeHeader();
    }

    v5 = *(a2 + 16);
    if (*(a1 + 12) == 1)
    {
      GPUTools::FB::Decoder::DecodeHeader(*(a2 + 16));
    }

    v6 = *(v5 + 32);
    v7 = *(v5 + 16);
    *(a2 + 88) = *v5;
    *(a2 + 120) = v6;
    *(a2 + 104) = v7;
    v8 = v5 + 36;
    v9 = *(a2 + 88);
  }

  if (v4 < v9)
  {
    GPUTools::FB::Decoder::DecodeHeader();
  }

  *(a2 + 16) = v8;
}

void GPUTools::FB::Decoder::DecodeCore(unint64_t a1, uint64_t a2)
{
  GPUTools::FB::Decoder::DecodeHeader(a1, a2);
  v4 = *(a2 + 16);
  if (*(a1 + 8) <= 2)
  {
    v14 = strlen(*(a2 + 16));
    operator new[]();
  }

  v5 = strlen(v4);
  v6 = *(a2 + 8);
  v7 = (v5 & 0xFFFFFFFFFFFFFFFCLL) + *(a2 + 16) + 4;
  *(a2 + 16) = v7;
  v8 = *a2;
  if (v6 < v7 - *a2)
  {
    goto LABEL_7;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 120);
  v11 = *(a2 + 88);
  *v9 = *(a2 + 92);
  *(v9 + 4) = v10;
  *(v9 + 440) = v8;
  *(v9 + 432) = v11;
  GPUTools::FB::Decoder::DecodeArguments(a1, a2, v4, 0, v9 + 48);
  v12 = *(a2 + 16);
  if (*(a2 + 8) < &v12[-*a2])
  {
LABEL_7:
    __assert_rtn("void GPUTools::FB::Decoder::DecodeCore(DecodeJob &) const", "", 0, "job.capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr)");
  }

  v13 = *(a2 + 120);
  if ((v13 & 1) == 0)
  {
    if ((v13 & 0x40) == 0)
    {
      return;
    }

LABEL_13:
    *(*(a2 + 24) + 4) |= 6u;
    return;
  }

  if (*(a1 + 8) <= 2)
  {
    __src = *(a2 + 16);
    strlen(v12);
    operator new[]();
  }

  v15 = strlen(v12);
  v16 = *(a2 + 8);
  v17 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + *(a2 + 16) + 4;
  *(a2 + 16) = v17;
  if (v16 < v17 - *a2 || (GPUTools::FB::Decoder::DecodeArguments(a1, a2, v12, 1, *(a2 + 24) + 24), *(a2 + 8) < *(a2 + 16) - *a2))
  {
    __assert_rtn("void GPUTools::FB::Decoder::DecodeCore(DecodeJob &) const", "", 0, "job.capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr)");
  }

  if ((*(a2 + 120) & 0x40) != 0)
  {
    goto LABEL_13;
  }
}

void sub_24D67F920(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x253030960](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void GPUTools::FB::Decoder::FinalizeDecode(uint64_t a1, void *a2)
{
  v2 = a2[3];
  *(v2 + 448) = a2[4];
  *(v2 + 436) = a2[6];
  v3 = a2[8];
  v4 = a2[9];
  if (v3 != v4)
  {
    do
    {
      v5 = *v3++;
      *v5 += a2[4];
    }

    while (v3 != v4);
    v2 = a2[3];
  }

  if (*(v2 + 10) && *(v2 + 60) == 15 && *v2 != -8191 && *v2 != -8188)
  {
    *(v2 + 16) = **(v2 + 48);
  }
}

uint64_t GPUTools::FB::Decoder::GetEncodedSize(GPUTools::FB::Decoder *this, const void *a2, uint64_t a3)
{
  v7 = 0u;
  v8 = 64;
  __p = 0;
  v10 = 0u;
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a2;
  v6 = 0u;
  GPUTools::FB::Decoder::DecodeHeader(this, v5);
  v3 = v11;
  if (__p)
  {
    operator delete(__p);
  }

  return v3;
}

void sub_24D67FA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GPUTools::FB::Decoder::DecodeFlags(GPUTools::FB::Decoder *this, const void *a2, uint64_t a3)
{
  v7 = 0u;
  v8 = 64;
  __p = 0;
  v10 = 0u;
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a2;
  v6 = 0u;
  GPUTools::FB::Decoder::DecodeHeader(this, v5);
  v3 = v11;
  if (__p)
  {
    operator delete(__p);
  }

  return v3;
}

void sub_24D67FAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GPUTools::FB::Decoder::Decode(GPUTools::FB::Decoder *this, const void *a2, uint64_t a3, GPUTools::FD::CoreFunction *a4)
{
  if (!a2)
  {
    GPUTools::FB::Decoder::Decode();
  }

  if ((a2 & 3) != 0)
  {
    dy_abort("misaligned fbuf buffer: %p, required alignment=4", a2);
  }

  GPUTools::FD::CoreFunction::CoreFunction(v10);
  GPUTools::FD::CoreFunction::operator=(a4, v10);
  GPUTools::FD::CoreFunction::~CoreFunction(v10);
  memset(&v10[4], 0, 24);
  v10[7] = 64;
  v12 = 0;
  v13 = 0;
  __p = 0;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a2;
  v10[3] = a4;
  GPUTools::FB::Decoder::DecodeCore(this, v10);
  GPUTools::FB::Decoder::FinalizeDecode(v8, v10);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_24D67FB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GPUTools::FB::Decoder::Decode(GPUTools::FB::Decoder *this, char *a2, unint64_t a3, GPUTools::FD::Function *a4)
{
  if (!a2)
  {
    GPUTools::FB::Decoder::Decode();
  }

  if ((a2 & 3) != 0)
  {
    dy_abort("misaligned fbuf buffer: %p, required alignment=4", a2);
  }

  GPUTools::FD::Function::Function(&v45);
  GPUTools::FD::Function::operator=(a4, &v45);
  GPUTools::FD::Function::~Function(&v45);
  memset(v49, 0, 24);
  v49[3] = 64;
  v51 = 0;
  v52 = 0;
  __p = 0;
  v45 = a2;
  v46 = a3;
  __s = a2;
  v48 = a4;
  GPUTools::FB::Decoder::DecodeCore(this, &v45);
  *(a4 + 456) = v54;
  *(a4 + 64) = v53;
  if ((*(a4 + 4) & 8) != 0)
  {
    if (*(this + 2) <= 2)
    {
      v36 = __s;
      __s += (strlen(__s) & 0xFFFFFFFFFFFFFFFCLL) + 4;
      if (v46 < __s - v45)
      {
        __assert_rtn("virtual BOOL GPUTools::FB::Decoder::Decode(const void *, size_t, GPUTools::FD::Function &) const", "", 0, "job.capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr)");
      }

      GPUTools::FB::Decoder::DecodeArguments(this, &v45, v36, 8, v43);
      if (__s - v45 > a3)
      {
        __assert_rtn("virtual BOOL GPUTools::FB::Decoder::Decode(const void *, size_t, GPUTools::FD::Function &) const", "", 0, "capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr)");
      }

      *(a4 + 240) = v44;
      *(a4 + 59) = v43[0];
      if (*(v51 - 1) == v43)
      {
        *(v51 - 1) = a4 + 472;
      }
    }

    else
    {
      v10 = v45;
      v9 = v46;
      v11 = __s;
      if (v46 < __s - v45 + 8)
      {
        __assert_rtn("virtual BOOL GPUTools::FB::Decoder::Decode(const void *, size_t, GPUTools::FD::Function &) const", "", 0, "job.capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr) + backtrace_header_size");
      }

      v12 = *__s;
      *(a4 + 240) = *__s;
      v13 = *(v11 + 1);
      v14 = *(this + 12);
      if (v14 == 1)
      {
        v12 = bswap32(v12) >> 16;
        *(a4 + 240) = v12;
        v13 = bswap32(v13);
      }

      v15 = v11 + 8;
      __s = v11 + 8;
      if (v9 < v11 + 8 - v10 + 8 * v12)
      {
        __assert_rtn("virtual BOOL GPUTools::FB::Decoder::Decode(const void *, size_t, GPUTools::FD::Function &) const", "", 0, "job.capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr) + addresses_size");
      }

      v16 = 8 * v12;
      if (v13 == 4)
      {
        v17 = GPUTools::AlignmentBuffer::CopyAndAlign(v49, v15, 8 * v12, 8);
        v18 = v49[0];
        *(a4 + 59) = v17;
        v43[0] = a4 + 472;
        std::vector<void **>::push_back[abi:ne200100](&__p, v43);
        v19 = v17 + v18;
        v20 = *(a4 + 240);
        if (*(this + 12) == 1)
        {
          if (*(a4 + 240))
          {
            v41 = v20 - 1;
            do
            {
              *(v19 + 8 * v41) = bswap32(*(v19 + 4 * v41));
              v42 = v41-- + 1;
            }

            while (v42 > 1);
          }
        }

        else if (*(a4 + 240))
        {
          v21 = v20 - 1;
          do
          {
            *(v19 + 8 * v21) = *(v19 + 4 * v21);
            v22 = v21-- + 1;
          }

          while (v22 > 1);
        }
      }

      else
      {
        *(a4 + 59) = v15;
        if (v13 != 8)
        {
          dy_abort("unsupported backtrace pointer size: %u", v13);
        }

        if (v14 && v12)
        {
          v39 = v12 + 1;
          v40 = &v11[v16];
          do
          {
            *v40 = bswap64(*v40);
            --v40;
            --v39;
          }

          while (v39 > 1);
        }
      }

      __s += v16;
    }
  }

  v23 = *(a4 + 1);
  if ((v23 & 0x10) != 0)
  {
    if (*(this + 2) <= 2)
    {
      v37 = __s;
      __s += (strlen(__s) & 0xFFFFFFFFFFFFFFFCLL) + 4;
      if (v46 < __s - v45)
      {
        __assert_rtn("virtual BOOL GPUTools::FB::Decoder::Decode(const void *, size_t, GPUTools::FD::Function &) const", "", 0, "job.capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr)");
      }

      GPUTools::FB::Decoder::DecodeArguments(this, &v45, v37, 16, v43);
      if (__s - v45 > a3)
      {
        __assert_rtn("virtual BOOL GPUTools::FB::Decoder::Decode(const void *, size_t, GPUTools::FD::Function &) const", "", 0, "capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr)");
      }

      *(a4 + 241) = *v43[0];
      if (*(v51 - 1) == v43)
      {
        v51 -= 8;
      }

      v23 = *(a4 + 1);
      if ((v23 & 0x20) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    v24 = __s;
    if (v46 < __s - v45 + 4)
    {
      v38 = "job.capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr) + sizeof(uint32_t)";
      goto LABEL_54;
    }

    v25 = *__s;
    *(a4 + 241) = *__s;
    if (*(this + 12) == 1)
    {
      *(a4 + 241) = bswap32(v25) >> 16;
    }

    __s = v24 + 4;
  }

  if ((v23 & 0x20) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  v27 = v45;
  v26 = v46;
  v28 = __s;
  if (v46 < __s - v45 + 8)
  {
    v38 = "job.capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr) + (2 * sizeof(uint32_t))";
    goto LABEL_54;
  }

  v29 = *__s;
  if (*(this + 12))
  {
    v29 = bswap32(v29);
    v30 = bswap32(*(__s + 1));
    *__s = v29;
    *(v28 + 1) = v30;
  }

  else
  {
    v30 = *(__s + 1);
  }

  *(a4 + 121) = v29;
  v31 = v28 + 8;
  __s = v31;
  if (v26 < v31 - v27 + v30)
  {
    __assert_rtn("virtual BOOL GPUTools::FB::Decoder::Decode(const void *, size_t, GPUTools::FD::Function &) const", "", 0, "job.capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr) + events_size");
  }

  *(a4 + 61) = v31;
  *(a4 + 124) = v30;
  __s = &v31[v30];
  v23 = *(a4 + 1);
LABEL_30:
  if ((v23 & 0x400) == 0)
  {
    goto LABEL_35;
  }

  v32 = __s;
  if (v46 < __s - v45 + 12)
  {
    v38 = "job.capacity >= BUFFER_DELTA(job.fbuf, job.read_ptr) + (sizeof(uint64_t) + sizeof(uint32_t))";
LABEL_54:
    __assert_rtn("virtual BOOL GPUTools::FB::Decoder::Decode(const void *, size_t, GPUTools::FD::Function &) const", "", 0, v38);
  }

  v33 = *__s;
  *(a4 + 63) = *__s;
  v34 = *(v32 + 2);
  *(a4 + 125) = v34;
  if (*(this + 12) == 1)
  {
    *(a4 + 63) = bswap64(v33);
    *(a4 + 125) = bswap32(v34);
  }

  __s = v32 + 12;
LABEL_35:
  GPUTools::FB::Decoder::FinalizeDecode(v8, &v45);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_24D680180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPUTools::FB::Decoder::~Decoder(GPUTools::FB::Decoder *this)
{
  GPUTools::FD::IFunctionDecoder::~IFunctionDecoder(this);

  JUMPOUT(0x253030980);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t DYCALayerInterposeInit(DYGuestAppClient *a1)
{
  if (DYCALayerInterposeInit(DYGuestAppClient *)::onceToken != -1)
  {
    DYCALayerInterposeInit();
  }

  v2 = _appClients;

  return [v2 addObject:a1];
}

uint64_t CALayer_setTransform(CALayer *a1, objc_selector *a2, CATransform3D *a3)
{
  v4 = *&a3->m33;
  v10[4] = *&a3->m31;
  v10[5] = v4;
  v5 = *&a3->m43;
  v10[6] = *&a3->m41;
  v10[7] = v5;
  v6 = *&a3->m13;
  v10[0] = *&a3->m11;
  v10[1] = v6;
  v7 = *&a3->m23;
  v10[2] = *&a3->m21;
  v10[3] = v7;
  o_CALayer_setTransform(a1, a2, v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZL20CALayer_setTransformP7CALayerP13objc_selector13CATransform3D_block_invoke;
  v9[3] = &unk_27930C9E0;
  v9[4] = a1;
  return [_appClients enumerateObjectsUsingBlock:v9];
}

uint64_t CALayer_setSublayerTransform(CALayer *a1, objc_selector *a2, CATransform3D *a3)
{
  v4 = *&a3->m33;
  v10[4] = *&a3->m31;
  v10[5] = v4;
  v5 = *&a3->m43;
  v10[6] = *&a3->m41;
  v10[7] = v5;
  v6 = *&a3->m13;
  v10[0] = *&a3->m11;
  v10[1] = v6;
  v7 = *&a3->m23;
  v10[2] = *&a3->m21;
  v10[3] = v7;
  o_CALayer_setSublayerTransform(a1, a2, v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZL28CALayer_setSublayerTransformP7CALayerP13objc_selector13CATransform3D_block_invoke;
  v9[3] = &unk_27930C9E0;
  v9[4] = a1;
  return [_appClients enumerateObjectsUsingBlock:v9];
}

uint64_t DYOrderedDimensionsFromBounds(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  if (v1 >= v2)
  {
    v3 = *(result + 16);
  }

  else
  {
    v3 = *(result + 24);
  }

  if (v1 >= v2)
  {
    v4 = *(result + 24);
  }

  return result;
}

void DYEncodeCALayerTransforms(GPUTools::FB::Stream *a1, CALayer *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!*(gLayersSetPtr + 24))
  {
    goto LABEL_36;
  }

  memset(&v26, 0, 20);
  {
    v6 = getprogname();
    v7 = strlen(v6);
    std::string::__init(&v28, v6, v7);
    v8 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v28, "backboardd");
    if (SHIBYTE(v28.m13) < 0)
    {
      operator delete(*&v28.m11);
    }

    DYEncodeCALayerTransforms(GPUTools::FB::Stream *,CALayer *)::isBackboarddProg = v8;
  }

  {
    if (DYEncodeCALayerTransforms(GPUTools::FB::Stream *,CALayer *)::isBackboarddBundle)
    {
LABEL_5:
      v4 = 240.0;
      v5 = 320.0;
      goto LABEL_23;
    }
  }

  else if (DYEncodeCALayerTransforms(GPUTools::FB::Stream *,CALayer *)::isBackboarddProg)
  {
    DYEncodeCALayerTransforms(GPUTools::FB::Stream *,CALayer *)::isBackboarddBundle = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    if (DYEncodeCALayerTransforms(GPUTools::FB::Stream *,CALayer *)::isBackboarddBundle)
    {
      goto LABEL_5;
    }
  }

  else
  {
    DYEncodeCALayerTransforms(GPUTools::FB::Stream *,CALayer *)::isBackboarddBundle = 0;
  }

  v9 = NSClassFromString(&cfstr_Nsscreen.isa);
  v10 = NSClassFromString(&cfstr_Uiscreen.isa);
  if (v9)
  {
    v11 = [(objc_class *)v9 performSelector:sel_mainScreen];
    ([v11 methodForSelector:sel_frame])(v11, sel_frame);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_5;
    }

    v14 = [(objc_class *)v10 performSelector:sel_mainScreen];
    ([v14 methodForSelector:sel_bounds])(v14, sel_bounds);
  }

  if (v12 >= v13)
  {
    v5 = v12;
  }

  else
  {
    v5 = v13;
  }

  if (v12 >= v13)
  {
    v4 = v13;
  }

  else
  {
    v4 = v12;
  }

LABEL_23:
  v15 = *(gLayersSetPtr + 16);
  if (v15)
  {
    do
    {
      v16 = v15[2];
      if (!a2 || [v15[2] isDescendantOf:a2])
      {
        memset(&v28, 0, sizeof(v28));
        DYFinalLayerTransform(v16, &v28);
        v27 = v28;
        [(CALayer *)v16 bounds];
        if (v18 >= v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = v18;
        }

        if (v18 >= v19)
        {
          v21 = v18;
        }

        else
        {
          v21 = v19;
        }

        GPUTools::FB::Encode(&v26, 0xFFFFE009, 65540, "p@16ddd", v17, v16, &v27, v5 / v21, v4 / v20);
        GPUTools::FB::Stream::Write(a1, &v26, 1);
        [(CALayer *)v16 anchorPoint];
        v28.m11 = v22;
        [(CALayer *)v16 anchorPoint];
        v28.m12 = v23;
        GPUTools::FB::Encode(&v26, 0xFFFFE00BLL, 65540, "p@2d", v24, v16, &v28);
        GPUTools::FB::Stream::Write(a1, &v26, 1);
      }

      v15 = *v15;
    }

    while (v15);
    if (v26.var0.var0)
    {
      free(v26.var0.var0);
    }
  }

LABEL_36:
  v25 = *MEMORY[0x277D85DE8];
}

void sub_24D680A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void GPUTools::FB::Encode(char **this, GPUTools::FB::Fbuf *a2, int a3, uint64_t a4, const char *a5, ...)
{
  va_start(va, a5);
  va_copy(v11, va);
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v10, va);
  GPUTools::FB::Encode(this, a2, a3, a4, v10, v9);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v10);
}

void sub_24D680B64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void GPUTools::FB::Stream::Write(GPUTools::FB::Stream *this, Fbuf *a2, int a3)
{
  for (i = (this + 56); atomic_exchange(i, 1u) == 1; i = (this + 56))
  {
      ;
    }
  }

  GPUTools::FB::Stream::Write_nolock(this, a2, *a2->var0.var0, a3);
  atomic_store(0, this + 14);
}

CGFloat DYFinalLayerTransform@<D0>(CALayer *a1@<X0>, CATransform3D *a2@<X8>)
{
  v4 = MEMORY[0x277CD9DE8];
  v5 = *(MEMORY[0x277CD9DE8] + 80);
  *&a2->m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&a2->m33 = v5;
  v6 = v4[7];
  *&a2->m41 = v4[6];
  *&a2->m43 = v6;
  v7 = v4[1];
  *&a2->m11 = *v4;
  *&a2->m13 = v7;
  v8 = v4[3];
  *&a2->m21 = v4[2];
  *&a2->m23 = v8;
  v9 = a1;
  do
  {
    if (v9 != a1)
    {
      [(CALayer *)v9 anchorPoint];
      v11 = v10;
      [(CALayer *)v9 bounds];
      v13 = v12;
      [(CALayer *)v9 anchorPoint];
      v15 = v14;
      [(CALayer *)v9 bounds];
      v16 = -(v11 * v13);
      v18 = -(v15 * v17);
      [(CALayer *)v9 anchorPointZ];
      CATransform3DMakeTranslation(&v75, v16, v18, -v19);
      v20 = *&a2->m33;
      *&a.m31 = *&a2->m31;
      *&a.m33 = v20;
      v21 = *&a2->m43;
      *&a.m41 = *&a2->m41;
      *&a.m43 = v21;
      v22 = *&a2->m13;
      *&a.m11 = *&a2->m11;
      *&a.m13 = v22;
      v23 = *&a2->m23;
      *&a.m21 = *&a2->m21;
      *&a.m23 = v23;
      b = v75;
      CATransform3DConcat(a2, &a, &b);
    }

    v24 = *&a2->m33;
    *&b.m31 = *&a2->m31;
    *&b.m33 = v24;
    v25 = *&a2->m43;
    *&b.m41 = *&a2->m41;
    *&b.m43 = v25;
    v26 = *&a2->m13;
    *&b.m11 = *&a2->m11;
    *&b.m13 = v26;
    v27 = *&a2->m23;
    *&b.m21 = *&a2->m21;
    *&b.m23 = v27;
    if (v9)
    {
      [(CALayer *)v9 transform];
    }

    else
    {
      memset(&v79, 0, sizeof(v79));
    }

    CATransform3DConcat(&a, &b, &v79);
    v28 = *&a.m33;
    *&a2->m31 = *&a.m31;
    *&a2->m33 = v28;
    v29 = *&a.m43;
    *&a2->m41 = *&a.m41;
    *&a2->m43 = v29;
    v30 = *&a.m13;
    *&a2->m11 = *&a.m11;
    *&a2->m13 = v30;
    v31 = *&a.m23;
    *&a2->m21 = *&a.m21;
    *&a2->m23 = v31;
    if (v9 != a1)
    {
      v32 = *&a2->m33;
      *&b.m31 = *&a2->m31;
      *&b.m33 = v32;
      v33 = *&a2->m43;
      *&b.m41 = *&a2->m41;
      *&b.m43 = v33;
      v34 = *&a2->m13;
      *&b.m11 = *&a2->m11;
      *&b.m13 = v34;
      v35 = *&a2->m23;
      *&b.m21 = *&a2->m21;
      *&b.m23 = v35;
      if (v9)
      {
        [(CALayer *)v9 sublayerTransform];
      }

      else
      {
        memset(&v79, 0, sizeof(v79));
      }

      CATransform3DConcat(&a, &b, &v79);
      v36 = *&a.m33;
      *&a2->m31 = *&a.m31;
      *&a2->m33 = v36;
      v37 = *&a.m43;
      *&a2->m41 = *&a.m41;
      *&a2->m43 = v37;
      v38 = *&a.m13;
      *&a2->m11 = *&a.m11;
      *&a2->m13 = v38;
      v39 = *&a.m23;
      *&a2->m21 = *&a.m21;
      *&a2->m23 = v39;
    }

    [(CALayer *)v9 position];
    v41 = v40;
    [(CALayer *)v9 position];
    v43 = v42;
    [(CALayer *)v9 zPosition];
    CATransform3DMakeTranslation(&a, v41, v43, v44);
    v75 = a;
    v45 = *&a2->m33;
    *&b.m31 = *&a2->m31;
    *&b.m33 = v45;
    v46 = *&a2->m43;
    *&b.m41 = *&a2->m41;
    *&b.m43 = v46;
    v47 = *&a2->m13;
    *&b.m11 = *&a2->m11;
    *&b.m13 = v47;
    v48 = *&a2->m23;
    *&b.m21 = *&a2->m21;
    *&b.m23 = v48;
    v79 = a;
    CATransform3DConcat(&a, &b, &v79);
    v49 = *&a.m33;
    *&a2->m31 = *&a.m31;
    *&a2->m33 = v49;
    v50 = *&a.m43;
    *&a2->m41 = *&a.m41;
    *&a2->m43 = v50;
    v51 = *&a.m13;
    *&a2->m11 = *&a.m11;
    *&a2->m13 = v51;
    v52 = *&a.m23;
    *&a2->m21 = *&a.m21;
    *&a2->m23 = v52;
    v9 = [(CALayer *)v9 superlayer];
  }

  while (v9);
  v71 = *&a2->m21;
  v72 = *&a2->m23;
  v73 = *&a2->m31;
  v74 = *&a2->m33;
  v69 = *&a2->m11;
  v70 = *&a2->m13;
  m41 = a2->m41;
  m42 = a2->m42;
  v68 = *&a2->m43;
  v55 = NSClassFromString(&cfstr_Uiscreen.isa);
  if (v55)
  {
    v56 = [(objc_class *)v55 performSelector:sel_getUid("mainScreen")];
    v57 = [v56 performSelector:sel_getUid("coordinateSpace")];
    v58 = [v56 performSelector:sel_getUid("fixedCoordinateSpace")];
    Uid = sel_getUid("convertPoint:toCoordinateSpace:");
    v61 = fabs(([v57 methodForSelector:Uid])(v57, Uid, v58, 0.0, 0.0));
    if (v61 >= 0.001 && v61 >= fmax(v61, 0.0) * 0.001)
    {
      v64 = fabs(v60);
      if (v64 >= 0.001 && v64 >= fmax(v64, 0.0) * 0.001)
      {
        memset(&a, 0, sizeof(a));
        CATransform3DMakeRotation(&a, 3.14159265, 0.0, 0.0, 1.0);
        memset(&b, 0, sizeof(b));
        CATransform3DMakeTranslation(&b, -m41, -m42, 0.0);
        memset(&v79, 0, sizeof(v79));
        v65 = m41;
        v66 = m42;
        goto LABEL_23;
      }

      memset(&a, 0, sizeof(a));
      v63 = 1.57079633;
LABEL_22:
      CATransform3DMakeRotation(&a, v63, 0.0, 0.0, 1.0);
      memset(&b, 0, sizeof(b));
      CATransform3DMakeTranslation(&b, -m41, -m42, 0.0);
      memset(&v79, 0, sizeof(v79));
      v65 = m42;
      v66 = m41;
LABEL_23:
      CATransform3DMakeTranslation(&v79, v65, v66, 0.0);
      *&v77.m21 = v71;
      *&v77.m23 = v72;
      *&v77.m31 = v73;
      *&v77.m33 = v74;
      *&v77.m11 = v69;
      *&v77.m13 = v70;
      v77.m41 = m41;
      v77.m42 = m42;
      *&v77.m43 = v68;
      v76 = b;
      CATransform3DConcat(&v78, &v77, &v76);
      v77 = v78;
      v76 = a;
      CATransform3DConcat(&v78, &v77, &v76);
      v77 = v78;
      v76 = v79;
      CATransform3DConcat(&v78, &v77, &v76);
      v71 = *&v78.m21;
      v72 = *&v78.m23;
      v73 = *&v78.m31;
      v74 = *&v78.m33;
      v69 = *&v78.m11;
      v70 = *&v78.m13;
      m41 = v78.m41;
      m42 = v78.m42;
      v68 = *&v78.m43;
      goto LABEL_24;
    }

    v62 = fabs(v60);
    if (v62 >= 0.001 && v62 >= fmax(v62, 0.0) * 0.001)
    {
      memset(&a, 0, sizeof(a));
      v63 = -1.57079633;
      goto LABEL_22;
    }
  }

LABEL_24:
  *&a.m21 = v71;
  *&a.m23 = v72;
  *&a.m31 = v73;
  *&a.m33 = v74;
  *&a.m11 = v69;
  *&a.m13 = v70;
  *&b.m11 = v68;
  *&a2->m21 = v71;
  *&a2->m23 = v72;
  *&a2->m31 = v73;
  *&a2->m33 = v74;
  *&a2->m11 = v69;
  *&a2->m13 = v70;
  a2->m41 = m41;
  a2->m42 = m42;
  result = b.m11;
  *&a2->m43 = *&b.m11;
  return result;
}

void ___ZL20CALayer_setTransformP7CALayerP13objc_selector13CATransform3D_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 traceMode] >= 4 && objc_msgSend(a2, "traceMode") != 7)
  {
    v4 = [a2 defaultFbufStream];
    v5 = *(a1 + 32);

    DYEncodeCALayerTransforms(v4, v5);
  }
}

void ___ZL28CALayer_setSublayerTransformP7CALayerP13objc_selector13CATransform3D_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 traceMode] >= 4 && objc_msgSend(a2, "traceMode") != 7)
  {
    v4 = [a2 defaultFbufStream];
    v5 = *(a1 + 32);

    DYEncodeCALayerTransforms(v4, v5);
  }
}

void ___ZL19CALayer_setPositionP7CALayerP13objc_selector7CGPoint_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 traceMode] >= 4 && objc_msgSend(a2, "traceMode") != 7)
  {
    v4 = [a2 defaultFbufStream];
    v5 = *(a1 + 32);

    DYEncodeCALayerTransforms(v4, v5);
  }
}

void ___ZL22CALayer_setAnchorPointP7CALayerP13objc_selector7CGPoint_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 traceMode] >= 4 && objc_msgSend(a2, "traceMode") != 7)
  {
    v4 = [a2 defaultFbufStream];
    v5 = *(a1 + 32);

    DYEncodeCALayerTransforms(v4, v5);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_24D6820BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return [v26 countByEnumeratingWithState:&a17 objects:&a26 count:16];
}

void GPUTools::FB::EncodeStaticBacktrace(GPUTools::FB *this, GPUTools::FB::Fbuf *a2, unint64_t *a3)
{
  v3 = a3;
  v6 = *(this + 1);
  *(*this + 32) |= 8u;
  v7 = 8 * a3;
  v8 = v7 + 8;
  v9 = *this;
  v10 = v6 - v9;
  v11 = *(this + 4);
  v12 = v11 - (v6 - v9);
  if (v7 + 8 <= v12)
  {
    goto LABEL_2;
  }

  v19 = (v8 - v12 + 255) & 0xFFFFFF00;
  v20 = (v19 + v11);
  *(this + 4) = v20;
  if (v9)
  {
    v21 = reallocf(v9, v20);
    *this = v21;
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_10:
    dy_abort("failed to allocate fbuf buffer");
  }

  v21 = malloc_type_malloc((v19 + v11), 0xF962E99uLL);
  *this = v21;
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((v21 & 3) != 0)
  {
    dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v21, 4uLL);
  }

  v6 = &v21[v10];
  *(this + 1) = &v21[v10];
LABEL_2:
  bzero(v6, v7 + 8);
  v13 = *(this + 1);
  *v13 = v3;
  v13[1] = 8;
  memcpy(v13 + 2, a2, v7);
  v14 = *this;
  v15 = v8 + *(this + 1);
  *(this + 1) = v15;
  v16 = v15 - v14;
  *v14 = v16;
  v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = v17 - v16;
  if (v17 != v16)
  {
    GPUTools::FB::Fbuf::grow_advance(this, v17 - v16);
    **this += v18;
  }
}

void GPUTools::FB::Fbuf::grow(GPUTools::FB::Fbuf *this, size_t a2)
{
  v3 = *this;
  v4 = *(this + 1);
  v5 = v4 - v3;
  v6 = *(this + 4);
  v7 = v6 - (v4 - v3);
  if (a2 <= v7)
  {
    goto LABEL_2;
  }

  v8 = a2;
  v9 = (a2 - v7 + 255) & 0xFFFFFF00;
  v10 = (v9 + v6);
  v11 = this;
  *(this + 4) = v10;
  if (v3)
  {
    v12 = reallocf(v3, v10);
    *v11 = v12;
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_10:
    dy_abort("failed to allocate fbuf buffer");
  }

  v12 = malloc_type_malloc((v9 + v6), 0xF962E99uLL);
  *v11 = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((v12 & 3) != 0)
  {
    dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v12, 4uLL);
  }

  a2 = v8;
  v4 = &v12[v5];
  *(v11 + 1) = &v12[v5];
LABEL_2:

  bzero(v4, a2);
}

void GPUTools::FB::EncodeCurrentBacktrace(GPUTools::FB *this, GPUTools::FB::Fbuf *a2)
{
  v3 = *(this + 1);
  *(*this + 32) |= 8u;
  v4 = *this;
  v5 = v3 - v4;
  v6 = *(this + 4);
  v7 = v6 - (v3 - v4);
  if (v7 > 0x107)
  {
    goto LABEL_2;
  }

  v14 = (519 - v7) & 0x300;
  v15 = (v14 + v6);
  *(this + 4) = v15;
  if (v4)
  {
    v16 = reallocf(v4, v15);
    *this = v16;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_12:
    dy_abort("failed to allocate fbuf buffer");
  }

  v16 = malloc_type_malloc((v14 + v6), 0xF962E99uLL);
  *this = v16;
  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((v16 & 3) != 0)
  {
    dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v16, 4uLL);
  }

  v3 = &v16[v5];
  *(this + 1) = &v16[v5];
LABEL_2:
  *(v3 + 32) = 0;
  *(v3 + 14) = 0u;
  *(v3 + 15) = 0u;
  *(v3 + 12) = 0u;
  *(v3 + 13) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v8 = backtrace((*(this + 1) + 8), 32);
  if (v8 == 32)
  {
    GPUTools::FB::EncodeCurrentBacktrace(this, this + 8, &v17);
    v8 = v17;
  }

  v9 = *(this + 1);
  *v9 = v8;
  v9[1] = 8;
  v10 = &v9[2 * v8 + 2];
  *(this + 1) = v10;
  v11 = v10 - *this;
  **this = v11;
  v12 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = v12 - v11;
  if (v12 != v11)
  {
    GPUTools::FB::Fbuf::grow_advance(this, v12 - v11);
    **this += v13;
  }
}

void GPUTools::FB::EncodeGLError(GPUTools::FB *this, GPUTools::FB::Fbuf *a2)
{
  v2 = *(this + 1);
  *(*this + 32) |= 0x10u;
  v3 = *this;
  v4 = &v2[-*this];
  v5 = *(this + 4);
  if ((v5 - v4) > 3)
  {
    goto LABEL_2;
  }

  v11 = a2;
  v12 = (v5 + 256);
  v13 = this;
  *(this + 4) = v12;
  if (v3)
  {
    v14 = reallocf(v3, v12);
    *v13 = v14;
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_10:
    dy_abort("failed to allocate fbuf buffer");
  }

  v14 = malloc_type_malloc((v5 + 256), 0xF962E99uLL);
  *v13 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((v14 & 3) != 0)
  {
    dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v14, 4uLL);
  }

  this = v13;
  LODWORD(a2) = v11;
  v2 = &v14[v4];
  *(v13 + 1) = &v14[v4];
LABEL_2:
  *v2 = 0;
  v6 = *(this + 1);
  *v6++ = a2;
  *(this + 1) = v6;
  v7 = v6 - *this;
  **this = v7;
  v8 = (v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = v8 - v7;
  if (v8 != v7)
  {
    v10 = this;
    GPUTools::FB::Fbuf::grow_advance(this, v8 - v7);
    **v10 += v9;
  }
}

void GPUTools::FB::EncodePerfEvents(GPUTools::FB::Fbuf *a1, int a2, const void *a3, size_t a4)
{
  v8 = *(a1 + 1);
  *(*a1 + 32) |= 0x20u;
  v9 = a4 + 8;
  v10 = *a1;
  v11 = v8 - v10;
  v12 = *(a1 + 4);
  v13 = v12 - (v8 - v10);
  if (a4 + 8 <= v13)
  {
    goto LABEL_2;
  }

  v20 = a4 + 8;
  v21 = (v9 - v13 + 255) & 0xFFFFFF00;
  v22 = (v21 + v12);
  *(a1 + 4) = v22;
  if (v10)
  {
    v23 = reallocf(v10, v22);
    *a1 = v23;
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_10:
    dy_abort("failed to allocate fbuf buffer");
  }

  v23 = malloc_type_malloc((v21 + v12), 0xF962E99uLL);
  *a1 = v23;
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((v23 & 3) != 0)
  {
    dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v23, 4uLL);
  }

  v9 = v20;
  v8 = &v23[v11];
  *(a1 + 1) = &v23[v11];
LABEL_2:
  bzero(v8, v9);
  v14 = *(a1 + 1);
  *v14 = a2;
  v14[1] = a4;
  *(a1 + 1) = v14 + 2;
  memcpy(v14 + 2, a3, a4);
  v15 = *a1;
  v16 = *(a1 + 1) + a4;
  *(a1 + 1) = v16;
  v17 = v16 - v15;
  *v15 = v17;
  v18 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = v18 - v17;
  if (v18 != v17)
  {
    GPUTools::FB::Fbuf::grow_advance(a1, v18 - v17);
    **a1 += v19;
  }
}

void GPUTools::FB::EncodeGCDQueueInfo(GPUTools::FB *this, GPUTools::FB::Fbuf *a2, int a3)
{
  v3 = *(this + 1);
  *(*this + 32) |= 0x400u;
  v4 = *this;
  v5 = &v3[-*this];
  v6 = *(this + 4);
  if ((v6 - v5) > 0xB)
  {
    goto LABEL_2;
  }

  v12 = a2;
  v13 = a3;
  v14 = (267 - (v6 - v5)) & 0x100;
  v15 = (v14 + v6);
  v16 = this;
  *(this + 4) = v15;
  if (v4)
  {
    v17 = reallocf(v4, v15);
    *v16 = v17;
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_10:
    dy_abort("failed to allocate fbuf buffer");
  }

  v17 = malloc_type_malloc((v14 + v6), 0xF962E99uLL);
  *v16 = v17;
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((v17 & 3) != 0)
  {
    dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v17, 4uLL);
  }

  this = v16;
  a3 = v13;
  a2 = v12;
  v3 = &v17[v5];
  *(v16 + 1) = &v17[v5];
LABEL_2:
  *(v3 + 2) = 0;
  *v3 = 0;
  v7 = *(this + 1);
  *v7 = a2;
  *(v7 + 8) = a3;
  v7 += 12;
  *(this + 1) = v7;
  v8 = v7 - *this;
  **this = v8;
  v9 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = v9 - v8;
  if (v9 != v8)
  {
    v11 = this;
    GPUTools::FB::Fbuf::grow_advance(this, v9 - v8);
    **v11 += v10;
  }
}

GPUTools::FB::Fbuf *GPUTools::FB::EncodeCurrentGCDQueueInfo(GPUTools::FB *this, GPUTools::FB::Fbuf *a2)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
  if (v2)
  {
    v3 = 0;
    v4 = *(MEMORY[0x277D85D80] + 16);
    if (v4 > 3)
    {
      if (v4 == 4 || v4 == 8)
      {
        v3 = *(v2 + *(MEMORY[0x277D85D80] + 14));
      }
    }

    else if (v4 == 1)
    {
      v3 = *(v2 + *(MEMORY[0x277D85D80] + 14));
    }

    else if (v4 == 2)
    {
      v3 = *(v2 + *(MEMORY[0x277D85D80] + 14));
    }

    GPUTools::FB::EncodeGCDQueueInfo(this, v2, v3);
  }

  return v2;
}

_DWORD *GPUTools::FB::EncodeThreadLocalFlags(GPUTools::FB *this)
{
  *result = v2;
  return result;
}

void *GPUTools::FB::Encode(char **this, GPUTools::FB::Fbuf *a2, int a3, uint64_t a4, const char *a5, GPUTools::FB::ArgumentProvider *a6)
{
  v8 = a2;
  v126 = *MEMORY[0x277D85DE8];
  v121 = a3;
  pthread_mutex_lock(&sFunctionChainLock);
  v123 = 0;
  v124[0] = &unk_2860A8FA0;
  v124[1] = &v121;
  v125 = v124;
  std::__function::__value_func<void ()(void)>::swap[abi:ne200100](v124, v122);
  if (v125 == v124)
  {
    (*(*v125 + 32))(v125);
  }

  else if (v125)
  {
    (*(*v125 + 40))();
  }

  v121 = v10;
  v114 = a5;
  if ((v8 + 12281) < 2 || v8 == -12272)
  {
    if (v8 == -12272)
    {
      v12 = 198;
    }

    else
    {
      v12 = 70;
    }

    v10 |= v12;
    v121 = v10;
  }

  else if (v8 == -12288)
  {
    *(*this + 8) |= 1u;
    v11 = this[1];
    goto LABEL_17;
  }

  v13 = *this;
  v14 = this[1];
  v15 = (v14 - *this);
  v16 = *(this + 4);
  if ((v16 - v15) <= 0x23)
  {
    v110 = (291 - (v16 - v15)) & 0x100;
    v111 = (v110 + v16);
    *(this + 4) = v111;
    if (v13)
    {
      v112 = reallocf(v13, v111);
      *this = v112;
      if (v112)
      {
        goto LABEL_139;
      }
    }

    else
    {
      v112 = malloc_type_malloc((v110 + v16), 0xF962E99uLL);
      *this = v112;
      if (v112)
      {
LABEL_139:
        if ((v112 & 3) != 0)
        {
          dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v112, 4uLL);
        }

        v14 = &v112[v15];
        this[1] = &v112[v15];
        v10 = v121;
        goto LABEL_14;
      }
    }

    dy_abort("failed to allocate fbuf buffer");
  }

LABEL_14:
  *(v14 + 8) = 0;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(*this + 1) = v8;
  *(*this + 8) = v10;
  v124[0] = 0;
  pthread_threadid_np(0, v124);
  *(*this + 1) = v124[0];
  v17 = mach_absolute_time();
  if (g_DYTimebaseInfo != dword_27F0982A4)
  {
    v17 = __udivti3();
  }

  *(*this + 2) = v17;
  *(*this + 3) = 0;
  v11 = this[1] + 36;
  this[1] = v11;
LABEL_17:
  v18 = (strlen(a4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v19 = *this;
  v20 = (v11 - *this);
  v21 = *(this + 4);
  if (v18 > v21 - v20)
  {
    v107 = (v18 - (v21 - v20) + 255) & 0xFFFFFF00;
    v108 = (v107 + v21);
    *(this + 4) = v108;
    if (v19)
    {
      v109 = reallocf(v19, v108);
      *this = v109;
      if (v109)
      {
        goto LABEL_135;
      }
    }

    else
    {
      v109 = malloc_type_malloc((v107 + v21), 0xF962E99uLL);
      *this = v109;
      if (v109)
      {
LABEL_135:
        if ((v109 & 3) != 0)
        {
          dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v109, 4uLL);
        }

        v11 = &v109[v20];
        this[1] = &v109[v20];
        goto LABEL_18;
      }
    }

    dy_abort("failed to allocate fbuf buffer");
  }

LABEL_18:
  bzero(v11, v18);
  strlcpy(this[1], a4, v18);
  v22 = v114;
  v23 = &this[1][v18];
  this[1] = v23;
  v120 = 0;
  v124[0] = 0;
  v24 = *a4;
  if (!*a4)
  {
    goto LABEL_125;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v117 = 0;
  v28 = MEMORY[0x277D85DE0];
  do
  {
    if (v24 > 0x3Fu)
    {
      if (v24 == 64)
      {
        v120 = 0;
        v33 = *++a4;
        LOBYTE(v32) = v33;
        if ((v33 & 0x80000000) == 0)
        {
          v34 = 0;
          v32 = v32;
          do
          {
            if (!v32)
            {
              break;
            }

            if ((*(v28 + 4 * v32 + 60) & 0x400) == 0)
            {
              break;
            }

            v34 = 10 * v34 + v32 - 48;
            v120 = v34;
            v35 = *++a4;
            v32 = v35;
          }

          while ((v35 & 0x80000000) == 0);
        }

        v26 = 0;
        v124[0] = (*(*v22 + 72))(v22);
        v25 = 1;
        v27 = &v120;
        v117 = v124;
        goto LABEL_21;
      }

      if (v24 == 99 || v24 == 117)
      {
        ++a4;
        goto LABEL_21;
      }

LABEL_48:
      v115 = a4;
      if (v25)
      {
        v39 = v24 - 65;
        if (v39 > 0x37 || ((1 << v39) & 0xCCA93A01BFFDBFLL) == 0)
        {
          dy_abort("unknown format character: '%c' (in '%s')\n", v24, a4);
        }

        v40 = 1;
        v118 = v27;
        v116 = v24;
        while (1)
        {
          v41 = v26;
          v42 = v117[v26];
          switch(v24)
          {
            case 'A':
            case 'B':
            case 'E':
            case 'F':
            case 'H':
            case 'I':
            case 'K':
            case 'L':
            case 'O':
            case 'Q':
            case 'R':
            case 'T':
            case 'X':
            case 'e':
            case 'f':
            case 'i':
            case 'n':
            case 'x':
              v43 = 4 * v27[v26];
              goto LABEL_55;
            case 'C':
            case 'D':
            case 'M':
            case 'N':
            case 'P':
            case 'Y':
            case 'd':
            case 'l':
            case 'p':
            case 't':
            case 'w':
              v43 = 8 * v27[v26];
LABEL_55:
              v40 = 4;
              goto LABEL_56;
            case 'b':
              v43 = v27[v26];
              goto LABEL_56;
            case 's':
              v43 = 2 * v27[v26];
              v40 = 2;
LABEL_56:
              v45 = *this;
              v44 = this[1];
              v46 = (&v44[v40 - 1] & -v40) - v44;
              v47 = v46 + v43;
              v48 = (v44 - *this);
              v49 = *(this + 4);
              if (v46 + v43 <= v49 - v48)
              {
                goto LABEL_57;
              }

              v69 = (v47 - (v49 - v48) + 255) & 0xFFFFFF00;
              v70 = (v69 + v49);
              *(this + 4) = v70;
              if (v45)
              {
                v71 = reallocf(v45, v70);
                *this = v71;
                if (!v71)
                {
LABEL_141:
                  dy_abort("failed to allocate fbuf buffer");
                }
              }

              else
              {
                v71 = malloc_type_malloc((v69 + v49), 0xF962E99uLL);
                *this = v71;
                if (!v71)
                {
                  goto LABEL_141;
                }
              }

              if ((v71 & 3) != 0)
              {
                dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v71, 4uLL);
              }

              v44 = &v71[v48];
              this[1] = v44;
LABEL_57:
              bzero(v44, v46 + v43);
              memcpy(&this[1][v46], v42, v43);
              this[1] += v47;
              goto LABEL_58;
            default:
              v51 = *this;
              v50 = this[1];
              v52 = 4 * v27[v26];
              v113 = ((v50 + 3) & 0xFFFFFFFFFFFFFFFCLL) - v50;
              v53 = v113 + v52;
              v54 = (v50 - *this);
              v55 = *(this + 4);
              if (v113 + v52 <= v55 - v54)
              {
                goto LABEL_61;
              }

              v72 = (v53 - (v55 - v54) + 255) & 0xFFFFFF00;
              v73 = (v72 + v55);
              *(this + 4) = v73;
              if (v51)
              {
                v74 = reallocf(v51, v73);
                *this = v74;
                if (!v74)
                {
LABEL_150:
                  dy_abort("failed to allocate fbuf buffer");
                }
              }

              else
              {
                v74 = malloc_type_malloc((v72 + v55), 0xF962E99uLL);
                *this = v74;
                if (!v74)
                {
                  goto LABEL_150;
                }
              }

              if ((v74 & 3) != 0)
              {
                dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v74, 4uLL);
              }

              v50 = &v74[v54];
              this[1] = v50;
              v27 = v118;
LABEL_61:
              bzero(v50, v53);
              v56 = *this;
              v57 = this[1];
              this[1] = &v57[v53];
              if (v27[v41])
              {
                v58 = 0;
                v59 = &v57[v113 - v56];
                do
                {
                  v60 = strlen(*(v42 + v58)) + 1;
                  v61 = *this;
                  v62 = this[1];
                  v63 = (v62 - *this);
                  v64 = *(this + 4);
                  if (v60 > v64 - v63)
                  {
                    v66 = (v60 - (v64 - v63) + 255) & 0xFFFFFF00;
                    v67 = (v66 + v64);
                    *(this + 4) = v67;
                    if (v61)
                    {
                      v68 = reallocf(v61, v67);
                      *this = v68;
                      if (!v68)
                      {
LABEL_143:
                        dy_abort("failed to allocate fbuf buffer");
                      }
                    }

                    else
                    {
                      v68 = malloc_type_malloc((v66 + v64), 0xF962E99uLL);
                      *this = v68;
                      if (!v68)
                      {
                        goto LABEL_143;
                      }
                    }

                    if ((v68 & 3) != 0)
                    {
                      dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v68, 4uLL);
                    }

                    v62 = &v68[v63];
                    this[1] = &v68[v63];
                  }

                  bzero(v62, v60);
                  memcpy(this[1], *(v42 + v58), v60);
                  v65 = *this;
                  this[1] += v60;
                  *&v65[4 * v58 + v59] = v52;
                  v52 += v60;
                  ++v58;
                }

                while (v58 < v118[v41]);
                v28 = MEMORY[0x277D85DE0];
              }

LABEL_58:
              v26 = v41 + 1;
              --v25;
              v27 = v118;
              v24 = v116;
              if (!v25)
              {
                goto LABEL_102;
              }

              break;
          }
        }
      }

      switch(v24)
      {
        case 'A':
        case 'B':
        case 'E':
        case 'F':
        case 'H':
        case 'I':
        case 'K':
        case 'L':
        case 'O':
        case 'Q':
        case 'R':
        case 'T':
        case 'X':
        case 'e':
        case 'i':
        case 'x':
          v75 = v24;
          LODWORD(v119) = (*(*v22 + 32))(v22);
          goto LABEL_88;
        case 'C':
        case 'D':
        case 'M':
        case 'P':
        case 'Y':
        case 'l':
        case 'p':
        case 't':
          v85 = (*(*v22 + 72))(v22);
          goto LABEL_93;
        case 'N':
        case 'w':
          v85 = (*(*v22 + 40))(v22);
LABEL_93:
          v75 = v24;
          v119 = *&v85;
          v76 = 4;
          goto LABEL_94;
        case 'S':
        case 'U':
        case 'V':
          v94 = (*(*v22 + 80))(v22);
          v119 = *&v94;
          v75 = v24;
          if (v94)
          {
            v77 = strlen(v94) + 1;
            v76 = 1;
          }

          else
          {
            v76 = 1;
LABEL_94:
            v77 = 8;
          }

LABEL_95:
          v86 = this[1];
          v87 = (&v86[v76 - 1] & -v76) - v86;
          v88 = v87 + v77;
          v89 = &v119;
          if (v75 - 83 <= 3 && v75 != 84)
          {
            if (v119 == 0.0)
            {
              v89 = &GPUTools::FB::g_null_string_token;
            }

            else
            {
              v89 = *&v119;
            }
          }

          v90 = *this;
          v91 = (v86 - *this);
          v92 = *(this + 4);
          v93 = v92 - v91;
          if (v88 <= v92 - v91)
          {
            goto LABEL_101;
          }

          goto LABEL_112;
        case 'b':
          LOBYTE(v119) = (*(*v22 + 16))(v22);
          v95 = 1;
          v77 = 1;
          goto LABEL_111;
        case 'd':
          v119 = (*(*v22 + 64))(v22);
          v95 = 4;
          v77 = 8;
          goto LABEL_111;
        case 'f':
        case 'n':
          v75 = v24;
          LODWORD(v119) = (*(*v22 + 56))(v22);
LABEL_88:
          v76 = 4;
          v77 = 4;
          goto LABEL_95;
        case 's':
          LOWORD(v119) = (*(*v22 + 24))(v22);
          v95 = 2;
          v77 = 2;
LABEL_111:
          v86 = this[1];
          v87 = (&v86[v95 - 1] & -v95) - v86;
          v88 = v87 + v77;
          v89 = &v119;
          v90 = *this;
          v91 = (v86 - *this);
          v92 = *(this + 4);
          v93 = v92 - v91;
          if (v87 + v77 <= v92 - v91)
          {
            goto LABEL_101;
          }

LABEL_112:
          v96 = (v88 - v93 + 255) & 0xFFFFFF00;
          v97 = (v96 + v92);
          *(this + 4) = v97;
          if (v90)
          {
            v98 = reallocf(v90, v97);
            *this = v98;
            if (!v98)
            {
LABEL_123:
              dy_abort("failed to allocate fbuf buffer");
            }
          }

          else
          {
            v98 = malloc_type_malloc((v96 + v92), 0xF962E99uLL);
            *this = v98;
            if (!v98)
            {
              goto LABEL_123;
            }
          }

          if ((v98 & 3) != 0)
          {
            dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v98, 4uLL);
          }

          v86 = &v98[v91];
          this[1] = v86;
LABEL_101:
          bzero(v86, v88);
          memcpy(&this[1][v87], v89, v77);
          this[1] += v88;
          v28 = MEMORY[0x277D85DE0];
LABEL_102:
          v25 = 0;
          v22 = v114;
          a4 = v115 + 1;
          break;
        default:
          dy_abort("unknown format character: '%c' (in '%s')\n", v24, a4);
      }

      goto LABEL_21;
    }

    if (v24 != 35)
    {
      if (v24 == 60)
      {
        v29 = *(a4 + 1);
        v30 = v29 == 99 || v29 == 117;
        v31 = 1;
        if (v30)
        {
          v31 = 2;
        }

        a4 += v31 + 2;
        goto LABEL_21;
      }

      if (v24 == 58)
      {
        dy_abort("url list encoding is no longer supported");
      }

      goto LABEL_48;
    }

    v37 = *++a4;
    LOBYTE(v36) = v37;
    if (v37 < 0)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0;
      v36 = v36;
      do
      {
        if (!v36)
        {
          break;
        }

        if ((*(v28 + 4 * v36 + 60) & 0x400) == 0)
        {
          break;
        }

        v25 = 10 * v25 + v36 - 48;
        v38 = *++a4;
        v36 = v38;
      }

      while ((v38 & 0x80000000) == 0);
    }

    v27 = (*(*v22 + 72))(v22);
    v117 = (*(*v22 + 72))(v22);
    v79 = *this;
    v78 = this[1];
    v80 = ((v78 + 3) & 0xFFFFFFFFFFFFFFFCLL) - v78;
    v81 = 4 * v25;
    v82 = v80 + v81;
    v83 = (v78 - *this);
    v84 = *(this + 4);
    if (v80 + v81 > v84 - v83)
    {
      v99 = (v82 - (v84 - v83) + 255) & 0xFFFFFF00;
      v100 = (v99 + v84);
      *(this + 4) = v100;
      if (v79)
      {
        v101 = reallocf(v79, v100);
        *this = v101;
        if (!v101)
        {
LABEL_148:
          dy_abort("failed to allocate fbuf buffer");
        }
      }

      else
      {
        v101 = malloc_type_malloc((v99 + v84), 0xF962E99uLL);
        *this = v101;
        if (!v101)
        {
          goto LABEL_148;
        }
      }

      if ((v101 & 3) != 0)
      {
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v101, 4uLL);
      }

      v78 = &v101[v83];
      this[1] = v78;
    }

    bzero(v78, v80 + v81);
    memcpy(&this[1][v80], v27, 4 * v25);
    v26 = 0;
    this[1] += v82;
    v28 = MEMORY[0x277D85DE0];
LABEL_21:
    v24 = *a4;
  }

  while (*a4);
  v23 = this[1];
LABEL_125:
  v102 = v23 - *this;
  **this = v102;
  v103 = (v102 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v104 = v103 - v102;
  if (v103 != v102)
  {
    GPUTools::FB::Fbuf::grow_advance(this, v103 - v102);
    **this += v104;
  }

  if (!v123)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v123 + 48))(v123);
  result = v123;
  if (v123 == v122)
  {
    result = (*(*v123 + 32))(v123);
  }

  else if (v123)
  {
    result = (*(*v123 + 40))();
  }

  v106 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24D684508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  dy_defer::~dy_defer(va);
  _Unwind_Resume(a1);
}

void GPUTools::FB::CreateFunction(GPUTools::FB *this@<X0>, char *a2@<X3>, uint64_t a3@<X4>, int a4@<W1>, uint64_t a5@<X2>, GPUTools::FD::Function *a6@<X8>, ...)
{
  va_start(va, a6);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  GPUTools::FD::Function::Function(v22);
  va_copy(v21, va);
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v20, va);
  GPUTools::FB::Encode(&v25, this, a4, a3, v20, v13);
  if (a5)
  {
    v16 = &unk_2860A91A0;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    GPUTools::FB::FIFOPointerArgumentProvider::push(&v16, a2);
    GPUTools::FB::Encode(&v25, 0xFFFFD000, 0, a5, &v16, v14);
    GPUTools::FB::FIFOPointerArgumentProvider::~FIFOPointerArgumentProvider(&v16);
  }

  GPUTools::FB::Decoder::Decoder(&v16, 4, 0);
  GPUTools::FB::Decoder::Decode(&v16, v25, v27, v22);
  if (v24)
  {
    GPUTools::FD::Function::Function(a6, v22);
  }

  else
  {
    v15 = v25;
    v23 = v26 - v25;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v24 = v15;
    GPUTools::FD::Function::Function(a6, v22);
  }

  GPUTools::FD::IFunctionDecoder::~IFunctionDecoder(&v16);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v20);
  GPUTools::FD::Function::~Function(v22);
  if (v25)
  {
    free(v25);
  }
}

void sub_24D6848A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  GPUTools::FD::Function::~Function(va1);
  v10 = *(v8 - 88);
  if (v10)
  {
    free(v10);
  }

  _Unwind_Resume(a1);
}

void GPUTools::FB::Fbuf::grow_advance(GPUTools::FB::Fbuf *this, size_t a2)
{
  v4 = *this;
  v5 = *(this + 1);
  v6 = v5 - v4;
  v7 = *(this + 4);
  v8 = v7 - (v5 - v4);
  if (a2 <= v8)
  {
    goto LABEL_2;
  }

  v9 = (a2 - v8 + 255) & 0xFFFFFF00;
  v10 = (v9 + v7);
  *(this + 4) = v10;
  if (v4)
  {
    v11 = reallocf(v4, v10);
    *this = v11;
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_8:
    dy_abort("failed to allocate fbuf buffer");
  }

  v11 = malloc_type_malloc((v9 + v7), 0xF962E99uLL);
  *this = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v11 & 3) != 0)
  {
    dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v11, 4uLL);
  }

  v5 = &v11[v6];
  *(this + 1) = &v11[v6];
LABEL_2:
  bzero(v5, a2);
  *(this + 1) += a2;
}

void dy_defer::~dy_defer(dy_defer *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);
  v3 = *(this + 3);
  if (v3 == this)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

uint64_t std::__function::__func<GPUTools::FB::Encode(GPUTools::FB::Fbuf &,unsigned int,int,char const*,GPUTools::FB::ArgumentProvider &)::$_0,std::allocator<GPUTools::FB::Encode(GPUTools::FB::Fbuf &,unsigned int,int,char const*,GPUTools::FB::ArgumentProvider &)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2860A8FA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GPUTools::FB::Encode(GPUTools::FB::Fbuf &,unsigned int,int,char const*,GPUTools::FB::ArgumentProvider &)::$_0,std::allocator<GPUTools::FB::Encode(GPUTools::FB::Fbuf &,unsigned int,int,char const*,GPUTools::FB::ArgumentProvider &)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  if ((**(result + 8) & 0x3000) != 0x1000)
  {
    v2 = result;
    result = pthread_mutex_unlock(&sFunctionChainLock);
    if ((*(*(v2 + 8) + 1) & 0x20) != 0)
    {

      return pthread_mutex_unlock(&sFunctionChainLock);
    }
  }

  return result;
}

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24D684E68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t GPUTools::FD::Argument::GetCoreTypeSize(int a1)
{
  if ((a1 - 1) >= 0xD)
  {
    dy_abort("unknown or invalid parameter core type: 0x%x", a1);
  }

  return qword_24D6A9220[a1 - 1];
}

char *GPUTools::FD::Argument::GetCoreTypeCString(unsigned int a1)
{
  if (a1 >= 0x30)
  {
    dy_abort("%s: unknown or invalid parameter core type: 0x%x", "static const char *GPUTools::FD::Argument::GetCoreTypeCString(Type)", a1);
  }

  return off_27930CE38[a1];
}

size_t GPUTools::FD::Argument::GLObjectNameFromVariable(GPUTools::FD::Argument *this, const char *a2)
{
  if (!this)
  {
    GPUTools::FD::Argument::GLObjectNameFromVariable();
  }

  result = strlen(this);
  if (result)
  {
    v4 = this + result - 1;
    do
    {
      v5 = v4;
      if (v4 < this)
      {
        break;
      }

      v6 = *v4;
      if (v6 < 0)
      {
        break;
      }

      v7 = *(MEMORY[0x277D85DE0] + 4 * v6 + 60);
      v4 = v5 - 1;
    }

    while ((v7 & 0x400) != 0);
    return strtol(v5 + 1, 0, 10);
  }

  return result;
}

uint64_t GPUTools::FD::Argument::UniformLocationFromVariable(GPUTools::FD::Argument *this, const char *a2)
{
  if (!this)
  {
    GPUTools::FD::Argument::UniformLocationFromVariable();
  }

  v3 = strlen(this);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = this + v3 - 1;
  do
  {
    v5 = v4;
    if (v4 < this)
    {
      break;
    }

    v6 = *v4;
    if (v6 < 0)
    {
      break;
    }

    v7 = *(MEMORY[0x277D85DE0] + 4 * v6 + 60);
    v4 = v5 - 1;
  }

  while ((v7 & 0x400) != 0);
  return strtol(v5 + 1, 0, 10);
}

uint64_t GPUTools::FD::Argument::ProgramAndUniformBlockIndexFromVariable(GPUTools::FD::Argument *this, char *a2, unsigned int *a3, unsigned int *a4)
{
  *a2 = 0;
  *a3 = -1;
  result = strlen(this);
  if (result)
  {
    v8 = this + result - 1;
    v9 = MEMORY[0x277D85DE0];
    do
    {
      v10 = v8;
      if (v8 < this)
      {
        break;
      }

      v11 = *v8;
      if (v11 < 0)
      {
        break;
      }

      v12 = *(MEMORY[0x277D85DE0] + 4 * v11 + 60);
      v8 = v10 - 1;
    }

    while ((v12 & 0x400) != 0);
    *a3 = strtol(v10 + 1, 0, 10);
    v13 = v10 - 1;
    do
    {
      v14 = v13;
      if (v13 < this)
      {
        break;
      }

      v15 = *v13;
      if (v15 < 0)
      {
        break;
      }

      v16 = *(v9 + 4 * v15 + 60);
      v13 = v14 - 1;
    }

    while ((v16 & 0x400) != 0);
    result = strtol(v14 + 1, 0, 10);
    *a2 = result;
  }

  return result;
}

uint64_t GPUTools::FD::Argument::ProgramAndUniformLocationFromVariable(GPUTools::FD::Argument *this, char *a2, unsigned int *a3, int *a4)
{
  *a2 = 0;
  *a3 = -1;
  result = strlen(this);
  if (result)
  {
    v8 = this + result - 1;
    v9 = MEMORY[0x277D85DE0];
    do
    {
      v10 = v8;
      if (v8 < this)
      {
        break;
      }

      v11 = *v8;
      if (v11 < 0)
      {
        break;
      }

      v12 = *(MEMORY[0x277D85DE0] + 4 * v11 + 60);
      v8 = v10 - 1;
    }

    while ((v12 & 0x400) != 0);
    *a3 = strtol(v10 + 1, 0, 10);
    v13 = v10 - 1;
    do
    {
      v14 = v13;
      if (v13 < this)
      {
        break;
      }

      v15 = *v13;
      if (v15 < 0)
      {
        break;
      }

      v16 = *(v9 + 4 * v15 + 60);
      v13 = v14 - 1;
    }

    while ((v16 & 0x400) != 0);
    result = strtol(v14 + 1, 0, 10);
    *a2 = result;
  }

  return result;
}

size_t GPUTools::FD::Argument::ViewAsGLObjectName(const char **this)
{
  if ((*(this + 11) & 0x10) != 0)
  {
    v3 = *this;
    if (!*this)
    {
      GPUTools::FD::Argument::GLObjectNameFromVariable();
    }

    result = strlen(*this);
    if (result)
    {
      v4 = &v3[result - 1];
      do
      {
        v5 = v4;
        if (v4 < v3)
        {
          break;
        }

        v6 = *v4;
        if (v6 < 0)
        {
          break;
        }

        v7 = *(MEMORY[0x277D85DE0] + 4 * v6 + 60);
        v4 = v5 - 1;
      }

      while ((v7 & 0x400) != 0);
      return strtol(v5 + 1, 0, 10);
    }
  }

  else
  {
    v1 = *(this + 2);
    if (v1 != 6 && v1 != 12)
    {
      dy_abort("cannot view argument as OpenGL object name: core_type=%u, sem_type=%u", *(this + 2), *(this + 3));
    }

    return **this;
  }

  return result;
}

uint64_t GPUTools::FD::Argument::ViewAsUniformLocation(const char **this)
{
  if ((*(this + 11) & 0x10) != 0)
  {
    v2 = *this;
    if (!*this)
    {
      GPUTools::FD::Argument::UniformLocationFromVariable();
    }

    v3 = strlen(*this);
    if (v3)
    {
      v4 = &v2[v3 - 1];
      do
      {
        v5 = v4;
        if (v4 < v2)
        {
          break;
        }

        v6 = *v4;
        if (v6 < 0)
        {
          break;
        }

        v7 = *(MEMORY[0x277D85DE0] + 4 * v6 + 60);
        v4 = v5 - 1;
      }

      while ((v7 & 0x400) != 0);
      return strtol(v5 + 1, 0, 10);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (*(this + 2) != 5)
    {
      dy_abort("cannot view argument as uniform location: core_type=%u, sem_type=%u", *(this + 2), *(this + 3));
    }

    return **this;
  }
}

__n128 GPUTools::FD::CoreFunction::DoCommonCopyMove(GPUTools::FD::CoreFunction *this, CoreFunction *a2, const CoreFunction *a3)
{
  *this = *&a2->var0;
  *(this + 5) = a2->var3;
  *(this + 2) = a2->var4.var0;
  v3 = *&a2->var5.var0;
  *(this + 5) = *&a2->var5.var3;
  *(this + 24) = v3;
  v4 = *&a2->var6[0].var0;
  *(this + 8) = *&a2->var6[0].var3;
  *(this + 3) = v4;
  v5 = *&a2->var6[1].var0;
  *(this + 11) = *&a2->var6[1].var3;
  *(this + 72) = v5;
  v6 = *&a2->var6[2].var0;
  *(this + 14) = *&a2->var6[2].var3;
  *(this + 6) = v6;
  v7 = *&a2->var6[3].var0;
  *(this + 17) = *&a2->var6[3].var3;
  *(this + 120) = v7;
  v8 = *&a2->var6[4].var0;
  *(this + 20) = *&a2->var6[4].var3;
  *(this + 9) = v8;
  v9 = *&a2->var6[5].var0;
  *(this + 23) = *&a2->var6[5].var3;
  *(this + 168) = v9;
  v10 = *&a2->var6[6].var0;
  *(this + 26) = *&a2->var6[6].var3;
  *(this + 12) = v10;
  v11 = *&a2->var6[7].var0;
  *(this + 29) = *&a2->var6[7].var3;
  *(this + 216) = v11;
  v12 = *&a2->var6[8].var0;
  *(this + 32) = *&a2->var6[8].var3;
  *(this + 15) = v12;
  v13 = *&a2->var6[9].var0;
  *(this + 35) = *&a2->var6[9].var3;
  *(this + 264) = v13;
  v14 = *&a2->var6[10].var0;
  *(this + 38) = *&a2->var6[10].var3;
  *(this + 18) = v14;
  v15 = *&a2->var6[11].var0;
  *(this + 41) = *&a2->var6[11].var3;
  *(this + 312) = v15;
  v16 = *&a2->var6[12].var0;
  *(this + 44) = *&a2->var6[12].var3;
  *(this + 21) = v16;
  v17 = *&a2->var6[13].var0;
  *(this + 47) = *&a2->var6[13].var3;
  *(this + 360) = v17;
  v18 = *&a2->var6[14].var0;
  *(this + 50) = *&a2->var6[14].var3;
  *(this + 24) = v18;
  result = *&a2->var6[15].var0;
  *(this + 53) = *&a2->var6[15].var3;
  *(this + 408) = result;
  *(this + 108) = a2->var7;
  return result;
}

void *GPUTools::FD::CoreFunction::Relocate(GPUTools::FD::CoreFunction *this, GPUTools::FD::CoreFunction *a2, const GPUTools::FD::CoreFunction *a3)
{
  v5 = *(a2 + 108);
  v6 = *(a2 + 56);
  v33 = *(a2 + 55);
  v34 = v5 + v33;
  v7 = *(a2 + 109);
  v8 = v7 + v6;
  v35 = v6;
  v36 = v7 + v6;
  v9 = v37;
  v10 = v38;
  v39 = v37;
  v40 = v38;
  v11 = *(a2 + 3);
  if (!v11)
  {
    goto LABEL_8;
  }

  if (v33 > v11 || v11 >= v5 + v33)
  {
    if (v6 > v11)
    {
      goto LABEL_8;
    }

    v13 = v38;
    v14 = &v40;
    v12 = &v35;
    if (v11 >= v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = &v33;
    v13 = v37;
    v14 = &v39;
  }

  *v13 = this + 24;
  *v14 += 8;
  *(this + 3) = v11 - *v12;
LABEL_8:
  v15 = (a2 + 48);
  v16 = (this + 48);
  v17 = 16;
  do
  {
    v20 = *v15;
    if (*v15)
    {
      if (v33 <= v20 && v34 > v20)
      {
        v18 = &v33;
        v19 = &v39;
LABEL_10:
        **v19 = v16;
        *v19 += 8;
        *v16 = v20 - *v18;
        goto LABEL_11;
      }

      v22 = v35 <= v20 && v36 > v20;
      v19 = &v40;
      v18 = &v35;
      if (v22)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    v15 += 3;
    v16 += 3;
    --v17;
  }

  while (v17);
  if (*(a2 + 55) == *(a2 + 56))
  {
    *(this + 109) = v7;
    v29 = malloc_type_malloc(v7, 0xC1A5EE9CuLL);
    *(this + 56) = v29;
    result = memcpy(v29, *(a2 + 56), *(a2 + 109));
    v23 = 0;
  }

  else
  {
    v23 = (v5 + 15) & 0xFFFFFFF0;
    v24 = v7 + v23;
    *(this + 109) = v24;
    v25 = malloc_type_malloc(v24, 0x1FC10063uLL);
    *(this + 56) = v25;
    result = memcpy(v25, *(a2 + 55), *(a2 + 108));
    v27 = *(a2 + 56);
    if (v27)
    {
      result = memcpy((*(this + 56) + v23), v27, *(a2 + 109));
      v28 = *(this + 56);
      *(this + 55) = v28;
      if (v37 == v39)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  v28 = *(this + 56);
  *(this + 55) = v28;
  if (v37 == v39)
  {
    goto LABEL_29;
  }

  do
  {
LABEL_28:
    v30 = *v9++;
    *v30 += v28;
  }

  while (v9 != v39);
LABEL_29:
  if (v38 != v40)
  {
    v31 = v28 + v23;
    do
    {
      v32 = *v10++;
      *v32 += v31;
    }

    while (v10 != v40);
  }

  return result;
}

double GPUTools::FD::CoreFunction::CoreFunction(GPUTools::FD::CoreFunction *this)
{
  *this = 0xFFFFFFFFLL;
  *(this + 5) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 56) = 0;
  return result;
}

{
  *this = 0xFFFFFFFFLL;
  *(this + 5) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 56) = 0;
  return result;
}

uint64_t GPUTools::FD::CoreFunction::CoreFunction(uint64_t this, const GPUTools::FD::CoreFunction *a2, const GPUTools::FD::CoreFunction *a3)
{
  *(this + 436) = 0;
  *(this + 448) = 0;
  if (this != a2)
  {
    *this = *a2;
    *(this + 10) = *(a2 + 5);
    *(this + 16) = *(a2 + 2);
    v3 = *(a2 + 24);
    *(this + 40) = *(a2 + 5);
    *(this + 24) = v3;
    v4 = *(a2 + 3);
    *(this + 64) = *(a2 + 8);
    *(this + 48) = v4;
    v5 = *(a2 + 72);
    *(this + 88) = *(a2 + 11);
    *(this + 72) = v5;
    v6 = *(a2 + 6);
    *(this + 112) = *(a2 + 14);
    *(this + 96) = v6;
    v7 = *(a2 + 120);
    *(this + 136) = *(a2 + 17);
    *(this + 120) = v7;
    v8 = *(a2 + 9);
    *(this + 160) = *(a2 + 20);
    *(this + 144) = v8;
    v9 = *(a2 + 168);
    *(this + 184) = *(a2 + 23);
    *(this + 168) = v9;
    v10 = *(a2 + 12);
    *(this + 208) = *(a2 + 26);
    *(this + 192) = v10;
    v11 = *(a2 + 216);
    *(this + 232) = *(a2 + 29);
    *(this + 216) = v11;
    v12 = *(a2 + 15);
    *(this + 256) = *(a2 + 32);
    *(this + 240) = v12;
    v13 = *(a2 + 264);
    *(this + 280) = *(a2 + 35);
    *(this + 264) = v13;
    v14 = *(a2 + 18);
    *(this + 304) = *(a2 + 38);
    *(this + 288) = v14;
    v15 = *(a2 + 312);
    *(this + 328) = *(a2 + 41);
    *(this + 312) = v15;
    v16 = *(a2 + 21);
    *(this + 352) = *(a2 + 44);
    *(this + 336) = v16;
    v17 = *(a2 + 360);
    *(this + 376) = *(a2 + 47);
    *(this + 360) = v17;
    v18 = *(a2 + 24);
    *(this + 400) = *(a2 + 50);
    *(this + 384) = v18;
    v19 = *(a2 + 408);
    *(this + 424) = *(a2 + 53);
    *(this + 408) = v19;
    *(this + 432) = *(a2 + 108);
    v20 = this;
    GPUTools::FD::CoreFunction::Relocate(this, a2, a3);
    return v20;
  }

  return this;
}

{
  *(this + 436) = 0;
  *(this + 448) = 0;
  if (this != a2)
  {
    *this = *a2;
    *(this + 10) = *(a2 + 5);
    *(this + 16) = *(a2 + 2);
    v3 = *(a2 + 24);
    *(this + 40) = *(a2 + 5);
    *(this + 24) = v3;
    v4 = *(a2 + 3);
    *(this + 64) = *(a2 + 8);
    *(this + 48) = v4;
    v5 = *(a2 + 72);
    *(this + 88) = *(a2 + 11);
    *(this + 72) = v5;
    v6 = *(a2 + 6);
    *(this + 112) = *(a2 + 14);
    *(this + 96) = v6;
    v7 = *(a2 + 120);
    *(this + 136) = *(a2 + 17);
    *(this + 120) = v7;
    v8 = *(a2 + 9);
    *(this + 160) = *(a2 + 20);
    *(this + 144) = v8;
    v9 = *(a2 + 168);
    *(this + 184) = *(a2 + 23);
    *(this + 168) = v9;
    v10 = *(a2 + 12);
    *(this + 208) = *(a2 + 26);
    *(this + 192) = v10;
    v11 = *(a2 + 216);
    *(this + 232) = *(a2 + 29);
    *(this + 216) = v11;
    v12 = *(a2 + 15);
    *(this + 256) = *(a2 + 32);
    *(this + 240) = v12;
    v13 = *(a2 + 264);
    *(this + 280) = *(a2 + 35);
    *(this + 264) = v13;
    v14 = *(a2 + 18);
    *(this + 304) = *(a2 + 38);
    *(this + 288) = v14;
    v15 = *(a2 + 312);
    *(this + 328) = *(a2 + 41);
    *(this + 312) = v15;
    v16 = *(a2 + 21);
    *(this + 352) = *(a2 + 44);
    *(this + 336) = v16;
    v17 = *(a2 + 360);
    *(this + 376) = *(a2 + 47);
    *(this + 360) = v17;
    v18 = *(a2 + 24);
    *(this + 400) = *(a2 + 50);
    *(this + 384) = v18;
    v19 = *(a2 + 408);
    *(this + 424) = *(a2 + 53);
    *(this + 408) = v19;
    *(this + 432) = *(a2 + 108);
    v20 = this;
    GPUTools::FD::CoreFunction::Relocate(this, a2, a3);
    return v20;
  }

  return this;
}

uint64_t GPUTools::FD::CoreFunction::operator=(uint64_t result, uint64_t a2, const GPUTools::FD::CoreFunction *a3)
{
  if (result != a2)
  {
    if (*(result + 448))
    {
      v21 = result;
      v22 = a2;
      free(*(result + 448));
      a2 = v22;
      result = v21;
    }

    *result = *a2;
    *(result + 10) = *(a2 + 10);
    *(result + 16) = *(a2 + 16);
    v3 = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
    *(result + 24) = v3;
    v4 = *(a2 + 48);
    *(result + 64) = *(a2 + 64);
    *(result + 48) = v4;
    v5 = *(a2 + 72);
    *(result + 88) = *(a2 + 88);
    *(result + 72) = v5;
    v6 = *(a2 + 96);
    *(result + 112) = *(a2 + 112);
    *(result + 96) = v6;
    v7 = *(a2 + 120);
    *(result + 136) = *(a2 + 136);
    *(result + 120) = v7;
    v8 = *(a2 + 144);
    *(result + 160) = *(a2 + 160);
    *(result + 144) = v8;
    v9 = *(a2 + 168);
    *(result + 184) = *(a2 + 184);
    *(result + 168) = v9;
    v10 = *(a2 + 192);
    *(result + 208) = *(a2 + 208);
    *(result + 192) = v10;
    v11 = *(a2 + 216);
    *(result + 232) = *(a2 + 232);
    *(result + 216) = v11;
    v12 = *(a2 + 240);
    *(result + 256) = *(a2 + 256);
    *(result + 240) = v12;
    v13 = *(a2 + 264);
    *(result + 280) = *(a2 + 280);
    *(result + 264) = v13;
    v14 = *(a2 + 288);
    *(result + 304) = *(a2 + 304);
    *(result + 288) = v14;
    v15 = *(a2 + 312);
    *(result + 328) = *(a2 + 328);
    *(result + 312) = v15;
    v16 = *(a2 + 336);
    *(result + 352) = *(a2 + 352);
    *(result + 336) = v16;
    v17 = *(a2 + 360);
    *(result + 376) = *(a2 + 376);
    *(result + 360) = v17;
    v18 = *(a2 + 384);
    *(result + 400) = *(a2 + 400);
    *(result + 384) = v18;
    v19 = *(a2 + 408);
    *(result + 424) = *(a2 + 424);
    *(result + 408) = v19;
    *(result + 432) = *(a2 + 432);
    v20 = result;
    GPUTools::FD::CoreFunction::Relocate(result, a2, a3);
    return v20;
  }

  return result;
}

__n128 GPUTools::FD::CoreFunction::CoreFunction(uint64_t a1, uint64_t a2)
{
  *(a1 + 436) = 0;
  *(a1 + 448) = 0;
  if (a1 != a2)
  {
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 436) = *(a2 + 436);
    *a1 = *a2;
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 16) = *(a2 + 16);
    v2 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v2;
    v3 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v3;
    v4 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v4;
    v5 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v5;
    v6 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v6;
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
    v8 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v8;
    v9 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v9;
    v10 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v10;
    v11 = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 240) = v11;
    v12 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v12;
    v13 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v13;
    v14 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 312) = v14;
    v15 = *(a2 + 336);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 336) = v15;
    v16 = *(a2 + 360);
    *(a1 + 376) = *(a2 + 376);
    *(a1 + 360) = v16;
    v17 = *(a2 + 384);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 384) = v17;
    result = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 408) = result;
    *(a1 + 432) = *(a2 + 432);
    *a2 = -1;
    *(a2 + 440) = 0;
    *(a2 + 448) = 0;
    *(a2 + 432) = 0;
  }

  return result;
}

{
  *(a1 + 436) = 0;
  *(a1 + 448) = 0;
  if (a1 != a2)
  {
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 436) = *(a2 + 436);
    *a1 = *a2;
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 16) = *(a2 + 16);
    v2 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v2;
    v3 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v3;
    v4 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v4;
    v5 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v5;
    v6 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v6;
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
    v8 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v8;
    v9 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v9;
    v10 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v10;
    v11 = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 240) = v11;
    v12 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v12;
    v13 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v13;
    v14 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 312) = v14;
    v15 = *(a2 + 336);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 336) = v15;
    v16 = *(a2 + 360);
    *(a1 + 376) = *(a2 + 376);
    *(a1 + 360) = v16;
    v17 = *(a2 + 384);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 384) = v17;
    result = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 408) = result;
    *(a1 + 432) = *(a2 + 432);
    *a2 = -1;
    *(a2 + 440) = 0;
    *(a2 + 448) = 0;
    *(a2 + 432) = 0;
  }

  return result;
}

__n128 GPUTools::FD::CoreFunction::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 448);
    if (v2)
    {
      v20 = a1;
      v21 = a2;
      free(v2);
      a2 = v21;
      a1 = v20;
    }

    *(a1 + 440) = *(a2 + 440);
    *(a1 + 436) = *(a2 + 436);
    *a1 = *a2;
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 16) = *(a2 + 16);
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v3;
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
    v8 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v8;
    v9 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v9;
    v10 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v10;
    v11 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v11;
    v12 = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 240) = v12;
    v13 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v13;
    v14 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v14;
    v15 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 312) = v15;
    v16 = *(a2 + 336);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 336) = v16;
    v17 = *(a2 + 360);
    *(a1 + 376) = *(a2 + 376);
    *(a1 + 360) = v17;
    v18 = *(a2 + 384);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 384) = v18;
    result = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 408) = result;
    *(a1 + 432) = *(a2 + 432);
    *a2 = -1;
    *(a2 + 440) = 0;
    *(a2 + 448) = 0;
    *(a2 + 432) = 0;
  }

  return result;
}

void GPUTools::FD::CoreFunction::~CoreFunction(GPUTools::FD::CoreFunction *this)
{
  v1 = *(this + 56);
  if (v1)
  {
    free(v1);
  }
}

{
  v1 = *(this + 56);
  if (v1)
  {
    free(v1);
  }
}

double GPUTools::FD::Function::DoCommonCopyMove(GPUTools::FD::Function *this, Function *a2, const Function *a3)
{
  *(this + 456) = *(a2 + 456);
  *(this + 472) = *(a2 + 472);
  *(this + 61) = *(a2 + 61);
  v3 = *(a2 + 64);
  *(this + 63) = *(a2 + 63);
  *(this + 64) = v3;
  result = *(a2 + 62);
  *(this + 62) = result;
  *(this + 66) = *(a2 + 66);
  return result;
}

void *GPUTools::FD::Function::Relocate(void *this, GPUTools::FD::Function *a2, const GPUTools::FD::Function *a3)
{
  v3 = *(a2 + 108);
  v5 = *(a2 + 55);
  v4 = *(a2 + 56);
  v22 = v3 + v5;
  v6 = &v23;
  v7 = *(a2 + 109) + v4;
  v23 = v4;
  v24 = v7;
  v8 = v25;
  v9 = v26;
  v10 = &v28;
  v27 = v25;
  v28 = v26;
  v11 = *(a2 + 59);
  if (v11)
  {
    if (v5 <= v11 && v11 < v3 + v5)
    {
      v12 = &v21;
      v13 = v25;
      v14 = &v27;
LABEL_7:
      *v13 = this + 59;
      *v14 += 8;
      this[59] = v11 - *v12;
      goto LABEL_8;
    }

    if (v4 <= v11)
    {
      v13 = v26;
      v14 = &v28;
      v12 = &v23;
      if (v11 < v7)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v15 = *(a2 + 61);
  if (!v15)
  {
    goto LABEL_15;
  }

  if (v21 <= v15 && v22 > v15)
  {
    v6 = &v21;
    v10 = &v27;
LABEL_14:
    **v10 = this + 61;
    *v10 += 8;
    this[61] = v15 - *v6;
    goto LABEL_15;
  }

  if (v23 <= v15 && v24 > v15)
  {
    goto LABEL_14;
  }

LABEL_15:
  v16 = (v3 + 15) & 0xFFFFFFF0;
  if (*(a2 + 55) == *(a2 + 56))
  {
    v16 = 0;
  }

  v17 = this[56];
  if (v25 != v27)
  {
    v18 = this[55];
    do
    {
      v19 = *v8++;
      *v19 += v18;
    }

    while (v8 != v27);
  }

  if (v26 != v28)
  {
    do
    {
      v20 = *v9++;
      *v20 += v16 + v17;
    }

    while (v9 != v28);
  }

  return this;
}

GPUTools::FD::Function *GPUTools::FD::Function::Function(GPUTools::FD::Function *this)
{
  *this = 0xFFFFFFFFLL;
  *(this + 5) = 0;
  bzero(this + 16, 0x208uLL);
  return this;
}

{
  *this = 0xFFFFFFFFLL;
  *(this + 5) = 0;
  bzero(this + 16, 0x208uLL);
  return this;
}

GPUTools::FD::Function *GPUTools::FD::Function::Function(GPUTools::FD::Function *this, const GPUTools::FD::Function *a2, const GPUTools::FD::CoreFunction *a3)
{
  *(this + 109) = 0;
  *(this + 56) = 0;
  if (this != a2)
  {
    *this = *a2;
    *(this + 5) = *(a2 + 5);
    *(this + 2) = *(a2 + 2);
    v5 = *(a2 + 24);
    *(this + 5) = *(a2 + 5);
    *(this + 24) = v5;
    v6 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v6;
    v7 = *(a2 + 72);
    *(this + 11) = *(a2 + 11);
    *(this + 72) = v7;
    v8 = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 6) = v8;
    v9 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v9;
    v10 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v10;
    v11 = *(a2 + 168);
    *(this + 23) = *(a2 + 23);
    *(this + 168) = v11;
    v12 = *(a2 + 12);
    *(this + 26) = *(a2 + 26);
    *(this + 12) = v12;
    v13 = *(a2 + 216);
    *(this + 29) = *(a2 + 29);
    *(this + 216) = v13;
    v14 = *(a2 + 15);
    *(this + 32) = *(a2 + 32);
    *(this + 15) = v14;
    v15 = *(a2 + 264);
    *(this + 35) = *(a2 + 35);
    *(this + 264) = v15;
    v16 = *(a2 + 18);
    *(this + 38) = *(a2 + 38);
    *(this + 18) = v16;
    v17 = *(a2 + 312);
    *(this + 41) = *(a2 + 41);
    *(this + 312) = v17;
    v18 = *(a2 + 21);
    *(this + 44) = *(a2 + 44);
    *(this + 21) = v18;
    v19 = *(a2 + 360);
    *(this + 47) = *(a2 + 47);
    *(this + 360) = v19;
    v20 = *(a2 + 24);
    *(this + 50) = *(a2 + 50);
    *(this + 24) = v20;
    v21 = *(a2 + 408);
    *(this + 53) = *(a2 + 53);
    *(this + 408) = v21;
    *(this + 108) = *(a2 + 108);
    GPUTools::FD::CoreFunction::Relocate(this, a2, a3);
  }

  if (*(a2 + 65))
  {
    operator new();
  }

  *(this + 65) = 0;
  *(this + 456) = *(a2 + 456);
  *(this + 59) = *(a2 + 59);
  *(this + 120) = *(a2 + 120);
  *(this + 121) = *(a2 + 121);
  *(this + 61) = *(a2 + 61);
  v22 = *(a2 + 64);
  *(this + 63) = *(a2 + 63);
  *(this + 64) = v22;
  *(this + 62) = *(a2 + 62);
  *(this + 66) = *(a2 + 66);
  GPUTools::FD::Function::Relocate(this, a2, a3);
  return this;
}

void sub_24D6865D8(_Unwind_Exception *a1)
{
  MEMORY[0x253030980](v2, 0x10B0C40F47DA5FCLL);
  v4 = *(v1 + 448);
  if (!v4)
  {
    _Unwind_Resume(a1);
  }

  free(v4);
  _Unwind_Resume(a1);
}

double GPUTools::FD::Function::Function(uint64_t a1, uint64_t a2)
{
  *(a1 + 436) = 0;
  *(a1 + 448) = 0;
  if (a1 != a2)
  {
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 436) = *(a2 + 436);
    *a1 = *a2;
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 16) = *(a2 + 16);
    v2 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v2;
    v3 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v3;
    v4 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v4;
    v5 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v5;
    v6 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v6;
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
    v8 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v8;
    v9 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v9;
    v10 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v10;
    v11 = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 240) = v11;
    v12 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v12;
    v13 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v13;
    v14 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 312) = v14;
    v15 = *(a2 + 336);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 336) = v15;
    v16 = *(a2 + 360);
    *(a1 + 376) = *(a2 + 376);
    *(a1 + 360) = v16;
    v17 = *(a2 + 384);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 384) = v17;
    v18 = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 408) = v18;
    *(a1 + 432) = *(a2 + 432);
    *a2 = -1;
    *(a2 + 440) = 0;
    *(a2 + 448) = 0;
    *(a2 + 432) = 0;
  }

  *(a1 + 520) = *(a2 + 520);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 484) = *(a2 + 484);
  *(a1 + 488) = *(a2 + 488);
  v19 = *(a2 + 512);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = v19;
  result = *(a2 + 496);
  *(a1 + 496) = result;
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 520) = 0;
  return result;
}

GPUTools::FD::CoreFunction *GPUTools::FD::Function::operator=(GPUTools::FD::CoreFunction *this, GPUTools::FD::CoreFunction *a2, const GPUTools::FD::CoreFunction *a3)
{
  if (this != a2)
  {
    v5 = *(this + 56);
    if (v5)
    {
      free(v5);
    }

    *this = *a2;
    *(this + 5) = *(a2 + 5);
    *(this + 2) = *(a2 + 2);
    v6 = *(a2 + 24);
    *(this + 5) = *(a2 + 5);
    *(this + 24) = v6;
    v7 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v7;
    v8 = *(a2 + 72);
    *(this + 11) = *(a2 + 11);
    *(this + 72) = v8;
    v9 = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 6) = v9;
    v10 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v10;
    v11 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v11;
    v12 = *(a2 + 168);
    *(this + 23) = *(a2 + 23);
    *(this + 168) = v12;
    v13 = *(a2 + 12);
    *(this + 26) = *(a2 + 26);
    *(this + 12) = v13;
    v14 = *(a2 + 216);
    *(this + 29) = *(a2 + 29);
    *(this + 216) = v14;
    v15 = *(a2 + 15);
    *(this + 32) = *(a2 + 32);
    *(this + 15) = v15;
    v16 = *(a2 + 264);
    *(this + 35) = *(a2 + 35);
    *(this + 264) = v16;
    v17 = *(a2 + 18);
    *(this + 38) = *(a2 + 38);
    *(this + 18) = v17;
    v18 = *(a2 + 312);
    *(this + 41) = *(a2 + 41);
    *(this + 312) = v18;
    v19 = *(a2 + 21);
    *(this + 44) = *(a2 + 44);
    *(this + 21) = v19;
    v20 = *(a2 + 360);
    *(this + 47) = *(a2 + 47);
    *(this + 360) = v20;
    v21 = *(a2 + 24);
    *(this + 50) = *(a2 + 50);
    *(this + 24) = v21;
    v22 = *(a2 + 408);
    *(this + 53) = *(a2 + 53);
    *(this + 408) = v22;
    *(this + 108) = *(a2 + 108);
    GPUTools::FD::CoreFunction::Relocate(this, a2, a3);
    v24 = *(this + 65);
    if (v24)
    {
      GPUTools::FD::Function::~Function(v24);
      MEMORY[0x253030980]();
    }

    if (*(a2 + 65))
    {
      operator new();
    }

    *(this + 65) = 0;
    *(this + 456) = *(a2 + 456);
    *(this + 59) = *(a2 + 59);
    *(this + 120) = *(a2 + 120);
    *(this + 121) = *(a2 + 121);
    *(this + 61) = *(a2 + 61);
    v25 = *(a2 + 64);
    *(this + 63) = *(a2 + 63);
    *(this + 64) = v25;
    *(this + 62) = *(a2 + 62);
    *(this + 66) = *(a2 + 66);
    GPUTools::FD::Function::Relocate(this, a2, v23);
  }

  return this;
}

void GPUTools::FD::Function::~Function(GPUTools::FD::Function *this)
{
  if (!*(this + 65))
  {
    v1 = *(this + 56);
    if (!v1)
    {
      return;
    }

LABEL_5:
    free(v1);
    return;
  }

  GPUTools::FD::Function::~Function(*(this + 65));
  v1 = *(this + 56);
  if (v1)
  {
    goto LABEL_5;
  }
}

{
  if (!*(this + 65))
  {
    v1 = *(this + 56);
    if (!v1)
    {
      return;
    }

LABEL_5:
    free(v1);
    return;
  }

  GPUTools::FD::Function::~Function(*(this + 65));
  v1 = *(this + 56);
  if (v1)
  {
    goto LABEL_5;
  }
}

double GPUTools::FD::Function::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*(a1 + 448))
    {
      v23 = a1;
      free(*(a1 + 448));
      a1 = v23;
    }

    *(a1 + 440) = *(a2 + 440);
    *(a1 + 436) = *(a2 + 436);
    *a1 = *a2;
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 16) = *(a2 + 16);
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v3;
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
    v8 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v8;
    v9 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v9;
    v10 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v10;
    v11 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v11;
    v12 = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 240) = v12;
    v13 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v13;
    v14 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v14;
    v15 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 312) = v15;
    v16 = *(a2 + 336);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 336) = v16;
    v17 = *(a2 + 360);
    *(a1 + 376) = *(a2 + 376);
    *(a1 + 360) = v17;
    v18 = *(a2 + 384);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 384) = v18;
    v19 = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 408) = v19;
    *(a1 + 432) = *(a2 + 432);
    *a2 = -1;
    *(a2 + 440) = 0;
    *(a2 + 448) = 0;
    *(a2 + 432) = 0;
    if (*(a1 + 520))
    {
      v20 = a1;
      GPUTools::FD::Function::~Function(*(a1 + 520));
      MEMORY[0x253030980]();
      a1 = v20;
    }

    *(a1 + 520) = *(a2 + 520);
    *(a1 + 456) = *(a2 + 456);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 484) = *(a2 + 484);
    *(a1 + 488) = *(a2 + 488);
    v21 = *(a2 + 512);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = v21;
    result = *(a2 + 496);
    *(a1 + 496) = result;
    *(a1 + 528) = *(a2 + 528);
    *(a2 + 520) = 0;
  }

  return result;
}

void GTFunctionDecoder::GTFunctionDecoder(GTFunctionDecoder *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = malloc_type_malloc(0x100uLL, 0x10C004028F705ECuLL);
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = malloc_type_malloc(0x100uLL, 0x10C004028F705ECuLL);
}

void GTFunctionDecoder::~GTFunctionDecoder(void **this)
{
  free(*this);
  free(this[2]);
}

{
  free(*this);
  free(this[2]);
}

uint64_t GTFunctionDecoder::_push(GTFunctionDecoder *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = *this;
  if (v2 == v3)
  {
    if (v2 >= 1)
    {
      v5 = 2 * v2;
    }

    else
    {
      v5 = 32;
    }

    *(this + 3) = v5;
    v4 = malloc_type_realloc(v4, 536 * v5, 0x10B0040F47DA5FCuLL);
    *this = v4;
    v2 = *(this + 2);
  }

  *(this + 2) = v2 + 1;
  return v4 + 536 * v2;
}

void GTFunctionDecoder::_decode(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  v23 = 0;
  v7 = a4;
  FBDecoder_DecodeArguments(&v23, a2 + 36, (*a2 - 36), a3, a4);
  bzero(a1, 0x218uLL);
  *(a1 + 114) = *(a2 + 16);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 55) = a2;
  v8 = *(a2 + 4);
  a1[108] = *a2;
  v9 = *(a2 + 32);
  *a1 = v8;
  a1[1] = v9;
  v10 = HIDWORD(v23);
  *(a1 + 5) = WORD2(v23);
  if (v10)
  {
    if (*(a3 + 10) == 67)
    {
      v11 = **a3;
    }

    else
    {
      v11 = 0;
    }

    v14 = a1 + 35;
    v15 = (a3 + 11);
    *(a1 + 2) = v11;
    while (1)
    {
      *(v14 - 11) = *(v15 - 11);
      v20 = *(v15 - 1);
      if (v20 > 0x68)
      {
        if (*(v15 - 1) > 0x72u)
        {
          switch(v20)
          {
            case 's':
              *(v14 - 7) = 3;
              v16 = 3;
              goto LABEL_20;
            case 't':
              goto LABEL_53;
            case 'w':
              goto LABEL_39;
          }
        }

        else
        {
          switch(v20)
          {
            case 'i':
              *(v14 - 7) = 5;
LABEL_64:
              v16 = 5;
              goto LABEL_20;
            case 'l':
LABEL_53:
              *(v14 - 7) = 11;
LABEL_30:
              if (v20 <= 114)
              {
                if (v20 == 105)
                {
                  goto LABEL_64;
                }

                if (v20 == 108)
                {
                  v16 = 11;
                  goto LABEL_20;
                }

                if (v20 != 112)
                {
                  goto LABEL_73;
                }

LABEL_62:
                v16 = 13;
                goto LABEL_20;
              }

              if (v20 == 119)
              {
                v16 = 7;
                goto LABEL_20;
              }

              if (v20 == 116)
              {
                goto LABEL_62;
              }

              if (v20 != 115)
              {
                goto LABEL_73;
              }

              v16 = 3;
              goto LABEL_20;
            case 'p':
LABEL_39:
              *(v14 - 7) = 7;
              if (v20 > 104)
              {
                goto LABEL_30;
              }

              goto LABEL_40;
          }
        }
      }

      else if (*(v15 - 1) > 0x61u)
      {
        switch(v20)
        {
          case 'b':
            v16 = 1;
            *(v14 - 7) = 1;
            goto LABEL_20;
          case 'd':
            *(v14 - 7) = 10;
LABEL_67:
            v16 = 10;
            goto LABEL_20;
          case 'f':
            *(v14 - 7) = 9;
LABEL_61:
            v16 = 9;
            goto LABEL_20;
        }
      }

      else
      {
        if (v20 == 67)
        {
          goto LABEL_39;
        }

        if (v20 == 83 || v20 == 85)
        {
          *(v14 - 7) = 13;
          goto LABEL_40;
        }
      }

      *(v14 - 7) = 0;
      if (v20 > 104)
      {
        goto LABEL_30;
      }

LABEL_40:
      if (v20 > 97)
      {
        if (v20 == 98)
        {
          v16 = 1;
          goto LABEL_20;
        }

        if (v20 == 100)
        {
          goto LABEL_67;
        }

        if (v20 != 102)
        {
LABEL_73:
          v16 = 0;
          goto LABEL_20;
        }

        goto LABEL_61;
      }

      if (v20 == 67)
      {
        v16 = 15;
      }

      else if (v20 == 83)
      {
        v16 = 14;
      }

      else
      {
        v16 = 0;
      }

LABEL_20:
      *(v14 - 5) = v16;
      *(v14 - 3) = 0;
      *(v14 - 1) = *(v15 - 3);
      v17 = *v15;
      v15 += 16;
      v18 = v17 & 1;
      if (v20 == 85)
      {
        v19 = v18 | 8;
      }

      else
      {
        v19 = v18;
      }

      *v14 = v19;
      v14 += 12;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }
  }

  *(a1 + 2) = 0;
LABEL_5:
  if (*(a2 + 32))
  {
    HIDWORD(v23) = 0;
    FBDecoder_DecodeArguments(&v23, a2 + 36, (*a2 - 36), a3, v7);
    *(a1 + 3) = *a3;
    v12 = *(a3 + 10);
    v13 = 7;
    if (v12 <= 0x68)
    {
      if (*(a3 + 10) > 0x61u)
      {
        switch(v12)
        {
          case 'b':
            v21 = 1;
            a1[8] = 1;
            goto LABEL_113;
          case 'd':
            a1[8] = 10;
            goto LABEL_107;
          case 'f':
            a1[8] = 9;
LABEL_100:
            v21 = 9;
            goto LABEL_113;
        }
      }

      else
      {
        if (v12 == 67)
        {
          goto LABEL_87;
        }

        if (v12 == 83 || v12 == 85)
        {
          a1[8] = 13;
          goto LABEL_88;
        }
      }

LABEL_86:
      v13 = 0;
LABEL_87:
      a1[8] = v13;
      if (v12 <= 104)
      {
LABEL_88:
        if (v12 <= 97)
        {
          if (v12 == 67)
          {
            v21 = 15;
            goto LABEL_113;
          }

          if (v12 == 83)
          {
            v21 = 14;
            goto LABEL_113;
          }

          goto LABEL_91;
        }

        if (v12 == 98)
        {
          v21 = 1;
          goto LABEL_113;
        }

        if (v12 != 100)
        {
          if (v12 == 102)
          {
            goto LABEL_100;
          }

LABEL_91:
          v21 = 0;
LABEL_113:
          a1[9] = v21;
          a1[10] = 0;
          *(a1 + 22) = *(a3 + 8);
          if (v12 == 85)
          {
            v22 = *(a3 + 11) & 1 | 8;
          }

          else
          {
            v22 = *(a3 + 11) & 1;
          }

          *(a1 + 23) = v22;
          return;
        }

LABEL_107:
        v21 = 10;
        goto LABEL_113;
      }

      goto LABEL_12;
    }

    if (*(a3 + 10) > 0x72u)
    {
      if (v12 == 115)
      {
        a1[8] = 3;
        v21 = 3;
        goto LABEL_113;
      }

      if (v12 != 116)
      {
        if (v12 == 119)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }
    }

    else
    {
      if (v12 == 105)
      {
        a1[8] = 5;
        goto LABEL_103;
      }

      if (v12 != 108)
      {
        if (v12 == 112)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }
    }

    a1[8] = 11;
LABEL_12:
    if (v12 > 114)
    {
      if (v12 == 119)
      {
        v21 = 7;
        goto LABEL_113;
      }

      if (v12 != 116)
      {
        if (v12 == 115)
        {
          v21 = 3;
          goto LABEL_113;
        }

        goto LABEL_91;
      }

LABEL_101:
      v21 = 13;
      goto LABEL_113;
    }

    if (v12 != 105)
    {
      if (v12 == 108)
      {
        v21 = 11;
        goto LABEL_113;
      }

      if (v12 != 112)
      {
        goto LABEL_91;
      }

      goto LABEL_101;
    }

LABEL_103:
    v21 = 5;
    goto LABEL_113;
  }
}