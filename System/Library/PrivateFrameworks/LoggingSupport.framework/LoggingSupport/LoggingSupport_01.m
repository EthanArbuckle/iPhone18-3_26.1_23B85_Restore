uint64_t __catalog_chunk_parse_subchunk_legacy_block_invoke(uint64_t a1, unsigned __int16 a2, uint64_t *a3, unint64_t *a4)
{
  v8 = _catalog_subchunk_entry_alloc(*(a1 + 32));
  v9 = *a3;
  v10 = a3[1];
  v8[2] = *a3;
  v8[3] = v10;
  if (*(a1 + 48) == 1)
  {
    printf("[%03u]\n\t%10s : %llu\n\t%10s : %llu\n\t%10s : %u\n\t%10s : %u\n", a2, "startts", v9, "endts", v10, "log cnt", *(a3 + 4), "others cnt", *(a3 + 5));
  }

  v11 = a3 + 26;
  *a4 = a3 + 26;
  v12 = *(a1 + 40);
  v13 = *(a3 + 12);
  if (v12)
  {
    v15 = v12 >= v11;
    v14 = v12 - v11;
    v15 = v15 && v14 >= v13;
    if (!v15)
    {
      return 0;
    }
  }

  v17 = v11 + v13;
  if ((v17 & 7) != 0)
  {
    v17 = (v17 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  *a4 = v17;
  return 1;
}

uint64_t _chunk_print_uuid(uint64_t a1, unsigned __int8 *uu)
{
  v7 = *MEMORY[0x277D85DE8];
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v3;
  *&out[16] = v3;
  uuid_unparse(uu, out);
  result = printf("[%03llu] %s\n", a1, out);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __catalog_chunk_unparse_uuid_block_invoke(uint64_t a1, __n128 *a2, unsigned __int16 a3)
{
  result = *a2;
  *(**(a1 + 32) + 16 * a3) = *a2;
  return result;
}

char *__catalog_chunk_unparse_subsystem_block_invoke(uint64_t a1, const char *a2, unsigned __int16 a3)
{
  if (a3 >= *(*(a1 + 32) + 32))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v4 = (**(a1 + 40) + a3);

    return strcpy(v4, a2);
  }

  return result;
}

void __catalog_chunk_unparse_procinfo_block_invoke(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = _os_trace_uuid_map_lookup(*(a1[4] + 16), (a2 + 24));
  if (v4 >= 0x10000)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  if (uuid_is_null((a2 + 40)))
  {
    LOWORD(v6) = -1;
    goto LABEL_5;
  }

  v6 = _os_trace_uuid_map_lookup(*(a1[4] + 16), (a2 + 40));
  if (v6 >= 0x10000)
  {
LABEL_11:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

LABEL_5:
  v7 = a1[5];
  v8 = *v7;
  v9 = *(a2 + 8);
  v10 = *(a2 + 4);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  *v8 = *a2;
  *(v8 + 4) = v5;
  *(v8 + 6) = v6;
  *(v8 + 8) = v9;
  *(v8 + 16) = v11;
  *(v8 + 20) = v10;
  *(v8 + 24) = v12;
  *v7 = v8 + 32;
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[4];
  v16 = *v13;
  if ((v14 - *v13) >= 8)
  {
    *v16 = *(*(a2 + 56) + 4);
    *v13 = v16 + 1;
    v17 = *(a2 + 56);
    v22 = MEMORY[0x277D85DD0];
    v23 = 0x40000000;
    v24 = __catalog_chunk_unparse_procinfo_uuidinfo_block_invoke;
    v25 = &__block_descriptor_tmp_80;
    v26 = v15;
    v27 = v13;
    hashtable_iterate(v17, &v22);
    v13 = a1[5];
    v14 = a1[6];
    v15 = a1[4];
  }

  v18 = *v13;
  if ((v14 - *v13) >= 8)
  {
    *v18 = *(*(a2 + 64) + 4);
    *v13 = v18 + 1;
    v19 = *(a2 + 64);
    v22 = MEMORY[0x277D85DD0];
    v23 = 0x40000000;
    v24 = __catalog_chunk_unparse_procinfo_subsystem_block_invoke;
    v25 = &__block_descriptor_tmp_81;
    v26 = v13;
    v27 = v15;
    hashtable_iterate(v19, &v22);
    v13 = a1[5];
  }

  v20 = ((*v13 + 7) & 0xFFFFFFFFFFFFFFF8) - *v13;
  bzero(*v13, v20);
  *a1[5] += v20;
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __catalog_chunk_unparse_subchunk_procinfos_block_invoke(uint64_t result, _WORD *a2)
{
  v2 = *(result + 32);
  v3 = *v2;
  *v3 = *a2;
  *v2 = v3 + 1;
  return result;
}

uint64_t __catalog_chunk_unparse_subchunk_subcats_block_invoke(uint64_t result, _WORD *a2)
{
  v2 = *(result + 32);
  v3 = *v2;
  *v3 = *a2;
  *v2 = v3 + 1;
  return result;
}

unint64_t __catalog_chunk_unparse_procinfo_uuidinfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = _os_trace_uuid_map_lookup(*(*(a1 + 32) + 16), a3 + 2);
  v6 = result;
  if (result >= 0x10000)
  {
    result = _os_assumes_log();
  }

  v7 = **(a1 + 40);
  v8 = *a3;
  v7[1] = *(v7 + 4) | (*a3 << 16);
  *v7 = a3[1];
  if (v6 >= 0x10000)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v7[1] = (v8 << 16) | v6;
    **(a1 + 40) += 16;
  }

  return result;
}

unint64_t __catalog_chunk_unparse_procinfo_subsystem_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  *v5 = *a3;
  v6 = *(a3 + 8);
  if (!v6 || !*(a3 + 16))
  {
    _os_assumes_log();
    v6 = *(a3 + 8);
  }

  v7 = _os_trace_str_map_lookup(*(*(a1 + 40) + 24), v6);
  v8 = v7;
  if (v7 >= 0x10000)
  {
    _os_assumes_log();
  }

  v5[1] = v8;
  result = _os_trace_str_map_lookup(*(*(a1 + 40) + 24), *(a3 + 16));
  v10 = result;
  if (result >= 0x10000)
  {
    result = _os_assumes_log();
  }

  v5[2] = v10;
  **(a1 + 32) += 6;
  return result;
}

void _tracev3_chunk_decompress_and_enumerate_chunks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v9 = -1431655766;
  v4 = _tracev3_chunk_decompress(a1, a2, &v9, v10);
  if (v4)
  {
    v5 = 0;
    v6 = v10[0];
    do
    {
      if (v6 - v5 < 0x10)
      {
        break;
      }

      v7 = *&v4[v5 + 8];
      if (v6 - v5 - 16 < v7)
      {
        break;
      }

      if (!(*(a3 + 16))(a3))
      {
        break;
      }

      v5 = (v5 + v7 + 23) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v5 - 1 < v6);
  }

  if (v9)
  {
    free(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t _os_activity_map_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
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

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    JUMPOUT(0x2318E1010);
  }

  return result;
}

void *_os_trace_str_map_lookup(void *result, char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    std::string::basic_string[abi:nn200100]<0>(__p, a2);
    v3 = std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::find<std::string>(v2, __p);
    v4 = v3;
    if (v7 < 0)
    {
      operator delete(__p[0]);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else if (v3)
    {
LABEL_4:
      result = v4[5];
      goto LABEL_7;
    }

    result = 0;
  }

LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _os_trace_persistdir_path()
{
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  return _os_trace_persist_path;
}

void ___os_trace_shared_paths_init_block_invoke()
{
  _os_trace_persist_path = "/private/var/db/diagnostics";
  _os_trace_timesync_path = "/private/var/db/diagnostics/timesync";
  _os_trace_uuidtext_path = "/private/var/db/uuidtext";
}

uint64_t _os_trace_timesyncdir_path()
{
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  return _os_trace_timesync_path;
}

uint64_t _os_trace_uuiddb_path()
{
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  return _os_trace_uuidtext_path;
}

uint64_t _os_trace_get_path(int a1)
{
  result = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (_os_trace_shared_paths_init_once != -1)
      {
        dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
      }

      return _os_trace_uuidtext_path;
    }

    else if (a1 == 3)
    {

      return _os_trace_prefsdir_path();
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (_os_trace_shared_paths_init_once != -1)
      {
        dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
      }

      return _os_trace_timesync_path;
    }
  }

  else
  {
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    return _os_trace_persist_path;
  }

  return result;
}

uint64_t ___timesync_convert_tracev3_block_invoke(uint64_t a1, unsigned __int8 *src)
{
  if (*src == 4096 && *(src + 1) >= 0xA8uLL)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 4) != *(src + 18) || *(v3 + 12) != *(src + 19))
    {
      v4 = v3[4];
      v5 = v3[5];
      v6 = v3[3];
      if (v4 >= v5)
      {
        v7 = 2 * v5;
        v6 = _os_trace_realloc_typed();
        v3[3] = v6;
        v3[5] = v7;
        v4 = v3[4];
      }

      v3[4] = v4 + 1;
      v8 = v6 + (v4 << 6);
      v9 = *(src + 4);
      v10 = *(src + 10);
      v11 = *(src + 2);
      v12 = *(src + 8);
      v13 = *(src + 44);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = v9;
      *(v8 + 32) = v10;
      *(v8 + 40) = v13;
      *(v8 + 48) = v11;
      *(v8 + 56) = v12;
      uuid_copy((v3[3] + (v4 << 6) + 8), src + 144);
    }
  }

  return 1;
}

uint64_t ___timesync_converter_close_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (*a2 == *a3)
  {
    v3 = a2[7];
    v4 = a3[7];
    v5 = v3 == v4;
    if (v3 < v4)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t ___timesync_converter_close_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = *(a3 + 24);
  if (v3 == v4)
  {
    v5 = *(a2 + 32);
    v6 = *(a3 + 32);
    v7 = v5 == v6;
    if (v5 < v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v7)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t _timesync_validate(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = _os_trace_mmap_at();
  if (!v6)
  {
    v7 = 0xFFFFFFFFLL;
    if (!*__error())
    {
      goto LABEL_26;
    }

LABEL_28:
    _os_assumes_log();
    goto LABEL_26;
  }

  for (i = 0; i <= 0xAAAAAAAAAAAAAAAALL; i = v9 + v12)
  {
    if (i >= 0xAAAAAAAAAAAAAAAALL)
    {
      v13 = munmap(v6, 0xAAAAAAAAAAAAAAAALL);
      v14 = 1;
      v7 = 1;
      goto LABEL_25;
    }

    v9 = i;
    v10 = &v6[i];
    v11 = *&v6[i];
    if (v11 > 48047)
    {
      if (v11 == 48048)
      {
        if (*(v10 + 1) != 48)
        {
          break;
        }

        v12 = 48;
      }

      else
      {
        if (v11 != 57005)
        {
          break;
        }

        v12 = *(v10 + 1);
      }

      continue;
    }

    if (v11 == 27986)
    {
      if (*(v10 + 1) != 88)
      {
        break;
      }

      v12 = 88;
      continue;
    }

    if (v11 != 29524 || *(v10 + 1) != 32)
    {
      break;
    }

    v12 = 32;
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = *v10;
  }

  v13 = munmap(v6, 0xAAAAAAAAAAAAAAAALL);
  v14 = 0;
  v7 = 0;
LABEL_25:
  if (v13 == -1)
  {
    v17 = *__error();
    v7 = v14;
    goto LABEL_28;
  }

LABEL_26:
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t _timesync_for_each_boot(uint64_t result, uint64_t a2)
{
  if (*(result + 48))
  {
    v3 = result;
    do
    {
      (*(a2 + 16))(a2, v3 + 7);
      result = _timesync_advance_boot(v3);
    }

    while (v3[6]);
  }

  return result;
}

uint64_t _timesync_repair(int a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = openat(a1, a2, 16777478);
  if (v4 == -1)
  {
    v20 = *__error();
    _os_assumes_log();
    goto LABEL_7;
  }

  v5 = v4;
  v6 = _os_trace_mmap_at();
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = &v7[v9];
      v11 = *&v7[v9];
      if (v11 > 0xBBAF)
      {
        if (v11 == 48048)
        {
          if (*(v10 + 1) != 48)
          {
            goto LABEL_22;
          }

          v12 = 48;
        }

        else
        {
          if (v11 != 57005)
          {
            goto LABEL_22;
          }

          v12 = *(v10 + 1);
        }
      }

      else if (v11 == 27986)
      {
        if (*(v10 + 1) != 88)
        {
          goto LABEL_22;
        }

        v12 = 88;
      }

      else
      {
        if (v11 != 29524 || *(v10 + 1) != 32)
        {
LABEL_22:
          v14 = *&v7[v9];
          v15 = &v7[v9];
          v16 = 0xAAAAAAAAAAAAAAAALL - v9;
          while (1)
          {
            if (v14 == 27986)
            {
              if (*(v15 + 1) == 88)
              {
                goto LABEL_34;
              }
            }

            else if (v14 == 29524)
            {
              if (*(v15 + 1) == 32)
              {
                goto LABEL_34;
              }
            }

            else if (v14 == 48048 && *(v15 + 1) == 48)
            {
LABEL_34:
              v13 = v15 - v10;
LABEL_35:
              if (v13 >= 0xFFFF)
              {
                LOWORD(v12) = -8;
              }

              else
              {
LABEL_36:
                LOWORD(v12) = v13;
                if (!v13)
                {
                  LOWORD(v12) = *(v10 + 1);
                  goto LABEL_43;
                }
              }

              v18 = *(v10 + 1);
              (*(a3 + 16))(a3, v9);
              if (lseek(v5, v9, 0) == -1 || (v19 = _os_trace_write(), v19 == -1))
              {
                v23 = *__error();
                _os_assumes_log();
              }

              else if ((v19 & 0x8000000000000000) == 0)
              {
                v8 = (v8 + 1);
                goto LABEL_43;
              }

              v8 = 0xFFFFFFFFLL;
LABEL_50:
              if (munmap(v7, 0xAAAAAAAAAAAAAAAALL) == -1)
              {
                v25 = *__error();
                _os_assumes_log();
              }

              if (close(v5) != -1)
              {
LABEL_53:
                v24 = *MEMORY[0x277D85DE8];
                return v8;
              }

              v26 = *__error();
              result = *__error();
              if (v26 != 9)
              {
LABEL_55:
                _os_assumes_log();
                v27 = *__error();
                _os_assumes_log();
                goto LABEL_53;
              }

              qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
              qword_27DA527A8 = result;
              __break(1u);
              goto LABEL_57;
            }

            if (v16 <= 7)
            {
              v13 = (-21846 - v9);
              goto LABEL_35;
            }

            v16 -= 8;
            v17 = *(v15 + 4);
            v15 += 8;
            v14 = v17;
          }
        }

        v12 = 32;
      }

      if (v9 + v12 > 0xAAAAAAAAAAAAAAAALL)
      {
        LOWORD(v13) = -21846 - v9;
        goto LABEL_36;
      }

LABEL_43:
      v9 += v12;
      if (v9 >= 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_50;
      }
    }
  }

  if (*__error())
  {
    _os_assumes_log();
  }

  if (close(v5) != -1)
  {
LABEL_7:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_53;
  }

  v21 = *__error();
  result = *__error();
  if (v21 != 9)
  {
    v8 = 0xFFFFFFFFLL;
    goto LABEL_55;
  }

LABEL_57:
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

unint64_t _timesync_wall_time_to_continuous(uint64_t a1, unint64_t a2, unint64_t a3, _OWORD *a4)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  *a4 = *_timesync_range_find_startboot(a1, a2, a3, v6);
  result = v6[0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void _timesync_db_close(int *a1)
{
  _timesync_munmap_file(a1);
  if (close(*a1) == -1)
  {
    v2 = *__error();
    v3 = *__error();
    if (v2 == 9)
    {
      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = v3;
      __break(1u);
      return;
    }

    _os_assumes_log();
  }

  free(a1);
}

void _timesync_range_create_since_last_boot()
{
  v0 = _os_trace_zalloc_typed();
  *v0 = 0;
  *(v0 + 8) = xmmword_22E081670;
  operator new();
}

uint64_t _timesync_range_count(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 24);
  }

  else
  {
    return 0;
  }
}

void _timesync_range_destroy(void ***a1)
{
  _os_trace_uuid_map_destroy(*a1);

  free(a1);
}

uint64_t _os_trace_device_formatted_for_content_protection()
{
  if (_os_trace_device_formatted_for_content_protection_once != -1)
  {
    dispatch_once(&_os_trace_device_formatted_for_content_protection_once, &__block_literal_global_80);
  }

  return _os_trace_device_formatted_for_content_protection_formatted;
}

uint64_t ___os_trace_device_formatted_for_content_protection_block_invoke()
{
  result = MKBDeviceFormattedForContentProtection();
  _os_trace_device_formatted_for_content_protection_formatted = result == 1;
  return result;
}

BOOL _os_trace_device_unlocked_since_boot()
{
  if (_os_trace_device_unlocked_since_boot_unlocked)
  {
    return 1;
  }

  if (_os_trace_device_formatted_for_content_protection_once != -1)
  {
    dispatch_once(&_os_trace_device_formatted_for_content_protection_once, &__block_literal_global_80);
  }

  result = _os_trace_device_formatted_for_content_protection_formatted != 1 || MKBDeviceUnlockedSinceBoot() == 1;
  _os_trace_device_unlocked_since_boot_unlocked = result;
  return result;
}

char *_os_trace_development_getenv(const char *a1)
{
  if (!os_variant_allows_internal_security_policies())
  {
    return 0;
  }

  return getenv(a1);
}

uint64_t _os_trace_is_kernel_64_bit()
{
  if (_os_trace_is_kernel_64_bit_k64_once != -1)
  {
    dispatch_once(&_os_trace_is_kernel_64_bit_k64_once, &__block_literal_global_4);
  }

  return _os_trace_is_kernel_64_bit_k64;
}

uint64_t ___os_trace_is_kernel_64_bit_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  *v5 = xmmword_22E081680;
  memset(__b, 170, sizeof(__b));
  v3 = 648;
  result = sysctl(v5, 4u, __b, &v3, 0, 0);
  if (result == -1)
  {
    v2 = *__error();
    result = _os_assumes_log();
  }

  _os_trace_is_kernel_64_bit_k64 = (__b[32] & 4) != 0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _os_trace_uuiddb_get_path(const char *a1, uint64_t a2, int a3, char *__str)
{
  if (!a1)
  {
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    a1 = _os_trace_uuidtext_path;
  }

  v7 = snprintf(__str, 0x400uLL, "%s/", a1);

  return _os_trace_uuiddb_get_pathsuffix(a2, a3, &__str[v7], 1024 - v7);
}

uint64_t ___os_trace_uuiddb_path_sandbox_can_read_data_block_invoke()
{
  getpid();
  v0 = *MEMORY[0x277D861D8];
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  result = sandbox_check();
  _os_trace_uuiddb_path_sandbox_can_read_data_can_read = result == 0;
  return result;
}

BOOL _os_trace_uuiddb_path_exists(const char *a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    memset(__b, 170, sizeof(__b));
    v6 = snprintf(__b, 0x400uLL, "%s/", a1);
    _os_trace_uuiddb_get_pathsuffix(a2, a3, &__b[v6], 1024 - v6);
  }

  else
  {
    if (_os_trace_uuiddb_path_sandbox_can_read_data_once != -1)
    {
      dispatch_once(&_os_trace_uuiddb_path_sandbox_can_read_data_once, &__block_literal_global_94);
    }

    if (_os_trace_uuiddb_path_sandbox_can_read_data_can_read != 1)
    {
      result = 0;
      goto LABEL_8;
    }

    memset(__b, 170, sizeof(__b));
    _os_trace_uuiddb_get_path(0, a2, a3, __b);
  }

  result = access(__b, 0) == 0;
LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

FTS *_os_trace_uuiddb_foreach(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v43[0] = a1;
  v43[1] = 0;
  result = fts_open(v43, 84, 0);
  if (result)
  {
    v10 = result;
    (*(a2 + 16))(a2);
    v42[0] = 0xAAAAAAAAAAAAAAAALL;
    v42[1] = 0xAAAAAAAAAAAAAAAALL;
    v11 = fts_read(v10);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      while (1)
      {
        fts_info = v12->fts_info;
        if (v12->fts_info > 6u)
        {
          break;
        }

        if (v12->fts_info > 2u)
        {
          if (fts_info != 3 && fts_info != 4)
          {
            if (fts_info != 6)
            {
              goto LABEL_79;
            }

            v13 &= v12->fts_level != 1;
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (fts_info != 1)
        {
          if (fts_info != 2)
          {
            goto LABEL_79;
          }

          v12->fts_errno = 62;
          goto LABEL_19;
        }

        if (v12->fts_level == 1)
        {
          if (!strcmp(v12->fts_name, "dsc"))
          {
            v13 = 1;
          }

          else
          {
            if (v12->fts_namelen != 2)
            {
              goto LABEL_74;
            }

            v30 = v12->fts_name[0];
            v31 = -1;
            v32 = v30 - 48;
            if ((v30 - 48) <= 0x36)
            {
              v33 = v30 - 48;
              v34 = v30 - 55;
              v35 = v30 - 87;
              if (((1 << v32) & 0x7E000000000000) != 0)
              {
                v31 = v35;
              }

              else
              {
                v31 = -1;
              }

              if (((1 << v32) & 0x7E0000) != 0)
              {
                v31 = v34;
              }

              if (((1 << v32) & 0x3FF) != 0)
              {
                v31 = v33;
              }
            }

            v36 = v12->fts_name[1];
            v37 = -1;
            v38 = v36 - 48;
            if ((v36 - 48) <= 0x36)
            {
              if (((1 << v38) & 0x3FF) != 0)
              {
                v37 = v36 - 48;
              }

              else if (((1 << v38) & 0x7E0000) != 0)
              {
                v37 = v36 - 55;
              }

              else if (((1 << v38) & 0x7E000000000000) != 0)
              {
                v37 = v36 - 87;
              }
            }

            v39 = v37 | (16 * v31);
            if (v39 < 0)
            {
LABEL_74:
              (*(a3 + 16))(a3, v12);
              fts_set(v10, v12, 4);
              goto LABEL_20;
            }

            LOBYTE(v42[0]) = v39;
          }
        }

        else if (v12->fts_level)
        {
          goto LABEL_74;
        }

LABEL_20:
        v12 = fts_read(v10);
        if (!v12)
        {
          goto LABEL_75;
        }
      }

      if (v12->fts_info > 0xBu)
      {
        if ((fts_info - 12) >= 2)
        {
LABEL_79:
          qword_27DA52778 = "BUG IN LIBTRACE: unexpected fts entry";
          qword_27DA527A8 = fts_info;
          __break(1u);
        }

        goto LABEL_19;
      }

      if (fts_info != 7)
      {
        if (fts_info != 8)
        {
          if (fts_info != 10)
          {
            goto LABEL_79;
          }

          goto LABEL_19;
        }

        fts_level = v12->fts_level;
        if (fts_level != 2)
        {
LABEL_66:
          if (fts_level == 1 && !strcmp(v12->fts_name, ".migrated"))
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (v13)
        {
          v16 = 32;
        }

        else
        {
          v16 = 30;
        }

        if (v16 == v12->fts_namelen)
        {
          v17 = 0;
          v18 = (v13 & 1) == 0;
          while (1)
          {
            v19 = v12->fts_name[v17];
            v20 = v19;
            v21 = v19 - 48;
            v22 = v20 - 48;
            v23 = v20 - 55;
            v24 = v20 - 87;
            if (((1 << v21) & 0x7E000000000000) == 0)
            {
              v24 = -1;
            }

            if (((1 << v21) & 0x7E0000) != 0)
            {
              v24 = v23;
            }

            if (((1 << v21) & 0x3FF) != 0)
            {
              v24 = v22;
            }

            if (v21 <= 0x36)
            {
              v25 = v24;
            }

            else
            {
              v25 = -1;
            }

            v26 = v12->fts_name[v17 + 1];
            v27 = -1;
            v28 = v26 - 48;
            if ((v26 - 48) <= 0x36)
            {
              if (((1 << v28) & 0x3FF) != 0)
              {
                v27 = v26 - 48;
              }

              else if (((1 << v28) & 0x7E0000) != 0)
              {
                v27 = v26 - 55;
              }

              else if (((1 << v28) & 0x7E000000000000) != 0)
              {
                v27 = v26 - 87;
              }
            }

            v29 = v27 | (16 * v25);
            if (v29 < 0)
            {
              break;
            }

            *(v42 + v18++) = v29;
            v17 += 2;
            if (v17 >= v16)
            {
              (*(a4 + 16))(a4, v12, v42, v13 & 1);
              goto LABEL_20;
            }
          }

          fts_level = v12->fts_level;
          goto LABEL_66;
        }
      }

LABEL_19:
      (*(a3 + 16))(a3, v12);
      goto LABEL_20;
    }

LABEL_75:
    if (fts_close(v10) == -1)
    {
      v41 = *__error();
      _os_assumes_log();
    }

    result = (*(a5 + 16))(a5);
  }

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

void _os_trace_uuiddb_dsc_map_destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2[2] == 1)
  {
    free(*(a1 + 16));
    free(*(a1 + 24));
    v2 = *(a1 + 8);
  }

  if (munmap(v2, *(a1 + 48)) == -1)
  {
    v3 = *__error();
    _os_assumes_log();
  }

  free(a1);
}

uint64_t _os_trace_uuiddb_dsc_foreach_range_with_uuid(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (*(v3 + 8))
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6[2];
      v10 = v6[3] + 32 * *(v9 + v7 + 16);
      v12 = *(v10 + 12);
      v11 = v10 + 12;
      if (v12 == *a2 && *(v11 + 8) == a2[1])
      {
        result = (*(a3 + 16))(a3, v3 + *(v9 + v7 + 8), *(v9 + v7 + 12));
        if (!result)
        {
          return result;
        }

        v3 = v6[1];
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < *(v3 + 8));
  }

  return result;
}

uint64_t _os_trace_uuiddb_dsc_foreach_uuid(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*(v2 + 12))
  {
    v4 = result;
    v5 = 0;
    v6 = 28;
    do
    {
      result = (*(a2 + 16))(a2, *(v4 + 24) + v6 - 16, v2 + *(*(v4 + 24) + v6));
      if ((result & 1) == 0)
      {
        break;
      }

      ++v5;
      v2 = *(v4 + 8);
      v6 += 32;
    }

    while (v5 < *(v2 + 12));
  }

  return result;
}

