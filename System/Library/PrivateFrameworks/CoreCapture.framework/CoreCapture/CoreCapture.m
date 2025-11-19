uint64_t CCPipe_getTypeID()
{
  result = __kCCPipeTypeID;
  if (!__kCCPipeTypeID)
  {
    pthread_once(&__gCCPipeTypeInit, __CCPipeRegister);
    return __kCCPipeTypeID;
  }

  return result;
}

uint64_t __CCPipeRegister()
{
  result = _CFRuntimeRegisterClass();
  __kCCPipeTypeID = result;
  return result;
}

double __CCPipeRelease(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    *(a1 + 56) = 0;
    IOConnectCallMethod(*(*(a1 + 16) + 20), 7u, 0, 0, (a1 + 24), 8uLL, 0, 0, 0, 0);
    IOConnectCallMethod(*(*(a1 + 16) + 20), 3u, 0, 0, (a1 + 24), 8uLL, 0, 0, 0, 0);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t CCPipe_create(uint64_t *a1, uint64_t a2, mach_port_t *a3, const char *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (!__kCCPipeTypeID)
  {
    pthread_once(&__gCCPipeTypeInit, __CCPipeRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v14 = 3825187585;
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v8 = Instance;
  *a1 = Instance;
  *(Instance + 24) = 0u;
  outputStruct = (Instance + 24);
  *(Instance + 72) = 0u;
  *(Instance + 88) = 0u;
  *(Instance + 40) = 0u;
  *(Instance + 56) = 0u;
  *(Instance + 16) = a3;
  CFRetain(a3);
  v17 = 8;
  v10 = IOConnectCallMethod(a3[5], 2u, 0, 0, a4, 0x448uLL, 0, 0, outputStruct, &v17);
  if (v10)
  {
    goto LABEL_10;
  }

  v11 = *(a4 + 3);
  v12 = *a4;
  *(v8 + 28) = *a4;
  *(v8 + 32) = v11;
  *(v8 + 40) = *(a4 + 3);
  *(v8 + 48) = 0;
  if (!v12)
  {
    v18[0] = 24;
    v10 = IOConnectCallMethod(*(*(v8 + 16) + 20), 6u, 0, 0, outputStruct, 8uLL, 0, 0, (v8 + 64), v18);
    if (!v10)
    {
      v13 = os_log_create(a4 + 580, a4 + 836);
      *(v8 + 96) = v13;
      if (v13)
      {
        goto LABEL_8;
      }

      v14 = 3825187587;
      goto LABEL_14;
    }

LABEL_10:
    v14 = v10;
LABEL_14:
    CFRelease(v8);
LABEL_15:
    CFRelease(a3);
    goto LABEL_9;
  }

LABEL_8:
  v14 = 0;
  *(v8 + 56) = 0;
  *(v8 + 88) = 1;
LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t CCPipe_capture(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v2;
  v12 = v2;
  v11 = v2;
  v10 = v2;
  v9 = v2;
  v8 = v2;
  v7 = v2;
  v6 = v2;
  inputStruct = *(a1 + 24);
  __strlcpy_chk();
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0xAu, 0, 0, &inputStruct, 0x88uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCPipe_logw(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v71 = *MEMORY[0x277D85DE8];
  if (!a7)
  {
    goto LABEL_18;
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  memset(v70, 170, 20);
  memset(&v59, 0, sizeof(v59));
  time(&v60);
  localtime_r(&v60, &v59);
  strftime(v70, 0x14uLL, "%b %d %H:%M:%S", &v59);
  *v68 = 0;
  v69 = 0;
  strftime(v68, 0x10uLL, "%z", &v59);
  v67 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v12;
  v66 = v12;
  v13 = a3 > 7 ? 45 : dword_24529F9B0[a3];
  snprintf(__str, 0x28uLL, "%s.%06d %s <%c>", v70, v59.tm_sec, v68, v13);
  v14 = *(a1 + 96);
  if (!v14)
  {
    goto LABEL_18;
  }

  if (a3 <= 4)
  {
    if (a3 - 2 >= 3 && a3 < 2)
    {
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_16;
    }

LABEL_8:
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_16;
  }

  if (a3 - 6 < 2)
  {
LABEL_12:
    v15 = OS_LOG_TYPE_DEBUG;
    goto LABEL_16;
  }

  if (a3 != 5)
  {
    if (a3 != 127)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v15 = OS_LOG_TYPE_INFO;
LABEL_16:
  if (os_log_type_enabled(*(a1 + 96), v15))
  {
    *buf = 136315394;
    v62 = __str;
    v63 = 2080;
    v64 = a4;
    _os_log_impl(&dword_24529D000, v14, v15, "%s %s", buf, 0x16u);
  }

LABEL_18:
  if (!a6)
  {
    goto LABEL_72;
  }

  v58 = a3;
  a6 = 3758097086;
  *&v59.tm_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v59.tm_hour = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v59, 0);
  v16 = *&v59.tm_sec;
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  *buf = v19[1];
  *v70 = *v19;
  if (*buf >= v18)
  {
    a6 = 3758097097;
    goto LABEL_72;
  }

  tm_hour = v59.tm_hour;
  if (*v70 < *buf)
  {
    LODWORD(v20) = *v70 + v18 - *buf;
  }

  else
  {
    LODWORD(v20) = *v70 - *buf;
  }

  if (*v70 == *buf)
  {
    v20 = v18;
  }

  else
  {
    v20 = v20;
  }

  v21 = (a5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = v21 + 36;
  if ((v18 - *buf) <= 0x23)
  {
    v22 += (v18 - *buf);
  }

  v57 = v20 - 4;
  if (v20 - 4 < v22)
  {
    v55 = v22;
    isCCDaemonRunning = __isCCDaemonRunning();
    v22 = v55;
    if (isCCDaemonRunning && (*(a1 + 32) || v19[2]))
    {
      goto LABEL_72;
    }

    v53 = v16;
    v24 = a1;
    v25 = *(a1 + 64);
    v26 = *(v24 + 72);
    v27 = *(v24 + 80);
    v54 = v24;
    v28 = *v27;
    if (v55 == -4)
    {
      v35 = 0;
    }

    else
    {
      v52 = v19;
      v29 = 0;
      do
      {
        *__str = *v27;
        v30 = *__str;
        v31 = v25 + *__str;
        if (*v31 == 80)
        {
          v29 += 4;
          v32 = *__str + 4;
        }

        else
        {
          if (*v31 == 82)
          {
            break;
          }

          v33 = *(v31 + 24) + *(v31 + 26) + 36;
          v29 += v33;
          v32 = v33 + *__str;
        }

        *__str = v32 % v26;
        v34 = v30;
        atomic_compare_exchange_strong_explicit(v27, &v34, v32 % v26, memory_order_relaxed, memory_order_relaxed);
        if (v34 != v30)
        {
          printf("Someone changed readPtr %d->%d.\n", v30, *v27);
        }
      }

      while (v55 + 4 > v29);
      v35 = v29;
      v19 = v52;
      v22 = v55;
    }

    v21 = (a5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    a1 = v54;
    v16 = v53;
    if (v22 >= v35)
    {
      atomic_fetch_add_explicit((v54 + 48), 1u, memory_order_relaxed);
      goto LABEL_72;
    }
  }

  v36 = v22;
  v37 = *buf >> 2;
  v38 = (v17 + 4 * v37);
  v39 = v18 >> 2;
  v40 = v17 + 4 * v39;
  if ((v18 - *buf) > 0x23)
  {
    v41 = (v17 + 4 * v37);
  }

  else
  {
    v41 = v17;
    if (v39 > v37)
    {
      v42 = v38 + 4;
      if ((v38 + 4) <= v40)
      {
        v42 = (v17 + 4 * v39);
      }

      memset_pattern16(v38, &unk_24529F9D0, (&v42[~v17 - 4 * v37] & 0xFFFFFFFFFFFFFFFCLL) + 4);
      v41 = v17;
    }
  }

  v43 = v41 + 36;
  if (v41 + 36 == v40)
  {
    v43 = v17;
  }

  *v41 = 82;
  *(v41 + 3) = atomic_fetch_add_explicit((a1 + 48), 1u, memory_order_relaxed) + 1;
  *buf += v36;
  *buf %= v18;
  v19[1] = *buf;
  *(v41 + 2) = 0;
  *(v41 + 1) = v16;
  *(v41 + 2) = tm_hour;
  *(v41 + 12) = a5;
  v41[26] = v21 - a5;
  v41[27] = v58;
  *(v41 + 28) = 0;
  v44 = *v19;
  if (a5)
  {
    v45 = 0;
    v46 = 1;
    v47 = v57;
    do
    {
      *v43++ = *(a4 + v45);
      if (v43 == v40)
      {
        v43 = v17;
      }

      v45 = v46++;
    }

    while (v45 < a5);
  }

  else
  {
    v47 = v57;
  }

  if (v21 > a5)
  {
    v48 = a5 - v21;
    do
    {
      *v43++ = 0;
      if (v43 == v40)
      {
        v43 = v17;
      }
    }

    while (!__CFADD__(v48++, 1));
  }

  __dmb(0xBu);
  *v41 = 87;
  if (*(a1 + 32) == 1 && __isCCDaemonRunning() && v47 < *(a1 + 40) && !v19[2])
  {
    __sendNotification(a1);
  }

  a6 = 0;
LABEL_72:
  v50 = *MEMORY[0x277D85DE8];
  return a6;
}

BOOL __isCCDaemonRunning()
{
  v0 = IOServiceMatching("CCCapture");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v2 != 0;
}

uint64_t CCStream_getTypeID()
{
  result = __kCCStreamTypeID;
  if (!__kCCStreamTypeID)
  {
    pthread_once(&__gCCStreamTypeInit, __CCStreamRegister);
    return __kCCStreamTypeID;
  }

  return result;
}

uint64_t __CCStreamRegister()
{
  result = _CFRuntimeRegisterClass();
  __kCCStreamTypeID = result;
  return result;
}

double __CCStreamRelease(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      free(v2);
    }

    IOConnectCallMethod(*(*(a1 + 16) + 20), 5u, 0, 0, (a1 + 32), 0x50uLL, 0, 0, 0, 0);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t CCStream_create(uint64_t *a1, uint64_t a2, void *a3, const void *a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (!__kCCStreamTypeID)
  {
    pthread_once(&__gCCStreamTypeInit, __CCStreamRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v12 = 3825187585;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v8 = Instance;
  *a1 = Instance;
  v9 = a3[2];
  *(Instance + 104) = 0u;
  *(Instance + 88) = 0u;
  *(Instance + 72) = 0u;
  *(Instance + 56) = 0u;
  *(Instance + 40) = 0u;
  *(Instance + 24) = 0u;
  *(Instance + 16) = v9;
  CFRetain(v9);
  *(v8 + 24) = a3;
  CFRetain(a3);
  v15[0] = 80;
  v10 = IOConnectCallMethod(v9[5], 4u, 0, 0, a4, 0x450uLL, 0, 0, (v8 + 32), v15);
  if (v10)
  {
    v12 = v10;
LABEL_12:
    CFRelease(v8);
    CFRelease(v9);
LABEL_13:
    CFRelease(a3);
    goto LABEL_7;
  }

  *(v8 + 48) = 2048;
  v11 = malloc_type_malloc(0x800uLL, 0x100004077774924uLL);
  *(v8 + 40) = v11;
  if (!v11)
  {
    v12 = 3825187586;
    goto LABEL_12;
  }

  bzero(v11, 0x800uLL);
  v12 = 0;
  *(v8 + 64) = 0xFFFFFFFF0000007FLL;
  *(v8 + 80) = -1;
  *(v8 + 88) = 0;
  *(v8 + 112) = 1;
LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t CCStream_setFlags(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  inputStruct[1] = -1431655766;
  v6 = a2;
  inputStruct[0] = v2;
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0xBu, 0, 0, inputStruct, 0x10uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_getFlags(uint64_t a1)
{
  inputStruct[2] = *MEMORY[0x277D85DE8];
  inputStruct[0] = 0xAAAAAAAAAAAAAAAALL;
  inputStruct[1] = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(inputStruct[0]) = *(a1 + 32);
  v3 = 8;
  outputStruct = 0xAAAAAAAAAAAAAAAALL;
  if (IOConnectCallMethod(*(*(a1 + 16) + 20), 0xCu, 0, 0, inputStruct, 0x10uLL, 0, 0, &outputStruct, &v3))
  {
    result = 0;
  }

  else
  {
    result = outputStruct;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCStream_setLogFlag(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  inputStruct[1] = -1431655766;
  v6 = a2;
  inputStruct[0] = v2;
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0xDu, 0, 0, inputStruct, 0x10uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCStream_clearLogFlag(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  inputStruct[1] = -1431655766;
  v6 = a2;
  inputStruct[0] = v2;
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0xEu, 0, 0, inputStruct, 0x10uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCStream_setConsoleFlags(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  inputStruct[1] = -1431655766;
  v6 = a2;
  inputStruct[0] = v2;
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0xFu, 0, 0, inputStruct, 0x10uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_getConsoleFlags(uint64_t a1)
{
  inputStruct[2] = *MEMORY[0x277D85DE8];
  inputStruct[0] = 0xAAAAAAAAAAAAAAAALL;
  inputStruct[1] = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(inputStruct[0]) = *(a1 + 32);
  v3 = 8;
  outputStruct = 0xAAAAAAAAAAAAAAAALL;
  if (IOConnectCallMethod(*(*(a1 + 16) + 20), 0x10u, 0, 0, inputStruct, 0x10uLL, 0, 0, &outputStruct, &v3))
  {
    result = 0;
  }

  else
  {
    result = outputStruct;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCStream_setConsoleLogFlag(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  inputStruct[1] = -1431655766;
  v6 = a2;
  inputStruct[0] = v2;
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x11u, 0, 0, inputStruct, 0x10uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCStream_clearConsoleLogFlag(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  inputStruct[1] = -1431655766;
  v6 = a2;
  inputStruct[0] = v2;
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x12u, 0, 0, inputStruct, 0x10uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCStream_setLevel(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  inputStruct[0] = *(a1 + 32);
  inputStruct[1] = a2;
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x13u, 0, 0, inputStruct, 8uLL, 0, 0, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCStream_getLevel(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  inputStruct[0] = *(a1 + 32);
  inputStruct[1] = -1431655766;
  outputStruct = -1431655766;
  v3 = 4;
  if (IOConnectCallMethod(*(*(a1 + 16) + 20), 0x14u, 0, 0, inputStruct, 8uLL, 0, 0, &outputStruct, &v3))
  {
    result = 0;
  }

  else
  {
    result = outputStruct;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCStream_setConsoleLevel(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  inputStruct[0] = *(a1 + 32);
  inputStruct[1] = a2;
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x15u, 0, 0, inputStruct, 8uLL, 0, 0, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCStream_getConsoleLevel(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  inputStruct[0] = *(a1 + 32);
  inputStruct[1] = -1431655766;
  outputStruct = -1431655766;
  v3 = 4;
  if (IOConnectCallMethod(*(*(a1 + 16) + 20), 0x16u, 0, 0, inputStruct, 8uLL, 0, 0, &outputStruct, &v3))
  {
    result = 0;
  }

  else
  {
    result = outputStruct;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logEmergency(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 0, -1, a2, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t __logv(uint64_t a1, signed int a2, uint64_t a3, const char *a4, va_list a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 24);
  Level = CCStream_getLevel(a1);
  ConsoleLevel = CCStream_getConsoleLevel(a1);
  Flags = CCStream_getFlags(a1);
  result = CCStream_getConsoleFlags(a1);
  v15 = (Flags & a3) != 0 || a3 == -1;
  v16 = Level >= a2 && v15;
  v18 = (result & a3) != 0 || a3 == -1;
  v19 = ConsoleLevel >= a2 && v18;
  v20 = ConsoleLevel < a2 && Level < a2;
  if (!v20 && ((v16 | v19) & 1) != 0)
  {
    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = (a1 + 56);
      if (*(a1 + 56) != 1)
      {
        v23 = *(a1 + 48);
        *v22 = 1;
        result = vsnprintf(v21, v23, a4, a5);
        if ((result & 0x80000000) != 0)
        {
LABEL_39:
          *v22 = 0;
          goto LABEL_40;
        }

        if (v23 > result)
        {
          v25 = result;
LABEL_29:
          result = CCPipe_logw(v9, v24, a2, v21, v25, v16, v19);
          goto LABEL_39;
        }

        if (result <= 0x5000)
        {
          v28 = (result + 1);
          result = malloc_type_malloc(v28, 0x100004077774924uLL);
          if (result)
          {
            v29 = result;
            free(v21);
            *(a1 + 40) = v29;
            *(a1 + 48) = v28;
            result = vsnprintf(v29, v28, a4, a5);
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_39;
            }

            v25 = result;
            v21 = v29;
            goto LABEL_29;
          }
        }

        else
        {
          result = printf("CCLogStream::log - Grown more than expected (%d)\n", result);
        }

        atomic_fetch_add_explicit((v9 + 48), 1u, memory_order_relaxed);
        goto LABEL_39;
      }
    }

    else
    {
      result = printf("%s(): scratchBuffer is NULL\n", "__logv");
      v27 = *(a1 + 56);
      v26 = (a1 + 56);
      if ((v27 & 1) == 0)
      {
        *v26 = 1;
        v22 = v26;
        goto LABEL_39;
      }
    }

    atomic_fetch_add_explicit((v9 + 48), 1u, memory_order_relaxed);
  }

LABEL_40:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logEmergencyIf(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 0, a2, a3, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logAlert(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 1, -1, a2, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logAlertIf(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 1, a2, a3, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logCrit(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 2, -1, a2, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logCritIf(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 2, a2, a3, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logWarn(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 3, -1, a2, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logWarnIf(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 3, a2, a3, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logNotice(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 4, -1, a2, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logNoticeIf(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 4, a2, a3, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logInfo(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 5, -1, a2, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logInfoIf(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 5, a2, a3, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logDebug(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 6, -1, a2, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logDebugIf(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 6, a2, a3, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logSpam(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 7, -1, a2, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logSpamIf(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, 7, a2, a3, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_log(uint64_t a1, signed int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, a2, -1, a3, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t CCStream_logIf(uint64_t a1, signed int a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *MEMORY[0x277D85DE8];
  result = __logv(a1, a2, a3, a4, &a9);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CC_getTypeID()
{
  result = __kCCTypeID;
  if (!__kCCTypeID)
  {
    pthread_once(&__gCCTypeInit, __CCRegister);
    return __kCCTypeID;
  }

  return result;
}

uint64_t __CCRegister()
{
  result = _CFRuntimeRegisterClass();
  __kCCTypeID = result;
  return result;
}

void __CCRelease(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 20);
    if (v2)
    {
      IOConnectCallScalarMethod(v2, 1u, 0, 0, 0, 0);
      IOServiceClose(*(a1 + 20));
    }
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    IOObjectRelease(v3);
    *(a1 + 16) = 0;
  }

  os_activity_end(*(a1 + 24));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

uint64_t CC_create(void *a1)
{
  if (!__kCCTypeID)
  {
    pthread_once(&__gCCTypeInit, __CCRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 3825187585;
  }

  v3 = Instance;
  *a1 = Instance;
  Instance[2] = 0;
  Instance[3] = 0;
  Instance[4] = 0;
  v4 = IOServiceMatching("CoreCaptureResponder");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v4);
  if (!MatchingService)
  {
    v7 = 0;
    goto LABEL_12;
  }

  *(v3 + 4) = MatchingService;
  v6 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0x123u, v3 + 5);
  if (v6)
  {
    v7 = v6;
    goto LABEL_12;
  }

  v7 = IOConnectCallScalarMethod(*(v3 + 5), 0, 0, 0, 0, 0);
  if (v7)
  {
LABEL_12:
    CFRelease(v3);
    return v7;
  }

  v3[3] = _os_activity_start(&dword_24529D000, "CoreCapture Userspace", OS_ACTIVITY_FLAG_DEFAULT);
  *(v3 + 32) = 1;
  return v7;
}