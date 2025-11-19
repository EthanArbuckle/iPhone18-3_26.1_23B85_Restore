id DisplayAddressForAddress(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && !getnameinfo([v1 bytes], objc_msgSend(v1, "length"), v6, 0x401u, 0, 0, 2))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:1];
    if (!v3)
    {
      DisplayAddressForAddress_cold_1();
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

__CFString *icmpTypeToString(uint64_t a1)
{
  if ((a1 + 123) >= 5u)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", a1];
  }

  else
  {
    v2 = off_279968328[(a1 + 123)];
  }

  return v2;
}

void SocketReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    SocketReadCallback_cold_1();
  }

  if (v9[13] != a1)
  {
    SocketReadCallback_cold_2();
  }

  if (a2 != 1)
  {
    SocketReadCallback_cold_3();
  }

  if (a3)
  {
    SocketReadCallback_cold_4();
  }

  if (a4)
  {
    SocketReadCallback_cold_5();
  }

  [v9 readData];
}

uint64_t ping_runloop_thread(void *a1)
{
  v1 = a1;
  [v1 setPingRunLoop:CFRunLoopGetCurrent()];
  v2 = [v1 pingRunLoopReady];
  dispatch_semaphore_signal(v2);

  v3 = *MEMORY[0x277CBF058];
  do
  {
    CFRunLoopRunInMode(v3, 10.0, 1u);
  }

  while (([v1 running] & 1) != 0);

  return 0;
}

double __getMachTimeBaseInfo_block_invoke()
{
  if (mach_timebase_info(&getMachTimeBaseInfo_machTimeInfoData))
  {
    _os_assumes_log();
  }

  else if (HIDWORD(getMachTimeBaseInfo_machTimeInfoData))
  {
    return result;
  }

  *&result = 0x100000001;
  getMachTimeBaseInfo_machTimeInfoData = 0x100000001;
  return result;
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x3Au);
}

unsigned __int8 *OUTLINED_FUNCTION_19@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_25B85F278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void netqual_log_init()
{
  if (netqual_log_init_onceToken != -1)
  {
    netqual_log_init_cold_1();
  }
}

uint64_t __netqual_log_init_block_invoke()
{
  os_log_netqual = os_log_create("com.apple.networkQuality", "netqual");

  return MEMORY[0x2821F96F8]();
}

uint64_t traceroute6_parseargs(uint64_t *a1, int a2, char **a3)
{
  __endptr = 0;
  v6 = MEMORY[0x277D85E68];
  while (2)
  {
    v7 = getopt(a2, a3, "aA:deEf:g:i:Ilm:nNp:q:rs:t:TUvw:");
    switch(v7)
    {
      case 'A':
        *(a1 + 855) = 1;
        a1[286] = *v6;
        continue;
      case 'B':
      case 'C':
      case 'D':
      case 'F':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'L':
      case 'M':
      case 'O':
      case 'P':
      case 'Q':
      case 'R':
      case 'S':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'h':
      case 'j':
      case 'k':
      case 'o':
      case 'u':
        return 0xFFFFFFFFLL;
      case 'E':
        *(a1 + 854) = 1;
        continue;
      case 'I':
        *(a1 + 852) = 58;
        continue;
      case 'N':
        *(a1 + 852) = 59;
        continue;
      case 'T':
        *(a1 + 852) = 6;
        continue;
      case 'U':
        *(a1 + 852) = 17;
        continue;
      case 'a':
        *(a1 + 855) = 1;
        continue;
      case 'd':
        *(a1 + 849) |= 1u;
        continue;
      case 'e':
        *(a1 + 856) = 1;
        continue;
      case 'f':
        __endptr = 0;
        *__error() = 0;
        *(a1 + 847) = strtoul(*v6, &__endptr, 0);
        if (!*__error() && **v6 && !*__endptr && *(a1 + 847) < 256)
        {
          continue;
        }

        v14 = a1[1];
        if (v14)
        {
          v15 = *a1;
          v16 = "traceroute6: invalid min hoplimit.\n";
          goto LABEL_99;
        }

        v19 = *MEMORY[0x277D85DF8];
        v20 = "traceroute6: invalid min hoplimit.\n";
        goto LABEL_79;
      case 'g':
        v10 = gethostbyname2(*v6, 30);
        if (!v10)
        {
          v22 = a1[1];
          v23 = *v6;
          if (!v22)
          {
            v32 = *v6;
            fprintf(*MEMORY[0x277D85DF8], "traceroute6: unknown host %s\n");
            return 0xFFFFFFFFLL;
          }

          v24 = *a1;
          v30 = *v6;
          v25 = "traceroute6: unknown host %s\n";
          goto LABEL_89;
        }

        v11 = v10;
        v12 = a1[284];
        if (!v12)
        {
          v12 = inet6_rth_init(a1 + 26, 0x810u, 0, 0);
          a1[284] = v12;
          if (!v12)
          {
            v14 = a1[1];
            if (!v14)
            {
              v19 = *MEMORY[0x277D85DF8];
              v20 = "inet6_rth_init failed.\n";
              v21 = 23;
              goto LABEL_114;
            }

            v15 = *a1;
            v16 = "inet6_rth_init failed.\n";
            goto LABEL_99;
          }
        }

        if (inet6_rth_add(v12, *v11->h_addr_list))
        {
          v22 = a1[1];
          v26 = *v6;
          if (!v22)
          {
            v33 = *v6;
            fprintf(*MEMORY[0x277D85DF8], "inet6_rth_add failed for %s\n");
            return 0xFFFFFFFFLL;
          }

          v24 = *a1;
          v31 = *v6;
          v25 = "inet6_rth_add failed for %s\n";
LABEL_89:
          v22(v24, v25);
          return 0xFFFFFFFFLL;
        }

        continue;
      case 'i':
        __endptr = 0;
        *__error() = 0;
        v9 = strtoul(*v6, &__endptr, 0);
        if (*__error() || !**v6 || *__endptr || v9 >= 0x10000)
        {
          v14 = a1[1];
          if (!v14)
          {
            v19 = *MEMORY[0x277D85DF8];
            v20 = "traceroute6: invalid ident.\n";
            v21 = 28;
            goto LABEL_114;
          }

          v15 = *a1;
          v16 = "traceroute6: invalid ident.\n";
LABEL_99:
          v14(v15, v16);
          return 0xFFFFFFFFLL;
        }

        *(a1 + 1683) = v9;
        continue;
      case 'l':
        ++*(a1 + 853);
        continue;
      case 'm':
        __endptr = 0;
        *__error() = 0;
        a1[430] = strtoul(*v6, &__endptr, 0);
        if (!*__error() && **v6 && !*__endptr && a1[430] < 0x100)
        {
          continue;
        }

        v14 = a1[1];
        if (v14)
        {
          v15 = *a1;
          v16 = "traceroute6: invalid max hoplimit.\n";
          goto LABEL_99;
        }

        v19 = *MEMORY[0x277D85DF8];
        v20 = "traceroute6: invalid max hoplimit.\n";
LABEL_79:
        v21 = 35;
        goto LABEL_114;
      case 'n':
        ++*(a1 + 851);
        continue;
      case 'p':
        __endptr = 0;
        *__error() = 0;
        v8 = strtoul(*v6, &__endptr, 0);
        if (*__error() || !**v6 || *__endptr)
        {
          v14 = a1[1];
          if (v14)
          {
            v15 = *a1;
            v16 = "traceroute6: invalid port.\n";
            goto LABEL_99;
          }

          v19 = *MEMORY[0x277D85DF8];
          v20 = "traceroute6: invalid port.\n";
          v21 = 27;
          goto LABEL_114;
        }

        if (v8 - 1 >= 0xFFFF)
        {
          v14 = a1[1];
          if (!v14)
          {
            v19 = *MEMORY[0x277D85DF8];
            v20 = "traceroute6: port out of range.\n";
            goto LABEL_105;
          }

          v15 = *a1;
          v16 = "traceroute6: port out of range.\n";
          goto LABEL_99;
        }

        *(a1 + 1682) = v8;
        continue;
      case 'q':
        __endptr = 0;
        *__error() = 0;
        a1[429] = strtoul(*v6, &__endptr, 0);
        if (*__error() || !**v6 || *__endptr)
        {
          v14 = a1[1];
          if (v14)
          {
            v15 = *a1;
            v16 = "traceroute6: invalid nprobes.\n";
            goto LABEL_99;
          }

          v19 = *MEMORY[0x277D85DF8];
          v20 = "traceroute6: invalid nprobes.\n";
          v21 = 30;
          goto LABEL_114;
        }

        if (a1[429])
        {
          continue;
        }

        v14 = a1[1];
        if (!v14)
        {
          v19 = *MEMORY[0x277D85DF8];
          v20 = "traceroute6: nprobes must be >0.\n";
          v21 = 33;
          goto LABEL_114;
        }

        v15 = *a1;
        v16 = "traceroute6: nprobes must be >0.\n";
        goto LABEL_99;
      case 'r':
        *(a1 + 849) |= 0x10u;
        continue;
      case 's':
        a1[287] = *v6;
        continue;
      case 't':
        __endptr = 0;
        *__error() = 0;
        v13 = strtoul(*v6, &__endptr, 0);
        if (*__error() || !**v6 || *__endptr || v13 >= 0x100)
        {
          v14 = a1[1];
          if (v14)
          {
            v15 = *a1;
            v16 = "traceroute6: invalid traffic class.\n";
            goto LABEL_99;
          }

          v19 = *MEMORY[0x277D85DF8];
          v20 = "traceroute6: invalid traffic class.\n";
          goto LABEL_113;
        }

        *(a1 + 848) = v13;
        continue;
      case 'v':
        ++*(a1 + 850);
        continue;
      case 'w':
        __endptr = 0;
        *__error() = 0;
        a1[431] = strtoul(*v6, &__endptr, 0);
        if (!*__error() && **v6 && !*__endptr)
        {
          if (!a1[431])
          {
            v14 = a1[1];
            if (v14)
            {
              v15 = *a1;
              v16 = "traceroute6: wait must be >= 1 sec.\n";
              goto LABEL_99;
            }

            v19 = *MEMORY[0x277D85DF8];
            v20 = "traceroute6: wait must be >= 1 sec.\n";
LABEL_113:
            v21 = 36;
            goto LABEL_114;
          }

          continue;
        }

        v14 = a1[1];
        if (v14)
        {
          v15 = *a1;
          v16 = "traceroute6: invalid wait time.\n";
          goto LABEL_99;
        }

        v19 = *MEMORY[0x277D85DF8];
        v20 = "traceroute6: invalid wait time.\n";
LABEL_105:
        v21 = 32;
LABEL_114:
        fwrite(v20, v21, 1uLL, v19);
        return 0xFFFFFFFFLL;
      default:
        if (v7 != -1)
        {
          return 0xFFFFFFFFLL;
        }

        v17 = MEMORY[0x277D85E78];
        v18 = a2 - *MEMORY[0x277D85E78];
        if (v18 == 1)
        {
          goto LABEL_109;
        }

        if (v18 != 2)
        {
          return 0xFFFFFFFFLL;
        }

        *(a1 + 843) = strtoul(*a3, &__endptr, 0);
        if (!*__error() && *a3 && !*__endptr)
        {
LABEL_109:
          v27 = a1[288];
          if (v27)
          {
            free(v27);
          }

          v28 = strdup(a3[*v17]);
          result = 0;
          a1[288] = v28;
          *MEMORY[0x277D85E88] = 1;
          *v17 = 1;
          return result;
        }

        v14 = a1[1];
        if (v14)
        {
          v15 = *a1;
          v16 = "traceroute6: invalid packet length.\n";
          goto LABEL_99;
        }

        v19 = *MEMORY[0x277D85DF8];
        v20 = "traceroute6: invalid packet length.\n";
        goto LABEL_113;
    }
  }
}

uint64_t traceroute6_run(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2 = v1;
  v208 = *MEMORY[0x277D85DE8];
  v204 = xmmword_25B949890;
  v199 = 1;
  v196 = 0;
  if (!v1[288])
  {
    v9 = v1[1];
    if (!v9)
    {
      v11 = 1;
      fwrite("traceroute6: Error: No hostname provided in context.\n", 0x35uLL, 1uLL, *MEMORY[0x277D85DF8]);
      goto LABEL_57;
    }

    v9(*v1, "traceroute6: Error: No hostname provided in context.\n");
    goto LABEL_19;
  }

  v3 = socket(30, 3, 58);
  *(v2 + 844) = v3;
  if (v3 < 0)
  {
    v20 = "socket(ICMPv6)";
LABEL_43:
    perror(v20);
LABEL_44:
    v11 = 5;
    goto LABEL_57;
  }

  v198 = 0;
  memset(&v197, 0, sizeof(v197));
  v195 = 0;
  if (!v2[430])
  {
    v195 = 8;
    sysctl(&v204, 4u, &v198, &v195, 0, 0);
    v2[430] = v198;
    v3 = *(v2 + 844);
  }

  if (setsockopt(v3, 41, 61, &v199, 4u) < 0)
  {
    traceroute6_run_cold_3();
  }

  if (setsockopt(*(v2 + 844), 41, 37, &v199, 4u) < 0)
  {
    traceroute6_run_cold_2();
  }

  *(v2 + 1683) = bswap32(getpid()) >> 16;
  v4 = *(v2 + 852);
  if (v4 > 0x3B || ((1 << v4) & 0xC00000000020040) == 0)
  {
    v12 = v2[1];
    if (v12)
    {
      v12(*v2, "traceroute6: unknown probe protocol %d\n", *(v2 + 852));
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "traceroute6: unknown probe protocol %d\n", *(v2 + 852));
    }

    goto LABEL_44;
  }

  v5 = socket(30, 3, v4);
  *(v2 + 845) = v5;
  if (v5 < 0)
  {
    v20 = "socket(SOCK_RAW)";
    goto LABEL_43;
  }

  if (v2[430] < *(v2 + 847))
  {
    v6 = v2[1];
    if (v6)
    {
      v7 = *v2;
      v8 = "traceroute6: max hoplimit must be larger than first hoplimit.\n";
LABEL_13:
      v6(v7, v8);
LABEL_56:
      v11 = 0xFFFFFFFFLL;
      goto LABEL_57;
    }

    v13 = *MEMORY[0x277D85DF8];
    v14 = "traceroute6: max hoplimit must be larger than first hoplimit.\n";
    v15 = 62;
    goto LABEL_24;
  }

  if (*(v2 + 854))
  {
    *(v2 + 848) = 1;
  }

  v10 = getuid();
  if (setuid(v10))
  {
LABEL_19:
    v11 = 1;
    goto LABEL_57;
  }

  if (*(v2 + 848) != -1 && setsockopt(*(v2 + 845), 41, 36, v2 + 424, 4u) == -1)
  {
    perror("setsockopt(IPV6_TCLASS)");
    v11 = 7;
    goto LABEL_57;
  }

  setvbuf(*MEMORY[0x277D85E08], 0, 1, 0x400uLL);
  memset(&v197.ai_addrlen, 0, 32);
  *&v197.ai_flags = xmmword_25B949880;
  v16 = getaddrinfo(v2[288], 0, &v197, &v196);
  if (v16)
  {
    v17 = v2[1];
    if (v17)
    {
      v18 = *v2;
      v19 = gai_strerror(v16);
      v17(v18, "traceroute6: %s\n", v19);
    }

    else
    {
      v29 = *MEMORY[0x277D85DF8];
      gai_strerror(v16);
      fprintf(v29, "traceroute6: %s\n");
    }

    goto LABEL_56;
  }

  v21 = v196;
  if (v196->ai_addrlen != 28)
  {
    v30 = v2[1];
    if (v30)
    {
      v31 = *v2;
      v32 = "traceroute6: size of sockaddr mismatch\n";
LABEL_51:
      v30(v31, v32);
LABEL_55:
      freeaddrinfo(v196);
      goto LABEL_56;
    }

    v33 = *MEMORY[0x277D85DF8];
    v34 = "traceroute6: size of sockaddr mismatch\n";
    v35 = 39;
LABEL_54:
    fwrite(v34, v35, 1uLL, v33);
    goto LABEL_55;
  }

  ai_addr = v196->ai_addr;
  v23 = *ai_addr;
  *(v2 + 9) = *&ai_addr->sa_data[10];
  *(v2 + 60) = v23;
  v24 = v2[288];
  if (v24)
  {
    free(v24);
    v21 = v196;
  }

  ai_canonname = v21->ai_canonname;
  if (!ai_canonname)
  {
    v2[288] = 0;
    goto LABEL_49;
  }

  v26 = strdup(ai_canonname);
  v2[288] = v26;
  if (!v26)
  {
LABEL_49:
    v30 = v2[1];
    if (v30)
    {
      v31 = *v2;
      v32 = "traceroute6: not enough core\n";
      goto LABEL_51;
    }

    v33 = *MEMORY[0x277D85DF8];
    v34 = "traceroute6: not enough core\n";
    v35 = 29;
    goto LABEL_54;
  }

  if (v21->ai_next)
  {
    if (getnameinfo(v21->ai_addr, v21->ai_addrlen, v2 + 2336, 0x401u, 0, 0, 2))
    {
      __strlcpy_chk();
    }

    v27 = v2[1];
    v28 = v2[288];
    if (v27)
    {
      v27(*v2, "traceroute6: Warning: %s has multiple addresses; using %s\n", v2[288], v2 + 2336);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "traceroute6: Warning: %s has multiple addresses; using %s\n", v2[288], v2 + 2336);
    }
  }

  freeaddrinfo(v196);
  v38 = *(v2 + 852);
  v39 = 8;
  if (v38 <= 57)
  {
    if (v38 == 6)
    {
      v39 = 20;
    }

    else if (v38 != 17)
    {
      goto LABEL_67;
    }

    goto LABEL_70;
  }

  if (v38 == 58)
  {
LABEL_70:
    v40 = *(v2 + 843);
    if (v40 >= v39)
    {
      if (v40 >= 0xFFFF)
      {
        v41 = v2[1];
        if (v41)
        {
          v41(*v2, "traceroute6: packet size must be %u <= s < %d.\n", v39, 0xFFFF);
        }

        else
        {
          fprintf(*MEMORY[0x277D85DF8], "traceroute6: packet size must be %u <= s < %d.\n");
        }

        goto LABEL_56;
      }
    }

    else
    {
      *(v2 + 843) = v39;
    }

    goto LABEL_75;
  }

  if (v38 != 59)
  {
LABEL_67:
    v6 = v2[1];
    if (!v6)
    {
      v178 = *(v2 + 852);
      fprintf(*MEMORY[0x277D85DF8], "traceroute6: unknown probe protocol %d.\n");
      goto LABEL_56;
    }

    v7 = *v2;
    v177 = *(v2 + 852);
    v8 = "traceroute6: unknown probe protocol %d.\n";
    goto LABEL_13;
  }

  *(v2 + 843) = 0;
LABEL_75:
  v42 = malloc_type_calloc(0xFFFFuLL, 1uLL, 0x100004077774924uLL);
  v2[433] = v42;
  if (!v42)
  {
    perror("calloc");
    goto LABEL_56;
  }

  v43 = *(v2 + 843);
  __memset_chk();
  v2[15] = v2 + 11;
  v2[21] = v2 + 434;
  v2[22] = 0xFFFFLL;
  *(v2 + 32) = 28;
  v2[17] = v2 + 21;
  *(v2 + 36) = 1;
  v44 = malloc_type_malloc(0x30uLL, 0xE720EE08uLL);
  if (!v44)
  {
    v6 = v2[1];
    if (v6)
    {
      v7 = *v2;
      v8 = "traceroute6: malloc failed\n";
      goto LABEL_13;
    }

    v13 = *MEMORY[0x277D85DF8];
    v14 = "traceroute6: malloc failed\n";
    v15 = 27;
LABEL_24:
    fwrite(v14, v15, 1uLL, v13);
    goto LABEL_56;
  }

  v45 = v44;
  v2[19] = v44;
  *(v2 + 40) = 48;
  setsockopt(*(v2 + 844), 0xFFFF, 4356, &v199, 4u);
  v46 = *(v2 + 849);
  if (v46)
  {
    setsockopt(*(v2 + 844), 0xFFFF, 1, &v199, 4u);
    v46 = *(v2 + 849);
  }

  if ((v46 & 0x10) != 0)
  {
    setsockopt(*(v2 + 844), 0xFFFF, 16, &v199, 4u);
  }

  v47 = *(v2 + 843);
  if (v47 <= 1)
  {
    v47 = 1;
  }

  v198 = v47;
  if (setsockopt(*(v2 + 845), 0xFFFF, 4097, &v198, 8u) < 0 && *(v2 + 852) != 59)
  {
    perror("setsockopt(SO_SNDBUF)");
    free(v45);
    v11 = 6;
    goto LABEL_57;
  }

  v48 = *(v2 + 849);
  if (v48)
  {
    setsockopt(*(v2 + 845), 0xFFFF, 1, &v199, 4u);
    v48 = *(v2 + 849);
  }

  if ((v48 & 0x10) != 0)
  {
    setsockopt(*(v2 + 845), 0xFFFF, 16, &v199, 4u);
  }

  v49 = v2[284];
  if (v49)
  {
    v50 = v49[3];
    v49[1] = 2 * v50;
    if (setsockopt(*(v2 + 845), 41, 51, v49, (16 * (v50 & 0x7F)) | 8))
    {
      v51 = v2[1];
      if (!v51)
      {
        v66 = *MEMORY[0x277D85DF8];
        v67 = __error();
        strerror(*v67);
        fprintf(v66, "setsockopt(IPV6_RTHDR): %s\n");
        goto LABEL_134;
      }

      v52 = *v2;
      v53 = __error();
      strerror(*v53);
      v54 = "setsockopt(IPV6_RTHDR): %s\n";
LABEL_93:
      v51(v52, v54);
LABEL_134:
      free(v45);
      goto LABEL_56;
    }
  }

  v2[4] = 0;
  *(v2 + 14) = 0;
  v2[5] = 0;
  v2[6] = 0;
  v55 = (v2 + 287);
  v56 = v2[287];
  if (!v56)
  {
    v206[0] = 0;
    *&v200.ai_flags = *(v2 + 60);
    *&v200.ai_protocol = *(v2 + 9);
    HIWORD(v200.ai_flags) = 6695;
    v62 = v2[285];
    if (v62)
    {
      *&v200.ai_socktype = *inet6_rthdr_getaddr(v62, 1);
    }

    v63 = socket(30, 2, 0);
    if (v63 < 0)
    {
      v80 = "socket";
LABEL_400:
      perror(v80);
      goto LABEL_134;
    }

    v64 = v63;
    if (connect(v63, &v200, LOBYTE(v200.ai_flags)) < 0)
    {
      v81 = "connect";
    }

    else
    {
      v206[0] = 28;
      if ((getsockname(v64, v2 + 2, v206) & 0x80000000) == 0)
      {
        if (!getnameinfo(v2 + 2, *(v2 + 32), v203, 0x401u, 0, 0, 2))
        {
          *v55 = v203;
          close(v64);
          goto LABEL_119;
        }

        v65 = v2[1];
        if (v65)
        {
          v65(*v2, "getnameinfo failed for source\n");
        }

        else
        {
          fwrite("getnameinfo failed for source\n", 0x1EuLL, 1uLL, *MEMORY[0x277D85DF8]);
        }

LABEL_133:
        close(v64);
        goto LABEL_134;
      }

      v81 = "getsockname";
    }

    perror(v81);
    goto LABEL_133;
  }

  *v206 = 0;
  memset(&v200.ai_socktype, 0, 40);
  v200.ai_socktype = 2;
  *&v200.ai_flags = 0x1E00000004;
  v57 = getaddrinfo(v56, "0", &v200, v206);
  if (v57)
  {
    v58 = v2[1];
    if (v58)
    {
      v59 = *v2;
      v60 = v2[287];
      v61 = gai_strerror(v57);
      v58(v59, "traceroute6: %s: %s\n", v60, v61);
    }

    else
    {
      v74 = *v55;
      v75 = gai_strerror(v57);
      printf("traceroute6: %s: %s\n", v74, v75);
    }

    goto LABEL_134;
  }

  v68 = *v206;
  v69 = *(*v206 + 16);
  if (v69 >= 0x1D)
  {
    v70 = v2[1];
    if (v70)
    {
      v71 = *v2;
      v72 = v2[287];
      v73 = gai_strerror(0);
      v70(v71, "traceroute6: %s: %s\n", v72, v73);
    }

    else
    {
      v78 = *v55;
      v79 = gai_strerror(0);
      printf("traceroute6: %s: %s\n", v78, v79);
    }

    freeaddrinfo(*v206);
    goto LABEL_134;
  }

  memcpy(v2 + 4, *(*v206 + 32), v69);
  freeaddrinfo(v68);