uint64_t _os_trace_kic_mode()
{
  if (_os_trace_kic_mode_o != -1)
  {
    dispatch_once(&_os_trace_kic_mode_o, &__block_literal_global_12);
  }

  return _os_trace_kic_mode_kic;
}

char *___os_trace_kic_mode_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  v2 = 1024;
  _os_trace_kic_mode_kic = sysctlbyname("kern.filesetuuid", __b, &v2, 0, 0) != 0;
  result = sysctlbyname("kern.bootargs", __b, &v2, 0, 0);
  if (!result)
  {
    if (strstr(__b, "libtrace_kic=0"))
    {
      _os_trace_kic_mode_kic = 0;
    }

    result = strstr(__b, "libtrace_kic=1");
    if (result)
    {
      _os_trace_kic_mode_kic = 1;
    }
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void _os_trace_uuiddb_make_kernel_cache_uuid(unsigned __int8 *a1, const unsigned __int8 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *&v8[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *in = v4;
  *v8 = v4;
  v6 = 37;
  if (sysctlbyname("kern.kernelcacheuuid", in, &v6, 0, 0))
  {
    uuid_copy(a1, a2);
    a1[15] = ~a1[15];
  }

  else
  {
    uuid_parse(in, a1);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t _internal_log_assumes(uint64_t a1)
{
  v4[5] = *MEMORY[0x277D85DE8];
  if (_internal_log_once != -1)
  {
    dispatch_once_f(&_internal_log_once, 0, _internal_log_queue_init);
  }

  if (!dispatch_get_specific(_internal_log_q_key))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 0x40000000;
    v4[2] = ___internal_log_block_invoke;
    v4[3] = &__block_descriptor_tmp_108;
    v4[4] = a1;
    dispatch_sync(_internal_log_q, v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t ___internal_log_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(_internal_log_q);
  memset(__b, 170, sizeof(__b));
  memset(v10, 170, 18);
  v8.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v8.tm_mon = v2;
  *&v8.tm_isdst = v2;
  *&v8.tm_sec = v2;
  v7 = time(0);
  localtime_r(&v7, &v8);
  strftime(v9, 0x1AuLL, "%F %T%z", &v8);
  v3 = getprogname();
  v4 = getpid();
  result = snprintf(__b, 0x400uLL, "%s %s[%d]: %s\n", v9, v3, v4, v1);
  if (result >= 1)
  {
    if (result >= 0x400)
    {
      __b[1022] = 10;
    }

    dispatch_assert_queue_V2(_internal_log_q);
    dispatch_assert_queue_V2(_internal_log_q);
    if ((_internal_log_fd & 0x80000000) == 0 || (result = _internal_log_open(), (_internal_log_fd & 0x80000000) == 0) && (_internal_log_rotate_if_needed(), result = _internal_log_fd, (_internal_log_fd & 0x80000000) == 0))
    {
      _os_trace_write();
      result = _internal_log_rotate_if_needed();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _internal_log_rotate_if_needed()
{
  dispatch_assert_queue_V2(_internal_log_q);
  v0 = lseek(_internal_log_fd, 0, 2);
  result = fsync(_internal_log_fd);
  if (v0 >= 0x100000)
  {
    if (close(_internal_log_fd) == -1)
    {
      v3 = *__error();
      result = *__error();
      if (v3 == 9)
      {
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = result;
        __break(1u);
        return result;
      }

      _os_assumes_log();
    }

    rename(_internal_log_file_0, _internal_log_file_1, v2);

    return _internal_log_open();
  }

  return result;
}

uint64_t _internal_log_open()
{
  result = open(_internal_log_file_0, 778, 420);
  _internal_log_fd = result;
  if ((result & 0x80000000) == 0)
  {

    return fchown(result, 0x110u, 0x110u);
  }

  return result;
}

int *_internal_log_queue_init()
{
  asprintf(&_internal_queue_target, "com.apple.%s.log", "logd");
  if (!_internal_queue_target)
  {
    v1 = *__error();
    qword_27DA52778 = "BUG IN LIBTRACE: failed to create queue target from subsystem";
    qword_27DA527A8 = v1;
    __break(1u);
LABEL_10:
    result = __error();
    v2 = *result;
    qword_27DA52778 = "BUG IN LIBTRACE: failed to create log file path";
    qword_27DA527A8 = v2;
    __break(1u);
    return result;
  }

  _internal_log_q = dispatch_queue_create_with_target_V2(_internal_queue_target, 0, 0);
  dispatch_queue_set_specific(_internal_log_q, _internal_log_q_key, _internal_log_q, 0);
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  asprintf(&_internal_log_file_0, "%s/%s.0.log", _os_trace_persist_path, "logd");
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  result = asprintf(&_internal_log_file_1, "%s/%s.1.log", _os_trace_persist_path, "logd");
  if (!_internal_log_file_0 || !_internal_log_file_1)
  {
    goto LABEL_10;
  }

  return result;
}

void os_trace_blob_add_base64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a2 length:a3];
  v8 = [v7 base64EncodedStringWithOptions:0];
  v9 = [v8 UTF8String];
  os_trace_blob_addf(a1, "'%s%s'", v10, v11, v12, v13, v14, v15, v9);

  objc_autoreleasePoolPop(v6);
}

_BYTE *os_log_fmt_convert_trace(_BYTE *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v5 = &a2[a3 - 1];
  v4 = *v5;
  *a1 = 0;
  a1[1] = v4;
  if (v4)
  {
    v6 = -v4;
    v7 = &v5[-v4];
    v8 = a1 + 2;
    while (1)
    {
      v9 = v5[v6] & 0x3F;
      v10 = &a2[v9];
      if (&a2[v9] > v7)
      {
        break;
      }

      *v8 = 0;
      v8[1] = v9;
      v11 = v8 + 2;
      memcpy(v8 + 2, a2, v9);
      v8 = &v11[v9];
      a2 = v10;
      if (__CFADD__(v6++, 1))
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void _os_log_fmt_compose_masked_partial_redacted(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v10 = a1;
  if (!a3 && (a4 & 1) == 0)
  {
    if ((*(a1 + 20) & 2) != 0)
    {
      return;
    }

    v11 = *(a1 + 8);
    if (*(a1 + 12) - v11 - (*(a1 + 22) ^ 1u) > 7)
    {
      *(*a1 + v11) = 0x3E296C6C756E283CLL;
      v12 = *(a1 + 8) + 8;
      goto LABEL_72;
    }

    v44 = "<(null)>";
    v45 = 8;
    goto LABEL_79;
  }

  if (a3 <= 3)
  {
    if ((*(a1 + 20) & 2) != 0)
    {
      return;
    }

    v13 = *(a1 + 8);
    if (*(a1 + 12) - v13 - (*(a1 + 22) ^ 1u) > 4)
    {
      v14 = *a1 + v13;
      *(v14 + 4) = 62;
      *v14 = -1501502916;
      v12 = *(a1 + 8) + 5;
      goto LABEL_72;
    }

    v44 = "<…>";
    v45 = 5;
    goto LABEL_79;
  }

  v15 = a3;
  v16 = *a2;
  v17 = a2[1];
  LOBYTE(v18) = a2[2];
  v19 = a2[3];
  if (v18)
  {
    v20 = v19 == 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = !v20;
  if (!a4 && !*a2 && v21)
  {
    v22 = a3 - 4;
    v23 = (a2 + 4);

    os_trace_blob_addns(a1, v23, v22);
    return;
  }

  v24 = v19 == 1;
  if ((*(a1 + 20) & 2) == 0)
  {
    v25 = *(a1 + 8);
    if (*(a1 + 12) == v25 + (*(a1 + 22) ^ 1))
    {
      os_trace_blob_add_slow(a1, "<", 1uLL);
    }

    else
    {
      *(*a1 + v25) = 60;
      v26 = *(a1 + 8) + 1;
      *(a1 + 8) = v26;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v26) = 0;
      }
    }
  }

  v27 = v16 + 4;
  if (v15 > v16 + 4)
  {
    if (v15 - (v16 + 4) >= v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = v15 - (v16 + 4);
    }

    if (v19 == 2)
    {
      a3 = v18;
    }

    else
    {
      a3 = v15 - (v16 + 4);
    }

    if (a3)
    {
      if (v19 == 1 && (*(v10 + 20) & 2) == 0)
      {
        v28 = *(v10 + 8);
        if (*(v10 + 12) - v28 - (*(v10 + 22) ^ 1u) <= 2)
        {
          v46 = a3;
          os_trace_blob_add_slow(v10, "…", 3uLL);
          a3 = v46;
        }

        else
        {
          v29 = *v10 + v28;
          *(v29 + 2) = -90;
          *v29 = -32542;
          v30 = *(v10 + 8) + 3;
          *(v10 + 8) = v30;
          if ((*(v10 + 22) & 1) == 0)
          {
            *(*v10 + v30) = 0;
          }
        }
      }

      if (os_trace_blob_addns(v10, &a2[v27], a3))
      {
        if (((v19 | 2) == 2 || v8) && (*(v10 + 20) & 2) == 0)
        {
          v31 = *(v10 + 8);
          if (*(v10 + 12) - v31 - (*(v10 + 22) ^ 1u) <= 2)
          {
            os_trace_blob_add_slow(v10, "…", 3uLL);
          }

          else
          {
            v32 = *v10 + v31;
            *(v32 + 2) = -90;
            *v32 = -32542;
            v33 = *(v10 + 8) + 3;
            *(v10 + 8) = v33;
            if ((*(v10 + 22) & 1) == 0)
            {
              *(*v10 + v33) = 0;
            }
          }
        }

        v24 = 1;
      }
    }

    else
    {
      v24 = 0;
    }

    if (v19 == 2 && (a3 = v15 - (v18 + v27), v15 != v18 + v27) && os_trace_blob_addns(v10, &a2[v18 + v27], a3))
    {
      if ((*(v10 + 20) & 2) == 0)
      {
        v34 = *(v10 + 8);
        if (*(v10 + 12) - v34 - (*(v10 + 22) ^ 1u) <= 2)
        {
          os_trace_blob_add_slow(v10, "…", 3uLL);
        }

        else
        {
          v35 = *v10 + v34;
          *(v35 + 2) = -90;
          *v35 = -32542;
          v36 = *(v10 + 8) + 3;
          *(v10 + 8) = v36;
          if ((*(v10 + 22) & 1) == 0)
          {
            *(*v10 + v36) = 0;
          }
        }
      }
    }

    else if (!v24)
    {
      goto LABEL_60;
    }

    if ((*(v10 + 20) & 2) == 0)
    {
      v37 = *(v10 + 8);
      if (*(v10 + 12) - v37 - (*(v10 + 22) ^ 1u) <= 1)
      {
        os_trace_blob_add_slow(v10, ", ", 2uLL);
      }

      else
      {
        *(*v10 + v37) = 8236;
        v38 = *(v10 + 8) + 2;
        *(v10 + 8) = v38;
        if ((*(v10 + 22) & 1) == 0)
        {
          *(*v10 + v38) = 0;
        }
      }
    }
  }

LABEL_60:
  os_trace_blob_addf(v10, "length=%u", a3, a4, a5, a6, a7, a8, v17);
  v39 = v15 - 4;
  if (v39 >= v16)
  {
    v40 = v16;
  }

  else
  {
    v40 = v39;
  }

  if (v40)
  {
    if ((*(v10 + 20) & 2) == 0)
    {
      v41 = *(v10 + 8);
      if (*(v10 + 12) - v41 - (*(v10 + 22) ^ 1u) <= 1)
      {
        os_trace_blob_add_slow(v10, ", ", 2uLL);
      }

      else
      {
        *(*v10 + v41) = 8236;
        v42 = *(v10 + 8) + 2;
        *(v10 + 8) = v42;
        if ((*(v10 + 22) & 1) == 0)
        {
          *(*v10 + v42) = 0;
        }
      }
    }

    os_trace_blob_add_base64(v10, (a2 + 4), v40);
  }

  if ((*(v10 + 20) & 2) == 0)
  {
    v43 = *(v10 + 8);
    if (*(v10 + 12) != v43 + (*(v10 + 22) ^ 1))
    {
      *(*v10 + v43) = 62;
      v12 = *(v10 + 8) + 1;
LABEL_72:
      *(v10 + 8) = v12;
      if ((*(v10 + 22) & 1) == 0)
      {
        *(*v10 + v12) = 0;
      }

      return;
    }

    v44 = ">";
    a1 = v10;
    v45 = 1;
LABEL_79:

    os_trace_blob_add_slow(a1, v44, v45);
  }
}

uint64_t _os_log_fmt_builtin_uuid_t(size_t a1, int a2, uint64_t a3, _BYTE *a4, unsigned __int8 *uu, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a3 + 10) == 19 && a6 <= 0x10 && (a6 == 16 || (a7 & 1) != 0))
  {
    if (a6 != 16 && a7)
    {
      _os_log_fmt_decode_error(a1);
    }

    else
    {
      memset(v15, 0, sizeof(v15));
      uuid_unparse_upper(uu, v15);
      v9 = strlen(v15);
      if ((*(a1 + 20) & 2) == 0)
      {
        v10 = v9;
        v11 = *(a1 + 8);
        if (v9 > *(a1 + 12) - v11 - (*(a1 + 22) ^ 1u))
        {
          os_trace_blob_add_slow(a1, v15, v9);
        }

        else
        {
          memcpy((*a1 + v11), v15, v9);
          v12 = *(a1 + 8) + v10;
          *(a1 + 8) = v12;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v12) = 0;
          }
        }
      }
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, a6, a7, a8);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t _os_log_fmt_builtin_timeval(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 10) == 19 && a6 <= 0x10 && (a6 == 16 || (a7 & 1) != 0))
  {
    if (a6 != 16 && a7)
    {
      _os_log_fmt_decode_error(a1);
    }

    else
    {
      os_trace_blob_add_localtime(a1, *a5, *(a5 + 8), 1u);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, a6, a7, a8);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_timespec(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, time_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 10) == 19 && a6 <= 0x10 && (a6 == 16 || (a7 & 1) != 0))
  {
    if (a6 != 16 && a7)
    {
      _os_log_fmt_decode_error(a1);
    }

    else
    {
      os_trace_blob_add_localtime(a1, *a5, a5[1], 0);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, a6, a7, a8);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_time(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, time_t *a5, uint64_t a6)
{
  if (!_os_log_fmt_spec_is_integer(*(a3 + 10), 0))
  {
    goto LABEL_8;
  }

  if (a6 == 4)
  {
    v14 = *a5;
    goto LABEL_6;
  }

  if (a6 != 8)
  {
LABEL_8:
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v11, v12, v13);
    return 1;
  }

  v14 = *a5;
LABEL_6:
  os_trace_blob_add_localtime(a1, v14, 0, 3u);
  return 1;
}

uint64_t _os_log_fmt_builtin_trace_mode(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, int *a5, uint64_t a6)
{
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (a6 != 4 || (is_integer & 1) == 0)
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v15, v16, v17);
    return 1;
  }

  v18 = *a5;
  os_trace_blob_addf(a1, "0x%X", v12, v13, v14, v15, v16, v17, *a5);
  v19 = 1;
  v20 = &off_2787ADB90;
  v21 = 7;
  do
  {
    if ((*(v20 - 1) & v18) == 0)
    {
      goto LABEL_20;
    }

    if (v19)
    {
      v22 = "(";
    }

    else
    {
      v22 = ", ";
    }

    if (v19)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    if ((*(a1 + 20) & 2) == 0)
    {
      v24 = *(a1 + 8);
      if (v23 > *(a1 + 12) - v24 - (*(a1 + 22) ^ 1u))
      {
        os_trace_blob_add_slow(a1, v22, v23);
      }

      else
      {
        memcpy((*a1 + v24), v22, v23);
        v25 = *(a1 + 8) + v23;
        *(a1 + 8) = v25;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + v25) = 0;
        }
      }
    }

    v26 = *v20;
    v27 = strlen(*v20);
    if ((*(a1 + 20) & 2) != 0)
    {
      goto LABEL_18;
    }

    v28 = v27;
    v29 = *(a1 + 8);
    if (v27 > *(a1 + 12) - v29 - (*(a1 + 22) ^ 1u))
    {
      os_trace_blob_add_slow(a1, v26, v27);
LABEL_18:
      v19 = 0;
      goto LABEL_20;
    }

    memcpy((*a1 + v29), v26, v27);
    v30 = *(a1 + 8) + v28;
    *(a1 + 8) = v30;
    if (*(a1 + 22))
    {
      goto LABEL_18;
    }

    v19 = 0;
    *(*a1 + v30) = 0;
LABEL_20:
    v20 += 2;
    --v21;
  }

  while (v21);
  if ((v19 & 1) == 0 && (*(a1 + 20) & 2) == 0)
  {
    v31 = *(a1 + 8);
    if (*(a1 + 12) - v31 - (*(a1 + 22) ^ 1u) <= 1)
    {
      os_trace_blob_add_slow(a1, ")", 2uLL);
    }

    else
    {
      *(*a1 + v31) = 10528;
      v32 = *(a1 + 8) + 2;
      *(a1 + 8) = v32;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v32) = 0;
      }
    }
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_mach_errno(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, kern_return_t *a5, uint64_t a6)
{
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (a6 == 4 && (is_integer & 1) != 0)
  {
    v15 = *a5;
    if ((*a5 - 1100) > 6)
    {
      mach_error_string(v15 & 0xFFFFC1FF);
    }

    else
    {
      bootstrap_strerror(*a5);
    }

    os_trace_blob_addf(a1, "[%#x: %s]", v16, v17, v18, v19, v20, v21, v15);
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v12, v13, v14);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_scaled(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4, char *a5, uint64_t a6, void *a7)
{
  if (_os_log_fmt_spec_is_integer(*(a3 + 10), 0))
  {
    scalar = os_log_fmt_read_scalar(a3, a5, a6);
    v24 = 0.0;
    if (*a7)
    {
      v25 = 1;
      if (a7[1] && scalar >= 0x3E8)
      {
        v26 = 0;
        do
        {
          v27 = scalar;
          v28 = a7[v26 + 2];
          ++v26;
          scalar /= a2;
        }

        while (v28 && scalar > 0x3E7);
        v24 = (v27 - scalar * a2) * 100.0;
        v25 = v26 == 0;
      }
    }

    else
    {
      v25 = 1;
    }

    v29 = vcvtad_u64_f64(v24 / a2);
    if (v29 == 100)
    {
      v30 = scalar + 1;
    }

    else
    {
      v30 = scalar;
    }

    if (v29 == 100)
    {
      v29 = 0;
    }

    if (v25)
    {
      return os_trace_blob_addf(a1, "%llu %s", v18, v19, v20, v21, v22, v23, v30);
    }

    if (v30 > 9 || -10 * (v29 / 0xA) == -v29)
    {
      if (!v29 || v30 > 0x63)
      {
        return os_trace_blob_addf(a1, "%llu %s", v18, v19, v20, v21, v22, v23, v30);
      }

      return os_trace_blob_addf(a1, "%llu.%01u %s", v18, v19, v20, v21, v22, v23, v30);
    }

    else
    {
      return os_trace_blob_addf(a1, "%llu.%02u %s", v18, v19, v20, v21, v22, v23, v30);
    }
  }

  else
  {
    v33 = *a3;
    v34 = *(a3 + 12);

    return _os_log_fmt_decode_cmd_mismatch(a1, v33, v34, a4, a6, v14, v15, v16);
  }
}

uint64_t _os_log_fmt_builtin_darwin_signal(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _DWORD *a5, uint64_t a6)
{
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (a6 == 4 && (is_integer & 1) != 0)
  {
    v18 = *a5;
    if (v18 < 0x20)
    {
      v20 = *(MEMORY[0x277D85EB8] + 8 * v18);
      os_trace_blob_addf(a1, "[sig%s: %s]", v12, v13, v14, v15, v16, v17, *(MEMORY[0x277D85EC0] + 8 * v18));
    }

    else
    {
      os_trace_blob_addf(a1, "[%d: Unknown signal]", v12, v13, v14, v15, v16, v17, *a5);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v15, v16, v17);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_mode(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int *a5, uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (a6 == 4 && (is_integer & 1) != 0)
  {
    v15 = *a5;
    __src[0] = aPcDBLSW[*a5 >> 12];
    if ((v15 & 0x40) != 0)
    {
      v16 = 120;
    }

    else
    {
      v16 = 45;
    }

    if ((v15 & 0x40) != 0)
    {
      v17 = 115;
    }

    else
    {
      v17 = 83;
    }

    if ((v15 & 8) != 0)
    {
      v18 = 120;
    }

    else
    {
      v18 = 45;
    }

    if ((v15 & 8) != 0)
    {
      v19 = 115;
    }

    else
    {
      v19 = 83;
    }

    v20 = vdupq_n_s32(v15);
    v21.i16[0] = 11565;
    v21.i8[3] = 45;
    v21.i8[4] = 45;
    v21.i16[3] = 11565;
    v21.i8[2] = v16;
    v21.i8[5] = v18;
    v22.i16[0] = 30578;
    v22.i8[2] = v17;
    v22.i8[3] = 114;
    v22.i8[4] = 119;
    v22.i8[5] = v19;
    v22.i16[3] = 30578;
    *&__src[1] = vbsl_s8(vmovn_s16(vuzp1q_s16(vceqzq_s32(vandq_s8(v20, xmmword_22E081690)), vceqzq_s32(vandq_s8(v20, xmmword_22E0816A0)))), v21, v22);
    if (v15)
    {
      v23 = 120;
    }

    else
    {
      v23 = 45;
    }

    if (v15)
    {
      v24 = 116;
    }

    else
    {
      v24 = 84;
    }

    if ((v15 & 0x200) != 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    __src[9] = v25;
    if ((*(a1 + 20) & 2) == 0)
    {
      v26 = *(a1 + 8);
      if (*(a1 + 12) - v26 - (*(a1 + 22) ^ 1u) <= 9)
      {
        os_trace_blob_add_slow(a1, __src, 0xAuLL);
      }

      else
      {
        v27 = *a1 + v26;
        *v27 = *__src;
        *(v27 + 8) = *&__src[8];
        v28 = *(a1 + 8) + 10;
        *(a1 + 8) = v28;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + v28) = 0;
        }
      }
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v12, v13, v14);
  }

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_errno(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, int *a5, uint64_t a6)
{
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (a6 == 4 && (is_integer & 1) != 0)
  {
    v18 = *a5;
    if (*a5)
    {
      strerror(*a5);
      os_trace_blob_addf(a1, "[%d: %s]", v19, v20, v21, v22, v23, v24, v18);
    }

    else
    {
      os_trace_blob_addf(a1, "[%d: %s]", v12, v13, v14, v15, v16, v17, 0);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v15, v16, v17);
  }

  return 1;
}

uint64_t _parse_metric_context_data(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 296) != 1)
  {
    return 0;
  }

  if (!*(a1 + 208))
  {
    *(a1 + 208) = os_log_fmt_extract_pubdata(*(a1 + 192), *(a1 + 200), (a1 + 216), (a1 + 224));
  }

  v6 = *(a1 + 216);
  if (!v6 || (*v6 & 2) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 224);
  *a2 = v6 + 1;
  *a3 = v8 - 2;
  return 1;
}

uint64_t _metric_serialize_basic(void *a1, uint64_t a2, double *a3)
{
  if (!*(a3 + 1))
  {
    goto LABEL_6;
  }

  v5 = *(a2 + 1);
  if (!*(a2 + 1))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:*a3];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 1)];
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a3 + 2)];
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a3 + 3)];
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a3 + 4)];
    v11 = *(a3 + 4);
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*a3];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 1)];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3[2]];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3[3]];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3[4]];
    v11 = a3[4];
    goto LABEL_9;
  }

  if (v5 != 2)
  {
LABEL_6:
    v6 = &unk_2841B8EB0;
    v7 = &unk_2841B8EB0;
    v8 = &unk_2841B8EB0;
    v9 = &unk_2841B8EB0;
    v10 = &unk_2841B8EB0;
    v12 = &unk_2841B8EB0;
    goto LABEL_10;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a3];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 1)];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 2)];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 3)];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 4)];
  v11 = *(a3 + 4);
