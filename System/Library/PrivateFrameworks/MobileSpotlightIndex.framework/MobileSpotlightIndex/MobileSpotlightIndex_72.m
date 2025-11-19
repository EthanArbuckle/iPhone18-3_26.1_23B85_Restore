uint64_t map_change_pgnum(uint64_t a1, int a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 856);
  v6 = v5[4];
  v7 = v5[2];
  if (v6 >= v7 || v5[4 * v6 + 7] != a2)
  {
    if (v7 < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v8 = v5 + 7;
      while (1)
      {
        v9 = *v8;
        v8 += 4;
        if (v9 == a2)
        {
          break;
        }

        if (v7 == ++v6)
        {
          goto LABEL_11;
        }
      }
    }
  }

  if (v6 >= v7)
  {
LABEL_11:
    v11 = *__error();
    v12 = _SILogForLogForCategory(7);
    v13 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v12, v13))
    {
      v15 = 136315394;
      v16 = a1 + 324;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_1C278D000, v12, v13, "%s : ERR: map_change_pgnum: BAD NEWS! pgnum 0x%x not found\n", &v15, 0x12u);
    }

    *__error() = v11;
    result = 22;
  }

  else
  {
    result = 0;
    v5[4 * v6 + 7] = a3;
    v5[3] |= 1u;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void __sdb_string_zone_once_f_block_invoke()
{
  zone = malloc_create_zone(0x10000uLL, 0);
  string_table_zone = zone;

  malloc_set_zone_name(zone, "sdb_string_table_zone");
}

malloc_zone_t *__sdb_map_zone_once_f_block_invoke()
{
  result = malloc_default_zone();
  sdb_map_zone = result;
  return result;
}

uint64_t update_db_header(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v47 = *MEMORY[0x1E69E9840];
  bzero(&v41, 0x1000uLL);
  v7 = fd_create_protected(v6, v4, 2, 0);
  v8 = v7;
  if (v7)
  {
    v9 = fd_pread(v7, &v41, 0x1000uLL, 0);
    if (v9 == 4096)
    {
      if (v41.i32[0] == 947155812)
      {
        v10.i64[0] = v41.i64[1];
        v10.i32[2] = v42;
        v11 = vrev32q_s8(v10);
        v42 = v11.u32[2];
        v41.i64[1] = v11.i64[0];
        v43 = vrev64q_s8(v43);
        v44 = vrev32q_s8(v44);
        v45 = vrev32q_s8(v45);
        v12 = bswap32(v41.i32[1] & 0x7FFFFF7F | 0x80000000);
        v41.i32[0] = 1685287992;
      }

      else
      {
        v12 = v41.i32[1] & 0x7FFFFF7F;
      }

      v41.i32[1] = v12;
      v22 = (*(v2 + 16))(v2);
      if ((v22 & 0x42) != 0)
      {
        if (v46)
        {
          v14 = v46;
        }

        else
        {
          v14 = 22;
        }

        v23 = *__error();
        v24 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v33 = 136315650;
          v34 = "update_db_header";
          v35 = 1024;
          v36 = 6732;
          v37 = 2080;
          *v38 = v4;
          _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: update_db_header (%s) flags check failed", &v33, 0x1Cu);
        }

        *__error() = v23;
        v17 = 6729;
      }

      else
      {
        if (v22 == v41.i32[1])
        {
          goto LABEL_33;
        }

        v41.i32[1] = v22;
        if ((v22 & 0x80) != 0)
        {
          v29.i64[0] = __PAIR64__(v22, v41.u32[0]);
          v29.i64[1] = v41.i64[1];
          v41 = vrev32q_s8(v29);
          v42 = bswap32(v42);
          v43 = vrev64q_s8(v43);
          v44 = vrev32q_s8(v44);
          v45 = vrev32q_s8(v45);
        }

        if (fd_pwrite(v8, &v41, 0x1000uLL, 0) == 4096)
        {
LABEL_33:
          fd_release(v8);
          v14 = 0;
          goto LABEL_28;
        }

        v30 = *__error();
        v31 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v33 = 136315650;
          v34 = "update_db_header";
          v35 = 1024;
          v36 = 6743;
          v37 = 2080;
          *v38 = v4;
          _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: update_db_header (%s) write failed", &v33, 0x1Cu);
        }

        *__error() = v30;
        v32 = *__error();
        if (v32)
        {
          v14 = v32;
        }

        else
        {
          v14 = 0xFFFFFFFFLL;
        }

        v17 = 6745;
      }
    }

    else
    {
      v18 = v9;
      v19 = *__error();
      if (v19)
      {
        v14 = v19;
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
      }

      v20 = *__error();
      v21 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v33 = 136316162;
        v34 = "update_db_header";
        v35 = 1024;
        v36 = 6709;
        v37 = 2080;
        *v38 = v4;
        *&v38[8] = 2048;
        *v39 = v18;
        *&v39[8] = 2048;
        v40 = 4096;
        _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: update_db_header (%s) fd_pread %zd != %zd", &v33, 0x30u);
      }

      *__error() = v20;
      v17 = 6707;
    }
  }

  else
  {
    v13 = *__error();
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0xFFFFFFFFLL;
    }

    v15 = *__error();
    v16 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v33 = 136315650;
      v34 = "update_db_header";
      v35 = 1024;
      v36 = 6701;
      v37 = 2080;
      *v38 = v4;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: update_db_header (%s) fd_create failed", &v33, 0x1Cu);
    }

    *__error() = v15;
    v17 = 6699;
  }

  fd_release(v8);
  v25 = *__error();
  v26 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v33 = 136316162;
    v34 = "update_db_header";
    v35 = 1024;
    v36 = 6754;
    v37 = 1024;
    *v38 = v14;
    *&v38[4] = 1024;
    *&v38[6] = v17;
    *v39 = 2080;
    *&v39[2] = v4;
    _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: update_db_header failed err:%d at %d for %s", &v33, 0x28u);
  }

  *__error() = v25;
LABEL_28:
  v27 = *MEMORY[0x1E69E9840];
  return v14;
}

char *db2_get_datastore_with_ctx(unsigned int *a1)
{
  v192 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[4];
  __base = 0;
  if (sdb_map_zone_once != -1)
  {
    dispatch_once(&sdb_map_zone_once, &__block_literal_global_131);
  }

  bzero(__s1, 0x400uLL);
  bzero(__dst, 0x400uLL);
  v5 = malloc_type_zone_calloc(sdb_map_zone, 1uLL, 0x1000uLL, 0x10A0040B82A6DE8uLL);
  v6 = malloc_type_zone_calloc(sdb_map_zone, 1uLL, 0x1000uLL, 0x10A0040B82A6DE8uLL);
  v7 = v6;
  if (!v5 || !v6)
  {
    v13 = 0;
    v19 = 0;
    if (v5)
    {
      goto LABEL_60;
    }

    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_12:
    free(v7);
LABEL_13:
    if (v13 != v19)
    {
      fd_release(v19);
    }

    fd_release(v13);
    free(__base);
    v5 = 0;
    goto LABEL_16;
  }

  v8 = (v4 >> 2) & 2;
  v9 = v8 ^ 2;
  v10 = a1[5];
  *(v5 + 246) = v10;
  v6[61].i32[2] = v10;
  v11 = (a1[4] << 13) >> 31;
  v12 = fd_create_protected(v2, v3, v8 ^ 2u, v11 & 3);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_21;
  }

  *buf = 0;
  v14 = _fd_acquire_fd(v12, buf);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = v14;
    goto LABEL_8;
  }

  if ((v4 & 0x10000) == 0 || v8 || (fd_make_readonly(v13), v22 = _fd_acquire_fd(v13, buf), v22 < 0))
  {
LABEL_21:
    v19 = 0;
    goto LABEL_60;
  }

  v15 = v22;
  v4 |= 8u;
LABEL_8:
  _fd_release_fd(v13, v15, 0, *buf);
  v16 = strrchr(v3, 47);
  if (v16)
  {
    v17 = v16;
    strlcpy(__dst, v3, v16 - v3 + 2);
    strlcat(__dst, ".", 0x400uLL);
    v18 = v17 + 1;
  }

  else
  {
    strcpy(__dst, ".");
    v18 = v3;
  }

  strlcat(__dst, v18, 0x400uLL);
  if ((v4 & 0x28) == 0x20)
  {
    v23 = v9 | 0x200;
  }

  else
  {
    v23 = v9;
  }

  v19 = fd_create_protected(v2, __dst, v23, v11 & 3);
  if (!v19)
  {
    goto LABEL_60;
  }

  v24 = *(v5 + 106);
  if (v24)
  {
    *(v24 + 56) |= 4u;
  }

  *buf = 0;
  *__error() = 0;
  v25 = _fd_acquire_fd(v19, buf);
  if (v25 < 0)
  {
    if (*__error() != 2)
    {
      goto LABEL_60;
    }

    fd_release(v19);
    v19 = v13;
    if ((v4 & 8) == 0)
    {
      v19 = fd_create_protected(v2, __dst, 2562, v11 & 3);
      if (!v19)
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
    _fd_release_fd(v19, v25, 0, *buf);
  }

  v26 = fd_pread(v13, v5, 0x1000uLL, 0);
  if (v26 != 4096)
  {
    v29 = v26;
    *buf = 0;
    v30 = _fd_acquire_fd(v13, buf);
    if (v30 != -1)
    {
      v31 = v30;
      fcntl(v30, 50, __s1);
      _fd_release_fd(v13, v31, 0, *buf);
    }

    if (strstr(__s1, "130162031.fixed"))
    {
      v149 = __si_assert_copy_extra_3233(v13, -1);
      v150 = v149;
      v151 = "";
      if (v149)
      {
        v151 = v149;
      }

      __message_assert("%s:%u: failed assertion '%s' %s should not try to read %s", "sdb2.c", 7254, "strstr(full_path, 130162031.fixed) == NULL", v151, __s1);
      free(v150);
      if (__valid_fsp(v13))
      {
        v152 = 2989;
      }

      else
      {
        v152 = 3072;
      }

      *v152 = -559038737;
      abort();
    }

    v32 = *__error();
    v33 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "db2_get_datastore_with_ctx";
      *&buf[12] = 1024;
      *&buf[14] = 7255;
      v185 = 2080;
      *v186 = __s1;
      *&v186[8] = 1024;
      v187 = 4096;
      v188 = 2048;
      v189 = v29;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_get_datastore: ERR: could not read %d bytes (read %zd bytes)\n", buf, 0x2Cu);
    }

    *__error() = v32;
    bzero(v5, 0x1000uLL);
    goto LABEL_60;
  }

  *(v5 + 984) = 0u;
  *(v5 + 1000) = 0u;
  *(v5 + 952) = 0u;
  *(v5 + 968) = 0u;
  *(v5 + 920) = 0u;
  *(v5 + 936) = 0u;
  *(v5 + 888) = 0u;
  *(v5 + 904) = 0u;
  *(v5 + 856) = 0u;
  *(v5 + 872) = 0u;
  *(v5 + 824) = 0u;
  *(v5 + 840) = 0u;
  *(v5 + 792) = 0u;
  *(v5 + 808) = 0u;
  *(v5 + 760) = 0u;
  *(v5 + 776) = 0u;
  *(v5 + 728) = 0u;
  *(v5 + 744) = 0u;
  *(v5 + 696) = 0u;
  *(v5 + 712) = 0u;
  *(v5 + 664) = 0u;
  *(v5 + 680) = 0u;
  *(v5 + 632) = 0u;
  *(v5 + 648) = 0u;
  *(v5 + 600) = 0u;
  *(v5 + 616) = 0u;
  *(v5 + 584) = 0u;
  if (fd_pread(v19, v7, 0x1000uLL, 0) != 4096)
  {
    bzero(v7, 0x1000uLL);
  }

  *(&v7[61] + 8) = 0u;
  *(&v7[62] + 8) = 0u;
  *(&v7[59] + 8) = 0u;
  *(&v7[60] + 8) = 0u;
  *(&v7[57] + 8) = 0u;
  *(&v7[58] + 8) = 0u;
  *(&v7[55] + 8) = 0u;
  *(&v7[56] + 8) = 0u;
  *(&v7[53] + 8) = 0u;
  *(&v7[54] + 8) = 0u;
  *(&v7[51] + 8) = 0u;
  *(&v7[52] + 8) = 0u;
  *(&v7[49] + 8) = 0u;
  *(&v7[50] + 8) = 0u;
  *(&v7[47] + 8) = 0u;
  *(&v7[48] + 8) = 0u;
  *(&v7[45] + 8) = 0u;
  *(&v7[46] + 8) = 0u;
  *(&v7[43] + 8) = 0u;
  *(&v7[44] + 8) = 0u;
  *(&v7[41] + 8) = 0u;
  *(&v7[42] + 8) = 0u;
  *(&v7[39] + 8) = 0u;
  *(&v7[40] + 8) = 0u;
  *(&v7[37] + 8) = 0u;
  *(&v7[38] + 8) = 0u;
  *(&v7[36] + 8) = 0u;
  *(v5 + 105) = v13;
  *(v5 + 106) = v19;
  *(v5 + 107) = 0;
  v7[53].i64[1] = 0;
  if (*v5 == 947155812)
  {
    v27 = vrev32q_s8(*v5);
    *v5 = v27;
    *(v5 + 4) = bswap32(*(v5 + 4));
    *(v5 + 20) = vrev64q_s8(*(v5 + 20));
    *(v5 + 36) = vrev32q_s8(*(v5 + 36));
    *(v5 + 52) = vrev32q_s8(*(v5 + 52));
    v28 = v27.i32[1] & 0x7FFFFF7F | 0x80;
  }

  else
  {
    v28 = *(v5 + 1) & 0x7FFFFF7F;
  }

  *(v5 + 1) = v28;
  if (v7->i32[0] == 947155812)
  {
    v34 = vrev32q_s8(*v7);
    *v7 = v34;
    v7[1].i32[0] = bswap32(v7[1].u32[0]);
    *(v7 + 20) = vrev64q_s8(*(v7 + 20));
    *(v7 + 36) = vrev32q_s8(*(v7 + 36));
    *(v7 + 52) = vrev32q_s8(*(v7 + 52));
    v35 = v34.i32[1] & 0x7FFFFF7F | 0x80;
  }

  else
  {
    v35 = v7->i32[1] & 0x7FFFFF7F;
  }

  v7->i32[1] = v35;
  if (*v5 != 1685287992)
  {
    *buf = 0;
    v42 = _fd_acquire_fd(v13, buf);
    if (v42 != -1)
    {
      v43 = v42;
      fcntl(v42, 50, __s1);
      _fd_release_fd(v13, v43, 0, *buf);
    }

    v36 = *__error();
    v44 = _SILogForLogForCategory(7);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    v82 = *v5;
    *buf = 136316162;
    *&buf[4] = "db2_get_datastore_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 7308;
    v185 = 2080;
    *v186 = __s1;
    *&v186[8] = 1024;
    v187 = v82;
    v188 = 1024;
    LODWORD(v189) = 1685287992;
    v39 = "%s:%d: %s : db2_get_datastore: ERR: signature 0x%x != 0x%x. bailing out.\n";
    v40 = v44;
    v41 = 40;
    goto LABEL_117;
  }

  if (*(v5 + 11) <= 0x13u)
  {
    fd_realpath(v13, __s1);
    v36 = *__error();
    v37 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = *(v5 + 11);
      *buf = 136315906;
      *&buf[4] = "db2_get_datastore_with_ctx";
      *&buf[12] = 1024;
      *&buf[14] = 7315;
      v185 = 2080;
      *v186 = __s1;
      *&v186[8] = 1024;
      v187 = v38;
      v39 = "%s:%d: %s : db2_get_datastore: ERR: bad page size %d bailing out.\n";
LABEL_54:
      v40 = v37;
      v41 = 34;
LABEL_117:
      _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
    }

LABEL_58:
    v45 = __error();
LABEL_59:
    *v45 = v36;
    goto LABEL_60;
  }

  v164 = v4 & 8;
  if (v7->i32[0] != 1685287992 || v7[2].i32[3] <= 0x13u)
  {
    v68 = *__error();
    v69 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "db2_get_datastore_with_ctx";
      *&buf[12] = 1024;
      *&buf[14] = 7321;
      _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: bad shadow. recover.", buf, 0x12u);
    }

    *__error() = v68;
    bzero(v7, 0x1000uLL);
    v35 = 0;
  }

  if (((*(v5 + 1) | v35) & 0x30) != 0)
  {
LABEL_60:
    *(v5 + 201) = (*(v5 + 1) >> 10) & 2 | *(v5 + 1) & 8 | (*(v5 + 1) >> 14) & 4 | (*(v5 + 1) >> 8) & 1 | (*(v5 + 1) >> 13) & 0x10;
    v46 = *(v5 + 107);
    if (v46)
    {
      free(v46);
      *(v5 + 107) = 0;
    }

    if (!*(v5 + 116))
    {
LABEL_85:
      cleanup_string_tables(v5);
      free(v5);
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v47 = __THREAD_SLOT_KEY;
    if (!__THREAD_SLOT_KEY)
    {
      makeThreadId();
      v47 = __THREAD_SLOT_KEY;
    }

    v48 = pthread_getspecific(v47);
    HIDWORD(v50) = qos_class_self() - 9;
    LODWORD(v50) = HIDWORD(v50);
    v49 = v50 >> 2;
    if (v49 > 6)
    {
      v51 = 0;
    }

    else
    {
      v51 = dword_1C2BFF8F0[v49];
    }

    v52 = pthread_mutex_lock((v5 + 584));
    if (!*(v5 + 96) && !*(v5 + 195) && (v5[796] & 1) == 0)
    {
      if (v51 > 5)
      {
LABEL_92:
        *(v5 + 96) = pthread_self();
        goto LABEL_72;
      }

      v65 = v51 - 6;
      v66 = &v5[16 * v51 + 648];
      while (!*v66)
      {
        v66 += 16;
        if (__CFADD__(v65++, 1))
        {
          goto LABEL_92;
        }
      }
    }

    db_rwlock_wait((v5 + 584), v51, 2);
LABEL_72:
    pthread_mutex_unlock((v5 + 584));
    if (v52)
    {
      v155 = *__error();
      v156 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "db2_get_datastore_with_ctx";
        *&buf[12] = 1024;
        *&buf[14] = 7724;
        v185 = 1024;
        *v186 = v52;
        _os_log_error_impl(&dword_1C278D000, v156, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
      }

      *__error() = v155;
      sdb2_die(v5, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 7724);
    }

    if (v48)
    {
      v53 = CIOnThreadCleanUpPush(v48 - 1, db_write_unlock, (v5 + 584));
    }

    else
    {
      v53 = -1;
    }

    v54 = *(v5 + 116);
    db_cache_clear(v54, &__block_literal_global_14_16022);
    *&buf[8] = 0;
    *buf = *v54;
    if (atomic_load((v54 + 248)))
    {
      for (i = 0; i < v57; ++i)
      {
        *&buf[8] = i;
        _cache_remove(buf);
        v57 = atomic_load((v54 + 248));
      }
    }

    atomic_store(0, (v54 + 248));
    free(v54);
    v58 = pthread_mutex_lock((v5 + 584));
    *(v5 + 197) = 0;
    v59 = *(v5 + 95);
    *(v5 + 760) = 0u;
    v60 = *(v5 + 195) != 0;
    v5[796] = 0;
    db_rwlock_wakeup((v5 + 584), v60, 0);
    pthread_mutex_unlock((v5 + 584));
    if (v59)
    {
      pthread_override_qos_class_end_np(v59);
    }

    if (v58)
    {
      sdb2_die(v5, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 7726);
    }

    if (v48)
    {
      CIOnThreadCleanUpClearItem(v48 - 1, v53);
      v61 = &threadData[9 * (v48 - 1)];
      v64 = *(v61 + 14);
      v62 = v61 + 7;
      v63 = v64;
      if (v53 + 1 == v64)
      {
        *v62 = v63 - 1;
      }
    }

    goto LABEL_85;
  }

  *(v5 + 54) = 0u;
  sdb_zone_init(*(v5 + 201));
  v70 = v4 & 8;
  v71 = v164 >> 2;
  v72 = v7->i32[1];
  if ((v72 & 0x200) != 0)
  {
    v160 = *__error();
    v74 = _SILogForLogForCategory(7);
    v75 = 2 * (dword_1EBF46AE8 < 4);
    v76 = v74;
    if (os_log_type_enabled(v74, v75))
    {
      *buf = 136315138;
      *&buf[4] = v5 + 324;
      _os_log_impl(&dword_1C278D000, v76, v75, "%s : db2_get_datastore opening - clean needs shadow\n", buf, 0xCu);
    }

    *__error() = v160;
    if ((v4 & 0x20) == 0)
    {
      v161 = *__error();
      v77 = _SILogForLogForCategory(7);
      v78 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v77, v78))
      {
        *buf = 136315138;
        *&buf[4] = v5 + 324;
        _os_log_impl(&dword_1C278D000, v77, v78, "%s : db2_get_datastore open - shadow to master\n", buf, 0xCu);
      }

      *__error() = v161;
      if (isRegisteredForCloning(v2))
      {
        v79 = fd_copyfile(v19, v13, 1);
      }

      else
      {
        v79 = copy_datastore(v5, v19, v13, 1);
      }

      v71 = v164 >> 2;
      v70 = v4 & 8;
      if (v79)
      {
        v83 = v79;
        v36 = *__error();
        v37 = _SILogForLogForCategory(7);
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        *buf = 136315906;
        *&buf[4] = "db2_get_datastore_with_ctx";
        *&buf[12] = 1024;
        *&buf[14] = 7361;
        v185 = 2080;
        *v186 = v5 + 324;
        *&v186[8] = 1024;
        v187 = v83;
        v39 = "%s:%d: %s : db2_get_datastore copyFile or copy_datastore err:%d\n";
        goto LABEL_54;
      }

      if ((v4 & 8) == 0)
      {
        db_store_dirty_chunk_info(v5, v2, 1, 0);
        v71 = 0;
      }

      goto LABEL_131;
    }

    fd_realpath(v13, __s1);
    *__error() = 22;
    v36 = *__error();
    v81 = _SILogForLogForCategory(7);
    if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    *buf = 136315650;
    *&buf[4] = "db2_get_datastore_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 7348;
    v185 = 2080;
    *v186 = __s1;
    v39 = "%s:%d: %s : db2_get_datastore: ERR: requested recovery from dirty master.\n";
    goto LABEL_115;
  }

  if ((v72 & 0x400) != 0)
  {
    *(v7 + 840) = *(v5 + 840);
    *(v5 + 105) = 0;
    *(v5 + 106) = 0;
    *(v5 + 108) = 0;
    *(v5 + 109) = 0;
    v80 = v5;
    v5 = v7;
    goto LABEL_132;
  }

  if ((v72 & 1) == 0)
  {
    if ((*(v5 + 2) & 0x201) != 0)
    {
      if (isRegisteredForCloning(v2))
      {
        v73 = fd_copyfile(v13, v19, 1);
      }

      else
      {
        v73 = copy_datastore(v5, v13, v19, 0);
      }

      v162 = v73;
      v84 = *__error();
      v85 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v85, OS_LOG_TYPE_DEFAULT, "Open sdb, recover from shadow", buf, 2u);
      }

      *__error() = v84;
      if (!v162)
      {
        v70 = v4 & 8;
        v71 = (v164 >> 2) | 0x84;
        goto LABEL_131;
      }

      goto LABEL_60;
    }

    fd_realpath(v13, __s1);
    v36 = *__error();
    v81 = _SILogForLogForCategory(7);
    if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    *buf = 136315650;
    *&buf[4] = "db2_get_datastore_with_ctx";
    *&buf[12] = 1024;
    *&buf[14] = 7416;
    v185 = 2080;
    *v186 = __s1;
    v39 = "%s:%d: %s : db2_get_datastore: ERR: both shadow and master are dirty!  no recovery possible.\n";
LABEL_115:
    v40 = v81;
    v41 = 28;
    goto LABEL_117;
  }

LABEL_131:
  v80 = v7;