LABEL_119:
  *(v2 + 17) = 0;
  if (bind(*(v2 + 845), v2 + 2, *(v2 + 32)) < 0)
  {
    v80 = "bind";
    goto LABEL_400;
  }

  v200.ai_flags = 28;
  if (getsockname(*(v2 + 845), v2 + 2, &v200) < 0)
  {
    v80 = "getsockname";
    goto LABEL_400;
  }

  *(v2 + 1681) = bswap32(*(v2 + 17)) >> 16;
  if (*(v2 + 855))
  {
    v76 = as_setup(v2[286]);
    v2[432] = v76;
    if (!v76)
    {
      v77 = v2[1];
      if (v77)
      {
        v77(*v2, "traceroute6: as_setup failed, AS# lookups disabled\n");
      }

      else
      {
        fwrite("traceroute6: as_setup failed, AS# lookups disabled\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
      }

      fflush(*MEMORY[0x277D85DF8]);
      *(v2 + 855) = 0;
    }
  }

  v182 = (v2 + 292);
  if (getnameinfo((v2 + 60), *(v2 + 60), v2 + 2336, 0x401u, 0, 0, 2))
  {
    __strlcpy_chk();
  }

  v82 = v2[1];
  if (v82)
  {
    v82(*v2, "traceroute6");
  }

  else
  {
    fwrite("traceroute6", 0xBuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  v83 = v2[1];
  v84 = v2[288];
  if (v83)
  {
    v83(*v2, " to %s (%s)", v2[288], v182);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], " to %s (%s)", v2[288], v182);
  }

  if (*v55)
  {
    v85 = v2[1];
    if (v85)
    {
      v85(*v2, " from %s", *v55);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], " from %s", *v55);
    }
  }

  v86 = v2[1];
  v87 = v2[430];
  v88 = *(v2 + 843) + 8 * (*(v2 + 852) == 17);
  if (v86)
  {
    v86(*v2, ", %lu hops max, %lu byte packets\n", v2[430], v88);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], ", %lu hops max, %lu byte packets\n", v2[430], v88);
  }

  fflush(*MEMORY[0x277D85DF8]);
  v89 = *(v2 + 847);
  if (v89 >= 2)
  {
    v90 = v2[1];
    if (v90)
    {
      v90(*v2, "Skipping %d intermediate hops\n", v89 - 1);
    }

    else
    {
      printf("Skipping %d intermediate hops\n", v89 - 1);
    }
  }

  if (connect(*(v2 + 845), (v2 + 60), 0x1Cu))
  {
    v51 = v2[1];
    if (!v51)
    {
      v94 = *MEMORY[0x277D85DF8];
      v95 = __error();
      strerror(*v95);
      fprintf(v94, "connect: %s\n");
      goto LABEL_134;
    }

    v52 = *v2;
    v91 = __error();
    strerror(*v91);
    v54 = "connect: %s\n";
    goto LABEL_93;
  }

  v181 = v45;
  interface_for_ipv6_address = get_interface_for_ipv6_address((v2 + 4), v2 + 2320, 0x10uLL);
  v2[289] = interface_for_ipv6_address;
  if (*(v2 + 852) == 6)
  {
    if (!interface_for_ipv6_address)
    {
      traceroute6_run_cold_1(v2 + 287);
    }

    pcap_on_interface = create_pcap_on_interface(v2, interface_for_ipv6_address);
  }

  else
  {
    pcap_on_interface = 0;
  }

  v96 = *(v2 + 847);
  if (v2[430] >= v96)
  {
    v187 = 0;
    v189 = 0;
    v190 = 0;
    v97 = 0;
    while (1)
    {
      v185 = v96;
      if (v187)
      {
        v98 = *(v2 + 842);
        if (v98)
        {
          usleep(1000 * v98);
        }
      }

      bzero(&v200, 0x8B8uLL);
      v200.ai_flags = 30;
      v200.ai_socktype = v185;
      v202 = v2 + 292;
      v99 = v2[1];
      if (v99)
      {
        v99(*v2, "%2d ", v185);
      }

      else
      {
        printf("%2d ", v185);
      }

      v194 = 0uLL;
      if (v2[429])
      {
        break;
      }

      v183 = 0;
      v175 = 1;
LABEL_385:
      v176 = v2[1];
      if (v176)
      {
        v176(*v2, "\n");
      }

      else
      {
        putchar(10);
      }

      if (!v175 || v183 >= 1 && v183 >= (v2[429] + 1) >> 1)
      {
        goto LABEL_397;
      }

      v96 = v185 + 1;
      if (v2[430] < (v185 + 1))
      {
        goto LABEL_392;
      }
    }

    v183 = 0;
    v184 = 0;
    v188 = 0;
LABEL_174:
    v193.tv_sec = 0;
    *&v193.tv_usec = 0;
    v192.tv_sec = 0;
    *&v192.tv_usec = 0;
    v191 = 0;
    gettimeofday(&v193, 0);
    send_probe6(v2, ++v189, v185);
    v186 = bswap32(v189) >> 16;
    ++v187;
    while (1)
    {
      v100 = wait_for_reply6(v2, *(v2 + 844), pcap_on_interface, (v2 + 15), &v191);
      if (!v100)
      {
LABEL_311:
        v200.ai_protocol = 1;
        v155 = v2[1];
        if (v155)
        {
          v155(*v2, " *");
        }

        else
        {
          printf(" *");
        }

        goto LABEL_314;
      }

      v101 = v100;
      gettimeofday(&v192, 0);
      v102 = v191;
      if (v191)
      {
        v103 = *(v2 + 850);
        if (v101 <= 0x3B)
        {
          if (v103)
          {
            v104 = v2[1];
            if (v104)
            {
              v105 = *v2;
              v106 = inet_ntop(30, v2 + 12, v206, 0x2Eu);
              v104(v105, "packet too short (%zd bytes) from %s\n", v101, v106);
            }

            else
            {
              inet_ntop(30, v2 + 12, v206, 0x2Eu);
              printf("packet too short (%zd bytes) from %s\n");
            }
          }

          goto LABEL_308;
        }

        if (v103 >= 2)
        {
          v111 = v2[1];
          if (v111)
          {
            v111(*v2, "tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", bswap32(*(v2 + 1756)) >> 16, bswap32(*(v2 + 1757)) >> 16, *(v2 + 879));
          }

          else
          {
            printf("tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", bswap32(*(v2 + 1756)) >> 16, bswap32(*(v2 + 1757)) >> 16, *(v2 + 879));
          }
        }

        if (*(v2 + 1683) == bswap32(*(v2 + 1757)) >> 16)
        {
          v127 = bswap32(*(v2 + 1756));
          v128 = v189;
          if (*(v2 + 856))
          {
            v128 = 0;
          }

          v129 = *(v2 + 850);
          if (v128 + *(v2 + 1682) == HIWORD(v127))
          {
            if (v129 >= 2)
            {
              v158 = v2[1];
              if (v158)
              {
                v158(*v2, "tcp_packet_ok: match\n");
              }

              else
              {
                puts("tcp_packet_ok: match");
              }
            }

LABEL_329:
            v159 = v2[12] == v194 && v2[13] == *(&v194 + 1);
            if (!v159)
            {
              if (v188)
              {
                v160 = v2[1];
                if (v160)
                {
                  v160(*v2, "\n   \n");
                }

                else
                {
                  fwrite("\n   \n", 5uLL, 1uLL, *MEMORY[0x277D85E08]);
                }
              }

              v161 = v2[15];
              v162 = *(v161 + 12);
              v201[0] = *v161;
              *(v201 + 12) = v162;
              print(v2, &v200, v2 + 15, v101);
              v194 = *(v2 + 6);
            }

            v163 = v2[1];
            if (v163)
            {
              v164 = *v2;
              v165 = deltaT(&v193, &v192);
              v163(v164, "  %.3f ms", v165);
            }

            else
            {
              v166 = deltaT(&v193, &v192);
              printf("  %.3f ms", v166);
            }

            v200.ai_addr = COERCE_SOCKADDR_(deltaT(&v193, &v192));
            if (v102)
            {
              ++v184;
              goto LABEL_314;
            }

            v200.ai_addrlen = v190;
            *(&v200.ai_addrlen + 1) = v97;
            if (v97 == 1)
            {
              v97 = 1;
              if (v190 > 1)
              {
                switch(v190)
                {
                  case 2:
                    ++v183;
                    v172 = v2[1];
                    if (v172)
                    {
                      v172(*v2, " !S");
                    }

                    else
                    {
                      printf(" !S");
                    }

                    v97 = 1;
                    v171 = 2;
                    break;
                  case 3:
                    ++v183;
                    v173 = v2[1];
                    if (v173)
                    {
                      v173(*v2, " !A");
                    }

                    else
                    {
                      printf(" !A");
                    }

                    v97 = 1;
                    v171 = 3;
                    break;
                  case 4:
                    if (*(v2 + 846) <= 1u)
                    {
                      v167 = v2[1];
                      if (v167)
                      {
                        v167(*v2, " !");
                      }

                      else
                      {
                        printf(" !");
                      }
                    }

                    ++v184;
                    v97 = 1;
                    v171 = 4;
                    break;
                  default:
                    goto LABEL_314;
                }

                goto LABEL_382;
              }

              if (v190)
              {
                ++v183;
                v170 = v2[1];
                if (v170)
                {
                  v170(*v2, " !P");
                }

                else
                {
                  printf(" !P");
                }

                v97 = 1;
                v190 = 1;
              }

              else
              {
                ++v183;
                v174 = v2[1];
                if (v174)
                {
                  v174(*v2, " !N");
                }

                else
                {
                  printf(" !N");
                }

                v190 = 0;
                v97 = 1;
              }
            }

            else
            {
              if (v97 == 4 && v190 == 1)
              {
                v168 = v2[1];
                if (v168)
                {
                  v168(*v2, " !H");
                }

                else
                {
                  printf(" !H");
                }

                ++v184;
                v97 = 4;
                v171 = 1;
LABEL_382:
                v190 = v171;
                goto LABEL_314;
              }

              if (v97 == 129)
              {
                if (*(v2 + 846) <= 1u)
                {
                  v169 = v2[1];
                  if (v169)
                  {
                    v169(*v2, " !");
                  }

                  else
                  {
                    printf(" !");
                  }
                }

                ++v184;
                v97 = 129;
              }
            }

LABEL_314:
            v156 = v2[3];
            if (v156)
            {
              if (v184)
              {
                v157 = 1;
              }

              else
              {
                v157 = v183 >= 1 && v183 >= (v2[429] + 1) >> 1;
              }

              LOBYTE(v200.ai_next) = v157;
              v156(v2[2], &v200);
            }

            else
            {
              fflush(*MEMORY[0x277D85E08]);
            }

            if (++v188 >= v2[429])
            {
              v175 = v184 == 0;
              goto LABEL_385;
            }

            goto LABEL_174;
          }
        }

        else
        {
          v129 = *(v2 + 850);
        }

        if (v129 >= 2)
        {
          v108 = v2[1];
          if (v108)
          {
            v109 = *v2;
            v110 = "tcp_packet_ok: no match\n";
            goto LABEL_307;
          }

          puts("tcp_packet_ok: no match");
        }
      }

      else
      {
        v107 = v2[15];
        if (v101 > 7)
        {
          v112 = *v2[17];
          v2[25] = 0;
          v113 = *(v2 + 40);
          if (v113 < 0xC)
          {
            goto LABEL_234;
          }

          v114 = v2[19];
          if (!v114)
          {
            goto LABEL_234;
          }

          v115 = 0;
          v116 = 0;
          v117 = v114 + v113;
          do
          {
            if (v114[1] == 41)
            {
              v118 = v114[2];
              v119 = *v114;
              if (v118 == 47)
              {
                if (v119 == 16)
                {
                  v116 = (v114 + 3);
                }
              }

              else if (v118 == 46 && v119 == 32)
              {
                v115 = v114 + 3;
                v2[25] = v114 + 3;
              }
            }

            else
            {
              v119 = *v114;
            }

            v114 = (v114 + ((v119 + 3) & 0x1FFFFFFFCLL));
          }

          while ((v114 + 3) <= v117);
          if (v115 && v116)
          {
            v120 = *v116;
          }

          else
          {
LABEL_234:
            warnx("failed to get received hop limit or packet info", v179, v180);
            v120 = 0;
          }

          *(v2 + 846) = v120;
          v97 = *v112;
          v190 = v112[1];
          if ((v97 != 3 || v112[1]) && v97 != 1)
          {
            if (v97 == 4)
            {
              if (v190 == 1)
              {
                goto LABEL_210;
              }

LABEL_270:
              if (!*(v2 + 850))
              {
                goto LABEL_308;
              }

              if (getnameinfo(v107, v107->sa_len, v206, 0x402u, 0, 0, 2))
              {
                __strlcpy_chk();
              }

              v139 = v2[1];
              if (v139)
              {
                v140 = *v2;
                v141 = v2[25];
                if (v141)
                {
                  v142 = inet_ntop(30, v141, v205, 0x2Eu);
                }

                else
                {
                  v142 = "?";
                }

                v139(v140, "\n%zd bytes from %s to %s", v101, v206, v142);
              }

              else
              {
                v143 = v2[25];
                if (v143)
                {
                  v144 = inet_ntop(30, v143, v205, 0x2Eu);
                }

                else
                {
                  v144 = "?";
                }

                printf("\n%zd bytes from %s to %s", v101, v206, v144);
              }

              v145 = v2[1];
              if (v145)
              {
                v146 = *v2;
                v147 = pr_type6(v97);
                v145(v146, ": icmp type %d (%s) code %d\n", v97, v147, v190);
              }

              else
              {
                v148 = pr_type6(v97);
                printf(": icmp type %d (%s) code %d\n", v97, v148, v190);
              }

              if (v101 >= 1)
              {
                v149 = 0;
                v150 = v112 + 8;
                do
                {
                  if ((v149 & 0xF) == 0)
                  {
                    v151 = v2[1];
                    if (v151)
                    {
                      v151(*v2, "%04x:", v149);
                    }

                    else
                    {
                      printf("%04x:", v149);
                    }
                  }

                  if ((v149 & 3) == 0)
                  {
                    v152 = v2[1];
                    if (v152)
                    {
                      v152(*v2, " ");
                    }

                    else
                    {
                      putchar(32);
                    }
                  }

                  v153 = v2[1];
                  if (v153)
                  {
                    v153(*v2, "%02x", v150[v149]);
                  }

                  else
                  {
                    printf("%02x", v150[v149]);
                  }

                  if ((v149 & 0xF) == 0xF)
                  {
                    v154 = v2[1];
                    if (v154)
                    {
                      v154(*v2, "\n");
                    }

                    else
                    {
                      putchar(10);
                    }
                  }

                  ++v149;
                }

                while (v101 != v149);
              }

              if ((v101 & 0xF) == 0)
              {
                goto LABEL_308;
              }

              v108 = v2[1];
              if (!v108)
              {
                putchar(10);
                goto LABEL_308;
              }

              v109 = *v2;
              v110 = "\n";
              goto LABEL_307;
            }

            if (v97 != 129 || *(v2 + 852) != 58 || *(v112 + 2) != *(v2 + 1683))
            {
              goto LABEL_270;
            }

            v130 = *(v112 + 3);
LABEL_258:
            if (v130 == v186)
            {
              goto LABEL_329;
            }

            goto LABEL_270;
          }

LABEL_210:
          uphdr = get_uphdr(v2, (v112 + 8), &v112[v101]);
          if (!uphdr)
          {
            if (*(v2 + 850))
            {
              warnx("failed to get upper layer header");
            }

            goto LABEL_308;
          }

          v122 = uphdr;
          if (*(v2 + 854))
          {
            v123 = (*(v112 + 2) >> 12) & 3;
            if (v123 != (v2[424] & 3))
            {
              if (v123)
              {
                if (v123 != 3)
                {
                  goto LABEL_245;
                }

                v124 = v2[1];
                if (!v124)
                {
                  printf(" (ecn=mangled)");
                  goto LABEL_245;
                }

                v125 = *v2;
                v126 = " (ecn=mangled)";
              }

              else
              {
                v124 = v2[1];
                if (!v124)
                {
                  printf(" (ecn=bleached)");
                  goto LABEL_245;
                }

                v125 = *v2;
                v126 = " (ecn=bleached)";
              }

LABEL_242:
              v124(v125, v126);
              goto LABEL_245;
            }

            v124 = v2[1];
            if (v124)
            {
              v125 = *v2;
              v126 = " (ecn=passed)";
              goto LABEL_242;
            }

            printf(" (ecn=passed)");
          }

LABEL_245:
          v131 = *(v2 + 852);
          if (v131 > 57)
          {
            if (v131 == 58)
            {
              if (v122[2] != *(v2 + 1683))
              {
                goto LABEL_270;
              }

              v130 = v122[3];
              goto LABEL_258;
            }

            if (v131 == 59)
            {
              goto LABEL_329;
            }
          }

          else
          {
            if (v131 == 6)
            {
              v135 = *v122;
              if (v135 == bswap32(*(v2 + 1683)) >> 16)
              {
                v136 = v122[1];
                v137 = v189;
                if (*(v2 + 856))
                {
                  v137 = 0;
                }

                if (v136 == bswap32(v137 + *(v2 + 1682)) >> 16 && *(v122 + 1) == (v136 | (v135 << 16)))
                {
                  goto LABEL_329;
                }
              }

              goto LABEL_270;
            }

            if (v131 == 17)
            {
              v132 = *(v2 + 856);
              v133 = v189;
              if (!v132)
              {
                v133 = 0;
              }

              if (*v122 == bswap32(v133 + *(v2 + 1683)) >> 16)
              {
                v159 = v132 == 0;
                v134 = v189;
                if (!v159)
                {
                  v134 = 0;
                }

                if (v122[1] == bswap32(*(v2 + 1682) + v134) >> 16)
                {
                  goto LABEL_329;
                }
              }

              goto LABEL_270;
            }
          }

          v138 = v2[1];
          if (v138)
          {
            v138(*v2, "Unknown probe proto %d.\n", *(v2 + 852));
          }

          else
          {
            fprintf(*MEMORY[0x277D85DF8], "Unknown probe proto %d.\n", *(v2 + 852));
          }

          goto LABEL_270;
        }

        if (*(v2 + 850))
        {
          if (getnameinfo(v2[15], v107->sa_len, v207, 0x401u, 0, 0, 2))
          {
            __strlcpy_chk();
          }

          v108 = v2[1];
          if (v108)
          {
            v109 = *v2;
            v179 = v101;
            v180 = v207;
            v110 = "data too short (%zd bytes) from %s\n";
LABEL_307:
            v108(v109, v110);
            goto LABEL_308;
          }

          printf("data too short (%zd bytes) from %s\n");
        }
      }

LABEL_308:
      if (deltaT(&v193, &v192) > (1000 * v2[431]))
      {
        goto LABEL_311;
      }
    }
  }

LABEL_392:
  if (*(v2 + 855))
  {
    as_shutdown(v2[432]);
  }

  if (pcap_on_interface)
  {
    pcap_close(pcap_on_interface);
  }

  free(v181);
LABEL_397:
  v11 = 0;
LABEL_57:
  v36 = *MEMORY[0x277D85DE8];
  return v11;
}

char *get_interface_for_ipv6_address(uint64_t a1, char *a2, size_t a3)
{
  v12 = 0;
  if (getifaddrs(&v12))
  {
    get_interface_for_ipv6_address_cold_1();
  }

  if (v12)
  {
    v6 = v12;
    while (1)
    {
      ifa_addr = v6->ifa_addr;
      if (ifa_addr->sa_family == 30 && *(a1 + 24) == *&ifa_addr[1].sa_data[6])
      {
        v9 = *&ifa_addr->sa_data[6];
        v8 = *&ifa_addr[1].sa_len;
        if (*(a1 + 8) == v9 && *(a1 + 16) == v8)
        {
          break;
        }
      }

      v6 = v6->ifa_next;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    snprintf(a2, a3, "%s", v6->ifa_name);
  }

  else
  {
LABEL_11:
    a2 = 0;
  }

  MEMORY[0x25F872010]();
  return a2;
}

pcap_t *create_pcap_on_interface(uint64_t a1, char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *&v8.bf_len = 0;
  v8.bf_insns = 0;
  v3 = pcap_create(a2, create_pcap_on_interface_ebuf);
  if (!v3)
  {
    errx(71, "pcap_open_live(%s) failed: %s");
  }

  v4 = v3;
  if (pcap_set_snaplen(v3, 0xFFFF) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_snaplen(%s, %d) failed: %s");
  }

  if (pcap_set_immediate_mode(v4, 1) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_immediate_mode(%s, %d) failed: %s");
  }

  if (pcap_setnonblock(v4, 1, create_pcap_on_interface_ebuf))
  {
    create_pcap_on_interface_cold_1();
  }

  if (pcap_set_buffer_size(v4, 0xFFFF))
  {
    create_pcap_on_interface_cold_2();
  }

  if (pcap_activate(v4) < 0)
  {
    create_pcap_on_interface_cold_5();
  }

  inet_ntop(30, (a1 + 68), v10, 0x2Eu);
  inet_ntop(30, (a1 + 40), v9, 0x2Eu);
  snprintf(create_pcap_on_interface_filter_str, 0x400uLL, "tcp and src %s and dst %s", v10, v9);
  if (pcap_compile(v4, &v8, create_pcap_on_interface_filter_str, 1, 0xFFFFFFFF))
  {
    create_pcap_on_interface_cold_3(v4);
  }

  if (pcap_setfilter(v4, &v8) < 0)
  {
    create_pcap_on_interface_cold_4(v4);
  }

  if (*(a1 + 3400) >= 2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v5(*a1, "# using pcap filter %s\n", create_pcap_on_interface_filter_str);
    }

    else
    {
      printf("# using pcap filter %s\n", create_pcap_on_interface_filter_str);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t send_probe6(void *a1, unsigned int a2, int a3)
{
  v22 = a3;
  if (setsockopt(*(a1 + 845), 41, 4, &v22, 4u) < 0)
  {
    perror("setsockopt IPV6_UNICAST_HOPS");
  }

  v5 = *(a1 + 852);
  if (v5 > 57)
  {
    if (v5 == 59)
    {
      goto LABEL_28;
    }

    if (v5 == 58)
    {
      v12 = a1[433];
      *v12 = 128;
      *(v12 + 4) = *(a1 + 1683);
      *(v12 + 6) = bswap32(a2) >> 16;
      goto LABEL_28;
    }
  }

  else
  {
    if (v5 == 6)
    {
      v6 = a1[433];
      v14 = *(a1 + 1683);
      *v6 = __rev16(v14);
      if (*(a1 + 856))
      {
        v15 = 0;
      }

      else
      {
        v15 = a2;
      }

      v16 = v15 + *(a1 + 1682);
      v6[1] = bswap32(v16) >> 16;
      *(v6 + 1) = bswap32(v14 | (v16 << 16));
      *(v6 + 2) = 0;
      *(v6 + 12) = v6[6] & 0xF | 0x50;
      *(v6 + 13) = 2;
      v6[8] = 0;
      v6[8] = tcp_chksum((a1 + 4), a1 + 60, a1[433], *(a1 + 843));
      if (*(a1 + 850) >= 2)
      {
        v17 = a1[1];
        if (v17)
        {
          v17(*a1, "\nTCP probe hops %d sport %u dport %u seq %u\n", v22, bswap32(*v6) >> 16, bswap32(v6[1]) >> 16, bswap32(*(v6 + 1)));
        }

        else
        {
          printf("\nTCP probe hops %d sport %u dport %u seq %u\n", v22, bswap32(*v6) >> 16, bswap32(v6[1]) >> 16, bswap32(*(v6 + 1)));
        }
      }

      goto LABEL_27;
    }

    if (v5 == 17)
    {
      v6 = a1[433];
      v7 = *(a1 + 856);
      v8 = v7 == 0;
      if (v7)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      *v6 = bswap32(v9 + *(a1 + 1683)) >> 16;
      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }

      v6[1] = bswap32(v10 + *(a1 + 1682)) >> 16;
      v11 = *(a1 + 843);
      *(v6 + 1) = bswap32(v11) >> 16;
      v6[3] = udp_cksum((a1 + 4), a1 + 60, v6, v11);
LABEL_27:
      *(a1 + 31) = v6[1];
LABEL_28:
      v19 = send(*(a1 + 845), a1[433], *(a1 + 843), 0);
      v20 = v19;
      if (v19 < 0)
      {
        perror("send");
      }

      else if (v19 == *(a1 + 843))
      {
        return 0;
      }

      v21 = a1[1];
      if (v21)
      {
        v21(*a1, "traceroute6: wrote %s %d chars, ret=%zd\n", a1[288], *(a1 + 843), v20);
      }

      else
      {
        printf("traceroute6: wrote %s %d chars, ret=%zd\n", a1[288], *(a1 + 843), v20);
      }

      fflush(*MEMORY[0x277D85E08]);
      return 0;
    }
  }

  v13 = a1[1];
  if (v13)
  {
    v13(*a1, "Unknown probe protocol %d.\n", *(a1 + 852));
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Unknown probe protocol %d.\n", *(a1 + 852));
  }

  return 0xFFFFFFFFLL;
}

ssize_t wait_for_reply6(void *a1, int a2, pcap_t *a3, msghdr *a4, _BYTE *a5)
{
  if (a3)
  {
    selectable_fd = pcap_get_selectable_fd(a3);
  }

  else
  {
    selectable_fd = -1;
  }

  if (selectable_fd <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = selectable_fd;
  }

  if (selectable_fd == -1)
  {
    v10 = a2;
  }

  else
  {
    v10 = v9;
  }

  v11 = (a2 + 1) >> 5;
  if (((a2 + 1) & 0x1F) != 0)
  {
    ++v11;
  }

  v12 = 4 * v11;
  v13 = malloc_type_malloc(4 * v11, 0x1000040AE2C30F4uLL);
  if (!v13)
  {
    wait_for_reply6_cold_1();
  }

  v14 = v13;
  v38.tv_sec = 0;
  *&v38.tv_usec = 0;
  bzero(v13, v12);
  v15 = 1 << a2;
  v16 = a2 >> 5;
  v17 = 1 << selectable_fd;
  v18 = selectable_fd >> 5;
  while (1)
  {
    if (__darwin_check_fd_set_overflow(a2, v14, 0))
    {
      v14->fds_bits[v16] |= v15;
    }

    if (selectable_fd != -1 && __darwin_check_fd_set_overflow(selectable_fd, v14, 0))
    {
      v14->fds_bits[v18] |= v17;
    }

    v38.tv_sec = a1[431];
    v38.tv_usec = 0;
    if (select(v10 + 1, v14, 0, 0, &v38) < 1)
    {
      goto LABEL_56;
    }

    if (__darwin_check_fd_set_overflow(a2, v14, 0) && (v14->fds_bits[v16] & v15) != 0)
    {
      v28 = recvmsg(*(a1 + 844), a4, 0);
      goto LABEL_57;
    }

    if (selectable_fd == -1)
    {
      goto LABEL_56;
    }

    if (!__darwin_check_fd_set_overflow(selectable_fd, v14, 0))
    {
      goto LABEL_56;
    }

    if ((v14->fds_bits[v18] & v17) == 0)
    {
      goto LABEL_56;
    }

    v36 = 0;
    v37 = 0;
    if (pcap_next_ex(a3, &v37, &v36) != 1)
    {
      goto LABEL_56;
    }

    if (*(a1 + 850) >= 2)
    {
      v19 = a1[1];
      if (v19)
      {
        v19(*a1, "# got TCP packet %d bytes\n", v37->caplen);
      }

      else
      {
        printf("# got TCP packet %d bytes\n", v37->caplen);
      }

      dump_hex(v36, v37->caplen);
    }

    v20 = pcap_datalink(a3);
    if (v20 != 1)
    {
      break;
    }

    caplen = v37->caplen;
    if (caplen >= 0xE)
    {
      v24 = *(v36 + 6);
      if (v24 == 33024)
      {
        v22 = 18;
        goto LABEL_34;
      }

      if (v24 == 56710)
      {
        v22 = 14;
LABEL_34:
        if (v22 <= caplen)
        {
          goto LABEL_48;
        }

        v23 = a1[1];
        if (v23)
        {
          v23(*a1, "# hdrlen %d > caplen %u\n", v22, caplen);
        }

        else
        {
          printf("# hdrlen %d > caplen %u\n", v22, caplen);
        }
      }

      else
      {
        v25 = __rev16(v24);
        v26 = a1[1];
        if (v26)
        {
          v26(*a1, "# cannot process TCP packet with Ethernet type 0x%04x\n", v25);
        }

        else
        {
          printf("# cannot process TCP packet with Ethernet type 0x%04x\n", v25);
        }
      }
    }
  }

  if (v20 == 108)
  {
    caplen = v37->caplen;
    v22 = 4;
    goto LABEL_34;
  }

  if (v20 != 12)
  {
    v29 = a1[1];
    if (v29)
    {
      v30 = *a1;
      v31 = pcap_datalink(a3);
      v29(v30, "# cannot process TCP packet with data link %d\n", v31);
    }

    else
    {
      v32 = pcap_datalink(a3);
      printf("# cannot process TCP packet with data link %d\n", v32);
    }

LABEL_56:
    v28 = 0;
    goto LABEL_57;
  }

  v22 = 0;
  caplen = v37->caplen;
LABEL_48:
  v27 = caplen - v22;
  if (v27 >= 0xFFFF)
  {
    v28 = 0xFFFFLL;
  }

  else
  {
    v28 = v27;
  }

  memcpy(a1 + 434, &v36[v22], v28);
  *(a1 + 6) = *(a1 + 68);
  *(a1 + 44) = 7696;
  *a5 = 1;
LABEL_57:
  free(v14);
  return v28;
}

void print(uint64_t *a1, _DWORD *a2, const sockaddr **a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  if (getnameinfo(*a3, (*a3)->sa_len, __s1, 0x401u, 0, 0, 2))
  {
    __strlcpy_chk();
  }

  if (*(a1 + 855))
  {
    v8 = as_lookup(a1[432], __s1, 30);
    a2[1] = v8;
    v9 = a1[1];
    if (v9)
    {
      v9(*a1, " [AS%u]", v8);
    }

    else
    {
      printf(" [AS%u]", v8);
    }
  }

  if (!*(a1 + 851))
  {
    v12 = *(a1 + 853);
    v13 = inetname6(v7, 0);
    v14 = strnlen(v13, 0x401uLL);
    memcpy(a2 + 1201, v13, v14);
    v15 = a1[1];
    if (v12)
    {
      if (!v15)
      {
        printf(" %s (%s)");
        goto LABEL_19;
      }

      v16 = *a1;
      v17 = " %s (%s)";
    }

    else
    {
      if (!v15)
      {
        printf(" %s");
        goto LABEL_19;
      }

      v16 = *a1;
      v17 = " %s";
    }

    v15(v16, v17);
LABEL_19:
    free(v13);
    goto LABEL_20;
  }

  v10 = strnlen(__s1, 0x401uLL);
  memcpy(a2 + 44, __s1, v10);
  v11 = a1[1];
  if (v11)
  {
    v11(*a1, " %s", __s1);
  }

  else
  {
    printf(" %s", __s1);
  }

LABEL_20:
  if (*(a1 + 850))
  {
    v18 = a1[1];
    if (v18)
    {
      v19 = *a1;
      v20 = a1[25];
      if (v20)
      {
        v21 = inet_ntop(30, v20, __s1, 0x401u);
      }

      else
      {
        v21 = "?";
      }

      v18(v19, " %zd bytes of data to %s", a4, v21);
    }

    else
    {
      v22 = a1[25];
      if (v22)
      {
        v23 = inet_ntop(30, v22, __s1, 0x401u);
      }

      else
      {
        v23 = "?";
      }

      printf(" %zd bytes of data to %s", a4, v23);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t udp_cksum(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = a4;
  v10 = 0;
  v9 = 0u;
  v8 = 0u;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  LODWORD(v10) = bswap32(a4);
  HIBYTE(v10) = 17;
  v7[1] = in_cksum(&v8, 0x28u);
  v7[0] = in_cksum(a3, v4);
  return in_cksum(v7, 4u) ^ 0xFFFF;
}

uint64_t tcp_chksum(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = a4;
  v10 = 0;
  v9 = 0u;
  v8 = 0u;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  LODWORD(v10) = bswap32(a4);
  HIBYTE(v10) = 6;
  v7[1] = in_cksum(&v8, 0x28u);
  v7[0] = in_cksum(a3, v4);
  return in_cksum(v7, 4u) ^ 0xFFFF;
}

const char *pr_type6(unsigned __int8 a1)
{
  if (a1 <= 0x82u)
  {
    if (a1 <= 3u)
    {
      switch(a1)
      {
        case 1u:
          return "Destination Unreachable";
        case 2u:
          return "Packet Too Big";
        case 3u:
          return "Time Exceeded";
      }
    }

    else if (a1 > 0x80u)
    {
      if (a1 == 129)
      {
        return "Echo Reply";
      }

      if (a1 == 130)
      {
        return "Group Membership Query";
      }
    }

    else
    {
      if (a1 == 4)
      {
        return "Parameter Problem";
      }

      if (a1 == 128)
      {
        return "Echo Request";
      }
    }

    return "Unknown";
  }

  if (a1 <= 0x85u)
  {
    switch(a1)
    {
      case 0x83u:
        return "Group Membership Report";
      case 0x84u:
        return "Group Membership Reduction";
      case 0x85u:
        return "Router Solicitation";
    }

    return "Unknown";
  }

  if (a1 > 0x87u)
  {
    if (a1 == 136)
    {
      return "Neighbor Advertisement";
    }

    if (a1 == 137)
    {
      return "Redirect";
    }

    return "Unknown";
  }

  if (a1 == 134)
  {
    return "Router Advertisement";
  }

  else
  {
    return "Neighbor Solicitation";
  }
}

unsigned __int8 *get_uphdr(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a2 + 40);
  if (a2 + 40 <= a3)
  {
    v5 = *(a2 + 6);
    while (1)
    {
      if ((a3 - v3) < 8 * (v5 != 59))
      {
        return 0;
      }

      if (v5 <= 49)
      {
        if (v5 == 44)
        {
          v7 = 8;
          goto LABEL_20;
        }

        if (v5 == 6 || v5 == 17)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (v5 > 57)
      {
        break;
      }

      if (v5 != 51)
      {
        if (v5 == 50)
        {
          return 0;
        }

LABEL_18:
        v6 = 3;
        goto LABEL_19;
      }

      v6 = 2;
LABEL_19:
      v7 = (v3[1] << v6) + 8;
LABEL_20:
      v5 = *v3;
      v3 += v7;
    }

    if (v5 == 58)
    {
      goto LABEL_21;
    }

    if (v5 == 59)
    {
      v3 = &get_uphdr_none_hdr;
LABEL_21:
      if (*(a1 + 3408) == v5)
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    goto LABEL_18;
  }

  return 0;
}

char *inetname6(sockaddr *a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    goto LABEL_15;
  }

  if (gethostname(__s, 0x101uLL) || (v3 = strchr(__s, 46)) == 0)
  {
    __s[0] = 0;
  }

  else
  {
    strlen(v3 + 1);
    __memmove_chk();
  }

  if (getnameinfo(a1, a1->sa_len, __s1, 0x401u, 0, 0, 4))
  {
LABEL_15:
    if (getnameinfo(a1, a1->sa_len, __s1, 0x401u, 0, 0, 2))
    {
      __strlcpy_chk();
    }
  }

  else
  {
    v6 = strchr(__s1, 46);
    if (v6)
    {
      v7 = v6;
      if (!strcmp(v6 + 1, __s))
      {
        *v7 = 0;
      }
    }
  }

  result = strdup(__s1);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ifaddrlist(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v29 = 0u;
  v7 = socket(2, 2, 0);
  if (v7 < 0)
  {
    v16 = __error();
    v17 = strerror(*v16);
    snprintf(v5, v3, "socket: %s", v17);
    goto LABEL_25;
  }

  v8 = v7;
  v25 = 0x8000;
  v26 = v31;
  if (ioctl(v7, 0xC00C6924uLL, &v25) < 0 || v25 <= 0x1F)
  {
    if (*__error() == 22)
    {
      snprintf(v5, v3, "SIOCGIFCONF: ifreq struct too small (%d bytes)");
    }

    else
    {
      v18 = __error();
      strerror(*v18);
      snprintf(v5, v3, "SIOCGIFCONF: %s");
    }

    close(v8);
    goto LABEL_25;
  }

  v24 = v6;
  if (v25 < 1)
  {
    v10 = 0;
LABEL_27:
    close(v8);
    *v24 = v28;
    goto LABEL_28;
  }

  v23 = v5;
  v9 = 0;
  v10 = 0;
  v11 = &v31[v25];
  v12 = v31;
  v13 = v28;
  while (1)
  {
    v14 = v12[16];
    if (v14 >= 0x10)
    {
      v15 = v14 + 16;
    }

    else
    {
      v15 = 32;
    }

    if (v12[17] != 2)
    {
      goto LABEL_18;
    }

    __strlcpy_chk();
    if ((ioctl(v8, 0xC0206911uLL, &v29) & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 6)
    {
      v21 = __error();
      strerror(*v21);
      snprintf(v23, v3, "SIOCGIFFLAGS: %.*s: %s");
      goto LABEL_32;
    }

LABEL_18:
    v12 += v15;
    if (v12 >= v11)
    {
      goto LABEL_27;
    }
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_18;
  }

  __strlcpy_chk();
  if (ioctl(v8, 0xC0206921uLL, &v29) < 0)
  {
    v22 = __error();
    strerror(*v22);
    snprintf(v23, v3, "SIOCGIFADDR: %s: %s");
    goto LABEL_32;
  }

  if (v10 < 0x400)
  {
    *v13 = DWORD1(v30);
    if (v9)
    {
      free(v9);
    }

    v9 = strdup(__s1);
    *(v13 + 1) = v9;
    v13 += 16;
    v10 = (v10 + 1);
    goto LABEL_18;
  }

  snprintf(v23, v3, "Too many interfaces (%d)");
LABEL_32:
  close(v8);
  if (v9)
  {
    free(v9);
  }

LABEL_25:
  v10 = 0xFFFFFFFFLL;
LABEL_28:
  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void ifaddrlist_free(uint64_t a1, int a2)
{
  if (a1 && a2 >= 1)
  {
    v2 = 0;
    v3 = a2;
    v4 = (a1 + 8);
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = v5 == v2;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        free(v5);
        v2 = *v4;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

const char *findsaddr(__int128 *a1, _OWORD *a2, _WORD *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  bzero(&__buf, 0x25CuLL);
  v26 = 1029;
  v28 = 0x2100000807;
  v6 = socket(17, 3, 0);
  if (v6 < 0)
  {
    v17 = __error();
    strerror(*v17);
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "socket: %.128s");
    goto LABEL_21;
  }

  v7 = v6;
  v8 = getpid();
  v30 = 1;
  v32 = *a1;
  v9 = v32;
  if ((v32 & 3) != 0)
  {
    v9 = (v32 & 0xFC) + 4;
  }

  v10 = v9 + 92;
  __buf = v9 + 92;
  v11 = write(v7, &__buf, v9 + 92);
  if (v11 < 0)
  {
    v18 = __error();
    strerror(*v18);
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "write: %.128s");
LABEL_20:
    close(v7);
    goto LABEL_21;
  }

  if (v11 != v10)
  {
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "short write (%zd != %zd)");
    goto LABEL_20;
  }

  v12 = &v32;
  do
  {
    bzero(&__buf, 0x25CuLL);
    v13 = read(v7, &__buf, 0x25CuLL);
    if (v13 < 0)
    {
      v19 = __error();
      strerror(*v19);
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "read: %.128s");
      goto LABEL_20;
    }
  }

  while (v30 != 1 || v29 != v8);
  v15 = v13;
  close(v7);
  if (v26 == 5)
  {
    if (v15 >= __buf)
    {
      if (!__errnum)
      {
        v22 = 1;
        v16 = "failed!";
        while (1)
        {
          if ((HIDWORD(v28) & v22) != 0)
          {
            if (v22 == 32 && v12[1] == 2 && *(v12 + 1))
            {
              v16 = 0;
              *a2 = *v12;
              *a3 = v27;
              goto LABEL_21;
            }

            v23 = (*v12 & 0xFC) + 4;
            if ((*v12 & 3) == 0)
            {
              v23 = *v12;
            }

            v24 = &v12[v23];
            *v12;
            if (*v12)
            {
              v12 = v24;
            }

            else
            {
              v12 += 4;
            }
          }

          v22 *= 2;
          if (!v22)
          {
            goto LABEL_21;
          }
        }
      }

      strerror(__errnum);
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "rtm_errno: %.128s");
    }

    else
    {
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "bad msglen %d > %zd");
    }
  }

  else
  {
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "bad version %d");
  }

LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

unsigned __int8 *udp_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  v3 = *(a2 + 1800);
  if (v3)
  {
    v4 = *result;
  }

  else
  {
    v4 = 0;
  }

  *v2 = bswap32(v4 + *(a2 + 1832)) >> 16;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *result;
  }

  v2[1] = bswap32(v5 + *(a2 + 1834)) >> 16;
  v6 = *(a2 + 656);
  v2[2] = bswap32(v6) >> 16;
  v2[3] = 0;
  if (*(a2 + 1792))
  {
    result = p_cksum(*(a2 + 544), v2, v6, v6);
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = -1;
    }

    v2[3] = v7;
  }

  return result;
}

BOOL udp_check(unsigned __int16 *a1, int a2, uint64_t a3)
{
  result = 0;
  v5 = bswap32(*a1);
  v6 = *(a3 + 1800);
  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v7 + *(a3 + 1832) == HIWORD(v5))
  {
    v8 = bswap32(a1[1]);
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    return v9 + *(a3 + 1834) == HIWORD(v8);
  }

  return result;
}

