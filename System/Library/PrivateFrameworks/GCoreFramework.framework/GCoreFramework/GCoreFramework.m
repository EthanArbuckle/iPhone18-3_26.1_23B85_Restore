uint64_t create_gcore_with_options(void *a1)
{
  v78 = *MEMORY[0x277D85DE8];
  if (create_gcore_with_options_onceToken != -1)
  {
    create_gcore_with_options_cold_1();
  }

  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (!v5)
  {
    v21 = 0;
    v8 = 0;
    v22 = -1;
    goto LABEL_52;
  }

  v6 = v5;
  v56 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v64;
  v57 = 0;
  v58 = -1;
  v62 = v3;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v64 != v9)
      {
        objc_enumerationMutation(a1);
      }

      v11 = *(*(&v63 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_65:
        v1 = 22;
        goto LABEL_104;
      }

      if (![v11 compare:@"debug"])
      {
        LODWORD(v72) = 0;
        *buf = 0;
        if (get_integer_value(v11, a1, buf, &v72))
        {
          v7 = [*buf intValue];
          v16 = 3;
        }

        else
        {
          v16 = 1;
          v1 = v72;
        }

        v8 = 1;
        goto LABEL_29;
      }

      if (![v11 compare:@"verbose"])
      {
        v8 = 1;
        goto LABEL_30;
      }

      if (![v11 compare:@"filedesc"])
      {
        LODWORD(v72) = 0;
        *buf = 0;
        if (get_integer_value(v11, a1, buf, &v72))
        {
          v58 = [*buf intValue];
LABEL_27:
          v16 = 3;
          goto LABEL_29;
        }

LABEL_28:
        v16 = 1;
        v1 = v72;
        goto LABEL_29;
      }

      if (![v11 compare:@"port"])
      {
        LODWORD(v72) = 0;
        *buf = 0;
        if (get_integer_value(v11, a1, buf, &v72))
        {
          v57 = [*buf intValue];
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v61 = v6;
      v59 = v1;
      v60 = v8;
      if (!v11)
      {
LABEL_62:
        v29 = logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v11 UTF8String];
          *buf = 136315138;
          *&buf[4] = v30;
          _os_log_impl(&dword_24BC7B000, v29, OS_LOG_TYPE_DEFAULT, "unrecognized option: %s", buf, 0xCu);
        }

        v1 = 33;
        v3 = v62;
        goto LABEL_104;
      }

      v12 = [v11 UTF8String];
      v13 = &qword_27916BD68;
      v14 = 13;
      while (1)
      {
        v15 = strlen(*(v13 - 2));
        if (!strncmp(v12, *(v13 - 2), v15))
        {
          break;
        }

        v13 += 3;
        if (!--v14)
        {
          goto LABEL_62;
        }
      }

      v3 = v62;
      if (!*v13)
      {
        v18 = 0;
LABEL_42:
        [v4 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", *(v13 - 1), v56)}];
        if (v18)
        {
          [v4 addObject:v18];
        }

        v8 = v60;
        v1 = v59;
        goto LABEL_30;
      }

      v17 = [a1 objectForKeyedSubscript:v11];
      if (!v17)
      {
        v1 = 34;
        goto LABEL_104;
      }

      v18 = v17;
      v19 = *v13;
      if (strncmp(*v13, "NSINTEGER", 9uLL))
      {
        if (!strncmp(v19, "NSSTRING", 8uLL))
        {
          objc_opt_class();
          v6 = v61;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v18 = 0;
          v6 = v61;
        }

        goto LABEL_42;
      }

      LODWORD(v72) = 0;
      *buf = 0;
      v6 = v61;
      if ((get_integer_value(v11, a1, buf, &v72) & 1) == 0)
      {
        v1 = v72;
        goto LABEL_104;
      }

      v18 = [*buf stringValue];
      if ([v11 compare:@"pid"])
      {
        goto LABEL_42;
      }

      v16 = 3;
      v56 = v18;
      v8 = v60;
      v1 = v59;
LABEL_29:
      if (v16 != 3)
      {
        goto LABEL_104;
      }

LABEL_30:
      ++v10;
    }

    while (v10 != v6);
    v20 = [a1 countByEnumeratingWithState:&v63 objects:v74 count:16];
    v6 = v20;
    if (v20)
    {
      continue;
    }

    break;
  }

  for (; v7; --v7)
  {
    [v4 addObject:{@"-d", v56}];
  }

  if (v56)
  {
    [v4 addObject:?];
  }

  v21 = v57;
  v22 = v58;