LABEL_132:
  v86 = *(v5 + 1);
  *(v5 + 1) = v86 & 0xFFFFFFF7 | v70;
  *(v5 + 201) = (v86 >> 14) & 4 | (v86 >> 10) & 2 | (v86 >> 8) & 1 | (v86 >> 13) & 0x10 | v70;
  *(v5 + 54) = 0u;
  *(v5 + 55) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 57) = 0u;
  free(v80);
  *(v5 + 99) = 0;
  *(v5 + 760) = 0u;
  *(v5 + 776) = 0u;
  *(v5 + 728) = 0u;
  *(v5 + 744) = 0u;
  *(v5 + 696) = 0u;
  *(v5 + 712) = 0u;
  *(v5 + 664) = 0u;
  *(v5 + 680) = 0u;
  *(v5 + 632) = 0u;
  *(v5 + 648) = 0u;
  *(v5 + 600) = 0u;
  *(v5 + 616) = 0u;
  *(v5 + 584) = 0u;
  pthread_mutex_init((v5 + 584), 0);
  if (load_map(v5))
  {
    v7 = 0;
    goto LABEL_60;
  }

  *(v5 + 116) = db_cache_alloc(v5);
  v87 = malloc_type_malloc(0x48uLL, 0x10A004087A21FEBuLL);
  *v87 = 0u;
  v87[1] = 0u;
  *(v87 + 8) = 1065353216;
  *(v87 + 40) = 0u;
  *(v87 + 56) = 0u;
  *(v5 + 124) = v87;
  *(v5 + 808) = 0u;
  db2_set_garbage_collector(v5, &__block_literal_global_50_14875, &__block_literal_global_53_14876, &__block_literal_global_56);
  *(v5 + 104) = 0;
  *(v5 + 122) = *(a1 + 3);
  if ((v5[6] & 3) != 0)
  {
    bzero(buf, 0x400uLL);
    v88 = strcmp(v3, "store.db");
    v89 = "db";
    if (v88)
    {
      v89 = v3;
    }

    snprintf(buf, 0x400uLL, "%sStr-%d.map", v89, 1);
    v169 = 0;
    v174 = 0u;
    v167 = v2;
    v168 = buf;
    v170 = _db2_synced_block_callback;
    v171 = _db2_unmap_callback;
    v172 = 0;
    *&v173 = 0;
    *(&v173 + 1) = v5;
    *&v174 = *(v5 + 122);
    v163 = v71;
    v90 = v71 | 0x200;
    LODWORD(v169) = 2;
    HIDWORD(v169) = v90;
    v91 = data_map_init_with_ctx(&v167);
    *(v5 + 110) = v91;
    if (v91)
    {
      bzero(buf, 0x400uLL);
      v92 = strcmp(v3, "store.db");
      v93 = "db";
      if (v92)
      {
        v93 = v3;
      }

      snprintf(buf, 0x400uLL, "%sStr-%d.map", v93, 2);
      LODWORD(v169) = 0;
      v173 = 0u;
      v174 = 0u;
      v167 = v2;
      v168 = buf;
      HIDWORD(v169) = v163;
      v170 = _db2_synced_block_callback;
      v172 = 0;
      *&v173 = 0;
      v171 = _db2_unmap_callback;
      v94 = *(v5 + 122);
      *(&v173 + 1) = v5;
      *&v174 = v94;
      DWORD2(v174) = 1;
      v95 = data_map_init_with_ctx(&v167);
      *(v5 + 111) = v95;
      if (v95)
      {
        bzero(buf, 0x400uLL);
        v96 = strcmp(v3, "store.db");
        v97 = "db";
        if (v96)
        {
          v97 = v3;
        }

        snprintf(buf, 0x400uLL, "%sStr-%d.map", v97, 3);
        LODWORD(v169) = 0;
        v173 = 0u;
        v174 = 0u;
        v167 = v2;
        v168 = buf;
        HIDWORD(v169) = v163;
        v170 = _db2_synced_block_callback;
        v172 = 0;
        *&v173 = 0;
        v171 = _db2_unmap_callback;
        v98 = *(v5 + 122);
        *(&v173 + 1) = v5;
        *&v174 = v98;
        DWORD2(v174) = 2;
        v99 = data_map_init_with_ctx(&v167);
        *(v5 + 112) = v99;
        if (v99)
        {
          bzero(buf, 0x400uLL);
          v100 = strcmp(v3, "store.db");
          v101 = "db";
          if (v100)
          {
            v101 = v3;
          }

          snprintf(buf, 0x400uLL, "%sStr-%d.map", v101, 4);
          v169 = 0;
          v173 = 0u;
          v174 = 0u;
          v167 = v2;
          v168 = buf;
          v170 = _db2_synced_block_callback;
          v172 = 0;
          *&v173 = 0;
          v171 = _db2_unmap_callback;
          v102 = *(v5 + 122);
          *(&v173 + 1) = v5;
          *&v174 = v102;
          DWORD2(v174) = 3;
          HIDWORD(v169) = v90;
          v103 = data_map_init_with_ctx(&v167);
          *(v5 + 113) = v103;
          if (v103)
          {
            bzero(buf, 0x400uLL);
            v104 = strcmp(v3, "store.db");
            v105 = "db";
            if (v104)
            {
              v105 = v3;
            }

            snprintf(buf, 0x400uLL, "%sStr-%d.map", v105, 5);
            LODWORD(v169) = 0;
            v173 = 0u;
            v174 = 0u;
            v167 = v2;
            v168 = buf;
            HIDWORD(v169) = v163;
            v170 = _db2_synced_block_callback;
            v172 = 0;
            *&v173 = 0;
            v171 = _db2_unmap_callback;
            v106 = *(v5 + 122);
            *(&v173 + 1) = v5;
            *&v174 = v106;
            DWORD2(v174) = 4;
            v107 = data_map_init_with_ctx(&v167);
            *(v5 + 114) = v107;
            if (v107)
            {
              bzero(buf, 0x400uLL);
              v108 = strcmp(v3, "store.db");
              v109 = "db";
              if (v108)
              {
                v109 = v3;
              }

              snprintf(buf, 0x400uLL, "%sStr-%d.map", v109, 6);
              v169 = 0;
              v173 = 0u;
              v174 = 0u;
              v167 = v2;
              v168 = buf;
              v170 = _db2_synced_block_callback;
              v172 = 0;
              *&v173 = 0;
              v171 = _db2_unmap_callback;
              v110 = *(v5 + 122);
              *(&v173 + 1) = v5;
              *&v174 = v110;
              DWORD2(v174) = 5;
              LODWORD(v169) = 4;
              HIDWORD(v169) = v163 | 0x240;
              v111 = data_map_init_with_ctx(&v167);
              *(v5 + 115) = v111;
              if (v111)
              {
                goto LABEL_188;
              }

              if (v70)
              {
                goto LABEL_188;
              }

              HIDWORD(v169) |= 0x201u;
              v112 = data_map_init_with_ctx(&v167);
              *(v5 + 115) = v112;
              if (v112)
              {
                goto LABEL_188;
              }
            }
          }
        }
      }
    }

    v36 = *__error();
    v113 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      v138 = __error();
      v139 = strerror(*v138);
      *v176 = 136315906;
      v177 = "db2_get_datastore_with_ctx";
      v178 = 1024;
      v179 = 7511;
      v180 = 2080;
      v181 = buf;
      v182 = 2080;
      v183 = v139;
      _os_log_error_impl(&dword_1C278D000, v113, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: can't init the string table! (%s)\n", v176, 0x26u);
    }

    v45 = __error();
    v7 = 0;
    goto LABEL_59;
  }

  if (sdb_string_zone_once != -1)
  {
    dispatch_once(&sdb_string_zone_once, &__block_literal_global_136);
  }

  v165 = 16;
  v166 = 0;
  for (j = 1; j != 6; ++j)
  {
    if (load_string_table(v5, j - 1, v4, &__base, &v166, &v165))
    {
      if (v166)
      {
        destroy_string_table(v5, 0);
        if (j != 1)
        {
          destroy_string_table(v5, 1u);
          if (j != 2)
          {
            destroy_string_table(v5, 2u);
            if (j != 3)
            {
              destroy_string_table(v5, 3u);
              if (j != 4)
              {
                destroy_string_table(v5, 4u);
              }
            }
          }
        }
      }

      *(v5 + 56) = 0u;
      *(v5 + 57) = 0u;
      *(v5 + 55) = 0u;
      v7 = 0;
      goto LABEL_60;
    }
  }

  bzero(buf, 0x400uLL);
  v115 = strcmp(v3, "store.db");
  v116 = "db";
  if (v115)
  {
    v116 = v3;
  }

  snprintf(buf, 0x400uLL, "%sStr-%d.map", v116, 6);
  v169 = 0;
  v173 = 0u;
  v174 = 0u;
  v167 = v2;
  v168 = buf;
  v170 = _db2_synced_block_callback;
  v172 = 0;
  *&v173 = 0;
  v171 = _db2_unmap_callback;
  v117 = *(v5 + 122);
  *(&v173 + 1) = v5;
  *&v174 = v117;
  DWORD2(v174) = 5;
  v169 = 0x24100000004;
  v118 = data_map_init_with_ctx(&v167);
  *(v5 + 115) = v118;
  if (!v118 && !v70)
  {
    HIDWORD(v169) |= 0x201u;
    v119 = data_map_init_with_ctx(&v167);
    *(v5 + 115) = v119;
    if (!v119)
    {
      v136 = *__error();
      v137 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
      {
        v153 = __error();
        v154 = strerror(*v153);
        *v176 = 136315906;
        v177 = "db2_get_datastore_with_ctx";
        v178 = 1024;
        v179 = 7554;
        v180 = 2080;
        v181 = buf;
        v182 = 2080;
        v183 = v154;
        _os_log_error_impl(&dword_1C278D000, v137, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: can't init the string table! (%s)\n", v176, 0x26u);
      }

      *__error() = v136;
      v7 = 0;
      goto LABEL_60;
    }
  }

  v120 = v166;
  if (v166)
  {
    *(v5 + 1) |= 0x20000u;
    *(v5 + 201) |= 0x10u;
    db2_dirty_datastore(v5);
    qsort_b(__base, v120, 4uLL, &__block_literal_global_61);
    v167 = 0;
    v121 = CICleanUpThreadLocGet(&v167);
    v122 = _db_write_lock((v5 + 584));
    if (v122)
    {
      v157 = v122;
      v158 = *__error();
      v159 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "db2_get_datastore_with_ctx";
        *&buf[12] = 1024;
        *&buf[14] = 7584;
        v185 = 1024;
        *v186 = v157;
        _os_log_error_impl(&dword_1C278D000, v159, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
      }

      *__error() = v158;
      sdb2_die(v5, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 7584);
    }

    if (v121)
    {
      v123 = CIOnThreadCleanUpPush(v167, db_write_unlock, (v5 + 584));
    }

    else
    {
      v123 = -1;
    }

    _dirty_datastore_locked(v5, 0);
    v124 = v166;
    if (v166)
    {
      v125 = __base;
      do
      {
        v126 = *v125++;
        page_free(v5, v126, buf, 0);
        --v124;
      }

      while (v124);
    }

    if (db_write_unlock((v5 + 584)))
    {
      sdb2_die(v5, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 7591);
    }

    if (v121)
    {
      v127 = v167;
      CIOnThreadCleanUpClearItem(v167, v123);
      v128 = &threadData[9 * v127];
      v131 = *(v128 + 14);
      v129 = v128 + 7;
      v130 = v131;
      if (v123 + 1 == v131)
      {
        *v129 = v130 - 1;
      }
    }
  }

  free(__base);
LABEL_188:
  if (!v70 && (v5[804] & 0x14) != 0)
  {
    v132 = *(v5 + 110);
    v133 = _data_map_version(v132);
    if (_data_map_version(*(v5 + 111)) == 8)
    {
      v134 = *__error();
      v135 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "db2_get_datastore_with_ctx";
        *&buf[12] = 1024;
        *&buf[14] = 7606;
        v185 = 1024;
        *v186 = v133;
        *&v186[4] = 1024;
        *&v186[6] = 8;
        _os_log_error_impl(&dword_1C278D000, v135, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string table version (%d %d)", buf, 0x1Eu);
      }

      v7 = 0;
      *__error() = v134;
      goto LABEL_60;
    }

    if ((_data_map_version_is_current(v132) & 1) == 0)
    {
      v140 = *__error();
      v141 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "db2_get_datastore_with_ctx";
        *&buf[12] = 1024;
        *&buf[14] = 7611;
        _os_log_error_impl(&dword_1C278D000, v141, OS_LOG_TYPE_ERROR, "%s:%d: Upgrading string flag data", buf, 0x12u);
      }

      *__error() = v140;
      v142 = data_map_count(v132);
      if (v142)
      {
        for (k = v142; k; --k)
        {
          data = data_map_get_data(v132, k, 0);
          v145 = strlen(data);
          if (!data)
          {
            continue;
          }

          v146 = v145;
          if (v145 >= 0xF && (!strcmp(data, "_kMDItemRelatedObjects") || !strcmp(data, "_kMDItemRelatedObjectsWithBundleID") || !strcmp(data, "_kMDItemLaunchString") || !strcmp(data, "_kMDItemActivityLaunchDates") || !strcmp(data, "_kMDItemRankingLaunchStrings") || !strcmp(data, "_kMDItemRankingLaunchDates") || !strcmp(data, "_kMDItemGroupId") || !strcmp(data, "_kMDItemShortcutLastUsedDate") || v146 != 15 && (!strcmp(data, "kMDItemAttributeChangeDate") || !strcmp(data, "kMDItemLastUsedDate") || !strcmp(data, "kMDItemLastUsedDate_Ranking") || !strcmp(data, "kMDItemUsedDates"))))
          {
            continue;
          }

          v147 = *(data - 1);
          if (!strcmp(data, "_kStoreMetadataVersion") || !strncmp(data, "kMDStore", 8uLL))
          {
            if ((v147 & 0x40) == 0)
            {
              continue;
            }

            v148 = v147 & 0xBF;
          }

          else
          {
            if ((v147 & 0x40) != 0)
            {
              continue;
            }

            v148 = v147 | 0x40;
          }

          *(data - 1) = v148;
        }
      }

      _data_map_version_update(v132);
    }
  }

  *(v5 + 1000) = *(a1 + 10);
LABEL_16:
  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

void sdb_zone_init(char a1)
{
  if ((a1 & 0x14) == 0 && sdb_string_zone_once != -1)
  {
    dispatch_once(&sdb_string_zone_once, &__block_literal_global_136);
  }

  if (sdb_map_zone_once != -1)
  {

    dispatch_once(&sdb_map_zone_once, &__block_literal_global_131);
  }
}

uint64_t copy_datastore(uint64_t a1, _DWORD *a2, uint64_t a3, char a4)
{
  v5 = a2;
  v82 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 840);
  if (v6 != a2 && *(a1 + 848) != a2)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "copy_datastore";
      *&buf[12] = 1024;
      *&buf[14] = 6532;
      v9 = "%s:%d: sdb: ERR: copy_datastore: source is not a valid fd";
LABEL_70:
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v6 != a3 && *(a1 + 848) != a3)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "copy_datastore";
      *&buf[12] = 1024;
      *&buf[14] = 6537;
      v9 = "%s:%d: sdb: ERR: copy_datastore: destination is not a valid fd";
      goto LABEL_70;
    }

LABEL_8:
    *__error() = v7;
LABEL_22:
    result = 22;
    goto LABEL_23;
  }

  v10 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
  if (!v10)
  {
LABEL_19:
    v26 = *__error();
    v27 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "copy_datastore";
      *&buf[12] = 1024;
      *&buf[14] = 6542;
      v80 = 2080;
      *v81 = a1 + 324;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: sdb: ERR: invalid master datastore! (%s)\n", buf, 0x1Cu);
    }

    *__error() = v26;
    goto LABEL_22;
  }

  v11 = v10;
  v12 = fd_pread(v5, v10, 0x1000uLL, 0);
  if (v12 != 4096)
  {
    v19 = v12;
    v20 = *__error();
    v21 = *__error();
    v22 = _SILogForLogForCategory(7);
    v23 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *__error();
      *buf = 67109632;
      *&buf[4] = v24;
      *&buf[8] = 2048;
      *&buf[10] = v19;
      v80 = 2048;
      *v81 = 4096;
      _os_log_impl(&dword_1C278D000, v22, v23, "sdb: validate_datastore: ERR: invalid datastore header size (%d) %zd != %zd", buf, 0x1Cu);
    }

    *__error() = v21;
    goto LABEL_16;
  }

  v14 = *v11;
  if (*v11 == 947155812)
  {
    v13.i64[0] = *(v11 + 1);
    v13.i32[2] = *(v11 + 4);
    v15 = vrev32q_s8(v13);
    *(v11 + 4) = v15.i32[2];
    v16 = *(v11 + 1);
    *(v11 + 1) = v15.i64[0];
    *(v11 + 20) = vrev64q_s8(*(v11 + 20));
    v17 = vrev32q_s8(*(v11 + 36));
    *(v11 + 36) = v17;
    *(v11 + 52) = vrev32q_s8(*(v11 + 52));
    *v11 = 1685287992;
    *(v11 + 1) = bswap32(v16 & 0x7FFFFF7F | 0x80000000);
    v18 = v17.u32[2];
    goto LABEL_26;
  }

  *(v11 + 1) &= 0x7FFFFF7Fu;
  if (v14 != 1685287992)
  {
    v20 = *__error();
    v48 = _SILogForLogForCategory(7);
    v49 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = *v11;
      *buf = 67109120;
      *&buf[4] = v50;
      _os_log_impl(&dword_1C278D000, v48, v49, "sdb: validate_datastore: ERR: invalid datastore signature: 0x%x\n", buf, 8u);
    }

LABEL_16:
    *__error() = v20;
LABEL_17:
    v25 = v11;
LABEL_18:
    free(v25);
    goto LABEL_19;
  }

  v18 = *(v11 + 11);
LABEL_26:
  if (v18 <= 0x14)
  {
    v30 = 20;
  }

  else
  {
    v30 = v18;
  }

  v31 = malloc_type_valloc(v30, 0x1000040A86A77D5uLL);
  if (!v31)
  {
    goto LABEL_17;
  }

  v25 = v31;
  for (i = *(v11 + 10) + *(v11 + 9); ; i += v25[v35])
  {
    v36 = fd_pread(v5, v25, 0x14uLL, i);
    if (v36 < 1)
    {
      break;
    }

    if (*v25 == 846226020)
    {
      *v25 = 1684172850;
      v33 = vrev32q_s8(*(v25 + 1));
      *(v25 + 1) = v33;
      LOBYTE(v34) = v33.i8[8];
    }

    else
    {
      if (*v25 != 1684172850)
      {
        v51 = *__error();
        v52 = _SILogForLogForCategory(7);
        v53 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v52, v53))
        {
          v54 = *v25;
          *buf = 134218240;
          *&buf[4] = i;
          *&buf[12] = 1024;
          *&buf[14] = v54;
          v55 = "sdb: validate_datastore: ERR: invalid page @ 0x%llx (sig: 0x%x)\n";
          goto LABEL_73;
        }

        goto LABEL_74;
      }

      v34 = v25[3];
    }

    if ((v34 & 4) != 0)
    {
      v35 = 4;
    }

    else
    {
      v35 = 1;
    }
  }

  if (v36 < 0)
  {
    v51 = *__error();
    v52 = _SILogForLogForCategory(7);
    v53 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v52, v53))
    {
      v56 = *(v11 + 11);
      *buf = 67109376;
      *&buf[4] = v56;
      *&buf[8] = 2048;
      *&buf[10] = i;
      v55 = "sdb: validate_datastore: ERR: failed to read %d bytes at offset 0x%llx\n";
LABEL_73:
      _os_log_impl(&dword_1C278D000, v52, v53, v55, buf, 0x12u);
    }

LABEL_74:
    *__error() = v51;
    free(v11);
    goto LABEL_18;
  }

  free(v11);
  free(v25);
  v37 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  if (!v37)
  {
    result = 12;
    goto LABEL_23;
  }

  v38 = v37;
  for (j = 0; ; j += v40)
  {
    v41 = fd_pread(v5, v38, 0x10000uLL, j);
    v42 = v41;
    if (!v41)
    {
      fd_truncate(a3, j);
      *(a1 + 4) = *(a1 + 4) & 0xFFFFFDDE | 1;
      memcpy(v38, a1, 0x1000uLL);
      if ((*(a1 + 4) & 0x80) != 0)
      {
        *v38 = vrev32q_s8(*v38);
        v38[1].i32[0] = bswap32(v38[1].u32[0]);
        *(v38 + 20) = vrev64q_s8(*(v38 + 20));
        *(v38 + 36) = vrev32q_s8(*(v38 + 36));
        *(v38 + 52) = vrev32q_s8(*(v38 + 52));
      }

      if (fd_pwrite(a3, v38, 0x1000uLL, 0) != 4096)
      {
        v64 = *__error();
        v65 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v70 = __error();
          v71 = strerror(*v70);
          *buf = 136315906;
          *&buf[4] = "copy_datastore";
          *&buf[12] = 1024;
          *&buf[14] = 6636;
          v80 = 2080;
          *v81 = a1 + 324;
          *&v81[8] = 2080;
          *&v81[10] = v71;
          _os_log_error_impl(&dword_1C278D000, v65, OS_LOG_TYPE_ERROR, "%s:%d: %s : copy_datastore: ERR: failed to update the header! (%s)\n", buf, 0x26u);
        }

        *__error() = v64;
        fd_sync(a3, 1);
        free(v38);
        goto LABEL_99;
      }

      fd_sync(a3, 1);
      if ((a4 & 1) == 0)
      {
        goto LABEL_103;
      }

      if (fd_pwrite(v5, v38, 0x1000uLL, 0) == 4096)
      {
        v42 = 0;
        goto LABEL_94;
      }

      v62 = *__error();
      v66 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v72 = __error();
        v73 = strerror(*v72);
        *buf = 136315906;
        *&buf[4] = "copy_datastore";
        *&buf[12] = 1024;
        *&buf[14] = 6642;
        v80 = 2080;
        *v81 = a1 + 324;
        *&v81[8] = 2080;
        *&v81[10] = v73;
        _os_log_error_impl(&dword_1C278D000, v66, OS_LOG_TYPE_ERROR, "%s:%d: %s : copy_datastore: ERR: failed to update the header 2! (%s)\n", buf, 0x26u);
      }

      v42 = -1;
      goto LABEL_93;
    }

    if (v41 < 0)
    {
      goto LABEL_85;
    }

    if (j)
    {
      break;
    }

    v43 = a1;
    v44 = *(a1 + 4);
    if (*(a1 + 840) == a3)
    {
      if ((v44 & 0x80) != 0)
      {
        *v38 = vrev32q_s8(*v38);
        v38[1].i32[0] = bswap32(v38[1].u32[0]);
        *(v38 + 20) = vrev64q_s8(*(v38 + 20));
        *(v38 + 36) = vrev32q_s8(*(v38 + 36));
        *(v38 + 52) = vrev32q_s8(*(v38 + 52));
        memcpy(a1, v38, 0x248uLL);
        v43 = a1;
        v44 = *(a1 + 4) | 0x80;
      }

      else
      {
        memcpy(a1, v38, 0x248uLL);
        v43 = a1;
        v44 = *(a1 + 4);
      }
    }

    *(v43 + 4) = v44 | 0x20;
    memcpy(v38, a1, 0x3F8uLL);
    if ((*(a1 + 4) & 0x80) != 0)
    {
      *v38 = vrev32q_s8(*v38);
      v38[1].i32[0] = bswap32(v38[1].u32[0]);
      *(v38 + 20) = vrev64q_s8(*(v38 + 20));
      *(v38 + 36) = vrev32q_s8(*(v38 + 36));
      *(v38 + 52) = vrev32q_s8(*(v38 + 52));
    }

    if (!a3 || (*(a3 + 48) & 3) == 0)
    {
      v45 = *(a1 + 4);
      if (v45)
      {
        *(a1 + 4) = v45 & 0xFFFFFFDF;
        *(a1 + 848) = v5;
        *(a1 + 840) = a3;
LABEL_103:
        free(v38);
LABEL_104:
        result = 0;
        goto LABEL_23;
      }
    }

    if ((v42 & 0xFFF) != 0)
    {
      v74 = __si_assert_copy_extra_3233(0, -1);
      v75 = v74;
      v76 = "";
      if (v74)
      {
        v76 = v74;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 98, "(write_size & ((1 << 12)-1)) == 0", v76);
      free(v75);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v40 = v42 & 0x7FFFF000;
    if (fd_pwrite(a3, v38, v40, 0) != v40)
    {
      goto LABEL_85;
    }

    if (_gSystemStatusBool == 1)
    {
      pthread_mutex_lock(&_gSystemStatusLock);
      if (_gSystemStatusBool == 1)
      {
        do
        {
          pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
        }

        while ((_gSystemStatusBool & 1) != 0);
      }

      pthread_mutex_unlock(&_gSystemStatusLock);
    }

    *buf = 0;
    v46 = _fd_acquire_fd(a3, buf);
    if (v46 != -1)
    {
      v47 = v46;
      prot_fsync(v46, (*(a3 + 56) & 8) == 0);
      _fd_release_fd(a3, v47, 0, *buf);
    }

LABEL_44:
    ;
  }

  v40 = v41 & 0x7FFFFFFF;
  if (sdb_pwrite(a3, v38, v40, j) == v40)
  {
    goto LABEL_44;
  }

  v57 = *__error();
  v58 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "copy_datastore";
    *&buf[12] = 1024;
    *&buf[14] = 6615;
    v80 = 2080;
    *v81 = a1 + 324;
    *&v81[8] = 1024;
    *&v81[10] = v42;
    *&v81[14] = 2048;
    *&v81[16] = j;
    _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: 2: failed to write %d bytes at %lld to to_fdp\n", buf, 0x2Cu);
  }

  *__error() = v57;
LABEL_85:
  v59 = *__error();
  v60 = *__error();
  v61 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "copy_datastore";
    if (v59)
    {
      v67 = v59;
    }

    else
    {
      v67 = 22;
    }

    *&buf[12] = 1024;
    *&buf[14] = 6654;
    v80 = 1024;
    *v81 = v67;
    *&v81[4] = 2080;
    *&v81[6] = a1 + 324;
    _os_log_error_impl(&dword_1C278D000, v61, OS_LOG_TYPE_ERROR, "%s:%d: sdb: copy_datastore: ERR: %d %s: error restoring from master datastore.\n", buf, 0x22u);
  }

  *__error() = v60;
  *(a1 + 4) &= 0xFFFFFDDE;
  memcpy(v38, a1, 0x1000uLL);
  if ((*(a1 + 4) & 0x80) != 0)
  {
    *v38 = vrev32q_s8(*v38);
    v38[1].i32[0] = bswap32(v38[1].u32[0]);
    *(v38 + 20) = vrev64q_s8(*(v38 + 20));
    *(v38 + 36) = vrev32q_s8(*(v38 + 36));
    *(v38 + 52) = vrev32q_s8(*(v38 + 52));
  }

  if (fd_pwrite(a3, v38, 0x1000uLL, 0) == 4096)
  {
    v5 = a3;
    goto LABEL_94;
  }

  v62 = *__error();
  v63 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    v68 = __error();
    v69 = strerror(*v68);
    *buf = 136315906;
    *&buf[4] = "copy_datastore";
    *&buf[12] = 1024;
    *&buf[14] = 6667;
    v80 = 2080;
    *v81 = a1 + 324;
    *&v81[8] = 2080;
    *&v81[10] = v69;
    _os_log_error_impl(&dword_1C278D000, v63, OS_LOG_TYPE_ERROR, "%s:%d: %s : copy_datastore:2: ERR: failed to update the header! (%s)\n", buf, 0x26u);
  }

  v5 = a3;
LABEL_93:
  *__error() = v62;
LABEL_94:
  fd_sync(v5, 1);
  free(v38);
  if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_104;
  }

LABEL_99:
  if (!*__error())
  {
    *__error() = 22;
  }

  result = *__error();