unsigned __int8 *tcp_prep(unsigned __int8 *result, uint64_t a2)
{
  v3 = *(a2 + 552);
  *v3 = bswap32(*(a2 + 1832)) >> 16;
  if (*(a2 + 1800))
  {
    v4 = 0;
  }

  else
  {
    v4 = *result;
  }

  v3[1] = bswap32(v4 + *(a2 + 1834)) >> 16;
  *(v3 + 1) = v3[1] | (*v3 << 16);
  *(v3 + 2) = 0;
  *(v3 + 12) = v3[6] & 0xF | 0x50;
  *(v3 + 13) = 2;
  v3[8] = 0;
  if (*(a2 + 1792))
  {
    result = p_cksum(*(a2 + 544), v3, *(a2 + 656), *(a2 + 656));
    v3[8] = result;
  }

  if (*(a2 + 1776) >= 2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      return v5(*a2, "tcp_prep: th_sport %u th_dport %u th_seq %u\n", bswap32(*v3) >> 16, bswap32(v3[1]) >> 16, *(v3 + 1));
    }

    else
    {
      return fprintf(*MEMORY[0x277D85DF8], "tcp_prep: th_sport %u th_dport %u th_seq %u\n", bswap32(*v3) >> 16, bswap32(v3[1]) >> 16, *(v3 + 1));
    }
  }

  return result;
}

BOOL tcp_check(unsigned __int16 *a1, int a2, uint64_t a3)
{
  if (*(a3 + 1776) >= 2)
  {
    v6 = *(a3 + 8);
    v7 = bswap32(*a1) >> 16;
    v8 = bswap32(a1[1]) >> 16;
    v9 = *(a1 + 1);
    if (v6)
    {
      v6(*a3, "tcp_check: th_sport %u th_dport %u th_seq %u\n", v7, v8, v9);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "tcp_check: th_sport %u th_dport %u th_seq %u\n", v7, v8, v9);
    }
  }

  v10 = *a1;
  if (*(a3 + 1832) == bswap32(v10) >> 16 && ((v11 = a1[1], v12 = bswap32(v11), *(a3 + 1800)) ? (v13 = 0) : (v13 = a2), v13 + *(a3 + 1834) == HIWORD(v12)))
  {
    return *(a1 + 1) == (v11 | (v10 << 16));
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *gre_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = 288;
  v2[1] = bswap32(*(a2 + 1834)) >> 16;
  v2[2] = 0;
  v2[3] = bswap32(*(a2 + 1832) + *result) >> 16;
  return result;
}

uint64_t icmp_prep(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = 8;
  v2[2] = bswap32(*(a2 + 1832)) >> 16;
  v2[3] = *a1 << 8;
  v2[1] = 0;
  result = in_cksum(v2, *(a2 + 656));
  v2[1] = result;
  if (!v2[1])
  {
    v2[1] = -1;
  }

  return result;
}

unsigned __int8 *gen_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = bswap32(*(a2 + 1832)) >> 16;
  v2[1] = bswap32(*(a2 + 1834) + *result) >> 16;
  return result;
}

uint64_t traceroute4_parseargs(void *a1, int a2, char **a3)
{
  v6 = (a1 + 612);
  *MEMORY[0x277D85E70] = 0;
  v7 = a1 + 72;
  while (2)
  {
    v8 = getopt(a2, a3, "aA:eEdDFInrSvxf:g:i:M:m:P:p:q:s:t:w:z:");
    switch(v8)
    {
      case 'A':
        *(a1 + 447) = 1;
        a1[230] = *MEMORY[0x277D85E68];
        continue;
      case 'B':
      case 'C':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'L':
      case 'N':
      case 'O':
      case 'Q':
      case 'R':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'h':
      case 'j':
      case 'k':
      case 'l':
      case 'o':
      case 'u':
      case 'y':
        return 0xFFFFFFFFLL;
      case 'D':
        *(a1 + 451) = 1;
        continue;
      case 'E':
        *(a1 + 452) = 1;
        continue;
      case 'F':
        *(a1 + 918) = 0x4000;
        continue;
      case 'I':
        v9 = "icmp";
        goto LABEL_21;
      case 'M':
      case 'f':
        *(a1 + 442) = str2val(*MEMORY[0x277D85E68], "first ttl", 1, 255);
        continue;
      case 'P':
        v9 = *MEMORY[0x277D85E68];
LABEL_21:
        a1[233] = setproto(v9);
        continue;
      case 'S':
        *(a1 + 457) = 1;
        continue;
      case 'a':
        *(a1 + 447) = 1;
        continue;
      case 'd':
        *(a1 + 443) |= 1u;
        continue;
      case 'e':
        *(a1 + 450) = 1;
        continue;
      case 'g':
        v10 = *(a1 + 453);
        if (v10 < 8)
        {
          v11 = gethostinfo(a1, *MEMORY[0x277D85E68]);
          if (v11)
          {
            *(v7 + v10) = **(v11 + 2);
          }

          freehostinfo(v11);
          ++*(a1 + 453);
          continue;
        }

        v23 = a1[1];
        if (v23)
        {
          v23(*a1, "%s: No more than %d gateways\n", "libtraceroute", 8);
        }

        else
        {
          fprintf(*MEMORY[0x277D85DF8], "%s: No more than %d gateways\n", "libtraceroute", 8);
        }

        return 0xFFFFFFFFLL;
      case 'i':
        a1[86] = *MEMORY[0x277D85E68];
        continue;
      case 'm':
        *(a1 + 441) = str2val(*MEMORY[0x277D85E68], "max ttl", 1, 255);
        continue;
      case 'n':
        ++*(a1 + 446);
        continue;
      case 'p':
        *(a1 + 456) = str2val(*MEMORY[0x277D85E68], "port", 1, 0xFFFF);
        continue;
      case 'q':
        *(a1 + 440) = str2val(*MEMORY[0x277D85E68], "nprobes", 1, -1);
        continue;
      case 'r':
        *(a1 + 443) |= 0x10u;
        continue;
      case 's':
        a1[84] = *MEMORY[0x277D85E68];
        continue;
      case 't':
        *(a1 + 454) = str2val(*MEMORY[0x277D85E68], "tos", 0, 255);
        ++*(a1 + 455);
        continue;
      case 'v':
        ++*(a1 + 444);
        continue;
      case 'w':
        *(a1 + 445) = str2val(*MEMORY[0x277D85E68], "wait time", 1, 86400);
        continue;
      case 'x':
        *(a1 + 448) = 1;
        continue;
      case 'z':
        *(a1 + 166) = str2val(*MEMORY[0x277D85E68], "pause msecs", 0, 3600000);
        continue;
      default:
        if (v8 != -1)
        {
          return 0xFFFFFFFFLL;
        }

        v12 = MEMORY[0x277D85E78];
        v13 = *MEMORY[0x277D85E78];
        v14 = a2 - *MEMORY[0x277D85E78];
        if (v14 == 1)
        {
          goto LABEL_35;
        }

        if (v14 != 2)
        {
          return 0xFFFFFFFFLL;
        }

        a1[81] = str2val(a3[v13 + 1], "packet length", *(a1 + 437), *(a1 + 438));
        v13 = *v12;
LABEL_35:
        v15 = gethostinfo(a1, a3[v13]);
        a1[232] = v15;
        if (!v15)
        {
          return 0xFFFFFFFFLL;
        }

        v16 = v15;
        v17 = a1[85];
        if (v17)
        {
          free(v17);
          v16 = a1[232];
        }

        a1[85] = strdup(*v16);
        v18.s_addr = **(v16 + 2);
        *v6 = 0;
        v6[1] = 0;
        *(a1 + 306) = 528;
        *(a1 + 154) = v18;
        if (v16[2] >= 2)
        {
          v19 = a1[1];
          v20 = a3[*v12];
          if (v19)
          {
            v21 = *a1;
            v22 = inet_ntoa(v18);
            v19(v21, "%s: Warning: %s has multiple addresses; using %s\n", "libtraceroute", v20, v22);
          }

          else
          {
            v25 = *MEMORY[0x277D85DF8];
            v26 = inet_ntoa(v18);
            fprintf(v25, "%s: Warning: %s has multiple addresses; using %s\n", "libtraceroute", v20, v26);
          }
        }

        freehostinfo(a1[232]);
        result = 0;
        *MEMORY[0x277D85E88] = 1;
        *v12 = 1;
        return result;
    }
  }
}

uint64_t str2val(char *__str, uint64_t a2, int a3, int a4)
{
  __endptr = 0;
  if (*__str == 48 && (__str[1] | 0x20) == 0x78)
  {
    __str += 2;
    v6 = 16;
  }

  else
  {
    v6 = 10;
  }

  result = strtol(__str, &__endptr, v6);
  if (*__endptr)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: %s bad value for %s \n");
    return 0xFFFFFFFFLL;
  }

  if (a3 < 0 || result >= a3)
  {
    if ((a4 & 0x80000000) == 0 && result > a4)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: %s must be <= %d\n");
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = *MEMORY[0x277D85DF8];
    if (a3)
    {
      fprintf(v8, "%s: %s must be > %d\n");
    }

    else
    {
      fprintf(v8, "%s: %s must be >= %d\n");
    }

    return 1;
  }

  return result;
}

char **setproto(char *a1)
{
  v2 = protos;
  if (protos[0])
  {
    if (!strcasecmp(protos[0], a1))
    {
      return v2;
    }

    v2 = off_281E1C4E8;
    while (1)
    {
      v3 = *v2;
      if (!*v2)
      {
        break;
      }

      v2 += 5;
      if (!strcasecmp(v3, a1))
      {
        v2 -= 5;
        return v2;
      }
    }
  }

  v4 = getprotobyname(a1);
  if (v4)
  {
    p_proto = v4->p_proto;
  }

  else
  {
    LOBYTE(p_proto) = str2val(*MEMORY[0x277D85E68], "proto number", 1, 255);
  }

  *(v2 + 16) = p_proto;
  return v2;
}

_DWORD *gethostinfo(void *a1, char *__s)
{
  if (strlen(__s) >= 0x100)
  {
    v4 = a1[1];
    if (v4)
    {
      v4(*a1, "%s: hostname %.32s... is too long\n", prog, __s);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: hostname %.32s... is too long\n");
    }

    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x101004023BA6C86uLL);
  if (!v5)
  {
    v10 = a1[1];
    v11 = prog;
    if (v10)
    {
      v12 = *a1;
      v13 = __error();
      v14 = strerror(*v13);
      v10(v12, "%s: calloc %s\n", v11, v14);
    }

    else
    {
      v33 = *MEMORY[0x277D85DF8];
      v34 = __error();
      strerror(*v34);
      fprintf(v33, "%s: calloc %s\n");
    }

    return 0;
  }

  v6 = v5;
  v7 = inet_addr(__s);
  if (v7 != -1)
  {
    v8 = v7;
    *v6 = strdup(__s);
    v6[2] = 1;
    v9 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *(v6 + 2) = v9;
    if (v9)
    {
      *v9 = v8;
      return v6;
    }

    goto LABEL_22;
  }

  v15 = gethostbyname(__s);
  if (!v15)
  {
    v35 = a1[1];
    if (!v35)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: unknown host %s\n");
      goto LABEL_33;
    }

    v36 = *a1;
    v37 = "%s: unknown host %s\n";
    goto LABEL_29;
  }

  v16 = v15;
  if (v15->h_addrtype != 2 || v15->h_length != 4)
  {
    v35 = a1[1];
    if (!v35)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: bad host %s\n");
      goto LABEL_33;
    }

    v36 = *a1;
    v37 = "%s: bad host %s\n";
LABEL_29:
    v35(v36, v37);
LABEL_33:
    freehostinfo(v6);
    return 0;
  }

  v17 = strdup(v15->h_name);
  *v6 = v17;
  v18 = strlen(v17);
  clean_non_printable(v17, v18);
  h_addr_list = v16->h_addr_list;
  v20 = *h_addr_list;
  if (*h_addr_list)
  {
    v20 = 0;
    v21 = h_addr_list + 1;
      ;
    }
  }

  v6[2] = v20;
  v23 = malloc_type_calloc(v20, 4uLL, 0x100004052888210uLL);
  *(v6 + 2) = v23;
  if (!v23)
  {
LABEL_22:
    v28 = a1[1];
    v29 = prog;
    if (v28)
    {
      v30 = *a1;
      v31 = __error();
      v32 = strerror(*v31);
      v28(v30, "%s: calloc %s\n", v29, v32);
    }

    else
    {
      v38 = *MEMORY[0x277D85DF8];
      v39 = __error();
      strerror(*v39);
      fprintf(v38, "%s: calloc %s\n");
    }

    goto LABEL_33;
  }

  v24 = v16->h_addr_list;
  v25 = *v24;
  if (*v24)
  {
    v26 = v24 + 1;
    do
    {
      *v23++ = *v25;
      v27 = *v26++;
      v25 = v27;
    }

    while (v27);
  }

  return v6;
}

void freehostinfo(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }

    free(a1[2]);

    free(a1);
  }
}

uint64_t traceroute4_run(void *a1)
{
  v322 = *MEMORY[0x277D85DE8];
  v303 = 1;
  v302 = 0;
  v2 = a1[85];
  if (!v2)
  {
    v12 = a1[1];
    if (!v12)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: Error: No hostname provided in context.\n");
      goto LABEL_109;
    }

    v13 = *a1;
    v14 = "%s: Error: No hostname provided in context.\n";
    goto LABEL_9;
  }

  v3 = (a1 + 612);
  if (!a1[232])
  {
    v4 = gethostinfo(a1, v2);
    a1[232] = v4;
    if (v4)
    {
      v5 = v4;
      v6.s_addr = **(v4 + 2);
      *&v3->sa_len = 0;
      *(a1 + 620) = 0;
      *(a1 + 306) = 528;
      *(a1 + 154) = v6;
      if (v5[2] >= 2)
      {
        v7 = a1[1];
        v8 = prog;
        v9 = a1[85];
        if (v7)
        {
          v10 = *a1;
          v11 = inet_ntoa(v6);
          v7(v10, "%s: Warning: %s has multiple addresses; using %s\n", v8, v9, v11);
        }

        else
        {
          v15 = *MEMORY[0x277D85DF8];
          v16 = inet_ntoa(v6);
          fprintf(v15, "%s: Warning: %s has multiple addresses; using %s\n", v8, v9, v16);
        }
      }

      v17 = a1[85];
      if (v17)
      {
        free(v17);
      }

      v18 = a1[232];
      a1[85] = strdup(*v18);
      freehostinfo(v18);
    }
  }

  a1[233] = protos;
  v19 = getprotobyname("icmp");
  v20 = v19;
  if (v19 && ((v21 = socket(2, 3, v19->p_proto), *(a1 + 435) = v21, v21 < 0) || (v22 = socket(2, 3, 255), *(a1 + 436) = v22, v22 < 0)))
  {
    v23 = *__error();
  }

  else
  {
    v23 = 0;
  }

  v24 = getuid();
  if (setuid(v24))
  {
    goto LABEL_109;
  }

  v25 = a1 + 441;
  if (!*(a1 + 441))
  {
    *v309 = xmmword_25B9498C0;
    v320[0] = 4;
    if (sysctl(v309, 4u, a1 + 1764, v320, 0, 0) == -1)
    {
      perror("sysctl(net.inet.ip.ttl)");
      goto LABEL_109;
    }
  }

  v26 = *(a1 + 456);
  if (v26 == -1)
  {
    LOWORD(v26) = *(a1[233] + 20);
  }

  *(a1 + 917) = v26;
  if (*(a1 + 440) == -1)
  {
    if (*(a1 + 451))
    {
      v27 = 1;
    }

    else
    {
      v27 = 3;
    }

    *(a1 + 440) = v27;
  }

  v28 = *(a1 + 441);
  if (*(a1 + 442) > v28)
  {
    v29 = a1[1];
    if (v29)
    {
      v29(*a1, "%s: first ttl (%d) may not be greater than max ttl (%d)\n", prog, *(a1 + 442), v28);
    }

    else
    {
      v281 = *(a1 + 442);
      fprintf(*MEMORY[0x277D85DF8], "%s: first ttl (%d) may not be greater than max ttl (%d)\n");
    }

    goto LABEL_109;
  }

  if (!*(a1 + 448))
  {
    v30 = a1[1];
    if (v30)
    {
      v30(*a1, "%s: Warning: ip checksums disabled\n", prog);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: Warning: ip checksums disabled\n", prog);
    }
  }

  v31 = *(a1 + 453);
  if (v31 <= 0)
  {
    v32 = *(a1 + 449);
  }

  else
  {
    v32 = 4 * v31 + 4;
    *(a1 + 449) = v32;
  }

  LODWORD(v33) = *(a1[233] + 18) + v32 + 20;
  *(a1 + 437) = v33;
  if (v33 <= 40)
  {
    v33 = 40;
  }

  else
  {
    v33 = v33;
  }

  v34 = a1 + 81;
  a1[81] = v33;
  setvbuf(*MEMORY[0x277D85E08], 0, 1, 0);
  v35 = a1[81];
  v36 = *(a1 + 449);
  v37 = v35 - v36 - 20;
  if (*(a1[233] + 16) == 6)
  {
    LODWORD(v35) = v36 + 40;
    *v34 = v36 + 40;
  }

  a1[82] = v37;
  v38 = malloc_type_malloc(v35, 0x1000040A86A77D5uLL);
  a1[68] = v38;
  if (!v38)
  {
    v55 = a1[1];
    if (!v55)
    {
      v60 = *MEMORY[0x277D85DF8];
      v61 = __error();
      strerror(*v61);
      fprintf(v60, "%s: malloc: %s\n");
      goto LABEL_109;
    }

    v56 = *a1;
    v57 = __error();
    strerror(*v57);
    v58 = "%s: malloc: %s\n";
    goto LABEL_100;
  }

  bzero(v38, a1[81]);
  *a1[68] = *a1[68] & 0xF | 0x40;
  v39 = a1[68];
  if (*(a1 + 455))
  {
    *(v39 + 1) = *(a1 + 454);
  }

  if (*(a1 + 452))
  {
    *(v39 + 1) |= 1u;
  }

  *(v39 + 2) = a1[81];
  *(v39 + 6) = *(a1 + 918);
  *(v39 + 9) = *(a1[233] + 16);
  a1[69] = v39 + 20;
  *(v39 + 16) = *(a1 + 154);
  *v39 = *v39 & 0xF0 | 5;
  *(a1 + 916) = getpid() | 0x8000;
  if (!v20)
  {
    v52 = a1[1];
    if (v52)
    {
      v53 = *a1;
LABEL_80:
      v54 = "%s: unknown protocol %s\n";
      goto LABEL_81;
    }

    v63 = *MEMORY[0x277D85DF8];
LABEL_88:
    fprintf(v63, "%s: unknown protocol %s\n");
    goto LABEL_109;
  }

  v40 = *(a1 + 435);
  if (v40 < 0)
  {
    *__error() = v23;
    v55 = a1[1];
    if (!v55)
    {
      v64 = *MEMORY[0x277D85DF8];
      v65 = __error();
      strerror(*v65);
      fprintf(v64, "%s: icmp socket: %s\n");
      goto LABEL_109;
    }

    v56 = *a1;
    v59 = __error();
    strerror(*v59);
    v58 = "%s: icmp socket: %s\n";
    goto LABEL_100;
  }

  setsockopt(v40, 0xFFFF, 4356, &v303, 4u);
  v41 = *(a1 + 443);
  if (v41)
  {
    setsockopt(*(a1 + 435), 0xFFFF, 1, &v303, 4u);
    v41 = *(a1 + 443);
  }

  if ((v41 & 0x10) != 0)
  {
    setsockopt(*(a1 + 435), 0xFFFF, 16, &v303, 4u);
  }

  v42 = *(a1 + 436);
  if (v42 < 0)
  {
    *__error() = v23;
    v55 = a1[1];
    if (!v55)
    {
      v67 = *MEMORY[0x277D85DF8];
      v68 = __error();
      strerror(*v68);
      fprintf(v67, "%s: raw socket: %s\n");
      goto LABEL_109;
    }

    v56 = *a1;
    v62 = __error();
    strerror(*v62);
    v58 = "%s: raw socket: %s\n";
    goto LABEL_100;
  }

  if (*(a1 + 453) < 1)
  {
    goto LABEL_62;
  }

  v43 = getprotobyname("ip");
  if (!v43)
  {
    v52 = a1[1];
    if (v52)
    {
      v53 = *a1;
      goto LABEL_80;
    }

    v63 = *MEMORY[0x277D85DF8];
    goto LABEL_88;
  }

  v44 = v43;
  *(a1 + *(a1 + 453) + 144) = *(a1 + 154);
  v45 = *(a1 + 453) + 1;
  *(a1 + 453) = v45;
  LOWORD(v309[0]) = -31999;
  v46 = 4 * v45;
  BYTE2(v309[0]) = (4 * v45) | 3;
  HIBYTE(v309[0]) = 4;
  __memcpy_chk();
  if (setsockopt(*(a1 + 436), v44->p_proto, 1, v309, v46 + 4) < 0)
  {
    v55 = a1[1];
    if (!v55)
    {
      v73 = *MEMORY[0x277D85DF8];
      v74 = __error();
      strerror(*v74);
      fprintf(v73, "%s: IP_OPTIONS: %s\n");
      goto LABEL_109;
    }

    v56 = *a1;
    v69 = __error();
    strerror(*v69);
    v58 = "%s: IP_OPTIONS: %s\n";
    goto LABEL_100;
  }

  v42 = *(a1 + 436);
LABEL_62:
  if (setsockopt(v42, 0xFFFF, 4097, a1 + 81, 8u) < 0)
  {
    v55 = a1[1];
    if (!v55)
    {
      v71 = *MEMORY[0x277D85DF8];
      v72 = __error();
      strerror(*v72);
      fprintf(v71, "%s: SO_SNDBUF: %s\n");
      goto LABEL_109;
    }

    v56 = *a1;
    v66 = __error();
    strerror(*v66);
    v58 = "%s: SO_SNDBUF: %s\n";
    goto LABEL_100;
  }

  if (setsockopt(*(a1 + 436), 0, 2, &v303, 4u) < 0)
  {
    v55 = a1[1];
    if (!v55)
    {
      v75 = *MEMORY[0x277D85DF8];
      v76 = __error();
      strerror(*v76);
      fprintf(v75, "%s: IP_HDRINCL: %s\n");
      goto LABEL_109;
    }

    v56 = *a1;
    v70 = __error();
    strerror(*v70);
    v58 = "%s: IP_HDRINCL: %s\n";
LABEL_100:
    v55(v56, v58);
    goto LABEL_109;
  }

  v47 = *(a1 + 443);
  if (v47)
  {
    setsockopt(*(a1 + 436), 0xFFFF, 1, &v303, 4u);
    v47 = *(a1 + 443);
  }

  if ((v47 & 0x10) != 0)
  {
    setsockopt(*(a1 + 436), 0xFFFF, 16, &v303, 4u);
  }

  v48 = ifaddrlist(&v302);
  if (v48 < 0)
  {
    v52 = a1[1];
    if (!v52)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: ifaddrlist: %s\n");
      goto LABEL_109;
    }

    v53 = *a1;
    v54 = "%s: ifaddrlist: %s\n";
LABEL_81:
    v52(v53, v54);
    goto LABEL_109;
  }

  if (!v48)
  {
    v12 = a1[1];
    if (!v12)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: Can't find any network interfaces\n");
      goto LABEL_109;
    }

    v13 = *a1;
    v14 = "%s: Can't find any network interfaces\n";