LABEL_9:
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11 / *(a3 + 1)];
LABEL_10:
  [a1 setObject:v6 forKeyedSubscript:@"value"];
  [a1 setObject:v7 forKeyedSubscript:@"events"];
  [a1 setObject:v8 forKeyedSubscript:@"min"];
  [a1 setObject:v9 forKeyedSubscript:@"max"];
  [a1 setObject:v10 forKeyedSubscript:@"total"];

  return [a1 setObject:v12 forKeyedSubscript:@"average"];
}

double _metric_get_percentile(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v4 = *(a1 + 5);
  if (!*(a1 + 5))
  {
    return 0.0;
  }

  v5 = 0;
  v6 = a2 * a4;
  while (1)
  {
    while (1)
    {
      v7 = *(a3 + 8 * v5);
      if (v7)
      {
        break;
      }

      if (v4 == ++v5)
      {
        return 0.0;
      }
    }

    v8 = v7;
    if (v6 <= v7)
    {
      break;
    }

    v6 = v6 - v8;
    if (++v5 == v4)
    {
      v5 = *(a1 + 5);
      break;
    }
  }

  v9 = *(a1 + 8);
  v10 = v5 * v9;
  v11 = v5 * v9 + v9;
  v12 = 2 * (1 << (v5 - 1));
  v13 = v5 == 0;
  if (v5)
  {
    v14 = 1 << (v5 - 1);
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v12 = 1;
  }

  if (v9)
  {
    v14 = v10;
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  return v14 + (v15 - v14) * (v6 / v8);
}

uint64_t _resolve_uuid_slow_single(uint64_t result, unint64_t a2, const char **a3)
{
  v6 = *(result + 112);
  if (v6)
  {
    v7 = *(result + 328);
    if (v7)
    {
      if ((*(*(v7 + 96) + 2) & 6 | 8) == 0xC)
      {
        return uuidpath_sharedcache_resolve_fd(*(result + 352), v6, a2, 0, 0, a3, 0, 0, 0, 0, 0);
      }

      else
      {
        v8 = *(result + 352);

        return uuidpath_resolve_fd(v8, v6, a2, 0, a3, 0, 0, 0);
      }
    }
  }

  return result;
}

char *_find_old_signpost_name_end(char *a1, const char *a2)
{
  result = strchr(a1, 32);
  if (!result)
  {
    v5 = strlen(a1);
    if (!strncmp(a1, a2, v5) && !a1[v5] && a2[v5] == 32)
    {
      if (a2[v5 + 1])
      {
        return 0;
      }

      else
      {
        return &a1[v5 - 1];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _parse_activity_swap(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 514;
  v4 = *(a2 + 2);
  if ((v4 & 1) == 0)
  {
    LODWORD(v5) = 0;
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = (v5 + 8);
    if (*(a2 + 22) < v5)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (!(*(a2 + 16) >> 51))
  {
    return 0;
  }

  v6 = *(a2 + 24);
  *(a1 + 56) = v6;
  *(a1 + 64) = _os_activity_map_find_parent(*(a1 + 320), v6);
  v4 = *(a2 + 2);
  LODWORD(v5) = 8;
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ((v4 & 0x200) == 0)
  {
    return 1;
  }

  if (v5 + 8 <= *(a2 + 22))
  {
    *(a1 + 192) = *(a2 + v5 + 24);
    return 1;
  }

  return 0;
}

BOOL _parse_activity_useraction(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  *(a1 + 8) = 515;
  v4 = *(a2 + 2);
  if ((v4 & 1) == 0)
  {
    v5 = 8;
    if ((v4 & 0x10) == 0)
    {
      return _parse_location(a1, a2, &v8);
    }

    goto LABEL_6;
  }

  if (!(*(a2 + 16) >> 51))
  {
    return 0;
  }

  v8 = 8;
  v6 = *(a2 + 24);
  *(a1 + 56) = v6;
  *(a1 + 64) = _os_activity_map_find_parent(*(a1 + 320), v6);
  v5 = 16;
  if ((*(a2 + 2) & 0x10) != 0)
  {
LABEL_6:
    if (v5 <= *(a2 + 22))
    {
      v8 = v5;
      return _parse_location(a1, a2, &v8);
    }

    return 0;
  }

  return _parse_location(a1, a2, &v8);
}

BOOL _parse_trace(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  *(a1 + 8) = 768;
  v4 = *(a2 + 2);
  if (v4)
  {
    if (!(*(a2 + 16) >> 51))
    {
      return 0;
    }

    v9 = 8;
    v6 = *(a2 + 24);
    *(a1 + 56) = v6;
    *(a1 + 64) = _os_activity_map_find_parent(*(a1 + 320), v6);
    v5 = 16;
    if ((*(a2 + 2) & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (v5 <= *(a2 + 22))
    {
      v9 = v5;
      goto LABEL_8;
    }

    return 0;
  }

  v5 = 8;
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  result = _parse_location(a1, a2, &v9);
  if (result)
  {
    v8 = v9;
    *(a1 + 192) = a2 + v9 + 24;
    *(a1 + 200) = *(a2 + 22) - v8;
    return 1;
  }

  return result;
}

BOOL _parse_loss(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 1792;
  v2 = *(a2 + 16) >> 51;
  if (v2 >= 3)
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    *(a1 + 216) = 0;
    v7 = (a1 + 216);
    *(a1 + 192) = v4;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 224) = v5;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = v6;
    v8 = *(a1 + 328);
    v9 = *(v8 + 40);
    v10 = *(a1 + 344);
    if (v10)
    {
      v11 = _timesync_continuous_to_wall_time(v10, (v9 + 144), v4, v7);
      v12 = v11 / 0x3B9ACA00;
      v13 = v11 % 0x3B9ACA00 / 0x3E8;
      v14 = *(a1 + 328);
      v15 = *(a1 + 344);
      *(a1 + 200) = v12;
      *(a1 + 208) = v13;
      v16 = (a1 + 248);
      v17 = *(v14 + 40);
      if (v15)
      {
        v18 = _timesync_continuous_to_wall_time(v15, (v17 + 144), v5, v16);
        v19 = v18 / 0x3B9ACA00;
        v20 = v18 % 0x3B9ACA00 / 0x3E8;
LABEL_19:
        *(a1 + 232) = v19;
        *(a1 + 240) = v20;
        return v2 > 2;
      }

      v23 = *(a1 + 356);
    }

    else
    {
      v21 = *(v9 + 32);
      v22 = *(v9 + 40);
      v23 = *(a1 + 356);
      *(a1 + 216) = v23;
      v24 = *(v9 + 64);
      if (v24 != v4)
      {
        v26 = *(v9 + 16);
        v25 = *(v9 + 20);
        if (v24 >= v4)
        {
          v28 = (v24 - v4) * v26 / v25;
          v21 -= v28 / 0x3B9ACA00;
          v22 -= v28 % 0x3B9ACA00 / 0x3E8;
          if (v22 < 0)
          {
            --v21;
            v22 += 1000000;
          }
        }

        else
        {
          v27 = (v4 - v24) * v26 / v25;
          v21 += v27 / 0x3B9ACA00;
          v22 += v27 % 0x3B9ACA00 / 0x3E8;
          if (v22 > 999999)
          {
            ++v21;
            v22 -= 1000000;
          }
        }
      }

      *(a1 + 200) = v21;
      *(a1 + 208) = v22;
      v16 = (a1 + 248);
      v17 = *(v8 + 40);
    }

    v19 = *(v17 + 32);
    v20 = *(v17 + 40);
    *v16 = v23;
    v29 = *(v17 + 64);
    if (v29 != v5)
    {
      v31 = *(v17 + 16);
      v30 = *(v17 + 20);
      if (v29 >= v5)
      {
        v33 = (v29 - v5) * v31 / v30;
        v19 -= v33 / 0x3B9ACA00;
        v20 -= v33 % 0x3B9ACA00 / 0x3E8;
        if (v20 < 0)
        {
          --v19;
          v20 += 1000000;
        }
      }

      else
      {
        v32 = (v5 - v29) * v31 / v30;
        v19 += v32 / 0x3B9ACA00;
        v20 += v32 % 0x3B9ACA00 / 0x3E8;
        if (v20 > 999999)
        {
          ++v19;
          v20 -= 1000000;
        }
      }
    }

    goto LABEL_19;
  }

  return v2 > 2;
}

void logdev_notification_callback(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [OSLogDevice alloc];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v13 = [(OSLogDevice *)v8 initWithMobileDevice:a3 andUDID:v9];

  if (a1 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a1 == 1;
  }

  v11 = [v7 deviceDelegate];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  [v11 activityStream:v7 deviceUDID:v12 deviceID:v13 status:v10 error:0];
}

void __watchForSims_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"device"];
  _simDeviceUpdate(v3, *(a1 + 32));
}

void _simDeviceUpdate(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 deviceDelegate];
  os_unfair_lock_lock(&_knownSimulatorsLock);
  v6 = _knownSimulators;
  v7 = [v3 UDID];
  v8 = [v7 UUIDString];
  v9 = [v6 objectForKey:v8];

  if ([v3 state] == 3)
  {
    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = [v3 UDID];
        v11 = [v10 UUIDString];
        v21 = 138412546;
        v22 = v11;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "duplicate sim seen: %@, already have %@", &v21, 0x16u);
      }

      goto LABEL_12;
    }

    v9 = [[OSLogDevice alloc] initWithSimualatedDevice:v3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v9;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "sim added: %@", &v21, 0xCu);
    }

    v16 = _knownSimulators;
    v17 = [v3 UDID];
    v18 = [v17 UUIDString];
    [v16 setObject:v9 forKey:v18];

    v15 = 0;
LABEL_16:
    os_unfair_lock_unlock(&_knownSimulatorsLock);
    v19 = [(OSLogDevice *)v9 uid];
    [v5 activityStream:v4 deviceUDID:v19 deviceID:v9 status:v15 error:0];

    goto LABEL_17;
  }

  if ([v3 state] != 4)
  {
    if (v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = 134218242;
      v22 = [v3 state];
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "sim state %lu: %@", &v21, 0x16u);
    }

    goto LABEL_12;
  }

  if (v9)
  {
    v12 = _knownSimulators;
    v13 = [v3 UDID];
    v14 = [v13 UUIDString];
    [v12 removeObjectForKey:v14];

    v15 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v9;
      v15 = 1;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "sim removed: %@", &v21, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_12:
  os_unfair_lock_unlock(&_knownSimulatorsLock);
LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __watchForSims_block_invoke()
{
  if (_coreSimulatorFrameworkPath_once != -1)
  {
    dispatch_once(&_coreSimulatorFrameworkPath_once, &__block_literal_global_190);
  }

  v0 = _coreSimulatorFrameworkPath_path;
  if (v0)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleWithPath:v0];
    v2 = v1;
    if (v1)
    {
      watchForSims_SimServiceContextClass = [v1 classNamed:@"SimServiceContext"];
      if (watchForSims_SimServiceContextClass)
      {
        v3 = objc_opt_new();
        v4 = _knownSimulators;
        _knownSimulators = v3;

        _knownSimulatorsLock = 0;
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

void ___coreSimulatorFrameworkPath_block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [&unk_2841B9240 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(&unk_2841B9240);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if ([v0 fileExistsAtPath:v5])
        {
          objc_storeStrong(&_coreSimulatorFrameworkPath_path, v5);
          goto LABEL_11;
        }
      }

      v2 = [&unk_2841B9240 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22E0339A8(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x22E033924);
}

void logdev_message_callback(uint64_t a1, void *a2)
{
  v7 = a2;
  if (a1)
  {
    v3 = [OSActivityEvent activityEventFromStreamEntry:a1];
    if (v3)
    {
      v4 = [v7 predicate];

      if (!v4 || ([v7 predicate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "evaluateWithObject:", v3), v5, (v6 & 1) != 0))
      {
        [v7 streamEvent:v3 error:0];
      }
    }
  }

  else
  {
    [v7 streamEvent:0 error:0];
  }
}

void sub_22E034480(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x22E034440);
}

uint64_t ___catalog_lite_read_limits_block_invoke_2(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(result + 32);
  if (*a2 < *v3)
  {
    *v3 = *a2;
  }

  v4 = *(a2 + 8);
  v5 = *(result + 40);
  if (v4 < *v5)
  {
    *v5 = v4;
  }

  v6 = a2 + *(a2 + 24) + 26;
  if ((v6 & 7) != 0)
  {
    v6 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  *a3 = v6;
  return result;
}

void sub_22E0376F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E037DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void enumerateOldChunkTracepointLimits(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (*a1 == 24589)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __enumerateOldChunkTracepointLimits_block_invoke;
    v18[3] = &__block_descriptor_48_e767_B16__0__tracev3_chunk_s__tracev3_chunk_preamble_s_IIQ_____tracev3_chunk_header_s__mach_timebase_info_II_QqiiiI_tracev3_subchunk_preamble_s_II__tracev3_subchunk_continuous_s_Q__tracev3_subchunk_preamble_s_II__tracev3_subchunk_systeminfo_s_ii_16c__32c___tracev3_subchunk_preamble_s_II__tracev3_subchunk_generation_s__16C_ii__tracev3_subchunk_preamble_s_II__tracev3_subchunk_timezone_s__48c____tracev3_chunk_catalog_s_SSSS_0C___tracev3_chunk_catalog_v2_s_SSSSS_3S_Q_0C___tracev3_chunk_log_preamble_s_QIC_3C___tracev3_chunk_firehose_s_QICC_2C__0C___tracev3_chunk_firehose_old_s_QiCC_0C___tracev3_chunk_oversize_s_QIC_3C_QISS_0C___tracev3_chunk_oversize_old_s_QISS_0C___tracev3_chunk_statedump_s_QIC_3C_QQ_16C__0C___tracev3_chunk_simple_s_QICC_2C_QQQ_16C__16C__0C___0C___8l;
    v18[4] = a2;
    v18[5] = a3;
    _tracev3_chunk_decompress_and_enumerate_chunks(a1, 0, v18);
    return;
  }

  if (*a1 == 24588)
  {
    v3 = *(a1 + 8);
    v4 = v3 - 16;
    if (v3 >= 0x10)
    {
      v5 = (a1 + 30);
      if (v3 - 4113 > 0xFFFFFFFFFFFFF00ELL)
      {
        v6 = *v5;
        if (v4 < v6)
        {
          return;
        }
      }

      else
      {
        v6 = *v5;
      }

      v7 = (a1 + 46);
      v8 = v5 + v6;
      if (v6 > 0x1000)
      {
        v8 = a1 + 46;
      }

      while ((v7 + 3) < v8)
      {
        v9 = v7[2];
        v10 = HIWORD(v9);
        if (!HIWORD(v9) || v10 > (v8 - (v7 + 3)))
        {
          break;
        }

        v12 = v10 + 24;
        v13 = (HIWORD(v9) & 0xFFF8) + 32;
        if ((v9 & 0x7000000000000) == 0)
        {
          v13 = v12;
        }

        v14 = (v7 + v13);
        v15 = *v7;
        v7 = v14;
        if (v15)
        {
          v16 = (v9 & 0xFFFFFFFFFFFFLL) + *(a1 + 38);
          v17 = *a2;
          if (*a2 >= v16)
          {
            v17 = v16;
          }

          *a2 = v17;
          if (*a3 > v16)
          {
            v16 = *a3;
          }

          *a3 = v16;
          v7 = v14;
        }
      }
    }
  }
}

void sub_22E039324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose((v46 - 224), 8);
  _Block_object_dispose((v46 - 176), 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E03A354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _OSLogError(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (a1 > 10)
  {
    if (a1 > 14)
    {
      if ((a1 - 16) < 3)
      {
        v8[0] = @"_OSLogErrorInternalCode";
        v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
        v9[0] = v1;
        v2 = @"The log archive contains partial or missing metadata";
        v3 = 7;
        goto LABEL_21;
      }

      if (a1 == 15)
      {
        v8[0] = @"_OSLogErrorInternalCode";
        v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v9[0] = v1;
        v2 = @"Connection to logd failed";
        v3 = 10;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if ((a1 - 11) >= 3)
    {
      if (a1 == 14)
      {
        v8[0] = @"_OSLogErrorInternalCode";
        v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v9[0] = v1;
        v2 = @"Client lacks entitlement to perform operation";
        v3 = 9;
        goto LABEL_21;
      }

LABEL_20:
      v8[0] = @"_OSLogErrorInternalCode";
      v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
      v9[0] = v1;
      v2 = @"The specified URL did not refer to a valid log archive";
      v3 = 1;
      goto LABEL_21;
    }

LABEL_8:
    v8[0] = @"_OSLogErrorInternalCode";
    v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    v9[0] = v1;
    v2 = @"The log archive is corrupt or incomplete and cannot be read";
    v3 = 2;
    goto LABEL_21;
  }

  if (a1 <= 7)
  {
    if ((a1 - 4) >= 2)
    {
      if (a1 == 7)
      {
        v8[0] = @"_OSLogErrorInternalCode";
        v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v9[0] = v1;
        v2 = @"A system resource shortage prevented the operation from completing successfully";
        v3 = 6;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_8;
  }

  if (a1 == 8)
  {
    v8[0] = @"_OSLogErrorInternalCode";
    v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v9[0] = v1;
    v2 = @"The log archive format requires upgrading in order to be opened";
    v3 = 4;
  }

  else
  {
    v8[0] = @"_OSLogErrorInternalCode";
    if (a1 == 9)
    {
      v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v9[0] = v1;
      v2 = @"The log archive upgrade process failed";
      v3 = 5;
    }

    else
    {
      v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v9[0] = v1;
      v2 = @"The log archive version is unsupported by this library";
      v3 = 3;
    }
  }

LABEL_21:
  v8[1] = *MEMORY[0x277CCA450];
  v9[1] = v2;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSLogErrorDomain" code:v3 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id _OSLogPOSIXError(uint64_t a1, uint64_t a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  if ((a1 - 4) > 0xE)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_22E081868[a1 - 4];
  }

  v12[0] = @"_OSLogErrorInternalCode";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v13[0] = v4;
  v12[1] = @"_OSLogErrorPOSIXErrno";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v13[1] = v5;
  v12[2] = *MEMORY[0x277CCA450];
  v6 = v3 - 1;
  if ((v3 - 1) >= 0xA || ((0x37Fu >> v6) & 1) == 0)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: unimplemented log error case";
    qword_27DA527A8 = v3;
    __break(1u);
  }

  v7 = v5;
  v13[2] = off_2787ADFE0[v6];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSLogErrorDomain" code:v3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id _OSLogInternalError(uint64_t a1, void *a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = qword_22E081868[a1 - 4];
  v12[0] = @"_OSLogErrorInternalCode";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v13[0] = v5;
  v12[1] = @"_OSLogErrorInternalError";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v12[2] = *MEMORY[0x277CCA450];
  v7 = off_2787AE030[v4 - 1];
  v13[1] = v6;
  v13[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v3)
  {
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSLogErrorDomain" code:v4 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_22E03F8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_22E03FD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E0402B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _uuidpath_error_message(uint64_t a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (_uuidpath_error_message_onceToken != -1)
  {
    dispatch_once(&_uuidpath_error_message_onceToken, &__block_literal_global_18);
  }

  v12 = pthread_getspecific(_uuidpath_error_message_threadKey);
  v13 = v12;
  if (v12 && *v12 == a1 && *(v12 + 2) < 5u)
  {
    v14 = v12;
  }

  else
  {
    v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x1010040662321C7uLL);
    *v14 = a1;
    pthread_setspecific(_uuidpath_error_message_threadKey, v14);
    if (v13)
    {
      _uuidpath_error_message_free(v13);
    }
  }

  result = vasprintf(&v14[2 * v14[2] + 4], a3, &a9);
  v16 = v14[2];
  *a2 = *&v14[2 * v16 + 4];
  v14[2] = v16 + 1;
  return result;
}

void _uuidpath_error_message_free(void *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = a1[i + 2];
      if (v4)
      {
        free(v4);
        v2 = *(a1 + 2);
      }
    }
  }

  free(a1);
}

_DWORD *uuidpath_map_header(const char *a1, uint64_t a2, size_t *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

  if (!a1)
  {
    if (_os_trace_uuiddb_path_sandbox_can_read_data_once != -1)
    {
      dispatch_once(&_os_trace_uuiddb_path_sandbox_can_read_data_once, &__block_literal_global_94);
    }

    if (_os_trace_uuiddb_path_sandbox_can_read_data_can_read == 1)
    {
      _os_trace_uuiddb_get_path(0, a2, 1, __str);
      goto LABEL_8;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  v5 = snprintf(__str, 0x400uLL, "%s/", a1);
  _os_trace_uuiddb_get_pathsuffix(a2, 1, &__str[v5], 1024 - v5);
LABEL_8:
  result = _os_trace_mmap_at();
  if (result && (*a3 < 0x10 || *result != 1719109785 || result[1] != 2))
  {
    munmap(result, *a3);
    result = 0;
    *a3 = 0;
  }

LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t uuidpath_resolve(char *a1, const void *a2, unint64_t a3, unint64_t a4, const char **a5, const char **a6, void *a7, void *a8)
{
  v15 = a1;
  if (!a1)
  {
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    v15 = _os_trace_uuidtext_path;
  }

  v16 = open(v15, 0);
  if (v16 == -1)
  {
    if (a8)
    {
      v25 = *__error();
      _uuidpath_error_message(a3, a8, "Unable to open source path <%s> (%d)", v20, v21, v22, v23, v24, v15);
      return 0;
    }

    return a8;
  }

  v17 = v16;
  a8 = uuidpath_resolve_fd(v16, a2, a3, a4, a5, a6, a7, a8);
  if (close(v17) != -1)
  {
    return a8;
  }

  v18 = *__error();
  result = *__error();
  if (v18 != 9)
  {
    _os_assumes_log();
    return a8;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

const char *_os_log_resolve_format(__n128 *a1, int a2, unint64_t a3, const char **a4)
{
  v11 = 0;
  v5 = BYTE2(a2) & 0xE;
  if (v5 > 0xC)
  {
    goto LABEL_10;
  }

  v6 = 1 << v5;
  if ((v6 & 0x504) != 0)
  {
    v7 = uuidpath_resolve(0, a1, a3, 0, &v11, 0, 0, 0);
    if (!a4 || (v7 & 1) != 0)
    {
      return v11;
    }

    goto LABEL_11;
  }

  if ((v6 & 0x1010) == 0)
  {
LABEL_10:
    if (!a4)
    {
      return v11;
    }

LABEL_11:
    v9 = "<compose failure [UUID]>";
    goto LABEL_12;
  }

  v8 = uuidpath_sharedcache_resolve_fd(0xFFFFFFFFLL, a1, a3, 0, 0, &v11, 0, 0, 0, 0, 0);
  if (a4 && (v8 & 1) == 0)
  {
    v9 = "<compose failure [shared UUID]>";
LABEL_12:
    *a4 = v9;
  }

  return v11;
}

void sub_22E041B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E041DDC(void *a1)
{
  objc_begin_catch(a1);
  v1[10] = 8;
  [v1 invalidate];
  objc_end_catch();
  JUMPOUT(0x22E041DB0);
}

uint64_t _os_trace_utf8_len(char *a1, unint64_t a2)
{
  v2 = *a1;
  if ((*a1 & 0xF8) == 0xF0)
  {
    v3 = 4;
  }

  else if ((v2 & 0xF0) == 0xE0)
  {
    v3 = 3;
  }

  else
  {
    if ((v2 & 0xE0) != 0xC0)
    {
      return -1;
    }

    v3 = 2;
  }

  if (v3 <= a2)
  {
    v4 = 1;
    while ((a1[v4] & 0xC0) == 0x80)
    {
      if (v3 == ++v4)
      {
        return v3;
      }
    }

    return -1;
  }

  return -2;
}

unint64_t os_trace_blob_addns(uint64_t a1, char *__src, unint64_t a3)
{
  if ((*(a1 + 20) & 2) == 0)
  {
    v3 = a3;
    v4 = __src;
    v6 = *(a1 + 8) + (*(a1 + 22) ^ 1);
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = (v7 - v6);
    }

    else
    {
      v9 = *(a1 + 12);
      LODWORD(v8) = v9 - v6;
      if (v9)
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }
    }

    if (v8 < a3)
    {
      v3 = v8;
    }

    if (*__src)
    {
      v10 = 0;
      v11 = MEMORY[0x277D85DE0];
      while (1)
      {
        v12 = 0;
        v13 = v3 - v10;
        if (v3 != v10)
        {
          while (1)
          {
            v14 = v4[v12];
            if (v14 < 1 || (*(v11 + 4 * v14 + 60) & 0x4200) == 0x200)
            {
              break;
            }

            if (v13 == ++v12)
            {
              v12 = v3 - v10;
              break;
            }
          }
        }

        if (v12 >= v13)
        {
          v15 = v3 - v10;
        }

        else
        {
          v15 = v12;
        }

        if ((*(a1 + 20) & 2) == 0)
        {
          v16 = *(a1 + 8);
          if (v15 > *(a1 + 12) - v16 - (*(a1 + 22) ^ 1u))
          {
            os_trace_blob_add_slow(a1, v4, v15);
          }

          else
          {
            memcpy((*a1 + v16), v4, v15);
            v17 = *(a1 + 8) + v15;
            *(a1 + 8) = v17;
            if ((*(a1 + 22) & 1) == 0)
            {
              *(*a1 + v17) = 0;
            }
          }
        }

        v18 = v15 + v10;
        if (v3 == v15 + v10)
        {
          return v3;
        }

        v19 = &v4[v15];
        v20 = *v19;
        if (!*v19)
        {
          return v18;
        }

        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v25 = _os_trace_utf8_len(v19, v3 - (v15 + v10));
        if (v25 == -1)
        {
          v10 = v18 + 4;
          if (v18 + 4 > v3)
          {
            return v18;
          }

          v29 = v20 & 0x7F;
          if ((*(v11 + 4 * (v20 & 0x7F) + 60) & 0x200) == 0)
          {
            qmemcpy(&v38, "\\M-", 3);
            HIBYTE(v38) = v20 & 0x7F;
            if ((*(a1 + 20) & 2) == 0)
            {
              v30 = *(a1 + 8);
              if (*(a1 + 12) - v30 - (*(a1 + 22) ^ 1u) > 3)
              {
                v31 = *a1;
                v32 = v38;
                goto LABEL_51;
              }

              p_srca = &v38;
LABEL_62:
              v35 = a1;
              v36 = 4;
LABEL_63:
              os_trace_blob_add_slow(v35, p_srca, v36);
            }

LABEL_54:
            v4 = v19 + 1;
            goto LABEL_55;
          }

          if (v29 == 127)
          {
            v33 = 63;
          }

          else
          {
            v33 = v29 + 64;
          }

          qmemcpy(&__srca, "\\M^", 3);
          HIBYTE(__srca) = v33;
          if ((*(a1 + 20) & 2) != 0)
          {
            goto LABEL_54;
          }

          v30 = *(a1 + 8);
          if (*(a1 + 12) - v30 - (*(a1 + 22) ^ 1u) <= 3)
          {
            p_srca = &__srca;
            goto LABEL_62;
          }

          v31 = *a1;
          v32 = __srca;
LABEL_51:
          *(v31 + v30) = v32;
          v24 = *(a1 + 8) + 4;
LABEL_52:
          *(a1 + 8) = v24;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v24) = 0;
          }

          goto LABEL_54;
        }

        v26 = v25;
        if (v25 == -2)
        {
          return v18;
        }

        if ((*(a1 + 20) & 2) == 0)
        {
          v27 = *(a1 + 8);
          if (v25 > *(a1 + 12) - v27 - (*(a1 + 22) ^ 1u))
          {
            os_trace_blob_add_slow(a1, v19, v25);
          }

          else
          {
            memcpy((*a1 + v27), v19, v25);
            v28 = *(a1 + 8) + v26;
            *(a1 + 8) = v28;
            if ((*(a1 + 22) & 1) == 0)
            {
              *(*a1 + v28) = 0;
            }
          }
        }

        v10 = v26 + v18;
        if (v26 + v18 == v3)
        {
          return v3;
        }

        v4 = &v19[v26];
LABEL_55:
        v18 = v10;
        if (!*v4)
        {
          return v18;
        }
      }

      v10 = v18 + 3;
      if (v18 + 3 > v3)
      {
        return v18;
      }

      v21 = v20 + 64;
      if (v20 == 127)
      {
        v21 = 63;
      }

      v40 = 24156;
      v41 = v21;
      if ((*(a1 + 20) & 2) != 0)
      {
        goto LABEL_54;
      }

      v22 = *(a1 + 8);
      if (*(a1 + 12) - v22 - (*(a1 + 22) ^ 1u) <= 2)
      {
        p_srca = &v40;
        v35 = a1;
        v36 = 3;
        goto LABEL_63;
      }

      v23 = *a1 + v22;
      *v23 = v40;
      *(v23 + 2) = v41;
      v24 = *(a1 + 8) + 3;
      goto LABEL_52;
    }
  }

  return 0;
}

tm *os_trace_blob_add_localtime(tm *result, time_t a2, char a3, unsigned int a4)
{
  v20 = a2;
  if (BYTE2(result->tm_year) == 1)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: Can't use addf() in binary blobs";
    __break(1u);
  }

  else
  {
    v4 = result;
    if ((result->tm_year & 2) == 0)
    {
      memset(&v19, 0, sizeof(v19));
      result = localtime_r(&v20, &v19);
      if (result)
      {
        os_trace_blob_addf(v4, "%04d-%02d-%02d %02d:%02d:%02d", v7, v8, v9, v10, v11, v12, LOBYTE(v19.tm_year) + 108);
        if (a4 <= 2)
        {
          os_trace_blob_addf(v4, off_2787AE350[a4], v13, v14, v15, v16, v17, v18, a3);
        }

        return os_trace_blob_addf(v4, "%+05ld", v13, v14, v15, v16, v17, v18, (v19.tm_gmtoff / 60 % 60) + 100 * (v19.tm_gmtoff / 3600));
      }
    }
  }

  return result;
}

BOOL ctf_is_type(const char *a1, size_t a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    if (strlen(BUILTIN_LIBRARY[v4]) == a2 && !strncmp(a1, BUILTIN_LIBRARY[v4], a2))
    {
      break;
    }

    v5 = v4++ < 3;
  }

  while (v4 != 4);
  return v5;
}

uint64_t ctf_type_parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = ctf_type_resolve(a1, a2);
  if (v10 == -1)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  if (ctf_type_size(a1, a2) > a5)
  {
LABEL_8:
    v16 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v12 = ctf_type_kind(a1, v11);
  if (v12 >= 31)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = ctf_formatters[v12];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13(a1, a2, a3, a4, a5);
}

uint64_t ctf_enum(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = ctf_type_size(a1, a2);
  if (v10 > a5)
  {
    v29[0] = 0;
    memset(v32, 0, 80);
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v30) = 134217984;
    *(&v30 + 4) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v10 > 3)
  {
    if (v10 == 4)
    {
      v11 = *a4;
    }

    else
    {
      if (v10 != 8)
      {
        goto LABEL_25;
      }

      v11 = *a4;
      if (HIDWORD(v11))
      {
        _os_assumes_log();
        v28 = v11;
LABEL_21:
        v18 = "%#llx";
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (v10 != 1)
    {
      if (v10 == 2)
      {
        v11 = *a4;
        goto LABEL_12;
      }

LABEL_25:
      _os_assumes_log();
      result = 0;
      goto LABEL_16;
    }

    v11 = *a4;
  }

LABEL_12:
  if (!ctf_enum_name(a1, a2, v11))
  {
    if (v11)
    {
      v31 = 0;
      v29[2] = 1;
      *&v30 = v32;
      *(&v30 + 1) = 0x40000000000;
      v29[1] = &v30;
      v29[0] = v11;
      if (ctf_enum_iter(a1, a2, ctf_enum_flag_parse, v29) == 1)
      {
        os_trace_blob_addf(a3, "[%#llx %s]", v21, v22, v23, v24, v25, v26, v11);
      }

      else
      {
        os_trace_blob_addf(a3, "%#llx", v21, v22, v23, v24, v25, v26, v11);
      }

      if ((v31 & 0x100000000) != 0)
      {
        v27 = v30;
        *&v30 = 3954044928;
        WORD2(v31) = 0;
        free(v27);
      }

      goto LABEL_15;
    }

    v28 = 0;
    goto LABEL_21;
  }

  v28 = v11;
  v18 = "[%#llx %s]";
LABEL_14:
  os_trace_blob_addf(a3, v18, v12, v13, v14, v15, v16, v17, v28);
LABEL_15:
  result = 1;
LABEL_16:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ctf_enum_flag_parse(char *__s, int a2, uint64_t a3)
{
  v5 = *a3;
  if ((*a3 & a2) != 0)
  {
    v19 = v3;
    v20 = v4;
    if ((*(a3 + 16) & 1) == 0)
    {
      v9 = *(a3 + 8);
      __src = 124;
      if ((*(v9 + 20) & 2) == 0)
      {
        v10 = *(v9 + 8);
        if (*(v9 + 12) == v10 + (*(v9 + 22) ^ 1))
        {
          os_trace_blob_add_slow(v9, &__src, 1uLL);
        }

        else
        {
          *(*v9 + v10) = 124;
          v11 = *(v9 + 8) + 1;
          *(v9 + 8) = v11;
          if ((*(v9 + 22) & 1) == 0)
          {
            *(*v9 + v11) = 0;
          }
        }
      }
    }

    *(a3 + 16) = 0;
    v12 = *(a3 + 8);
    v13 = strlen(__s);
    if ((*(v12 + 20) & 2) == 0)
    {
      v14 = v13;
      v15 = *(v12 + 8);
      if (v13 > *(v12 + 12) - v15 - (*(v12 + 22) ^ 1u))
      {
        os_trace_blob_add_slow(v12, __s, v13);
      }

      else
      {
        memcpy((*v12 + v15), __s, v13);
        v16 = *(v12 + 8) + v14;
        *(v12 + 8) = v16;
        if ((*(v12 + 22) & 1) == 0)
        {
          *(*v12 + v16) = 0;
        }
      }
    }

    v5 = *a3 ^ a2;
    *a3 = v5;
  }

  return v5 == 0;
}

BOOL ctf_recursive(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v14[0] = a1;
  v14[1] = a3;
  v14[2] = a4;
  v15 = 0x10000;
  LOWORD(v15) = a5;
  __src = 123;
  if ((*(a3 + 20) & 2) == 0)
  {
    v8 = *(a3 + 8);
    if (*(a3 + 12) == v8 + (*(a3 + 22) ^ 1))
    {
      os_trace_blob_add_slow(a3, &__src, 1uLL);
    }

    else
    {
      *(*a3 + v8) = 123;
      v9 = *(a3 + 8) + 1;
      *(a3 + 8) = v9;
      if ((*(a3 + 22) & 1) == 0)
      {
        *(*a3 + v9) = 0;
      }
    }
  }

  v10 = ctf_member_iter(a1, a2, ctf_member_parse, v14);
  __src = 125;
  if ((*(a3 + 20) & 2) == 0)
  {
    v11 = *(a3 + 8);
    if (*(a3 + 12) == v11 + (*(a3 + 22) ^ 1))
    {
      os_trace_blob_add_slow(a3, &__src, 1uLL);
    }

    else
    {
      *(*a3 + v11) = 125;
      v12 = *(a3 + 8) + 1;
      *(a3 + 8) = v12;
      if ((*(a3 + 22) & 1) == 0)
      {
        *(*a3 + v12) = 0;
      }
    }
  }

  return v10 == 0;
}

uint64_t ctf_member_parse(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  v24 = *MEMORY[0x277D85DE8];
  v9 = ctf_type_size(*a4, a2);
  if ((v9 - 1) >= 0xFFFF)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v4 = v9;
  if ((*(a4 + 26) & 1) == 0)
  {
    v16 = *(a4 + 8);
    if ((*(v16 + 20) & 2) == 0)
    {
      v17 = *(v16 + 8);
      if (*(v16 + 12) - v17 - (*(v16 + 22) ^ 1u) <= 1)
      {
        goto LABEL_11;
      }

      *(*v16 + v17) = 8236;
      v18 = *(v16 + 8) + 2;
      *(v16 + 8) = v18;
      if ((*(v16 + 22) & 1) == 0)
      {
        *(*v16 + v18) = 0;
      }
    }
  }

  while (1)
  {
    *(a4 + 26) = 0;
    os_trace_blob_addf(*(a4 + 8), "%s = ", v10, v11, v12, v13, v14, v15, a1);
    v19 = *(a4 + 16);
    v20 = v19 + (a3 >> 3);
    if (v20 + v4 <= v19 + *(a4 + 24))
    {
      break;
    }

LABEL_10:
    v7 = MEMORY[0x277D86220];
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v16 = _os_crash_msg();
    __break(1u);
LABEL_11:
    os_trace_blob_add_slow(v16, ", ", 2uLL);
  }

  v21 = ctf_type_parse(*a4, v7, *(a4 + 8), v20, v4);
  v22 = *MEMORY[0x277D85DE8];
  return (v21 - 1);
}

uint64_t ctf_array(uint64_t (***a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  if (ctf_array_info(a1, a2, v38))
  {
    v40[0] = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    __src = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v41[0]) = 134217984;
    *(v41 + 4) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_40;
  }

  v5 = v38[0];
  if (ctf_type_kind(a1, v38[0]) != 1)
  {
    goto LABEL_16;
  }

  memset(v41, 0, 12);
  if (ctf_type_encoding(a1, v5, v41))
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    __src = 0u;
    a3 = MEMORY[0x277D86220];
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v40[0]) = 134217984;
    *(v40 + 4) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_51;
  }

  if ((v41[0] & 2) == 0)
  {
    goto LABEL_16;
  }

  v6 = v39;
  if (v39 > a5)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    __src = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v40[0]) = 134217984;
    *(v40 + 4) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (!v39)
  {
LABEL_16:
    v23 = ctf_type_size(a1, v5);
    if ((v23 - 1) < 0xFFFF)
    {
      v6 = v23;
      v7 = v39;
      if (v39 * v23 <= a5)
      {
        LOBYTE(__src) = 91;
        if ((*(a3 + 20) & 2) != 0)
        {
          goto LABEL_22;
        }

        v24 = *(a3 + 8);
        if (*(a3 + 12) != v24 + (*(a3 + 22) ^ 1))
        {
          *(*a3 + v24) = 91;
          v25 = *(a3 + 8) + 1;
          *(a3 + 8) = v25;
          if ((*(a3 + 22) & 1) == 0)
          {
            *(*a3 + v25) = 0;
          }

LABEL_22:
          if (v7)
          {
LABEL_23:
            v26 = 0;
            v27 = 0;
            while ((ctf_type_parse(a1, v5, a3, a4 + v26, v6) & 1) != 0)
            {
              if (v27 < (v7 - 1) && (*(a3 + 20) & 2) == 0)
              {
                v28 = *(a3 + 8);
                if (*(a3 + 12) - v28 - (*(a3 + 22) ^ 1u) <= 1)
                {
                  os_trace_blob_add_slow(a3, ", ", 2uLL);
                }

                else
                {
                  *(*a3 + v28) = 8236;
                  v29 = *(a3 + 8) + 2;
                  *(a3 + 8) = v29;
                  if ((*(a3 + 22) & 1) == 0)
                  {
                    *(*a3 + v29) = 0;
                  }
                }
              }

              ++v27;
              v26 += v6;
              if (v7 == v27)
              {
                goto LABEL_43;
              }
            }

            if ((*(a3 + 20) & 2) != 0)
            {
              goto LABEL_36;
            }

            v30 = *(a3 + 8);
            if (*(a3 + 12) - v30 - (*(a3 + 22) ^ 1u) > 6)
            {
              v31 = (*a3 + v30);
              *(v31 + 3) = 1047687026;
              *v31 = 1920099644;
              v32 = *(a3 + 8) + 7;
              *(a3 + 8) = v32;
              if (*(a3 + 22))
              {
LABEL_36:
                v33 = 0;
                goto LABEL_44;
              }

              v33 = 0;
              *(*a3 + v32) = 0;
LABEL_44:
              LOBYTE(__src) = 93;
              if ((*(a3 + 20) & 2) == 0)
              {
                v34 = *(a3 + 8);
                if (*(a3 + 12) == v34 + (*(a3 + 22) ^ 1))
                {
                  os_trace_blob_add_slow(a3, &__src, 1uLL);
                }

                else
                {
                  *(*a3 + v34) = 93;
                  v35 = *(a3 + 8) + 1;
                  *(a3 + 8) = v35;
                  if ((*(a3 + 22) & 1) == 0)
                  {
                    *(*a3 + v35) = 0;
                  }
                }
              }

              goto LABEL_48;
            }

LABEL_51:
            os_trace_blob_add_slow(a3, "<error>", 7uLL);
            goto LABEL_36;
          }

LABEL_43:
          v33 = 1;
          goto LABEL_44;
        }

LABEL_42:
        os_trace_blob_add_slow(a3, &__src, 1uLL);
        if (v7)
        {
          goto LABEL_23;
        }

        goto LABEL_43;
      }

LABEL_41:
      v40[0] = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      __src = 0u;
      a3 = MEMORY[0x277D86220];
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      LODWORD(v41[0]) = 134217984;
      *(v41 + 4) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_42;
    }

LABEL_40:
    v40[0] = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    __src = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v41[0]) = 134217984;
    *(v41 + 4) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_41;
  }

  v18 = 0;
  LODWORD(v7) = 0;
  v19 = MEMORY[0x277D85DE0];
  while (1)
  {
    v20 = *(a4 + v18);
    if (!*(a4 + v18))
    {
      break;
    }

    if ((v20 & 0x80000000) != 0)
    {
      v21 = __maskrune(v20, 0x40000uLL);
    }

    else
    {
      v21 = *(v19 + 4 * v20 + 60) & 0x40000;
    }

    v7 = (v7 + 1);
    v18 = v7;
    if (v21)
    {
      v22 = v6 > v7;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      goto LABEL_16;
    }
  }

  os_trace_blob_addf(a3, "%.*s", v12, v13, v14, v15, v16, v17, v6);
  v33 = 1;
LABEL_48:
  v36 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t ctf_pointer(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = ctf_type_size(a1, a2);
  if (v8 > a5)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v8 == 8)
  {
    os_trace_blob_addf(a3, "0x%llx", v9, v10, v11, v12, v13, v14, *a4);
  }

  else
  {
    if (v8 != 4)
    {
      result = 0;
      goto LABEL_8;
    }

    os_trace_blob_addf(a3, "0x%x", v9, v10, v11, v12, v13, v14, *a4);
  }

  result = 1;
LABEL_8:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ctf_float(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, unsigned int a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = ctf_type_size(a1, a2);
  if (v8 > a5)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v8 == 8)
  {
    v15 = *a4;
  }

  else
  {
    if (v8 != 4)
    {
      result = 0;
      goto LABEL_8;
    }

    v15 = *a4;
  }

  os_trace_blob_addf(a3, "%.20g", v9, v10, v11, v12, v13, v14, SLOBYTE(v15));
  result = 1;
LABEL_8:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ctf_integer(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, unsigned int a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = ctf_type_size(a1, a2);
  if (v8 > a5)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v15 = v8;
  result = 0;
  if (v15 > 3)
  {
    if (v15 == 4)
    {
      v17 = *a4;
      goto LABEL_11;
    }

    if (v15 == 8)
    {
      os_trace_blob_addf(a3, "%#llx", v9, v10, v11, v12, v13, v14, *a4);
LABEL_12:
      result = 1;
    }
  }

  else
  {
    if (v15 == 1)
    {
      LOBYTE(v17) = *a4;
      goto LABEL_11;
    }

    if (v15 == 2)
    {
      LOWORD(v17) = *a4;
LABEL_11:
      os_trace_blob_addf(a3, "%#x", v9, v10, v11, v12, v13, v14, v17);
      goto LABEL_12;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void _invalidate(void *a1, uint64_t a2, void *a3)
{
  v8 = a1;
  v5 = a3;
  [v8 setInvalidated:1];
  v6 = [v8 invalidationHandler];

  if (v6)
  {
    v7 = [v8 invalidationHandler];
    (v7)[2](v7, a2, v5);

    [v8 setInvalidationHandler:0];
  }
}

void sub_22E047F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void logging_support_test_oslog(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = a1;
    _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LoggingSupportTest: %s", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_22E04B2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id os_log_fmt_object_for_data(uint64_t a1, int a2, char *a3, unsigned int a4, uint64_t a5)
{
  if (os_log_fmt_object_for_data_onceToken != -1)
  {
    dispatch_once(&os_log_fmt_object_for_data_onceToken, &__block_literal_global_2210);
  }

  if ((*(a1 + 8) & 0x10) != 0)
  {
    scalar = os_log_fmt_read_scalar(a1, a3, a4);
  }

  else
  {
    scalar = 0;
  }

  switch(*(a1 + 10))
  {
    case 1:
      v23 = [os_log_fmt_object_for_data__NSNumber alloc];

      return [v23 initWithChar:scalar];
    case 2:
      v24 = [os_log_fmt_object_for_data__NSNumber alloc];

      return [v24 initWithUnsignedChar:scalar];
    case 3:
      v21 = [os_log_fmt_object_for_data__NSNumber alloc];

      return [v21 initWithShort:scalar];
    case 4:
      v22 = [os_log_fmt_object_for_data__NSNumber alloc];

      return [v22 initWithUnsignedShort:scalar];
    case 5:
    case 7:
    case 8:
      goto LABEL_31;
    case 6:
      goto LABEL_23;
    case 9:
      if (a5 == 4)
      {
LABEL_31:
        v19 = [os_log_fmt_object_for_data__NSNumber alloc];

        result = [v19 initWithInt:scalar];
      }

      else
      {
        if (a5 == 8)
        {
          goto LABEL_28;
        }

LABEL_34:
        v20 = [os_log_fmt_object_for_data__NSNumber alloc];

        result = [v20 initWithLongLong:scalar];
      }

      break;
    case 0xA:
    case 0xD:
      if (a5 == 4)
      {
LABEL_23:
        v17 = [os_log_fmt_object_for_data__NSNumber alloc];

        result = [v17 initWithUnsignedInt:scalar];
      }

      else if (a5 == 8)
      {
LABEL_28:
        v18 = [os_log_fmt_object_for_data__NSNumber alloc];

        result = [v18 initWithLong:scalar];
      }

      else
      {
LABEL_17:
        v15 = [os_log_fmt_object_for_data__NSNumber alloc];

        result = [v15 initWithUnsignedLongLong:scalar];
      }

      break;
    case 0xB:
      goto LABEL_34;
    case 0xC:
      goto LABEL_17;
    case 0xE:
    case 0xF:
      v16 = [os_log_fmt_object_for_data__NSNumber alloc];

      return [v16 initWithDouble:*&scalar];
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
      if (a2 == 3)
      {
        v11 = [os_log_fmt_object_for_data__NSData alloc];

        return [v11 initWithBytes:a3 length:a4];
      }

      else
      {
        v13 = os_log_fmt_object_for_data__NSString;
        if (a4)
        {
          v14 = [os_log_fmt_object_for_data__NSString alloc];

          return [v14 initWithBytes:a3 length:a4 - 1 encoding:4];
        }

        else
        {

          return objc_alloc_init(v13);
        }
      }

    default:
      return 0;
  }

  return result;
}

Class __os_log_fmt_object_for_data_block_invoke()
{
  os_log_fmt_object_for_data__NSString = objc_getClass("NSString");
  os_log_fmt_object_for_data__NSNumber = objc_getClass("NSNumber");
  result = objc_getClass("NSData");
  os_log_fmt_object_for_data__NSData = result;
  return result;
}

unint64_t _os_log_fmt_plugin_annotated(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char *a5, unsigned int a6, char a7)
{
  v31[256] = *MEMORY[0x277D85DE8];
  plugin = os_log_fmt_get_plugin(*(a3 + 32), *(a3 + 14));
  v15 = plugin;
  if (plugin)
  {
    if (plugin[3] && (v16 = os_log_fmt_object_for_data(a3, *a4 >> 4, a5, a6, a2)) != 0)
    {
      v17 = v16;
      v30 = 1;
      BYTE4(v30) = a7;
      v18 = *(a3 + 40);
      *(a3 + 16);
      __strlcpy_chk();
      v19 = (*(v15 + 24))(v31, v17, &v30);
      v20 = [v19 string];
      v15 = v20 != 0;
      if (v20)
      {
        v21 = v20;
        v22 = v21;
        v23 = [v21 _fastCStringContents:1];
        if (v23)
        {
          os_trace_blob_addns(a1, v23, 0xFFFFFFFFFFFFFFFFLL);
        }

        else
        {
          v24 = [v21 lengthOfBytesUsingEncoding:4];
          v31[0] = v24;
          v25 = *(a1 + 8);
          v26 = *(a1 + 12) - v25 - (*(a1 + 22) ^ 1);
          if (v24 > v26)
          {
            os_trace_blob_grow(a1, v24);
            v25 = *(a1 + 8);
            v26 = *(a1 + 12) - v25 - (*(a1 + 22) ^ 1);
            if (v24 > v26)
            {
              *(a1 + 20) |= 2u;
            }
          }

          [v21 getBytes:*a1 + v25 maxLength:v26 usedLength:v31 encoding:4 options:1 range:0 remainingRange:{objc_msgSend(v21, "length"), 0}];
          v27 = *(a1 + 8) + LODWORD(v31[0]);
          *(a1 + 8) = v27;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v27) = 0;
          }
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

void *os_log_fmt_get_plugin(const char *a1, size_t a2)
{
  if (_dyld_dlsym_blocked())
  {
    return 0;
  }

  if (qword_280B575A8 != -1)
  {
    dispatch_once_f(&qword_280B575A8, 0, _os_trace_formatters_list);
  }

  v4 = qword_280B575A0;
  if (!qword_280B575A0)
  {
    return 0;
  }

  v5 = 0;
  v6 = _formatters;
  while (1)
  {
    v7 = (v5 + v4) >> 1;
    v8 = (v6 + 40 * v7);
    v9 = v8[1];
    v10 = strncasecmp(a1, v9, a2);
    if (!v10)
    {
      break;
    }

LABEL_9:
    if (v10 >= 0)
    {
      v5 = v7 + 1;
    }

    else
    {
      v4 = (v5 + v4) >> 1;
    }

    if (v5 >= v4)
    {
      return 0;
    }
  }

  if (v9[a2])
  {
    v10 = -v9[a2];
    goto LABEL_9;
  }

  if (*v8 != -1)
  {
    dispatch_once_f((v6 + 40 * v7), (v6 + 40 * v7), _os_trace_load_formatter);
  }

  return v8;
}

void *_os_trace_load_formatter(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = (&plugin_dirs)[2 * *(a1 + 16)];
  snprintf(__str, 0x400uLL, "%sliblog_%s.dylib", v2, *(a1 + 8));
  result = dlopen(__str, 6);
  *(a1 + 16) = result;
  if (result)
  {
    *(a1 + 24) = dlsym(result, "OSLogCopyFormattedString");
    result = dlsym(*(a1 + 16), "OSStateCreateStringWithData");
    *(a1 + 32) = result;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void _os_trace_formatters_list()
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v0 = getenv("OS_ACTIVITY_FORMATTER");
  if (!v0 || strcmp(v0, "disable"))
  {
    v1 = 0;
    v2 = 1;
    do
    {
      v3 = v2;
      v4 = opendir((&plugin_dirs)[2 * v1]);
      v5 = v4;
      if (v4)
      {
        for (i = readdir(v4); i; i = readdir(v5))
        {
          if (i->d_type == 8)
          {
            v7 = _os_trace_formatter_record(v19[3], i->d_name, v1, v15 + 3, v11 + 3);
            v19[3] = v7;
          }
        }

        closedir(v5);
      }

      v2 = 0;
      v1 = 1;
    }

    while ((v3 & 1) != 0);
    v22 = 0;
    v23 = 0;
    if (_dyld_get_shared_cache_uuid())
    {
      dyld_shared_cache_iterate_text();
    }

    qsort_b(v19[3], v15[3], 0x28uLL, &__block_literal_global_63);
    v8 = v15[3];
    _formatters = v19[3];
    qword_280B575A0 = v8;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22E04C08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

uint64_t _os_trace_formatter_record(uint64_t a1, char *__s1, uint64_t a3, uint64_t *a4, void *a5)
{
  if (!strncmp(__s1, "liblog_", 7uLL) && !strchr(__s1, 47))
  {
    v11 = strrchr(__s1, 46);
    if (v11)
    {
      v12 = v11;
      if (!strcmp(v11, ".dylib"))
      {
        v13 = strndup(__s1 + 7, v12 - (__s1 + 7));
        v14 = *a4;
        if (*a4)
        {
          v15 = 8;
          v16 = *a4;
          while (strcasecmp(*(a1 + v15), v13))
          {
            v15 += 40;
            if (!--v16)
            {
              goto LABEL_10;
            }
          }

          free(v13);
        }

        else
        {
LABEL_10:
          if (v14 == *a5)
          {
            *a5 = v14 + 8;
            a1 = _os_trace_realloc_typed();
            v14 = *a4;
          }

          *a4 = v14 + 1;
          v17 = (a1 + 40 * v14);
          *v17 = 0;
          v17[1] = v13;
          v17[3] = 0;
          v17[4] = 0;
          v17[2] = a3;
        }
      }
    }
  }

  return a1;
}

uint64_t ___os_trace_formatters_list_block_invoke(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = &(&plugin_dirs)[2 * v4];
    if (*(v7 + 8) != 1 || (*(v3 + 56) & 1) == 0)
    {
      v8 = *v7;
      v9 = strlen(*v7);
      v10 = *(a2 + 40);
      result = strncmp(v10, v8, v9);
      if (!result)
      {
        result = _os_trace_formatter_record(*(*(*(v3 + 32) + 8) + 24), &v10[v9], v4, (*(*(v3 + 40) + 8) + 24), (*(*(v3 + 48) + 8) + 24));
        *(*(*(v3 + 32) + 8) + 24) = result;
      }
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint64_t requiresLogicalExpression(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 compoundPredicateType] == 2)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v3 = [v2 subpredicates];
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        v5 = *v10;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(v3);
            }

            if (requiresLogicalExpression(*(*(&v9 + 1) + 8 * i)))
            {
              v4 = 1;
              goto LABEL_15;
            }
          }

          v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t _ctf_open_buffer(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 != 53233 || *(a1 + 2) != 4)
  {
    return 0;
  }

  v17 = v8;
  v18 = v9;
  v12 = ".SUNW_ctf";
  v13 = xmmword_22E0816F0;
  v14 = a1;
  v15 = a2;
  v16 = xmmword_22E081700;
  v11 = 0;
  return ctf_bufopen(&v12, 0, 0, &v11, a5, a6, a7, a8);
}

void sub_22E05024C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _logHandle()
{
  if (_logHandle_onceToken != -1)
  {
    dispatch_once(&_logHandle_onceToken, &__block_literal_global_246);
  }

  v1 = _logHandle_handle;

  return v1;
}

uint64_t ___logHandle_block_invoke()
{
  v0 = os_log_create("com.apple.loggingsupport", "os_log_statistics");
  v1 = _logHandle_handle;
  _logHandle_handle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_22E0508C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2699(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _state_support_decode_data(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((*a1 - 2) >= 2)
  {
    if (*a1 == 1 && *(a1 + 4))
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a1 + 200 length:*(a1 + 4) freeWhenDone:0];
      v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:0];
      v5 = [v8 description];

      objc_autoreleasePoolPop(v6);
      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v2 = strlen((a1 + 8));
  plugin = os_log_fmt_get_plugin((a1 + 8), v2);
  if (!plugin)
  {
    goto LABEL_8;
  }

  v4 = plugin[4];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4(a1 + 72, *(a1 + 4), a1 + 200);
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t _state_support_validate_payload(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 - 48) < 0xC8)
  {
    return 0;
  }

  if (v1 - 248 >= *(a1 + 68))
  {
    return a1 + 64;
  }

  return 0;
}

_BYTE *_state_support_create_message(uint64_t a1, void *a2)
{
  if (*a1 != 24579)
  {
    return 0;
  }

  if (*(a1 + 4))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 0xF8;
  v5 = v3 - 248;
  if (!v4 || v5 < *(a1 + 68))
  {
    return 0;
  }

  v9 = _state_support_decode_data(a1 + 64);
  v10 = strnlen((a1 + 200), 0x3FuLL);
  v11 = [v9 lengthOfBytesUsingEncoding:4];
  if (v10 | v11)
  {
    v12 = v10 + 1;
    v13 = _os_trace_malloc_typed();
    v6 = v13;
    if (v10)
    {
      memcpy(v13, (a1 + 200), v10);
      v6[v10] = 10;
      v6[v12] = 0;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      [v9 getCString:&v6[v12] maxLength:v11 + 1 encoding:4];
    }
  }

  else
  {
    v12 = 0;
    v6 = 0;
  }

  if (a2)
  {
    *a2 = v12 + v11;
  }

  return v6;
}

uint64_t enumerate_boots(void *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    v11 = _timesync_db_openat(-2, _os_trace_timesync_path);
    if (!v11)
    {
      v30 = __error();
      v31 = *v30;
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open timesync database: %s (%d)", strerror(*v30), v31];
      v22 = create_timesync_error(v31, v32);

      v23 = 0;
      goto LABEL_28;
    }

    v10 = v11;
    v36 = a2;
    v37 = 0;
    v8 = -1;
    goto LABEL_9;
  }

  snprintf(__str, 0x400uLL, "%s/timesync", [v5 fileSystemRepresentation]);
  v7 = open(__str, 0);
  v8 = v7;
  if (v7 == -1)
  {
    v24 = __error();
    v25 = *v24;
    [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open archive at path: %@: %s (%d)", v5, strerror(*v24), v25];
    goto LABEL_23;
  }

  v9 = _timesync_db_openat(v7, ".");
  if (!v9)
  {
    v26 = __error();
    v25 = *v26;
    [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open timesync database: %s (%d)", strerror(*v26), v25, v35];
    v27 = LABEL_23:;
    v22 = create_timesync_error(v25, v27);

    v23 = 0;
    if (v8 < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v10 = v9;
  v36 = a2;
  v37 = v5;
LABEL_9:
  v12 = v6;
  v13 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v39 = ___enumerate_boots_impl_block_invoke;
  v40 = &unk_2787AE7D0;
  v14 = v13;
  v41 = v14;
  while (*(v10 + 6))
  {
    v39(v38, (v10 + 14));
    _timesync_advance_boot(v10);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v43 objects:__str count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v44;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v12[2](v12, v20);
        objc_autoreleasePoolPop(v21);
      }

      v17 = [v15 countByEnumeratingWithState:&v43 objects:__str count:16];
    }

    while (v17);
  }

  _timesync_db_close(v10);
  v22 = 0;
  v23 = 1;
  a2 = v36;
  v5 = v37;
  if (v8 < 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (close(v8) == -1)
  {
    v28 = *__error();
    result = *__error();
    if (v28 == 9)
    {
      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = result;
      __break(1u);
      return result;
    }

    _os_assumes_log();
  }

LABEL_28:
  if (a2)
  {
    if ((v23 & 1) == 0)
    {
      v33 = v22;
      *a2 = v22;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v23;
}

id create_timesync_error(int a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSLogTimesyncErrorDomain" code:a1 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void ___enumerate_boots_impl_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[OSLogBootEntry alloc] init:a2];
  [*(a1 + 32) addObject:v3];
}

void __OSLogLogdAdminConnection_block_invoke()
{
  mach_service = xpc_connection_create_mach_service("com.apple.logd.admin", 0, 2uLL);
  v1 = OSLogLogdAdminConnection_xconn;
  OSLogLogdAdminConnection_xconn = mach_service;

  if (OSLogLogdAdminConnection_xconn)
  {
    xpc_connection_set_event_handler(OSLogLogdAdminConnection_xconn, &__block_literal_global_62);
    v2 = OSLogLogdAdminConnection_xconn;

    xpc_connection_activate(v2);
  }
}

uint64_t _OSLogUUIDMapAddFromCatalog(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___OSLogUUIDMapAddFromCatalog_block_invoke;
  v9[3] = &__block_descriptor_40_e69_v16__0__catalog_procinfo_s_SSiQII_16C__16C___hashtable___hashtable__8l;
  v4 = *(a1 + 40);
  v9[4] = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v11 = ___catalog_for_each_procinfo_block_invoke;
  v12 = &unk_2787AD738;
  v13 = v9;
  if (v4)
  {
    for (i = *(v4 + 16); i; i = *i)
    {
      (v11)(v10, i[4]);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___OSLogUUIDMapAddFromCatalog_block_invoke_3;
  v8[3] = &__block_descriptor_40_e15_v24__0Q8_16C_16l;
  v8[4] = a2;
  result = _catalog_for_each_uuid(a1, v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void _OSLogGenerateXattrs(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = ___OSLogGenerateXattrs_block_invoke;
  v10 = &__block_descriptor_40_e767_B16__0__tracev3_chunk_s__tracev3_chunk_preamble_s_IIQ_____tracev3_chunk_header_s__mach_timebase_info_II_QqiiiI_tracev3_subchunk_preamble_s_II__tracev3_subchunk_continuous_s_Q__tracev3_subchunk_preamble_s_II__tracev3_subchunk_systeminfo_s_ii_16c__32c___tracev3_subchunk_preamble_s_II__tracev3_subchunk_generation_s__16C_ii__tracev3_subchunk_preamble_s_II__tracev3_subchunk_timezone_s__48c____tracev3_chunk_catalog_s_SSSS_0C___tracev3_chunk_catalog_v2_s_SSSSS_3S_Q_0C___tracev3_chunk_log_preamble_s_QIC_3C___tracev3_chunk_firehose_s_QICC_2C__0C___tracev3_chunk_firehose_old_s_QiCC_0C___tracev3_chunk_oversize_s_QIC_3C_QISS_0C___tracev3_chunk_oversize_old_s_QISS_0C___tracev3_chunk_statedump_s_QIC_3C_QQ_16C__0C___tracev3_chunk_simple_s_QICC_2C_QQQ_16C__16C__0C___0C___8l;
  v11 = a3;
  v5 = v8;
  v6 = 0;
  do
  {
    if (a2 - v6 < 0x10)
    {
      break;
    }

    v7 = *(a1 + v6 + 8);
    if (a2 - v6 - 16 < v7)
    {
      break;
    }

    if (!(v9)(v5))
    {
      break;
    }

    v6 = (v6 + v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  }

  while (v6 - 1 < a2);
}

void _OSLogWarningMessage(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = a1;
    vsnprintf(__str, 0x100uLL, a2, &a9);
    v10[2](v10, __str);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t OSLogCreateArchive(const char *a1, uint64_t a2, int64_t a3, BOOL a4, void *a5)
{
  v9 = a5;
  v10 = _InitArchiveDictionary(a1, a2, a3, a4);
  ArchiveWithDictionary = OSLogCreateArchiveWithDictionary(v10, v9);

  return ArchiveWithDictionary;
}

id _InitArchiveDictionary(const char *a1, uint64_t a2, int64_t a3, BOOL a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "path", a1);
  if (a2)
  {
    xpc_dictionary_set_uint64(v8, "base_size", a2);
  }

  xpc_dictionary_set_int64(v8, "base_time", a3);
  xpc_dictionary_set_BOOL(v8, "livedata", a4);

  return v8;
}

uint64_t OSLogCreateArchiveWithDictionary(void *a1, void *a2)
{
  v75[5] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  string = xpc_dictionary_get_string(v3, "path");
  if (string)
  {
    v6 = string;
  }

  else
  {
    v6 = ".";
  }

  v73 = 0;
  if (strcasestr(v6, ".logarchive"))
  {
    v7 = strdup(v6);
    v73 = v7;
  }

  else
  {
    asprintf(&v73, "%s/system_logs.logarchive", v6);
    v7 = v73;
  }

  v8 = mkdir(v7, 0x1FFu);
  v9 = v73;
  if (!v8)
  {
    v18 = open(v73, 0);
    if (v18 == -1)
    {
      v21 = v73;
      v22 = __error();
      strerror(*v22);
      v68 = *__error();
      _OSLogWarningMessage(v4, "failed to open directory: %s: %s (%d)", v23, v24, v25, v26, v27, v28, v21);
      goto LABEL_9;
    }

    v19 = v18;
    if (xpc_dictionary_get_int64(v3, "base_time") < 1)
    {
      int64 = 0;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v3, "base_time");
    }

    if (xpc_dictionary_get_uint64(v3, "ttl_time") < 1)
    {
      uint64 = 0;
    }

    else
    {
      uint64 = xpc_dictionary_get_uint64(v3, "ttl_time");
    }

    if (xpc_dictionary_get_uint64(v3, "sp_time") < 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = xpc_dictionary_get_uint64(v3, "sp_time");
    }

    if (xpc_dictionary_get_uint64(v3, "hv_time") <= 0)
    {
      if (uint64)
      {
        v33 = uint64;
      }

      else
      {
        v33 = int64;
      }

      if (v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = int64;
      }
    }

    else
    {
      v31 = xpc_dictionary_get_uint64(v3, "hv_time");
      v32 = v31;
      if (uint64)
      {
        v33 = uint64;
      }

      else
      {
        v33 = int64;
      }

      if (v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = int64;
      }

      if (v31)
      {
        if (int64)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }
    }

    v32 = int64;
    if (int64)
    {
      goto LABEL_41;
    }

LABEL_38:
    if (xpc_dictionary_get_uint64(v3, "base_time") < 1)
    {
      int64 = 0;
    }

    else
    {
      int64 = xpc_dictionary_get_uint64(v3, "base_time");
    }

LABEL_41:
    v35 = xpc_dictionary_get_value(v3, "livedata");
    v36 = &unk_2841B91E0;
    if (v35 && !xpc_dictionary_get_BOOL(v3, "livedata"))
    {
      v36 = &unk_2841B91F8;
    }

    v74[0] = _OSLogConstructPersistStart;
    v37 = [MEMORY[0x277CCABB0] numberWithLong:int64];
    v75[0] = v37;
    v74[1] = _OSLogConstructSpecialStart;
    v38 = [MEMORY[0x277CCABB0] numberWithLong:v33];
    v75[1] = v38;
    v74[2] = _OSLogConstructSignpostStart;
    v39 = [MEMORY[0x277CCABB0] numberWithLong:v34];
    v75[2] = v39;
    v74[3] = _OSLogConstructHighVolumeStart;
    v40 = [MEMORY[0x277CCABB0] numberWithLong:v32];
    v74[4] = @"_OSLogConstructSkipMemoryStores";
    v75[3] = v40;
    v75[4] = v36;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:5];
    v42 = [v41 mutableCopy];

    v43 = xpc_dictionary_get_value(v3, "base_size");

    if (v43)
    {
      v44 = xpc_dictionary_get_uint64(v3, "base_size");
      v45 = [MEMORY[0x277CCABB0] numberWithLong:v44];
      [v42 setObject:v45 forKeyedSubscript:OSLogConstructPersistSizeLimit];
    }

    else
    {
      v44 = -1;
    }

    v46 = xpc_dictionary_get_value(v3, "ttl_size");

    if (v46)
    {
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{xpc_dictionary_get_uint64(v3, "ttl_size")}];
    }

    else
    {
      if (v44 == -1)
      {
        goto LABEL_52;
      }

      v47 = [MEMORY[0x277CCABB0] numberWithLong:v44];
    }

    v48 = v47;
    [v42 setObject:v47 forKeyedSubscript:OSLogConstructSpecialSizeLimit];

LABEL_52:
    v49 = xpc_dictionary_get_value(v3, "sp_size");

    if (v49)
    {
      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{xpc_dictionary_get_uint64(v3, "sp_size")}];
    }

    else
    {
      if (v44 == -1)
      {
        goto LABEL_57;
      }

      v50 = [MEMORY[0x277CCABB0] numberWithLong:v44];
    }

    v51 = v50;
    [v42 setObject:v50 forKeyedSubscript:OSLogConstructSignpostSizeLimit];

LABEL_57:
    v52 = xpc_dictionary_get_value(v3, "hv_size");

    if (v52)
    {
      v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{xpc_dictionary_get_uint64(v3, "hv_size")}];
    }

    else
    {
      if (v44 == -1)
      {
        goto LABEL_62;
      }

      v53 = [MEMORY[0x277CCABB0] numberWithLong:v44];
    }

    v54 = v53;
    [v42 setObject:v53 forKeyedSubscript:OSLogConstructHighVolumeSizeLimit];

LABEL_62:
    v55 = xpc_dictionary_get_string(v3, "predicate");
    if (v55)
    {
      v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:v55];
      [v42 setObject:v56 forKeyedSubscript:@"OSLogConstructPredicate"];

      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:v73];
      [v42 setObject:v57 forKeyedSubscript:@"OSLogConstructTargetDir"];
    }

    free(v73);
    v58 = getenv("SUDO_UID");
    v59 = getenv("SUDO_GID");
    v60 = 0;
    if (v58)
    {
      v61 = v59;
      v62 = 0;
      if (v59)
      {
        v60 = strtoul(v58, 0, 10);
        v62 = strtoul(v61, 0, 10);
      }
    }

    else
    {
      v62 = 0;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __OSLogCreateArchiveWithDictionary_block_invoke;
    aBlock[3] = &unk_2787AE908;
    v63 = v4;
    aBlock[4] = v63;
    v70 = v19;
    v71 = v60;
    v72 = v62;
    v64 = _Block_copy(aBlock);
    OSLogConstructArchive(v42, v63, v64);
  }

  v10 = __error();
  strerror(*v10);
  v67 = *__error();
  _OSLogWarningMessage(v4, "failed to create directory: %s: %s (%d)", v11, v12, v13, v14, v15, v16, v9);
LABEL_9:
  free(v73);
  v17 = *__error();

  v65 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __OSLogCreateArchiveWithDictionary_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2;
  v70 = *MEMORY[0x277D85DE8];
  memset(&v68, 0, sizeof(v68));
  if (fstat(a2, &v68))
  {
    v6 = *__error();
    if (fcntl(v4, 50, v69) == -1)
    {
      v56 = *__error();
      _os_assumes_log();
    }

    v7 = *(a1 + 32);
    strerror(v6);
    _OSLogWarningMessage(v7, "unable to stat temp fd: %s: %s (%d)", v8, v9, v10, v11, v12, v13, v69);
    goto LABEL_41;
  }

  if (*a3 == 46 && !*(a3 + 1))
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 40);
  if ((v68.st_mode & 0xF000) != 0x4000)
  {
    v24 = openat(v14, a3, 2562, 420);
    if (v24 == -1)
    {
      goto LABEL_22;
    }

    v25 = v24;
    if (!fcopyfile(v4, v24, 0, 0xEu))
    {
      if (*(a1 + 44) && fchown(v25, *(a1 + 44), *(a1 + 48)) == -1)
      {
        v62 = *__error();
        _os_assumes_log();
      }

      if (close(v25) != -1)
      {
        goto LABEL_40;
      }

      v57 = *__error();
      v58 = *__error();
      if (v57 != 9)
      {
        goto LABEL_39;
      }

      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = v58;
      __break(1u);
LABEL_31:
      if (!*(a1 + 44) || fchown(*(a1 + 40), *(a1 + 44), *(a1 + 48)) != -1)
      {
        goto LABEL_40;
      }

      v59 = *__error();
LABEL_39:
      _os_assumes_log();
LABEL_40:
      v6 = 0;
      goto LABEL_41;
    }

    v4 = *__error();
    v6 = v4;
    a1 = *(a1 + 32);
    strerror(v4);
    _OSLogWarningMessage(a1, "failed to copyfile: %s: %s (%d)", v26, v27, v28, v29, v30, v31, a3);
    if (close(v25) != -1)
    {
LABEL_41:
      v61 = *MEMORY[0x277D85DE8];
      return v6;
    }

    v32 = *__error();
    v33 = *__error();
    if (v32 != 9)
    {
LABEL_21:
      _os_assumes_log();
      goto LABEL_41;
    }

    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_27DA527A8 = v33;
    __break(1u);
LABEL_15:
    if (fcopyfile(v4, *(a1 + 40), 0, 4u))
    {
      v34 = *(a1 + 32);
      v35 = __error();
      v36 = strerror(*v35);
      v65 = *__error();
      _OSLogWarningMessage(v34, "failed to copyfile on root node: %s (%d)", v37, v38, v39, v40, v41, v42, v36);
LABEL_24:
      v6 = *__error();
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (mkdirat(v14, a3, 0x1FFu))
  {
    v15 = *(a1 + 32);
    v16 = __error();
    strerror(*v16);
    v66 = *__error();
    v64 = a3;
    v23 = "failed to mkdir: %s: %s (%d)";
LABEL_23:
    _OSLogWarningMessage(v15, v23, v17, v18, v19, v20, v21, v22, v64);
    goto LABEL_24;
  }

  v43 = openat(*(a1 + 40), a3, 0);
  if (v43 == -1)
  {
LABEL_22:
    v15 = *(a1 + 32);
    v55 = __error();
    strerror(*v55);
    v67 = *__error();
    v64 = a3;
    v23 = "failed to open: %s: %s (%d)";
    goto LABEL_23;
  }

  v44 = v43;
  if (!fcopyfile(v4, v43, 0, 4u))
  {
    if (*(a1 + 44) && fchown(v44, *(a1 + 44), *(a1 + 48)) == -1)
    {
      v63 = *__error();
      _os_assumes_log();
    }

    if (close(v44) != -1)
    {
      goto LABEL_40;
    }

    v60 = *__error();
    result = *__error();
    if (v60 == 9)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v45 = __error();
  v6 = *v45;
  v46 = *(a1 + 32);
  strerror(*v45);
  _OSLogWarningMessage(v46, "failed to copyfile: %s: %s (%d)", v47, v48, v49, v50, v51, v52, a3);
  if (close(v44) != -1)
  {
    goto LABEL_41;
  }

  v53 = *__error();
  result = *__error();
  if (v53 != 9)
  {
    goto LABEL_21;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
LABEL_43:
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

void OSLogConstructArchive(void *a1, void *a2, void *a3)
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v64 = a2;
  a3;
  v6 = [v5 objectForKey:@"OSLogConstructPredicate"];
  [v5 objectForKey:@"OSLogConstructTargetDir"];
  objc_claimAutoreleasedReturnValue();
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v7 = 0x277CCA000;
  if (v6)
  {
    goto LABEL_44;
  }

  v70 = v64;
  is_development_build = _os_trace_is_development_build();
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_prefsdir_path()];
  v92 = v9;
  if (is_development_build)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_intprefsdir_path()];
    v93 = v10;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_sysprefsdir_path()];
    v94 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:3];
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_sysprefsdir_path()];
    v93 = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:2];
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v12;
  v72 = [obj countByEnumeratingWithState:&v88 objects:v87 count:16];
  if (!v72)
  {
LABEL_41:
    v6 = 0;
    goto LABEL_43;
  }

  v71 = *v89;
  v67 = *MEMORY[0x277CCA050];
  key = *MEMORY[0x277CBEC70];
LABEL_7:
  v76 = 0;
  while (1)
  {
    if (*v89 != v71)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v88 + 1) + 8 * v76);
    v14 = MEMORY[0x277CBEBC0];
    v86[0] = v13;
    v86[1] = @"com.apple.LoggingSupport.collect_override.plist";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
    v75 = [v14 fileURLWithPathComponents:v15];

    v79 = 0;
    v73 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v75 error:&v79];
    v16 = v79;
    v74 = v16;
    if (!v16)
    {
      break;
    }

    v17 = [v16 domain];
    v18 = v17;
    if (v17 != v67)
    {

LABEL_34:
      v52 = v13;
      v53 = [v13 UTF8String];
      v54 = [v74 description];
      v55 = v54;
      [v54 UTF8String];
      _OSLogWarningMessage(v70, "Unable to read plist %s: %s", v56, v57, v58, v59, v60, v61, v53);

      goto LABEL_39;
    }

    v51 = [v74 code] == 260;

    if (!v51)
    {
      goto LABEL_34;
    }

LABEL_39:

    if (++v76 == v72)
    {
      v72 = [obj countByEnumeratingWithState:&v88 objects:v87 count:16];
      if (!v72)
      {
        goto LABEL_41;
      }

      goto LABEL_7;
    }
  }

  v78 = v70;
  v69 = v73;
  v25 = [v69 valueForKeyPath:@"Events"];
  v68 = v25;
  if (v25)
  {
    v26 = _CFCopySupplementalVersionDictionary();
    v27 = v26;
    if (v26)
    {
      v77 = CFDictionaryGetValue(v26, key);
      CFRelease(v27);
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v28 = v25;
      v29 = 0;
      v30 = [v28 countByEnumeratingWithState:&v95 objects:buf count:16];
      if (v30)
      {
        v31 = *v96;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v96 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v95 + 1) + 8 * i);
            v40 = [v33 valueForKeyPath:@"Predicates"];
            if (v40)
            {
              v47 = [v33 valueForKeyPath:@"Builds"];
              if (v47)
              {
                v63 = v77;
                v48 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@"];
                v49 = [v47 filteredArrayUsingPredicate:v48];
                if ([v49 count])
                {
                  if (v29)
                  {
                    v63 = v29;
                    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ && %@"];

                    v29 = v50;
                  }

                  else
                  {
                    v29 = v40;
                  }
                }
              }

              else
              {
              }
            }

            else
            {
              _OSLogWarningMessage(v78, "Unable to find local predicates. Please make sure you use the 'Predicates' key.", v34, v35, v36, v37, v38, v39, v63);
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v95 objects:buf count:16];
        }

        while (v30);
      }

LABEL_38:
      v6 = v29;

      if (v6)
      {

LABEL_43:
        v7 = 0x277CCA000uLL;
        if (v6)
        {
LABEL_44:
          [*(v7 + 3120) predicateWithFormat:v6 argumentArray:MEMORY[0x277CBEBF8]];
          objc_claimAutoreleasedReturnValue();
        }

        operator new();
      }

      goto LABEL_39;
    }

    v62 = "Unable to identify build version. Quitting";
  }

  else
  {
    v62 = "Unable to find local events. Please make sure you use the 'Events' key";
  }

  _OSLogWarningMessage(v78, v62, v19, v20, v21, v22, v23, v24, v63);
  v77 = 0;
  v29 = 0;
  goto LABEL_38;
}

uint64_t _OSLogCreateTempDirectory(void *a1, mode_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (issetugid())
  {
    v4 = 0;
  }

  else
  {
    v4 = getenv("TMPDIR");
  }

  v5 = "/tmp";
  if (v4)
  {
    v5 = v4;
  }

  snprintf(__str, 0x400uLL, "%s/oslogarchive.XXXXXX", v5);
  if (!mkdtemp(__str))
  {
    v18 = *__error();
    v19 = __error();
    strerror(*v19);
    _OSLogWarningMessage(v3, "failed to create temporary directory: %d (%s)", v20, v21, v22, v23, v24, v25, v18);
    goto LABEL_16;
  }

  v6 = open(__str, 2048);
  if (v6 == -1)
  {
    v26 = *__error();
    v27 = __error();
    strerror(*v27);
    _OSLogWarningMessage(v3, "failed to open temporary directory: %s (%d - %s)", v28, v29, v30, v31, v32, v33, __str);
    goto LABEL_16;
  }

  v7 = v6;
  if (rmdir(__str) == -1)
  {
    v35 = *__error();
    _os_assumes_log();
  }

  if (!fchmod(v7, a2))
  {
    goto LABEL_17;
  }

  v8 = __error();
  strerror(*v8);
  v36 = *__error();
  _OSLogWarningMessage(v3, "failed to set permissions: %s: %s (%d)", v9, v10, v11, v12, v13, v14, __str);
  if (close(v7) != -1)
  {
LABEL_16:
    v7 = 0xFFFFFFFFLL;
LABEL_17:

    v34 = *MEMORY[0x277D85DE8];
    return v7;
  }

  v15 = *__error();
  result = *__error();
  if (v15 != 9)
  {
    _os_assumes_log();
    v17 = *__error();
    _os_assumes_log();
    goto LABEL_16;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

uint64_t OSLogStateCaptureForAllPIDs(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = a1;
  *v28 = xmmword_22E081720;
  v27 = 0;
  v2 = sysctl(v28, 4u, 0, &v27, 0, 0);
  if (v2)
  {
    v9 = v2;
    _OSLogWarningMessage(v1, "Failed to get process list length", v3, v4, v5, v6, v7, v8, v26);
  }

  else
  {
    v10 = _os_trace_malloc_typed();
    v9 = sysctl(v28, 4u, v10, &v27, 0, 0);
    if (v9)
    {
      _OSLogWarningMessage(v1, "Failed to get process list", v11, v12, v13, v14, v15, v16, v26);
      v17 = 0;
    }

    else
    {
      v18 = v27;
      v19 = v27 / 0x288;
      v20 = _os_trace_calloc_typed();
      v17 = v20;
      if (v18 >= 0x288)
      {
        v21 = v10 + 10;
        v22 = v20;
        v23 = v19;
        do
        {
          *v22++ = *v21;
          v21 += 162;
          --v23;
        }

        while (v23);
      }

      _os_state_request_for_pidlist();
      usleep(0x16E360u);
    }

    free(v10);
    free(v17);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t _OSLogCopyTraceFile(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v178 = *MEMORY[0x277D85DE8];
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = _os_trace_mmap();
  v19 = v18;
  if (v18)
  {
    if (*v18 == 4096 && *(v18 + 8) > 0x27uLL)
    {
      v20 = _os_trace_uuid_map_lookup(*a3, (v18 + 144));
      if (!v20)
      {
        v31 = 0;
LABEL_14:
        if (munmap(v19, 0) == -1)
        {
          v39 = *__error();
          _os_assumes_log();
        }

        goto LABEL_21;
      }

      v21 = v20;
      v22 = tmpfile();
      if (v22)
      {
        v23 = v22;
        fd = fileno(v22);
        if (v16)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
          v25 = [v24 lastPathComponent];

          v133 = v25;
          v130 = v15;
          v26 = v16;
          v128 = v17;
          v158 = 0;
          v159 = &v158;
          v160 = 0x3032000000;
          v161 = __Block_byref_object_copy__2986;
          v162 = __Block_byref_object_dispose__2987;
          v163 = 0;
          v156[0] = 0;
          v156[1] = v156;
          v156[2] = 0x3032000000;
          v156[3] = __Block_byref_object_copy__2986;
          v156[4] = __Block_byref_object_dispose__2987;
          v127 = v26;
          v157 = v127;
          v154[0] = 0;
          v154[1] = v154;
          v154[2] = 0x2020000000;
          v155 = 0;
          v176 = 0;
          v175 = 0;
          v173 = 0u;
          v174 = 0u;
          v171 = 0u;
          v172 = 0u;
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          *&value = 0;
          v177 = a10;
          *(&value + 1) = -1;
          DWORD1(v172) = 0x10000;
          *(&v171 + 1) = _os_trace_malloc_typed();
          *(&v173 + 1) = 0;
          *&v174 = v19;
          LODWORD(v175) = fd;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = ___OSLogCopyTraceFile_implWithRepack_block_invoke;
          aBlock[3] = &unk_2787AE980;
          aBlock[4] = v156;
          aBlock[5] = &value;
          v27 = _Block_copy(aBlock);
          v28 = *(&v172 + 1);
          *(&v172 + 1) = v27;

          v141 = MEMORY[0x277D85DD0];
          v142 = 3221225472;
          v143 = ___OSLogCopyTraceFile_implWithRepack_block_invoke_2;
          v144 = &unk_2787AE9A8;
          v150 = v19;
          p_value = &value;
          v148 = &v158;
          v131 = v130;
          v147 = v131;
          v149 = v154;
          v129 = v128;
          v145 = v129;
          v134 = v133;
          v146 = v134;
          v152 = a3;

          if (*(&v165 + 1) && (v29 = (v159 + 5), obj = v159[5], v30 = _repack_ttl_compact_close_catalog(&value, &obj), objc_storeStrong(v29, obj), (v30 & 1) == 0))
          {
            v85 = [v159[5] userInfo];
            v86 = [v85 description];
            v87 = v86;
            v88 = [v86 UTF8String];
            _OSLogWarningMessage(v131, "failed to close catalog: %s", v89, v90, v91, v92, v93, v94, v88);

            v31 = 0;
          }

          else
          {
            v31 = v176;
          }

          _repack_context_cleanup(&value);

          _Block_object_dispose(v154, 8);
          _Block_object_dispose(v156, 8);

          _Block_object_dispose(&v158, 8);
        }

        else
        {
          v132 = *(a10 + 16);
          v58 = v14;
          v59 = v15;
          v141 = 0;
          v142 = &v141;
          v143 = 0x2020000000;
          v144 = 0;
          v135 = v59;
          if (v21 <= 1 && v19[1] > 0x10u)
          {
            *&value = MEMORY[0x277D85DD0];
            *(&value + 1) = 3221225472;
            *&v165 = ___OSLogCopyTraceFile_impl_block_invoke;
            *(&v165 + 1) = &unk_2787AE958;
            v167 = a3;
            *&v168 = v19;
            *(&v168 + 1) = v19;
            *&v169 = v132;
            v95 = v59;
            *(&v169 + 1) = a2;
            *&v170 = __PAIR64__(fd, a1);
            *&v166 = v95;
            *(&v166 + 1) = &v141;

            v31 = *(v142 + 24);
          }

          else
          {
            v60 = _OSLogUUIDMapAddFromFile(v19, 0, v132, v59);
            if (v60)
            {
              if (fcntl(a1, 50, &value) == -1)
              {
                v61 = *__error();
                _os_assumes_log();
              }

              strerror(v60);
              _OSLogWarningMessage(v135, "failed to index uuids: '%s' to '%s': %s (%d)", v62, v63, v64, v65, v66, v67, &value);
            }

            *(v142 + 24) = 0;
            if (_OSLogFileFindExhaustivePoint(a1, a4, a5) && *__error() != 2)
            {
              v68 = *__error();
              if (fcntl(a1, 50, &value) == -1)
              {
                v69 = *__error();
                _os_assumes_log();
              }

              strerror(v68);
              _OSLogWarningMessage(v135, "failed to find sparse boundary: %s: %s (%d)", v70, v71, v72, v73, v74, v75, &value);
              *(v142 + 24) = 0;
            }

            if (*(v142 + 24))
            {
              if (lseek(a1, 0, 0) == -1)
              {
                v76 = *__error();
                _os_assumes_log();
              }

              v77 = v58[2](v58, a1, a2);
              if (v77)
              {
                if (fcntl(a1, 50, &value) == -1)
                {
                  v78 = *__error();
                  _os_assumes_log();
                }

                strerror(v77);
                _OSLogWarningMessage(v135, "failed copy: '%s' to '%s': %s (%d)", v79, v80, v81, v82, v83, v84, &value);
                v31 = -1;
                *(v142 + 24) = -1;
              }

              else
              {
                v31 = *(v142 + 24);
              }
            }

            else
            {
              v31 = 0;
            }
          }

          _Block_object_dispose(&v141, 8);
        }

        if ((v31 & 0x8000000000000000) == 0 && lseek(fd, 0, 2) >= 1)
        {
          if (_OSLogFileFindExhaustivePoint(fd, a4, a5) && *__error() != 2)
          {
            v96 = *__error();
            if (fcntl(a1, 50, &value) == -1)
            {
              v97 = *__error();
              _os_assumes_log();
            }

            strerror(v96);
            _OSLogWarningMessage(v15, "failed to find sparse boundary: %s: %s (%d)", v98, v99, v100, v101, v102, v103, &value);
            v31 = -1;
          }

          v158 = 0;
          v104 = _os_trace_mmap();
          v105 = v104;
          if (v104)
          {
            value = 0u;
            *&v165 = 0;
            LODWORD(value) = 1;
            *(&v165 + 1) = -1;
            *&v166 = 0;
            _OSLogGenerateXattrs(v104, v158, &value);
            if (munmap(v105, v158) == -1)
            {
              v106 = *__error();
              _os_assumes_log();
            }

            if (fsetxattr(fd, "com.apple.logd.metadata", &value, 0x28uLL, 0, 0) == -1)
            {
              v107 = *__error();
              _os_assumes_log();
            }
          }

          if (fcopyfile(a1, fd, 0, 2u))
          {
            v108 = *__error();
            if (fcntl(a1, 50, &value) == -1)
            {
              v109 = *__error();
              _os_assumes_log();
            }

            strerror(v108);
            _OSLogWarningMessage(v15, "fcopyfile (stat only): '%s' to '%s': %s (%d)", v110, v111, v112, v113, v114, v115, &value);
            v31 = -1;
          }

          if (lseek(fd, 0, 0) == -1)
          {
            v116 = *__error();
            _os_assumes_log();
          }

          v117 = (*(v14 + 2))(v14, fd, a2);
          if (v117)
          {
            if (fcntl(a1, 50, &value) == -1)
            {
              v118 = *__error();
              _os_assumes_log();
            }

            strerror(v117);
            _OSLogWarningMessage(v15, "copy handler failed: '%s' to '%s': %s (%d)", v119, v120, v121, v122, v123, v124, &value);
            v31 = -1;
          }
        }

        if (fclose(v23) == -1)
        {
          v125 = *__error();
          _os_assumes_log();
        }

        goto LABEL_14;
      }

      v50 = __error();
      v51 = strerror(*v50);
      v126 = *__error();
      _OSLogWarningMessage(v15, "failed to create tmpfile: %s (%d)", v52, v53, v54, v55, v56, v57, v51);
    }

    else
    {
      if (fcntl(a1, 50, &value) == -1)
      {
        v38 = *__error();
        _os_assumes_log();
      }

      _OSLogWarningMessage(v15, "File started with invalid header: '%s'", v32, v33, v34, v35, v36, v37, &value);
    }

    v31 = -1;
    goto LABEL_14;
  }

  v40 = *__error();
  if (v40 == 34)
  {
    v31 = 0;
  }

  else
  {
    if (fcntl(a1, 50, &value) == -1)
    {
      v41 = *__error();
      _os_assumes_log();
    }

    strerror(v40);
    _OSLogWarningMessage(v15, "could not mmap(): %s: %s (%d)", v42, v43, v44, v45, v46, v47, &value);
    v31 = -1;
  }

LABEL_21:

  v48 = *MEMORY[0x277D85DE8];
  return v31;
}

int *_OSLogCopyBook(int a1, const char *a2, uint64_t a3, char *a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v76 = *MEMORY[0x277D85DE8];
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

  v20 = openat(a1, a2, 0);
  if (v20 == -1)
  {
    v32 = *__error();
    *(v68 + 6) = v32;
    if (v32 != 2)
    {
      strerror(v32);
      _OSLogWarningMessage(v19, "failed to open '%s': %s", v34, v35, v36, v37, v38, v39, a2);
      goto LABEL_19;
    }

LABEL_14:
    v33 = 0;
LABEL_20:
    _Block_object_dispose(&v67, 8);

    v40 = *MEMORY[0x277D85DE8];
    return v33;
  }

  TempDirectory = _OSLogCreateTempDirectory(v19, 0x1FFu);
  if (TempDirectory == -1)
  {
    *(v68 + 6) = *__error();
    if (close(v20) != -1)
    {
      goto LABEL_19;
    }

    if (*__error() != 9)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

  v22 = (*(v18 + 2))(v18, TempDirectory, a2);
  *(v68 + 6) = v22;
  if (v22)
  {
    if (fcntl(TempDirectory, 50, &v72) == -1)
    {
      v23 = *__error();
      _os_assumes_log();
    }

    strerror(*(v68 + 6));
    v49 = *(v68 + 6);
    _OSLogWarningMessage(v19, "copy handler failed for directory fd: '%s' to '%s': %s (%d)", v24, v25, v26, v27, v28, v29, &v72);
    if (close(v20) == -1)
    {
      if (*__error() == 9)
      {
        v44 = *__error();
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = v44;
        __break(1u);
LABEL_31:
        v45 = *__error();
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = v45;
        __break(1u);
LABEL_32:
        v46 = *__error();
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = v46;
        __break(1u);
        goto LABEL_33;
      }

      v30 = *__error();
      _os_assumes_log();
    }

    if (close(TempDirectory) != -1)
    {
LABEL_19:
      v33 = *(v68 + 6);
      goto LABEL_20;
    }

    if (*__error() != 9)
    {
LABEL_12:
      v31 = *__error();
      _os_assumes_log();
      goto LABEL_19;
    }

    goto LABEL_31;
  }

  v71[0] = 0;
  v71[1] = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = ___OSLogCopyBook_block_invoke;
  v50[3] = &unk_2787AE9D0;
  v59 = a4;
  v60 = v71;
  v58 = a2;
  v55 = &v72;
  v53 = v18;
  v54 = v19;
  v51 = v16;
  v52 = v17;
  v56 = &v63;
  v61 = a7;
  v62 = a3;
  v57 = &v67;
  _OSLogEnumerateFiles(v54, v20, v50);
  if (close(TempDirectory) == -1)
  {
    if (*__error() == 9)
    {
LABEL_33:
      v47 = *__error();
      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = v47;
      __break(1u);
      goto LABEL_34;
    }

    v42 = *__error();
    _os_assumes_log();
  }

  if (close(v20) != -1)
  {
LABEL_27:
    if (v64[3] >= 1)
    {
      _timesync_range_intersect(a4, v71, v73[3], 0, 0);
    }

    v33 = *(v68 + 6);

    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&v72, 8);
    goto LABEL_20;
  }

  if (*__error() != 9)
  {
    v43 = *__error();
    _os_assumes_log();
    goto LABEL_27;
  }

LABEL_34:
  result = __error();
  v48 = *result;
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v48;
  __break(1u);
  return result;
}

void sub_22E055A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

int *_OSLogCopyDirectory(int a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v42[128] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  TempDirectory = _OSLogCreateTempDirectory(v10, 0x1FFu);
  if (TempDirectory == -1)
  {
    v22 = *__error();
    *(v39 + 6) = v22;
    goto LABEL_14;
  }

  v12 = v9[2](v9, TempDirectory, a2);
  v13 = v39;
  *(v39 + 6) = v12;
  if (!v12)
  {
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v42[3] = 0;
    *(v13 + 6) = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = ___OSLogCopyDirectory_block_invoke;
    v29[3] = &unk_2787AE9F8;
    v37 = a5;
    v34 = a2;
    v32 = &v38;
    v30 = v9;
    v36 = TempDirectory;
    v31 = v10;
    v33 = v42;
    v35 = 0;
    _OSLogEnumerateFiles(v31, a1, v29);
    if (close(TempDirectory) == -1)
    {
      if (*__error() == 9)
      {
        goto LABEL_16;
      }

      v23 = *__error();
      _os_assumes_log();
    }

    v22 = *(v39 + 6);

    _Block_object_dispose(v42, 8);
    goto LABEL_14;
  }

  if (fcntl(TempDirectory, 50, v42) == -1)
  {
    v14 = *__error();
    _os_assumes_log();
  }

  strerror(*(v39 + 6));
  v28 = *(v39 + 6);
  _OSLogWarningMessage(v10, "copy handler failed for directory fd: '%s' to '%s': %s (%d)", v15, v16, v17, v18, v19, v20, v42);
  if (close(TempDirectory) != -1)
  {
    goto LABEL_8;
  }

  if (*__error() != 9)
  {
    v21 = *__error();
    _os_assumes_log();
LABEL_8:
    v22 = *(v39 + 6);
LABEL_14:
    _Block_object_dispose(&v38, 8);

    v24 = *MEMORY[0x277D85DE8];
    return v22;
  }

  v26 = *__error();
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v26;
  __break(1u);
LABEL_16:
  result = __error();
  v27 = *result;
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v27;
  __break(1u);
  return result;
}

void sub_22E055D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t _OSLogUUIDMapCopySet(int a1, uint64_t a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v17 = ___OSLogUUIDMapCopySet_block_invoke;
  v18 = &unk_2787AEA20;
  v23 = a1;
  v21 = &v28;
  v22 = &v24;
  v9 = v7;
  v19 = v9;
  v10 = v8;
  v20 = v10;
  v11 = *(a2 + 16);
  if (v11)
  {
    do
    {
      v17(v16, v11 + 16, *(v11 + 4));
      v11 = *v11;
    }

    while (v11);
    v12 = v25[3];
  }

  else
  {
    v12 = 0;
  }

  _os_trace_str_map_destroy(v12);
  v13 = *(v29 + 6);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t _OSLogArchiveCreateInfoPlist(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v159 = *MEMORY[0x277D85DE8];
  v14 = a1;
  v120 = a8;
  v119 = a9;
  v117 = a2;
  if (*a2)
  {
    v15 = *(*a2 + 24) - 1;
  }

  else
  {
    v15 = -1;
  }

  v115 = v15;
  memset(out, 0, 37);
  memset(v157, 0, 37);
  uuid_unparse_upper((a3 + 24), out);
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = [v14 objectForKeyedSubscript:@"ttl01"];

  if (v17)
  {
    v18 = [v14 objectForKeyedSubscript:@"ttl01"];
    [v16 setObject:v18 forKeyedSubscript:@"ttl01"];
  }

  v19 = [v14 objectForKeyedSubscript:@"ttl03"];

  if (v19)
  {
    v20 = [v14 objectForKeyedSubscript:@"ttl03"];
    [v16 setObject:v20 forKeyedSubscript:@"ttl03"];
  }

  v21 = [v14 objectForKeyedSubscript:@"ttl07"];

  if (v21)
  {
    v22 = [v14 objectForKeyedSubscript:@"ttl07"];
    [v16 setObject:v22 forKeyedSubscript:@"ttl07"];
  }

  v23 = [v14 objectForKeyedSubscript:@"ttl14"];

  if (v23)
  {
    v24 = [v14 objectForKeyedSubscript:@"ttl14"];
    [v16 setObject:v24 forKeyedSubscript:@"ttl14"];
  }

  v25 = [v14 objectForKeyedSubscript:@"ttl30"];

  if (v25)
  {
    v26 = [v14 objectForKeyedSubscript:@"ttl30"];
    [v16 setObject:v26 forKeyedSubscript:@"ttl30"];
  }

  v129 = v16;
  v121 = v14;
  v130 = [v14 objectForKeyedSubscript:@"Identifier"];
  if (!v130)
  {
    v27 = [MEMORY[0x277CCAD78] UUID];
    v130 = [v27 UUIDString];
  }

  v155[0] = @"OldestTimeRef";
  v153[0] = @"UUID";
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
  v154[0] = v28;
  v153[1] = @"ContinuousTime";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 8)];
  v154[1] = v29;
  v153[2] = @"WallTime";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(a10, (a3 + 24), *(a3 + 8), 0)}];
  v154[2] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v153 count:3];
  v155[1] = @"TTL";
  v156[0] = v31;
  v156[1] = v16;
  v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:2];

  uuid_unparse_upper((a4 + 24), out);
  v151 = @"OldestTimeRef";
  v149[0] = @"UUID";
  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
  v150[0] = v32;
  v149[1] = @"ContinuousTime";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a4 + 8)];
  v150[1] = v33;
  v149[2] = @"WallTime";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(a10, (a4 + 24), *(a4 + 8), 0)}];
  v150[2] = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:3];
  v152 = v35;
  v127 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v152 forKeys:&v151 count:1];

  uuid_unparse_upper((a5 + 24), out);
  v147 = @"OldestTimeRef";
  v145[0] = @"UUID";
  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
  v146[0] = v36;
  v145[1] = @"ContinuousTime";
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a5 + 8)];
  v146[1] = v37;
  v145[2] = @"WallTime";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(a10, (a5 + 24), *(a5 + 8), 0)}];
  v146[2] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:3];
  v148 = v39;
  v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];

  if (a6)
  {
    uuid_unparse_upper((a6 + 24), out);
    v143 = @"OldestTimeRef";
    v141[0] = @"UUID";
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
    v142[0] = v40;
    v141[1] = @"ContinuousTime";
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a6 + 8)];
    v142[1] = v41;
    v141[2] = @"WallTime";
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(a10, (a6 + 24), *(a6 + 8), 0)}];
    v142[2] = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:3];
    v144 = v43;
    v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
  }

  else
  {
    v123 = [MEMORY[0x277CBEAC0] dictionary];
  }

  uuid_unparse_upper((v117 + 24), out);
  v44 = (v117 + 24 + 16 * v115);
  uuid_unparse_upper(v44, v157);
  v140[0] = &unk_2841B9210;
  v139[0] = @"OSArchiveVersion";
  v139[1] = @"OSLoggingSupportProject";
  v45 = strdup("libtrace-1815.40.20\n");
  if (v45)
  {
    v46 = v45;
    v47 = a10;
    v48 = strchr(v45, 10);
    if (v48)
    {
      *v48 = 0;
    }

    v49 = objc_alloc(MEMORY[0x277CCACA8]);
    v50 = strlen(v46);
    v51 = v49;
    v52 = 0x277CCA000;
    v45 = [v51 initWithBytesNoCopy:v46 length:v50 encoding:4 freeWhenDone:1];
  }

  else
  {
    v47 = a10;
    v52 = 0x277CCA000uLL;
  }

  v116 = v45;
  v140[1] = v45;
  v139[2] = @"OSLoggingSupportVersion";
  v114 = [MEMORY[0x277CCABB0] numberWithDouble:1815.4];
  v140[2] = v114;
  v139[3] = @"ArchiveIdentifier";
  v113 = [MEMORY[0x277CCAD78] UUID];
  v112 = [v113 UUIDString];
  v140[3] = v112;
  v140[4] = v130;
  v139[4] = @"SourceIdentifier";
  v139[5] = @"EndTimeRef";
  v137[0] = @"UUID";
  v111 = [*(v52 + 3240) stringWithUTF8String:v157];
  v138[0] = v111;
  v137[1] = @"ContinuousTime";
  v110 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v117 + 16)];
  v138[1] = v110;
  v137[2] = @"WallTime";
  v109 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(v47, v44, *(v117 + 16), 0)}];
  v138[2] = v109;
  v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:3];
  v140[5] = v108;
  v139[6] = @"PersistMetadata";
  v135 = @"OldestTimeRef";
  v133[0] = @"UUID";
  v107 = [*(v52 + 3240) stringWithUTF8String:out];
  v134[0] = v107;
  v133[1] = @"ContinuousTime";
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v117 + 8)];
  v134[1] = v53;
  v133[2] = @"WallTime";
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_timesync_continuous_to_wall_time(v47, (v117 + 24), *(v117 + 8), 0)}];
  v134[2] = v54;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:3];
  v136 = v55;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
  v140[6] = v56;
  v140[7] = v128;
  v139[7] = @"SpecialMetadata";
  v139[8] = @"SignpostMetadata";
  v140[8] = v127;
  v140[9] = v125;
  v139[9] = @"HighVolumeMetadata";
  v139[10] = @"LiveMetadata";
  v140[10] = v123;
  v139[11] = @"PersistSizeLimit";
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a7];
  v140[11] = v57;
  v139[12] = @"SpecialSizeLimit";
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a7[3]];
  v140[12] = v58;
  v139[13] = @"SignpostSizeLimit";
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a7[6]];
  v140[13] = v59;
  v139[14] = @"HighVolumeSizeLimit";
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a7[9]];
  v140[14] = v60;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:15];
  v62 = [v61 mutableCopy];

  if (a11)
  {
    [v62 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CollectedWithPredicate"];
  }

  v131 = 0;
  v63 = v62;
  v64 = [MEMORY[0x277CCAC58] dataWithPropertyList:v62 format:100 options:0 error:&v131];
  v65 = tmpfile();
  if (!v65)
  {
    v82 = __error();
    v83 = strerror(*v82);
    v105 = *__error();
    v74 = v119;
    _OSLogWarningMessage(v119, "unable to create Info.plist tempfile: %s (%d)", v84, v85, v86, v87, v88, v89, v83);
    v81 = 0xFFFFFFFFLL;
    v69 = v125;
    goto LABEL_43;
  }

  v66 = v65;
  fileno(v65);
  [v64 bytes];
  [v64 length];
  if (_os_trace_write() < 0)
  {
    v90 = __error();
    v104 = strerror(*v90);
    v106 = *__error();
    v74 = v119;
    _OSLogWarningMessage(v119, "failed to write to tempfile: %s (%d)", v91, v92, v93, v94, v95, v96, v104);
    v69 = v125;
    if (fclose(v66) != -1)
    {
LABEL_36:
      v81 = 0xFFFFFFFFLL;
      goto LABEL_43;
    }

LABEL_39:
    v97 = *__error();
    _os_assumes_log();
    goto LABEL_36;
  }

  v67 = fileno(v66);
  if (fchmod(v67, 0x1A4u) == -1)
  {
    v100 = *__error();
    _os_assumes_log();
  }

  v68 = fileno(v66);
  v69 = v125;
  if (lseek(v68, 0, 0) == -1)
  {
    v101 = *__error();
    _os_assumes_log();
  }

  v70 = fileno(v66);
  v71 = v120[2](v120, v70, "Info.plist");
  if (v71)
  {
    v72 = v71;
    v73 = fileno(v66);
    if (fcntl(v73, 50, v132) == -1)
    {
      v102 = *__error();
      _os_assumes_log();
    }

    strerror(v72);
    v74 = v119;
    _OSLogWarningMessage(v119, "failed copy handler: '%s' to 'Info.plist': %s (%d)", v75, v76, v77, v78, v79, v80, v132);
    if (fclose(v66) != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  if (fclose(v66) == -1)
  {
    v103 = *__error();
    _os_assumes_log();
  }

  v81 = 0;
  v74 = v119;
LABEL_43:

  v98 = *MEMORY[0x277D85DE8];
  return v81;
}

uint64_t _OSLogUUIDMapCopyUUID(int a1, const unsigned __int8 *a2, int a3, unint64_t a4, void *a5, void *a6)
{
  v50 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  if (uuid_is_null(a2))
  {
    goto LABEL_4;
  }

  _os_trace_uuiddb_get_pathsuffix(a2, a3, __str, 0x400uLL);
  _os_trace_uuiddb_get_pathsuffix(a2, a3 | 0x10, __s, 0x400uLL);
  if (_os_trace_str_map_lookup(*a4, __s))
  {
LABEL_3:
    if (_os_trace_str_map_lookup(*a4, __str))
    {
LABEL_4:
      v13 = 0;
LABEL_5:

      v14 = *MEMORY[0x277D85DE8];
      return v13;
    }

    goto LABEL_13;
  }

  TempDirectory = _OSLogCreateTempDirectory(v12, 0x1EDu);
  if (TempDirectory == -1)
  {
    v13 = *__error();
    goto LABEL_5;
  }

  v17 = TempDirectory;
  v18 = (*(v11 + 2))(v11, TempDirectory, __s);
  if (!v18)
  {
    _os_trace_str_map_insert(a4, __s);
    if (close(v17) == -1)
    {
      v42 = *__error();
      result = *__error();
      if (v42 == 9)
      {
LABEL_31:
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = result;
        __break(1u);
        goto LABEL_32;
      }

      _os_assumes_log();
    }

    goto LABEL_3;
  }

  v13 = v18;
  if (fcntl(v17, 50, v47) == -1)
  {
    v44 = *__error();
    _os_assumes_log();
  }

  strerror(v13);
  _OSLogWarningMessage(v12, "failed copy handler: '%s' to '%s': %s (%d)", v19, v20, v21, v22, v23, v24, v47);
  if (close(v17) != -1)
  {
    goto LABEL_5;
  }

  a4 = *__error();
  v25 = *__error();
  if (a4 != 9)
  {
LABEL_19:
    _os_assumes_log();
    goto LABEL_5;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v25;
  __break(1u);
LABEL_13:
  v26 = openat(a1, __str, 0);
  if (v26 == -1)
  {
    v13 = *__error();
    if (fcntl(a1, 50, v47) == -1)
    {
      v46 = *__error();
      _os_assumes_log();
    }

    strerror(v13);
    _OSLogWarningMessage(v12, "uuid text missing: %s/%s: %s (%d)", v36, v37, v38, v39, v40, v41, v47);
    goto LABEL_5;
  }

  v27 = v26;
  v28 = (*(v11 + 2))(v11, v26, __str);
  if (v28)
  {
    v13 = v28;
    if (fcntl(v27, 50, v47) == -1)
    {
      v45 = *__error();
      _os_assumes_log();
    }

    strerror(v13);
    _OSLogWarningMessage(v12, "failed copy handler: '%s' to '%s': %s (%d)", v29, v30, v31, v32, v33, v34, v47);
    if (close(v27) != -1)
    {
      goto LABEL_5;
    }

    v35 = *__error();
    result = *__error();
    if (v35 != 9)
    {
      goto LABEL_19;
    }

    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_27DA527A8 = result;
    __break(1u);
    goto LABEL_31;
  }

  _os_trace_str_map_insert(a4, __str);
  if (close(v27) != -1)
  {
    goto LABEL_4;
  }

  v43 = *__error();
  result = *__error();
  if (v43 != 9)
  {
    _os_assumes_log();
    goto LABEL_4;
  }

LABEL_32:
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

void _OSLogEnumerateFiles(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = _os_trace_fdscandir_b();
  if (v7 < 1)
  {
LABEL_16:
    _os_trace_scandir_free_namelist();

    return;
  }

  for (i = v7; ; --i)
  {
    v9 = i - 1;
    v10 = openat(a2, (*(8 * (i - 1)) + 21), 0);
    if (v10 != -1)
    {
      break;
    }

    if (*__error() != 2)
    {
      v15 = *(8 * v9) + 21;
      v16 = __error();
      strerror(*v16);
      v25 = *__error();
      _OSLogWarningMessage(v5, "failed to open: '%s': %s (%d)", v17, v18, v19, v20, v21, v22, v15);
    }

    if (i < 2)
    {
      goto LABEL_16;
    }

LABEL_13:
    ;
  }

  v11 = v10;
  v12 = objc_autoreleasePoolPush();
  v13 = (*(v6 + 2))(v6, v11, *(8 * v9) + 21);
  objc_autoreleasePoolPop(v12);
  if (close(v11) != -1)
  {
LABEL_5:
    if (i > 1)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v23 = *__error();
  v24 = *__error();
  if (v23 != 9)
  {
    _os_assumes_log();
    goto LABEL_5;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v24;
  __break(1u);
}

uint64_t _OSLogUUIDMapAddFromFile(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v15 = ___OSLogUUIDMapAddFromFile_block_invoke;
  v16 = &unk_2787AE930;
  v8 = v7;
  v17 = v8;
  v18 = &v20;
  v19 = a3;
  v9 = v14;
  v10 = 0;
  do
  {
    if (a2 - v10 < 0x10)
    {
      break;
    }

    v11 = *(a1 + v10 + 8);
    if (a2 - v10 - 16 < v11)
    {
      break;
    }

    if (!v15(v9))
    {
      break;
    }

    v10 = (v10 + v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  }

  while (v10 - 1 < a2);

  v12 = *(v21 + 6);
  _Block_object_dispose(&v20, 8);

  return v12;
}

void sub_22E05790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2986(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OSLogCreateArchiveWithPredicate(const char *a1, uint64_t a2, int64_t a3, BOOL a4, const char *a5, void *a6)
{
  v11 = a6;
  v12 = _InitArchiveDictionary(a1, a2, a3, a4);
  xpc_dictionary_set_string(v12, "predicate", a5);
  ArchiveWithDictionary = OSLogCreateArchiveWithDictionary(v12, v11);

  return ArchiveWithDictionary;
}

int64_t OSLogFlushBuffers()
{
  v0 = OSLogLogdAdminConnection();
  if (v0)
  {
    v1 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v1, "operation", 0xBuLL);
    v2 = xpc_connection_send_message_with_reply_sync(v0, v1);
    v3 = v2;
    if (v2)
    {
      if (MEMORY[0x2318E23F0](v2) == MEMORY[0x277D86480])
      {
        int64 = 22;
      }

      else if (xpc_dictionary_get_uint64(v3, "errorcode"))
      {
        int64 = 1;
      }

      else
      {
        int64 = xpc_dictionary_get_int64(v3, "st");
      }
    }

    else
    {
      int64 = 96;
    }
  }

  else
  {
    int64 = 53;
  }

  return int64;
}

uint64_t os_trace_copy_formatted_message(uint64_t a1)
{
  v26[128] = *MEMORY[0x277D85DE8];
  v25 = 0x10000;
  v24[0] = v26;
  v24[1] = 0x40000000000;
  v2 = *(a1 + 96);
  if (!v2)
  {
    v21 = *(a1 + 88);
    if (!v21)
    {
      v21 = "<compose failure [missing precomposed trace]>";
    }

    goto LABEL_20;
  }

  v3 = *(a1 + 104);
  if ((v3 - 1733) < 0xFFFFFFFFFFFFF93CLL)
  {
    goto LABEL_17;
  }

  v4 = &v2[v3];
  v6 = &v2[v3 - 1];
  v5 = *v6;
  if (v3 + ~v5 + 2 * v5 == -2)
  {
    goto LABEL_17;
  }

  MEMORY[0x28223BE20]();
  v8 = &v24[-1] - v7;
  bzero(&v24[-1] - v7, v9);
  *v8 = 0;
  v8[1] = v5;
  if (v5)
  {
    v10 = -v5;
    v11 = &v4[~v5];
    v12 = v8 + 2;
    while (1)
    {
      v13 = v6[v10] & 0x3F;
      if (&v2[v13] > v11)
      {
        break;
      }

      *v12 = 0;
      v12[1] = v13;
      v14 = v12 + 2;
      memcpy(v12 + 2, v2, v13);
      v12 = &v14[v13];
      v2 += v13;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_9;
      }
    }

LABEL_17:
    v21 = "<compose failure [corrupt trace]>";
LABEL_20:
    result = strdup(v21);
    goto LABEL_21;
  }

LABEL_9:
  v23 = 0;
  v16 = *(a1 + 88);
  if (!v16)
  {
    v17 = _os_log_resolve_format(*(a1 + 24), *a1, *(a1 + 72), &v23);
    if (!v17)
    {
      v21 = v23;
      goto LABEL_20;
    }

    v16 = v17;
    *(a1 + 88) = v17;
  }

  if (*(a1 + 80))
  {
    v18 = 4;
  }

  else
  {
    v18 = 8;
  }

  os_log_fmt_compose(v24, v16, 1, 3u, v18, v8, 0, 0, 0, 0, 0);
  v19 = BYTE4(v25);
  result = v24[0];
  v24[0] = 3954044928;
  WORD2(v25) = 0;
  if ((v19 & 1) == 0)
  {
    result = _os_trace_memdup();
  }

LABEL_21:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t os_log_copy_formatted_message(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0x10000;
  v16[0] = &v18;
  v16[1] = 0x40000000000;
  v2 = *(a1 + 96);
  if (!v2)
  {
    v5 = *(a1 + 88);
    if (!v5)
    {
      v5 = "<compose failure [missing precomposed log]>";
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 104);
  if (v3 >> 16)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 120);
  if (v4 >> 16)
  {
    goto LABEL_6;
  }

  if (*(a1 + 104))
  {
    if (*(a1 + 104) == 1)
    {
LABEL_6:
      v5 = "<compose failure [corrupt log]>";
LABEL_9:
      result = strdup(v5);
      goto LABEL_10;
    }

    v8 = (v2 + 2);
    LOWORD(v3) = v3 - 2;
    if (v2[1])
    {
      v9 = 0;
      while (v3 >= 2u)
      {
        v10 = *(v8 + 1) + 2;
        if (v10 > v3)
        {
          break;
        }

        v8 += v10;
        LOWORD(v3) = v3 - v10;
        if (v2[1] <= ++v9)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v2 = &os_log_fmt_extract_pubdata_empty_hdr;
  }

LABEL_17:
  v15 = 0;
  v11 = *(a1 + 88);
  if (!v11)
  {
    v12 = _os_log_resolve_format(*(a1 + 24), *a1, *(a1 + 72), &v15);
    if (!v12)
    {
      v5 = v15;
      goto LABEL_9;
    }

    v11 = v12;
    *(a1 + 88) = v12;
    v4 = *(a1 + 120);
  }

  if (*(a1 + 80))
  {
    v13 = 4;
  }

  else
  {
    v13 = 8;
  }

  os_log_fmt_compose(v16, v11, 2, 3u, v13, v2, v8, v3, *(a1 + 112), v4, 0);
  v14 = BYTE4(v17);
  result = v16[0];
  v16[0] = 3954044928;
  WORD2(v17) = 0;
  if ((v14 & 1) == 0)
  {
    result = _os_trace_memdup();
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _chunk_support_convert_tracepoint(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 60);
  *(a2 + 52) = 0u;
  v7 = a2 + 52;
  *(a2 + 4) = 0u;
  *(a2 + 20) = 0u;
  *(a2 + 36) = 0u;
  *(a2 + 68) = 0u;
  *(a2 + 84) = 0u;
  *(a2 + 100) = 0u;
  *(a2 + 116) = 0u;
  *(a2 + 132) = 0u;
  *(a2 + 148) = 0u;
  *(a2 + 164) = 0u;
  *(a2 + 180) = 0u;
  *(a2 + 196) = 0u;
  *(a2 + 212) = 0u;
  *(a2 + 228) = 0;
  *a2 = 1024;
  v8 = *(a3 + 56);
  if (v8)
  {
    *(a2 + 4) = *(v8 + 4);
    *(a2 + 8) = *(v8 + 8);
    *(a2 + 20) = v8 + 24;
    uuidpath_lookup_fd(*(a3 + 4), (v8 + 24), (a2 + 28));
    if (*(v8 + 2))
    {
      *(a2 + 132) = 1;
    }
  }

  v9 = *(a3 + 32);
  if (*v9 == 24580)
  {
    return 0;
  }

  if (*v9 == 24579)
  {
    if (!*(v9 + 4) && *(v9 + 8) >= 0x31uLL)
    {
      *a2 = 2560;
      v10 = *(v9 + 32);
      *(a2 + 36) = *(v9 + 40);
      v11 = *(a3 + 24);
      *(a2 + 60) = v10;
      v12 = *(a3 + 88);
      if (v12)
      {
        v13 = _timesync_continuous_to_wall_time(v12, (*(a3 + 24) + 128), v10, (a2 + 108));
        *(a2 + 92) = v13 / 0x3B9ACA00;
        *(a2 + 100) = v13 % 0x3B9ACA00 / 0x3E8;
      }

      else
      {
        v31 = *(v11 + 2);
        v32 = v11[6];
        v33 = *(v11 + 6);
        if (v33 != v10)
        {
          v35 = *v11;
          v34 = v11[1];
          if (v33 >= v10)
          {
            v49 = (v33 - v10) * v35 / v34;
            v31 -= v49 / 0x3B9ACA00;
            v32 -= v49 % 0x3B9ACA00 / 0x3E8;
            if (v32 < 0)
            {
              --v31;
              v32 += 1000000;
            }
          }

          else
          {
            v36 = (v10 - v33) * v35 / v34;
            v31 += v36 / 0x3B9ACA00;
            v32 += v36 % 0x3B9ACA00 / 0x3E8;
            if (v32 > 999999)
            {
              ++v31;
              v32 -= 1000000;
            }
          }
        }

        *(a2 + 92) = v31;
        *(a2 + 100) = v32;
        *(a2 + 108) = *(a3 + 16);
      }

      v50 = v9 + 48;
      if (!uuidpath_lookup_fd(*(a3 + 4), (v9 + 48), (a2 + 84)))
      {
        v50 = *(a2 + 20);
        *(a2 + 84) = *(a2 + 28);
      }

      *(a2 + 76) = v50;
      result = _state_support_create_message(*(a3 + 32), (a2 + 148));
      *(a2 + 140) = result;
      if (result)
      {
        return *(a3 + 56) != 0;
      }

      return result;
    }

    return 0;
  }

  v14 = *(a3 + 64);
  if (v14)
  {
    if (v14 == -1)
    {
      v15 = *(a3 + 24);
      *(a2 + 60) = v6;
      v16 = *(a3 + 88);
      if (v16)
      {
        v17 = (*(a3 + 24) + 128);
        v18 = (a2 + 108);
        v19 = v6;
LABEL_16:
        v21 = _timesync_continuous_to_wall_time(v16, v17, v19, v18);
        *(a2 + 92) = v21 / 0x3B9ACA00;
        *(a2 + 100) = v21 % 0x3B9ACA00 / 0x3E8;
        goto LABEL_32;
      }

      v22 = *(v15 + 2);
      v23 = v15[6];
      v24 = *(v15 + 6);
      if (v24 != v6)
      {
        v26 = *v15;
        v25 = v15[1];
        v27 = v24 - v6;
        if (v24 < v6)
        {
          v28 = v6 - v24;
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v19 = (*(a1 + 2) & 0xFFFFFFFFFFFFLL) + *(v14 + 8);
      v20 = *(a3 + 24);
      *(a2 + 60) = v19;
      v16 = *(a3 + 88);
      if (v16)
      {
        v17 = (*(a3 + 24) + 128);
        v18 = (a2 + 108);
        goto LABEL_16;
      }

      v22 = *(v20 + 2);
      v23 = v20[6];
      v29 = *(v20 + 6);
      if (v29 != v19)
      {
        v26 = *v20;
        v25 = v20[1];
        v27 = v29 - v19;
        if (v29 < v19)
        {
          v28 = v19 - v29;
LABEL_23:
          v30 = v28 * v26 / v25;
          v22 += v30 / 0x3B9ACA00;
          v23 += v30 % 0x3B9ACA00 / 0x3E8;
          if (v23 > 999999)
          {
            ++v22;
            v23 -= 1000000;
          }

          goto LABEL_31;
        }

LABEL_29:
        v37 = v27 * v26 / v25;
        v22 -= v37 / 0x3B9ACA00;
        v23 -= v37 % 0x3B9ACA00 / 0x3E8;
        if (v23 < 0)
        {
          --v22;
          v23 += 1000000;
        }
      }
    }

LABEL_31:
    *(a2 + 92) = v22;
    *(a2 + 100) = v23;
    *(a2 + 108) = *(a3 + 16);
  }

LABEL_32:
  *(a2 + 52) = *a1;
  *(a2 + 68) = *(a1 + 1);
  v38 = *a1;
  if (v38 <= 8 && ((1 << v38) & 0x158) != 0)
  {
    v39 = *a1 << 8;
  }

  else
  {
    v39 = bswap32(*a1) >> 16;
  }

  *a2 = v39;
  if (!v8)
  {
    return 0;
  }

  result = 0;
  v41 = *a1;
  if (v41 > 5)
  {
    switch(v41)
    {
      case 6u:
        v42 = 1536;
        break;
      case 7u:
        *a2 = 1792;
        if (*(a1 + 2) >> 51 < 3uLL)
        {
          return 0;
        }

        v46 = *(a1 + 10);
        *(a2 + 140) = *(a1 + 24);
        *(a2 + 156) = v46;
        return 1;
      case 8u:
        v42 = 2048;
        break;
      default:
        return result;
    }

    *a2 = v42;
LABEL_54:

    return _chunk_support_parse_log(a2, a1, a3);
  }

  if (v41 != 2)
  {
    if (v41 != 3)
    {
      if (v41 != 4)
      {
        return result;
      }

      goto LABEL_54;
    }

    v51 = 0;
    *a2 = 768;
    v44 = *(a1 + 1);
    if (v44)
    {
      if (!(*(a1 + 2) >> 51))
      {
        return 0;
      }

      v51 = 8;
      v47 = *(a1 + 3);
      *(a2 + 36) = v47;
      *(a2 + 44) = _os_activity_map_find_parent(*(a3 + 8), v47);
      v44 = *(a1 + 1);
      v45 = 16;
    }

    else
    {
      v45 = 8;
    }

    if ((v44 & 0x10) != 0)
    {
      if (v45 > *(a1 + 11))
      {
        return 0;
      }

      v51 = v45;
    }

    result = _chunk_support_parse_location(a1, &v51, v7, a3);
    if (!result)
    {
      return result;
    }

    v48 = v51;
    *(a2 + 148) = &a1[v51 + 24];
    *(a2 + 156) = *(a1 + 11) - v48;
    return 1;
  }

  v43 = a1[1];
  switch(v43)
  {
    case 1:

      return _chunk_support_parse_activity_create(a2, a1, a3);
    case 3:

      return _chunk_support_parse_useraction(a2, a1, a3);
    case 2:

      return _chunk_support_parse_activity_swap(a2, a1, a3);
    default:
      return 0;
  }
}

uint64_t _chunk_support_parse_activity_swap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 514;
  v5 = *(a2 + 2);
  if ((v5 & 1) == 0)
  {
    LODWORD(v6) = 0;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v6 = (v6 + 8);
    if (*(a2 + 22) < v6)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (!(*(a2 + 16) >> 51))
  {
    return 0;
  }

  v7 = *(a2 + 24);
  *(a1 + 36) = v7;
  *(a1 + 44) = _os_activity_map_find_parent(*(a3 + 8), v7);
  v5 = *(a2 + 2);
  LODWORD(v6) = 8;
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ((v5 & 0x200) == 0)
  {
    return 1;
  }

  if (v6 + 8 <= *(a2 + 22))
  {
    *(a1 + 140) = *(a2 + v6 + 24);
    return 1;
  }

  return 0;
}

uint64_t _chunk_support_parse_activity_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 513;
  v5 = *(a2 + 2);
  if ((v5 & 1) == 0)
  {
    LODWORD(v6) = 0;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = v6;
    v6 = v6 + 8;
    if (v6 > *(a2 + 22))
    {
      return 0;
    }

    *(a1 + 156) = *(a2 + v7 + 24);
    if ((*(a2 + 2) & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (!(*(a2 + 16) >> 51))
  {
    return 0;
  }

  *(a1 + 148) = *(a2 + 24);
  v5 = *(a2 + 2);
  LODWORD(v6) = 8;
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v5 & 0x200) != 0)
  {
LABEL_9:
    v8 = v6;
    v6 = v6 + 8;
    if (v6 <= *(a2 + 22))
    {
      *(a1 + 44) = *(a2 + v8 + 24);
      goto LABEL_11;
    }

    return 0;
  }

LABEL_11:
  if (v6 + 8 > *(a2 + 22))
  {
    return 0;
  }

  v11 = v6 + 8;
  *(a1 + 36) = *(a2 + v6 + 24);
  result = _chunk_support_parse_location(a2, &v11, a1 + 52, a3);
  if (result)
  {
    v10 = *(a1 + 36);
    if (v10)
    {
      if (*(a1 + 44))
      {
        _os_activity_map_insert((a3 + 8), v10);
      }
    }

    else
    {
      *(a1 + 140) = "Default/remote activity";
    }

    return 1;
  }

  return result;
}

uint64_t _chunk_support_parse_useraction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  *a1 = 515;
  v6 = *(a2 + 2);
  if ((v6 & 1) == 0)
  {
    v7 = 8;
    if ((v6 & 0x10) == 0)
    {
      return _chunk_support_parse_location(a2, &v10, a1 + 52, a3);
    }

    goto LABEL_6;
  }

  if (!(*(a2 + 16) >> 51))
  {
    return 0;
  }

  v10 = 8;
  v8 = *(a2 + 24);
  *(a1 + 36) = v8;
  *(a1 + 44) = _os_activity_map_find_parent(*(a3 + 8), v8);
  v7 = 16;
  if ((*(a2 + 2) & 0x10) != 0)
  {
LABEL_6:
    if (v7 <= *(a2 + 22))
    {
      v10 = v7;
      return _chunk_support_parse_location(a2, &v10, a1 + 52, a3);
    }

    return 0;
  }

  return _chunk_support_parse_location(a2, &v10, a1 + 52, a3);
}

uint64_t _chunk_support_parse_log(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v6 = *(a2 + 1);
  if (v6)
  {
    if (!(*(a2 + 2) >> 51))
    {
      goto LABEL_37;
    }

    LODWORD(v7) = 8;
    v25 = 8;
    v8 = *(a2 + 3);
    *(a1 + 36) = v8;
    *(a1 + 44) = _os_activity_map_find_parent(*(a3 + 8), v8);
    v6 = *(a2 + 1);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(v7) = 0;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_3;
    }
  }

  v7 = (v7 + 8);
  if (*(a2 + 11) < v7)
  {
    goto LABEL_37;
  }

  v25 = v7;
  if ((v6 & 0x100) != 0)
  {
LABEL_9:
    if (v7 + 4 > *(a2 + 11))
    {
      goto LABEL_37;
    }

    v25 = v7 + 4;
    v9 = &a2[v7];
    v10 = *(v9 + 12);
    v11 = *(v9 + 13);
    if ((v11 + v10) <= 0x1000)
    {
      v12 = *(a3 + 80);
      if (4096 - v12 <= v10 && (*a3 & 0x80) == 0)
      {
        *(a1 + 164) = *(a3 + 72) + v12 + v10 - 4096;
        *(a1 + 172) = v11;
      }
    }
  }

LABEL_14:
  result = _chunk_support_parse_location(a2, &v25, a1 + 52, a3);
  if (result)
  {
    LOWORD(v14) = v25;
    if ((*(a2 + 1) & 0x200) != 0)
    {
      LOWORD(v14) = v25 + 2;
      if (v25 + 2 > *(a2 + 11))
      {
        goto LABEL_37;
      }

      v15 = *(a3 + 56);
      v26 = *&a2[v25 + 24];
      v16 = hashtable_lookup(*(v15 + 64), &v26);
      if (v16)
      {
        *(a1 + 180) = *(v16 + 8);
        *(a1 + 188) = *(v16 + 16);
      }
    }

    v17 = *(a2 + 1);
    if ((v17 & 0x400) != 0)
    {
      if (*(a2 + 11) <= v14)
      {
        goto LABEL_37;
      }

      LOWORD(v14) = v14 + 1;
    }

    v18 = *a2;
    if (v18 == 6)
    {
      v19 = v14;
      v14 = v14 + 8;
      if (v14 > *(a2 + 11))
      {
        goto LABEL_37;
      }

      *(a1 + 204) = *&a2[v19 + 24];
      *(a1 + 220) = a2[1] & 0x3F;
      *(a1 + 221) = a2[1] & 0xC0;
      v17 = *(a2 + 1);
      if (v17 < 0)
      {
        LOWORD(v14) = v19 + 12;
        v20 = *(a2 + 2);
        if ((v19 + 12) > HIWORD(v20))
        {
          goto LABEL_37;
        }

        if ((v17 & 0x20) != 0)
        {
          LOWORD(v14) = v19 + 14;
          if ((v19 + 14) > HIWORD(v20))
          {
            goto LABEL_37;
          }
        }
      }

      v18 = *a2;
    }

    if (v18 == 8)
    {
      v21 = v14;
      v14 = v14 + 8;
      if (v14 > *(a2 + 11))
      {
        goto LABEL_37;
      }

      v22 = *&a2[v21 + 24];
      *(a1 + 220) = a2[1];
      *(a1 + 204) = v22;
      v17 = *(a2 + 1);
    }

    if ((v17 & 0x800) == 0)
    {
LABEL_35:
      *(a1 + 148) = &a2[v14 + 24];
      *(a1 + 156) = *(a2 + 11) - v14;
      result = 1;
      goto LABEL_36;
    }

    v23 = v14;
    v14 = v14 + 4;
    if (v14 <= *(a2 + 11))
    {
      *(a1 + 196) = *&a2[v23 + 24];
      goto LABEL_35;
    }

LABEL_37:
    result = 0;
  }

LABEL_36:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _chunk_support_parse_location(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 56);
  if (*(v7 + 2))
  {
    v8 = 4;
  }

  else
  {
    v8 = 6;
  }

  v9 = *(a1 + 2) & 0xE;
  if (v9 <= 7)
  {
    if (v9 == 2 || v9 == 4 || v9 == 6)
    {
      v8 = 4;
      goto LABEL_20;
    }

LABEL_18:
    v8 = 0;
    goto LABEL_20;
  }

  if (v9 == 8)
  {
    goto LABEL_20;
  }

  if (v9 != 10)
  {
    if (v9 == 12)
    {
      v8 = 6;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v8 = 20;
LABEL_20:
  v12 = *a2;
  v13 = v12 + v8;
  v14 = *(a1 + 16);
  if (v13 > HIWORD(v14))
  {
    v26 = 0;
    v31 = HIWORD(v14);
LABEL_54:
    *a2 = v31;
    return v26;
  }

  v15 = *(a1 + 4);
  *a2 = v13;
  if (!v8)
  {
    return 0;
  }

  v16 = (a1 + 24 + v12);
  if (v8 == 6)
  {
    v17 = 0;
    v18 = *(v16 + 2) << 32;
  }

  else
  {
    v18 = 0;
    if (v8 == 4)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16 + 1;
    }
  }

  v19 = *v16;
  if ((*(a1 + 2) & 0x20) == 0)
  {
    v20 = 0;
    goto LABEL_31;
  }

  v21 = *(a1 + 16);
  if (v13 + 2 > HIWORD(v21))
  {
    v26 = 0;
    v31 = HIWORD(v21);
    goto LABEL_54;
  }

  *a2 = v13 + 2;
  v20 = *(a1 + 24 + v13) << 31;
LABEL_31:
  v22 = v20 | v15 & 0x7FFFFFFF;
  if (v15 >= 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 | 0x8000000000000000;
  }

  *(a3 + 72) = v23;
  if (!v23)
  {
    return 0;
  }

  v24 = v18 | v19;
  v25 = *(a1 + 2) & 0xE;
  v26 = 1;
  if (v25 <= 7)
  {
    if (v25 == 2)
    {
      *(a3 + 64) = v24;
      v17 = (v7 + 24);
      goto LABEL_48;
    }

    if (v25 != 4)
    {
      return v26;
    }

LABEL_43:
    *(a3 + 24) = v7 + 40;
    v28 = a3 + 24;
    *(v28 + 40) = v24;
    return uuidpath_sharedcache_resolve_fd(*(a4 + 4), (v7 + 40), v23, v18 | v19, 0, (v28 + 64), 0, v28, v28 + 8, 0, 0);
  }

  if (v25 == 12)
  {
    goto LABEL_43;
  }

  if (v25 != 10)
  {
    if (v25 == 8)
    {
      v27 = _catalog_procinfo_lookup_pc(v7, v18 | v19);
      if (v27)
      {
        v17 = v27 + 2;
        *(a3 + 64) = v24 - *v27;
        v23 = *(a3 + 72);
LABEL_48:
        *(a3 + 24) = v17;
        goto LABEL_49;
      }

      return 0;
    }

    return v26;
  }

  *(a3 + 64) = v24;
  *(a3 + 24) = v17;
  if (!v17)
  {
    return 0;
  }

LABEL_49:
  v30 = *(a4 + 4);

  return uuidpath_resolve_fd(v30, v17, v23, 0, (a3 + 88), 0, (a3 + 32), 0);
}

tm *_chunk_support_context_init(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 4) = -1;
  v6 = time(0);
  memset(&v5, 0, sizeof(v5));
  result = localtime_r(&v6, &v5);
  tm_isdst = v5.tm_isdst;
  v4 = ((v5.tm_gmtoff * 0x7777777777777777) >> 64) - v5.tm_gmtoff;
  *(a1 + 16) = (v4 >> 5) + (v4 >> 63) + 60 * v5.tm_isdst;
  *(a1 + 20) = tm_isdst;
  return result;
}

uint64_t _chunk_support_context_clear(uint64_t a1)
{
  _os_activity_map_destroy(*(a1 + 8));
  v2 = *(a1 + 40);
  if (v2)
  {
    _catalog_destroy(v2);
  }

  result = *(a1 + 4);
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      v4 = *__error();
      result = *__error();
      if (v4 == 9)
      {
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = result;
        __break(1u);
      }

      else
      {
        return _os_assumes_log();
      }
    }
  }

  return result;
}

void *_chunk_support_context_update(void *result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  result[4] = a2;
  v4 = *a2;
  if (*a2 <= 24579)
  {
    switch(v4)
    {
      case 24577:
        v10 = *(a2 + 8);
        v6 = v10 - 16;
        if (v10 < 0x10)
        {
          goto LABEL_17;
        }

        v3 = (a2 + 32);
        v7 = *(a2 + 29) != 0;
        break;
      case 24578:
        v12 = *(a2 + 8);
        v6 = v12 - 32;
        if (v12 < 0x20)
        {
          goto LABEL_17;
        }

        v7 = 0;
        v3 = (a2 + 48);
        break;
      case 24579:
        v5 = *(a2 + 8);
        v6 = v5 - 48;
        if (v5 >= 0x30)
        {
          v7 = 0;
          v3 = (a2 + 64);
          break;
        }

LABEL_17:
        result[8] = 0;
        goto LABEL_27;
      default:
        goto LABEL_25;
    }

LABEL_24:
    if (v6 - 4097 >= 0xFFFFFFFFFFFFF00FLL)
    {
      v14 = *v3;
      if (v6 < v14)
      {
        v3 = 0;
        goto LABEL_26;
      }

      v15 = v3[1];
      if (v15 <= 0xFFF)
      {
        if (v7)
        {
          if (v6 <= v14 + (4096 - v15))
          {
            result[9] = v3 + v14;
            result[10] = (4096 - v15);
            goto LABEL_26;
          }
        }

        else if (v6 == 4096)
        {
          result[9] = v3 + v15;
          result[10] = (4096 - v15);
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    result[9] = 0;
    result[10] = 0;
LABEL_26:
    result[8] = v3;
    if ((v4 - 24577) < 4)
    {
LABEL_27:
      v13 = result[5];
      if (v13)
      {
        result = _os_procinfo_map_lookup(*(v13 + 40), *(a2 + 16), *(a2 + 24));
        v2[7] = result;
        return result;
      }

      goto LABEL_51;
    }

    if (v4 == 24592)
    {
      v9 = 0;
      goto LABEL_39;
    }

    if (v4 != 24588)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v4 == 24580)
  {
    v11 = *(a2 + 8);
    v6 = v11 - 72;
    if (v11 < 0x48)
    {
      goto LABEL_17;
    }

    v7 = 0;
    v3 = (a2 + 88);
    goto LABEL_24;
  }

  if (v4 == 24588)
  {
    v8 = *(a2 + 8);
    if (v8 <= 0xF)
    {
      result[8] = 0;
LABEL_31:
      v9 = *(a2 + 29);
      goto LABEL_39;
    }

    v7 = 0;
    v3 = (a2 + 30);
    goto LABEL_23;
  }

  if (v4 != 24592)
  {
    goto LABEL_25;
  }

  v8 = *(a2 + 8);
  if (v8 > 0xF)
  {
    v7 = 0;
    v3 = (a2 + 32);
LABEL_23:
    v6 = v8 - 16;
    goto LABEL_24;
  }

  v9 = 0;
  result[8] = 0;
LABEL_39:
  v16 = result[5];
  if (v16)
  {
    v17 = *(v16 + 40);
    if (v17)
    {
      v18 = (v17 + 16);
      while (1)
      {
        v18 = *v18;
        if (!v18)
        {
          break;
        }

        if (v18[2] == *(a2 + 16))
        {
          v19 = v18[4];
          result[7] = v19;
          if (v19)
          {
            v20 = v9 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            v21 = *(v19 + 2);
            if (v21 < 0)
            {
              v22 = v21 & 0x7FFF;
              *(v19 + 2) = v22;
              if (v9 == 4)
              {
                *(v19 + 2) = v22 | 1;
              }
            }
          }

          return result;
        }
      }
    }
  }

LABEL_51:
  result[7] = 0;
  return result;
}

uint64_t ___os_activity_stream_mapped_file_block_invoke(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (a1[5] != a2)
  {
    if (v3 <= 24577)
    {
      if (v3 <= 7423)
      {
        if (v3 != 4096 && v3 != 6912 && v3 != 7168)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v3 < 0x2000)
      {
        if (v3 != 7424 && v3 != 7680)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v3 != 0x2000)
      {
        v8 = 24577;
        goto LABEL_28;
      }

LABEL_35:
      *(*(a1[4] + 8) + 24) = _chunk_support_stream(a2, a1[6]);
      goto LABEL_36;
    }

    if (v3 <= 24586)
    {
      if (v3 == 24578 || v3 == 24579)
      {
LABEL_29:
        if (!*(a2 + 4))
        {
          goto LABEL_35;
        }

LABEL_36:
        v4 = *(*(a1[4] + 8) + 24);
        return v4 & 1;
      }

      v8 = 24580;
LABEL_28:
      if (v3 != v8)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    }

    if (v3 > 24588)
    {
      if (v3 == 24589)
      {
        goto LABEL_35;
      }

      v5 = 24592;
    }

    else
    {
      if (v3 == 24587)
      {
        if ((*(a2 + 4) - 14) > 3)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v5 = 24588;
    }

    if (v3 != v5 || (*(a2 + 4) - 14) >= 4)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v3 == 4096 && *(a2 + 8) > 0x27uLL)
  {
    goto LABEL_35;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t _chunk_support_stream(int *a1, uint64_t a2)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 1;
  *(a2 + 32) = a1;
  v4 = *a1;
  if (*a1 <= 24586)
  {
    if ((v4 - 24578) >= 3)
    {
      if (v4 != 4096)
      {
        v5 = 24577;
        goto LABEL_8;
      }

      *(a2 + 24) = a1 + 4;
LABEL_15:
      v8 = *(a2 + 104);
      if (v8)
      {
        v9 = (*(v8 + 16))(v8, a2);
        *(v36 + 24) = v9;
      }

      goto LABEL_17;
    }

LABEL_14:
    _chunk_support_context_update(a2, a1);
    goto LABEL_15;
  }

  if (v4 > 24588)
  {
    if (v4 == 24589)
    {
      v15 = *(a2 + 104);
      if (v15)
      {
        v16 = (*(v15 + 16))(v15, a2);
        *(v36 + 24) = v16;
      }

      v17 = *(a2 + 48);
      if (!v17)
      {
        v10 = 1;
        goto LABEL_18;
      }

      if ((*(a2 + 1) & 8) == 0)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 0x40000000;
        v34[2] = ___chunk_support_stream_block_invoke;
        v34[3] = &unk_2787AEAB0;
        v34[4] = &v35;
        v34[5] = a2;
        _tracev3_chunk_decompress_and_enumerate_chunks(a1, v17, v34);
        v17 = *(a2 + 48);
      }

      if (*v17)
      {
        *(a2 + 48) = *v17;
      }

      goto LABEL_17;
    }

    if (v4 != 24592)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v4 == 24587)
  {
    v12 = *(a2 + 40);
    if (v12)
    {
      _catalog_destroy(v12);
    }

    v13 = _catalog_create_with_chunk(a1, 0);
    *(a2 + 40) = v13;
    if (v13)
    {
      v14 = *(v13 + 64);
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 48) = v14;
    goto LABEL_15;
  }

  v5 = 24588;
LABEL_8:
  if (v4 == v5)
  {
    _chunk_support_context_update(a2, a1);
    v6 = *(a2 + 104);
    if (v6)
    {
      v7 = (*(v6 + 16))(v6, a2);
      *(v36 + 24) = v7;
      if (v7)
      {
        goto LABEL_32;
      }
    }

    else if (v36[3])
    {
LABEL_32:
      if (*(a2 + 96))
      {
        v18 = *(a2 + 64);
        if (v18)
        {
          memset(v33, 0, 236);
          v20 = v18 + 8;
          v19 = *v18;
          v21 = v18 + v19;
          if (v19 > 0x1000)
          {
            v22 = v20;
          }

          else
          {
            v22 = v21;
          }

          while ((v20 + 12) < v22)
          {
            v23 = v20;
            v24 = *(v20 + 2);
            v25 = HIWORD(v24);
            if (!HIWORD(v24) || v25 > (v22 - (v20 + 12)))
            {
              break;
            }

            if ((v24 & 0x7000000000000) != 0)
            {
              v27 = (HIWORD(v24) & 0xFFF8) + 32;
            }

            else
            {
              v27 = v25 + 24;
            }

            v20 = (v20 + v27);
            if (*v23 && _chunk_support_convert_tracepoint(v23, v33, a2) && ((*(*(a2 + 96) + 16))(*(a2 + 96), v33, 0, v28, v29, v30, v31, v32) & 1) == 0)
            {
              *(v36 + 24) = 0;
              break;
            }
          }
        }
      }
    }
  }

LABEL_17:
  v10 = *(v36 + 24);
LABEL_18:
  _Block_object_dispose(&v35, 8);
  return v10 & 1;
}