LABEL_23:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t load_map(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = fd_lseek(*(a1 + 848), 0, 2);
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 < 0x24 || ((v5 = *(a1 + 36), v5 >= 0x3F8) ? (v6 = v2 < v5 + v4) : (v6 = 1), v6))
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 36);
      v28 = *(a1 + 40);
      v39 = 136316162;
      v40 = "load_map";
      v41 = 1024;
      v42 = 1144;
      v43 = 1024;
      *v44 = v28;
      *&v44[4] = 1024;
      *&v44[6] = v29;
      *&v44[10] = 2048;
      *&v44[12] = v3;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: Invalid header ms: %u hs: %u fs: %lld", &v39, 0x28u);
    }

    *__error() = v7;
    goto LABEL_10;
  }

  v11 = malloc_type_zone_malloc(sdb_map_zone, v4, 0x10000408AA14F5FuLL);
  if (!v11)
  {
    result = 12;
    goto LABEL_11;
  }

  v12 = v11;
  v13 = fd_pread(*(a1 + 848), v11, *(a1 + 40), *(a1 + 36));
  if (v13 == *(a1 + 40))
  {
    v14 = v12[2];
    v15 = v12 + v13;
    v16 = *v12;
    if ((*(a1 + 4) & 0x80) != 0 && (v16 == 846029412 || v16 == 829252196))
    {
      v14 = bswap32(v14);
      if ((v14 & 0x80000000) != 0 || &v12[4 * v14 + 5] > v15)
      {
LABEL_43:
        free(v12);
LABEL_10:
        result = 22;
        goto LABEL_11;
      }

      *(a1 + 856) = v12;
      swap_map(v12);
      *(a1 + 856) = 0;
      v16 = *v12;
    }

    if (v16 - 1684172081 < 2 && (v14 & 0x80000000) == 0 && &v12[4 * v14 + 5] <= v15)
    {
      v18 = v12[2];
      if (v18 < 2)
      {
LABEL_33:
        result = 0;
        *(a1 + 856) = v12;
        goto LABEL_11;
      }

      v19 = v12[8];
      v20 = v12 + 9;
      v21 = 1;
      while (1)
      {
        v22 = v19 >> 28;
        v19 = v20[3];
        LODWORD(v23) = v22 - (v19 >> 28);
        v23 = v23 ? v23 : *(v20 - 2) - *v20;
        if (v23 >= 1)
        {
          break;
        }

        ++v21;
        v20 += 4;
        if (v18 == v21)
        {
          goto LABEL_33;
        }
      }

      v31 = *__error();
      v32 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = *(v20 - 2);
        v34 = *v20;
        v35 = *(v20 - 2);
        v36 = *(v20 - 1) >> 28;
        v37 = v20[2];
        v38 = v20[3] >> 28;
        v39 = 136317442;
        v40 = "load_map";
        v41 = 1024;
        v42 = 1201;
        v43 = 2080;
        *v44 = a1 + 324;
        *&v44[8] = 2048;
        *&v44[10] = v21;
        *&v44[18] = 2048;
        *&v44[20] = v33;
        *&v44[28] = 2048;
        v45 = v34;
        v46 = 2048;
        v47 = v36;
        v48 = 2048;
        v49 = v38;
        v50 = 2048;
        v51 = v35;
        v52 = 2048;
        v53 = v37;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: %s : load_map, invalid entry at %ld, oid:0x%.16llx/0x%.16llx, type:0x%lx/0x%lx, pgnum:%ld/%ld\n", &v39, 0x62u);
      }

      *__error() = v31;
    }

    goto LABEL_43;
  }

  v24 = v13;
  *(a1 + 4) |= 4u;
  free(v12);
  if (!*__error())
  {
    *__error() = 22;
  }

  v25 = *__error();
  v26 = *__error();
  v27 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v30 = *(a1 + 40);
    v39 = 136316418;
    v40 = "load_map";
    v41 = 1024;
    v42 = 1162;
    v43 = 1024;
    *v44 = v25;
    *&v44[4] = 2080;
    *&v44[6] = a1 + 324;
    *&v44[14] = 2048;
    *&v44[16] = v24;
    *&v44[24] = 1024;
    *&v44[26] = v30;
    _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: load_map error:%d (%s) %zu != %u", &v39, 0x32u);
  }

  *__error() = v26;
  *__error() = v25;
  result = *__error();
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t load_string_table(uint64_t a1, int a2, int a3, void **a4, unsigned int *a5, unsigned int *a6)
{
  v179 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v156 = table_extra_bytes_14628[a2];
  if ((a3 & 0x20000) == 0 || (*(a1 + 4) & 8) != 0)
  {
    v20 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B00402199480CuLL);
    *(a1 + 8 * v8 + 880) = v20;
    *v167 = 0;
    *v20 = -1;
    *(v20 + 6) = 64;
    if (a2 > 1)
    {
      if (sdb_uniquing_zone_once != -1)
      {
        dispatch_once(&sdb_uniquing_zone_once, &__block_literal_global_13);
      }

      v21 = malloc_type_zone_calloc(sdb_uniquing_zone, 1uLL, 0x8E8uLL, 0x107004098C11689uLL);
      if (!v21)
      {
        goto LABEL_19;
      }

      v22 = 0;
    }

    else
    {
      if (sdb_uniquing_zone_once != -1)
      {
        dispatch_once(&sdb_uniquing_zone_once, &__block_literal_global_15707);
      }

      v21 = malloc_type_zone_calloc(sdb_uniquing_zone, 1uLL, 0x8E8uLL, 0x107004098C11689uLL);
      v22 = v156;
      if (!v21)
      {
        goto LABEL_19;
      }
    }

    pthread_rwlock_init(v21, 0);
    v21[1].__sig = v22;
    *&v21[11].__opaque[64] = 1024;
    *&v21[11].__opaque[56] = malloc_type_zone_calloc(sdb_uniquing_zone, 1uLL, 0x4000uLL, 0x1050040DB1D6C16uLL);
LABEL_19:
    *(v20 + 2) = v21;
    *(v20 + 4) = malloc_type_zone_malloc(string_table_zone, 8 * *(v20 + 6), 0x2004093837F09uLL);
    if (a2 <= 1)
    {
      *(v20 + 5) = malloc_type_zone_malloc(string_table_zone, *(v20 + 6), 0xA648CC3BuLL);
    }

    v23 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v24 = v23;
    if (!*(v20 + 2) || !*(v20 + 4) || (a2 <= 1 ? (v25 = *(v20 + 5) == 0) : (v25 = 0), v25 ? (v26 = 0) : (v26 = 1), !v23 || (v26 & 1) == 0))
    {
      free(v23);
      free(*(v20 + 5));
      free(*(v20 + 4));
      free(*(v20 + 2));
      v49 = 12;
      goto LABEL_169;
    }

    v27 = *(a1 + 4 * v8 + 48);
    if (!v27)
    {
      v104 = 0;
      v30 = 0;
      LODWORD(v31) = 1;
LABEL_174:
      *(v20 + 3) = v104;
      *(v20 + 14) = v31;
      *(v20 + 15) = v30;
      if (dword_1EBF46AE8 >= 5)
      {
        v134 = *__error();
        v135 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 67109376;
          *v172 = v31;
          *&v172[4] = 1024;
          *&v172[6] = a2;
          _os_log_impl(&dword_1C278D000, v135, OS_LOG_TYPE_DEFAULT, "Loaded %d strings for %d", __str, 0xEu);
        }

        *__error() = v134;
      }

      *(v20 + 16) = 0;
      free(v24);
      v49 = 0;
      goto LABEL_169;
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    v146 = 16;
    v148 = v8;
    v31 = 1;
    while (1)
    {
      v32 = v30;
      v154 = v30;
      v33 = v24;
      if (v30)
      {
        break;
      }

LABEL_36:
      *v167 = malloc_type_zone_valloc(string_table_zone, 0x4000uLL, 0x1022040893D1972uLL);
      if (!*v167)
      {
        goto LABEL_200;
      }

      v35 = _page_fetch_with_fd(a1, v167, v27, 0x4000u, 7, __str, 0xFFFFFFFFLL, 0);
      if (v35)
      {
        v49 = v35;
        v108 = *__error();
        v122 = _SILogForLogForCategory(7);
        v123 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v122, v123))
        {
          *__str = 67109120;
          *v172 = v27;
          _os_log_impl(&dword_1C278D000, v122, v123, "sdb: load_string_table: ERR: failed to load page @ 0x%x\n", __str, 8u);
        }

LABEL_197:
        *__error() = v108;
LABEL_198:
        *(v20 + 3) = v28;
        cleanup_string_tables(a1);
        free(v24);
        goto LABEL_169;
      }

      v36 = *v167;
      v37 = db_string_page_flags[v148];
      if ((v37 & ~*(*v167 + 12)) != 0)
      {
        v108 = *__error();
        v124 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          v125 = *(*v167 + 12);
          *__str = 136315906;
          *v172 = "load_string_table";
          *&v172[8] = 1024;
          v173 = 10610;
          v174 = 1024;
          *v175 = v125;
          *&v175[4] = 1024;
          *&v175[6] = v37;
          v126 = "%s:%d: load_string_table: unexpected page flags (%x %x)\n";
          v127 = v124;
          v128 = 30;
LABEL_206:
          _os_log_error_impl(&dword_1C278D000, v127, OS_LOG_TYPE_ERROR, v126, __str, v128);
          v49 = 22;
          goto LABEL_197;
        }

LABEL_183:
        v49 = 22;
        goto LABEL_197;
      }

      *(*v167 + 24) = 0;
      if (v154 >= v146)
      {
        v146 *= 2;
        v24 = reallocf(v24, 4 * v146);
        if (!v24)
        {
LABEL_200:
          v49 = 12;
          goto LABEL_198;
        }

        v36 = *v167;
      }

      *(v24 + v154) = v27;
      v38 = v36;
      if (v29)
      {
        *(v29 + 24) = v36;
        v38 = v28;
      }

      v150 = v38;
      v39 = *(v36 + 8);
      if (v39 < 33)
      {
        v29 = v36;
        goto LABEL_95;
      }

      v152 = v36 + v39;
      v40 = (v36 + 32);
      v41 = 32;
      do
      {
        v45 = *(v20 + 6);
        if (v45 <= v31)
        {
          *(v20 + 6) = 2 * v45;
          v63 = malloc_type_zone_realloc(string_table_zone, *(v20 + 4), 16 * v45, 0x2004093837F09uLL);
          *(v20 + 4) = v63;
          if (a2 <= 1)
          {
            v64 = malloc_type_zone_realloc(string_table_zone, *(v20 + 5), *(v20 + 6), 0x8AD6F9D2uLL);
            *(v20 + 5) = v64;
            if (!v64)
            {
              goto LABEL_223;
            }

            v63 = *(v20 + 4);
          }

          if (!v63)
          {
LABEL_223:
            v49 = 12;
            v28 = v150;
            goto LABEL_198;
          }
        }

        if (v31 != (*v40 & 0x7FFFFFFF))
        {
          v108 = *__error();
          v118 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
          {
            v119 = *v40 & 0x7FFFFFFF;
            *__str = 136316162;
            *v172 = "load_string_table";
            *&v172[8] = 1024;
            v173 = 10662;
            v174 = 2048;
            *v175 = v40;
            *&v175[8] = 1024;
            v176 = v119;
            v177 = 1024;
            LODWORD(v178) = v31;
            _os_log_error_impl(&dword_1C278D000, v118, OS_LOG_TYPE_ERROR, "%s:%d: load_string_table: string id mismatch: dstr (%tx) str_id (%d) str_index (%d)\n", __str, 0x28u);
          }

          goto LABEL_196;
        }

        *(*(v20 + 4) + 8 * v31) = v40;
        if (a2 <= 1)
        {
          v46 = v40 + v156 + 4;
          if (strnlen(v46, v152 - v46) == v152 - v46)
          {
            v108 = *__error();
            v120 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              *__str = 136315906;
              *v172 = "load_string_table";
              *&v172[8] = 1024;
              v173 = 10674;
              v174 = 2048;
              *v175 = v40;
              *&v175[8] = 1024;
              v176 = v31;
              _os_log_error_impl(&dword_1C278D000, v120, OS_LOG_TYPE_ERROR, "%s:%d: load_string_table: read past bound: dstr (%tx) str_index (%d)\n", __str, 0x22u);
            }

LABEL_196:
            v49 = 22;
            v28 = v150;
            goto LABEL_197;
          }

          if (a2)
          {
            v47 = 0;
          }

          else
          {
            v47 = v40 + 1;
          }

          inserted = hash_insert_extended(*(v20 + 2), v46, v47, v40);
          if (inserted == 17)
          {
            v55 = *__error();
            v56 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              v143 = *v40;
              if (a2)
              {
                v61 = 0;
              }

              else
              {
                v61 = v40 + v156 + 4;
              }

              v62 = hash_lookup_extended(*(v20 + 2), v46, v61, 1);
              *__str = 136316162;
              *v172 = "load_string_table";
              *&v172[8] = 1024;
              v173 = 10680;
              v174 = 2080;
              *v175 = v40 + v156 + 4;
              *&v175[8] = 1024;
              v176 = v143;
              v177 = 2048;
              v178 = v62;
              _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, "%s:%d: load_string_table: hash_insert: string %s (id %d) already exists (id %p)!\n", __str, 0x2Cu);
            }

            LODWORD(v49) = 0;
            *__error() = v55;
          }

          else
          {
            v49 = inserted;
            if (inserted)
            {
LABEL_199:
              v28 = v150;
              goto LABEL_198;
            }
          }

          v57 = 0;
          for (i = v49; ; ++i)
          {
            if (*v46 == 22)
            {
              v57 = 1;
              LODWORD(v49) = i;
            }

            else if (!*v46)
            {
              if (v57)
              {
                v59 = v49;
              }

              else
              {
                v59 = i;
              }

              v44 = v156 + 5 + i;
              if (v59 >= 0xFF)
              {
                v60 = -1;
              }

              else
              {
                v60 = v59;
              }

              *(*(v20 + 5) + v31) = v60;
              goto LABEL_48;
            }

            ++v46;
          }
        }

        v50 = (v40 + 1);
        v51 = hash_field_insert(*(v20 + 2), v40 + 4, v40);
        if (v51)
        {
          v49 = v51;
          if (v51 != 17)
          {
            goto LABEL_199;
          }

          v52 = *__error();
          v53 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v142 = *v40;
            v54 = hash_field_lookup(*(v20 + 2), v40 + 4);
            *__str = 136316162;
            *v172 = "load_string_table";
            *&v172[8] = 1024;
            v173 = 10689;
            v174 = 2080;
            *v175 = &v50[v156];
            *&v175[8] = 1024;
            v176 = v142;
            v177 = 2048;
            v178 = v54;
            _os_log_error_impl(&dword_1C278D000, v53, OS_LOG_TYPE_ERROR, "%s:%d: load_string_table: hash_insert: string %s (id %d) already exists (id %p)!\n", __str, 0x2Cu);
          }

          *__error() = v52;
        }

        v42 = *v50;
        if (*v50 < 0)
        {
          if (v42 > 0xBF)
          {
            if (v42 > 0xDF)
            {
              if (v42 > 0xEF)
              {
                v42 = *(v40 + 5);
                v43 = 5;
              }

              else
              {
                v42 = ((v42 & 0xF) << 24) | (*(v40 + 5) << 16) | (*(v40 + 6) << 8) | *(v40 + 7);
                v43 = 4;
              }
            }

            else
            {
              v42 = ((v42 & 0x1F) << 16) | (*(v40 + 5) << 8) | *(v40 + 6);
              v43 = 3;
            }
          }

          else
          {
            v43 = 2;
            v42 = *(v40 + 5) | ((v42 & 0x3F) << 8);
          }
        }

        else
        {
          v43 = 1;
        }

        v44 = v43 + v42 + 4;
LABEL_48:
        v40 = (v40 + v44);
        ++v31;
        v41 += v44;
        v29 = *v167;
        LODWORD(v39) = *(*v167 + 8);
      }

      while (v39 > v41);
      v31 = v31;
LABEL_95:
      v30 = v154 + 1;
      v27 = *(v29 + 20);
      v28 = v150;
      if (!v27)
      {
        if (!*(v29 + 24))
        {
          if (v39 <= 31)
          {
            *(v29 + 8) = 32;
          }

          v104 = v150;
          goto LABEL_174;
        }

        v136 = __si_assert_copy_extra_3233(0, -1);
        v130 = v136;
        v137 = "";
        if (v136)
        {
          v137 = v136;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 10716, "prev_dnt->_next_ptr==0", v137);
LABEL_210:
        free(v130);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

    while (1)
    {
      v34 = *v33++;
      if (v27 == v34)
      {
        break;
      }

      if (!--v32)
      {
        goto LABEL_36;
      }
    }

    v108 = *__error();
    v109 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315650;
      *v172 = "load_string_table";
      *&v172[8] = 1024;
      v173 = 10590;
      v174 = 1024;
      *v175 = v27;
      v126 = "%s:%d: load_string_table: circular string table (pgnum %d)\n";
      v127 = v109;
      v128 = 24;
      goto LABEL_206;
    }

    goto LABEL_183;
  }

  bzero(__str, 0x400uLL);
  v12 = fd_name(*(a1 + 840), __str, 0x400uLL);
  v13 = strcmp(v12, "store.db");
  v14 = "db";
  if (v13)
  {
    v14 = v12;
  }

  snprintf(__str, 0x400uLL, "%sStr-%d.map", v14, a2 + 1);
  v15 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v15 = __THREAD_SLOT_KEY;
  }

  v16 = pthread_getspecific(v15);
  HIDWORD(v18) = qos_class_self() - 9;
  LODWORD(v18) = HIDWORD(v18);
  v17 = v18 >> 2;
  if (v17 > 6)
  {
    v19 = 0;
  }

  else
  {
    v19 = dword_1C2BFF8F0[v17];
  }

  v65 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_104:
    db_rwlock_wait(a1 + 584, v19, 2);
    goto LABEL_105;
  }

  if (v19 <= 5)
  {
    v105 = v19 - 6;
    v106 = (a1 + 16 * v19 + 648);
    while (!*v106)
    {
      v106 += 2;
      if (__CFADD__(v105++, 1))
      {
        goto LABEL_181;
      }
    }

    goto LABEL_104;
  }

LABEL_181:
  *(a1 + 768) = pthread_self();
LABEL_105:
  pthread_mutex_unlock((a1 + 584));
  if (v65)
  {
    v138 = *__error();
    v139 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      *v167 = 136315650;
      *&v167[4] = "load_string_table";
      *&v167[12] = 1024;
      *&v167[14] = 10744;
      *&v167[18] = 1024;
      *&v167[20] = v65;
      _os_log_error_impl(&dword_1C278D000, v139, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", v167, 0x18u);
    }

    *__error() = v138;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 10744);
  }

  if (v16)
  {
    v144 = CIOnThreadCleanUpPush(v16 - 1, db_write_unlock, a1 + 584);
  }

  else
  {
    v144 = -1;
  }

  v169 = 0u;
  v170 = 0u;
  v168 = 0u;
  memset(v167, 0, sizeof(v167));
  v66 = *(a1 + 848);
  if (v66)
  {
    v67 = *(v66 + 44);
  }

  else
  {
    v67 = -1;
  }

  v145 = v16 - 1;
  *v167 = v67;
  *&v167[8] = __str;
  *&v167[16] = v156;
  *&v167[20] = 1;
  if (a2 <= 5 && ((1 << a2) & 0x29) != 0)
  {
    *&v167[20] = 513;
  }

  v68 = a1 + 880;
  *(a1 + 880 + 8 * v8) = data_map_init_with_ctx(v167);
  value_out = 0;
  v69 = *a5;
  v70 = *a6;
  v155 = *a4;
  if (!*a4)
  {
    if (v69)
    {
      v132 = __si_assert_copy_extra_3233(0, -1);
      v130 = v132;
      v133 = "";
      if (v132)
      {
        v133 = v132;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 10762, "num_string_pages == 0", v133);
      goto LABEL_210;
    }

    v155 = malloc_type_malloc(4 * v70, 0x100004052888210uLL);
  }

  v140 = a2;
  v141 = a5;
  v149 = a6;
  v151 = v16;
  v147 = a4;
  v71 = v8;
  v72 = *(a1 + 4 * v8 + 48);
  if (!v72)
  {
    v153 = v70;
    goto LABEL_156;
  }

  v73 = v156 + 5;
  v74 = 1;
  v153 = v70;
  do
  {
    v75 = v69;
    v76 = v69;
    v77 = v155;
    if (v69)
    {
      while (1)
      {
        v78 = *v77++;
        if (v72 == v78)
        {
          break;
        }

        if (!--v76)
        {
          goto LABEL_123;
        }
      }

      v90 = *__error();
      v91 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v159 = "load_string_table";
        v160 = 1024;
        v161 = 10771;
        v162 = 1024;
        *v163 = v72;
        v115 = "%s:%d: load_string_table: circular string table (pgnum %d)\n";
        v116 = v91;
        v117 = 24;
LABEL_193:
        _os_log_error_impl(&dword_1C278D000, v116, OS_LOG_TYPE_ERROR, v115, buf, v117);
      }

      goto LABEL_160;
    }

LABEL_123:
    value_out = malloc_type_valloc(0x4000uLL, 0x1022040893D1972uLL);
    if (!value_out)
    {
      v49 = 12;
      goto LABEL_161;
    }

    v79 = _page_fetch_with_fd(a1, &value_out, v72, 0x4000u, 7, buf, 0xFFFFFFFFLL, 0);
    if (v79)
    {
      v49 = v79;
      v110 = *__error();
      v111 = _SILogForLogForCategory(7);
      v112 = 2 * (dword_1EBF46AE8 < 4);
      v92 = v151;
      if (os_log_type_enabled(v111, v112))
      {
        *buf = 67109120;
        LODWORD(v159) = v72;
        _os_log_impl(&dword_1C278D000, v111, v112, "sdb: load_string_table: ERR: failed to load page @ 0x%x\n", buf, 8u);
      }

      *__error() = v110;
      goto LABEL_162;
    }

    v80 = value_out;
    v81 = db_string_page_flags[v71];
    if ((v81 & ~*(value_out + 3)) != 0)
    {
      v90 = *__error();
      v113 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        v114 = *(value_out + 3);
        *buf = 136315906;
        v159 = "load_string_table";
        v160 = 1024;
        v161 = 10791;
        v162 = 1024;
        *v163 = v114;
        *&v163[4] = 1024;
        *&v163[6] = v81;
        v115 = "%s:%d: load_string_table: unexpected page flags (%x %x)\n";
        v116 = v113;
        v117 = 30;
        goto LABEL_193;
      }

LABEL_160:
      *__error() = v90;
      v49 = 22;
      goto LABEL_161;
    }

    if (v75 >= v153)
    {
      v153 *= 2;
      v155 = reallocf(v155, 4 * v153);
      if (!v155)
      {
        v155 = 0;
        v49 = 12;
        goto LABEL_161;
      }

      v80 = value_out;
    }

    v155[v75] = v72;
    if (v80[2] < 33)
    {
      goto LABEL_151;
    }

    v82 = (v80 + 8);
    v83 = 32;
    if (v140 < 2)
    {
      while (v74 == (*v82 & 0x7FFFFFFF))
      {
        if (v82[v156 + 4])
        {
          v84 = 0;
            ;
          }
        }

        else
        {
          LODWORD(v84) = 0;
        }

        if (data_map_id_insert(*(v68 + 8 * v71), v82 + 4, v156 + 1 + v84) != v74)
        {
          goto LABEL_207;
        }

        v82 += v73 + v84;
        ++v74;
        v83 += v73 + v84;
        v80 = value_out;
        if (*(value_out + 2) <= v83)
        {
          goto LABEL_150;
        }
      }

LABEL_170:
      v102 = *__error();
      v103 = _SILogForLogForCategory(7);
      v92 = v151;
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        v121 = *v82 & 0x7FFFFFFF;
        *buf = 136316162;
        v159 = "load_string_table";
        v160 = 1024;
        v161 = 10815;
        v162 = 2048;
        *v163 = v82;
        *&v163[8] = 1024;
        v164 = v121;
        v165 = 1024;
        v166 = v74;
        _os_log_error_impl(&dword_1C278D000, v103, OS_LOG_TYPE_ERROR, "%s:%d: load_string_table: string id mismatch: dstr (%tx) str_id (%d) str_index (%d)\n", buf, 0x28u);
      }

      *__error() = v102;
      v49 = 22;
      goto LABEL_162;
    }

    do
    {
      if (v74 != (*v82 & 0x7FFFFFFF))
      {
        goto LABEL_170;
      }

      v86 = v82[4];
      if (v82[4] < 0)
      {
        if (v86 >= 0xC0)
        {
          if (v86 >= 0xE0)
          {
            if (v86 >= 0xF0)
            {
              v86 = *(v82 + 5);
              v87 = v86 + 5;
              v88 = *(v68 + 8 * v71);
              v89 = 5;
            }

            else
            {
              v86 = ((v86 & 0xF) << 24) | (v82[5] << 16) | (v82[6] << 8) | v82[7];
              v87 = v86 + 4;
              v88 = *(v68 + 8 * v71);
              v89 = 4;
            }
          }

          else
          {
            v86 = ((v86 & 0x1F) << 16) | (v82[5] << 8) | v82[6];
            v87 = v86 + 3;
            v88 = *(v68 + 8 * v71);
            v89 = 3;
          }
        }

        else
        {
          v87 = (v82[5] | ((v86 & 0x3F) << 8)) + 2;
          v88 = *(v68 + 8 * v71);
          v89 = 2;
          v86 = v82[5] | ((v86 & 0x3F) << 8);
        }
      }

      else
      {
        v87 = v86 + 1;
        v88 = *(v68 + 8 * v71);
        v89 = 1;
      }

      if (v74 != data_map_id_insert(v88, v82 + 4, v89 + v86))
      {
LABEL_207:
        v129 = __si_assert_copy_extra_3233(0, -1);
        v130 = v129;
        v131 = "";
        if (v129)
        {
          v131 = v129;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 10830, "string_id == str_index", v131);
        goto LABEL_210;
      }

      v82 += v87 + 4;
      ++v74;
      v83 += v87 + 4;
      v80 = value_out;
    }

    while (*(value_out + 2) > v83);
LABEL_150:
    v74 = v74;
LABEL_151:
    v69 = v75 + 1;
    v72 = v80[5];
    free(v80);
  }

  while (v72);
LABEL_156:
  *v141 = v69;
  if ((*(a1 + 804) & 0x14) != 0)
  {
    data_map_flush(*(v68 + 8 * v71));
    data_map_commit(*(v68 + 8 * v71));
  }

  v49 = 0;
LABEL_161:
  v92 = v151;
LABEL_162:
  v93 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v94 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v95 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v95, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v94)
  {
    pthread_override_qos_class_end_np(v94);
  }

  if (v93)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 10848);
  }

  if (v92)
  {
    CIOnThreadCleanUpClearItem(v145, v144);
    v96 = &threadData[9 * v145];
    v99 = *(v96 + 14);
    v97 = v96 + 7;
    v98 = v99;
    if (v144 + 1 == v99)
    {
      *v97 = v98 - 1;
    }
  }

  *v147 = v155;
  *v149 = v153;
LABEL_169:
  v100 = *MEMORY[0x1E69E9840];
  return v49;
}