LABEL_9:
    v12(v13, v14);
    goto LABEL_109;
  }

  v285 = (a1 + 628);
  v49 = a1[86];
  v282 = v48;
  if (!v49)
  {
    v79 = (a1 + 84);
    v80 = a1[84];
    if (!v80)
    {
      LOWORD(v309[0]) = 0;
      v81 = findsaddr((a1 + 612), v285, v309);
      if (v81)
      {
        v82 = a1[1];
        if (v82)
        {
          v82(*a1, "%s: findsaddr: %s\n", prog, v81);
        }

        else
        {
          fprintf(*MEMORY[0x277D85DF8], "%s: findsaddr: %s\n");
        }

        goto LABEL_109;
      }

      v98 = if_indextoname(LOWORD(v309[0]), a1 + 696);
      a1[86] = v98;
      if (!v98)
      {
        v99 = a1[1];
        v100 = prog;
        v101 = LOWORD(v309[0]);
        if (v99)
        {
          v102 = *a1;
          v103 = __error();
          v104 = strerror(*v103);
          v99(v102, "%s: if_indextoname(%u): %s\n", v100, v101, v104);
        }

        else
        {
          v270 = *MEMORY[0x277D85DF8];
          v271 = __error();
          strerror(*v271);
          fprintf(v270, "%s: if_indextoname(%u): %s\n");
        }

        goto LABEL_109;
      }

LABEL_143:
      if (*(a1 + 444))
      {
        v110 = a1[1];
        if (v110)
        {
          v110(*a1, "Using interface: %s\n", a1[86]);
        }

        else
        {
          printf("Using interface: %s\n", a1[86]);
        }
      }

      *(a1[68] + 12) = *(a1 + 158);
      if (bind(*(a1 + 436), v285, 0x10u) < 0)
      {
        v272 = a1[1];
        v273 = prog;
        if (v272)
        {
          v277 = *a1;
          v278 = __error();
          v279 = strerror(*v278);
          v272(v277, "%s: bind: %s\n", v273, v279);
        }

        else
        {
          v274 = *MEMORY[0x277D85DF8];
          v275 = __error();
          v276 = strerror(*v275);
          fprintf(v274, "%s: bind: %s\n", v273, v276);
        }

        exit(1);
      }

      if (*(a1 + 447))
      {
        v111 = as_setup(a1[230]);
        a1[231] = v111;
        if (!v111)
        {
          v112 = a1[1];
          if (v112)
          {
            v112(*a1, "%s: as_setup failed, AS# lookups disabled\n", prog);
          }

          else
          {
            fprintf(*MEMORY[0x277D85DF8], "%s: as_setup failed, AS# lookups disabled\n", prog);
          }

          fflush(*MEMORY[0x277D85DF8]);
          *(a1 + 447) = 0;
        }
      }

      if (*(a1[233] + 16) == 6)
      {
        pcap_on_interface_0 = create_pcap_on_interface_0(a1, a1[86]);
      }

      else
      {
        pcap_on_interface_0 = 0;
      }

      v119 = a1 + 89;
      if (getnameinfo((a1 + 612), *(a1 + 612), a1 + 712, 0x401u, 0, 0, 2))
      {
        __strlcpy_chk();
      }

      v120 = a1[1];
      v121 = a1[85];
      if (v120)
      {
        v120(*a1, "%s to %s (%s)", prog, a1[85], a1 + 712);
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "%s to %s (%s)", prog, a1[85], a1 + 712);
      }

      if (*v79)
      {
        v122 = a1[1];
        if (v122)
        {
          v122(*a1, " from %s", *v79);
        }

        else
        {
          fprintf(*MEMORY[0x277D85DF8], " from %s", *v79);
        }
      }

      v123 = a1[1];
      v124 = *(a1 + 441);
      v125 = a1[81];
      if (v123)
      {
        v123(*a1, ", %d hops max, %zu byte packets\n", *(a1 + 441), v125);
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], ", %d hops max, %zu byte packets\n", *(a1 + 441), v125);
      }

      fflush(*MEMORY[0x277D85DF8]);
      v126 = *(a1 + 442);
      if (v126 > *(a1 + 441))
      {
LABEL_467:
        if (*(a1 + 447))
        {
          as_shutdown(a1[231]);
        }

        if (pcap_on_interface_0)
        {
          pcap_close(pcap_on_interface_0);
        }

        result = v302;
        if (v302)
        {
          ifaddrlist_free(v302, v282);
          result = 0;
        }

        goto LABEL_110;
      }

      v292 = 0;
      __dst = a1 + 4;
      while (1)
      {
        bzero(v309, 0x8B8uLL);
        v309[0] = 2;
        v309[2] = v126;
        v319 = v119;
        v127 = a1[1];
        if (v127)
        {
          v127(*a1, "%2d ", v126);
        }

        else
        {
          printf("%2d ", v126);
        }

        v128 = *(a1 + 440);
        if (v128 >= 1)
        {
          break;
        }

        HIDWORD(v284) = 0;
        v264 = 0;
        v265 = 1;
LABEL_456:
        if (*(a1 + 457))
        {
          v266 = v264 / v128;
          v311 = v266;
          v267 = a1[1];
          if (v267)
          {
            v267(*a1, " (%d%% loss)", v266);
          }

          else
          {
            printf(" (%d%% loss)", v266);
          }
        }

        v268 = a1[1];
        if (v268)
        {
          v268(*a1, "\n");
        }

        else
        {
          putchar(10);
        }

        if (v265 && (SHIDWORD(v284) < 1 || SHIDWORD(v284) < *(a1 + 440) - 1))
        {
          v205 = v126++ < *v25;
          if (v205)
          {
            continue;
          }
        }

        goto LABEL_467;
      }

      v289 = 0;
      v129 = 0;
      v284 = 0;
      v286 = 0;
      v283 = 0;
      v287 = v126;
LABEL_178:
      v301.tv_sec = 0;
      *&v301.tv_usec = 0;
      v300.tv_sec = 0;
      *&v300.tv_usec = 0;
      v299 = 0;
      v297 = 0;
      v298 = 0;
      v293 = v129;
      if (v129)
      {
        v130 = *(a1 + 166);
        if (v130)
        {
          usleep(1000 * v130);
        }
      }

      LOBYTE(v297) = v292 + 1;
      BYTE1(v297) = v126;
      gettimeofday(&v301, &v299);
      v298 = v301;
      (*(a1[233] + 24))(&v297, a1);
      v131 = a1[68];
      v131[8] = v126;
      ++v292;
      *(v131 + 2) = bswap32(*(a1 + 916) + v292) >> 16;
      if (*(a1 + 444) < 2)
      {
LABEL_194:
        v135 = sendto(*(a1 + 436), v131, a1[81], 0, v3, 0x10u);
        v136 = v135;
        if (v135 < 0)
        {
          v137 = a1[1];
          v138 = prog;
          if (v137)
          {
            v139 = *a1;
            v140 = __error();
            v141 = strerror(*v140);
            v137(v139, "%s: sendto: %s\n", v138, v141);
          }

          else
          {
            v142 = *MEMORY[0x277D85DF8];
            v143 = __error();
            v144 = strerror(*v143);
            fprintf(v142, "%s: sendto: %s\n", v138, v144);
          }
        }

        else if (v135 == *v34)
        {
LABEL_201:
          v290 = 0;
          v294 = v293 + 1;
LABEL_202:
          v145 = *(a1 + 435);
          v321.tv_sec = 0;
          *&v321.tv_usec = 0;
          v307 = 0;
          v306 = 16;
          if (pcap_on_interface_0)
          {
            selectable_fd = pcap_get_selectable_fd(pcap_on_interface_0);
          }

          else
          {
            selectable_fd = -1;
          }

          v147 = pcap_on_interface_0;
          if (selectable_fd <= v145)
          {
            v148 = v145;
          }

          else
          {
            v148 = selectable_fd;
          }

          if (selectable_fd == -1)
          {
            v148 = v145;
          }

          v149 = v148 + 1;
          v150 = (v148 + 1) >> 5;
          if ((v149 & 0x1FLL) != 0)
          {
            ++v150;
          }

          v151 = v150 << 7;
          v152 = malloc_type_malloc(v150 << 7, 0x1000040AE2C30F4uLL);
          if (!v152)
          {
            wait_for_reply6_cold_1();
          }

          v153 = v152;
          v308.tv_sec = 0;
          *&v308.tv_usec = 0;
          bzero(v152, v151);
          v154 = 1 << v145;
          v155 = v145 >> 5;
          v156 = 1 << selectable_fd;
          v295 = v301;
          v157 = selectable_fd >> 5;
          while (1)
          {
            do
            {
              while (1)
              {
                if (__darwin_check_fd_set_overflow(v145, v153, 0))
                {
                  v153->fds_bits[v155] |= v154;
                }

                if (selectable_fd != -1 && __darwin_check_fd_set_overflow(selectable_fd, v153, 0))
                {
                  v153->fds_bits[v157] |= v156;
                }

                v308.tv_sec = v295.tv_sec + *(a1 + 445);
                v308.tv_usec = v295.tv_usec;
                gettimeofday(&v321, &v307);
                tv_sec = v308.tv_sec;
                v159 = v308.tv_usec - v321.tv_usec;
                v308.tv_usec = v159;
                if (v159 < 0)
                {
                  tv_sec = v308.tv_sec - 1;
                  v308.tv_usec = v159 + 1000000;
                }

                v308.tv_sec = tv_sec - v321.tv_sec;
                if (tv_sec - v321.tv_sec < 0)
                {
                  v308.tv_sec = 0;
                  v308.tv_usec = 1;
                }

                v160 = select(v149, v153, 0, 0, &v308);
                if (v160 == -1)
                {
                  if (*__error() != 22)
                  {
LABEL_308:
                    free(v153);
                    pcap_on_interface_0 = v147;
                    goto LABEL_309;
                  }

                  v169 = a1[1];
                  if (v169)
                  {
                    v169(*a1, "%s: botched select() args\n", prog);
                  }

                  else
                  {
                    fprintf(*MEMORY[0x277D85DF8], "%s: botched select() args\n", prog);
                  }

                  pcap_on_interface_0 = v147;
                  free(v153);
                  v170 = -1;
                  goto LABEL_267;
                }

                if (v160 < 1)
                {
                  goto LABEL_308;
                }

                if (__darwin_check_fd_set_overflow(v145, v153, 0) && (v153->fds_bits[v155] & v154) != 0)
                {
                  v170 = recvfrom(v145, __dst, 0x200uLL, 0, v285, &v306);
                  goto LABEL_260;
                }

                if (selectable_fd == -1 || !__darwin_check_fd_set_overflow(selectable_fd, v153, 0) || (v153->fds_bits[v157] & v156) == 0)
                {
                  goto LABEL_308;
                }

                v304 = 0;
                v305 = 0;
                if (pcap_next_ex(v147, &v305, &v304) != 1)
                {
                  v170 = 0;
                  goto LABEL_260;
                }

                if (*(a1 + 444) >= 2)
                {
                  v161 = a1[1];
                  caplen = v305->caplen;
                  if (v161)
                  {
                    v161(*a1, "# got TCP packet %d bytes\n", v305->caplen);
                  }

                  else
                  {
                    fprintf(*MEMORY[0x277D85DF8], "# got TCP packet %d bytes\n", v305->caplen);
                  }

                  dump_hex(v304, v305->caplen);
                }

                v163 = pcap_datalink(v147);
                if (v163 == 1)
                {
                  break;
                }

                if (v163 != 108)
                {
                  if (v163 == 12)
                  {
                    v165 = 0;
                    v164 = v305->caplen;
LABEL_255:
                    v171 = v164 - v165;
                    if (v171 >= 0x200)
                    {
                      v170 = 512;
                    }

                    else
                    {
                      v170 = v171;
                    }

                    memcpy(__dst, &v304[v165], v170);
                    *v285 = *(a1 + 612);
                    v290 = 1;
LABEL_260:
                    pcap_on_interface_0 = v147;
                  }

                  else
                  {
                    v172 = a1[1];
                    pcap_on_interface_0 = v147;
                    if (v172)
                    {
                      v173 = *a1;
                      v174 = pcap_datalink(v147);
                      v172(v173, "# cannot process TCP packet with data link %d\n", v174);
                    }

                    else
                    {
                      v208 = *MEMORY[0x277D85DF8];
                      v209 = pcap_datalink(v147);
                      fprintf(v208, "# cannot process TCP packet with data link %d\n", v209);
                    }

                    v170 = 0;
                  }

                  free(v153);
                  if (!v170)
                  {
LABEL_309:
                    ++v289;
                    v309[3] = 1;
                    v210 = a1[1];
                    v34 = a1 + 81;
                    if (v210)
                    {
                      v210(*a1, " *");
                    }

                    else
                    {
                      printf(" *");
                    }

                    v3 = (a1 + 612);
                    v25 = a1 + 441;
                    goto LABEL_313;
                  }

LABEL_267:
                  gettimeofday(&v300, &v299);
                  if (v290)
                  {
                    a1[70] = __dst;
                    v175 = 4 * (a1[4] & 0xF);
                    if (v175 + 20 > v170)
                    {
LABEL_273:
                      if (*(a1 + 444))
                      {
                        v183.s_addr = *(a1 + 158);
                        v184 = inet_ntoa(v183);
                        printf("packet too short (%zu bytes) from %s\n", v170, v184);
                      }

                      goto LABEL_202;
                    }

                    v176 = &__dst[v175];
                    if (*(a1 + 444) >= 2)
                    {
                      v177 = a1[1];
                      v178 = bswap32(*v176) >> 16;
                      v179 = bswap32(v176[1]) >> 16;
                      v180 = *(v176 + 1);
                      if (v177)
                      {
                        v177(*a1, "tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", v178, v179, v180);
                      }

                      else
                      {
                        fprintf(*MEMORY[0x277D85DF8], "tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", v178, v179, v180);
                      }
                    }

                    if (*(a1 + 916) == bswap32(v176[1]) >> 16)
                    {
                      v206 = bswap32(*v176);
                      v207 = v292;
                      if (*(a1 + 450))
                      {
                        v207 = 0;
                      }

                      if (v207 + *(a1 + 917) == HIWORD(v206))
                      {
LABEL_324:
                        v213 = -2;
                        goto LABEL_325;
                      }
                    }

                    goto LABEL_202;
                  }

                  v181 = a1 + 4;
                  v182 = 4 * (*__dst & 0xF);
                  if (v170 < v182 + 8)
                  {
                    goto LABEL_273;
                  }

                  v185 = &__dst[v182];
                  v186 = __dst[4 * (*__dst & 0xF)];
                  v187 = __dst[v182 + 1];
                  if (v187 == 4)
                  {
                    v188 = bswap32(*(v185 + 3)) >> 16;
                  }

                  else
                  {
                    v188 = 0;
                  }

                  *(a1 + 439) = v188;
                  if (!v186)
                  {
                    v189 = a1[233];
                    if (*(v189 + 16) == 1)
                    {
                      v190 = (*(v189 + 32))(&__dst[v182], v292, a1);
                      v181 = a1 + 4;
                      if (v190)
                      {
                        goto LABEL_324;
                      }
                    }
                  }

                  v191 = v170 - v182;
                  v193 = v186 == 11 && v187 == 0;
                  if (v186 != 3 && !v193 || (v194 = v185[8], a1[70] = v185 + 8, a1[71] = v181 + v170 - (v185 + 8), v195 = 4 * (v194 & 0xF), v191 < (v195 + 16)) || (v196 = a1[233], v185[17] != *(v196 + 16)) || !(*(v196 + 32))(&v185[v195 + 8], v292, a1))
                  {
                    if (*(a1 + 444))
                    {
                      v197.s_addr = *(a1 + 158);
                      v198 = inet_ntoa(v197);
                      printf("\n%zu bytes from %s to ", v191, v198);
                      v199.s_addr = *(a1 + 12);
                      v200 = inet_ntoa(v199);
                      v201 = "OUT-OF-RANGE";
                      if (v186 <= 0x10)
                      {
                        v201 = pr_type_ttab[v186];
                      }

                      printf("%s: icmp type %d (%s) code %d\n", v200, v186, v201, v185[1]);
                      if (v191 >= 5)
                      {
                        v202 = (v185 + 8);
                        v203 = 8;
                        do
                        {
                          v204 = *v202++;
                          printf("%2d: x%8.8x\n", v203 - 4, v204);
                          v205 = v191 <= v203;
                          v203 += 4;
                        }

                        while (!v205);
                      }
                    }

                    goto LABEL_202;
                  }

                  if (v186 == 11)
                  {
                    v213 = -1;
                  }

                  else
                  {
                    v213 = v187 + 1;
                  }

LABEL_325:
                  v291 = v213;
                  if (v284)
                  {
                    if (*(a1 + 158) != v283)
                    {
                      v214 = a1[1];
                      if (v214)
                      {
                        v214(*a1, "\n   ");
                      }

                      else
                      {
                        printf("\n   ");
                      }

                      goto LABEL_330;
                    }
                  }

                  else
                  {
LABEL_330:
                    v215.s_addr = *(a1 + 158);
                    v315 = 0;
                    v317 = 0;
                    v314 = 528;
                    s_addr = v215.s_addr;
                    v216 = *(a1 + 32);
                    inet_ntoa(v215);
                    __strlcpy_chk();
                    v318 = v321;
                    if (*(a1 + 447))
                    {
                      v309[1] = as_lookup(a1[231], &v321, 2);
                      v217 = a1[1];
                      if (v217)
                      {
                        v218 = *a1;
                        v219 = as_lookup(a1[231], &v321, 2);
                        v217(v218, " [AS%u]", v219);
                      }

                      else
                      {
                        v220 = as_lookup(a1[231], &v321, 2);
                        printf(" [AS%u]", v220);
                      }
                    }

                    if (*(a1 + 446))
                    {
                      v221 = a1[1];
                      if (v221)
                      {
                        v221(*a1, " %s", &v321);
                      }

                      else
                      {
                        printf(" %s", &v321);
                      }
                    }

                    else
                    {
                      v222.s_addr = *(a1 + 158);
                      v223 = inetname(v222, 0);
                      strnlen(v223, 0x401uLL);
                      __memcpy_chk();
                      v224 = a1[1];
                      if (v224)
                      {
                        v224(*a1, " %s (%s)", v223, &v321);
                      }

                      else
                      {
                        printf(" %s (%s)", v223, &v321);
                      }

                      free(v223);
                      pcap_on_interface_0 = v147;
                    }

                    if (*(a1 + 444))
                    {
                      v225 = v170 - 4 * (v216 & 0xF);
                      v226 = a1[1];
                      if (v226)
                      {
                        v227 = *a1;
                        v228.s_addr = *(a1 + 12);
                        v229 = inet_ntoa(v228);
                        v226(v227, " %zu bytes to %s", v225, v229);
                      }

                      else
                      {
                        v230.s_addr = *(a1 + 12);
                        v231 = inet_ntoa(v230);
                        printf(" %zu bytes to %s", v225, v231);
                      }
                    }

                    v283 = *(a1 + 158);
                    LODWORD(v284) = v284 + 1;
                  }

                  v232 = (v300.tv_sec - v295.tv_sec);
                  v233 = (v300.tv_usec - v295.tv_usec) / 1000.0;
                  v234 = v233 + v232 * 1000.0;
                  v235 = a1[1];
                  if (v235)
                  {
                    v235(*a1, "  %.*f ms", 3, v233 + v232 * 1000.0);
                  }

                  else
                  {
                    printf("  %.*f ms", 3, v233 + v232 * 1000.0);
                  }

                  v3 = (a1 + 612);
                  v25 = a1 + 441;
                  v312 = v234;
                  if (*(a1 + 452))
                  {
                    v236 = *(a1[70] + 1) & 3;
                    if (v236 == (*(a1[68] + 1) & 3))
                    {
                      v237 = a1[1];
                      if (v237)
                      {
                        v237(*a1, " (ecn=passed)");
                      }

                      else
                      {
                        printf(" (ecn=passed)");
                      }

                      goto LABEL_368;
                    }

                    if ((*(a1[70] + 1) & 3) != 0)
                    {
                      if (v236 != 3)
                      {
                        goto LABEL_368;
                      }

                      v238 = a1[1];
                      if (v238)
                      {
                        v239 = *a1;
                        v240 = " (ecn=mangled)";
                        goto LABEL_364;
                      }

                      printf(" (ecn=mangled)");
                    }

                    else
                    {
                      v238 = a1[1];
                      if (v238)
                      {
                        v239 = *a1;
                        v240 = " (ecn=bleached)";
LABEL_364:
                        v238(v239, v240);
                      }

                      else
                      {
                        printf(" (ecn=bleached)");
                      }
                    }

                    v3 = (a1 + 612);
                    v25 = a1 + 441;
                    pcap_on_interface_0 = v147;
                  }

LABEL_368:
                  if (*(a1 + 451))
                  {
                    v241 = a1[1];
                    if (v241)
                    {
                      v241(*a1, "\n");
                    }

                    else
                    {
                      putchar(10);
                    }

                    v242 = a1[1];
                    if (v242)
                    {
                      v242(*a1, "%*.*s%s\n", -8 * (*a1[68] & 0xF), 8 * (*a1[68] & 0xF), ip_hdr_key, *(a1[233] + 8));
                    }

                    else
                    {
                      printf("%*.*s%s\n", -8 * (*a1[68] & 0xF), 8 * (*a1[68] & 0xF), ip_hdr_key, *(a1[233] + 8));
                    }

                    v243 = a1[68];
                    v244 = a1[81];
                    v296 = a1[70];
                    v245 = a1[71];
                    if (v244 >= 1)
                    {
                      v246 = a1[68];
                      v247 = a1[81];
                      do
                      {
                        v248 = *v246++;
                        printf("%02x", v248);
                        --v247;
                      }

                      while (v247);
                    }

                    putchar(10);
                    if (v244 >= v245)
                    {
                      v244 = v245;
                    }

                    v249 = v296;
                    v250 = v244;
                    if (v244 < 1)
                    {
                      v254 = 0;
                    }

                    else
                    {
                      do
                      {
                        v252 = *v243++;
                        v251 = v252;
                        v253 = *v249++;
                        if (v251 == v253)
                        {
                          printf("__");
                        }

                        else
                        {
                          printf("%02x");
                        }

                        --v250;
                      }

                      while (v250);
                      v254 = v244;
                    }

                    v205 = v245 <= v254;
                    v255 = v245 - v254;
                    pcap_on_interface_0 = v147;
                    if (!v205)
                    {
                      v256 = &v296[v254];
                      do
                      {
                        v257 = *v256++;
                        printf("%02x", v257);
                        --v255;
                      }

                      while (v255);
                    }

                    putchar(10);
                  }

                  if (v291 == -1)
                  {
                    v34 = a1 + 81;
LABEL_313:
                    v119 = a1 + 89;
                    v126 = v287;
                    goto LABEL_314;
                  }

                  if (v291 != -2)
                  {
                    v310 = v291 - 1;
                    switch(v291)
                    {
                      case 1:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !N";
                          goto LABEL_435;
                        }

                        printf(" !N");
                        break;
                      case 2:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !H";
                          goto LABEL_435;
                        }

                        printf(" !H");
                        break;
                      case 3:
                        ++v286;
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !P";
                          goto LABEL_435;
                        }

                        printf(" !P");
                        break;
                      case 4:
                        if (*(a1 + 40) <= 1u)
                        {
                          v262 = a1[1];
                          if (v262)
                          {
                            v262(*a1, " !");
                          }

                          else
                          {
                            printf(" !");
                          }
                        }

                        ++v286;
                        break;
                      case 5:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v280 = *(a1 + 439);
                          v261 = " !F-%d";
                          goto LABEL_435;
                        }

                        v263 = *(a1 + 439);
                        printf(" !F-%d");
                        break;
                      case 6:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !S";
                          goto LABEL_435;
                        }

                        printf(" !S");
                        break;
                      case 7:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !U";
                          goto LABEL_435;
                        }

                        printf(" !U");
                        break;
                      case 8:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !W";
                          goto LABEL_435;
                        }

                        printf(" !W");
                        break;
                      case 9:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !I";
                          goto LABEL_435;
                        }

                        printf(" !I");
                        break;
                      case 10:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !A";
                          goto LABEL_435;
                        }

                        printf(" !A");
                        break;
                      case 11:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !Z";
                          goto LABEL_435;
                        }

                        printf(" !Z");
                        break;
                      case 12:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !Q";
                          goto LABEL_435;
                        }

                        printf(" !Q");
                        break;
                      case 13:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !T";
                          goto LABEL_435;
                        }

                        printf(" !T");
                        break;
                      case 14:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !X";
                          goto LABEL_435;
                        }

                        printf(" !X");
                        break;
                      case 15:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !V";
                          goto LABEL_435;
                        }

                        printf(" !V");
                        break;
                      case 16:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !C";
                          goto LABEL_435;
                        }

                        printf(" !C");
                        break;
                      default:
                        ++HIDWORD(v284);
                        v259 = a1[1];
                        if (v259)
                        {
                          v260 = *a1;
                          v261 = " !<%d>";
LABEL_435:
                          v259(v260, v261);
                        }

                        else
                        {
                          printf(" !<%d>");
                        }

                        break;
                    }

                    v3 = (a1 + 612);
                    v25 = a1 + 441;
                    v34 = a1 + 81;
                    pcap_on_interface_0 = v147;
                    goto LABEL_313;
                  }

                  v34 = a1 + 81;
                  v119 = a1 + 89;
                  v126 = v287;
                  if (*(a1 + 40) <= 1u)
                  {
                    v258 = a1[1];
                    if (v258)
                    {
                      v258(*a1, " !");
                    }

                    else
                    {
                      printf(" !");
                    }
                  }

                  ++v286;
LABEL_314:
                  v211 = a1[3];
                  if (v211)
                  {
                    if (v286)
                    {
                      v212 = 1;
                    }

                    else
                    {
                      v212 = SHIDWORD(v284) >= 1 && SHIDWORD(v284) >= *(a1 + 440) - 1;
                    }

                    v313 = v212;
                    v211(a1[2], v309);
                  }

                  else
                  {
                    fflush(*MEMORY[0x277D85E08]);
                  }

                  v128 = *(a1 + 440);
                  v129 = v294;
                  if (v294 >= v128)
                  {
                    v264 = 100 * v289;
                    v265 = v286 == 0;
                    goto LABEL_456;
                  }

                  goto LABEL_178;
                }

                v164 = v305->caplen;
                v165 = 4;
LABEL_239:
                if (v165 <= v164)
                {
                  goto LABEL_255;
                }
              }

              v164 = v305->caplen;
            }

            while (v164 < 0xE);
            v166 = *(v304 + 6);
            if (v166 == 8)
            {
              v165 = 14;
              goto LABEL_239;
            }

            if (v166 == 33024)
            {
              v165 = 18;
              goto LABEL_239;
            }

            v167 = __rev16(v166);
            v168 = a1[1];
            if (v168)
            {
              v168(*a1, "# cannot process TCP packet with Ethernet type 0x%04x\n", v167);
            }

            else
            {
              fprintf(*MEMORY[0x277D85DF8], "# cannot process TCP packet with Ethernet type 0x%04x\n", v167);
            }
          }
        }

        printf("%s: wrote %s %zu chars, ret=%zu\n", prog, a1[85], a1[81], v136);
        fflush(*MEMORY[0x277D85E08]);
        goto LABEL_201;
      }

      v132 = *v34;
      printf("[ %zu bytes", *v34);
      if (v132 >= 2)
      {
        v133 = 0;
        do
        {
          if ((v133 & 7) == 0)
          {
            printf("\n\t");
          }

          ++v133;
          v134 = *v131;
          v131 += 2;
          printf(" %04x", bswap32(v134) >> 16);
        }

        while (v132 >> 1 != v133);
        if ((*v34 & 1) == 0)
        {
          goto LABEL_193;
        }

        if ((v132 & 0xE) != 0)
        {
          goto LABEL_192;
        }
      }

      else if ((*v34 & 1) == 0)
      {
        goto LABEL_193;
      }

      printf("\n\t");
LABEL_192:
      printf(" %02x", *v131);
LABEL_193:
      puts("]");
      v131 = a1[68];
      goto LABEL_194;
    }

LABEL_117:
    v83 = gethostinfo(a1, v80);
    v84 = v83;
    v85 = *v83;
    a1[84] = *v83;
    *v83 = 0;
    v86 = a1[86];
    if (v86)
    {
      v87 = v83[2];
      if (v87 >= 1)
      {
        v88 = *(v83 + 2);
        v89 = *v302;
        v90 = v87 + 1;
        while (*v88 != v89)
        {
          ++v88;
          if (--v90 <= 1)
          {
            goto LABEL_122;
          }
        }

        *&v285->sa_len = 0;
        *(a1 + 636) = 0;
        *(a1 + 314) = 528;
        *(a1 + 158) = v89;
        goto LABEL_142;
      }

LABEL_122:
      v91 = a1[1];
      if (v91)
      {
        v91(*a1, "%s: %s is not on interface %.32s\n", prog, v85, v86);
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "%s: %s is not on interface %.32s\n");
      }
    }

    else
    {
      v92.s_addr = **(v83 + 2);
      *&v285->sa_len = 0;
      *(a1 + 636) = 0;
      *(a1 + 314) = 528;
      *(a1 + 158) = v92;
      if (v84[2] >= 2)
      {
        v93 = a1[1];
        v94 = prog;
        if (v93)
        {
          v95 = *a1;
          v96 = inet_ntoa(v92);
          v93(v95, "%s: Warning: %s has multiple addresses; using %s\n", v94, v85, v96);
        }

        else
        {
          v105 = *MEMORY[0x277D85DF8];
          v106 = inet_ntoa(v92);
          fprintf(v105, "%s: Warning: %s has multiple addresses; using %s\n", v94, v85, v106);
        }
      }

      v107 = v302;
      v108 = **(v84 + 2);
      v109 = v282 + 1;
      do
      {
        if (*v107 == v108)
        {
          a1[86] = v107[1];
        }

        v107 += 2;
        --v109;
      }

      while (v109 > 1);
      v302 = v107;
      if (a1[86])
      {
LABEL_142:
        freehostinfo(v84);
        goto LABEL_143;
      }

      v113 = a1[1];
      v114 = prog;
      v115.s_addr = *(a1 + 158);
      if (v113)
      {
        v116 = *a1;
        v117 = inet_ntoa(v115);
        v113(v116, "%s: no device for: %s\n", v114, v117);
      }

      else
      {
        v269 = *MEMORY[0x277D85DF8];
        inet_ntoa(v115);
        fprintf(v269, "%s: no device for: %s\n");
      }
    }

    freehostinfo(v84);
    goto LABEL_109;
  }

  v50 = v48 + 1;
  v51 = v302 + 2;
  do
  {
    if (!strcmp(v49, *(v51 - 1)))
    {
      v79 = (a1 + 84);
      v80 = a1[84];
      if (!v80)
      {
        v97 = *(v51 - 4);
        *&v285->sa_len = 0;
        *(a1 + 636) = 0;
        *(a1 + 314) = 528;
        *(a1 + 158) = v97;
        goto LABEL_143;
      }

      goto LABEL_117;
    }

    v302 = v51;
    --v50;
    v51 += 2;
  }

  while (v50 > 1);
  v52 = a1[1];
  if (v52)
  {
    v53 = *a1;
    v54 = "%s: Can't find interface %.32s\n";
    goto LABEL_81;
  }

  fprintf(*MEMORY[0x277D85DF8], "%s: Can't find interface %.32s\n");