LABEL_52:
  v23 = malloc_type_malloc(8 * [v4 count] + 16, 0x10040436913F5uLL);
  if (!v23)
  {
    v1 = 12;
    goto LABEL_104;
  }

  v24 = v23;
  *v23 = strdup("gcore");
  if ([v4 count])
  {
    v25 = 1;
    do
    {
      v24[v25] = strdup([objc_msgSend(v4 objectAtIndexedSubscript:{v25 - 1), "UTF8String"}]);
      ++v25;
    }

    while (v25 <= [v4 count]);
  }

  v24[[v4 count] + 1] = 0;
  if ([v4 count] < 1)
  {
LABEL_61:
    v1 = 22;
    goto LABEL_100;
  }

  if (v21 - 1 <= 0xFFFFFFFD)
  {
    v26 = *MEMORY[0x277D85F48];
    init_port_set = v21;
    v27 = mach_ports_register(v26, &init_port_set, 1u);
    if (v27)
    {
      v28 = v27;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        create_gcore_with_options_cold_2(v28);
      }

      goto LABEL_61;
    }
  }

  v72 = 0;
  if (posix_spawnattr_init(&v72) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_3();
  }

  if (posix_spawnattr_setflags(&v72, 2) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_4();
  }

  if (posix_spawnattr_setflags(&v72, 0x4000) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_5();
  }

  if (posix_spawnattr_setflags(&v72, 12) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_6();
  }

  v71 = 0;
  if (((v22 < 0) & ~v8) == 0)
  {
    if (posix_spawnattr_init(&v71) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      create_gcore_with_options_cold_7();
      if ((v22 & 0x80000000) == 0)
      {
LABEL_83:
        if (posix_spawn_file_actions_addinherit_np(&v71, v22) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          create_gcore_with_options_cold_8();
        }
      }
    }

    else if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    if (v8)
    {
      v31 = fileno(*MEMORY[0x277D85E08]);
      if (posix_spawn_file_actions_addinherit_np(&v71, v31))
      {
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          create_gcore_with_options_cold_9();
        }
      }
    }
  }

  v69 = 0;
  v70 = -1;
  if (posix_spawnattr_setsigdefault(&v72, &v70) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_10();
  }

  if (posix_spawnattr_setsigmask(&v72, &v69) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_11();
  }

  v32 = v3;
  v68 = -1;
  v33 = *v24;
  v34 = _NSGetEnviron();
  v35 = posix_spawnp(&v68, v33, &v71, &v72, v24, *v34);
  v67 = v35;
  posix_spawnattr_destroy(&v72);
  if (v35)
  {
    v1 = v35;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      create_gcore_with_options_cold_12(v24, v35);
    }

    goto LABEL_99;
  }

  while (1)
  {
    while (1)
    {
      v39 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
      {
        v50 = *v24;
        *buf = 136315394;
        *&buf[4] = v50;
        *&buf[12] = 1024;
        *&buf[14] = v68;
        _os_log_debug_impl(&dword_24BC7B000, v39, OS_LOG_TYPE_DEBUG, "wait4 %s pid %d", buf, 0x12u);
      }

      v40 = wait4(v68, &v67, 0, 0);
      if (v40 != -1)
      {
        break;
      }

      v48 = *__error();
      v49 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
      {
        v51 = v68;
        v52 = strerror(v48);
        *buf = 67109634;
        *&buf[4] = v51;
        *&buf[8] = 1024;
        *&buf[10] = v48;
        *&buf[14] = 2080;
        *&buf[16] = v52;
        _os_log_debug_impl(&dword_24BC7B000, v49, OS_LOG_TYPE_DEBUG, "wait4: %d error: errno %d (%s)", buf, 0x18u);
      }

      v1 = v48;
      if (v48 != 4)
      {
        goto LABEL_99;
      }
    }

    v41 = v40;
    v42 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v41;
      *&buf[8] = 1024;
      *&buf[10] = v67;
      _os_log_debug_impl(&dword_24BC7B000, v42, OS_LOG_TYPE_DEBUG, "wait4: %d status 0x%x\n", buf, 0xEu);
    }

    v43 = v67;
    v44 = v67 & 0x7F;
    if (v44 != 127)
    {
      break;
    }

    v45 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      v46 = v43 >> 8;
      v47 = strsignal(v46);
      *buf = 67109634;
      *&buf[4] = v41;
      *&buf[8] = 1024;
      *&buf[10] = v46;
      *&buf[14] = 2080;
      *&buf[16] = v47;
      _os_log_debug_impl(&dword_24BC7B000, v45, OS_LOG_TYPE_DEBUG, "wait4: %d signal %d (%s)", buf, 0x18u);
    }
  }

  if ((v67 & 0x7F) != 0)
  {
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      create_gcore_with_options_cold_13(v44);
    }

    v1 = 4;
    goto LABEL_99;
  }

  v53 = BYTE1(v67);
  if (BYTE1(v67) > 0x49u)
  {
    if (BYTE1(v67) > 0x4Cu)
    {
      if (BYTE1(v67) == 77)
      {
        v1 = 1;
        goto LABEL_141;
      }

      if (BYTE1(v67) == 78)
      {
        v1 = 19;
        goto LABEL_141;
      }
    }

    else
    {
      if (BYTE1(v67) == 74)
      {
        v1 = 5;
        goto LABEL_141;
      }

      if (BYTE1(v67) == 75)
      {
        v1 = 35;
        goto LABEL_141;
      }
    }

LABEL_140:
    v1 = 22;
    goto LABEL_141;
  }

  if (BYTE1(v67) - 70 < 2)
  {
    v1 = 61;
    goto LABEL_141;
  }

  v1 = BYTE1(v67);
  if (!BYTE1(v67))
  {
    goto LABEL_99;
  }

  if (BYTE1(v67) != 73)
  {
    goto LABEL_140;
  }

  v1 = 13;