unsigned int *swap_map(unsigned int *result)
{
  v1 = result[2];
  v2 = *result;
  v3 = *result == 846029412 || v2 == 829252196;
  v4 = bswap32(v1);
  if (!v3)
  {
    v4 = result[2];
  }

  if (v4 >= 1)
  {
    v5 = (result + 7);
    do
    {
      v5[-1] = bswap64(*&v5[-1]);
      *v5 = vrev32_s8(*v5);
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v6 = bswap32(result[1]);
  *result = bswap32(v2);
  result[1] = v6;
  result[2] = bswap32(v1);
  result[4] = bswap32(result[4]);
  return result;
}

uint64_t __db2_shrink_cache_block_invoke(uint64_t a1, unsigned int *a2)
{
  v3 = _flush_cache_entry(*(a1 + 32), 0, a2, 0);
  db_writer_yield_lock(*(a1 + 32) + 584);
  return v3;
}

uint64_t ___db2_clear_cache_locked_block_invoke(uint64_t a1, unsigned int *a2)
{
  result = _flush_cache_entry(*(a1 + 32), 0, a2, 0);
  if (*(a1 + 40) == 1)
  {
    v4 = *(a1 + 32);
    v5 = result;
    db_writer_yield_lock(v4 + 584);
    return v5;
  }

  return result;
}

void db2_release_datastore_no_sync(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v2 = __THREAD_SLOT_KEY;
  }

  v3 = pthread_getspecific(v2);
  HIDWORD(v5) = qos_class_self() - 9;
  LODWORD(v5) = HIDWORD(v5);
  v4 = v5 >> 2;
  if (v4 > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1C2BFF8F0[v4];
  }

  v7 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_9:
    db_rwlock_wait(a1 + 584, v6, 2);
    goto LABEL_10;
  }

  if (v6 <= 5)
  {
    v30 = v6 - 6;
    v31 = (a1 + 16 * v6 + 648);
    while (!*v31)
    {
      v31 += 2;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_54;
      }
    }

    goto LABEL_9;
  }

LABEL_54:
  *(a1 + 768) = pthread_self();
LABEL_10:
  pthread_mutex_unlock((a1 + 584));
  if (v7)
  {
    v33 = *__error();
    v34 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v35 = 136315650;
      *&v35[4] = "db2_release_datastore_no_sync";
      *&v35[12] = 1024;
      *&v35[14] = 8921;
      v36 = 1024;
      v37 = v7;
      _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", v35, 0x18u);
    }

    *__error() = v33;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 8921);
  }

  if (v3)
  {
    CIOnThreadCleanUpPush(v3 - 1, db_write_unlock, a1 + 584);
  }

  v8 = *(a1 + 928);
  db_cache_clear(v8, &__block_literal_global_14_16022);
  *&v35[8] = 0;
  *v35 = *v8;
  if (atomic_load((v8 + 248)))
  {
    for (i = 0; i < v11; ++i)
    {
      *&v35[8] = i;
      _cache_remove(v35);
      v11 = atomic_load((v8 + 248));
    }
  }

  atomic_store(0, (v8 + 248));
  free(v8);
  v12 = *(a1 + 856);
  if (v12)
  {
    free(v12);
    *(a1 + 856) = 0;
  }

  cleanup_string_tables(a1);
  v13 = *(a1 + 864);
  if (v13)
  {
    free(v13);
    *(a1 + 864) = 0;
  }

  v14 = *(a1 + 840);
  if (*(a1 + 848) != v14)
  {
    fd_invalidate(*(a1 + 848));
    fd_release(*(a1 + 848));
    *(a1 + 848) = 0;
    v14 = *(a1 + 840);
  }

  fd_invalidate(v14);
  fd_release(*(a1 + 840));
  *(a1 + 840) = 0;
  v15 = *(a1 + 808);
  if (v15)
  {
    _Block_release(v15);
  }

  v16 = *(a1 + 816);
  if (v16)
  {
    _Block_release(v16);
  }

  v17 = *(a1 + 824);
  if (v17)
  {
    _Block_release(v17);
  }

  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  v18 = *(a1 + 832);
  if (v18)
  {
    _Block_release(v18);
  }

  *(a1 + 832) = 0;
  v19 = *(a1 + 968);
  if (v19)
  {
    _Block_release(v19);
  }

  v20 = *(a1 + 992);
  v21 = *(v20 + 16);
  if (!v21)
  {
    goto LABEL_43;
  }

  do
  {
    v22 = *(v21 + 6);
    if (v22)
    {
      v23 = v22 == 3;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      free(v21[4]);
    }

    v21 = *v21;
  }

  while (v21);
  if (v20)
  {
    v24 = *(v20 + 16);
    if (v24)
    {
      do
      {
        v25 = *v24;
        operator delete(v24);
        v24 = v25;
      }

      while (v25);
    }

LABEL_43:
    v26 = *v20;
    *v20 = 0;
    if (v26)
    {
      operator delete(v26);
    }

    MEMORY[0x1C691FEF0](v20, 0x10A0C4087A21FEBLL);
  }

  *(a1 + 992) = 0;
  pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v27 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v28 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v28, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v27)
  {
    pthread_override_qos_class_end_np(v27);
  }

  db_rwlock_destroy((a1 + 584));
  free(a1);
  v29 = *MEMORY[0x1E69E9840];
}

uint64_t db2_clear_vector_fields(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v199[2] = *MEMORY[0x1E69E9840];
  v191 = 0;
  HIDWORD(v10) = qos_class_self() - 9;
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 2;
  if (v9 > 6)
  {
    v11 = 0;
  }

  else
  {
    v11 = dword_1C2BFF8F0[v9];
  }

  pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_7:
    db_rwlock_wait(a1 + 584, v11, 2);
    goto LABEL_8;
  }

  if (v11 <= 5)
  {
    v143 = v11 - 6;
    v144 = (a1 + 16 * v11 + 648);
    while (!*v144)
    {
      v144 += 2;
      v72 = __CFADD__(v143++, 1);
      if (v72)
      {
        goto LABEL_235;
      }
    }

    goto LABEL_7;
  }

LABEL_235:
  *(a1 + 768) = pthread_self();
LABEL_8:
  pthread_mutex_unlock((a1 + 584));
  if (a2)
  {
    *a2 = 1;
  }

  v180 = a2;
  _db2_flush_all_cache(a1, 0);
  v12 = *(a1 + 36);
  v13 = *(a1 + 40);
  v14 = malloc_type_valloc(*(a1 + 44), 0x1000040A86A77D5uLL);
  if (!v14)
  {
    pthread_mutex_lock((a1 + 584));
    *(a1 + 788) = 0;
    v29 = *(a1 + 760);
    *(a1 + 760) = 0u;
    v30 = *(a1 + 780) != 0;
    *(a1 + 796) = 0;
    db_rwlock_wakeup(a1 + 584, v30, 0);
    pthread_mutex_unlock((a1 + 584));
    if (v29)
    {
      pthread_override_qos_class_end_np(v29);
    }

    if (v180)
    {
      *v180 = 0;
    }

    result = 12;
    goto LABEL_260;
  }

  v15 = v14;
  v16 = *__error();
  v17 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "clear_vector_fields for lost vectors.", buf, 2u);
  }

  *__error() = v16;
  v18 = *MEMORY[0x1E695E480];
  if (!__kSIUINT32SetTypeID)
  {
    __kSIUINT32SetTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  if (__THREAD_SLOT_KEY)
  {
    v20 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v20)
    {
      goto LABEL_17;
    }
  }

  else
  {
    makeThreadId();
    v20 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v20)
    {
LABEL_17:
      if (v20 < 0x801)
      {
        goto LABEL_18;
      }
    }
  }

  makeThreadId();
  v20 = pthread_getspecific(__THREAD_SLOT_KEY);
LABEL_18:
  v168 = v20 - 1;
  CICleanUpPush(v20 - 1, MEMORY[0x1E695D7C0], Instance);
  v199[0] = 0;
  v199[1] = 0;
  v21 = internal_copy_field_ids(a1, "_kMDItemMediaEmbeddingVersion", v199, 4uLL, 0);
  if (v21)
  {
    v22 = v21;
    v23 = *v21;
    if (v23)
    {
      v24 = v21 + 1;
      do
      {
        SIValueSet<unsigned int>::SIValueSetInsert((Instance + 16), v23);
        v25 = *v24++;
        v23 = v25;
      }

      while (v25);
    }

    if (v22 != v199)
    {
      free(v22);
    }
  }

  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFLogClearVectorFields", @"com.apple.Spotlight", 0);
  v181 = 0;
  v27 = a4;
  if (a4 && AppIntegerValue)
  {
    SIValueSet<unsigned long long>::_SIValueSetInnerIterate(a4 + 56, *(a4 + 16), *(a4 + 24), logLostIds, a4, 100);
    v28 = internal_copy_field_ids(a1, "kMDItemIdentifier", v199, 4uLL, 0);
    if (v28)
    {
      v181 = *v28;
      if (v28 != v199)
      {
        free(v28);
      }
    }

    else
    {
      v181 = 0;
    }

    v27 = a4;
  }

  if (!*a3)
  {
    v163 = 0;
    v172 = 0;
    v169 = 0;
    v165 = 0;
    v167 = 0;
    v36 = v13 + v12;
    v188 = v27 + 56;
    v186 = Instance + 48;
    v37 = v15;
    v174 = a3;
    v175 = a5;
    v178 = v15;
    while (1)
    {
      (*(a5 + 16))(a5);
      v39 = fd_pread(*(a1 + 848), v37, *(a1 + 44), v36);
      if (v39 <= 0)
      {
        v35 = v39;
        v145 = v180;
        if (v39 < 0)
        {
          *(a1 + 4) |= 4u;
        }

        v33 = v165;
        v34 = v169;
        v32 = v167;
        v146 = v191;
        if (v191)
        {
          goto LABEL_250;
        }

        goto LABEL_251;
      }

      if (*v37 != 846226020 && *v37 != 1684172850)
      {
        v38 = 1 << *(a1 + 12);
        goto LABEL_39;
      }

      if (db2_page_uncompress_swap(a1, v37, &v191, 0))
      {
        v35 = 0;
LABEL_248:
        v33 = v165;
        v34 = v169;
        v32 = v167;
        goto LABEL_249;
      }

      v187 = v36;
      if (v191)
      {
        v41 = v191;
      }

      else
      {
        v41 = v37;
      }

      v42 = *__error();
      v43 = _SILogForLogForCategory(7);
      v44 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v187 >> *(a1 + 12);
        v46 = *v41;
        v47 = v41[1];
        v48 = v41[2];
        v49 = v41[3];
        *buf = 67110144;
        *&buf[4] = v45;
        *&buf[8] = 1024;
        *&buf[10] = v46;
        *v193 = 1024;
        *&v193[2] = v47;
        *&v193[6] = 1024;
        *&v193[8] = v48;
        *&v193[12] = 1024;
        *v194 = v49;
        _os_log_impl(&dword_1C278D000, v43, v44, "Read page:%d sig:0x%4.4x sz:0x%4.4x used:0x%4.4x flags:0x%4.4x", buf, 0x20u);
      }

      *__error() = v42;
      v37 = v41;
      if (*v41 != 1684172850)
      {
        v15 = v178;
        if (*v178 != 1684172850)
        {
          v178[1] = *(a1 + 44);
        }

        v36 = v187;
        goto LABEL_58;
      }

      ptr = v41;
      v50 = *(v41 + 12);
      v15 = v178;
      if ((v50 & 0xF0) != 0)
      {
        v36 = v187;
        v37 = ptr;
        goto LABEL_58;
      }

      v36 = v187;
      v51 = v187 >> *(a1 + 12);
      v52 = *(a1 + 856);
      v53 = *(v52 + 8);
      v54 = v163;
      if (v163 >= v53 || v163 <= -1)
      {
        v54 = 0;
      }

      if (v54 < v53)
      {
        break;
      }

LABEL_72:
      if (v54)
      {
        v57 = 0;
        v59 = (v52 + 28);
        while (1)
        {
          v60 = *v59;
          v59 += 4;
          if (v60 == v51)
          {
            break;
          }

          if (v54 == ++v57)
          {
            goto LABEL_78;
          }
        }

LABEL_77:
        v163 = v57 + 1;
      }

LABEL_78:
      v61 = ptr + 5;
      v62 = ptr[2];
      v176 = ptr + v62;
      if (ptr + ptr[5] + 20 > ptr + v62 || v62 < 21)
      {
        v37 = ptr;
        goto LABEL_58;
      }

      v182 = 0;
      v64 = 0;
      v166 = 0;
      v185 = ptr + 5;
      v164 = a1;
      v161 = Instance;
      while (*v61 != -4)
      {
        v190 = 0;
        v65 = _inflateDBO(a1, v61, &v190, 0, 0x10000, 0);
        v184 = v61;
        if (v65)
        {
          v35 = v65;
          v147 = *__error();
          v148 = _SILogForLogForCategory(7);
          v149 = os_log_type_enabled(v148, OS_LOG_TYPE_ERROR);
          v150 = v190;
          v32 = v167;
          if (v149)
          {
            v156 = *v184 + 4;
            *buf = 136316418;
            *&buf[4] = "db2_clear_vector_fields";
            *&buf[12] = 1024;
            *v193 = 9436;
            *&v193[4] = 2080;
            *&v193[6] = v185;
            *v194 = 1024;
            *&v194[2] = v156;
            v195 = 2048;
            v196 = v190;
            v197 = 1024;
            v198 = v35;
            _os_log_error_impl(&dword_1C278D000, v148, OS_LOG_TYPE_ERROR, "%s:%d: failed to inflate DBO: mark:%s size:%d mdbo:%p err:%d", buf, 0x32u);
          }

          *__error() = v147;
          v15 = v178;
          if (v150)
          {
            free(v150);
          }

          v33 = v165;
          v34 = v169;
          goto LABEL_249;
        }

        v66 = v190;
        v67 = *(v190 + 3);
        if (v67 <= 0x2F)
        {
          v157 = __si_assert_copy_extra_3233(0, -1);
          v158 = v157;
          v159 = "";
          if (v157)
          {
            v159 = v157;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v159);
          free(v158);
          if (__valid_fs(-1))
          {
            v160 = 2989;
          }

          else
          {
            v160 = 3072;
          }

          *v160 = -559038737;
          abort();
        }

        v68 = a4;
        if (!v64)
        {
          v64 = *v190;
          if (*(a1 + 804))
          {
            v166 = (*(v190 + 10) >> 5) & 1;
          }

          else
          {
            v166 = 0;
          }
        }

        if ((v190[40] & 5) != 0)
        {
          goto LABEL_92;
        }

        if (v67 == 48 || a4 == 0)
        {
          if (v67 == 48)
          {
LABEL_92:
            v69 = *v61 + 4;
            v70 = v61 + v69;
          }

          else
          {
            v74 = 0;
LABEL_159:
            v100 = 0;
            v101 = v66 + 12;
            v102 = v66 + 12;
            while ((~*(v102 + 1) & 0x5020) != 0 || *v102 != 14)
            {
              if ((*(Instance + 176) & 1) == 0)
              {
                v104 = v102[1];
                v105 = *(Instance + 20);
                if (!v105 || !((*(Instance + 16) ^ v104) >> (-4 * v105)))
                {
                  v106 = *(v186 + 8 * ((v104 >> (28 - 4 * v105)) & 0xF));
                  if (v106)
                  {
                    v107 = v105 + 2;
                    do
                    {
                      v106 = *((v106 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v104 >> (32 - 4 * v107++)) & 0xF));
                    }

                    while ((v106 & 1) != 0);
                  }

                  if (v106 && (*(*v106 + 16))(v106))
                  {
                    break;
                  }
                }
              }

LABEL_185:
              v114 = v102[2];
              if (v101 != v102)
              {
                memmove(v101, v102, v114 + 13);
                v74 = 1;
                v66 = v190;
                v182 = 1;
              }

              v102 = (v102 + v114 + 13);
              v101 = (v101 + v101[2] + 13);
              v103 = v66[3];
              if (v102 >= (v66 + v103))
              {
                goto LABEL_188;
              }
            }

            v108 = v102[2];
            v100 += v108 + 13;
            v102 = (v102 + v108 + 13);
            v103 = v66[3];
            if (v102 < (v66 + v103))
            {
              do
              {
                if ((~*(v102 + 1) & 0x5020) != 0 || *v102 != 14)
                {
                  if (*(Instance + 176))
                  {
                    goto LABEL_184;
                  }

                  v110 = v102[1];
                  v111 = *(Instance + 20);
                  if (v111)
                  {
                    if ((*(Instance + 16) ^ v110) >> (-4 * v111))
                    {
                      goto LABEL_184;
                    }
                  }

                  v112 = *(v186 + 8 * ((v110 >> (28 - 4 * v111)) & 0xF));
                  if (v112)
                  {
                    v113 = v111 + 2;
                    do
                    {
                      v112 = *((v112 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v110 >> (32 - 4 * v113++)) & 0xF));
                    }

                    while ((v112 & 1) != 0);
                  }

                  if (!v112 || !(*(*v112 + 16))(v112))
                  {
LABEL_184:
                    v182 = 1;
                    v74 = 1;
                    goto LABEL_185;
                  }
                }

                v109 = v102[2];
                v100 += v109 + 13;
                v102 = (v102 + v109 + 13);
                v103 = v66[3];
              }

              while (v102 < (v66 + v103));
              v74 = 1;
              v182 = 1;
            }

            else
            {
              v74 = 1;
              v182 = 1;
            }

LABEL_188:
            v170 = v74;
            v99 = v184;
            if (!v100)
            {
              goto LABEL_194;
            }

            v66[3] = v103 - v100;
LABEL_190:
            v115 = *v99;
            v69 = *v99 + 4;
            v70 = v99 + v69;
            if (v170)
            {
              goto LABEL_195;
            }
          }

LABEL_93:
          v71 = v185;
          v36 = v187;
          if ((v182 & 1) != 0 && v185 != v184)
          {
            memmove(v185, v184, v69);
            v71 = v185;
          }

          v185 = &v71[v69];
          a5 = v175;
          goto LABEL_97;
        }

        v162 = v64;
        v173 = 0;
        v170 = 0;
        v75 = v190 + 48;
        v76 = 1;
        v77 = "<unknown>";
        v78 = (v190 + 48);
        v79 = v181;
        do
        {
          v81 = v78 + 13;
          v82 = v78[2];
          if ((~*(v78 + 1) & 0x5030) != 0 || *v78 != 14)
          {
            if (v75 != v78)
            {
              memmove(v75, v78, v82 + 13);
              v68 = a4;
            }

            if (*(v75 + 1) == v79)
            {
              v77 = v75 + 13;
            }

            v75 += *(v75 + 2) + 13;
          }

          else
          {
            if (v82 < 8)
            {
              goto LABEL_131;
            }

            v179 = v77;
            v83 = 0;
            v84 = 0;
            v85 = v82 >> 3;
            do
            {
              v86 = *&v81[8 * v83];
              if (*(v68 + 184))
              {
                goto LABEL_125;
              }

              v87 = *(v68 + 24);
              if (v87)
              {
                if ((*(v68 + 16) ^ v86) >> (-4 * v87))
                {
                  goto LABEL_125;
                }
              }

              v88 = 60 - 4 * v87;
              v89 = *(v188 + 8 * ((v86 >> v88) & 0xF));
              if (v89)
              {
                v90 = v87 + 2;
                do
                {
                  v88 = 64 - 4 * v90;
                  v89 = *((v89 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v86 >> v88) & 0xF));
                  ++v90;
                }

                while ((v89 & 1) != 0);
              }

              if (!v89 || (v91 = (*(*v89 + 16))(v89, *&v81[8 * v83], ~(-1 << v88)), v68 = a4, (v91 & 1) == 0))
              {
LABEL_125:
                if (v83 != v84)
                {
                  *&v81[8 * v84] = v86;
                }

                v76 = 0;
                ++v84;
              }

              ++v83;
            }

            while (v83 != v85);
            if (v85 == v84)
            {
              v79 = v181;
              v77 = v179;
LABEL_131:
              if (v75 != v78)
              {
                memmove(v75, v78, v78[2] + 13);
                v68 = a4;
              }

              v75 += *(v75 + 2) + 13;
              goto LABEL_110;
            }

            if (v181)
            {
              string_and_length_for_id_15021 = get_string_and_length_for_id_15021(v164, 0, v78[1], 0, 0);
              v183 = *__error();
              v92 = _SILogForLogForCategory(16);
              if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109634;
                *&buf[4] = v85 - v84;
                *&buf[8] = 1024;
                *&buf[10] = v82 >> 3;
                *v193 = 2080;
                *&v193[2] = string_and_length_for_id_15021;
                _os_log_impl(&dword_1C278D000, v92, OS_LOG_TYPE_DEFAULT, "clear_vector_fields remove %u of %u vec_ids in %s", buf, 0x18u);
              }

              *__error() = v183;
            }

            if (v84)
            {
              v93 = (8 * v84);
              v78[2] = v93;
              if (v75 != v78)
              {
                memmove(v75, v78, v93 + 13);
              }

              v173 += 8 * (v85 - v84);
              v75 += *(v75 + 2) + 13;
              ++v169;
              v170 = 1;
              v182 = 1;
              v68 = a4;
              v79 = v181;
              v77 = v179;
            }

            else
            {
              ++v165;
              v173 += v78[2] + 13;
              v170 = 1;
              v182 = 1;
              v68 = a4;
              v79 = v181;
              v77 = v179;
            }
          }

LABEL_110:
          v78 = &v81[v82];
          v66 = v190;
          v80 = *(v190 + 3);
        }

        while (&v81[v82] < &v190[v80]);
        if (!v173)
        {
          a1 = v164;
          Instance = v161;
          v98 = v167;
          goto LABEL_156;
        }

        LODWORD(v80) = v80 - v173;
        *(v190 + 3) = v80;
        if (v76)
        {
          v94 = v167 + 1;
        }

        else
        {
          v94 = v167;
        }

        Instance = v161;
        if (!v79)
        {
          v98 = v94;
          a1 = v164;
LABEL_156:
          v64 = v162;
          v99 = v184;
          if ((v76 & 1) == 0)
          {
            v167 = v98;
            goto LABEL_194;
          }

LABEL_157:
          v167 = v98;
          if (v80 > 0x30)
          {
            v74 = v170;
            goto LABEL_159;
          }

          goto LABEL_190;
        }

        v95 = *__error();
        v96 = _SILogForLogForCategory(16);
        a1 = v164;
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v97 = "vector field updated";
          if (v76)
          {
            v97 = "all vector fields removed";
          }

          *&buf[4] = v77;
          *&buf[12] = 2080;
          *v193 = v97;
          _os_log_impl(&dword_1C278D000, v96, OS_LOG_TYPE_DEFAULT, "clear_vector_fields item %s %s", buf, 0x16u);
        }

        *__error() = v95;
        v64 = v162;
        if (v76)
        {
          v98 = v167 + 1;
          LODWORD(v80) = v66[3];
          v99 = v184;
          goto LABEL_157;
        }

        v99 = v184;
LABEL_194:
        v115 = *v99;
        v69 = *v99 + 4;
        v70 = v99 + v69;
        if ((v170 & 1) == 0)
        {
          goto LABEL_93;
        }

LABEL_195:
        *buf = 0;
        serializeDBO(a1);
        v116 = *buf;
        v117 = (**buf + 4);
        if (v117 <= v69)
        {
          a5 = v175;
        }

        else
        {
          v118 = **buf - v115;
          a5 = v175;
          if (v118 > v184 - v185)
          {
            v119 = ptr[2];
            v120 = ptr[1];
            v121 = ptr;
            if (v120 < v119 + v118)
            {
              if (v118 <= 0x1000)
              {
                v122 = 4096;
              }

              else
              {
                v122 = v118;
              }

              v123 = v120 + v122;
              ptr[1] = v123;
              v121 = malloc_type_realloc(ptr, v123, 0x39AC08BAuLL);
              v191 = v121;
              v119 = v121[2];
            }

            v124 = v70 - ptr;
            v125 = v121 + v70 - ptr;
            v185 = (v121 + v185 - ptr);
            v70 = &v125[v118];
            memmove(v70, v125, v119 - v124 + 20);
            v126 = v121[2] + v118;
            v121[2] = v126;
            v176 = v121 + v126;
            ptr = v121;
            v116 = *buf;
          }
        }

        ++v172;
        memmove(v185, v116, v117);
        v185 = (v185 + v117);
        free(*buf);
        v36 = v187;
LABEL_97:
        free(v190);
        v61 = v70;
        v72 = v70 >= v176;
        a3 = v174;
        if (v72)
        {
          break;
        }
      }

      if ((v182 & 1) == 0)
      {
        v37 = ptr;
        v15 = v178;
        goto LABEL_58;
      }

      v37 = ptr;
      ptr[2] = v185 - ptr;
      v127 = *(a1 + 856);
      v128 = *(v127 + 8);
      if (!v128)
      {
        v15 = v178;
        goto LABEL_58;
      }

      v129 = *(v127 + 16);
      if (v129 < v128)
      {
        v130 = v127 + 16 * v129;
        v132 = *(v130 + 20);
        v131 = v130 + 20;
        if (v132 == v64 && v166 == *(v131 + 12) >> 28)
        {
          goto LABEL_229;
        }
      }

      if (v128 < 1)
      {
        v140 = 0;
        v137 = 0;
        goto LABEL_225;
      }

      v133 = 0;
      v134 = *(v127 + 8);
      while (2)
      {
        v137 = (v134 + v133) >> 1;
        v138 = v127 + 20 + 16 * v137;
        v139 = v166 - (*(v138 + 12) >> 28);
        if (v139)
        {
          v135 = v139;
          v136 = (v134 + v133) >> 1;
          if (v135 < 0)
          {
            goto LABEL_216;
          }
        }

        else
        {
          v135 = v64 - *v138;
          v136 = (v134 + v133) >> 1;
          if (v135 < 0)
          {
LABEL_216:
            v134 = v136;
            if (v133 >= v136)
            {
              v140 = v135 > 0;
              goto LABEL_225;
            }

            continue;
          }
        }

        break;
      }

      if (v135)
      {
        v133 = v137 + 1;
        v136 = v134;
        goto LABEL_216;
      }

      v140 = 0;
LABEL_225:
      v141 = v128 - 1 > v137 && v140;
      v142 = v137 + v141;
      *(v127 + 16) = v142;
      v131 = v127 + 16 * v142 + 20;
LABEL_229:
      page_release(a1, ptr, *(v131 + 8), 5u, 0);
      v15 = v178;
LABEL_58:
      if (v191)
      {
        free(v191);
        v191 = 0;
        v37 = v15;
      }

      if ((~*(a1 + 4) & 0x60) == 0)
      {
        v35 = 22;
        goto LABEL_248;
      }

      v38 = v37[1];