LABEL_109:
  result = 1;
LABEL_110:
  v78 = *MEMORY[0x277D85DE8];
  return result;
}

pcap_t *create_pcap_on_interface_0(uint64_t a1, char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *&v8.bf_len = 0;
  v8.bf_insns = 0;
  v3 = pcap_create(a2, create_pcap_on_interface_ebuf_0);
  if (!v3)
  {
    errx(71, "pcap_open_live(%s) failed: %s");
  }

  v4 = v3;
  if (pcap_set_snaplen(v3, 0xFFFF) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_snaplen(%s, %d) failed: %s");
  }

  if (pcap_set_immediate_mode(v4, 1) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_immediate_mode(%s, %d) failed: %s");
  }

  if (pcap_setnonblock(v4, 1, create_pcap_on_interface_ebuf_0))
  {
    create_pcap_on_interface_cold_1_0();
  }

  if (pcap_set_buffer_size(v4, 0xFFFF))
  {
    create_pcap_on_interface_cold_2_0();
  }

  if (pcap_activate(v4) < 0)
  {
    create_pcap_on_interface_cold_5_0();
  }

  inet_ntop(2, (a1 + 616), v10, 0x2Eu);
  inet_ntop(2, (a1 + 632), v9, 0x2Eu);
  snprintf(create_pcap_on_interface_filter_str_0, 0x400uLL, "tcp and src %s and dst %s", v10, v9);
  if (pcap_compile(v4, &v8, create_pcap_on_interface_filter_str_0, 1, 0xFFFFFFFF))
  {
    create_pcap_on_interface_cold_3_0(v4);
  }

  if (pcap_setfilter(v4, &v8) < 0)
  {
    create_pcap_on_interface_cold_4(v4);
  }

  if (*(a1 + 1776) >= 2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v5(*a1, "# using pcap filter %s\n", create_pcap_on_interface_filter_str_0);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "# using pcap filter %s\n", create_pcap_on_interface_filter_str_0);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t p_cksum(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned __int16 a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  BYTE1(v11) = *(a1 + 9);
  HIWORD(v11) = bswap32(a3) >> 16;
  v12 = *(a1 + 12);
  v9[1] = in_cksum(&v10, 0x14u);
  v9[0] = in_cksum(a2, a4);
  v6 = in_cksum(v9, 4u);
  v7 = *MEMORY[0x277D85DE8];
  return v6 ^ 0xFFFFu;
}

char *inetname(in_addr a1, int a2)
{
  s_addr = a1.s_addr;
  v18 = *MEMORY[0x277D85DE8];
  v15 = a1.s_addr;
  if (a2)
  {
    goto LABEL_2;
  }

  if ((gethostname(__s, 0x100uLL) & 0x80000000) == 0 && ((v7 = strchr(__s, 46)) != 0 || (v8 = gethostbyname(__s)) != 0 && (v7 = strchr(v8->h_name, 46)) != 0))
  {
    strlen(v7 + 1);
    __memmove_chk();
    s_addr = v15;
    if (!v15)
    {
      goto LABEL_2;
    }
  }

  else
  {
    __s[0] = 0;
    if (!s_addr)
    {
LABEL_2:
      v3.s_addr = s_addr;
      v4 = inet_ntoa(v3);
      goto LABEL_3;
    }
  }

  v9 = gethostbyaddr(&v15, 4u, 2);
  if (!v9)
  {
    s_addr = v15;
    goto LABEL_2;
  }

  v10 = v9;
  v11 = strchr(v9->h_name, 46);
  if (v11)
  {
    v12 = v11;
    if (!strcmp(v11 + 1, __s))
    {
      *v12 = 0;
      h_name = v10->h_name;
    }
  }

  __strlcpy_chk();
  v14 = strlen(v16);
  clean_non_printable(v16, v14);
  v4 = v16;
LABEL_3:
  result = strdup(v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t traceroute4_context_init(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, 0x750uLL);
  result = 0;
  *(a1 + 560) = 0u;
  *(a1 + 1752) = 0x8000;
  *(a1 + 1760) = 0xFFFFFFFFLL;
  *(a1 + 1768) = 1;
  *(a1 + 1780) = 5;
  *(a1 + 1840) = 0u;
  *(a1 + 1792) = 1;
  *(a1 + 1864) = 0;
  *(a1 + 1836) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0xFFFFFFFFLL;
  *(a1 + 8) = null_output_callback;
  return result;
}

uint64_t traceroute4_set_result_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return result;
}

uint64_t traceroute6_context_init(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, 0x10D90uLL);
  result = 0;
  *(a1 + 3372) = 20;
  *(a1 + 3432) = 3;
  *(a1 + 3388) = 0xFFFFFFFF00000001;
  *(a1 + 3440) = 30;
  *(a1 + 3364) = -32102;
  *(a1 + 3448) = 5;
  *(a1 + 3408) = 17;
  *(a1 + 8) = null_output_callback;
  return result;
}

_BYTE *clean_non_printable(_BYTE *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = MEMORY[0x277D85DE0];
      for (i = a1; ; ++i)
      {
        v6 = *i;
        if (!*i)
        {
          return a1;
        }

        if ((v6 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v4 + 4 * v6 + 60) & 0x40000) == 0)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (!--v3)
        {
          return a1;
        }
      }

      if (__maskrune(v6, 0x40000uLL))
      {
        goto LABEL_8;
      }

LABEL_7:
      *i = 63;
      goto LABEL_8;
    }
  }

  return a1;
}

uint64_t dump_hex(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  for (i = 0; i != a2; ++i)
  {
    result = printf("%02x", *(v3 + i));
    if ((~i & 0xF) != 0)
    {
      if ((i & 1) == 0)
      {
        continue;
      }

      v5 = 32;
    }

    else
    {
      v5 = 10;
    }

    result = putchar(v5);
  }

  if ((a2 & 0xF) != 0)
  {

    return putchar(10);
  }

  return result;
}

uint64_t in_cksum(unsigned __int16 *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = *a1++;
      v2 += v3;
      a2 -= 2;
    }

    while (a2 > 1);
  }

  if (a2 == 1)
  {
    v2 += *a1;
  }

  return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
}

void *as_setup(const char *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = "whois.radb.net";
  }

  *&v15.sa_data[10] = 0;
  *&v15.sa_data[2] = 0;
  *&v15.sa_len = 528;
  v2 = getservbyname("whois", "tcp");
  if (v2)
  {
    s_port = v2->s_port;
  }

  else
  {
    warnx("warning: whois/tcp service not found");
    LOWORD(s_port) = 11008;
  }

  *v15.sa_data = s_port;
  if (!inet_aton(v1, &v15.sa_data[2]))
  {
    v9 = gethostbyname(v1);
    if (!v9 || (v10 = v9, !*v9->h_addr_list))
    {
      as_setup_cold_1(v1);
      goto LABEL_25;
    }

    v11 = socket(2, 1, 0);
    if (v11 != -1)
    {
      v5 = v11;
      v12 = *v10->h_addr_list;
      while (1)
      {
        h_length = v10->h_length;
        __memcpy_chk();
        ++v10->h_addr_list;
        if (!connect(v5, &v15, 0x10u))
        {
          goto LABEL_9;
        }

        if (!*v10->h_addr_list)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_21:
    warn("socket");
    goto LABEL_25;
  }

  v4 = socket(2, 1, 0);
  if (v4 == -1)
  {
    goto LABEL_21;
  }

  v5 = v4;
  if (connect(v4, &v15, 0x10u))
  {
LABEL_18:
    close(v5);
    warn("connect");
LABEL_25:
    result = 0;
    goto LABEL_26;
  }

LABEL_9:
  v6 = fdopen(v5, "r+");
  if (!v6)
  {
    warn("fdopen");
    goto LABEL_25;
  }

  v7 = v6;
  fwrite("!!\n", 3uLL, 1uLL, v6);
  fflush(v7);
  result = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (!result)
  {
    fclose(v7);
    goto LABEL_25;
  }

  *result = v7;
LABEL_26:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t as_lookup(FILE **a1, const char *a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = 32;
  if (a3 == 30)
  {
    v5 = 128;
  }

  v11 = 0;
  fprintf(v4, "!r%s/%d,l\n", a2, v5);
  fflush(*a1);
  if (fgets(__s, 1024, *a1))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v13[1016] = 0;
      if ((v7 & 1) != 0 && (v6 = __s[0], __s[0] == 65))
      {
        sscanf(__s, "A%d\n");
      }

      else
      {
        if (!v11)
        {
          v6 = __s[0];
        }

        if (v6 != 65)
        {
          break;
        }

        v11 -= strlen(__s);
        if (!strncasecmp(__s, "origin:", 7uLL))
        {
          sscanf(v13, " AS%u");
        }
      }

      v8 = fgets(__s, 1024, *a1);
      v7 = 0;
      v6 = 65;
    }

    while (v8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void as_shutdown(FILE **a1)
{
  fwrite("!q\n", 3uLL, 1uLL, *a1);
  fclose(*a1);

  free(a1);
}

void OUTLINED_FUNCTION_6_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t sub_25B868874@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_25B868924();
}

uint64_t sub_25B8688CC(double *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  sub_25B86897C(v4);
}

double sub_25B868924()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B86897C(double a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t sub_25B868A80@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_25B868B34();
}

uint64_t sub_25B868ADC(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  sub_25B868B8C(v3);
}

uint64_t sub_25B868B34()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B868B8C(int a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t sub_25B868C50@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_25B868D04();
}

uint64_t sub_25B868CAC(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  sub_25B868D5C(v3);
}

uint64_t sub_25B868D04()
{
  swift_beginAccess();
  v2 = *(v0 + 28);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B868D5C(int a1)
{
  swift_beginAccess();
  *(v1 + 28) = a1;
  return swift_endAccess();
}

uint64_t sub_25B868E20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;

  v2 = sub_25B868F0C();
  *a2 = v2;
  *(a2 + 4) = BYTE4(v2) & 1;
}

uint64_t sub_25B868E94(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  sub_25B868F84(v6);
}

uint64_t sub_25B868F0C()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t sub_25B868F84(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 32) = v3;
  *(v1 + 36) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_25B869084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;

  v2 = sub_25B869170();
  *a2 = v2;
  *(a2 + 4) = BYTE4(v2) & 1;
}

uint64_t sub_25B8690F8(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  sub_25B8691E8(v6);
}

uint64_t sub_25B869170()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = *(v0 + 44);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t sub_25B8691E8(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 40) = v3;
  *(v1 + 44) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_25B8692E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;

  v2 = sub_25B8693D4();
  *a2 = v2;
  *(a2 + 4) = BYTE4(v2) & 1;
}

uint64_t sub_25B86935C(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  sub_25B86944C(v6);
}

uint64_t sub_25B8693D4()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t sub_25B86944C(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 48) = v3;
  *(v1 + 52) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_25B86954C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = sub_25B869620();
  a2[1] = v2;
}

uint64_t sub_25B8695AC(void *a1, uint64_t *a2)
{
  sub_25B898FF0(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_25B869688(v4, v6);
}

uint64_t sub_25B869620()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_25B946ED8();
  swift_endAccess();
  return v2;
}

uint64_t sub_25B869688(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  swift_beginAccess();
  v3 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  swift_endAccess();
}

uint64_t sub_25B86977C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_25B869838() & 1;
}

uint64_t sub_25B8697DC(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  sub_25B869894(v4 & 1);
}

uint64_t sub_25B869838()
{
  swift_beginAccess();
  v2 = *(v0 + 72);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_25B869894(char a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
  return swift_endAccess();
}

uint64_t sub_25B869960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_25B869A1C() & 1;
}

uint64_t sub_25B8699C0(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  sub_25B869A78(v4 & 1);
}

uint64_t sub_25B869A1C()
{
  swift_beginAccess();
  v2 = *(v0 + 73);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_25B869A78(char a1)
{
  swift_beginAccess();
  *(v1 + 73) = a1;
  return swift_endAccess();
}

uint64_t sub_25B869B44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = sub_25B869C18();
  a2[1] = v2;
}

uint64_t sub_25B869BA4(void *a1, uint64_t *a2)
{
  sub_25B898FF0(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_25B869C80(v4, v6);
}

uint64_t sub_25B869C18()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_25B946ED8();
  swift_endAccess();
  return v2;
}

uint64_t sub_25B869C80(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  swift_beginAccess();
  v3 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  swift_endAccess();
}

uint64_t TraceRouteOptions.init()()
{
  *(v0 + 16) = 1.0;
  *(v0 + 24) = 3;
  *(v0 + 28) = 32;
  *(v0 + 32) = 0;
  *(v0 + 36) = 1;
  *(v0 + 40) = 0;
  *(v0 + 44) = 1;
  *(v0 + 48) = 0;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 73) = 0;
  v1 = sub_25B946F48();
  result = v4;
  *(v4 + 80) = v1;
  *(v4 + 88) = v3;
  return result;
}