LABEL_141:
  v54 = logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    v55 = *v24;
    *buf = 67109890;
    *&buf[4] = v41;
    *&buf[8] = 2080;
    *&buf[10] = v55;
    *&buf[18] = 1024;
    *&buf[20] = v53;
    v76 = 1024;
    v77 = v1;
    _os_log_error_impl(&dword_24BC7B000, v54, OS_LOG_TYPE_ERROR, "wait4: %d %s exit status %d, ret %d", buf, 0x1Eu);
  }

LABEL_99:
  v3 = v32;
LABEL_100:
  if ([v4 count] != -2)
  {
    v36 = 0;
    do
    {
      free(v24[v36++]);
    }

    while (v36 < [v4 count] + 2);
  }

  free(v24);
LABEL_104:
  objc_autoreleasePoolPop(v3);
  v37 = *MEMORY[0x277D85DE8];
  return v1;
}

os_log_t __create_gcore_with_options_block_invoke()
{
  result = os_log_create("com.apple.gcore", "framework");
  logger = result;
  return result;
}

uint64_t get_integer_value(uint64_t a1, void *a2, uint64_t *a3, _DWORD *a4)
{
  v6 = [a2 objectForKeyedSubscript:a1];
  if (a4)
  {
    *a4 = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a3 = v6;
  }

  else if (a4)
  {
    *a4 = 34;
  }

  return isKindOfClass & 1;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void create_gcore_with_options_cold_2(mach_error_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(a1);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void create_gcore_with_options_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24BC7B000, v0, v1, "Expr posix_spawnattr_init(&spawnattr) failed with result %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_gcore_with_options_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24BC7B000, v0, v1, "Expr posix_spawnattr_setflags(&spawnattr, POSIX_SPAWN_SETPGROUP) failed with result %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_gcore_with_options_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24BC7B000, v0, v1, "Expr posix_spawnattr_setflags(&spawnattr, POSIX_SPAWN_CLOEXEC_DEFAULT) failed with result %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_gcore_with_options_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24BC7B000, v0, v1, "Expr posix_spawnattr_setflags(&spawnattr, POSIX_SPAWN_SETSIGDEF | POSIX_SPAWN_SETSIGMASK) failed with result %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_gcore_with_options_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24BC7B000, v0, v1, "Expr posix_spawnattr_init(&factions) failed with result %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_gcore_with_options_cold_8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24BC7B000, v0, v1, "Expr posix_spawn_file_actions_addinherit_np(&factions, corefd) failed with result %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_gcore_with_options_cold_9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24BC7B000, v0, v1, "Expr posix_spawn_file_actions_addinherit_np(&factions, fileno(stdout)) failed with result %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_gcore_with_options_cold_10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24BC7B000, v0, v1, "Expr posix_spawnattr_setsigdefault(&spawnattr, &all_signals) failed with result %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_gcore_with_options_cold_11()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24BC7B000, v0, v1, "Expr posix_spawnattr_setsigmask(&spawnattr, &no_signals) failed with result %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_gcore_with_options_cold_12(uint64_t *a1, int __errnum)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  strerror(__errnum);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

void create_gcore_with_options_cold_13(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  strsignal(a1);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x277D85DE8];
}