LABEL_39:
      v36 += v38;
      if (*a3)
      {
        v35 = 89;
        goto LABEL_248;
      }
    }

    v56 = (v52 + 16 * v54 + 28);
    v57 = v54;
    while (1)
    {
      v58 = *v56;
      v56 += 4;
      if (v58 == v51)
      {
        goto LABEL_77;
      }

      if (v53 == ++v57)
      {
        goto LABEL_72;
      }
    }
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v172 = 0;
  v35 = 89;
LABEL_249:
  v145 = v180;
  v146 = v191;
  if (v191)
  {
LABEL_250:
    free(v146);
  }

LABEL_251:
  free(v15);
  pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v151 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v152 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v152, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v151)
  {
    pthread_override_qos_class_end_np(v151);
  }

  if (v145)
  {
    *v145 = 0;
  }

  v153 = *__error();
  v154 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = v172;
    *&buf[8] = 1024;
    *&buf[10] = v34;
    *v193 = 1024;
    *&v193[2] = v33;
    *&v193[6] = 1024;
    *&v193[8] = v32;
    _os_log_impl(&dword_1C278D000, v154, OS_LOG_TYPE_DEFAULT, "clear_vector_fields in %u items: %u vec_id removed, %u field removed, %u all vector fields cleared", buf, 0x1Au);
  }

  *__error() = v153;
  if (Instance)
  {
    CICleanUpPop(v168);
  }

  result = v35;
LABEL_260:
  v155 = *MEMORY[0x1E69E9840];
  return result;
}

char *get_string_and_length_for_id_15021(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3 & 0x7FFFFFFF;
  if ((a3 & 0x7FFFFFFFu) > 0x7FFFFFFD)
  {
    result = 0;
  }

  else if ((*(a1 + 804) & 0x14) != 0)
  {
    v9 = *(a1 + 8 * a2 + 880);
    v31 = 0;
    v10 = v5;
    if (a5)
    {
      result = data_map_get_data_locked(v9, v5, &v31);
    }

    else
    {
      result = data_map_get_data(v9, v5, &v31);
    }

    if (result)
    {
      if (a4)
      {
        v15 = v31;
        v16 = &result[v31 - 1];
        if (v16 > result)
        {
          v17 = v31 - 1;
          do
          {
            if (*v16 == 22 && v16[1] == 2)
            {
              v31 = v17;
              v15 = v17;
            }

            --v16;
            --v17;
          }

          while (v16 > result);
        }

        *a4 = v15;
      }
    }

    else
    {
      v19 = data_map_count(v9);
      result = 0;
      if (v19 < v10)
      {
        v30 = v19;
        v20 = *__error();
        v21 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v26 = *(a1 + 4);
          v27 = data_map_valid(v9);
          *buf = 136316930;
          v33 = "_get_string_and_length_for_id";
          v34 = 1024;
          v35 = 574;
          v28 = "y";
          if (!v27)
          {
            v28 = "n";
          }

          v36 = 2048;
          v37 = v10;
          v38 = 2048;
          v39 = v30;
          v40 = 1024;
          v41 = a2;
          v42 = 2080;
          v43 = a1 + 324;
          v44 = 1024;
          v45 = v26;
          v46 = 2080;
          v47 = v28;
          _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
        }

        *__error() = v20;
        result = 0;
        if ((*(a1 + 4) & 0x20) != 0)
        {
          v22 = *__error();
          v23 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v29 = *(a1 + 4);
            *buf = 136315906;
            v33 = "_get_string_and_length_for_id";
            v34 = 1024;
            v35 = 576;
            v36 = 2080;
            v37 = a1 + 324;
            v38 = 1024;
            LODWORD(v39) = v29;
            _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
          }

          *__error() = v22;
          *(a1 + 4) |= 0x40u;
          result = 0;
        }
      }
    }
  }

  else
  {
    v12 = *(a1 + 880 + 8 * a2);
    if (*(v12 + 56) > v5 && (v13 = *(*(v12 + 32) + 8 * v5)) != 0)
    {
      v14 = table_extra_bytes_14628[a2];
      if (a4)
      {
        *a4 = *(*(v12 + 40) + v5);
        v13 = *(*(*(a1 + 880 + 8 * a2) + 32) + 8 * v5);
      }

      result = (v13 + v14 + 4);
    }

    else
    {
      v24 = *(a1 + 4);
      if ((v24 & 0x20) != 0)
      {
        result = 0;
        *(a1 + 4) = v24 | 0x40;
      }

      else
      {
        if (SIIsAppleInternal_onceToken != -1)
        {
          dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
        }

        result = 0;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t logLostIds(uint64_t *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(v14, 0x400uLL);
  if (a2)
  {
    v4 = 0;
    v5 = a2 - 1;
    do
    {
      v6 = *a1++;
      v4 += snprintf(&v14[v4], 1024 - v4, "%llu,", v6);
    }

    while (v4 <= 0x3FF && v5-- != 0);
  }

  v8 = *__error();
  v9 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = v14;
    _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "lostIds: %s", buf, 0xCu);
  }

  *__error() = v8;
  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t db2_clear_docids(uint64_t a1, _DWORD *a2, _DWORD *a3, int a4, unsigned int (*a5)(_DWORD *, uint64_t), uint64_t a6)
{
  v143 = *MEMORY[0x1E69E9840];
  v128 = 0;
  HIDWORD(v13) = qos_class_self() - 9;
  LODWORD(v13) = HIDWORD(v13);
  v12 = v13 >> 2;
  if (v12 > 6)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_1C2BFF8F0[v12];
  }

  pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_7:
    db_rwlock_wait(a1 + 584, v14, 2);
    goto LABEL_8;
  }

  if (v14 <= 5)
  {
    v104 = v14 - 6;
    v105 = (a1 + 16 * v14 + 648);
    while (!*v105)
    {
      v105 += 2;
      if (__CFADD__(v104++, 1))
      {
        goto LABEL_138;
      }
    }

    goto LABEL_7;
  }

LABEL_138:
  *(a1 + 768) = pthread_self();
LABEL_8:
  pthread_mutex_unlock((a1 + 584));
  if (a2)
  {
    *a2 = 1;
  }

  if (a4)
  {
    v15 = 32;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 4) |= v15;
  _db2_flush_all_cache(a1, 0);
  v16 = *(a1 + 36);
  v17 = *(a1 + 40);
  v125 = malloc_type_valloc(*(a1 + 44), 0x1000040A86A77D5uLL);
  if (v125)
  {
    if (*a3)
    {
      v18 = 89;
LABEL_16:
      v19 = v125;
LABEL_17:
      if (v128)
      {
        free(v128);
      }

      free(v19);
      *(a1 + 4) &= ~v15;
      pthread_mutex_lock((a1 + 584));
      *(a1 + 788) = 0;
      v20 = *(a1 + 760);
      *(a1 + 760) = 0u;
      v21 = *(a1 + 780) != 0;
      *(a1 + 796) = 0;
      db_rwlock_wakeup(a1 + 584, v21, 0);
      pthread_mutex_unlock((a1 + 584));
      if (v20)
      {
        pthread_override_qos_class_end_np(v20);
      }

      result = v18;
      if (a2)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v126 = a3;
    v122 = a5;
    v119 = 0;
    v26 = v17 + v16;
    v19 = v125;
    v27 = v125;
LABEL_30:
    v29 = fd_pread(*(a1 + 848), v27, *(a1 + 44), v26);
    if (v29 <= 0)
    {
      v18 = v29;
      if (v29 < 0)
      {
        *(a1 + 4) |= 4u;
      }

      goto LABEL_17;
    }

    if (*v27 != 846226020 && *v27 != 1684172850)
    {
      v28 = 1 << *(a1 + 12);
      goto LABEL_29;
    }

    if (db2_page_uncompress_swap(a1, v27, &v128, 0))
    {
      v18 = 0;
      goto LABEL_17;
    }

    if (v128)
    {
      v27 = v128;
    }

    v31 = *__error();
    v32 = _SILogForLogForCategory(7);
    v33 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v26 >> *(a1 + 12);
      v35 = *v27;
      v36 = v27[1];
      v37 = v27[2];
      v38 = v27[3];
      *buf = 67110144;
      *&buf[4] = v34;
      *&buf[8] = 1024;
      *&buf[10] = v35;
      *v130 = 1024;
      *&v130[2] = v36;
      LOWORD(v131) = 1024;
      *(&v131 + 2) = v37;
      HIWORD(v131) = 1024;
      *v132 = v38;
      _os_log_impl(&dword_1C278D000, v32, v33, "Read page:%d sig:0x%4.4x sz:0x%4.4x used:0x%4.4x flags:0x%4.4x", buf, 0x20u);
    }

    *__error() = v31;
    if (*v27 != 1684172850)
    {
      if (*v19 != 1684172850)
      {
        v19[1] = *(a1 + 44);
      }

      goto LABEL_129;
    }

    if ((v27[3] & 0xF0) != 0)
    {
      goto LABEL_129;
    }

    v39 = v26 >> *(a1 + 12);
    v40 = *(a1 + 856);
    v41 = *(v40 + 8);
    v42 = v119;
    if (v119 >= v41 || v119 <= -1)
    {
      v42 = 0;
    }

    if (v42 >= v41)
    {
LABEL_53:
      if (!v42)
      {
LABEL_61:
        v49 = v27 + 5;
        v50 = v27[2];
        v124 = v27 + v50;
        if (v27 + v27[5] + 20 > v27 + v50 || v50 < 21)
        {
          v19 = v125;
          goto LABEL_129;
        }

        v121 = a6;
        v116 = v15;
        v117 = a2;
        v123 = 0;
        v52 = 0;
        v120 = 0;
        v53 = v41 - 1;
        v54 = (v27 + 5);
        while (1)
        {
          if (*v49 == -4)
          {
LABEL_105:
            if ((v123 & 1) == 0)
            {
              a2 = v117;
              v15 = v116;
              a6 = v121;
              v19 = v125;
              goto LABEL_129;
            }

            v27[2] = v54 - v27;
            v87 = *(a1 + 856);
            v88 = *(v87 + 8);
            v19 = v125;
            if (!v88)
            {
              a2 = v117;
              v15 = v116;
              a6 = v121;
              goto LABEL_129;
            }

            v89 = v52;
            v90 = *(v87 + 16);
            a2 = v117;
            v15 = v116;
            a6 = v121;
            if (v90 < v88)
            {
              v91 = v87 + 16 * v90;
              v93 = *(v91 + 20);
              v92 = v91 + 20;
              if (v93 == v89 && v120 == *(v92 + 12) >> 28)
              {
                goto LABEL_128;
              }
            }

            if (v88 < 1)
            {
              v101 = 0;
              v98 = 0;
              goto LABEL_124;
            }

            v94 = 0;
            v95 = *(v87 + 8);
            while (2)
            {
              v98 = (v95 + v94) >> 1;
              v99 = v87 + 20 + 16 * v98;
              v100 = v120 - (*(v99 + 12) >> 28);
              if (v100)
              {
                v96 = v100;
                v97 = (v95 + v94) >> 1;
                if (v96 < 0)
                {
                  goto LABEL_115;
                }
              }

              else
              {
                v96 = v89 - *v99;
                v97 = (v95 + v94) >> 1;
                if (v96 < 0)
                {
LABEL_115:
                  v95 = v97;
                  if (v94 >= v97)
                  {
                    v101 = v96 > 0;
                    goto LABEL_124;
                  }

                  continue;
                }
              }

              break;
            }

            if (v96)
            {
              v94 = v98 + 1;
              v97 = v95;
              goto LABEL_115;
            }

            v101 = 0;
LABEL_124:
            v102 = v88 - 1 > v98 && v101;
            v103 = v98 + v102;
            *(v87 + 16) = v103;
            v92 = v87 + 16 * v103 + 20;
LABEL_128:
            page_release(a1, v27, *(v92 + 8), 5u, 0);
LABEL_129:
            if (v128)
            {
              free(v128);
              v128 = 0;
              v27 = v19;
            }

            if ((~*(a1 + 4) & 0x60) == 0)
            {
              v18 = 22;
              goto LABEL_17;
            }

            v28 = v27[1];
LABEL_29:
            v26 += v28;
            if (*v126)
            {
              v18 = 89;
              goto LABEL_17;
            }

            goto LABEL_30;
          }

          v127 = 0;
          v56 = _inflateDBO(a1, v49, &v127, 0, 0x10000, 0);
          if (v56)
          {
            v18 = v56;
            v107 = *__error();
            v108 = _SILogForLogForCategory(7);
            v109 = os_log_type_enabled(v108, OS_LOG_TYPE_ERROR);
            v110 = v127;
            if (v109)
            {
              v111 = *v49 + 4;
              *buf = 136316418;
              *&buf[4] = "db2_clear_docids";
              *&buf[12] = 1024;
              *v130 = 9794;
              *&v130[4] = 2080;
              v131 = v54;
              *v132 = 1024;
              *&v132[2] = v111;
              v133 = 2048;
              *v134 = v127;
              *&v134[8] = 1024;
              *&v134[10] = v18;
              _os_log_error_impl(&dword_1C278D000, v108, OS_LOG_TYPE_ERROR, "%s:%d: failed to inflate DBO: mark:%s size:%d mdbo:%p err:%d", buf, 0x32u);
            }

            *__error() = v107;
            if (v110)
            {
              free(v110);
            }

            a2 = v117;
            v15 = v116;
            goto LABEL_16;
          }

          v57 = v127;
          if (*(v127 + 3) <= 0x2Fu)
          {
            v112 = __si_assert_copy_extra_3233(0, -1);
            v113 = v112;
            v114 = "";
            if (v112)
            {
              v114 = v112;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v114);
            free(v113);
            if (__valid_fs(-1))
            {
              v115 = 2989;
            }

            else
            {
              v115 = 3072;
            }

            *v115 = -559038737;
            abort();
          }

          if (v41 < 1)
          {
            goto LABEL_79;
          }

          if (*(a1 + 804))
          {
            v61 = (*(v127 + 10) >> 5) & 1;
            v58 = *(a1 + 856);
            v62 = v58 + 16 * v53;
            if (v61 == *(v62 + 32) >> 28)
            {
              v60 = (v62 + 20);
LABEL_78:
              if ((*v127 - *v60) <= 0)
              {
                goto LABEL_85;
              }

              goto LABEL_79;
            }
          }

          else
          {
            v58 = *(a1 + 856);
            v59 = v58 + 16 * v53;
            if (!(*(v59 + 32) >> 28))
            {
              v60 = (v59 + 20);
              goto LABEL_78;
            }

            v61 = 0;
          }

          if (v61 - (*(v58 + 16 * v53 + 32) >> 28) <= 0)
          {
LABEL_85:
            v63 = v52;
            v64 = *__error();
            v65 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              if (*(a1 + 804))
              {
                v80 = (v57[10] >> 5) & 1;
              }

              else
              {
                v80 = 0;
              }

              v81 = *v57;
              v82 = *(a1 + 856) + 20;
              v83 = v82 + 16 * (v41 - 1);
              v84 = *v83;
              v85 = v82 + 16 * v41;
              v86 = *v85;
              LODWORD(v83) = *(v83 + 12) >> 28;
              LODWORD(v85) = *(v85 + 12) >> 28;
              *buf = 136317442;
              *&buf[4] = "db2_clear_docids";
              *&buf[12] = 1024;
              *v130 = 9813;
              *&v130[4] = 2048;
              v131 = v81;
              *v132 = 1024;
              *&v132[2] = v80;
              v133 = 1024;
              *v134 = v41 - 1;
              *&v134[4] = 2048;
              *&v134[6] = v84;
              v135 = 1024;
              v136 = v83;
              v137 = 1024;
              v138 = v41;
              v139 = 2048;
              v140 = v86;
              v141 = 1024;
              v142 = v85;
              _os_log_error_impl(&dword_1C278D000, v65, OS_LOG_TYPE_ERROR, "%s:%d: invalid entry oid: 0x%llx type:%d, map[%d] oid:0x%llx type:%d, map[%d] oid:0x%llx type:%d", buf, 0x4Eu);
            }

            *__error() = v64;
            v52 = v63;
            v53 = v41 - 1;
            if (v52)
            {
              goto LABEL_87;
            }

LABEL_80:
            v52 = *v57;
            if (*(a1 + 804))
            {
              v120 = (v57[10] >> 5) & 1;
            }

            else
            {
              v120 = 0;
            }

            goto LABEL_87;
          }

LABEL_79:
          if (!v52)
          {
            goto LABEL_80;
          }

LABEL_87:
          if ((v57[10] & 5) != 0 || !v122(v57, v121))
          {
            v66 = *v49 + 4;
            if (v123)
            {
              memmove(v54, v49, *v49 + 4);
            }

            v55 = v49 + v66;
            v54 += v66;
          }

          else
          {
            v118 = v52;
            *(v57 + 4) = 0;
            v67 = *v49;
            v68 = *v49 + 4;
            v55 = v49 + v68;
            *buf = 0;
            serializeDBO(a1);
            v69 = *buf;
            v70 = (**buf + 4);
            if (v70 <= v68)
            {
              v53 = v41 - 1;
            }

            else
            {
              v71 = **buf - v67;
              v53 = v41 - 1;
              if (v71 > v49 - v54)
              {
                v72 = v27[2];
                v73 = v27[1];
                v74 = v27;
                if (v73 < v72 + v71)
                {
                  if (v71 <= 0x1000)
                  {
                    v75 = 4096;
                  }

                  else
                  {
                    v75 = v71;
                  }

                  v76 = v73 + v75;
                  v27[1] = v76;
                  v74 = malloc_type_realloc(v27, v76, 0x7DEA3E8AuLL);
                  v128 = v74;
                  v72 = v74[2];
                }

                v77 = v55 - v27;
                v78 = v74 + v55 - v27;
                v54 = v74 + v54 - v27;
                v55 = &v78[v71];
                memmove(v55, v78, v72 - v77 + 20);
                v79 = v74[2] + v71;
                v74[2] = v79;
                v124 = v74 + v79;
                v69 = *buf;
                v27 = v74;
              }
            }

            memmove(v54, v69, v70);
            v54 += v70;
            free(*buf);
            v123 = 1;
            v52 = v118;
          }

          free(v127);
          v49 = v55;
          if (v55 >= v124)
          {
            goto LABEL_105;
          }
        }
      }

      v45 = 0;
      v47 = (v40 + 28);
      while (1)
      {
        v48 = *v47;
        v47 += 4;
        if (v48 == v39)
        {
          break;
        }

        if (v42 == ++v45)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v44 = (v40 + 16 * v42 + 28);
      v45 = v42;
      while (1)
      {
        v46 = *v44;
        v44 += 4;
        if (v46 == v39)
        {
          break;
        }

        if (v41 == ++v45)
        {
          goto LABEL_53;
        }
      }
    }

    v119 = v45 + 1;
    v41 = v45;
    goto LABEL_61;
  }

  *(a1 + 4) &= ~v15;
  pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v24 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v25 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v25, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v24)
  {
    pthread_override_qos_class_end_np(v24);
  }

  result = 12;
  if (a2)
  {
LABEL_22:
    *a2 = 0;
  }

LABEL_23:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _db_page_info_cmp(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t db2_apply(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t), uint64_t a3)
{
  v93 = *MEMORY[0x1E69E9840];
  v87 = 0;
  v4 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v4 = __THREAD_SLOT_KEY;
  }

  v5 = pthread_getspecific(v4);
  HIDWORD(v7) = qos_class_self() - 9;
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 2;
  if (v6 > 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_1C2BFF8F0[v6];
  }

  v9 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_9:
    db_rwlock_wait(a1 + 584, v8, 2);
    goto LABEL_10;
  }

  if (v8 <= 5)
  {
    v65 = v8 - 6;
    v66 = (a1 + 16 * v8 + 648);
    while (!*v66)
    {
      v66 += 2;
      if (__CFADD__(v65++, 1))
      {
        goto LABEL_75;
      }
    }

    goto LABEL_9;
  }

LABEL_75:
  *(a1 + 768) = pthread_self();
LABEL_10:
  pthread_mutex_unlock((a1 + 584));
  if (v9)
  {
    v73 = *__error();
    v74 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db2_apply";
      v89 = 1024;
      v90 = 10371;
      v91 = 1024;
      v92 = v9;
      _os_log_error_impl(&dword_1C278D000, v74, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
    }

    *__error() = v73;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 10371);
  }

  v10 = v5 - 1;
  v11 = v5;
  v12 = (v5 - 1);
  if (v5)
  {
    v13 = CIOnThreadCleanUpPush((v5 - 1), db_write_unlock, a1 + 584);
  }

  else
  {
    v13 = -1;
  }

  _db2_flush_all_cache(a1, 0);
  v14 = *(a1 + 36);
  v15 = *(a1 + 40);
  v16 = malloc_type_valloc(*(a1 + 44), 0x1000040A86A77D5uLL);
  if (v16)
  {
    v17 = v16;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v18 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
    v86 = v18;
    v84 = v19;
    v85 = HIDWORD(v18);
    v83 = v20;
    v21 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
    *(v21 + 216) = 0;
    v75 = *(v21 + 312);
    v22 = *(v21 + 224);
    if (v22)
    {
      v22(*(v21 + 288));
    }

    if (_setjmp(v21))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v21 + 312) = v75;
      v23 = __THREAD_SLOT_KEY;
      if (!__THREAD_SLOT_KEY)
      {
        makeThreadId();
        v23 = __THREAD_SLOT_KEY;
      }

      v24 = pthread_getspecific(v23);
      if (!v24 || (v25 = v24, v24 >= 0x801))
      {
        makeThreadId();
        v25 = pthread_getspecific(__THREAD_SLOT_KEY);
      }

      v26 = &threadData[9 * v25];
      v28 = *(v26 - 4);
      v27 = (v26 - 2);
      if (v28 > v83)
      {
        v29 = v25 - 1;
        do
        {
          CIOnThreadCleanUpPop(v29);
        }

        while (*v27 > v83);
      }

      dropThreadId(v86, 1, add_explicit + 1);
      CICleanUpReset(v86, v84);
      v30 = 0;
      v31 = v87;
      if (!v87)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v79 = v13;
    v80 = v11;
    v81 = v12;
    v82 = v10;
    v45 = v15 + v14;
    pthread_mutex_lock((a1 + 584));
    *(a1 + 796) = 1;
    db_rwlock_wakeup(a1 + 584, 1, 1);
    pthread_mutex_unlock((a1 + 584));
    v46 = 0;
    for (i = v17; ; i = v50)
    {
      v48 = fd_pread(*(a1 + 848), i, *(a1 + 44), v45);
      if (v48 <= 0)
      {
        v12 = v81;
        v10 = v82;
        v13 = v79;
        v11 = v80;
        v63 = v75;
        if (v48 < 0)
        {
          *(a1 + 4) |= 4u;
        }

        v30 = v48;
        v64 = add_explicit;
        goto LABEL_78;
      }

      if (db2_page_uncompress_swap(a1, i, &v87, 0))
      {
        v30 = v46;
LABEL_77:
        v12 = v81;
        v10 = v82;
        v13 = v79;
        v11 = v80;
        v63 = v75;
        v64 = add_explicit;
LABEL_78:
        v68 = threadData[9 * v86 + 1] + 320 * v85;
        *(v68 + 312) = v63;
        v69 = *(v68 + 232);
        if (v69)
        {
          v69(*(v68 + 288));
        }

        dropThreadId(v86, 0, v64 + 1);
        v31 = v87;
        if (!v87)
        {
LABEL_29:
          free(v17);
          v32 = pthread_mutex_lock((a1 + 584));
          *(a1 + 788) = 0;
          v33 = *(a1 + 760);
          *(a1 + 760) = 0u;
          v34 = *(a1 + 780) != 0;
          *(a1 + 796) = 0;
          db_rwlock_wakeup(a1 + 584, v34, 0);
          pthread_mutex_unlock((a1 + 584));
          if (v33)
          {
            pthread_override_qos_class_end_np(v33);
          }

          if (v32)
          {
            sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 10475);
          }

          v35 = v30;
          result = v30;
          if (!v11)
          {
            goto LABEL_41;
          }

LABEL_38:
          CIOnThreadCleanUpClearItem(v12, v13);
          v40 = &threadData[9 * v10];
          v43 = *(v40 + 14);
          v41 = v40 + 7;
          v42 = v43;
          if (v13 + 1 == v43)
          {
            *v41 = v42 - 1;
          }

          result = v35;
          goto LABEL_41;
        }

LABEL_28:
        free(v31);
        goto LABEL_29;
      }

      v49 = v87;
      if (!v87)
      {
        v49 = i;
      }

      v50 = v49;
      if (*v49 != 1684172850)
      {
        break;
      }

      if ((v49[3] & 0xF0) != 0)
      {
        goto LABEL_61;
      }

      v51 = v49[2];
      if (v51 < 21)
      {
        goto LABEL_61;
      }

      v52 = (v49 + v51);
      v53 = (v49 + 5);
      v54 = v46;
      while (1)
      {
        v55 = v53;
        *buf = 0;
        _inflateDBO(a1, v53, buf, 0, 0, 0);
        v56 = *buf;
        if (*(*buf + 12) <= 0x2Fu)
        {
          v70 = __si_assert_copy_extra_3233(0, -1);
          v71 = v70;
          v72 = "";
          if (v70)
          {
            v72 = v70;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v72);
          free(v71);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        if ((*(*buf + 40) & 5) != 0)
        {
          free(*buf);
          v57 = v54;
        }

        else
        {
          v58 = a2(a1, *buf, a3);
          v59 = v58;
          v60 = v58;
          free(v56);
          v57 = v60;
          if (!v59)
          {
            v30 = 0xFFFFFFFFLL;
            goto LABEL_77;
          }
        }

        if (*v55 == -4)
        {
          break;
        }

        v53 = (v55 + *v55 + 4);
        v54 = v57;
        v61 = v57;
        if (v53 >= v52)
        {
          goto LABEL_62;
        }
      }

      v61 = v57;
      v62 = v87;
      if (v87)
      {
        goto LABEL_63;
      }

LABEL_43:
      v45 += v50[1];
      v46 = v61;
    }

    if (*v17 != 1684172850)
    {
      v17[1] = *(a1 + 44);
    }

LABEL_61:
    v61 = v46;