uint64_t sub_25B869E60(uint64_t a1, uint64_t a2)
{
  v36[2] = a1;
  v36[3] = a2;
  sub_25B946ED8();
  v36[0] = sub_25B946F48();
  v36[1] = v2;
  v35[2] = a1;
  v35[3] = a2;
  v26 = MEMORY[0x25F870E10](v36[0], v2, a1, a2);
  sub_25B86AEEC(v36);
  if (v26)
  {

    v37 = 0;
    v23 = 0;
LABEL_22:

    return v23;
  }

  sub_25B946ED8();
  v35[0] = sub_25B946F48();
  v35[1] = v3;
  v34[2] = a1;
  v34[3] = a2;
  v22 = MEMORY[0x25F870E10](v35[0], v3, a1, a2);
  sub_25B86AEEC(v35);
  if (v22)
  {

    v37 = 1;
    v23 = 1;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v34[0] = sub_25B946F48();
  v34[1] = v4;
  v33[2] = a1;
  v33[3] = a2;
  v21 = MEMORY[0x25F870E10](v34[0], v4, a1, a2);
  sub_25B86AEEC(v34);
  if (v21)
  {

    v37 = 2;
    v23 = 2;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v33[0] = sub_25B946F48();
  v33[1] = v5;
  v32[2] = a1;
  v32[3] = a2;
  v20 = MEMORY[0x25F870E10](v33[0], v5, a1, a2);
  sub_25B86AEEC(v33);
  if (v20)
  {

    v37 = 3;
    v23 = 3;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v32[0] = sub_25B946F48();
  v32[1] = v6;
  v31[2] = a1;
  v31[3] = a2;
  v19 = MEMORY[0x25F870E10](v32[0], v6, a1, a2);
  sub_25B86AEEC(v32);
  if (v19)
  {

    v37 = 4;
    v23 = 4;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v31[0] = sub_25B946F48();
  v31[1] = v7;
  v30[2] = a1;
  v30[3] = a2;
  v18 = MEMORY[0x25F870E10](v31[0], v7, a1, a2);
  sub_25B86AEEC(v31);
  if (v18)
  {

    v37 = 5;
    v23 = 5;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v30[0] = sub_25B946F48();
  v30[1] = v8;
  v29[2] = a1;
  v29[3] = a2;
  v17 = MEMORY[0x25F870E10](v30[0], v8, a1, a2);
  sub_25B86AEEC(v30);
  if (v17)
  {

    v37 = 6;
    v23 = 6;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v29[0] = sub_25B946F48();
  v29[1] = v9;
  v28[2] = a1;
  v28[3] = a2;
  v16 = MEMORY[0x25F870E10](v29[0], v9, a1, a2);
  sub_25B86AEEC(v29);
  if (v16)
  {

    v37 = 7;
    v23 = 7;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v28[0] = sub_25B946F48();
  v28[1] = v10;
  v27[2] = a1;
  v27[3] = a2;
  v15 = MEMORY[0x25F870E10](v28[0], v10, a1, a2);
  sub_25B86AEEC(v28);
  if (v15)
  {

    v37 = 8;
    v23 = 8;
    goto LABEL_22;
  }

  sub_25B946ED8();
  v27[0] = sub_25B946F48();
  v27[1] = v11;
  v14 = MEMORY[0x25F870E10](v27[0], v11, a1, a2);
  sub_25B86AEEC(v27);
  if (v14)
  {

    v37 = 9;
    v23 = 9;
    goto LABEL_22;
  }

  return 10;
}

BOOL sub_25B86A4E4(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      case 8:
        v4 = 8;
        break;
      default:
        v4 = 9;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      case 8:
        v3 = 8;
        break;
      default:
        v3 = 9;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_25B86A9C0()
{
  v2 = qword_27FBAAAA8;
  if (!qword_27FBAAAA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B86AD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B869E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B86ADA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B86A4CC();
  *a1 = result;
  return result;
}

unint64_t sub_25B86AE00()
{
  v2 = qword_27FBAAAB0;
  if (!qword_27FBAAAB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t TraceRouteOptions.deinit()
{
  sub_25B86AEEC(v0 + 56);
  sub_25B86AEEC(v0 + 80);
  return v2;
}

uint64_t sub_25B86AEEC(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_25B86AF58(uint64_t a1)
{
  v48 = a1;
  v79 = 0;
  v78 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAAB8, &qword_25B9498D0);
  v49 = *(v55 - 8);
  v50 = v55 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = v18 - v51;
  v79 = MEMORY[0x28223BE20](v48);
  v78 = v1;
  v52 = v79[3];
  v53 = v79[4];
  __swift_project_boxed_opaque_existential_1(v79, v52);
  sub_25B86AE00();
  sub_25B9479C8();
  sub_25B868924();
  v2 = v56;
  v77 = 0;
  sub_25B947758();
  v57 = v2;
  v58 = v2;
  if (v2)
  {
    v26 = v58;
    result = (*(v49 + 8))(v54, v55);
    v27 = v26;
  }

  else
  {
    sub_25B868B34();
    v3 = v57;
    v76 = 1;
    sub_25B947788();
    v46 = v3;
    v47 = v3;
    if (v3)
    {
      v25 = v47;
      result = (*(v49 + 8))(v54, v55);
      v27 = v25;
    }

    else
    {
      sub_25B868D04();
      v4 = v46;
      v75 = 2;
      sub_25B947788();
      v44 = v4;
      v45 = v4;
      if (v4)
      {
        v24 = v45;
        result = (*(v49 + 8))(v54, v55);
        v27 = v24;
      }

      else
      {
        v5 = sub_25B868F0C();
        v6 = v44;
        v74 = v5;
        v73 = 3;
        v71 = v5;
        v72 = BYTE4(v5) & 1;
        sub_25B947718();
        v42 = v6;
        v43 = v6;
        if (v6)
        {
          v23 = v43;
          result = (*(v49 + 8))(v54, v55);
          v27 = v23;
        }

        else
        {
          v7 = sub_25B869170();
          v8 = v42;
          v70 = v7;
          v69 = 4;
          v67 = v7;
          v68 = BYTE4(v7) & 1;
          sub_25B947718();
          v40 = v8;
          v41 = v8;
          if (v8)
          {
            v22 = v41;
            result = (*(v49 + 8))(v54, v55);
            v27 = v22;
          }

          else
          {
            v9 = sub_25B8693D4();
            v10 = v40;
            v66 = v9;
            v65 = 5;
            v63 = v9;
            v64 = BYTE4(v9) & 1;
            sub_25B947728();
            v38 = v10;
            v39 = v10;
            if (v10)
            {
              v21 = v39;
              result = (*(v49 + 8))(v54, v55);
              v27 = v21;
            }

            else
            {
              sub_25B869620();
              v11 = v38;
              v35 = v12;
              v62 = 6;
              sub_25B9476F8();
              v36 = v11;
              v37 = v11;
              if (v11)
              {
                v20 = v37;

                result = (*(v49 + 8))(v54, v55);
                v27 = v20;
              }

              else
              {

                sub_25B869838();
                v13 = v36;
                v61 = 7;
                sub_25B947748();
                v33 = v13;
                v34 = v13;
                if (v13)
                {
                  v19 = v34;
                  result = (*(v49 + 8))(v54, v55);
                  v27 = v19;
                }

                else
                {
                  sub_25B869A1C();
                  v14 = v33;
                  v60 = 8;
                  sub_25B947748();
                  v31 = v14;
                  v32 = v14;
                  if (v14)
                  {
                    v18[1] = v32;
                    return (*(v49 + 8))(v54, v55);
                  }

                  else
                  {
                    sub_25B869C18();
                    v15 = v31;
                    v28 = v16;
                    v59 = 9;
                    sub_25B947738();
                    v29 = v15;
                    v30 = v15;
                    if (v15)
                    {
                      v18[0] = v30;
                    }

                    return (*(v49 + 8))(v54, v55);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t TraceRouteOptions.__allocating_init(from:)(uint64_t *a1)
{
  swift_allocObject();
  v5 = TraceRouteOptions.init(from:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t TraceRouteOptions.init(from:)(uint64_t *a1)
{
  v116 = a1;
  v139 = 0;
  v138 = 0;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAAC0, &qword_25B9498D8);
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = v40 - v115;
  v139 = MEMORY[0x28223BE20](v116);
  v138 = v1;
  *(v1 + 16) = 1.0;
  *(v1 + 24) = 3;
  *(v1 + 28) = 32;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 44) = 1;
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 73) = 0;
  v2 = sub_25B946F48();
  v3 = v116;
  *(v1 + 80) = v2;
  *(v1 + 88) = v4;
  v119 = v3[3];
  v120 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v119);
  sub_25B86AE00();
  v5 = v118;
  sub_25B9479A8();
  v121 = v5;
  v122 = v5;
  if (v5)
  {
    v50 = v122;
  }

  else
  {
    v137[31] = 0;
    sub_25B9476B8();
    v108 = 0;
    v109 = v6;
    v110 = 0;
    v103 = v6;
    v104 = v137;
    swift_beginAccess();
    *(v111 + 16) = v103;
    swift_endAccess();
    v7 = v108;
    v136[31] = 1;
    v8 = sub_25B9476E8();
    v105 = v7;
    v106 = v8;
    v107 = v7;
    if (v7)
    {
      v49 = v107;
      (*(v113 + 8))(v117, v112);
      v50 = v49;
    }

    else
    {
      v98 = v106;
      v99 = v136;
      swift_beginAccess();
      *(v111 + 24) = v98;
      swift_endAccess();
      v9 = v105;
      v135[31] = 2;
      v10 = sub_25B9476E8();
      v100 = v9;
      v101 = v10;
      v102 = v9;
      if (v9)
      {
        v48 = v102;
        (*(v113 + 8))(v117, v112);
        v50 = v48;
      }

      else
      {
        v92 = v101;
        v93 = v135;
        swift_beginAccess();
        *(v111 + 28) = v92;
        swift_endAccess();
        v11 = v100;
        v134 = 3;
        v12 = sub_25B947678();
        v94 = v11;
        v133 = v12;
        v95 = v12;
        v96 = BYTE4(v12);
        v97 = v11;
        if (v11)
        {
          v47 = v97;
          (*(v113 + 8))(v117, v112);
          v50 = v47;
        }

        else
        {
          v86 = v96;
          v85 = v95;
          v87 = &v132;
          swift_beginAccess();
          v13 = v86;
          v14 = v111;
          *(v111 + 32) = v85;
          *(v14 + 36) = v13 & 1;
          swift_endAccess();
          v15 = v94;
          v131 = 4;
          v16 = sub_25B947678();
          v88 = v15;
          v130 = v16;
          v89 = v16;
          v90 = BYTE4(v16);
          v91 = v15;
          if (v15)
          {
            v46 = v91;
            (*(v113 + 8))(v117, v112);
            v50 = v46;
          }

          else
          {
            v79 = v90;
            v78 = v89;
            v80 = &v129;
            swift_beginAccess();
            v17 = v79;
            v18 = v111;
            *(v111 + 40) = v78;
            *(v18 + 44) = v17 & 1;
            swift_endAccess();
            v19 = v88;
            v128 = 5;
            v20 = sub_25B947688();
            v81 = v19;
            v127[3] = v20;
            v82 = v20;
            v83 = BYTE4(v20);
            v84 = v19;
            if (v19)
            {
              v45 = v84;
              (*(v113 + 8))(v117, v112);
              v50 = v45;
            }

            else
            {
              v72 = v83;
              v71 = v82;
              v73 = v127;
              swift_beginAccess();
              v21 = v72;
              v22 = v111;
              *(v111 + 48) = v71;
              *(v22 + 52) = v21 & 1;
              swift_endAccess();
              v23 = v81;
              v126[31] = 6;
              v24 = sub_25B947668();
              v74 = v23;
              v75 = v24;
              v76 = v25;
              v77 = v23;
              if (v23)
              {
                v44 = v77;
                (*(v113 + 8))(v117, v112);
                v50 = v44;
              }

              else
              {
                v66 = v76;
                v65 = v75;
                v67 = v126;
                swift_beginAccess();
                v26 = v111;
                v27 = v66;
                v28 = *(v111 + 64);
                *(v111 + 56) = v65;
                *(v26 + 64) = v27;

                swift_endAccess();
                v29 = v74;
                v125[31] = 7;
                v30 = sub_25B9476A8();
                v68 = v29;
                v69 = v30;
                v70 = v29;
                if (v29)
                {
                  v43 = v70;
                  (*(v113 + 8))(v117, v112);
                  v50 = v43;
                }

                else
                {
                  v60 = v69;
                  v61 = v125;
                  swift_beginAccess();
                  *(v111 + 72) = v60 & 1;
                  swift_endAccess();
                  v31 = v68;
                  v124[31] = 8;
                  v32 = sub_25B9476A8();
                  v62 = v31;
                  v63 = v32;
                  v64 = v31;
                  if (v31)
                  {
                    v42 = v64;
                    (*(v113 + 8))(v117, v112);
                    v50 = v42;
                  }

                  else
                  {
                    v54 = v63;
                    v55 = v124;
                    swift_beginAccess();
                    *(v111 + 73) = v54 & 1;
                    swift_endAccess();
                    v33 = v62;
                    v123[31] = 9;
                    v34 = sub_25B947698();
                    v56 = v33;
                    v57 = v34;
                    v58 = v35;
                    v59 = v33;
                    if (!v33)
                    {
                      v52 = v58;
                      v51 = v57;
                      v53 = v123;
                      swift_beginAccess();
                      v36 = v52;
                      v37 = v111;
                      v38 = *(v111 + 88);
                      *(v111 + 80) = v51;
                      *(v37 + 88) = v36;

                      swift_endAccess();
                      (*(v113 + 8))(v117, v112);
                      __swift_destroy_boxed_opaque_existential_1(v116);
                      return v111;
                    }

                    v41 = v59;
                    (*(v113 + 8))(v117, v112);
                    v50 = v41;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v40[0] = v50;

  __swift_destroy_boxed_opaque_existential_1(v116);
  return v40[1];
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_25B86C32C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TraceRouteOptions.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t TracerouteRequest.options.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t *TracerouteRequest.init(hostname:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  type metadata accessor for TraceRouteOptions();
  v6 = TraceRouteOptions.__allocating_init()();

  v8 = v6;
  sub_25B869C80(a1, a2);

  sub_25B86C480(&v8, a3);
  return sub_25B86C4B8(&v8);
}

void *sub_25B86C480(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t *sub_25B86C4B8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

BOOL sub_25B86C4E4(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_25B946ED8();
  v7[0] = sub_25B946F48();
  v7[1] = v2;
  v6 = MEMORY[0x25F870E10](v7[0], v2, a1, a2);
  sub_25B86AEEC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_25B86C6A8()
{
  v2 = qword_27FBAAAC8;
  if (!qword_27FBAAAC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAC8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_25B86C7C8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B86C4E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B86C818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B86C5DC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_25B86C87C()
{
  v2 = qword_27FBAAAD0;
  if (!qword_27FBAAAD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t TracerouteRequest.encode(to:)(uint64_t a1)
{
  v5 = a1;
  v21 = 0;
  v20 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAAD8, &qword_25B9498E0);
  v6 = *(v13 - 8);
  v7 = v13 - 8;
  v8 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v4 - v8;
  v21 = MEMORY[0x28223BE20](v5);
  v12 = *v1;
  v20 = v1;
  v9 = v21[3];
  v10 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v9);
  sub_25B86C87C();
  sub_25B9479C8();

  v16 = &v19;
  v19 = v12;
  v14 = type metadata accessor for TraceRouteOptions();
  sub_25B86CB10();
  v2 = v15;
  sub_25B947778();
  v17 = v2;
  v18 = v2;
  if (v2)
  {
    v4[1] = v18;
  }

  return (*(v6 + 8))(v11, v13);
}

unint64_t sub_25B86CB10()
{
  v2 = qword_27FBAAAE0;
  if (!qword_27FBAAAE0)
  {
    type metadata accessor for TraceRouteOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *TracerouteRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v25 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAAE8, &qword_25B9498E8);
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v5 - v17;
  v25 = MEMORY[0x28223BE20](v13);
  v20 = v25[3];
  v21 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v20);
  sub_25B86C87C();
  v2 = v19;
  sub_25B9479A8();
  v22 = v2;
  v23 = v2;
  if (v2)
  {
    v7 = v23;
  }

  else
  {
    v9 = type metadata accessor for TraceRouteOptions();
    sub_25B86CDB4();
    v3 = v22;
    sub_25B9476D8();
    v10 = v3;
    v11 = v3;
    if (!v3)
    {
      v8 = &v26;
      v26 = v24;
      (*(v15 + 8))(v18, v14);
      sub_25B86C480(v8, v12);
      __swift_destroy_boxed_opaque_existential_1(v13);
      return sub_25B86C4B8(v8);
    }

    v6 = v11;
    (*(v15 + 8))(v18, v14);
    v7 = v6;
  }

  v5[1] = v7;
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_25B86CDB4()
{
  v2 = qword_27FBAAAF0;
  if (!qword_27FBAAAF0)
  {
    type metadata accessor for TraceRouteOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t TracerouteResponse.results.getter()
{
  v2 = *v0;
  sub_25B946ED8();
  return v2;
}

NetworkInfo::TracerouteResponse __swiftcall TracerouteResponse.init(results:)(Swift::OpaquePointer results)
{
  v3 = v1;
  rawValue = 0;
  sub_25B946ED8();
  rawValue = results._rawValue;
  sub_25B86CF68(&rawValue, v3);

  return sub_25B86CFA0(&rawValue);
}

void *sub_25B86CF68(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_25B946ED8();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t *sub_25B86CFA0(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

BOOL sub_25B86CFCC(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_25B946ED8();
  v7[0] = sub_25B946F48();
  v7[1] = v2;
  v6 = MEMORY[0x25F870E10](v7[0], v2, a1, a2);
  sub_25B86AEEC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_25B86D0FC()
{
  v2 = qword_27FBAAAF8;
  if (!qword_27FBAAAF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAAF8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_25B86D1DC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B86CFCC(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_25B86D240()
{
  v2 = qword_27FBAAB00;
  if (!qword_27FBAAB00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAB00);
    return WitnessTable;
  }

  return v2;
}

uint64_t TracerouteResponse.encode(to:)(uint64_t a1)
{
  v5 = a1;
  v21 = 0;
  v20 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB08, &unk_25B9498F0);
  v6 = *(v13 - 8);
  v7 = v13 - 8;
  v8 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v4 - v8;
  v21 = MEMORY[0x28223BE20](v5);
  v12 = *v1;
  v20 = v1;
  v9 = v21[3];
  v10 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v9);
  sub_25B86D240();
  sub_25B9479C8();
  sub_25B946ED8();
  v16 = &v19;
  v19 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
  sub_25B86D4E0();
  v2 = v15;
  sub_25B947778();
  v17 = v2;
  v18 = v2;
  if (v2)
  {
    v4[1] = v18;
  }

  sub_25B86CFA0(&v19);
  return (*(v6 + 8))(v11, v13);
}

unint64_t sub_25B86D4E0()
{
  v2 = qword_27FBAAB18;
  if (!qword_27FBAAB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAAB10, &unk_25B94B240);
    sub_25B86D5EC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAB18);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

unint64_t sub_25B86D5EC()
{
  v2 = qword_27FBAAB20;
  if (!qword_27FBAAB20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAB20);
    return WitnessTable;
  }

  return v2;
}

uint64_t *TracerouteResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v25 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB28, &qword_25B949900);
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v5 - v17;
  v25 = MEMORY[0x28223BE20](v13);
  v20 = v25[3];
  v21 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v20);
  sub_25B86D240();
  v2 = v19;
  sub_25B9479A8();
  v22 = v2;
  v23 = v2;
  if (v2)
  {
    v7 = v23;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
    sub_25B86D894();
    v3 = v22;
    sub_25B9476D8();
    v10 = v3;
    v11 = v3;
    if (!v3)
    {
      v8 = &v26;
      v26 = v24;
      (*(v15 + 8))(v18, v14);
      sub_25B86CF68(v8, v12);
      __swift_destroy_boxed_opaque_existential_1(v13);
      return sub_25B86CFA0(v8);
    }

    v6 = v11;
    (*(v15 + 8))(v18, v14);
    v7 = v6;
  }

  v5[1] = v7;
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_25B86D894()
{
  v2 = qword_27FBAAB30;
  if (!qword_27FBAAB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAAB10, &unk_25B94B240);
    sub_25B86D92C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B86D92C()
{
  v2 = qword_27FBAAB38;
  if (!qword_27FBAAB38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAB38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B86DA40()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB1118);
  __swift_project_value_buffer(v1, qword_27FBB1118);
  sub_25B946F48();
  sub_25B946F48();
  return sub_25B946C28();
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_25B86DBD8()
{
  if (qword_27FBAAA28 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB1118);
}

uint64_t sub_25B86DC44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B86DBD8();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

double static TraceRoute.defaultTimeout.getter()
{
  v1 = sub_25B86DCB4();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t static TraceRoute.defaultTimeout.setter(double a1)
{
  v2 = sub_25B86DCB4();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static TraceRoute.defaultTimeout.modify())()
{
  sub_25B86DCB4();
  swift_beginAccess();
  return sub_25B868A40;
}

double sub_25B86DDE4@<D0>(double *a1@<X8>)
{
  v2 = sub_25B86DCB4();
  swift_beginAccess();
  v4 = *v2;
  swift_endAccess();
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_25B86DE44(uint64_t *a1)
{
  v3 = *a1;
  v2 = sub_25B86DCB4();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t static TraceRoute.defaultCount.getter()
{
  v1 = sub_25B86DE9C();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t static TraceRoute.defaultCount.setter(int a1)
{
  v2 = sub_25B86DE9C();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static TraceRoute.defaultCount.modify())()
{
  sub_25B86DE9C();
  swift_beginAccess();
  return sub_25B868A40;
}

uint64_t sub_25B86DFCC@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_25B86DE9C();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_25B86E02C(int *a1)
{
  v3 = *a1;
  v2 = sub_25B86DE9C();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t static TraceRoute.defaultMaxTTL.getter()
{
  v1 = sub_25B86E084();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t static TraceRoute.defaultMaxTTL.setter(int a1)
{
  v2 = sub_25B86E084();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static TraceRoute.defaultMaxTTL.modify())()
{
  sub_25B86E084();
  swift_beginAccess();
  return sub_25B868A40;
}

uint64_t sub_25B86E1B4@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_25B86E084();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_25B86E214(int *a1)
{
  v3 = *a1;
  v2 = sub_25B86E084();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t static TraceRoute.defaultSkipNameResolution.getter()
{
  v1 = sub_25B86E26C();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t static TraceRoute.defaultSkipNameResolution.setter(char a1)
{
  v2 = sub_25B86E26C();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static TraceRoute.defaultSkipNameResolution.modify())()
{
  sub_25B86E26C();
  swift_beginAccess();
  return sub_25B868A40;
}

uint64_t sub_25B86E3A8@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_25B86E26C();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_25B86E408(char *a1)
{
  v3 = *a1;
  v2 = sub_25B86E26C();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t static TraceRoute.trace(domains:)(uint64_t a1)
{
  v2[7] = v1;
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v3 = sub_25B946C48();
  v2[8] = v3;
  v6 = *(v3 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;
  v4 = v2[2];

  return MEMORY[0x2822009F8](sub_25B86E594, 0);
}

uint64_t sub_25B86E594()
{
  v39 = v0;
  v1 = v0[11];
  v22 = v0[9];
  v23 = v0[8];
  v24 = v0[6];
  v0[2] = v0;
  v0[5] = sub_25B947838();
  v2 = sub_25B86DBD8();
  v3 = *(v22 + 16);
  v0[12] = v3;
  v0[13] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v23);
  sub_25B946ED8();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;

  v26 = swift_allocObject();
  *(v26 + 16) = sub_25B86F500;
  *(v26 + 24) = v25;

  v32 = sub_25B946C18();
  v33 = sub_25B947438();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_25B88983C;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_25B88B668;
  *(v30 + 24) = v27;
  v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  sub_25B947838();
  v31 = v4;

  *v31 = sub_25B88B5F4;
  v31[1] = v28;

  v31[2] = sub_25B88B5F4;
  v31[3] = v29;

  v31[4] = sub_25B88B6B4;
  v31[5] = v30;
  sub_25B8860FC();

  if (os_log_type_enabled(v32, v33))
  {
    buf = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v19 = sub_25B8895FC(0);
    v20 = sub_25B8895FC(1);
    v34 = buf;
    v35 = v19;
    v36 = v20;
    sub_25B889650(2, &v34);
    sub_25B889650(1, &v34);
    v37 = sub_25B88B5F4;
    v38 = v28;
    sub_25B889664(&v37, &v34, &v35, &v36);
    v37 = sub_25B88B5F4;
    v38 = v29;
    sub_25B889664(&v37, &v34, &v35, &v36);
    v37 = sub_25B88B6B4;
    v38 = v30;
    sub_25B889664(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_25B859000, v32, v33, "Starting traceroute of %s", buf, 0xCu);
    sub_25B8896B0(v19);
    sub_25B8896B0(v20);
    sub_25B9474B8();
  }

  else
  {
  }

  v21[15] = 0;
  v10 = v21[11];
  v11 = v21[8];
  v13 = v21[7];
  v12 = v21[6];
  v9 = v21[9];
  MEMORY[0x277D82BD8](v32);
  v5 = *(v9 + 8);
  v21[16] = v5;
  v21[17] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v10, v11);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB48, &qword_25B949930);
  sub_25B946ED8();
  v15 = swift_task_alloc();
  v21[18] = v15;
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = v21 + 5;
  v14 = MEMORY[0x277D84F78] + 8;
  sub_25B87140C(v16, MEMORY[0x277D84F78] + 8);
  v6 = *(MEMORY[0x277D858E8] + 4);
  v7 = swift_task_alloc();
  v21[19] = v7;
  *v7 = v21[2];
  v7[1] = sub_25B86ECF0;
  v41 = v14;

  return MEMORY[0x282200600](v17, v16);
}

uint64_t sub_25B86ECF0()
{
  v6 = *v0;
  v1 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 48);
  *(v6 + 16) = *v0;

  v2 = *(v6 + 16);

  return MEMORY[0x2822009F8](sub_25B86EE48, 0);
}

uint64_t sub_25B86EE48()
{
  v37 = v0;
  v29 = v0[14];
  v19 = v0[13];
  v20 = v0[12];
  v1 = v0[10];
  v18 = v0[8];
  v21 = v0[6];
  v0[2] = v0;
  v2 = sub_25B86DBD8();
  v20(v1, v2, v18);
  sub_25B946ED8();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;

  v23 = swift_allocObject();
  *(v23 + 16) = sub_25B86F500;
  *(v23 + 24) = v22;

  v30 = sub_25B946C18();
  v31 = sub_25B947438();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25B88983C;
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_25B88B668;
  *(v27 + 24) = v24;
  sub_25B947838();
  v28 = v3;

  *v28 = sub_25B88B5F4;
  v28[1] = v25;

  v28[2] = sub_25B88B5F4;
  v28[3] = v26;

  v28[4] = sub_25B88B6B4;
  v28[5] = v27;
  sub_25B8860FC();

  if (os_log_type_enabled(v30, v31))
  {
    v4 = v17[15];
    buf = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v15 = sub_25B8895FC(0);
    v16 = sub_25B8895FC(1);
    v32 = buf;
    v33 = v15;
    v34 = v16;
    sub_25B889650(2, &v32);
    sub_25B889650(1, &v32);
    v35 = sub_25B88B5F4;
    v36 = v25;
    sub_25B889664(&v35, &v32, &v33, &v34);
    if (v4)
    {
    }

    v35 = sub_25B88B5F4;
    v36 = v26;
    sub_25B889664(&v35, &v32, &v33, &v34);
    v35 = sub_25B88B6B4;
    v36 = v27;
    sub_25B889664(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_25B859000, v30, v31, "Completed traceroute of %s", buf, 0xCu);
    sub_25B8896B0(v15);
    sub_25B8896B0(v16);
    sub_25B9474B8();
  }

  else
  {
  }

  v9 = v17[17];
  v10 = v17[16];
  v11 = v17[11];
  v12 = v17[10];
  v8 = v17[8];
  MEMORY[0x277D82BD8](v30);
  v10(v12, v8);
  v13 = v17[5];
  sub_25B946ED8();
  sub_25B86CFA0(v17 + 5);

  v6 = *(v17[2] + 8);
  v7 = v17[2];

  return v6(v13);
}

uint64_t sub_25B86F48C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25B946ED8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_25B86F4C0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_25B86F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a5;
  v5[33] = a4;
  v5[32] = a3;
  v5[31] = a2;
  v5[20] = v5;
  v5[21] = 0;
  v5[22] = 0;
  v5[23] = 0;
  v5[24] = 0;
  v5[14] = 0;
  v5[15] = 0;
  v5[27] = 0;
  v5[28] = 0;
  v5[18] = 0;
  v5[19] = 0;
  v5[30] = 0;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB180, &qword_25B94AF00) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC70, &qword_25B94A5C0);
  v5[36] = v7;
  v11 = *(v7 - 8);
  v5[37] = v11;
  v8 = *(v11 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[21] = a2;
  v5[22] = a3;
  v5[23] = a4;
  v5[24] = a5;
  v9 = v5[20];

  return MEMORY[0x2822009F8](sub_25B86F6C0, 0);
}

uint64_t sub_25B86F6C0()
{
  v29 = v0[32];
  v0[20] = v0;
  sub_25B946ED8();
  v0[25] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
  sub_25B89906C();
  sub_25B947418();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC80, &qword_25B94A5C8);
    sub_25B9475E8();
    v26 = v28[16];
    v27 = v28[17];
    if (!v27)
    {
      break;
    }

    v24 = v28[35];
    v22 = v28[33];
    v19 = v28[31];
    v28[18] = v26;
    v28[19] = v27;
    type metadata accessor for TraceRouteOptions();
    v25 = TraceRouteOptions.__allocating_init()();
    v28[30] = v25;
    v10 = sub_25B86DCB4();
    swift_beginAccess();
    v11 = *v10;
    swift_endAccess();
    sub_25B86897C(v11);
    v12 = sub_25B86DE9C();
    swift_beginAccess();
    v13 = *v12;
    swift_endAccess();
    sub_25B868B8C(v13);
    v14 = sub_25B86E084();
    swift_beginAccess();
    v15 = *v14;
    swift_endAccess();
    sub_25B868D5C(v15);
    v16 = sub_25B86E26C();
    swift_beginAccess();
    v17 = *v16;
    swift_endAccess();
    sub_25B869894(v17 & 1);
    sub_25B946ED8();
    sub_25B869C80(v26, v27);
    v20 = sub_25B9472A8();
    v21 = *(*(v20 - 8) + 56);
    v21(v24, 1);
    sub_25B946ED8();

    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v22;
    v18[5] = v26;
    v18[6] = v27;
    v18[7] = v25;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC90, &qword_25B94A5E0);
    sub_25B8A5420(v24, &unk_25B94A5D8, v18, v23);
    sub_25B8992C8(v24);
    (v21)(v24, 1, 1, v20);

    v1 = swift_allocObject();
    v1[2] = 0;
    v1[3] = 0;
    v1[4] = v22;
    v1[5] = v26;
    v1[6] = v27;
    v1[7] = v25;
    sub_25B8A5420(v24, &unk_25B94A5F0, v1, v23);
    sub_25B8992C8(v24);
  }

  v8 = v28[38];
  v7 = v28[31];
  sub_25B86CFA0(v28 + 14);
  v9 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB48, &qword_25B949930);
  sub_25B947278();
  v2 = *(MEMORY[0x277D856B0] + 4);
  v3 = swift_task_alloc();
  v28[39] = v3;
  *v3 = v28[20];
  v3[1] = sub_25B86FBE8;
  v4 = v28[38];
  v5 = v28[36];

  return MEMORY[0x2822002E8](v28 + 26, 0, 0, v5);
}

uint64_t sub_25B86FBE8()
{
  v4 = *v0;
  v1 = *(*v0 + 312);
  *(v4 + 160) = *v0;

  v2 = *(v4 + 160);

  return MEMORY[0x2822009F8](sub_25B86FD00, 0);
}

uint64_t sub_25B86FD00()
{
  *(v0 + 160) = v0;
  v13 = *(v0 + 208);
  if (v13 == 1)
  {
    v10 = v12[38];
    v1 = v12[36];
    v11 = v12[35];
    (*(v12[37] + 8))();

    v2 = *(v12[20] + 8);
    v3 = v12[20];

    return v2();
  }

  else
  {
    v12[27] = v13;
    sub_25B946ED8();
    if (v13)
    {
      v5 = v12[34];
      v12[28] = v13;
      sub_25B946ED8();
      v12[29] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
      sub_25B8990F4();
      sub_25B9471F8();
    }

    v6 = *(MEMORY[0x277D856B0] + 4);
    v7 = swift_task_alloc();
    v12[39] = v7;
    *v7 = v12[20];
    v7[1] = sub_25B86FBE8;
    v8 = v12[38];
    v9 = v12[36];

    return MEMORY[0x2822002E8](v12 + 26, 0, 0, v9);
  }
}

uint64_t sub_25B86FF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a7;
  v7[17] = a6;
  v7[16] = a5;
  v7[15] = a1;
  v7[9] = v7;
  v7[10] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v7[11] = 0;
  v7[12] = 0;
  v7[13] = 0;
  v8 = sub_25B946C48();
  v7[19] = v8;
  v12 = *(v8 - 8);
  v7[20] = v12;
  v9 = *(v12 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[10] = a4;
  v7[7] = a5;
  v7[8] = a6;
  v7[11] = a7;
  v10 = v7[9];

  return MEMORY[0x2822009F8](sub_25B8700E0, 0);
}

uint64_t sub_25B8700E0()
{
  v37 = v0;
  v1 = v0[21];
  v19 = v0[20];
  v20 = v0[19];
  v22 = v0[17];
  v21 = v0[16];
  v0[9] = v0;
  v2 = sub_25B86DBD8();
  (*(v19 + 16))(v1, v2, v20);
  sub_25B946ED8();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  v29 = sub_25B946C18();
  v30 = sub_25B947438();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25B8994FC;
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_25B88B668;
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  sub_25B947838();
  v28 = v3;

  *v28 = sub_25B88B5F4;
  v28[1] = v25;

  v28[2] = sub_25B88B5F4;
  v28[3] = v26;

  v28[4] = sub_25B88B6B4;
  v28[5] = v27;
  sub_25B8860FC();

  if (os_log_type_enabled(v29, v30))
  {
    buf = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v16 = sub_25B8895FC(0);
    v17 = sub_25B8895FC(1);
    v32 = buf;
    v33 = v16;
    v34 = v17;
    sub_25B889650(2, &v32);
    sub_25B889650(1, &v32);
    v35 = sub_25B88B5F4;
    v36 = v25;
    sub_25B889664(&v35, &v32, &v33, &v34);
    v35 = sub_25B88B5F4;
    v36 = v26;
    sub_25B889664(&v35, &v32, &v33, &v34);
    v35 = sub_25B88B6B4;
    v36 = v27;
    sub_25B889664(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_25B859000, v29, v30, "Starting traceroute4 of %s", buf, 0xCu);
    sub_25B8896B0(v16);
    sub_25B8896B0(v17);
    sub_25B9474B8();
  }

  else
  {
  }

  v12 = v18[21];
  v13 = v18[19];
  v14 = v18[18];
  v11 = v18[20];
  MEMORY[0x277D82BD8](v29);
  (*(v11 + 8))(v12, v13);
  type metadata accessor for TraceRoute4();

  v18[12] = TraceRoute4.__allocating_init(options:)(v14);
  v31[3] = type metadata accessor for JSONTracerouteDelegate();
  v31[4] = &protocol witness table for JSONTracerouteDelegate;
  v31[0] = JSONTracerouteDelegate.__allocating_init()();
  sub_25B871684(v31);
  sub_25B883650(sub_25B8709DC);
  sub_25B871628(v18 + 2);
  if (v18[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC98, &qword_25B94A5F8);
    if (swift_dynamicCast())
    {
      v9 = v18[14];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    sub_25B88BBA0(v18 + 2);
    v10 = 0;
  }

  if (v10)
  {
    v8 = v18[15];
    v18[13] = v10;
    *v8 = sub_25B94194C();
  }

  else
  {
    *v18[15] = 0;
  }

  v4 = v18[21];

  v5 = *(v18[9] + 8);
  v6 = v18[9];

  return v5();
}

uint64_t sub_25B8709F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a7;
  v7[17] = a6;
  v7[16] = a5;
  v7[15] = a1;
  v7[9] = v7;
  v7[10] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v7[11] = 0;
  v7[12] = 0;
  v7[13] = 0;
  v8 = sub_25B946C48();
  v7[19] = v8;
  v12 = *(v8 - 8);
  v7[20] = v12;
  v9 = *(v12 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[10] = a4;
  v7[7] = a5;
  v7[8] = a6;
  v7[11] = a7;
  v10 = v7[9];

  return MEMORY[0x2822009F8](sub_25B870B44, 0);
}

uint64_t sub_25B870B44()
{
  v37 = v0;
  v1 = v0[21];
  v19 = v0[20];
  v20 = v0[19];
  v22 = v0[17];
  v21 = v0[16];
  v0[9] = v0;
  v2 = sub_25B86DBD8();
  (*(v19 + 16))(v1, v2, v20);
  sub_25B946ED8();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  v29 = sub_25B946C18();
  v30 = sub_25B947438();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25B8994FC;
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_25B88B668;
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  sub_25B947838();
  v28 = v3;

  *v28 = sub_25B88B5F4;
  v28[1] = v25;

  v28[2] = sub_25B88B5F4;
  v28[3] = v26;

  v28[4] = sub_25B88B6B4;
  v28[5] = v27;
  sub_25B8860FC();

  if (os_log_type_enabled(v29, v30))
  {
    buf = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v16 = sub_25B8895FC(0);
    v17 = sub_25B8895FC(1);
    v32 = buf;
    v33 = v16;
    v34 = v17;
    sub_25B889650(2, &v32);
    sub_25B889650(1, &v32);
    v35 = sub_25B88B5F4;
    v36 = v25;
    sub_25B889664(&v35, &v32, &v33, &v34);
    v35 = sub_25B88B5F4;
    v36 = v26;
    sub_25B889664(&v35, &v32, &v33, &v34);
    v35 = sub_25B88B6B4;
    v36 = v27;
    sub_25B889664(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_25B859000, v29, v30, "Starting traceroute6 of %s", buf, 0xCu);
    sub_25B8896B0(v16);
    sub_25B8896B0(v17);
    sub_25B9474B8();
  }

  else
  {
  }

  v12 = v18[21];
  v13 = v18[19];
  v14 = v18[18];
  v11 = v18[20];
  MEMORY[0x277D82BD8](v29);
  (*(v11 + 8))(v12, v13);
  type metadata accessor for TraceRoute6();

  v18[12] = TraceRoute6.__allocating_init(options:)(v14);
  v31[3] = type metadata accessor for JSONTracerouteDelegate();
  v31[4] = &protocol witness table for JSONTracerouteDelegate;
  v31[0] = JSONTracerouteDelegate.__allocating_init()();
  sub_25B871684(v31);
  sub_25B882480(sub_25B8709DC);
  sub_25B871628(v18 + 2);
  if (v18[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC98, &qword_25B94A5F8);
    if (swift_dynamicCast())
    {
      v9 = v18[14];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    sub_25B88BBA0(v18 + 2);
    v10 = 0;
  }

  if (v10)
  {
    v8 = v18[15];
    v18[13] = v10;
    *v8 = sub_25B94194C();
  }

  else
  {
    *v18[15] = 0;
  }

  v4 = v18[21];

  v5 = *(v18[9] + 8);
  v6 = v18[9];

  return v5();
}

id TraceRoute.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for TraceRoute();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0]();
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id TraceRoute.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TraceRoute();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B871558@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  v5[5] = v3;
  sub_25B871628(v5);
  memcpy(a2, v5, 0x28uLL);
}

uint64_t sub_25B8715C4(void *a1, uint64_t *a2)
{
  sub_25B88BA48(a1, v5);
  v4 = *a2;

  sub_25B871684(v5);
}

uint64_t sub_25B871628@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  sub_25B88BA48((v1 + 16), a1);
  return swift_endAccess();
}

uint64_t *sub_25B871684(uint64_t *a1)
{
  v4[5] = 0;
  v4[6] = a1;
  sub_25B88BA48(a1, v4);
  swift_beginAccess();
  sub_25B88BADC(v4, (v1 + 16));
  swift_endAccess();
  return sub_25B88BBA0(a1);
}

uint64_t sub_25B871700()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B871758(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_endAccess();
}

uint64_t sub_25B8717B8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  sub_25B88BA48((v1 + 64), a1);
  return swift_endAccess();
}

uint64_t *sub_25B871814(uint64_t *a1)
{
  v4[5] = 0;
  v4[6] = a1;
  sub_25B88BA48(a1, v4);
  swift_beginAccess();
  sub_25B88BADC(v4, (v1 + 64));
  swift_endAccess();
  return sub_25B88BBA0(a1);
}

uint64_t sub_25B8718F4()
{
  swift_beginAccess();
  v2 = *(v0 + 104);
  sub_25B946ED8();
  swift_endAccess();
  return v2;
}

uint64_t sub_25B871950(uint64_t a1)
{
  sub_25B946ED8();
  swift_beginAccess();
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;

  swift_endAccess();
}

uint64_t sub_25B871A2C()
{
  swift_beginAccess();
  v2 = *(v0 + 112);

  swift_endAccess();
  return v2;
}

uint64_t sub_25B871A88(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;

  swift_endAccess();
}

uint64_t TraceRoute6.init(options:)(uint64_t a1)
{
  v10 = a1;
  v9 = v1;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[8] = 0;
  v1[9] = 0;
  v1[10] = 0;
  v1[11] = 0;
  v1[12] = 0;
  type metadata accessor for TraceRouteResult();
  v1[13] = sub_25B947838();
  v1[14] = 0;
  type metadata accessor for traceroute6_context_t();
  v1[7] = sub_25B9474D8();

  v8[3] = type metadata accessor for TraceRoute6();
  v8[4] = &protocol witness table for TraceRoute6;
  v8[0] = v1;
  swift_beginAccess();
  sub_25B88BADC(v8, v1 + 8);
  swift_endAccess();
  swift_beginAccess();
  v6 = v1[7];
  swift_endAccess();
  traceroute6_context_init(v6);

  if (a1)
  {

    swift_beginAccess();
    v2 = *(v5 + 112);
    *(v5 + 112) = a1;

    swift_endAccess();
    sub_25B881B50(a1);
  }

  swift_beginAccess();
  v4 = *(v5 + 56);
  swift_endAccess();
  traceroute4_set_result_callback(v4, v5, sub_25B8819CC);

  return v5;
}

uint64_t sub_25B871D8C(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v29 = a1;
  v28 = a2;
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    sub_25B947618();
    __break(1u);
  }

  v27 = v13;
  v24 = sub_25B871A2C();
  if (v24)
  {

    sub_25B86C4B8(&v24);
    v9 = sub_25B869C18();
    v10 = v2;

    v11 = v9;
    v12 = v10;
  }

  else
  {
    sub_25B86C4B8(&v24);
    v11 = 0;
    v12 = 0;
  }

  v22 = v11;
  v23 = v12;
  if (v12)
  {
    v25 = v22;
    v26 = v23;
  }

  else
  {
    v25 = sub_25B946F48();
    v26 = v3;
  }

  v20 = v25;
  v21 = v26;
  type metadata accessor for TraceRouteResult();
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    sub_25B947618();
    __break(1u);
  }

  v7 = sub_25B872094(v8);
  v19 = v7;
  sub_25B8717B8(v15);
  if (v15[3])
  {
    sub_25B899030(v15, __dst);
    v5 = v17;
    v6 = v18;
    __swift_project_boxed_opaque_existential_1(__dst, v17);
    (*(v6 + 8))(v7, v5);
    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    sub_25B88BBA0(v15);
  }
}

uint64_t sub_25B872094(uint64_t a1)
{
  v12 = MEMORY[0x28223BE20](a1);
  v9 = v2;
  v10 = v3;
  v828 = v12;
  v826 = v2;
  v827 = v3;
  v825 = v1;
  type metadata accessor for TraceRouteResult();
  v11 = TraceRouteResult.__allocating_init()();
  v824 = v11;
  sub_25B946ED8();
  sub_25B884534(v9, v10);
  sub_25B883804(*v12);
  sub_25B883970(*(v12 + 4));
  sub_25B868B8C(*(v12 + 8));
  sub_25B868D5C(*(v12 + 12));
  sub_25B883B40(*(v12 + 16));
  sub_25B883CAC(*(v12 + 20));
  v4 = *(v12 + 32);
  sub_25B947368();
  sub_25B883E78(v5);
  sub_25B884390(*(v12 + 40) & 1);
  memcpy(v829, (v12 + 1201), sizeof(v829));
  v830 = 0;
  v43[0] = v829[0];
  v43[1] = v829[1];
  v43[2] = v829[2];
  v43[3] = v829[3];
  v43[4] = v829[4];
  v43[5] = v829[5];
  v43[6] = v829[6];
  v43[7] = v829[7];
  v43[8] = v829[8];
  v43[9] = v829[9];
  v43[10] = v829[10];
  v43[11] = v829[11];
  v43[12] = v829[12];
  v43[13] = v829[13];
  v43[14] = v829[14];
  v43[15] = v829[15];
  v43[16] = v829[16];
  v43[17] = v829[17];
  v43[18] = v829[18];
  v43[19] = v829[19];
  v43[20] = v829[20];
  v43[21] = v829[21];
  v43[22] = v829[22];
  v43[23] = v829[23];
  v43[24] = v829[24];
  v43[25] = v829[25];
  v43[26] = v829[26];
  v43[27] = v829[27];
  v43[28] = v829[28];
  v43[29] = v829[29];
  v43[30] = v829[30];
  v43[31] = v829[31];
  v43[32] = v829[32];
  v43[33] = v829[33];
  v43[34] = v829[34];
  v43[35] = v829[35];
  v43[36] = v829[36];
  v43[37] = v829[37];
  v43[38] = v829[38];
  v43[39] = v829[39];
  v43[40] = v829[40];
  v43[41] = v829[41];
  v43[42] = v829[42];
  v43[43] = v829[43];
  v43[44] = v829[44];
  v43[45] = v829[45];
  v43[46] = v829[46];
  v43[47] = v829[47];
  v43[48] = v829[48];
  v43[49] = v829[49];
  v43[50] = v829[50];
  v43[51] = v829[51];
  v43[52] = v829[52];
  v43[53] = v829[53];
  v43[54] = v829[54];
  v43[55] = v829[55];
  v43[56] = v829[56];
  v43[57] = v829[57];
  v43[58] = v829[58];
  v43[59] = v829[59];
  v43[60] = v829[60];
  v43[61] = v829[61];
  v43[62] = v829[62];
  v43[63] = v829[63];
  v43[64] = v829[64];
  v43[65] = v829[65];
  v43[66] = v829[66];
  v43[67] = v829[67];
  v43[68] = v829[68];
  v43[69] = v829[69];
  v43[70] = v829[70];
  v43[71] = v829[71];
  v43[72] = v829[72];
  v43[73] = v829[73];
  v43[74] = v829[74];
  v43[75] = v829[75];
  v43[76] = v829[76];
  v43[77] = v829[77];
  v43[78] = v829[78];
  v43[79] = v829[79];
  v43[80] = v829[80];
  v43[81] = v829[81];
  v43[82] = v829[82];
  v43[83] = v829[83];
  v43[84] = v829[84];
  v43[85] = v829[85];
  v43[86] = v829[86];
  v43[87] = v829[87];
  v43[88] = v829[88];
  v43[89] = v829[89];
  v43[90] = v829[90];
  v43[91] = v829[91];
  v43[92] = v829[92];
  v43[93] = v829[93];
  v43[94] = v829[94];
  v43[95] = v829[95];
  v43[96] = v829[96];
  v43[97] = v829[97];
  v43[98] = v829[98];
  v43[99] = v829[99];
  v43[100] = v829[100];
  v43[101] = v829[101];
  v43[102] = v829[102];
  v43[103] = v829[103];
  v43[104] = v829[104];
  v43[105] = v829[105];
  v43[106] = v829[106];
  v43[107] = v829[107];
  v43[108] = v829[108];
  v43[109] = v829[109];
  v43[110] = v829[110];
  v43[111] = v829[111];
  v43[112] = v829[112];
  v43[113] = v829[113];
  v43[114] = v829[114];
  v43[115] = v829[115];
  v43[116] = v829[116];
  v43[117] = v829[117];
  v43[118] = v829[118];
  v43[119] = v829[119];
  v43[120] = v829[120];
  v43[121] = v829[121];
  v43[122] = v829[122];
  v43[123] = v829[123];
  v43[124] = v829[124];
  v43[125] = v829[125];
  v43[126] = v829[126];
  v43[127] = v829[127];
  v43[128] = v829[128];
  v43[129] = v829[129];
  v43[130] = v829[130];
  v43[131] = v829[131];
  v43[132] = v829[132];
  v43[133] = v829[133];
  v43[134] = v829[134];
  v43[135] = v829[135];
  v43[136] = v829[136];
  v43[137] = v829[137];
  v43[138] = v829[138];
  v43[139] = v829[139];
  v43[140] = v829[140];
  v43[141] = v829[141];
  v43[142] = v829[142];
  v43[143] = v829[143];
  v43[144] = v829[144];
  v43[145] = v829[145];
  v43[146] = v829[146];
  v43[147] = v829[147];
  v43[148] = v829[148];
  v43[149] = v829[149];
  v43[150] = v829[150];
  v43[151] = v829[151];
  v43[152] = v829[152];
  v43[153] = v829[153];
  v43[154] = v829[154];
  v43[155] = v829[155];
  v43[156] = v829[156];
  v43[157] = v829[157];
  v43[158] = v829[158];
  v43[159] = v829[159];
  v43[160] = v829[160];
  v43[161] = v829[161];
  v43[162] = v829[162];
  v43[163] = v829[163];
  v43[164] = v829[164];
  v43[165] = v829[165];
  v43[166] = v829[166];
  v43[167] = v829[167];
  v43[168] = v829[168];
  v43[169] = v829[169];
  v43[170] = v829[170];
  v43[171] = v829[171];
  v43[172] = v829[172];
  v43[173] = v829[173];
  v43[174] = v829[174];
  v43[175] = v829[175];
  v43[176] = v829[176];
  v43[177] = v829[177];
  v43[178] = v829[178];
  v43[179] = v829[179];
  v43[180] = v829[180];
  v43[181] = v829[181];
  v43[182] = v829[182];
  v43[183] = v829[183];
  v43[184] = v829[184];
  v43[185] = v829[185];
  v43[186] = v829[186];
  v43[187] = v829[187];
  v43[188] = v829[188];
  v43[189] = v829[189];
  v43[190] = v829[190];
  v43[191] = v829[191];
  v43[192] = v829[192];
  v43[193] = v829[193];
  v43[194] = v829[194];
  v43[195] = v829[195];
  v43[196] = v829[196];
  v43[197] = v829[197];
  v43[198] = v829[198];
  v43[199] = v829[199];
  v43[200] = v829[200];
  v43[201] = v829[201];
  v43[202] = v829[202];
  v43[203] = v829[203];
  v43[204] = v829[204];
  v43[205] = v829[205];
  v43[206] = v829[206];
  v43[207] = v829[207];
  v43[208] = v829[208];
  v43[209] = v829[209];
  v43[210] = v829[210];
  v43[211] = v829[211];
  v43[212] = v829[212];
  v43[213] = v829[213];
  v43[214] = v829[214];
  v43[215] = v829[215];
  v43[216] = v829[216];
  v43[217] = v829[217];
  v43[218] = v829[218];
  v43[219] = v829[219];
  v43[220] = v829[220];
  v43[221] = v829[221];
  v43[222] = v829[222];
  v43[223] = v829[223];
  v43[224] = v829[224];
  v43[225] = v829[225];
  v43[226] = v829[226];
  v43[227] = v829[227];
  v43[228] = v829[228];
  v43[229] = v829[229];
  v43[230] = v829[230];
  v43[231] = v829[231];
  v43[232] = v829[232];
  v43[233] = v829[233];
  v43[234] = v829[234];
  v43[235] = v829[235];
  v43[236] = v829[236];
  v43[237] = v829[237];
  v43[238] = v829[238];
  v43[239] = v829[239];
  v43[240] = v829[240];
  v43[241] = v829[241];
  v43[242] = v829[242];
  v43[243] = v829[243];
  v44 = *&v829[244];
  v45 = v829[246];
  v46 = v829[247];
  v47 = v829[248];
  v48 = v829[249];
  v49 = v829[250];
  v50 = v829[251];
  v51 = v829[252];
  v52 = v829[253];
  v53 = v829[254];
  v54 = v829[255];
  v55 = v829[256];
  v56 = v829[257];
  v57 = v829[258];
  v58 = v829[259];
  v59 = v829[260];
  v60 = v829[261];
  v61 = v829[262];
  v62 = v829[263];
  v63 = v829[264];
  v64 = v829[265];
  v65 = v829[266];
  v66 = v829[267];
  v67 = v829[268];
  v68 = v829[269];
  v69 = v829[270];
  v70 = v829[271];
  v71 = v829[272];
  v72 = v829[273];
  v73 = v829[274];
  v74 = v829[275];
  v75 = v829[276];
  v76 = v829[277];
  v77 = v829[278];
  v78 = v829[279];
  v79 = v829[280];
  v80 = v829[281];
  v81 = v829[282];
  v82 = v829[283];
  v83 = v829[284];
  v84 = v829[285];
  v85 = v829[286];
  v86 = v829[287];
  v87 = v829[288];
  v88 = v829[289];
  v89 = v829[290];
  v90 = v829[291];
  v91 = v829[292];
  v92 = v829[293];
  v93 = v829[294];
  v94 = v829[295];
  v95 = v829[296];
  v96 = v829[297];
  v97 = v829[298];
  v98 = v829[299];
  v99 = v829[300];
  v100 = v829[301];
  v101 = v829[302];
  v102 = v829[303];
  v103 = v829[304];
  v104 = v829[305];
  v105 = v829[306];
  v106 = v829[307];
  v107 = v829[308];
  v108 = v829[309];
  v109 = v829[310];
  v110 = v829[311];
  v111 = v829[312];
  v112 = v829[313];
  v113 = v829[314];
  v114 = v829[315];
  v115 = v829[316];
  v116 = v829[317];
  v117 = v829[318];
  v118 = v829[319];
  v119 = v829[320];
  v120 = v829[321];
  v121 = v829[322];
  v122 = v829[323];
  v123 = v829[324];
  v124 = v829[325];
  v125 = v829[326];
  v126 = v829[327];
  v127 = v829[328];
  v128 = v829[329];
  v129 = v829[330];
  v130 = v829[331];
  v131 = v829[332];
  v132 = v829[333];
  v133 = v829[334];
  v134 = v829[335];
  v135 = v829[336];
  v136 = v829[337];
  v137 = v829[338];
  v138 = v829[339];
  v139 = v829[340];
  v140 = v829[341];
  v141 = v829[342];
  v142 = v829[343];
  v143 = v829[344];
  v144 = v829[345];
  v145 = v829[346];
  v146 = v829[347];
  v147 = v829[348];
  v148 = v829[349];
  v149 = v829[350];
  v150 = v829[351];
  v151 = v829[352];
  v152 = v829[353];
  v153 = v829[354];
  v154 = v829[355];
  v155 = v829[356];
  v156 = v829[357];
  v157 = v829[358];
  v158 = v829[359];
  v159 = v829[360];
  v160 = v829[361];
  v161 = v829[362];
  v162 = v829[363];
  v163 = v829[364];
  v164 = v829[365];
  v165 = v829[366];
  v166 = v829[367];
  v167 = v829[368];
  v168 = v829[369];
  v169 = v829[370];
  v170 = v829[371];
  v171 = v829[372];
  v172 = v829[373];
  v173 = v829[374];
  v174 = v829[375];
  v175 = v829[376];
  v176 = v829[377];
  v177 = v829[378];
  v178 = v829[379];
  v179 = v829[380];
  v180 = v829[381];
  v181 = v829[382];
  v182 = v829[383];
  v183 = v829[384];
  v184 = v829[385];
  v185 = v829[386];
  v186 = v829[387];
  v187 = v829[388];
  v188 = v829[389];
  v189 = v829[390];
  v190 = v829[391];
  v191 = v829[392];
  v192 = v829[393];
  v193 = v829[394];
  v194 = v829[395];
  v195 = v829[396];
  v196 = v829[397];
  v197 = v829[398];
  v198 = v829[399];
  v199 = v829[400];
  v200 = v829[401];
  v201 = v829[402];
  v202 = v829[403];
  v203 = v829[404];
  v204 = v829[405];
  v205 = v829[406];
  v206 = v829[407];
  v207 = v829[408];
  v208 = v829[409];
  v209 = v829[410];
  v210 = v829[411];
  v211 = v829[412];
  v212 = v829[413];
  v213 = v829[414];
  v214 = v829[415];
  v215 = v829[416];
  v216 = v829[417];
  v217 = v829[418];
  v218 = v829[419];
  v219 = v829[420];
  v220 = v829[421];
  v221 = v829[422];
  v222 = v829[423];
  v223 = v829[424];
  v224 = v829[425];
  v225 = v829[426];
  v226 = v829[427];
  v227 = v829[428];
  v228 = v829[429];
  v229 = v829[430];
  v230 = v829[431];
  v231 = v829[432];
  v232 = v829[433];
  v233 = v829[434];
  v234 = v829[435];
  v235 = v829[436];
  v236 = v829[437];
  v237 = v829[438];
  v238 = v829[439];
  v239 = v829[440];
  v240 = v829[441];
  v241 = v829[442];
  v242 = v829[443];
  v243 = v829[444];
  v244 = v829[445];
  v245 = v829[446];
  v246 = v829[447];
  v247 = v829[448];
  v248 = v829[449];
  v249 = v829[450];
  v250 = v829[451];
  v251 = v829[452];
  v252 = v829[453];
  v253 = v829[454];
  v254 = v829[455];
  v255 = v829[456];
  v256 = v829[457];
  v257 = v829[458];
  v258 = v829[459];
  v259 = v829[460];
  v260 = v829[461];
  v261 = v829[462];
  v262 = v829[463];
  v263 = v829[464];
  v264 = v829[465];
  v265 = v829[466];
  v266 = v829[467];
  v267 = v829[468];
  v268 = v829[469];
  v269 = v829[470];
  v270 = v829[471];
  v271 = v829[472];
  v272 = v829[473];
  v273 = v829[474];
  v274 = v829[475];
  v275 = v829[476];
  v276 = v829[477];
  v277 = v829[478];
  v278 = v829[479];
  v279 = v829[480];
  v280 = v829[481];
  v281 = v829[482];
  v282 = v829[483];
  v283 = v829[484];
  v284 = v829[485];
  v285 = v829[486];
  v286 = v829[487];
  v287 = v829[488];
  v288 = v829[489];
  v289 = v829[490];
  v290 = v829[491];
  v291 = v829[492];
  v292 = v829[493];
  v293 = v829[494];
  v294 = v829[495];
  v295 = v829[496];
  v296 = v829[497];
  v297 = v829[498];
  v298 = v829[499];
  v299 = v829[500];
  v300 = v829[501];
  v301 = v829[502];
  v302 = v829[503];
  v303 = v829[504];
  v304 = v829[505];
  v305 = v829[506];
  v306 = v829[507];
  v307 = v829[508];
  v308 = v829[509];
  v309 = v829[510];
  v310 = v829[511];
  v311 = v829[512];
  v312 = v829[513];
  v313 = v829[514];
  v314 = v829[515];
  v315 = v829[516];
  v316 = v829[517];
  v317 = v829[518];
  v318 = v829[519];
  v319 = v829[520];
  v320 = v829[521];
  v321 = v829[522];
  v322 = v829[523];
  v323 = v829[524];
  v324 = v829[525];
  v325 = v829[526];
  v326 = v829[527];
  v327 = v829[528];
  v328 = v829[529];
  v329 = v829[530];
  v330 = v829[531];
  v331 = v829[532];
  v332 = v829[533];
  v333 = v829[534];
  v334 = v829[535];
  v335 = v829[536];
  v336 = v829[537];
  v337 = v829[538];
  v338 = v829[539];
  v339 = v829[540];
  v340 = v829[541];
  v341 = v829[542];
  v342 = v829[543];
  v343 = v829[544];
  v344 = v829[545];
  v345 = v829[546];
  v346 = v829[547];
  v347 = v829[548];
  v348 = v829[549];
  v349 = v829[550];
  v350 = v829[551];
  v351 = v829[552];
  v352 = v829[553];
  v353 = v829[554];
  v354 = v829[555];
  v355 = v829[556];
  v356 = v829[557];
  v357 = v829[558];
  v358 = v829[559];
  v359 = v829[560];
  v360 = v829[561];
  v361 = v829[562];
  v362 = v829[563];
  v363 = v829[564];
  v364 = v829[565];
  v365 = v829[566];
  v366 = v829[567];
  v367 = v829[568];
  v368 = v829[569];
  v369 = v829[570];
  v370 = v829[571];
  v371 = v829[572];
  v372 = v829[573];
  v373 = v829[574];
  v374 = v829[575];
  v375 = v829[576];
  v376 = v829[577];
  v377 = v829[578];
  v378 = v829[579];
  v379 = v829[580];
  v380 = v829[581];
  v381 = v829[582];
  v382 = v829[583];
  v383 = v829[584];
  v384 = v829[585];
  v385 = v829[586];
  v386 = v829[587];
  v387 = v829[588];
  v388 = v829[589];
  v389 = v829[590];
  v390 = v829[591];
  v391 = v829[592];
  v392 = v829[593];
  v393 = v829[594];
  v394 = v829[595];
  v395 = v829[596];
  v396 = v829[597];
  v397 = v829[598];
  v398 = v829[599];
  v399 = v829[600];
  v400 = v829[601];
  v401 = v829[602];
  v402 = v829[603];
  v403 = v829[604];
  v404 = v829[605];
  v405 = v829[606];
  v406 = v829[607];
  v407 = v829[608];
  v408 = v829[609];
  v409 = v829[610];
  v410 = v829[611];
  v411 = v829[612];
  v412 = v829[613];
  v413 = v829[614];
  v414 = v829[615];
  v415 = v829[616];
  v416 = v829[617];
  v417 = v829[618];
  v418 = v829[619];
  v419 = v829[620];
  v420 = v829[621];
  v421 = v829[622];
  v422 = v829[623];
  v423 = v829[624];
  v424 = v829[625];
  v425 = v829[626];
  v426 = v829[627];
  v427 = v829[628];
  v428 = v829[629];
  v429 = v829[630];
  v430 = v829[631];
  v431 = v829[632];
  v432 = v829[633];
  v433 = v829[634];
  v434 = v829[635];
  v435 = v829[636];
  v436 = v829[637];
  v437 = v829[638];
  v438 = v829[639];
  v439 = v829[640];
  v440 = v829[641];
  v441 = v829[642];
  v442 = v829[643];
  v443 = v829[644];
  v444 = v829[645];
  v445 = v829[646];
  v446 = v829[647];
  v447 = v829[648];
  v448 = v829[649];
  v449 = v829[650];
  v450 = v829[651];
  v451 = v829[652];
  v452 = v829[653];
  v453 = v829[654];
  v454 = v829[655];
  v455 = v829[656];
  v456 = v829[657];
  v457 = v829[658];
  v458 = v829[659];
  v459 = v829[660];
  v460 = v829[661];
  v461 = v829[662];
  v462 = v829[663];
  v463 = v829[664];
  v464 = v829[665];
  v465 = v829[666];
  v466 = v829[667];
  v467 = v829[668];
  v468 = v829[669];
  v469 = v829[670];
  v470 = v829[671];
  v471 = v829[672];
  v472 = v829[673];
  v473 = v829[674];
  v474 = v829[675];
  v475 = v829[676];
  v476 = v829[677];
  v477 = v829[678];
  v478 = v829[679];
  v479 = v829[680];
  v480 = v829[681];
  v481 = v829[682];
  v482 = v829[683];
  v483 = v829[684];
  v484 = v829[685];
  v485 = v829[686];
  v486 = v829[687];
  v487 = v829[688];
  v488 = v829[689];
  v489 = v829[690];
  v490 = v829[691];
  v491 = v829[692];
  v492 = v829[693];
  v493 = v829[694];
  v494 = v829[695];
  v495 = v829[696];
  v496 = v829[697];
  v497 = v829[698];
  v498 = v829[699];
  v499 = v829[700];
  v500 = v829[701];
  v501 = v829[702];
  v502 = v829[703];
  v503 = v829[704];
  v504 = v829[705];
  v505 = v829[706];
  v506 = v829[707];
  v507 = v829[708];
  v508 = v829[709];
  v509 = v829[710];
  v510 = v829[711];
  v511 = v829[712];
  v512 = v829[713];
  v513 = v829[714];
  v514 = v829[715];
  v515 = v829[716];
  v516 = v829[717];
  v517 = v829[718];
  v518 = v829[719];
  v519 = v829[720];
  v520 = v829[721];
  v521 = v829[722];
  v522 = v829[723];
  v523 = v829[724];
  v524 = v829[725];
  v525 = v829[726];
  v526 = v829[727];
  v527 = v829[728];
  v528 = v829[729];
  v529 = v829[730];
  v530 = v829[731];
  v531 = v829[732];
  v532 = v829[733];
  v533 = v829[734];
  v534 = v829[735];
  v535 = v829[736];
  v536 = v829[737];
  v537 = v829[738];
  v538 = v829[739];
  v539 = v829[740];
  v540 = v829[741];
  v541 = v829[742];
  v542 = v829[743];
  v543 = v829[744];
  v544 = v829[745];
  v545 = v829[746];
  v546 = v829[747];
  v547 = v829[748];
  v548 = v829[749];
  v549 = v829[750];
  v550 = v829[751];
  v551 = v829[752];
  v552 = v829[753];
  v553 = v829[754];
  v554 = v829[755];
  v555 = v829[756];
  v556 = v829[757];
  v557 = v829[758];
  v558 = v829[759];
  v559 = v829[760];
  v560 = v829[761];
  v561 = v829[762];
  v562 = v829[763];
  v563 = v829[764];
  v564 = v829[765];
  v565 = v829[766];
  v566 = v829[767];
  v567 = v829[768];
  v568 = v829[769];
  v569 = v829[770];
  v570 = v829[771];
  v571 = v829[772];
  v572 = v829[773];
  v573 = v829[774];
  v574 = v829[775];
  v575 = v829[776];
  v576 = v829[777];
  v577 = v829[778];
  v578 = v829[779];
  v579 = v829[780];
  v580 = v829[781];
  v581 = v829[782];
  v582 = v829[783];
  v583 = v829[784];
  v584 = v829[785];
  v585 = v829[786];
  v586 = v829[787];
  v587 = v829[788];
  v588 = v829[789];
  v589 = v829[790];
  v590 = v829[791];
  v591 = v829[792];
  v592 = v829[793];
  v593 = v829[794];
  v594 = v829[795];
  v595 = v829[796];
  v596 = v829[797];
  v597 = v829[798];
  v598 = v829[799];
  v599 = v829[800];
  v600 = v829[801];
  v601 = v829[802];
  v602 = v829[803];
  v603 = v829[804];
  v604 = v829[805];
  v605 = v829[806];
  v606 = v829[807];
  v607 = v829[808];
  v608 = v829[809];
  v609 = v829[810];
  v610 = v829[811];
  v611 = v829[812];
  v612 = v829[813];
  v613 = v829[814];
  v614 = v829[815];
  v615 = v829[816];
  v616 = v829[817];
  v617 = v829[818];
  v618 = v829[819];
  v619 = v829[820];
  v620 = v829[821];
  v621 = v829[822];
  v622 = v829[823];
  v623 = v829[824];
  v624 = v829[825];
  v625 = v829[826];
  v626 = v829[827];
  v627 = v829[828];
  v628 = v829[829];
  v629 = v829[830];
  v630 = v829[831];
  v631 = v829[832];
  v632 = v829[833];
  v633 = v829[834];
  v634 = v829[835];
  v635 = v829[836];
  v636 = v829[837];
  v637 = v829[838];
  v638 = v829[839];
  v639 = v829[840];
  v640 = v829[841];
  v641 = v829[842];
  v642 = v829[843];
  v643 = v829[844];
  v644 = v829[845];
  v645 = v829[846];
  v646 = v829[847];
  v647 = v829[848];
  v648 = v829[849];
  v649 = v829[850];
  v650 = v829[851];
  v651 = v829[852];
  v652 = v829[853];
  v653 = v829[854];
  v654 = v829[855];
  v655 = v829[856];
  v656 = v829[857];
  v657 = v829[858];
  v658 = v829[859];
  v659 = v829[860];
  v660 = v829[861];
  v661 = v829[862];
  v662 = v829[863];
  v663 = v829[864];
  v664 = v829[865];
  v665 = v829[866];
  v666 = v829[867];
  v667 = v829[868];
  v668 = v829[869];
  v669 = v829[870];
  v670 = v829[871];
  v671 = v829[872];
  v672 = v829[873];
  v673 = v829[874];
  v674 = v829[875];
  v675 = v829[876];
  v676 = v829[877];
  v677 = v829[878];
  v678 = v829[879];
  v679 = v829[880];
  v680 = v829[881];
  v681 = v829[882];
  v682 = v829[883];
  v683 = v829[884];
  v684 = v829[885];
  v685 = v829[886];
  v686 = v829[887];
  v687 = v829[888];
  v688 = v829[889];
  v689 = v829[890];
  v690 = v829[891];
  v691 = v829[892];
  v692 = v829[893];
  v693 = v829[894];
  v694 = v829[895];
  v695 = v829[896];
  v696 = v829[897];
  v697 = v829[898];
  v698 = v829[899];
  v699 = v829[900];
  v700 = v829[901];
  v701 = v829[902];
  v702 = v829[903];
  v703 = v829[904];
  v704 = v829[905];
  v705 = v829[906];
  v706 = v829[907];
  v707 = v829[908];
  v708 = v829[909];
  v709 = v829[910];
  v710 = v829[911];
  v711 = v829[912];
  v712 = v829[913];
  v713 = v829[914];
  v714 = v829[915];
  v715 = v829[916];
  v716 = v829[917];
  v717 = v829[918];
  v718 = v829[919];
  v719 = v829[920];
  v720 = v829[921];
  v721 = v829[922];
  v722 = v829[923];
  v723 = v829[924];
  v724 = v829[925];
  v725 = v829[926];
  v726 = v829[927];
  v727 = v829[928];
  v728 = v829[929];
  v729 = v829[930];
  v730 = v829[931];
  v731 = v829[932];
  v732 = v829[933];
  v733 = v829[934];
  v734 = v829[935];
  v735 = v829[936];
  v736 = v829[937];
  v737 = v829[938];
  v738 = v829[939];
  v739 = v829[940];
  v740 = v829[941];
  v741 = v829[942];
  v742 = v829[943];
  v743 = v829[944];
  v744 = v829[945];
  v745 = v829[946];
  v746 = v829[947];
  v747 = v829[948];
  v748 = v829[949];
  v749 = v829[950];
  v750 = v829[951];
  v751 = v829[952];
  v752 = v829[953];
  v753 = v829[954];
  v754 = v829[955];
  v755 = v829[956];
  v756 = v829[957];
  v757 = v829[958];
  v758 = v829[959];
  v759 = v829[960];
  v760 = v829[961];
  v761 = v829[962];
  v762 = v829[963];
  v763 = v829[964];
  v764 = v829[965];
  v765 = v829[966];
  v766 = v829[967];
  v767 = v829[968];
  v768 = v829[969];
  v769 = v829[970];
  v770 = v829[971];
  v771 = v829[972];
  v772 = v829[973];
  v773 = v829[974];
  v774 = v829[975];
  v775 = v829[976];
  v776 = v829[977];
  v777 = v829[978];
  v778 = v829[979];
  v779 = v829[980];
  v780 = v829[981];
  v781 = v829[982];
  v782 = v829[983];
  v783 = v829[984];
  v784 = v829[985];
  v785 = v829[986];
  v786 = v829[987];
  v787 = v829[988];
  v788 = v829[989];
  v789 = v829[990];
  v790 = v829[991];
  v791 = v829[992];
  v792 = v829[993];
  v793 = v829[994];
  v794 = v829[995];
  v795 = v829[996];
  v796 = v829[997];
  v797 = v829[998];
  v798 = v829[999];
  v799 = v829[1000];
  v800 = v829[1001];
  v801 = v829[1002];
  v802 = v829[1003];
  v803 = v829[1004];
  v804 = v829[1005];
  v805 = v829[1006];
  v806 = v829[1007];
  v807 = v829[1008];
  v808 = v829[1009];
  v809 = v829[1010];
  v810 = v829[1011];
  v811 = v829[1012];
  v812 = v829[1013];
  v813 = v829[1014];
  v814 = v829[1015];
  v815 = v829[1016];
  v816 = v829[1017];
  v817 = v829[1018];
  v818 = v829[1019];
  v819 = v829[1020];
  v820 = v829[1021];
  v821 = v829[1022];
  v822 = v829[1023];
  v823 = v829[1024];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB58, &unk_25B949950);
  sub_25B8850CC(v43, sub_25B884AFC, 0, v14, MEMORY[0x277D84A98], MEMORY[0x277D837D0], MEMORY[0x277D84AC0], v13);
  sub_25B884014(v41, v42);
  memcpy(v40, (v12 + 176), sizeof(v40));
  v830 = v40[1002];
  v17[0] = v40[0];
  v17[1] = v40[1];
  v17[2] = v40[2];
  v17[3] = v40[3];
  v17[4] = v40[4];
  v17[5] = v40[5];
  v17[6] = v40[6];
  v17[7] = v40[7];
  v17[8] = v40[8];
  v17[9] = v40[9];
  v17[10] = v40[10];
  v17[11] = v40[11];
  v17[12] = v40[12];
  v17[13] = v40[13];
  v17[14] = v40[14];
  v17[15] = v40[15];
  v17[16] = v40[16];
  v17[17] = v40[17];
  v17[18] = v40[18];
  v17[19] = v40[19];
  v17[20] = v40[20];
  v17[21] = v40[21];
  v17[22] = v40[22];
  v17[23] = v40[23];
  v17[24] = v40[24];
  v17[25] = v40[25];
  v17[26] = v40[26];
  v17[27] = v40[27];
  v17[28] = v40[28];
  v17[29] = v40[29];
  v17[30] = v40[30];
  v17[31] = v40[31];
  v17[32] = v40[32];
  v17[33] = v40[33];
  v17[34] = v40[34];
  v17[35] = v40[35];
  v17[36] = v40[36];
  v17[37] = v40[37];
  v17[38] = v40[38];
  v17[39] = v40[39];
  v17[40] = v40[40];
  v17[41] = v40[41];
  v17[42] = v40[42];
  v17[43] = v40[43];
  v17[44] = v40[44];
  v17[45] = v40[45];
  v17[46] = v40[46];
  v17[47] = v40[47];
  v17[48] = v40[48];
  v17[49] = v40[49];
  v17[50] = v40[50];
  v17[51] = v40[51];
  v17[52] = v40[52];
  v17[53] = v40[53];
  v17[54] = v40[54];
  v17[55] = v40[55];
  v17[56] = v40[56];
  v17[57] = v40[57];
  v17[58] = v40[58];
  v17[59] = v40[59];
  v17[60] = v40[60];
  v17[61] = v40[61];
  v17[62] = v40[62];
  v17[63] = v40[63];
  v17[64] = v40[64];
  v17[65] = v40[65];
  v17[66] = v40[66];
  v17[67] = v40[67];
  v17[68] = v40[68];
  v17[69] = v40[69];
  v17[70] = v40[70];
  v17[71] = v40[71];
  v17[72] = v40[72];
  v17[73] = v40[73];
  v17[74] = v40[74];
  v17[75] = v40[75];
  v17[76] = v40[76];
  v17[77] = v40[77];
  v17[78] = v40[78];
  v17[79] = v40[79];
  v17[80] = v40[80];
  v17[81] = v40[81];
  v17[82] = v40[82];
  v17[83] = v40[83];
  v17[84] = v40[84];
  v17[85] = v40[85];
  v17[86] = v40[86];
  v17[87] = v40[87];
  v17[88] = v40[88];
  v17[89] = v40[89];
  v17[90] = v40[90];
  v17[91] = v40[91];
  v17[92] = v40[92];
  v17[93] = v40[93];
  v17[94] = v40[94];
  v17[95] = v40[95];
  v17[96] = v40[96];
  v17[97] = v40[97];
  v17[98] = v40[98];
  v17[99] = v40[99];
  v17[100] = v40[100];
  v17[101] = v40[101];
  v17[102] = v40[102];
  v17[103] = v40[103];
  v17[104] = v40[104];
  v17[105] = v40[105];
  v17[106] = v40[106];
  v17[107] = v40[107];
  v17[108] = v40[108];
  v17[109] = v40[109];
  v17[110] = v40[110];
  v17[111] = v40[111];
  v17[112] = v40[112];
  v17[113] = v40[113];
  v17[114] = v40[114];
  v17[115] = v40[115];
  v17[116] = v40[116];
  v17[117] = v40[117];
  v17[118] = v40[118];
  v17[119] = v40[119];
  v17[120] = v40[120];
  v17[121] = v40[121];
  v17[122] = v40[122];
  v17[123] = v40[123];
  v17[124] = v40[124];
  v17[125] = v40[125];
  v17[126] = v40[126];
  v17[127] = v40[127];
  v17[128] = v40[128];
  v17[129] = v40[129];
  v17[130] = v40[130];
  v17[131] = v40[131];
  v17[132] = v40[132];
  v17[133] = v40[133];
  v17[134] = v40[134];
  v17[135] = v40[135];
  v17[136] = v40[136];
  v17[137] = v40[137];
  v17[138] = v40[138];
  v17[139] = v40[139];
  v17[140] = v40[140];
  v17[141] = v40[141];
  v17[142] = v40[142];
  v17[143] = v40[143];
  v17[144] = v40[144];
  v17[145] = v40[145];
  v17[146] = v40[146];
  v17[147] = v40[147];
  v17[148] = v40[148];
  v17[149] = v40[149];
  v17[150] = v40[150];
  v17[151] = v40[151];
  v17[152] = v40[152];
  v17[153] = v40[153];
  v17[154] = v40[154];
  v17[155] = v40[155];
  v17[156] = v40[156];
  v17[157] = v40[157];
  v17[158] = v40[158];
  v17[159] = v40[159];
  v17[160] = v40[160];
  v17[161] = v40[161];
  v17[162] = v40[162];
  v17[163] = v40[163];
  v17[164] = v40[164];
  v17[165] = v40[165];
  v17[166] = v40[166];
  v17[167] = v40[167];
  v17[168] = v40[168];
  v17[169] = v40[169];
  v17[170] = v40[170];
  v17[171] = v40[171];
  v17[172] = v40[172];
  v17[173] = v40[173];
  v17[174] = v40[174];
  v17[175] = v40[175];
  v17[176] = v40[176];
  v17[177] = v40[177];
  v17[178] = v40[178];
  v17[179] = v40[179];
  v17[180] = v40[180];
  v17[181] = v40[181];
  v17[182] = v40[182];
  v17[183] = v40[183];
  v17[184] = v40[184];
  v17[185] = v40[185];
  v17[186] = v40[186];
  v17[187] = v40[187];
  v17[188] = v40[188];
  v17[189] = v40[189];
  v17[190] = v40[190];
  v17[191] = v40[191];
  v17[192] = v40[192];
  v17[193] = v40[193];
  v17[194] = v40[194];
  v17[195] = v40[195];
  v17[196] = v40[196];
  v17[197] = v40[197];
  v17[198] = v40[198];
  v17[199] = v40[199];
  v17[200] = v40[200];
  v17[201] = v40[201];
  v17[202] = v40[202];
  v17[203] = v40[203];
  v17[204] = v40[204];
  v17[205] = v40[205];
  v17[206] = v40[206];
  v17[207] = v40[207];
  v17[208] = v40[208];
  v17[209] = v40[209];
  v17[210] = v40[210];
  v17[211] = v40[211];
  v17[212] = v40[212];
  v17[213] = v40[213];
  v17[214] = v40[214];
  v17[215] = v40[215];
  v17[216] = v40[216];
  v17[217] = v40[217];
  v17[218] = v40[218];
  v17[219] = v40[219];
  v17[220] = v40[220];
  v17[221] = v40[221];
  v17[222] = v40[222];
  v17[223] = v40[223];
  v17[224] = v40[224];
  v17[225] = v40[225];
  v17[226] = v40[226];
  v17[227] = v40[227];
  v17[228] = v40[228];
  v17[229] = v40[229];
  v17[230] = v40[230];
  v17[231] = v40[231];
  v17[232] = v40[232];
  v17[233] = v40[233];
  v17[234] = v40[234];
  v17[235] = v40[235];
  v17[236] = v40[236];
  v17[237] = v40[237];
  v17[238] = v40[238];
  v17[239] = v40[239];
  v17[240] = v40[240];
  v17[241] = v40[241];
  v17[242] = v40[242];
  v17[243] = v40[243];
  v17[244] = v40[244];
  v17[245] = v40[245];
  v17[246] = v40[246];
  v17[247] = v40[247];
  v17[248] = v40[248];
  v17[249] = v40[249];
  v17[250] = v40[250];
  v17[251] = v40[251];
  v17[252] = v40[252];
  v17[253] = v40[253];
  v17[254] = v40[254];
  v17[255] = v40[255];
  v17[256] = v40[256];
  v17[257] = v40[257];
  v17[258] = v40[258];
  v17[259] = v40[259];
  v17[260] = v40[260];
  v17[261] = v40[261];
  v17[262] = v40[262];
  v17[263] = v40[263];
  v17[264] = v40[264];
  v17[265] = v40[265];
  v17[266] = v40[266];
  v17[267] = v40[267];
  v17[268] = v40[268];
  v17[269] = v40[269];
  v17[270] = v40[270];
  v17[271] = v40[271];
  v17[272] = v40[272];
  v17[273] = v40[273];
  v17[274] = v40[274];
  v17[275] = v40[275];
  v17[276] = v40[276];
  v17[277] = v40[277];
  v17[278] = v40[278];
  v17[279] = v40[279];
  v17[280] = v40[280];
  v17[281] = v40[281];
  v17[282] = v40[282];
  v17[283] = v40[283];
  v17[284] = v40[284];
  v17[285] = v40[285];
  v17[286] = v40[286];
  v17[287] = v40[287];
  v17[288] = v40[288];
  v17[289] = v40[289];
  v17[290] = v40[290];
  v17[291] = v40[291];
  v17[292] = v40[292];
  v17[293] = v40[293];
  v17[294] = v40[294];
  v17[295] = v40[295];
  v17[296] = v40[296];
  v17[297] = v40[297];
  v17[298] = v40[298];
  v17[299] = v40[299];
  v17[300] = v40[300];
  v17[301] = v40[301];
  v17[302] = v40[302];
  v17[303] = v40[303];
  v17[304] = v40[304];
  v17[305] = v40[305];
  v17[306] = v40[306];
  v17[307] = v40[307];
  v17[308] = v40[308];
  v17[309] = v40[309];
  v17[310] = v40[310];
  v17[311] = v40[311];
  v17[312] = v40[312];
  v17[313] = v40[313];
  v17[314] = v40[314];
  v17[315] = v40[315];
  v17[316] = v40[316];
  v17[317] = v40[317];
  v17[318] = v40[318];
  v17[319] = v40[319];
  v17[320] = v40[320];
  v17[321] = v40[321];
  v17[322] = v40[322];
  v17[323] = v40[323];
  v17[324] = v40[324];
  v17[325] = v40[325];
  v17[326] = v40[326];
  v17[327] = v40[327];
  v17[328] = v40[328];
  v17[329] = v40[329];
  v17[330] = v40[330];
  v17[331] = v40[331];
  v17[332] = v40[332];
  v17[333] = v40[333];
  v17[334] = v40[334];
  v17[335] = v40[335];
  v17[336] = v40[336];
  v17[337] = v40[337];
  v17[338] = v40[338];
  v17[339] = v40[339];
  v17[340] = v40[340];
  v17[341] = v40[341];
  v17[342] = v40[342];
  v17[343] = v40[343];
  v17[344] = v40[344];
  v17[345] = v40[345];
  v17[346] = v40[346];
  v17[347] = v40[347];
  v17[348] = v40[348];
  v17[349] = v40[349];
  v17[350] = v40[350];
  v17[351] = v40[351];
  v17[352] = v40[352];
  v17[353] = v40[353];
  v17[354] = v40[354];
  v17[355] = v40[355];
  v17[356] = v40[356];
  v17[357] = v40[357];
  v17[358] = v40[358];
  v17[359] = v40[359];
  v17[360] = v40[360];
  v17[361] = v40[361];
  v17[362] = v40[362];
  v17[363] = v40[363];
  v17[364] = v40[364];
  v17[365] = v40[365];
  v17[366] = v40[366];
  v17[367] = v40[367];
  v17[368] = v40[368];
  v17[369] = v40[369];
  v17[370] = v40[370];
  v17[371] = v40[371];
  v17[372] = v40[372];
  v17[373] = v40[373];
  v17[374] = v40[374];
  v17[375] = v40[375];
  v17[376] = v40[376];
  v17[377] = v40[377];
  v17[378] = v40[378];
  v17[379] = v40[379];
  v17[380] = v40[380];
  v17[381] = v40[381];
  v17[382] = v40[382];
  v17[383] = v40[383];
  v17[384] = v40[384];
  v17[385] = v40[385];
  v17[386] = v40[386];
  v17[387] = v40[387];
  v17[388] = v40[388];
  v17[389] = v40[389];
  v17[390] = v40[390];
  v17[391] = v40[391];
  v17[392] = v40[392];
  v17[393] = v40[393];
  v17[394] = v40[394];
  v17[395] = v40[395];
  v17[396] = v40[396];
  v17[397] = v40[397];
  v17[398] = v40[398];
  v17[399] = v40[399];
  v17[400] = v40[400];
  v17[401] = v40[401];
  v17[402] = v40[402];
  v17[403] = v40[403];
  v17[404] = v40[404];
  v17[405] = v40[405];
  v17[406] = v40[406];
  v17[407] = v40[407];
  v17[408] = v40[408];
  v17[409] = v40[409];
  v17[410] = v40[410];
  v17[411] = v40[411];
  v17[412] = v40[412];
  v17[413] = v40[413];
  v17[414] = v40[414];
  v17[415] = v40[415];
  v17[416] = v40[416];
  v17[417] = v40[417];
  v17[418] = v40[418];
  v17[419] = v40[419];
  v17[420] = v40[420];
  v17[421] = v40[421];
  v17[422] = v40[422];
  v17[423] = v40[423];
  v17[424] = v40[424];
  v17[425] = v40[425];
  v17[426] = v40[426];
  v17[427] = v40[427];
  v17[428] = v40[428];
  v17[429] = v40[429];
  v17[430] = v40[430];
  v17[431] = v40[431];
  v17[432] = v40[432];
  v17[433] = v40[433];
  v17[434] = v40[434];
  v17[435] = v40[435];
  v17[436] = v40[436];
  v17[437] = v40[437];
  v17[438] = v40[438];
  v17[439] = v40[439];
  v17[440] = v40[440];
  v17[441] = v40[441];
  v17[442] = v40[442];
  v17[443] = v40[443];
  v17[444] = v40[444];
  v17[445] = v40[445];
  v17[446] = v40[446];
  v17[447] = v40[447];
  v17[448] = v40[448];
  v17[449] = v40[449];
  v17[450] = v40[450];
  v17[451] = v40[451];
  v17[452] = v40[452];
  v17[453] = v40[453];
  v17[454] = v40[454];
  v17[455] = v40[455];
  v17[456] = v40[456];
  v17[457] = v40[457];
  v17[458] = v40[458];
  v17[459] = v40[459];
  v17[460] = v40[460];
  v17[461] = v40[461];
  v17[462] = v40[462];
  v17[463] = v40[463];
  v17[464] = v40[464];
  v17[465] = v40[465];
  v17[466] = v40[466];
  v17[467] = v40[467];
  v17[468] = v40[468];
  v17[469] = v40[469];
  v17[470] = v40[470];
  v17[471] = v40[471];
  v17[472] = v40[472];
  v17[473] = v40[473];
  v17[474] = v40[474];
  v17[475] = v40[475];
  v17[476] = v40[476];
  v17[477] = v40[477];
  v17[478] = v40[478];
  v17[479] = v40[479];
  v17[480] = v40[480];
  v17[481] = v40[481];
  v17[482] = v40[482];
  v17[483] = v40[483];
  v17[484] = v40[484];
  v17[485] = v40[485];
  v17[486] = v40[486];
  v17[487] = v40[487];
  v17[488] = v40[488];
  v17[489] = v40[489];
  v17[490] = v40[490];
  v17[491] = v40[491];
  v17[492] = v40[492];
  v17[493] = v40[493];
  v17[494] = v40[494];
  v17[495] = v40[495];
  v17[496] = v40[496];
  v17[497] = v40[497];
  v17[498] = v40[498];
  v17[499] = v40[499];
  v17[500] = v40[500];
  v17[501] = v40[501];
  v17[502] = v40[502];
  v17[503] = v40[503];
  v17[504] = v40[504];
  v17[505] = v40[505];
  v17[506] = v40[506];
  v17[507] = v40[507];
  v17[508] = v40[508];
  v17[509] = v40[509];
  v17[510] = v40[510];
  v17[511] = v40[511];
  v17[512] = v40[512];
  v17[513] = v40[513];
  v17[514] = v40[514];
  v17[515] = v40[515];
  v17[516] = v40[516];
  v17[517] = v40[517];
  v17[518] = v40[518];
  v17[519] = v40[519];
  v17[520] = v40[520];
  v17[521] = v40[521];
  v17[522] = v40[522];
  v17[523] = v40[523];
  v17[524] = v40[524];
  v17[525] = v40[525];
  v17[526] = v40[526];
  v17[527] = v40[527];
  v17[528] = v40[528];
  v17[529] = v40[529];
  v17[530] = v40[530];
  v17[531] = v40[531];
  v17[532] = v40[532];
  v17[533] = v40[533];
  v17[534] = v40[534];
  v17[535] = v40[535];
  v17[536] = v40[536];
  v17[537] = v40[537];
  v17[538] = v40[538];
  v17[539] = v40[539];
  v17[540] = v40[540];
  v17[541] = v40[541];
  v17[542] = v40[542];
  v17[543] = v40[543];
  v17[544] = v40[544];
  v17[545] = v40[545];
  v17[546] = v40[546];
  v17[547] = v40[547];
  v17[548] = v40[548];
  v17[549] = v40[549];
  v17[550] = v40[550];
  v17[551] = v40[551];
  v17[552] = v40[552];
  v17[553] = v40[553];
  v17[554] = v40[554];
  v17[555] = v40[555];
  v17[556] = v40[556];
  v17[557] = v40[557];
  v17[558] = v40[558];
  v17[559] = v40[559];
  v17[560] = v40[560];
  v17[561] = v40[561];
  v17[562] = v40[562];
  v17[563] = v40[563];
  v17[564] = v40[564];
  v17[565] = v40[565];
  v17[566] = v40[566];
  v17[567] = v40[567];
  v17[568] = v40[568];
  v17[569] = v40[569];
  v17[570] = v40[570];
  v17[571] = v40[571];
  v17[572] = v40[572];
  v17[573] = v40[573];
  v17[574] = v40[574];
  v17[575] = v40[575];
  v17[576] = v40[576];
  v17[577] = v40[577];
  v17[578] = v40[578];
  v17[579] = v40[579];
  v17[580] = v40[580];
  v17[581] = v40[581];
  v17[582] = v40[582];
  v17[583] = v40[583];
  v17[584] = v40[584];
  v17[585] = v40[585];
  v17[586] = v40[586];
  v17[587] = v40[587];
  v17[588] = v40[588];
  v17[589] = v40[589];
  v17[590] = v40[590];
  v17[591] = v40[591];
  v17[592] = v40[592];
  v17[593] = v40[593];
  v17[594] = v40[594];
  v17[595] = v40[595];
  v17[596] = v40[596];
  v17[597] = v40[597];
  v17[598] = v40[598];
  v17[599] = v40[599];
  v17[600] = v40[600];
  v17[601] = v40[601];
  v17[602] = v40[602];
  v17[603] = v40[603];
  v17[604] = v40[604];
  v17[605] = v40[605];
  v17[606] = v40[606];
  v17[607] = v40[607];
  v17[608] = v40[608];
  v17[609] = v40[609];
  v17[610] = v40[610];
  v17[611] = v40[611];
  v17[612] = v40[612];
  v17[613] = v40[613];
  v17[614] = v40[614];
  v17[615] = v40[615];
  v17[616] = v40[616];
  v17[617] = v40[617];
  v17[618] = v40[618];
  v17[619] = v40[619];
  v17[620] = v40[620];
  v17[621] = v40[621];
  v17[622] = v40[622];
  v17[623] = v40[623];
  v17[624] = v40[624];
  v17[625] = v40[625];
  v17[626] = v40[626];
  v17[627] = v40[627];
  v17[628] = v40[628];
  v17[629] = v40[629];
  v17[630] = v40[630];
  v17[631] = v40[631];
  v17[632] = v40[632];
  v17[633] = v40[633];
  v17[634] = v40[634];
  v17[635] = v40[635];
  v17[636] = v40[636];
  v17[637] = v40[637];
  v17[638] = v40[638];
  v17[639] = v40[639];
  v17[640] = v40[640];
  v17[641] = v40[641];
  v17[642] = v40[642];
  v17[643] = v40[643];
  v17[644] = v40[644];
  v17[645] = v40[645];
  v17[646] = v40[646];
  v17[647] = v40[647];
  v17[648] = v40[648];
  v17[649] = v40[649];
  v17[650] = v40[650];
  v17[651] = v40[651];
  v17[652] = v40[652];
  v17[653] = v40[653];
  v17[654] = v40[654];
  v17[655] = v40[655];
  v17[656] = v40[656];
  v17[657] = v40[657];
  v17[658] = v40[658];
  v17[659] = v40[659];
  v17[660] = v40[660];
  v17[661] = v40[661];
  v17[662] = v40[662];
  v17[663] = v40[663];
  v17[664] = v40[664];
  v17[665] = v40[665];
  v17[666] = v40[666];
  v17[667] = v40[667];
  v17[668] = v40[668];
  v17[669] = v40[669];
  v17[670] = v40[670];
  v17[671] = v40[671];
  v17[672] = v40[672];
  v17[673] = v40[673];
  v17[674] = v40[674];
  v17[675] = v40[675];
  v17[676] = v40[676];
  v17[677] = v40[677];
  v17[678] = v40[678];
  v17[679] = v40[679];
  v17[680] = v40[680];
  v17[681] = v40[681];
  v17[682] = v40[682];
  v17[683] = v40[683];
  v17[684] = v40[684];
  v17[685] = v40[685];
  v17[686] = v40[686];
  v17[687] = v40[687];
  v17[688] = v40[688];
  v17[689] = v40[689];
  v17[690] = v40[690];
  v17[691] = v40[691];
  v17[692] = v40[692];
  v17[693] = v40[693];
  v17[694] = v40[694];
  v17[695] = v40[695];
  v17[696] = v40[696];
  v17[697] = v40[697];
  v17[698] = v40[698];
  v17[699] = v40[699];
  v17[700] = v40[700];
  v17[701] = v40[701];
  v17[702] = v40[702];
  v17[703] = v40[703];
  v17[704] = v40[704];
  v17[705] = v40[705];
  v17[706] = v40[706];
  v17[707] = v40[707];
  v17[708] = v40[708];
  v17[709] = v40[709];
  v17[710] = v40[710];
  v17[711] = v40[711];
  v17[712] = v40[712];
  v17[713] = v40[713];
  v17[714] = v40[714];
  v17[715] = v40[715];
  v17[716] = v40[716];
  v17[717] = v40[717];
  v17[718] = v40[718];
  v17[719] = v40[719];
  v17[720] = v40[720];
  v17[721] = v40[721];
  v17[722] = v40[722];
  v17[723] = v40[723];
  v17[724] = v40[724];
  v17[725] = v40[725];
  v17[726] = v40[726];
  v17[727] = v40[727];
  v17[728] = v40[728];
  v17[729] = v40[729];
  v17[730] = v40[730];
  v17[731] = v40[731];
  v17[732] = v40[732];
  v17[733] = v40[733];
  v17[734] = v40[734];
  v17[735] = v40[735];
  v17[736] = v40[736];
  v17[737] = v40[737];
  v17[738] = v40[738];
  v17[739] = v40[739];
  v17[740] = v40[740];
  v17[741] = v40[741];
  v17[742] = v40[742];
  v17[743] = v40[743];
  v17[744] = v40[744];
  v17[745] = v40[745];
  v17[746] = v40[746];
  v17[747] = v40[747];
  v17[748] = v40[748];
  v17[749] = v40[749];
  v17[750] = v40[750];
  v17[751] = v40[751];
  v17[752] = v40[752];
  v17[753] = v40[753];
  v17[754] = v40[754];
  v17[755] = v40[755];
  v17[756] = v40[756];
  v17[757] = v40[757];
  v17[758] = v40[758];
  v17[759] = v40[759];
  v17[760] = v40[760];
  v17[761] = v40[761];
  v17[762] = v40[762];
  v17[763] = v40[763];
  v17[764] = v40[764];
  v17[765] = v40[765];
  v17[766] = v40[766];
  v17[767] = v40[767];
  v17[768] = v40[768];
  v17[769] = v40[769];
  v17[770] = v40[770];
  v17[771] = v40[771];
  v17[772] = v40[772];
  v17[773] = v40[773];
  v17[774] = v40[774];
  v17[775] = v40[775];
  v17[776] = v40[776];
  v17[777] = v40[777];
  v17[778] = v40[778];
  v17[779] = v40[779];
  v17[780] = v40[780];
  v17[781] = v40[781];
  v17[782] = v40[782];
  v17[783] = v40[783];
  v17[784] = v40[784];
  v17[785] = v40[785];
  v17[786] = v40[786];
  v17[787] = v40[787];
  v17[788] = v40[788];
  v17[789] = v40[789];
  v17[790] = v40[790];
  v17[791] = v40[791];
  v17[792] = v40[792];
  v17[793] = v40[793];
  v17[794] = v40[794];
  v17[795] = v40[795];
  v17[796] = v40[796];
  v17[797] = v40[797];
  v17[798] = v40[798];
  v17[799] = v40[799];
  v17[800] = v40[800];
  v17[801] = v40[801];
  v17[802] = v40[802];
  v17[803] = v40[803];
  v17[804] = v40[804];
  v17[805] = v40[805];
  v17[806] = v40[806];
  v17[807] = v40[807];
  v17[808] = v40[808];
  v17[809] = v40[809];
  v17[810] = v40[810];
  v17[811] = v40[811];
  v17[812] = v40[812];
  v17[813] = v40[813];
  v17[814] = v40[814];
  v17[815] = v40[815];
  v17[816] = v40[816];
  v17[817] = v40[817];
  v17[818] = v40[818];
  v17[819] = v40[819];
  v17[820] = v40[820];
  v17[821] = v40[821];
  v17[822] = v40[822];
  v17[823] = v40[823];
  v17[824] = v40[824];
  v17[825] = v40[825];
  v17[826] = v40[826];
  v17[827] = v40[827];
  v17[828] = v40[828];
  v17[829] = v40[829];
  v17[830] = v40[830];
  v17[831] = v40[831];
  v17[832] = v40[832];
  v17[833] = v40[833];
  v17[834] = v40[834];
  v17[835] = v40[835];
  v17[836] = v40[836];
  v17[837] = v40[837];
  v17[838] = v40[838];
  v17[839] = v40[839];
  v17[840] = v40[840];
  v17[841] = v40[841];
  v17[842] = v40[842];
  v17[843] = v40[843];
  v17[844] = v40[844];
  v17[845] = v40[845];
  v17[846] = v40[846];
  v17[847] = v40[847];
  v17[848] = v40[848];
  v17[849] = v40[849];
  v17[850] = v40[850];
  v17[851] = v40[851];
  v17[852] = v40[852];
  v17[853] = v40[853];
  v17[854] = v40[854];
  v17[855] = v40[855];
  v17[856] = v40[856];
  v17[857] = v40[857];
  v17[858] = v40[858];
  v17[859] = v40[859];
  v17[860] = v40[860];
  v17[861] = v40[861];
  v17[862] = v40[862];
  v17[863] = v40[863];
  v17[864] = v40[864];
  v17[865] = v40[865];
  v17[866] = v40[866];
  v17[867] = v40[867];
  v17[868] = v40[868];
  v17[869] = v40[869];
  v17[870] = v40[870];
  v17[871] = v40[871];
  v17[872] = v40[872];
  v17[873] = v40[873];
  v17[874] = v40[874];
  v17[875] = v40[875];
  v17[876] = v40[876];
  v17[877] = v40[877];
  v17[878] = v40[878];
  v17[879] = v40[879];
  v17[880] = v40[880];
  v17[881] = v40[881];
  v17[882] = v40[882];
  v17[883] = v40[883];
  v17[884] = v40[884];
  v17[885] = v40[885];
  v17[886] = v40[886];
  v17[887] = v40[887];
  v17[888] = v40[888];
  v17[889] = v40[889];
  v17[890] = v40[890];
  v17[891] = v40[891];
  v17[892] = v40[892];
  v17[893] = v40[893];
  v17[894] = v40[894];
  v17[895] = v40[895];
  v17[896] = v40[896];
  v17[897] = v40[897];
  v17[898] = v40[898];
  v17[899] = v40[899];
  v17[900] = v40[900];
  v17[901] = v40[901];
  v17[902] = v40[902];
  v17[903] = v40[903];
  v17[904] = v40[904];
  v17[905] = v40[905];
  v17[906] = v40[906];
  v17[907] = v40[907];
  v17[908] = v40[908];
  v17[909] = v40[909];
  v17[910] = v40[910];
  v17[911] = v40[911];
  v17[912] = v40[912];
  v17[913] = v40[913];
  v17[914] = v40[914];
  v17[915] = v40[915];
  v17[916] = v40[916];
  v17[917] = v40[917];
  v17[918] = v40[918];
  v17[919] = v40[919];
  v17[920] = v40[920];
  v17[921] = v40[921];
  v17[922] = v40[922];
  v17[923] = v40[923];
  v17[924] = v40[924];
  v17[925] = v40[925];
  v17[926] = v40[926];
  v17[927] = v40[927];
  v17[928] = v40[928];
  v17[929] = v40[929];
  v17[930] = v40[930];
  v17[931] = v40[931];
  v17[932] = v40[932];
  v17[933] = v40[933];
  v17[934] = v40[934];
  v17[935] = v40[935];
  v17[936] = v40[936];
  v17[937] = v40[937];
  v17[938] = v40[938];
  v17[939] = v40[939];
  v17[940] = v40[940];
  v17[941] = v40[941];
  v17[942] = v40[942];
  v17[943] = v40[943];
  v17[944] = v40[944];
  v17[945] = v40[945];
  v17[946] = v40[946];
  v17[947] = v40[947];
  v17[948] = v40[948];
  v17[949] = v40[949];
  v17[950] = v40[950];
  v17[951] = v40[951];
  v17[952] = v40[952];
  v17[953] = v40[953];
  v17[954] = v40[954];
  v17[955] = v40[955];
  v17[956] = v40[956];
  v17[957] = v40[957];
  v17[958] = v40[958];
  v17[959] = v40[959];
  v17[960] = v40[960];
  v17[961] = v40[961];
  v17[962] = v40[962];
  v17[963] = v40[963];
  v17[964] = v40[964];
  v17[965] = v40[965];
  v17[966] = v40[966];
  v17[967] = v40[967];
  v17[968] = v40[968];
  v17[969] = v40[969];
  v17[970] = v40[970];
  v17[971] = v40[971];
  v17[972] = v40[972];
  v17[973] = v40[973];
  v17[974] = v40[974];
  v17[975] = v40[975];
  v17[976] = v40[976];
  v17[977] = v40[977];
  v17[978] = v40[978];
  v17[979] = v40[979];
  v17[980] = v40[980];
  v17[981] = v40[981];
  v17[982] = v40[982];
  v17[983] = v40[983];
  v17[984] = v40[984];
  v17[985] = v40[985];
  v17[986] = v40[986];
  v17[987] = v40[987];
  v17[988] = v40[988];
  v17[989] = v40[989];
  v17[990] = v40[990];
  v17[991] = v40[991];
  v17[992] = v40[992];
  v17[993] = v40[993];
  v17[994] = v40[994];
  v17[995] = v40[995];
  v17[996] = v40[996];
  v17[997] = v40[997];
  v17[998] = v40[998];
  v17[999] = v40[999];
  v17[1000] = v40[1000];
  v17[1001] = v40[1001];
  v18 = *&v40[1002];
  v19 = v40[1004];
  v20 = v40[1005];
  v21 = v40[1006];
  v22 = v40[1007];
  v23 = v40[1008];
  v24 = v40[1009];
  v25 = v40[1010];
  v26 = v40[1011];
  v27 = v40[1012];
  v28 = v40[1013];
  v29 = v40[1014];
  v30 = v40[1015];
  v31 = v40[1016];
  v32 = v40[1017];
  v33 = v40[1018];
  v34 = v40[1019];
  v35 = v40[1020];
  v36 = v40[1021];
  v37 = v40[1022];
  v38 = v40[1023];
  v39 = v40[1024];
  sub_25B8850CC(v17, sub_25B884AFC, 0, v14, MEMORY[0x277D84A98], MEMORY[0x277D837D0], MEMORY[0x277D84AC0], v13);
  sub_25B8841E4(v15, v16);
  if (*(v12 + 2232))
  {
    v6 = sub_25B947058();
    sub_25B884768(v6, v7);
  }

  return v11;
}