LABEL_62:
    v62 = v87;
    if (v87)
    {
LABEL_63:
      free(v62);
      v87 = 0;
      v50 = v17;
    }

    goto LABEL_43;
  }

  v37 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v38 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v39 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v39, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v38)
  {
    pthread_override_qos_class_end_np(v38);
  }

  if (v37)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 10387);
  }

  result = 12;
  v35 = 12;
  if (v11)
  {
    goto LABEL_38;
  }

LABEL_41:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db2_get_vector_for_id(uint64_t a1, unint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  data_map_get_data_entry(&v7, a1, a2, &v10, 0);
  result = 0;
  if (v10 == 1)
  {
    result = v7;
    *a3 = v8;
    *a4 = v9;
  }

  return result;
}

uint64_t db2_get_vector_for_id_locked(uint64_t a1, unint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  data_map_get_data_entry(&v7, a1, a2, &v10, 1);
  result = 0;
  if (v10 == 1)
  {
    result = v7;
    *a3 = v8;
    *a4 = v9;
  }

  return result;
}

uint64_t grow_string_table_locked(uint64_t a1, int a2, char *a3, int a4, uint64_t a5, uint64_t a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v11 = a1 + 880;
  v12 = *(a1 + 880 + 8 * a2);
  v13 = table_extra_bytes_14628[a2];
  v14 = *(v12 + 24);
  v66 = 0;
  value_out = 0;
  v15 = db_string_page_flags[a2];
  *buf = 0;
  if (_page_alloc_fetch(a1, buf, 0x4000, &v66 + 1, &v66, v15))
  {
    goto LABEL_31;
  }

  v63 = a5;
  v64 = a1;
  v58 = v11;
  __source = a3;
  value = v14;
  v61 = v12;
  v62 = v13;
  free(*buf);
  v16 = malloc_type_zone_valloc(string_table_zone, 0x4000uLL, 0x1022040893D1972uLL);
  if (!v16)
  {
    v20 = HIDWORD(v66);
    v19 = a1;
    goto LABEL_6;
  }

  v17 = v16;
  value_out = v16;
  v18 = HIDWORD(v66);
  if (_page_fetch_with_fd(v64, &value_out, HIDWORD(v66), v66, 7, buf, 0xFFFFFFFFLL, 0))
  {
    free(v17);
    v19 = v64;
    v20 = v18;
LABEL_6:
    page_free(v19, v20, buf, 0);
LABEL_31:
    v21 = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  v21 = a6;
  *(v17 + 8) = a6;
  v22 = (v17 + 32);
  *(v17 + 3) |= v15;
  *(v17 + 4) = 0x2000004000;
  *(v17 + 5) = 0;
  v23 = v17 + 36;
  __memcpy_chk();
  v24 = a2;
  v56 = (v17 + 36);
  if (a2 > 1)
  {
    memcpy(&v23[v62], __source, a4);
  }

  else
  {
    strlcpy(&v23[v62], __source, (0x2000 - v62));
  }

  v25 = v61;
  if (a2 >= 2)
  {
    v26 = a4;
  }

  else
  {
    v26 = a4 + 1;
  }

  *(v17 + 2) += v26 + v62 + 4;
  v27 = v17;
  v28 = v17;
  v29 = v18;
  v30 = page_release(v64, v28, v18, 5u, 0);
  if (dword_1EBF46AE8 >= 5)
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v18;
      *&buf[8] = 1024;
      *&buf[10] = a2;
      _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "Push empty string page %d to disk (%d)", buf, 0xEu);
    }

    *__error() = v45;
    v29 = v18;
    v25 = v61;
    v21 = a6;
  }

  os_unfair_lock_assert_owner((v25 + 64));
  if (v30 || grow_string_table_ptrs(v64, a2))
  {
LABEL_30:
    page_free(v64, v29, buf, 0);
    free(v27);
    goto LABEL_31;
  }

  os_unfair_lock_lock((*(v58 + 8 * a2) + 68));
  v31 = value;
  v32 = value[5];
  if (v32)
  {
    do
    {
      v33 = v32;
      v31 = *(v31 + 3);
      v32 = *(v31 + 5);
    }

    while (v32);
  }

  else
  {
    v33 = *(v64 + 4 * a2 + 48);
  }

  *(v31 + 5) = v18;
  *(v31 + 3) = v27;
  v34 = v31;
  __sourcea = page_release(v64, v31, v33, 5u, 0);
  if (dword_1EBF46AE8 >= 5)
  {
    v47 = *__error();
    v48 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v34;
      *&buf[12] = 1024;
      v69 = v33;
      v70 = 1024;
      v71 = a2;
      _os_log_impl(&dword_1C278D000, v48, OS_LOG_TYPE_DEFAULT, "Push old dirty string page %p %d to disk (%d)", buf, 0x18u);
    }

    *__error() = v47;
    v25 = v61;
    v21 = a6;
    v24 = a2;
  }

  if (*v25 != v33 && *v25 != -1)
  {
    v49 = __si_assert_copy_extra_3233(0, -1);
    v50 = v49;
    v51 = "";
    if (v49)
    {
      v51 = v49;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11043, "string_table->dirty_pgnum==cur_pgnum || (int)string_table->dirty_pgnum==-1", v51);
    free(v50);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v36 = *(v25 + 8);
  if (v36 != v34 && v36)
  {
    v52 = __si_assert_copy_extra_3233(0, -1);
    v53 = v52;
    v54 = "";
    if (v52)
    {
      v54 = v52;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11044, "string_table->dirty_page==cur_dnt || string_table->dirty_page==0", v54);
    free(v53);
    if (__valid_fs(-1))
    {
      v55 = 2989;
    }

    else
    {
      v55 = 3072;
    }

    *v55 = -559038737;
    abort();
  }

  *v25 = v18;
  *(v25 + 8) = v27;
  os_unfair_lock_unlock((*(v58 + 8 * a2) + 68));
  if (__sourcea)
  {
    v34[5] = 0;
    *(v34 + 3) = 0;
    v29 = v18;
    goto LABEL_30;
  }

  *(v25 + 56) = vadd_s32(*(v25 + 56), 0x100000001);
  *(*(v25 + 32) + 8 * (v21 & 0x7FFFFFFF)) = v22;
  if (v24 > 1)
  {
    hash_field_insert(*(v25 + 16), v56, v22);
    goto LABEL_48;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  while (1)
  {
    if (v56[v39] == 22)
    {
      v41 = 1;
      v40 = v39;
      goto LABEL_36;
    }

    if (!v56[v39])
    {
      break;
    }

LABEL_36:
    ++v39;
  }

  if (v41)
  {
    LODWORD(v39) = v40;
  }

  if (v39 >= 0xFF)
  {
    LOBYTE(v39) = -1;
  }

  *(*(v25 + 40) + (v21 & 0x7FFFFFFF)) = v39;
  if (v63)
  {
    v42 = v56;
  }

  else
  {
    v42 = 0;
  }

  hash_insert_extended(*(v25 + 16), &v56[v62], v42, v22);
LABEL_48:
  if (dword_1EBF46AE8 >= 5)
  {
    v43 = *__error();
    v44 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v18;
      *&buf[8] = 1024;
      *&buf[10] = a2;
      _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "New string table page %d (%d)", buf, 0xEu);
    }

    *__error() = v43;
    v21 = a6;
  }

LABEL_32:
  v37 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t grow_string_table(uint64_t a1, int a2, char *a3, int a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v12 = __THREAD_SLOT_KEY;
  }

  v13 = pthread_getspecific(v12);
  HIDWORD(v15) = qos_class_self() - 9;
  LODWORD(v15) = HIDWORD(v15);
  v14 = v15 >> 2;
  if (v14 > 6)
  {
    v16 = 0;
  }

  else
  {
    v16 = dword_1C2BFF8F0[v14];
  }

  v17 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_9:
    db_rwlock_wait(a1 + 584, v16, 2);
    goto LABEL_10;
  }

  if (v16 <= 5)
  {
    v29 = v16 - 6;
    v30 = (a1 + 16 * v16 + 648);
    while (!*v30)
    {
      v30 += 2;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_26;
      }
    }

    goto LABEL_9;
  }

LABEL_26:
  *(a1 + 768) = pthread_self();
LABEL_10:
  pthread_mutex_unlock((a1 + 584));
  if (v17)
  {
    v32 = *__error();
    v33 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = 136315650;
      v35 = "grow_string_table";
      v36 = 1024;
      v37 = 11088;
      v38 = 1024;
      v39 = v17;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", &v34, 0x18u);
    }

    *__error() = v32;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11088);
  }

  if (v13)
  {
    v18 = CIOnThreadCleanUpPush(v13 - 1, db_write_unlock, a1 + 584);
  }

  else
  {
    v18 = -1;
  }

  v19 = grow_string_table_locked(a1, a2, a3, a4, a5, a6);
  v20 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v21 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v22 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v22, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v21)
  {
    pthread_override_qos_class_end_np(v21);
  }

  if (v20)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11090);
  }

  if (v13)
  {
    CIOnThreadCleanUpClearItem(v13 - 1, v18);
    v23 = &threadData[9 * (v13 - 1)];
    v26 = *(v23 + 14);
    v24 = v23 + 7;
    v25 = v26;
    if (v18 + 1 == v26)
    {
      *v24 = v25 - 1;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t grow_string_table_ptrs(uint64_t a1, int a2)
{
  v2 = *(a1 + 8 * a2 + 880);
  v3 = *(v2 + 48);
  if (v3 > (*(v2 + 56) + 1))
  {
    return 0;
  }

  v7 = malloc_type_zone_malloc(string_table_zone, 16 * v3, 0x10040436913F5uLL);
  if (v7)
  {
    v8 = v7;
    v9 = 2 * v3;
    if (a2 > 1)
    {
LABEL_7:
      memcpy(v8, *(v2 + 32), 8 * *(v2 + 48));
      *(v2 + 32) = v8;
      (*(*(a1 + 808) + 16))();
      result = 0;
      *(v2 + 48) = v9;
      return result;
    }

    v10 = malloc_type_zone_malloc(string_table_zone, v9, 0x4D7A71E0uLL);
    if (v10)
    {
      v11 = v10;
      memcpy(v10, *(v2 + 40), *(v2 + 48));
      *(v2 + 40) = v11;
      (*(*(a1 + 808) + 16))();
      goto LABEL_7;
    }

    free(v8);
    *(v2 + 32) = 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t db2_obj_insert_from_prototype(uint64_t a1, void *a2, _DWORD *a3)
{
  result = db2_store_obj_preamble(*(a1 + 804), a3, 0);
  if (!result)
  {
    result = db2_store_obj_inner(a1, a3, 0);
    if (!result)
    {
      v7 = malloc_type_malloc((a3[3] + 512), 0x1000040EED21634uLL);
      v8 = v7;
      if (v7)
      {
        memcpy(v7, a3, a3[3]);
        v8[2] = a3[3] + 512;
      }

      result = 0;
      *a2 = v8;
    }
  }

  return result;
}

unint64_t db2_get_id_for_string(char a1, uint64_t a2, char *__s)
{
  v3 = *__s;
  if ((a1 & 0x14) == 0)
  {
    if (*__s)
    {
      v8 = hash_lookup_extended(*(a2 + 16), __s, 0, 0);
      if (v8)
      {
        return *v8;
      }
    }

    return 4294967294;
  }

  if (!*__s)
  {
    return 4294967294;
  }

  v4 = -1;
  v5 = 1;
  do
  {
    v6 = __s[v5];
    ++v4;
    ++v5;
  }

  while (v6);
  result = data_map_id_get(a2, __s, v4 + 2);
  if (result)
  {
    return result;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t db2_get_id_for_field_locked(uint64_t a1, char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v2 = internal_copy_field_ids(a1, a2, v6, 8uLL, 1);
  if (!v2)
  {
    v3 = 4294967294;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *v2;
  if (v2 != v6)
  {
LABEL_3:
    free(v2);
  }

LABEL_4:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void *db2_garbage_collect_strings(uint64_t a1, char a2, _DWORD *a3)
{
  if ((*(a1 + 804) & 0x14) == 0 || (*(a1 + 804) & 8) != 0)
  {
    return 0;
  }

  v85 = v6;
  v86 = v5;
  v87 = v3;
  v88 = v4;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2000000000;
  v84 = 0;
  v76 = MEMORY[0x1E69E9820];
  v77 = 0x40000000;
  v78 = __data_maps_garbage_collect_setup_block_invoke;
  v79 = &unk_1E8195DA8;
  v80 = &v81;
  if (!__data_maps_garbage_collect_setup_block_invoke(&v76, *(a1 + 880)) && !(v78)(&v76, *(a1 + 888), 1) && !(v78)(&v76, *(a1 + 896), 2))
  {
    (v78)(&v76, *(a1 + 904), 3);
  }

  v11 = a2;
  v12 = *(v82 + 6);
  if (v12 == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 22;
  }

  v71 = MEMORY[0x1E69E9820];
  v72 = 0x40000000;
  v73 = __data_maps_garbage_collect_setup_block_invoke_2;
  v74 = &__block_descriptor_tmp_11_8862;
  v75 = v13;
  v14 = v12;
  do
  {
    if (v14 < 1)
    {
      break;
    }

    v15 = v14 - 1;
    v16 = (v73)(&v71, *(a1 + 880 + 8 * (v14 - 1)), v14 - 1);
    v14 = v15;
  }

  while (!v16);
  _Block_object_dispose(&v81, 8);
  if (v12 != 4)
  {
    return 0;
  }

  v17 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *v17 = 0;
  v68 = 0;
  v18 = malloc_type_calloc(1uLL, 0x4208uLL, 0x10B2040A045750CuLL);
  v76 = 0;
  v77 = &v76;
  v78 = 0x2000000000;
  LOBYTE(v79) = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2000000000;
  LODWORD(v74) = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v20 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
  v66 = HIDWORD(v20);
  v67 = v20;
  v65 = __PAIR64__(v21, v22);
  v23 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
  v24 = *(v23 + 312);
  v25 = *(v23 + 224);
  if (v25)
  {
    v25(*(v23 + 288));
  }

  v64 = v67;
  v63 = v66;
  v62 = v65;
  if (!_setjmp(v23))
  {
    v61 = 1;
    v32 = db_obj_iter_create_with_filter(a1, 1uLL, &v61, 0, 0, 0, 0, 0, 0);
    v36 = db_obj_iter_next(v32, &v60, 1, v33, v34, v35);
    if (v36)
    {
      v48 = v32;
      v49 = add_explicit;
      v50 = v17;
      v70 = 0;
      v37 = v36;
      v81 = 0;
      v69 = 0;
      while (db_next_field(a1, v37, 0, &v70, &v81, &v69) == 35)
      {
        if (*v69 == 11 && (*(v69 + 2) & 0x10) != 0)
        {
          v38 = *(v69 + 8);
          if (v38 >= 4)
          {
            v39 = v38 >> 2;
            v40 = (v69 + 13);
            do
            {
              v41 = v39;
              v42 = v40 + 1;
              db_get_string_for_id(a1, *v40);
              v40 = v42;
              v39 = v41 - 1;
            }

            while (v41 != 1);
          }
        }
      }

      v17 = v50;
      v11 = a2;
      add_explicit = v49;
      v32 = v48;
    }

    db_obj_iter_release(v32);
    if (!db2_clear_docids(a1, v17, a3, 0, _db2_validate_strings_for_dbo, a1))
    {
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 0x40000000;
      v53 = __db2_garbage_collect_strings_block_invoke;
      v54 = &unk_1E8198C58;
      v59 = v11;
      v55 = &v71;
      v56 = &v76;
      v57 = v18;
      v58 = a1;
      if (!__db2_garbage_collect_strings_block_invoke(v52, *(a1 + 880), 0) && !v53(v52, *(a1 + 888), 1) && !v53(v52, *(a1 + 896), 2))
      {
        v53(v52, *(a1 + 904), 3);
      }
    }

    v68 = 1;
    v43 = threadData[9 * v64 + 1] + 320 * v63;
    *(v43 + 312) = v24;
    v44 = *(v43 + 232);
    if (v44)
    {
      v44(*(v43 + 288));
    }

    dropThreadId(v64, 0, add_explicit + 1);
    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v81) = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v81, 2u);
  }

  *(v23 + 312) = v24;
  if (__THREAD_SLOT_KEY)
  {
    v26 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v26)
    {
LABEL_62:
      makeThreadId();
      v27 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_25;
    }
  }

  else
  {
    makeThreadId();
    v26 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v26)
    {
      goto LABEL_62;
    }
  }

  v27 = v26;
  if (v26 >= 0x801)
  {
    goto LABEL_62;
  }

LABEL_25:
  v28 = &threadData[9 * v27];
  v30 = *(v28 - 4);
  v29 = v28 - 2;
  if (v30 > v62)
  {
    v31 = v27 - 1;
    do
    {
      CIOnThreadCleanUpPop(v31);
    }

    while (*v29 > v62);
  }

  dropThreadId(v64, 1, add_explicit + 1);
  CICleanUpReset(v64, HIDWORD(v62));
LABEL_48:
  if (v68 == 1 && *(v72 + 24) == 4 && (*(v77 + 24) & 1) != 0)
  {
    v45 = v18;
  }

  else
  {
    if (v18)
    {
      if ((*(a1 + 804) & 0x14) != 0)
      {
        data_maps_garbage_compact_collect_commit(a1 + 880, v18, 1);
      }

      free(v18);
    }

    v45 = 0;
  }

  if (*v17)
  {
    *(a1 + 4) &= ~0x20u;
    pthread_mutex_lock((a1 + 584));
    *(a1 + 788) = 0;
    v46 = *(a1 + 760);
    *(a1 + 760) = 0u;
    v47 = *(a1 + 780) != 0;
    *(a1 + 796) = 0;
    db_rwlock_wakeup(a1 + 584, v47, 0);
    pthread_mutex_unlock((a1 + 584));
    if (v46)
    {
      pthread_override_qos_class_end_np(v46);
    }
  }

  free(v17);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v76, 8);
  return v45;
}

uint64_t __db2_garbage_collect_strings_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 30;
  }

  if (*(a1 + 64))
  {
    v7 = (8 * (a3 < 2)) | 6u;
  }

  else
  {
    v7 = 8 * (a3 < 2);
  }

  result = data_map_garbage_collect(a2, v6, v7, *(a1 + 48) + 4224 * a3);
  if (!result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v9 = *(a1 + 48);
    if (*(v9 + 4224 * a3 + 8))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      if (a3 == 4)
      {
        if (*(*(a1 + 56) + 968))
        {
          *(v9 + 16896) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t _db2_validate_strings_for_dbo(uint64_t a1, int *a2)
{
  v11 = 0;
  v9 = 0;
  v10 = 0;
  while (db_next_field(a2, a1, 0, &v11, &v10, &v9) == 35)
  {
    if (*v9 == 11 && (*(v9 + 2) & 0x10) != 0)
    {
      v4 = *(v9 + 8);
      if (v4 >= 4)
      {
        v5 = v4 >> 2;
        v6 = (v9 + 13);
        do
        {
          v7 = *v6++;
          db_get_string_for_id(a2, v7);
          --v5;
        }

        while (v5);
      }
    }
  }

  return 0;
}

void __db2_deserialize_cache_block_invoke(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (!Mutable)
  {
    goto LABEL_32;
  }

  v7 = Mutable;
  v8 = *(a1 + 32);
  v9 = pthread_mutex_lock((v8 + 584));
  HIDWORD(v11) = qos_class_self() - 9;
  LODWORD(v11) = HIDWORD(v11);
  v10 = v11 >> 2;
  if (v10 > 6)
  {
    v12 = 0;
    if (*(v8 + 768))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = dword_1C2BFF8F0[v10];
    if (*(v8 + 768))
    {
      goto LABEL_14;
    }
  }

  if (!*(v8 + 780) && *(v8 + 796) != 1)
  {
    goto LABEL_35;
  }

  v13 = v12 <= 5 ? 5 : v12;
  v14 = (v8 + 16 * v12 + 664);
  v15 = v13 - v12 + 1;
  do
  {
    if (!--v15)
    {
      break;
    }

    v16 = *v14;
    v14 += 2;
  }

  while (!v16);
  if (!*(v8 + 648 + 16 * v12) || *(v8 + 784))
  {
LABEL_35:
    *(v8 + 780) = vadd_s32(*(v8 + 780), 0x100000001);
    goto LABEL_15;
  }

LABEL_14:
  db_rwlock_wait(v8 + 584, v12, 5);
LABEL_15:
  pthread_mutex_unlock((v8 + 584));
  v17 = *(a1 + 32);
  if (v9)
  {
    sdb2_die(v17, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15478);
  }

  v18 = *(v17 + 856);
  if (*(v18 + 8) >= 1)
  {
    v19 = 0;
    v20 = 28;
    do
    {
      CFSetAddValue(v7, *(v18 + v20));
      ++v19;
      v18 = *(*(a1 + 32) + 856);
      v20 += 16;
    }

    while (v19 < *(v18 + 8));
  }

  if (a3)
  {
    while (1)
    {
      value_out = 0;
      if (!CFSetContainsValue(v7, *a2))
      {
        break;
      }

      if (!_page_fetch_with_fd(*(a1 + 32), &value_out, *a2, 0x4000u, 4105, buf, 0xFFFFFFFFLL, 0))
      {
        page_release(*(a1 + 32), value_out, *a2, 0x10u, 0);
      }

      ++a2;
      if (!--a3)
      {
        goto LABEL_28;
      }
    }

    v21 = *__error();
    v22 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = *a2;
      *buf = 136315650;
      v30 = "db2_deserialize_cache_block_invoke";
      v31 = 1024;
      v32 = 15491;
      v33 = 1024;
      v34 = v27;
      _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: invalid sdb page in cache %d", buf, 0x18u);
    }

    *__error() = v21;
  }

LABEL_28:
  v23 = *(a1 + 32);
  v24 = pthread_mutex_lock((v23 + 584));
  v25 = vadd_s32(*(v23 + 780), -1);
  *(v23 + 780) = v25;
  if (!v25.i32[0])
  {
    db_rwlock_wakeup(v23 + 584, 0, 0);
  }

  pthread_mutex_unlock((v23 + 584));
  if (v24)
  {
    sdb2_die(*(a1 + 32), "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15495);
  }

  CFRelease(v7);
LABEL_32:
  v26 = *MEMORY[0x1E69E9840];
}

void db2_scan_lost_ids(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (_os_feature_enabled_impl())
  {
    if (a2 == 2)
    {
      if (!a3)
      {
        v28 = __si_assert_copy_extra_3233(0, -1);
        v29 = v28;
        v30 = "";
        if (v28)
        {
          v30 = v28;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 15613, "host != ((void*)0)", v30);
        free(v29);
        if (__valid_fs(-1))
        {
          v31 = 2989;
        }

        else
        {
          v31 = 3072;
        }

        *v31 = -559038737;
        abort();
      }

      db_lock_datastore(a1);
      data_map_destroy(*(a1 + 920));
      *(a1 + 920) = 0;
      db_set_host(a1, a3);
      db_unlock_datastore(a1);
      v8 = 0;
    }

    else
    {
      v8 = data_map_scan_lost_ids(*(a1 + 920), a2 == 1);
      if (!v8)
      {
        return;
      }
    }

    v40 = 0;
    v39 = 0;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v10 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
    v37 = HIDWORD(v10);
    v38 = v10;
    v36 = __PAIR64__(v11, v12);
    v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
    *(v13 + 216) = 0;
    v14 = *(v13 + 312);
    v15 = *(v13 + 224);
    v16 = v13;
    if (v15)
    {
      v15(*(v13 + 288));
    }

    v35 = v38;
    v34 = v37;
    v33 = v36;
    if (!_setjmp(v16))
    {
      db2_clear_vector_fields(a1, &v40, &v39, v8, a4);
      v24 = threadData[9 * v35 + 1] + 320 * v34;
      *(v24 + 312) = v14;
      v25 = *(v24 + 232);
      if (v25)
      {
        v25(*(v24 + 288));
      }

      dropThreadId(v35, 0, add_explicit + 1);
      if (v40)
      {
        pthread_mutex_lock((a1 + 584));
        *(a1 + 788) = 0;
        v26 = *(a1 + 760);
        *(a1 + 760) = 0u;
        v27 = *(a1 + 780) != 0;
        *(a1 + 796) = 0;
        db_rwlock_wakeup(a1 + 584, v27, 0);
        pthread_mutex_unlock((a1 + 584));
        if (v26)
        {
          pthread_override_qos_class_end_np(v26);
        }
      }

      goto LABEL_18;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    v16[78] = v14;
    v17 = v33;
    if (__THREAD_SLOT_KEY)
    {
      v18 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    else
    {
      makeThreadId();
      v18 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    v19 = v18;
    if (v18 < 0x801)
    {
LABEL_14:
      v20 = &threadData[9 * v19];
      v22 = *(v20 - 4);
      v21 = (v20 - 2);
      if (v22 > v17)
      {
        v23 = v19 - 1;
        do
        {
          CIOnThreadCleanUpPop(v23);
        }

        while (*v21 > v17);
      }

      dropThreadId(v35, 1, add_explicit + 1);
      CICleanUpReset(v35, HIDWORD(v33));
LABEL_18:
      if (a2 != 2)
      {
        CFRelease(v8);
      }

      return;
    }

LABEL_27:
    makeThreadId();
    v19 = pthread_getspecific(__THREAD_SLOT_KEY);
    goto LABEL_14;
  }
}

uint64_t qp_array_match_indexes(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(result + 8);
  v6 = (result + 16);
  if (*(result + 4) >= 5u)
  {
    v6 = *v6;
  }

  if (v5 >= 1)
  {
    do
    {
      v8 = &v6[3 * v5 - 3];
      if (*v8)
      {
        v9 = *v8 == a2;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = v8 + 2;
        if (*(v8 + 2) >= 0x41u)
        {
          v10 = *v10;
        }

        v11 = *(v8 + 3);
        if (v11)
        {
          v12 = 0;
          do
          {
            if ((*(v10 + (v12 >> 3)) >> (v12 & 7)))
            {
              result = (*(a3 + 16))(a3, v12);
              v11 = *(v8 + 3);
            }

            v12 = (v12 + 1);
          }

          while (v12 < v11);
        }
      }
    }

    while (v5-- > 1);
  }

  return result;
}

uint64_t db_eval_obj_qp_array_set_match_at_index(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 4);
    v6 = *(result + 8);
    v7 = (result + 16);
    if (v5 >= 5)
    {
      v7 = *v7;
    }

    if (v6 >= 1)
    {
      v8 = &v7[3 * v6 - 3];
      v9 = -1;
      v10 = *(result + 8);
      while (1)
      {
        if (*v8)
        {
          if (*v8 == a2)
          {
            v11 = *(a2 + 44);
            if (v11 <= 29)
            {
              result = (2 << v11);
              v12 = *(v8 + 8);
              v13 = (v8 + 16);
              if (v12 < 0x41)
              {
                goto LABEL_45;
              }

              v14 = *v13;
              if (v12 > a3)
              {
                goto LABEL_46;
              }

              goto LABEL_14;
            }
          }
        }

        else if (v9 == -1)
        {
          v9 = v10 - 1;
        }

        --v10;
        v8 -= 24;
        if ((v10 + 1) <= 1)
        {
          if (v9 < 0 || v9 >= v6)
          {
            break;
          }

          v8 = &v7[3 * v9];
          if (*(v8 + 8) >= 0x41u)
          {
            v18 = a2;
            free(*(v8 + 16));
            a2 = v18;
          }

          *v8 = a2;
          *(v8 + 8) = 64;
          *(v8 + 16) = 0;
          v19 = *(a2 + 44);
          if (v19 >= 30)
          {
            result = 0;
          }

          else
          {
            result = (2 << v19);
          }

          goto LABEL_44;
        }
      }
    }

    if (v6 >= v5)
    {
      v22 = a2;
      v23 = 2 * v5;
      v21 = malloc_type_zone_malloc(queryZone, 48 * v5, 0xA4971684uLL);
      if (!v21 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *v25 = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v25, 2u);
      }

      memcpy(v21, v7, 24 * v23);
      if (*(v4 + 4) >= 5u)
      {
        free(v7);
      }

      *(v4 + 16) = v21;
      *(v4 + 4) = v23;
      v20 = *(v4 + 8);
      a2 = v22;
    }

    else
    {
      v20 = *(result + 8);
      v21 = v7;
    }

    v8 = v21 + 24 * v6;
    *v8 = a2;
    *(v8 + 8) = 64;
    *(v8 + 16) = 0;
    v24 = *(a2 + 44);
    if (v24 >= 30)
    {
      result = 0;
    }

    else
    {
      result = (2 << v24);
    }

    *(v4 + 8) = v20 + 1;
LABEL_44:
    v13 = (v8 + 16);
    v12 = 64;
LABEL_45:
    v14 = v13;
    if (v12 <= a3)
    {
LABEL_14:
      LODWORD(v15) = v12;
      do
      {
        v15 = (2 * v15);
      }

      while (v15 <= a3);
      v16 = result;
      if (!(v15 >> 17) && *MEMORY[0x1E69E9AC8] < v15)
      {
        ++sTotal_15332;
      }

      v17 = malloc_type_zone_calloc(queryZone, 1uLL, v15, 0x5BAF1CEAuLL);
      if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      memcpy(v17, v14, *(v8 + 12));
      if (*(v8 + 8) >= 0x41u)
      {
        free(v14);
      }

      *v13 = v17;
      *(v8 + 8) = v15;
      result = v16;
    }

    else
    {
LABEL_46:
      v17 = v14;
    }

    *(v17 + (a3 >> 3)) |= 1 << (a3 & 7);
    if (*(v8 + 12) <= a3)
    {
      *(v8 + 12) = a3 + 1;
    }

    if (v12 <= a3)
    {
      *v4 |= 1u;
    }
  }

  return result;
}

BOOL db_eval_obj_qp_array_union_for_value(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (*(a1 + 4) >= 5u)
  {
    v3 = *v3;
  }

  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  while (2)
  {
    v7 = &v3[3 * v2 - 3];
    if (!*v7 || *(*v7 + 44) != a2)
    {
      goto LABEL_6;
    }

    if (!v4)
    {
      v4 = &v3[3 * v2 - 3];
      goto LABEL_6;
    }

    v8 = v4[3];
    v9 = v7[3];
    if (v8 >= v9)
    {
      v10 = &v3[3 * v2 - 3];
    }

    else
    {
      v10 = v4;
    }

    if (v8 >= v9)
    {
      v11 = v4;
    }

    else
    {
      v11 = &v3[3 * v2 - 3];
    }

    v12 = v11 + 2;
    if (*(v11 + 2) >= 0x41u)
    {
      v12 = *v12;
    }

    v13 = v10 + 2;
    if (*(v10 + 2) >= 0x41u)
    {
      v13 = *v13;
    }

    v14 = *(v10 + 3);
    if (!v14)
    {
      goto LABEL_28;
    }

    v15 = 0;
    v16 = 0;
    do
    {
      v17 = v15 >> 3;
      v18 = *(v12 + v17);
      v19 = 1 << (v15 & 7);
      if ((v19 & v18) != 0)
      {
        goto LABEL_22;
      }

      if ((v19 & *(v13 + v17)) != 0)
      {
        *(v12 + v17) = v18 | v19;
        v14 = *(v10 + 3);
LABEL_22:
        v16 = 1;
      }

      ++v15;
    }

    while (v15 < v14);
    if (v16)
    {
LABEL_33:
      v5 = 1;
    }

    else
    {
LABEL_28:
      if (v14 <= *(v11 + 3))
      {
        v20 = *(v11 + 3);
      }

      else
      {
        v20 = v14;
      }

      while (1)
      {
        v5 = v20 != v14;
        if (v20 == v14)
        {
          break;
        }

        v21 = *(v12 + (v14 >> 3));
        v22 = v14++ & 7;
        if ((v21 >> v22))
        {
          goto LABEL_33;
        }
      }
    }

    if (v11 == v4 || (v23 = v11 == v7, v7 = v4, v23))
    {
      *v7 = 0;
    }

LABEL_6:
    if (v2-- > 1)
    {
      continue;
    }

    return v5;
  }
}

uint64_t db_eval_obj_qp_array_intersect_for_value(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (*(a1 + 4) >= 5u)
  {
    v3 = *v3;
  }

  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = &v3[3 * v2 - 3];
      if (!*v8 || *(*v8 + 44) != a2)
      {
        goto LABEL_6;
      }

      ++v4;
      if (!v6)
      {
        v6 = &v3[3 * v2 - 3];
        goto LABEL_6;
      }

      if ((v5 == 0) | v7 & 1)
      {
        v9 = v6[3];
        v10 = v8[3];
        v11 = v9 > v10;
        if (v9 <= v10)
        {
          v12 = &v3[3 * v2 - 3];
        }

        else
        {
          v12 = v6;
        }

        if (v11)
        {
          v5 = &v3[3 * v2 - 3];
        }

        else
        {
          v5 = v6;
        }

        v13 = v5 + 2;
        if (*(v5 + 2) >= 0x41u)
        {
          v13 = *v13;
        }

        v14 = v12 + 2;
        if (*(v12 + 2) >= 0x41u)
        {
          v14 = *v14;
        }

        v15 = *(v5 + 3);
        if (!v15)
        {
          v7 = 0;
          if (v5 == v6)
          {
LABEL_33:
            v20 = &v3[3 * v2 - 3];
            v8 = v6;
LABEL_34:
            *v20 = 0;
            v5 = v8;
            goto LABEL_6;
          }

          goto LABEL_30;
        }

        v16 = 0;
        v7 = 0;
        do
        {
          v17 = v16 >> 3;
          v18 = *(v13 + v17);
          v19 = 1 << (v16 & 7);
          if ((v19 & v18) != 0)
          {
            if ((v19 & *(v14 + v17)) != 0)
            {
              v7 = 1;
            }

            else
            {
              *(v13 + v17) = v18 & ~v19;
              v15 = *(v5 + 3);
            }
          }

          ++v16;
        }

        while (v16 < v15);
      }

      else
      {
        v7 = 0;
      }

      if (v5 == v6)
      {
        goto LABEL_33;
      }

LABEL_30:
      v20 = v6;
      if (v5 == v8)
      {
        goto LABEL_34;
      }

LABEL_6:
      v11 = v2-- <= 1;
      if (v11)
      {
        return (v4 == 1) | v7 & 1u;
      }
    }
  }

  return 0;
}

void db_query_tree_apply_block(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
    a2 = v4;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __db_query_tree_apply_block_block_invoke;
    v4[3] = &unk_1E8198ED0;
    v4[4] = v3;
  }

  db_query_tree_apply_block_with_meta(a1, a2, a3);
}

void db_node_set_vector_distance_cache(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    *(a1 + 24) = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    v8 = malloc_type_calloc(2uLL, 1uLL, 0x100004077774924uLL);
    *(a1 + 40) = v8;
    *v8 = 1;
    v5 = **(a1 + 24);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    **(a1 + 24) = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
    v9 = *(a1 + 24);
    v10 = *(a1 + 40);
    v11 = *(v10 + 1);
    *(v10 + 1) = v11 + 1;
    v7 = (v9 + 8 * v11);
    goto LABEL_8;
  }

  v5 = *v4;
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = *v5;
  if (atomic_fetch_add(*v5 + 8, 0xFFFFFFFF) == 1)
  {
    free(*v6);
    free(v6);
  }

  v7 = *(a1 + 24);
LABEL_8:
  **v7 = a2;
}

void *db_query_set_vector_distance_cache(void *result, unsigned int a2, uint64_t a3)
{
  if (a2 <= 2)
  {
    v4 = result;
    v5 = result[3];
    if (!v5)
    {
      v6 = a2;
      result[3] = malloc_type_calloc(3uLL, 8uLL, 0x80040B8603338uLL);
      v7 = malloc_type_calloc(4uLL, 1uLL, 0x100004077774924uLL);
      a2 = v6;
      v4[5] = v7;
      *v7 = 3;
      v5 = v4[3];
    }

    v8 = a2;
    v9 = a2 + 1;
    v10 = *(v5 + 8 * a2);
    if (v10)
    {
      result = malloc_type_realloc(v10, 8 * *(v4[5] + v9) + 8, 0x80040B8603338uLL);
    }

    else
    {
      result = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
    }

    *(v4[3] + 8 * v8) = result;
    v11 = *(v4[3] + 8 * v8);
    v12 = v4[5];
    v13 = *(v12 + v9);
    *(v12 + v9) = v13 + 1;
    *(v11 + 8 * v13) = a3;
  }

  return result;
}

BOOL db_query_has_vector_distance_cache(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  if (v4 < 1)
  {
    return 0;
  }

  v5 = v3[a2 + 1];
  if (v5 < 1)
  {
    return 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = *(*(a1 + 24) + 8 * v6);
      if (v8)
      {
        break;
      }

LABEL_4:
      v7 = ++v6 < v4;
      if (v6 == v4)
      {
        return 0;
      }
    }

    v9 = v5;
    while (*v8 != a3)
    {
      ++v8;
      if (!--v9)
      {
        goto LABEL_4;
      }
    }
  }

  return v7;
}

uint64_t db_query_vector_distance_cache_has_room(char *a1, double a2, int32x4_t a3)
{
  if (!a1 || *a1 < 1)
  {
    return 1;
  }

  v3 = *a1;
  v4 = *a1;
  if (v4 > 3)
  {
    if (v4 >= 0x10)
    {
      v5 = v3 & 0x70;
      v8 = vmovl_s8(*(a1 + 1));
      v9 = vmovl_high_s16(v8);
      v10 = vmovl_s16(*v8.i8);
      v11 = vmovl_s8(*(a1 + 9));
      v12 = vmovl_high_s16(v11);
      v13 = vmovl_s16(*v11.i8);
      if (v5 != 16)
      {
        v14 = vmovl_s8(*(a1 + 17));
        v15 = vmovl_s8(*(a1 + 25));
        v9 = vaddw_high_s16(v9, v14);
        v10 = vaddw_s16(v10, *v14.i8);
        v12 = vaddw_high_s16(v12, v15);
        v13 = vaddw_s16(v13, *v15.i8);
        if (v5 != 32)
        {
          v16 = vmovl_s8(*(a1 + 33));
          v17 = vmovl_s8(*(a1 + 41));
          v9 = vaddw_high_s16(v9, v16);
          v10 = vaddw_s16(v10, *v16.i8);
          v12 = vaddw_high_s16(v12, v17);
          v13 = vaddw_s16(v13, *v17.i8);
          if (v5 != 48)
          {
            v18 = vmovl_s8(*(a1 + 49));
            v19 = vmovl_s8(*(a1 + 57));
            v9 = vaddw_high_s16(v9, v18);
            v10 = vaddw_s16(v10, *v18.i8);
            v12 = vaddw_high_s16(v12, v19);
            v13 = vaddw_s16(v13, *v19.i8);
            if (v5 != 64)
            {
              v20 = vmovl_s8(*(a1 + 65));
              v21 = vmovl_s8(*(a1 + 73));
              v9 = vaddw_high_s16(v9, v20);
              v10 = vaddw_s16(v10, *v20.i8);
              v12 = vaddw_high_s16(v12, v21);
              v13 = vaddw_s16(v13, *v21.i8);
              if (v5 != 80)
              {
                v22 = vmovl_s8(*(a1 + 81));
                v23 = vmovl_s8(*(a1 + 89));
                v9 = vaddw_high_s16(v9, v22);
                v10 = vaddw_s16(v10, *v22.i8);
                v12 = vaddw_high_s16(v12, v23);
                v13 = vaddw_s16(v13, *v23.i8);
                if (v5 != 96)
                {
                  v24 = vmovl_s8(*(a1 + 97));
                  v25 = vmovl_s8(*(a1 + 105));
                  v9 = vaddw_high_s16(v9, v24);
                  v10 = vaddw_s16(v10, *v24.i8);
                  v12 = vaddw_high_s16(v12, v25);
                  v13 = vaddw_s16(v13, *v25.i8);
                }
              }
            }
          }
        }
      }

      a3 = vaddq_s32(v13, v10);
      v6 = vaddvq_s32(vaddq_s32(a3, vaddq_s32(v12, v9)));
      if (v5 == v3)
      {
        return v6 < 3;
      }

      if ((v3 & 0xC) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v26 = v5;
    v5 = v3 & 0x7C;
    v27 = v6;
    v28 = v26 - v5;
    v29 = &a1[v26 + 1];
    do
    {
      v30 = *v29++;
      a3.i32[0] = v30;
      a3.i64[0] = vmovl_s8(*a3.i8).u64[0];
      v27 = vaddw_s16(v27, *a3.i8);
      v28 += 4;
    }

    while (v28);
    v6 = vaddvq_s32(v27);
    if (v5 == v3)
    {
      return v6 < 3;
    }

    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
LABEL_20:
  v31 = v3 - v5;
  v32 = &a1[v5 + 1];
  do
  {
    v33 = *v32++;
    v6 += v33;
    --v31;
  }

  while (v31);
  return v6 < 3;
}

void apply_demorgans_law(void *a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = __db_query_tree_apply_block_block_invoke;
  v1[3] = &unk_1E8198ED0;
  v1[4] = &__block_literal_global_15374;
  db_query_tree_apply_block_with_meta(a1, v1, 0);
}

void db_clone_query_node(void *a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = __db_query_tree_apply_block_block_invoke;
  v1[3] = &unk_1E8198ED0;
  v1[4] = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a1, v1, &__block_literal_global_25_15416);
}

CFStringRef si_lqn_copy_description(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(v2 + 72);
    v4 = *MEMORY[0x1E695E480];
    if (v3)
    {
      v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v3, 0x8000100u);
      v2 = a1[2];
    }

    else
    {
      v5 = @"<null>";
    }

    v14 = *a1;
    v15 = a1[1];
    v16 = v15 + v14 + db_hash_qps(v2);
    v17 = HIDWORD(v16) - v16;
    v18 = HIDWORD(v16) - v16 - 8;
    LODWORD(v16) = (v16 - (HIDWORD(v16) - v16) - 1640531527) ^ (v18 << 8);
    v19 = (16 - v17 - v16) ^ (v16 >> 13);
    v20 = (v18 - v16 - v19) ^ (v19 >> 12);
    LODWORD(v16) = (v16 - v19 - v20) ^ (v20 << 16);
    v21 = (v19 - v20 - v16) ^ (v16 >> 5);
    v22 = (v20 - v16 - v21) ^ (v21 >> 3);
    v23 = CFStringCreateWithFormat(v4, 0, @"node:%p hash:%llx type:%d qp:%p op:%d fn:%s s:%@ lc:%p rc:%p", a1, (v21 - v22 - ((v16 - v21 - v22) ^ (v22 << 10))) ^ (((v16 - v21 - v22) ^ (v22 << 10)) >> 15), *(a1 + 24), v2, *(v2 + 24), *v2, v5, v14, v15);
    CFRelease(v5);
    return v23;
  }

  else
  {
    v6 = a1[1] + *a1;
    v7 = HIDWORD(v6) - v6;
    v8 = HIDWORD(v6) - v6 - 8;
    LODWORD(v6) = (v6 - (HIDWORD(v6) - v6) - 1640531527) ^ (v8 << 8);
    v9 = (16 - v7 - v6) ^ (v6 >> 13);
    v10 = (v8 - v6 - v9) ^ (v9 >> 12);
    LODWORD(v6) = (v6 - v9 - v10) ^ (v10 << 16);
    v11 = (v9 - v10 - v6) ^ (v6 >> 5);
    v12 = (v10 - v6 - v11) ^ (v11 >> 3);
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"node:%p hash:%llx type:%d lc:%p rc:%p", a1, (v11 - v12 - ((v6 - v11 - v12) ^ (v12 << 10))) ^ (((v6 - v11 - v12) ^ (v12 << 10)) >> 15), *(a1 + 24), *a1, a1[1]);
  }
}

void si_lqn_release(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = __db_query_tree_apply_block_block_invoke;
  v2[3] = &unk_1E8198ED0;
  v2[4] = &__block_literal_global_174;
  db_query_tree_apply_block_with_meta(a2, v2, 0);
}

void query_node_unique_set_release(uint64_t a1)
{
  if (atomic_fetch_add_explicit((a1 + 72), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    CFRelease(*(a1 + 64));
    pthread_mutex_destroy(a1);

    free(a1);
  }
}

CFStringRef _query_node_unique_set_copy_description(pthread_mutex_t *a1)
{
  pthread_mutex_lock(a1);
  sig = a1[1].__sig;
  if (sig)
  {
    v3 = CFCopyDescription(sig);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock(a1);
  return v3;
}

uint64_t query_node_unique_release(pthread_mutex_t *a1, void *a2)
{
  pthread_mutex_lock(a1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __query_node_unique_release_block_invoke;
  v5[3] = &__block_descriptor_tmp_26_15450;
  v5[4] = a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __db_query_tree_apply_block_block_invoke;
  v6[3] = &unk_1E8198ED0;
  v6[4] = v5;
  db_query_tree_apply_block_with_meta(a2, v6, 0);
  return pthread_mutex_unlock(a1);
}

void *query_strdup(const char *a1)
{
  v2 = strlen(a1);
  v3 = malloc_type_zone_malloc(queryZone, v2 + 1, 0xA4971684uLL);
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v5, 2u);
  }

  memcpy(v3, a1, v2);
  *(v3 + v2) = 0;
  return v3;
}

uint64_t _db_rangeCompare(int a1, uint64_t a2, unint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 <= 6)
  {
    if ((a1 - 1) < 2)
    {
      v12 = 1;
      if ((*(a2 + 160) & 0x20) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

    if ((a1 - 3) < 2)
    {
      v12 = 2;
      if ((*(a2 + 160) & 0x20) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

    if ((a1 - 5) < 2)
    {
      v12 = 4;
      if ((*(a2 + 160) & 0x20) != 0)
      {
LABEL_6:
        v55 = 0;
        v56 = 0;
        v59 = *(a2 + 208);
        v58 = *(a2 + 216);
LABEL_29:
        v17 = 0.0;
        goto LABEL_39;
      }

LABEL_28:
      v25 = a6;
      v26 = strtoul(**(a2 + 168), 0, 0);
      v27 = strtoul(*(*(a2 + 168) + 8), 0, 0);
      a6 = v25;
      v55 = 0;
      v56 = 0;
      v58 = v27;
      v59 = v26;
      *(a2 + 208) = v26;
      *(a2 + 216) = v27;
      *(a2 + 160) |= 0x60u;
      goto LABEL_29;
    }

    return a6 ^ 1;
  }

  if (a1 > 9)
  {
    if (a1 != 10 && a1 != 12)
    {
      return a6 ^ 1;
    }

    v12 = 8;
    if ((*(a2 + 161) & 4) != 0)
    {
LABEL_35:
      v58 = 0;
      v59 = 0;
      v55 = 0;
      v56 = 0;
      v17 = *(a2 + 248);
      v19 = *(a2 + 264);
      if (a5)
      {
        goto LABEL_40;
      }

LABEL_15:
      LODWORD(v20) = 0;
      LODWORD(v21) = 0;
      if (a3)
      {
        goto LABEL_41;
      }

      goto LABEL_16;
    }

LABEL_14:
    v16 = a6;
    v17 = strtod(**(a2 + 168), 0);
    v18 = strtod(*(*(a2 + 168) + 8), 0);
    a6 = v16;
    v19 = v18;
    v58 = 0;
    v59 = 0;
    v55 = 0;
    v56 = 0;
    *(a2 + 248) = v17;
    *(a2 + 264) = v18;
    *(a2 + 160) |= 0x1400u;
    if (a5)
    {
      goto LABEL_40;
    }

    goto LABEL_15;
  }

  if ((a1 - 7) >= 2)
  {
    if (a1 != 9)
    {
      return a6 ^ 1;
    }

    v12 = 4;
    if ((*(a2 + 161) & 4) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_14;
  }

  if ((*(a2 + 160) & 0x80) != 0)
  {
    v58 = 0;
    v59 = 0;
    v55 = *(a2 + 232);
    v56 = *(a2 + 224);
  }

  else
  {
    v13 = a6;
    v14 = strtoull(**(a2 + 168), 0, 0);
    v15 = strtoull(*(*(a2 + 168) + 8), 0, 0);
    a6 = v13;
    v58 = 0;
    v59 = 0;
    v55 = v15;
    v56 = v14;
    *(a2 + 224) = v14;
    *(a2 + 232) = v15;
    *(a2 + 160) |= 0x180u;
  }

  v17 = 0.0;
  v12 = 8;
LABEL_39:
  v19 = 0.0;
  if (!a5)
  {
    goto LABEL_15;
  }

LABEL_40:
  v28 = *(a2 + 32);
  v20 = (v28 >> 25) & 1;
  v21 = (v28 >> 34) & 1;
  if (a3)
  {
LABEL_41:
    if ((v20 | v21) == 1)
    {
      v53 = v21;
      v54 = v20;
      v57 = a7;
      v22 = 0;
      v29 = 0;
      v30 = 0;
      while (a1 <= 6)
      {
        if ((a1 - 3) < 4)
        {
          v35 = *(a4 + v30);
          v36 = v35 < v59 || v35 > v58;
LABEL_55:
          v38 = !v36;
          if (v38 == a6)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        if ((a1 - 1) >= 2)
        {
          goto LABEL_76;
        }

        v39 = *(a4 + v30);
        v41 = v59 <= v39 && v58 >= v39;
        if (v41 == a6)
        {
          goto LABEL_44;
        }

LABEL_43:
        v31 = v12;
        v32 = a3;
        v33 = a4;
        v34 = a6;
        v22 = db_eval_obj_qp_array_set_match_at_index(a5, a2, v29);
        db_eval_obj_qp_array_set_match_at_index(v57, a2, v29);
        a6 = v34;
        a4 = v33;
        a3 = v32;
        v12 = v31;
LABEL_44:
        v30 += v12;
        ++v29;
        if (v30 >= a3)
        {
          goto LABEL_17;
        }
      }

      if (a1 > 9)
      {
        if (a1 != 10 && a1 != 12)
        {
LABEL_76:
          if ((a6 & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        v42 = *(a4 + v30);
        v43 = v42 >= v17;
        v44 = v42 <= v19;
        goto LABEL_74;
      }

      if ((a1 - 7) >= 2)
      {
        if (a1 != 9)
        {
          goto LABEL_76;
        }

        v45 = *(a4 + v30);
        v43 = v17 <= v45;
        v44 = v19 >= v45;
LABEL_74:
        if ((v43 && v44) == a6)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      v37 = *(a4 + v30);
      v36 = v37 < v56 || v37 > v55;
      goto LABEL_55;
    }

    v46 = 0;
    if (a1 <= 6)
    {
      if ((a1 - 3) >= 4)
      {
        if ((a1 - 1) < 2)
        {
          v48 = *a4;
          v46 = v59 <= v48 && v58 >= v48;
        }

        return v46 ^ a6;
      }

      v47 = *a4 < v59 || *a4 > v58;
      goto LABEL_88;
    }

    if (a1 > 9)
    {
      if (a1 != 10 && a1 != 12)
      {
        return v46 ^ a6;
      }

      v50 = *a4 >= v17;
      v51 = *a4 <= v19;
    }

    else
    {
      if ((a1 - 7) < 2)
      {
        v47 = *a4 < v56 || *a4 > v55;
LABEL_88:
        v46 = !v47;
        return v46 ^ a6;
      }

      if (a1 != 9)
      {
        return v46 ^ a6;
      }

      v52 = *a4;
      v50 = v17 <= v52;
      v51 = v19 >= v52;
    }

    v46 = v50 && v51;
    return v46 ^ a6;
  }

LABEL_16:
  v53 = v21;
  v54 = v20;
  v57 = a7;
  v22 = 0;
LABEL_17:
  if (a3)
  {
    v23 = v54;
  }

  else
  {
    v23 = 0;
  }

  if (v23 & 1) != 0 || ((v53 ^ 1))
  {
    if (v23)
    {
      return v22;
    }

    else
    {
      return a6 ^ 1;
    }
  }

  else
  {
    return v57 && *(v57 + 8) != 0;
  }
}

uint64_t __db_query_compute_cost_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = a2;
  v3 = *(a2 + 48);
  if (v3 == 1)
  {
    v4 = (*(*(a2 + 8) + 52) & ~(*(*(a2 + 8) + 52) >> 31)) + (*(*a2 + 52) & ~(*(*a2 + 52) >> 31));
  }

  else
  {
    if (v3 != 2)
    {
      return result;
    }

    v4 = *(*a2 + 52);
    if (v4 >= *(*(a2 + 8) + 52))
    {
      v4 = *(*(a2 + 8) + 52);
    }
  }

  *(a2 + 52) = v4;
  return result;
}

size_t __db_query_compute_cost_block_invoke(uint64_t a1, size_t a2)
{
  result = a2;
  if (*(a2 + 48) == 4)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v5 = *(v3 + 52);
      v4 = *(v3 + 56);
      if ((v4 != 0.0 || v5 != 0.0) && (v5 == 0.0 || v4 == 0.0))
      {
        *(v3 + 48) = -1000;
        if (!*(a2 + 52))
        {
LABEL_9:
          *(result + 52) = *(*(result + 16) + 48);
        }
      }

      else
      {
        if (!*(v3 + 48))
        {
          _assessNodeCost(a2);
          result = a2;
        }

        if (!*(result + 52))
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

float db_compute_ranking_score(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v97 = v1;
  v98 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v105[6142] = *MEMORY[0x1E69E9840];
  memset(&v99[1], 0, 104);
  v99[0] = 0x400000004;
  bzero(v105, 0xBFF0uLL);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = "<>";
  v104[0] = v4;
  v104[1] = 0;
  if (!v8)
  {
    v12 = "<<anon store>>";
  }

  v95 = v12;
  v96 = v8;
  while (1)
  {
    v15 = &v104[3 * v11];
    if (v9 == 1)
    {
      break;
    }

    if (!v9)
    {
      v16 = *(v4 + 8);
      if (v16)
      {
        if (v16 == v6[2])
        {
          *(v15 + 2) = (*(v4 + 28) >> 10) & 1;
          *(v15 + 4) = 1;
          if (!v11)
          {
            goto LABEL_132;
          }

          goto LABEL_5;
        }
      }
    }

    v17 = v4[12] & 0xFFF7;
    if (v17 > 3)
    {
      if (v17 == 4)
      {
        v25 = compare_file_by_dbo(v96, v6, *(v4 + 2), (v4 + 8), v97, v98, 0, v99, 0);
        *(v15 + 2) = v25;
        v19 = *(v4 + 2);
        if (!v19)
        {
LABEL_47:
          v18 = 0.0;
          goto LABEL_48;
        }

        if (v25)
        {
LABEL_35:
          v18 = *(v19 + 52);
          goto LABEL_48;
        }
      }

      else
      {
        if (v17 != 16)
        {
          if (v17 == 32)
          {
            *(v15 + 2) = 1;
            v18 = v4[18];
            if (v18 != 0.0)
            {
              goto LABEL_48;
            }

            v19 = *(v4 + 2);
            if (!v19)
            {
              goto LABEL_47;
            }

            goto LABEL_35;
          }

LABEL_41:
          v27 = *__error();
          v28 = _SILogForLogForCategory(1);
          v29 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v28, v29))
          {
            *buf = 136315394;
            v101 = v95;
            v102 = 2048;
            v103 = v4;
            _os_log_impl(&dword_1C278D000, v28, v29, "%s : node @ 0x%p looks trashed", buf, 0x16u);
          }

          *__error() = v27;
        }

        *(v15 + 2) = 0;
        v18 = v4[18];
        if (v18 != 0.0)
        {
          goto LABEL_48;
        }

        v19 = *(v4 + 2);
        if (!v19)
        {
          goto LABEL_47;
        }
      }

      v18 = *(v19 + 56);
      goto LABEL_48;
    }

    if (v17 == 1)
    {
      if ((v9 - 2) >= 2)
      {
        if (v9)
        {
          *(v15 + 4) = 4;
          if (*(v15 + 10) != 1)
          {
LABEL_146:
            v78 = __si_assert_copy_extra_332();
            __message_assert_336(v78, v79, v80, v81, v82, v83, v84, v85, "core-query.c");
            free(v78);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          v42 = *(v15 + 2);
          v43 = *(v15 + 8);
          *(v15 + 3) = fmaxf(*(v15 + 3), *(v15 + 9));
          if (v42)
          {
            v44 = (v42 & 0x80000001) == 0;
          }

          else
          {
            v44 = 0;
          }

          if (v44)
          {
            if (v43)
            {
              v56 = (v43 & 0x80000001) == 0;
            }

            else
            {
              v56 = 0;
            }

            if (v56)
            {
              v45 = v43 ^ v42;
              v58 = v43 & v42;
              if ((v43 & v42) >= 2)
              {
                v62 = 0;
                do
                {
                  if ((v58 & 2) != 0)
                  {
                    v64 = db_eval_obj_qp_array_union_for_value(v99, v62);
                    v65 = 2 << v62;
                    if (v62 >= 0x1E)
                    {
                      v65 = 0;
                    }

                    v66 = v65 | v45;
                    if (v64)
                    {
                      v45 = v66;
                    }
                  }

                  ++v62;
                  v63 = v58 > 3;
                  v58 >>= 1;
                }

                while (v63);
              }

              if (!v45)
              {
                *(v15 + 3) = 0;
              }
            }

            else if (v43)
            {
              v45 = v43;
            }

            else
            {
              v45 = v42;
            }
          }

          else if (v42)
          {
            v45 = v42;
          }

          else
          {
            v45 = v43;
          }

          *(v15 + 2) = v45;
          *(v15 + 4) = 1;
          v59 = v4[18];
          if (v59 != 0.0)
          {
            *(v15 + 3) = fmaxf(*(v15 + 3), v59);
          }

          goto LABEL_50;
        }

        v30 = *v4;
        v31 = *(v4 + 1);
        v13 = v11 + 1;
        if (v11 >= v10)
        {
          v10 = v11 + 1;
          if (v11 >= 2047)
          {
LABEL_149:
            v86 = __si_assert_copy_extra_332();
            __message_assert_336(v86, v87, v88, v89, v90, v91, v92, v93, "core-query.c");
            free(v86);
            if (__valid_fs(-1))
            {
              v94 = 2989;
            }

            else
            {
              v94 = 3072;
            }

            *v94 = -559038737;
            abort();
          }
        }

        v32 = &v104[3 * v13];
        v32[1] = 0;
        *(v32 + 4) = 0;
        if ((*(v30 + 52) <= *(v31 + 52) || (v33 = *(v30 + 64)) != 0 && v33 == v6[2]) && ((v34 = *(v31 + 64)) == 0 || v34 != v6[2]))
        {
          v35 = 2;
        }

        else
        {
          v35 = 3;
          v30 = v31;
        }

        *v32 = v30;
        *(v15 + 4) = v35;
      }

      else
      {
        if (*(v15 + 10) != 1)
        {
          goto LABEL_149;
        }

        *(v15 + 2) = *(v15 + 8);
        *(v15 + 3) = *(v15 + 9);
        v13 = v11 + 1;
        if (v11 >= v10)
        {
          v10 = v11 + 1;
          if (v11 >= 2047)
          {
            goto LABEL_149;
          }
        }

        v26 = &v104[3 * v13];
        *v26 = *&v4[2 * (v9 == 2)];
        v26[1] = 0;
        *(v26 + 4) = 0;
        *(v15 + 4) = 4;
      }
    }

    else
    {
      if (v17 != 2)
      {
        goto LABEL_41;
      }

      if ((v9 - 2) < 2)
      {
        if (*(v15 + 10) != 1)
        {
          goto LABEL_146;
        }

        v21 = *(v15 + 8);
        *(v15 + 2) = v21;
        v22 = *(v15 + 9) + *(v15 + 3);
        *(v15 + 3) = v22;
        v23 = (v21 & 0x80000001) != 0 || v21 == 0;
        if (v23 && v22 == 0.0)
        {
          v24 = 1;
        }

        else
        {
          if (v11 >= v10)
          {
            v10 = v11 + 1;
          }

          ++v11;
          v54 = v9 == 2;
          v55 = &v104[3 * v11];
          *v55 = *&v4[2 * v54];
          v55[1] = 0;
          *(v55 + 4) = 0;
          v24 = 4;
        }

        *(v15 + 4) = v24;
        goto LABEL_50;
      }

      if (v9)
      {
        *(v15 + 4) = 4;
        if (*(v15 + 10) != 1)
        {
          goto LABEL_149;
        }

        v46 = *(v15 + 8);
        v47 = *(v15 + 9);
        v48 = *(v15 + 2);
        v49 = *(v15 + 3);
        v50 = v47 != 0.0;
        v51 = v49 + v47;
        if (!v50 || v49 == 0.0)
        {
          v51 = 0.0;
        }

        *(v15 + 3) = v51;
        if (v46)
        {
          v52 = v48 == 0;
        }

        else
        {
          v52 = 1;
        }

        if (v52)
        {
          v53 = 0;
        }

        else
        {
          v57 = v48 & 0x80000001;
          if ((v46 & 0x80000001) != 0)
          {
            if (v57)
            {
              v53 = 1;
            }

            else
            {
              v53 = v48;
            }
          }

          else
          {
            v53 = v46;
            if (!v57)
            {
              v53 = v48 ^ v46;
              v60 = v48 & v46;
              if ((v48 & v46) >= 2)
              {
                v67 = 0;
                do
                {
                  if ((v60 & 2) != 0)
                  {
                    v68 = db_eval_obj_qp_array_intersect_for_value(v99, v67);
                    v69 = 2 << v67;
                    if (v67 >= 0x1E)
                    {
                      v69 = 0;
                    }

                    v70 = v69 | v53;
                    if (v68)
                    {
                      v53 = v70;
                    }
                  }

                  ++v67;
                  v63 = v60 > 3;
                  v60 >>= 1;
                }

                while (v63);
              }

              if (!v53)
              {
                *(v15 + 3) = 0;
              }
            }
          }
        }

        *(v15 + 2) = v53;
        v61 = v4[18];
        if (v61 != 0.0)
        {
          v18 = *(v15 + 3) + v61;
LABEL_48:
          *(v15 + 3) = v18;
        }

        *(v15 + 4) = 1;
LABEL_50:
        v13 = v11;
        goto LABEL_6;
      }

      v36 = *v4;
      v37 = *(v4 + 1);
      *(v15 + 3) = 0;
      v13 = v11 + 1;
      if (v11 >= v10)
      {
        v10 = v11 + 1;
      }

      v38 = &v104[3 * v13];
      v38[1] = 0;
      *(v38 + 4) = 0;
      if ((*(v36 + 52) <= *(v37 + 52) || (v39 = *(v36 + 64)) != 0 && v39 == v6[2]) && ((v40 = *(v37 + 64)) == 0 || v40 != v6[2]))
      {
        v41 = 2;
      }

      else
      {
        v41 = 3;
        v36 = v37;
      }

      *v38 = v36;
      *(v15 + 4) = v41;
    }

LABEL_6:
    v14 = &v104[3 * v13];
    v4 = *v14;
    v9 = *(v14 + 4);
    v11 = v13;
  }

  v20 = *(v15 + 2);
  if ((v4[12] & 8) != 0)
  {
    v20 = v20 == 0;
    *(v15 + 2) = v20;
  }

  *(v4 + 8) = v6[2];
  *(v4 + 28) = v4[14] & 0xFBFF | ((v20 & 1) << 10);
  if (v11)
  {
LABEL_5:
    v13 = v11 - 1;
    goto LABEL_6;
  }

LABEL_132:
  v71 = *(v15 + 3);
  v72 = HIDWORD(v99[0]);
  if (HIDWORD(v99[0]) >= 5)
  {
    v73 = v99[2];
  }

  else
  {
    v73 = &v99[2];
  }

  if (v99[0])
  {
    v74 = LODWORD(v99[1]);
    if (LODWORD(v99[1]))
    {
      v75 = v73 + 2;
      do
      {
        if (*(v75 - 2) >= 0x41u)
        {
          free(*v75);
          *(v75 - 1) = 0;
          *v75 = 0;
        }

        v75 += 3;
        --v74;
      }

      while (v74);
      v72 = HIDWORD(v99[0]);
    }
  }

  if (v72 >= 5)
  {
    free(v73);
  }

  v76 = *MEMORY[0x1E69E9840];
  return v71;
}

void node_max_bias(uint64_t *a1)
{
  v2 = a1[6] & 0xFFF7;
  if (v2 == 32)
  {
LABEL_12:
    v8 = *(a1 + 18);
    return;
  }

  if (v2 == 2)
  {
    v5 = *a1;
    if (*a1)
    {
      v4 = node_max_bias();
      if (!a1[1])
      {
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 1.0;
      if (!a1[1])
      {
        goto LABEL_18;
      }
    }

    v4 = node_max_bias() + v4;
    goto LABEL_18;
  }

  if (v2 != 1)
  {
    v6 = a1[2];
    if (v6)
    {
      v7 = fmaxf(*(v6 + 52), *(v6 + 56));
      return;
    }

    goto LABEL_12;
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = node_max_bias();
    if (!a1[1])
    {
      goto LABEL_18;
    }

LABEL_16:
    v9 = node_max_bias();
    if (v9 > v4)
    {
      v4 = v9;
    }

    goto LABEL_18;
  }

  v4 = 0.0;
  if (a1[1])
  {
    goto LABEL_16;
  }

LABEL_18:
  v10 = fmaxf(v4, *(a1 + 18));
}

void cleanup_children(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = 0x40000000;
    v6 = __db_query_tree_apply_block_block_invoke;
    v7 = &unk_1E8198ED0;
    v8 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v2, &v4, 0);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = 0x40000000;
    v6 = __db_query_tree_apply_block_block_invoke;
    v7 = &unk_1E8198ED0;
    v8 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v3, &v4, 0);
    *(a1 + 8) = 0;
  }
}

BOOL query_node_is_double_star(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) == 4 && (v1 = *(result + 16)) != 0 && (v2 = *v1) != 0 && *v2 == 42 && v2[1] == 42 && v2[2] == 0;
  }

  return result;
}

char *query_trim_superfluous_wildcards(char *result)
{
  v1 = *(result + 9);
  if (v1 && (result[32] & 0x40) != 0)
  {
    v2 = *(result + 9);
    while (1)
    {
      v2 = strstr(v2, "**");
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
      {
        goto LABEL_12;
      }

      v3 = 0;
      v4 = v2;
      while (1)
      {
        v5 = *--v4;
        if (v5 != 92)
        {
          break;
        }

        v3 ^= 1u;
        if (v4 == v1)
        {
          v3 = v1 - v2;
          break;
        }
      }

      if (v3)
      {
        ++v2;
      }

      else
      {
LABEL_12:
        v6 = (v2 + 1);
        do
        {
          v7 = *v6;
          *(v6++ - 1) = v7;
        }

        while (v7);
      }
    }

    result = strlen(v1);
    if (result >= 2)
    {
      do
      {
        v8 = &result[v1];
        if (result[v1 - 1] != 42)
        {
          break;
        }

        if (*(v8 - 2) != 32)
        {
          break;
        }

        result -= 2;
        *(v8 - 2) = 0;
      }

      while (result > 1);
    }

    if (*v1 == 42)
    {
      v9 = 0;
      do
      {
        v10 = &v1[v9];
        if (v1[v9 + 1] != 32)
        {
          break;
        }

        v9 += 2;
      }

      while (v10[2] == 42);
      if (v9)
      {

        return memmove(v1, &v1[v9], &result[-v9 + 1]);
      }
    }
  }

  return result;
}

_WORD *_query_node_copy_factor_node_expanding_queryTerm(void *a1, const char ***a2, int a3, char a4, int a5, _DWORD *a6)
{
  if (*(a2 + 2) < 1)
  {
    return 0;
  }

  v10 = a1;
  v11 = MEMORY[0x1E69E9820];
  v41 = 0x40000000;
  *buf = MEMORY[0x1E69E9820];
  v42 = __db_query_tree_apply_block_block_invoke;
  v43 = &unk_1E8198ED0;
  v44 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a1, buf, &__block_literal_global_25_15416);
  v13 = v12;
  v14 = *(v12 + 16);
  *(v14 + 32) |= 0x8000uLL;
  v15 = a5;
  if (a4)
  {
    v16 = a2;
    v36 = **a2;
    asprintf((v14 + 72), "*%s");
  }

  else
  {
    v16 = a2;
    if (*(a2 + 2) != 1 || (a5 & 1) == 0)
    {
      v33 = **a2;
      v34 = strlen(v33);
      v35 = malloc_type_zone_malloc(queryZone, v34 + 1, 0xA4971684uLL);
      if (!v35 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      memcpy(v35, v33, v34);
      *(v35 + v34) = 0;
      *(*(v13 + 16) + 72) = v35;
      v16 = a2;
      if (!a3)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v37 = **a2;
    asprintf((v14 + 72), "%s*");
  }

  if (a3)
  {
LABEL_9:
    if ((v10[6] & 8) != 0)
    {
      v18 = -1;
    }

    else
    {
      v18 = -5;
    }

    if ((v18 + *(v10[2] + 24)) >= 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    query_node_expand_double_star_in_place(v13, v19);
    *a6 += 2;
  }

LABEL_16:
  if (*(v16 + 2) >= 2)
  {
    v20 = 1;
    v38 = v11;
    while (1)
    {
      *buf = v11;
      v41 = 0x40000000;
      v42 = __db_query_tree_apply_block_block_invoke;
      v43 = &unk_1E8198ED0;
      v44 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v10, buf, &__block_literal_global_25_15416);
      v22 = v21;
      v23 = *(v21 + 16);
      *(v23 + 32) |= 0x8000uLL;
      if (v20 != *(v16 + 2) - 1 || v15 == 0)
      {
        break;
      }

      asprintf((v23 + 72), "%s*", (*v16)[v20]);
      if (a3)
      {
        goto LABEL_31;
      }

LABEL_38:
      if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
      {
        ++sTotal_15332;
      }

      v17 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
      if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      v17[24] = 2;
      *v17 = v13;
      *(v17 + 1) = v22;
      ++*a6;
      ++v20;
      v13 = v17;
      if (v20 >= *(v16 + 2))
      {
        return v17;
      }
    }

    v25 = a6;
    v26 = v10;
    v27 = (*v16)[v20];
    v28 = strlen(v27);
    v29 = malloc_type_zone_malloc(queryZone, v28 + 1, 0xA4971684uLL);
    if (!v29 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    memcpy(v29, v27, v28);
    *(v29 + v28) = 0;
    *(*(v22 + 16) + 72) = v29;
    v10 = v26;
    a6 = v25;
    v11 = v38;
    v16 = a2;
    if (!a3)
    {
      goto LABEL_38;
    }

LABEL_31:
    if ((v10[6] & 8) != 0)
    {
      v30 = -1;
    }

    else
    {
      v30 = -5;
    }

    if ((v30 + *(v10[2] + 24)) >= 2)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }

    query_node_expand_double_star_in_place(v22, v31);
    *a6 += 2;
    goto LABEL_38;
  }

  return v13;
}

void query_node_expand_double_star_in_place(uint64_t a1, __int16 a2)
{
  v4 = **(a1 + 16);
  if (v4)
  {
    free(v4);
    **(a1 + 16) = 0;
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __db_query_tree_apply_block_block_invoke;
  v14 = &unk_1E8198ED0;
  v15 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a1, &v11, &__block_literal_global_25_15416);
  v6 = v5;
  v11 = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __db_query_tree_apply_block_block_invoke;
  v14 = &unk_1E8198ED0;
  v15 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a1, &v11, &__block_literal_global_25_15416);
  v8 = v7;
  v9 = malloc_type_zone_malloc(queryZone, 2uLL, 0xA4971684uLL);
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    LOWORD(v11) = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", &v11, 2u);
  }

  *v9 = 42;
  **(v6 + 16) = v9;
  v10 = malloc_type_zone_malloc(queryZone, 0x13uLL, 0xA4971684uLL);
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    LOWORD(v11) = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", &v11, 2u);
  }

  strcpy(v10, "kMDItemTextContent");
  **(v8 + 16) = v10;
  free_qp(*(a1 + 16));
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 48) = a2;
  *a1 = v6;
  *(a1 + 56) = *(a1 + 57) << 8;
}

void *__query_node_expand_block_invoke_4(int a1, void *a2, void *a3, void *a4)
{
  v4 = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else
  {
    if (a3)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      v5 = a4;
      db_query_tree_apply_block_with_meta(a3, &v7, 0);
      a4 = v5;
    }

    if (a4)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a4, &v7, 0);
    }

    free(v4);
    return 0;
  }

  return v4;
}

void *__query_node_expand_block_invoke(uint64_t a1, void *a2)
{
  if (*(a2 + 24) != 4)
  {
    return a2;
  }

  v2 = a2[2];
  if (*(v2 + 24) > 0xBu)
  {
    return a2;
  }

  v3 = *(v2 + 72);
  if (!v3)
  {
    return a2;
  }

  v4 = *(v2 + 32);
  if ((v4 & 0x1000008) == 0)
  {
    return a2;
  }

  v5 = a2;
  v6 = (v3 + strlen(*(v2 + 72)));
  v7 = v6 - 1;
  if ((v6 - 1) < v3)
  {
    v8 = 0;
    v9 = 0;
    a2 = v5;
    if ((v4 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v8 = 0;
  v15 = MEMORY[0x1E69E9830];
  a2 = v5;
  while (1)
  {
    v16 = v7;
    v17 = *v7;
    if (v17 == 42)
    {
      if ((v8 & 1) == 0)
      {
        v8 = 1;
        goto LABEL_25;
      }

      v18 = (*(v15 + 228) >> 8) & 1;
    }

    else
    {
      if ((v17 & 0x80000000) != 0)
      {
        v19 = __maskrune(v17, 0x100uLL);
        a2 = v5;
      }

      else
      {
        v19 = *(v15 + 4 * v17 + 60) & 0x100;
      }

      v18 = v19 != 0;
    }

    if (!v18)
    {
      break;
    }

    ++v9;
LABEL_25:
    --v7;
    v6 = v16;
    if ((v16 - 1) < v3 || v9 >= 3)
    {
      goto LABEL_29;
    }
  }

  v6 = v7 + 1;
LABEL_29:
  v2 = a2[2];
  v4 = *(v2 + 32);
  if ((v4 & 8) != 0)
  {
LABEL_7:
    *(v2 + 32) = v4 & 0xFFFFFFFFFFFFFFF7;
    if (v9 - 1 > 1)
    {
      return a2;
    }

    v66 = 0;
    *__s = 0;
    v10 = __tolower(*v6);
    v11 = 0;
    if (v9 != 1)
    {
      v11 = __tolower(v6[1]);
      v66 = 0;
    }

    __s[0] = v10;
    __s[1] = v11;
    v61 = 0;
    v62 = &v61;
    v63 = 0x2000000000;
    __dst = MEMORY[0x1E69E9820];
    v68 = 0x40000000;
    v69 = __db_query_tree_apply_block_block_invoke;
    v70 = &unk_1E8198ED0;
    v71 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v5, &__dst, &__block_literal_global_25_15416);
    v64 = v12;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2000000000;
    v60 = 0;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 0x40000000;
    v49 = __query_node_expand_block_invoke_2;
    v50 = &unk_1E8199238;
    v53 = v3;
    v54 = v7;
    v55 = v5;
    v56 = v8 & 1;
    v51 = &v57;
    v52 = &v61;
    v13 = strlen(__s);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v69) = v13;
    if (v13)
    {
      v13 = memcpy(&__dst, __s, v13);
    }

    *(&__dst + v14) = 0;
    incompleteRomajiKanaData(v13);
    v21 = SHIBYTE(v69);
    v22 = __dst;
    if (v69 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (v69 >= 0)
    {
      v24 = HIBYTE(v69);
    }

    else
    {
      v24 = v68;
    }

    v25 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](p_dst, v24);
    v26 = *(&incompleteRomajiKanaData(void)::data + 1);
    if (*(&incompleteRomajiKanaData(void)::data + 1))
    {
      v27 = v25;
      v46 = v22;
      v28 = vcnt_s8(*(&incompleteRomajiKanaData(void)::data + 8));
      v28.i16[0] = vaddlv_u8(v28);
      v29 = v28.u32[0];
      if (v28.u32[0] > 1uLL)
      {
        v30 = v25;
        if (v25 >= *(&incompleteRomajiKanaData(void)::data + 1))
        {
          v30 = v25 % *(&incompleteRomajiKanaData(void)::data + 1);
        }
      }

      else
      {
        v30 = (*(&incompleteRomajiKanaData(void)::data + 1) - 1) & v25;
      }

      v32 = *(incompleteRomajiKanaData(void)::data + 8 * v30);
      if (v32)
      {
        v31 = *v32;
        if (*v32)
        {
          v47 = *(&incompleteRomajiKanaData(void)::data + 1) - 1;
          do
          {
            v33 = v31[1];
            if (v27 == v33)
            {
              v34 = *(v31 + 39);
              v35 = v34;
              if (v34 < 0)
              {
                v34 = v31[3];
              }

              if (v34 == v24)
              {
                v36 = v35 >= 0 ? (v31 + 2) : v31[2];
                if (!memcmp(v36, p_dst, v24))
                {
                  break;
                }
              }
            }

            else
            {
              if (v29 <= 1)
              {
                v33 &= v47;
              }

              else if (v33 >= v26)
              {
                v33 %= v26;
              }

              if (v33 != v30)
              {
                goto LABEL_68;
              }
            }

            v31 = *v31;
          }

          while (v31);
        }
      }

      else
      {
LABEL_68:
        v31 = 0;
      }

      v22 = v46;
    }

    else
    {
      v31 = 0;
    }

    if (v21 < 0)
    {
      operator delete(v22);
    }

    if (v31)
    {
      v72 = 0;
      v73 = 0;
      v74 = 0;
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v72, v31[5], v31[6], 0xAAAAAAAAAAAAAAABLL * (v31[6] - v31[5]));
      v37 = v72;
      v38 = v73 - v72;
      if (v73 != v72)
      {
        v39 = 0;
        v40 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
        if (v40 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
        }

        do
        {
          if (*(v37 + 23) < 0)
          {
            v42 = *v37;
          }

          (v49)(v48, v40, v39++);
          v37 += 3;
        }

        while (v41 != v39);
      }

      v75 = &v72;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v75);
    }

    free(v58[3]);
    __dst = MEMORY[0x1E69E9820];
    v68 = 0x40000000;
    v69 = __db_query_tree_apply_block_block_invoke;
    v70 = &unk_1E8198ED0;
    v71 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v5, &__dst, 0);
    v43 = v62[3];
    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v61, 8);
    return v43;
  }

LABEL_30:
  if ((v4 & 0x1000000) == 0)
  {
    return a2;
  }

  *(v2 + 32) = v4 & 0xFFFFFFFFFEFFFFF7;
  if ((v4 & 0x400) == 0)
  {
    v20 = *v2;
    if (*v2)
    {
      if (strcmp(*v2, "kMDItemTextContent"))
      {
        strncmp(v20, "_kMDItemOCRContent", 0x12uLL);
      }
    }
  }

  __dst = 0;
  v68 = &__dst;
  v69 = 0x2000000000;
  v70 = 0;
  CITokenizerGatherSegments(v3);
  v45 = *(v68 + 24);
  _Block_object_dispose(&__dst, 8);
  result = v45;
  a2 = v5;
  if (!v45)
  {
    return a2;
  }

  return result;
}