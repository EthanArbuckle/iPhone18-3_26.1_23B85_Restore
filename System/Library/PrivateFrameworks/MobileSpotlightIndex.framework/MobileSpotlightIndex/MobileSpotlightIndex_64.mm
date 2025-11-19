uint64_t _data_map_sync_header(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0;
    goto LABEL_22;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v2 = _data_map_sync_header(*(a1 + 440));
      v8 = (*(**(a1 + 448) + 232))(*(a1 + 448), 1);
      if (v2 != v8)
      {
        v10 = v8;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v17 = 1024;
          *v18 = 488;
          *&v18[4] = 2080;
          *&v18[6] = "_data_map_double_sync_header";
          v19 = 2080;
          v20 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v16 = v2;
          v17 = 2048;
          *v18 = v10;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v11 = __si_assert_copy_extra_332();
        v12 = v11;
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        __message_assert(v11, "data_map_double.m", 488, "output == output_new", v13);
        free(v12);
        if (__valid_fs(-1))
        {
          v14 = 2989;
        }

        else
        {
          v14 = 3072;
        }

        *v14 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
    }

    else if (v3 == -270471200)
    {
      v4 = *MEMORY[0x1E69E9840];

      return _data_map_ext_sync_header(a1);
    }

LABEL_22:
    v9 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (v3 == 1684300900)
  {
    v7 = *MEMORY[0x1E69E9840];

    return _data_map64_sync_header(a1);
  }

  else
  {
    if (v3 != 842150450)
    {
      goto LABEL_22;
    }

    v6 = *MEMORY[0x1E69E9840];

    return _data_map32_sync_header(a1, 1);
  }
}

uint64_t _data_map_version(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = 0;
    v3 = *(a1 + 216);
    if (v3 > 842150449)
    {
      if (v3 == 1684300900)
      {
LABEL_10:
        v4 = *(a1 + 272);
        goto LABEL_11;
      }

      if (v3 == 842150450)
      {
        v4 = *(a1 + 1296);
LABEL_11:
        v2 = *(v4 + 8);
      }
    }

    else
    {
      if (v3 != -572662307)
      {
        if (v3 != -270471200)
        {
          goto LABEL_17;
        }

        goto LABEL_10;
      }

      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v2 = _data_map_version(*(a1 + 440));
      v5 = (*(**(a1 + 448) + 240))(*(a1 + 448));
      if (v2 != v5)
      {
        v8 = v5;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v14 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v15 = 1024;
          *v16 = 490;
          *&v16[4] = 2080;
          *&v16[6] = "_data_map_double_version";
          v17 = 2080;
          v18 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v14 = v2;
          v15 = 2048;
          *v16 = v8;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v9 = __si_assert_copy_extra_332();
        v10 = v9;
        v11 = "";
        if (v9)
        {
          v11 = v9;
        }

        __message_assert(v9, "data_map_double.m", 490, "output == output_new", v11);
        free(v10);
        if (__valid_fs(-1))
        {
          v12 = 2989;
        }

        else
        {
          v12 = 3072;
        }

        *v12 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
    }
  }

  else
  {
    v2 = 0;
  }

LABEL_17:
  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _data_map_version_is_current(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    is_current = 0;
    v3 = *(a1 + 216);
    if (v3 > 842150449)
    {
      if (v3 == 1684300900)
      {
LABEL_10:
        is_current = *(*(a1 + 272) + 8) == 14;
        goto LABEL_16;
      }

      if (v3 == 842150450)
      {
        is_current = *(*(a1 + 1296) + 8) > 0xAu;
      }
    }

    else
    {
      if (v3 != -572662307)
      {
        if (v3 != -270471200)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }

      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      is_current = _data_map_version_is_current(*(a1 + 440));
      v4 = (*(**(a1 + 448) + 248))(*(a1 + 448));
      if (is_current != v4)
      {
        v7 = v4;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v13 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v14 = 1024;
          *v15 = 491;
          *&v15[4] = 2080;
          *&v15[6] = "_data_map_double_version_is_current";
          v16 = 2080;
          v17 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v13 = is_current;
          v14 = 2048;
          *v15 = v7;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v8 = __si_assert_copy_extra_332();
        v9 = v8;
        v10 = "";
        if (v8)
        {
          v10 = v8;
        }

        __message_assert(v8, "data_map_double.m", 491, "output == output_new", v10);
        free(v9);
        if (__valid_fs(-1))
        {
          v11 = 2989;
        }

        else
        {
          v11 = 3072;
        }

        *v11 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
    }
  }

  else
  {
    is_current = 0;
  }

LABEL_16:
  v5 = *MEMORY[0x1E69E9840];
  return is_current;
}

uint64_t _data_map_version_update(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 216);
    if (v2 > 842150449)
    {
      if (v2 != 1684300900)
      {
        if (v2 != 842150450)
        {
          goto LABEL_19;
        }

        v3 = *(result + 1296);
        if (*(v3 + 8) <= 0xAu)
        {
          *(v3 + 8) = 12;
          fd_pwrite(*(result + 1272), v3, 0x38uLL, 0);
          v4 = *(v1 + 1320);
          v5 = *(v1 + 1328);
          fd_system_status_stall_if_busy();

          return msync(v4, v5, 16);
        }
      }
    }

    else if (v2 == -572662307)
    {
      if (*(result + 432))
      {
        pthread_rwlock_wrlock((result + 224));
      }

      else
      {
        pthread_rwlock_rdlock((result + 224));
      }

      _data_map_version_update(*(v1 + 440));
      (*(**(v1 + 448) + 256))(*(v1 + 448));

      return pthread_rwlock_unlock((v1 + 224));
    }

    else if (v2 != -270471200)
    {
LABEL_19:
      v6 = __si_assert_copy_extra_332();
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "data_map.c", 435, v8);
      free(v7);
      MEMORY[0xBAD] = -559038737;
      abort();
    }
  }

  return result;
}

uint64_t _data_map_match_address(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    v3 = *(v2 + 216);
    if (v3 > 842150449)
    {
      if (v3 == 1684300900)
      {

        return _data_map64_match_address(v2, a2);
      }

      else if (v3 == 842150450)
      {

        return _data_map32_match_address(v2, a2);
      }
    }

    else if (v3 == -572662307)
    {
      if (_data_map_match_address(*(v2 + 440), a2))
      {
        return 1;
      }

      else
      {
        v4 = *(**(v2 + 448) + 264);

        return v4();
      }
    }

    else if (v3 == -270471200)
    {

      return _data_map_ext_match_address(v2, a2);
    }
  }

  return result;
}

void _data_map_clear_seen(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 216);
  if (v2 > 842150449)
  {
    if (v2 == 1684300900)
    {
      v3 = (a1 + 4552);
      os_unfair_lock_lock((a1 + 4552));
      v4 = *(a1 + 4560);
      if (v4)
      {
        v5 = (a1 + 4560);
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    if (v2 == 842150450)
    {
      v3 = (a1 + 1444);
      os_unfair_lock_lock((a1 + 1444));
      v4 = *(a1 + 1448);
      if (v4)
      {
        v5 = (a1 + 1448);
        goto LABEL_16;
      }

LABEL_19:

      os_unfair_lock_unlock(v3);
      return;
    }

LABEL_26:
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "data_map.c", 470, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (v2 != -572662307)
  {
    if (v2 == -270471200)
    {
      v3 = (a1 + 456);
      os_unfair_lock_lock((a1 + 456));
      v4 = *(a1 + 464);
      if (v4)
      {
        v5 = (a1 + 464);
LABEL_16:
        v6 = v4[2];
        if (v6)
        {
          CFRelease(v6);
        }

        free(v4);
        *v5 = 0;
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    goto LABEL_26;
  }

  if (*(a1 + 432))
  {
    pthread_rwlock_wrlock((a1 + 224));
  }

  else
  {
    pthread_rwlock_rdlock((a1 + 224));
  }

  _data_map_clear_seen(*(a1 + 440));
  (*(**(a1 + 448) + 280))(*(a1 + 448));

  pthread_rwlock_unlock((a1 + 224));
}

uint64_t data_map_garbage_collect_setup(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 216);
    v3 = 0xFFFFFFFFLL;
    if (v2 > 842150449)
    {
      if (v2 == 1684300900)
      {
        if ((*(a1 + 4573) & 1) == 0)
        {
          v8 = _db_write_lock(a1);
          if (v8)
          {
            v27 = v8;
            v18 = *__error();
            v19 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              if (v27 == -1)
              {
                v27 = *__error();
              }

              *buf = 136315650;
              v29 = "_data_map64_wrlock";
              v30 = 1024;
              *v31 = 261;
              *&v31[4] = 1024;
              *&v31[6] = v27;
              _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_wrlock error %d", buf, 0x18u);
            }

            *__error() = v18;
          }
        }

        v9 = *(a1 + 224);
        os_unfair_lock_lock((a1 + 4552));
        if (*(a1 + 4560))
        {
          os_unfair_lock_unlock((a1 + 4552));
          _data_map64_unlock(a1);
          goto LABEL_22;
        }

        *(a1 + 4560) = bit_vector_create(v9);
        v11 = (a1 + 4552);
        goto LABEL_29;
      }

      if (v2 == 842150450)
      {
        if ((*(a1 + 1461) & 1) == 0)
        {
          v6 = _db_write_lock(a1);
          if (v6)
          {
            v26 = v6;
            v16 = *__error();
            v17 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              if (v26 == -1)
              {
                v26 = *__error();
              }

              *buf = 136315650;
              v29 = "_data_map32_wrlock";
              v30 = 1024;
              *v31 = 290;
              *&v31[4] = 1024;
              *&v31[6] = v26;
              _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: _data_map32_wrlock error %d", buf, 0x18u);
            }

            *__error() = v16;
          }
        }

        v7 = *(a1 + 220);
        os_unfair_lock_lock((a1 + 1444));
        if (*(a1 + 1448))
        {
          os_unfair_lock_unlock((a1 + 1444));
          _data_map32_unlock(a1);
          goto LABEL_22;
        }

        *(a1 + 1448) = bit_vector_create(v7);
        v11 = (a1 + 1444);
LABEL_29:
        os_unfair_lock_unlock(v11);
        v3 = 0;
      }
    }

    else if (v2 == -572662307)
    {
      if (*(a1 + 432))
      {
        pthread_rwlock_wrlock((a1 + 224));
      }

      else
      {
        pthread_rwlock_rdlock((a1 + 224));
      }

      v3 = data_map_garbage_collect_setup(*(a1 + 440));
      v10 = (*(**(a1 + 448) + 304))(*(a1 + 448));
      if (v3 != v10)
      {
        v20 = v10;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v29 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v30 = 1024;
          *v31 = 641;
          *&v31[4] = 2080;
          *&v31[6] = "data_map_double_garbage_collect_setup";
          v32 = 2080;
          v33 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v29 = v3;
          v30 = 2048;
          *v31 = v20;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v21 = __si_assert_copy_extra_332();
        v22 = v21;
        v23 = "";
        if (v21)
        {
          v23 = v21;
        }

        __message_assert(v21, "data_map_double.m", 641, "output == output_new", v23);
        free(v22);
        if (__valid_fs(-1))
        {
          v24 = 2989;
        }

        else
        {
          v24 = 3072;
        }

        *v24 = -559038737;
        abort();
      }

      pthread_rwlock_unlock((a1 + 224));
    }

    else if (v2 == -270471200)
    {
      if ((*(a1 + 477) & 1) == 0)
      {
        v4 = _db_write_lock(a1);
        if (v4)
        {
          v25 = v4;
          v14 = *__error();
          v15 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            if (v25 == -1)
            {
              v25 = *__error();
            }

            *buf = 136315650;
            v29 = "_data_map_ext_wrlock";
            v30 = 1024;
            *v31 = 288;
            *&v31[4] = 1024;
            *&v31[6] = v25;
            _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", buf, 0x18u);
          }

          *__error() = v14;
        }
      }

      v5 = *(a1 + 224);
      os_unfair_lock_lock((a1 + 456));
      if (*(a1 + 464))
      {
        os_unfair_lock_unlock((a1 + 456));
        _data_map_ext_unlock(a1);
LABEL_22:
        v3 = 22;
        goto LABEL_30;
      }

      *(a1 + 464) = bit_vector_create(v5);
      v11 = (a1 + 456);
      goto LABEL_29;
    }
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

LABEL_30:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t __data_maps_garbage_collect_setup_block_invoke(uint64_t a1, uint64_t a2)
{
  result = data_map_garbage_collect_setup(a2);
  if (!result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t __data_maps_garbage_collect_setup_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    _data_map_clear_seen(a2);
  }

  _data_map_unlock(a2);
  return 0;
}

uint64_t data_map_garbage_collect(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v192 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_39;
  }

  v8 = 0;
  v9 = *(a1 + 216);
  if (v9 <= 842150449)
  {
    if (v9 == -572662307)
    {
      *(a4 + 4216) = malloc_type_calloc(1uLL, 0x1080uLL, 0x10B204083C0B5B4uLL);
      v8 = data_map_garbage_collect(*(a1 + 440), a2, a3, a4);
      v17 = *(a4 + 4216);
      v18 = (*(**(a1 + 448) + 312))();
      if (v8 != v18)
      {
        v19 = v18;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          *&buf[12] = 1024;
          *&buf[14] = 595;
          *&buf[18] = 2080;
          *&buf[20] = "data_map_double_garbage_collect";
          *&buf[28] = 2080;
          *&buf[30] = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v8;
          *&buf[12] = 2048;
          *&buf[14] = v19;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v20 = __si_assert_copy_extra_332();
        v21 = v20;
        v22 = "";
        if (v20)
        {
          v22 = v20;
        }

        __message_assert(v20, "data_map_double.m", 595, "output == output_new", v22);
        free(v21);
        if (__valid_fs(-1))
        {
          v23 = 2989;
        }

        else
        {
          v23 = 3072;
        }

        *v23 = -559038737;
        abort();
      }

      goto LABEL_40;
    }

    if (v9 != -270471200)
    {
      goto LABEL_40;
    }

    if (*(a1 + 464))
    {
      if ((*(a1 + 477) & 1) == 0)
      {
        v10 = _db_write_lock(a1);
        if (v10)
        {
          v132 = v10;
          v133 = *__error();
          v134 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            if (v132 == -1)
            {
              v132 = *__error();
            }

            *buf = 136315650;
            *&buf[4] = "_data_map_ext_wrlock";
            *&buf[12] = 1024;
            *&buf[14] = 288;
            *&buf[18] = 1024;
            *&buf[20] = v132;
            _os_log_error_impl(&dword_1C278D000, v134, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", buf, 0x18u);
          }

          *__error() = v133;
        }
      }

      _data_map_ext_unlock(a1);
    }

LABEL_39:
    v8 = 0;
    goto LABEL_40;
  }

  if (v9 == 1684300900)
  {
    if (!*(a1 + 4560))
    {
      goto LABEL_39;
    }

    v24 = a1 + 4096;
    if ((*(a1 + 4573) & 1) == 0)
    {
      v25 = _db_write_lock(a1);
      if (v25)
      {
        v138 = v25;
        v139 = *__error();
        v140 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
        {
          if (v138 == -1)
          {
            v138 = *__error();
          }

          *buf = 136315650;
          *&buf[4] = "_data_map64_wrlock";
          *&buf[12] = 1024;
          *&buf[14] = 261;
          *&buf[18] = 1024;
          *&buf[20] = v138;
          _os_log_error_impl(&dword_1C278D000, v140, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_wrlock error %d", buf, 0x18u);
        }

        *__error() = v139;
        v24 = a1 + 4096;
      }
    }

    v26 = *(a1 + 224);
    if (v26 - 1 <= a2 || (v153 = v24, v27 = *(a1 + 4560), v194.length = v26 - a2, v194.location = a2, FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(*(v27 + 16), v194, 0), FirstIndexOfBit < a2) || ((v29 = FirstIndexOfBit, FirstIndexOfBit <= v26 - 1) ? (v30 = FirstIndexOfBit >= *(a1 + 224)) : (v30 = 1), v30))
    {
LABEL_37:
      v8 = 0;
LABEL_38:
      _data_map64_unlock(a1);
      goto LABEL_40;
    }

    v52 = 16 * FirstIndexOfBit;
    while (1)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
LABEL_140:
        v100 = __si_assert_copy_extra_332();
        v101 = v100;
        v102 = "";
        if (v100)
        {
          v102 = v100;
        }

        __message_assert(v100, "bit_vector.h", 109, "bitIndex >= 0", v102);
        free(v101);
        if (__valid_fs(-1))
        {
          v103 = 2989;
        }

        else
        {
          v103 = 3072;
        }

        *v103 = -559038737;
        abort();
      }

      if (*v27 > v29 && CFBitVectorGetBitAtIndex(*(v27 + 16), v29))
      {
        goto LABEL_78;
      }

      if (*(a1 + 224) <= v29)
      {
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v179 = 0u;
        memset(buf, 0, sizeof(buf));
        v61 = *__error();
        v62 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v149 = *(a1 + 224);
          v64 = fd_name(*(a1 + 248), buf, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map64_get_offset_entry";
          *&__s[12] = 1024;
          *&__s[14] = 359;
          *&__s[18] = 2048;
          *&__s[20] = v29;
          *&__s[28] = 2048;
          *&__s[30] = v149;
          *&__s[38] = 2048;
          *&__s[40] = a1;
          *&__s[48] = 2080;
          *&__s[50] = v64;
          _os_log_error_impl(&dword_1C278D000, v62, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", __s, 0x3Au);
        }

        *__error() = v61;
        goto LABEL_78;
      }

      v53 = *(a1 + 4456);
      if (v53)
      {
        v54 = *(v53 + v52);
        if (v54 >= 2)
        {
          break;
        }
      }

LABEL_78:
      ++v29;
      v52 += 16;
      if (v26 == v29)
      {
        goto LABEL_37;
      }
    }

    *v157 = 0;
    *&v157[8] = 0;
    LOBYTE(v154) = 0;
    v55 = *(a1 + 296);
    if (v55 <= v54)
    {
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v179 = 0u;
      memset(buf, 0, sizeof(buf));
      v148 = *__error();
      v63 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
LABEL_77:
        *__error() = v148;
        goto LABEL_78;
      }

      v144 = *(a1 + 296);
      v65 = fd_name(*(a1 + 248), buf, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map64_get_data_entry";
      *&__s[12] = 1024;
      *&__s[14] = 376;
      *&__s[18] = 2048;
      *&__s[20] = v54;
      *&__s[28] = 2048;
      *&__s[30] = v144;
      *&__s[38] = 2048;
      *&__s[40] = a1;
      *&__s[48] = 2080;
      *&__s[50] = v65;
      v59 = v63;
      v60 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
    }

    else
    {
      data_entry_restore_64(a1 + 280, v54, v55, v157, &v154);
      if (v154 != 1)
      {
        if ((a3 & 4) == 0 && a4)
        {
          v8 = _data_map64_garbage_compact_collect(a1);
          goto LABEL_38;
        }

        v66 = *(a1 + 224);
        if (v66 - 1 < v29)
        {
          LODWORD(v67) = 0;
LABEL_91:
          if ((a3 & 2) != 0)
          {
            v68 = *__error();
            v69 = _SILogForLogForCategory(0);
            v70 = 2 * (gSILogLevels[0] < 4);
            if (os_log_type_enabled(v69, v70))
            {
              *buf = 67109376;
              *&buf[4] = v67;
              *&buf[8] = 2048;
              *&buf[10] = a1;
              _os_log_impl(&dword_1C278D000, v69, v70, "Found %d deleted strings from %p", buf, 0x12u);
            }

            v8 = 0;
            *__error() = v68;
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        v67 = 0;
        v145 = *(a1 + 220);
        while (2)
        {
          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_140;
          }

          if (*v27 <= v29 || !CFBitVectorGetBitAtIndex(*(v27 + 16), v29))
          {
            if (*(a1 + 224) <= v29)
            {
              v190 = 0u;
              v191 = 0u;
              v188 = 0u;
              v189 = 0u;
              v186 = 0u;
              v187 = 0u;
              v184 = 0u;
              v185 = 0u;
              v182 = 0u;
              v183 = 0u;
              v180 = 0u;
              v181 = 0u;
              v179 = 0u;
              memset(buf, 0, sizeof(buf));
              v85 = *__error();
              v86 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
              {
                v152 = v67;
                v94 = *(a1 + 224);
                v95 = fd_name(*(a1 + 248), buf, 0x100uLL);
                *__s = 136316418;
                *&__s[4] = "_data_map64_get_offset_entry";
                *&__s[12] = 1024;
                *&__s[14] = 359;
                *&__s[18] = 2048;
                *&__s[20] = v29;
                *&__s[28] = 2048;
                *&__s[30] = v94;
                v67 = v152;
                *&__s[38] = 2048;
                *&__s[40] = a1;
                *&__s[48] = 2080;
                *&__s[50] = v95;
                _os_log_error_impl(&dword_1C278D000, v86, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", __s, 0x3Au);
              }

              *__error() = v85;
            }

            else
            {
              v76 = *(a1 + 4456);
              if (v76)
              {
                v77 = *(v76 + v52);
                if (v77 >= 2)
                {
                  *v157 = 0;
                  *&v157[8] = 0;
                  LOBYTE(v154) = 0;
                  v78 = *(a1 + 296);
                  if (v78 <= v77)
                  {
                    v150 = v67;
                    v190 = 0u;
                    v191 = 0u;
                    v188 = 0u;
                    v189 = 0u;
                    v186 = 0u;
                    v187 = 0u;
                    v184 = 0u;
                    v185 = 0u;
                    v182 = 0u;
                    v183 = 0u;
                    v180 = 0u;
                    v181 = 0u;
                    v179 = 0u;
                    memset(buf, 0, sizeof(buf));
                    v79 = *__error();
                    v87 = _SILogForLogForCategory(0);
                    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                    {
                      v141 = *(a1 + 296);
                      v96 = fd_name(*(a1 + 248), buf, 0x100uLL);
                      *__s = 136316418;
                      *&__s[4] = "_data_map64_get_data_entry";
                      *&__s[12] = 1024;
                      *&__s[14] = 376;
                      *&__s[18] = 2048;
                      *&__s[20] = v77;
                      *&__s[28] = 2048;
                      *&__s[30] = v141;
                      *&__s[38] = 2048;
                      *&__s[40] = a1;
                      *&__s[48] = 2080;
                      *&__s[50] = v96;
                      v83 = v87;
                      v84 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_135:
                      _os_log_error_impl(&dword_1C278D000, v83, OS_LOG_TYPE_ERROR, v84, __s, 0x3Au);
                    }

LABEL_116:
                    *__error() = v79;
                    v88 = v150;
                  }

                  else
                  {
                    data_entry_restore_64(a1 + 280, v77, v78, v157, &v154);
                    if (v154 == 1)
                    {
                      v150 = v67;
                      v190 = 0u;
                      v191 = 0u;
                      v188 = 0u;
                      v189 = 0u;
                      v186 = 0u;
                      v187 = 0u;
                      v184 = 0u;
                      v185 = 0u;
                      v182 = 0u;
                      v183 = 0u;
                      v180 = 0u;
                      v181 = 0u;
                      v179 = 0u;
                      memset(buf, 0, sizeof(buf));
                      v79 = *__error();
                      v80 = _SILogForLogForCategory(0);
                      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                      {
                        v81 = fd_name(*(a1 + 248), buf, 0x100uLL);
                        v82 = *(a1 + 296);
                        *__s = 136316418;
                        *&__s[4] = "_data_map64_get_data_entry";
                        *&__s[12] = 1024;
                        *&__s[14] = 372;
                        *&__s[18] = 2080;
                        *&__s[20] = v81;
                        *&__s[28] = 2048;
                        *&__s[30] = v77;
                        *&__s[38] = 2048;
                        *&__s[40] = v82;
                        *&__s[48] = 2048;
                        *&__s[50] = *v157;
                        v83 = v80;
                        v84 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
                        goto LABEL_135;
                      }

                      goto LABEL_116;
                    }

                    if ((a3 & 2) != 0)
                    {
                      v89 = v67;
                      if ((a3 & 8) != 0)
                      {
                        if (gSILogLevels[0] >= 5)
                        {
                          v151 = *__error();
                          v97 = _SILogForLogForCategory(0);
                          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                          {
                            v99 = *&v157[8] + *(a1 + 220);
                            *buf = 67109890;
                            *&buf[4] = v29;
                            *&buf[8] = 1024;
                            *&buf[10] = *v157;
                            *&buf[14] = 2080;
                            *&buf[16] = v99;
                            *&buf[24] = 2048;
                            *&buf[26] = a1;
                            v91 = v97;
                            v92 = "Delete data for id:%d size:%d %s from %p";
                            v93 = 34;
LABEL_138:
                            _os_log_impl(&dword_1C278D000, v91, OS_LOG_TYPE_DEFAULT, v92, buf, v93);
                          }

LABEL_139:
                          *__error() = v151;
                          v67 = v89;
                        }
                      }

                      else if (gSILogLevels[0] >= 5)
                      {
                        v151 = *__error();
                        v90 = _SILogForLogForCategory(0);
                        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 67109632;
                          *&buf[4] = v29;
                          *&buf[8] = 1024;
                          *&buf[10] = *v157;
                          *&buf[14] = 2048;
                          *&buf[16] = a1;
                          v91 = v90;
                          v92 = "Delete data for id:%d size:%d from %p";
                          v93 = 24;
                          goto LABEL_138;
                        }

                        goto LABEL_139;
                      }
                    }

                    v88 = v67 + 1;
                    if ((a3 & 4) == 0)
                    {
                      if (!v67)
                      {
                        if ((*(v153 + 473) & 1) == 0)
                        {
                          _data_map64_dirty(a1);
                          *(v153 + 473) = 1;
                        }

                        if ((*(v153 + 475) & 1) == 0)
                        {
                          _data_map64_dirty(a1);
                          *(v153 + 475) = 1;
                        }
                      }

                      *(v76 + v52) = xmmword_1C2BFA340;
                      bzero(*&v157[8], (*v157 + v145));
                    }
                  }

                  v67 = v88;
                }
              }
            }
          }

          ++v29;
          v52 += 16;
          if (v66 == v29)
          {
            goto LABEL_91;
          }

          continue;
        }
      }

      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v179 = 0u;
      memset(buf, 0, sizeof(buf));
      v148 = *__error();
      v56 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_77;
      }

      v57 = fd_name(*(a1 + 248), buf, 0x100uLL);
      v58 = *(a1 + 296);
      *__s = 136316418;
      *&__s[4] = "_data_map64_get_data_entry";
      *&__s[12] = 1024;
      *&__s[14] = 372;
      *&__s[18] = 2080;
      *&__s[20] = v57;
      *&__s[28] = 2048;
      *&__s[30] = v54;
      *&__s[38] = 2048;
      *&__s[40] = v58;
      *&__s[48] = 2048;
      *&__s[50] = *v157;
      v59 = v56;
      v60 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
    }

    _os_log_error_impl(&dword_1C278D000, v59, OS_LOG_TYPE_ERROR, v60, __s, 0x3Au);
    goto LABEL_77;
  }

  if (v9 != 842150450)
  {
    goto LABEL_40;
  }

  if (!*(a1 + 1448))
  {
    goto LABEL_39;
  }

  if ((*(a1 + 1461) & 1) == 0)
  {
    v11 = _db_write_lock(a1);
    if (v11)
    {
      v135 = v11;
      v136 = *__error();
      v137 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
      {
        if (v135 == -1)
        {
          v135 = *__error();
        }

        *buf = 136315650;
        *&buf[4] = "_data_map32_wrlock";
        *&buf[12] = 1024;
        *&buf[14] = 290;
        *&buf[18] = 1024;
        *&buf[20] = v135;
        _os_log_error_impl(&dword_1C278D000, v137, OS_LOG_TYPE_ERROR, "%s:%d: _data_map32_wrlock error %d", buf, 0x18u);
      }

      *__error() = v136;
    }
  }

  v12 = *(a1 + 220);
  v13 = v12 - 1;
  if (v12 - 1 <= a2 || (v14 = *(a1 + 1448), v193.location = a2, v193.length = (v12 - a2), v15 = CFBitVectorGetFirstIndexOfBit(*(v14 + 16), v193, 0), v16 = v15, v15 < a2))
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v8 = 0;
  if (v13 < v15 || *(a1 + 220) <= v15)
  {
    goto LABEL_17;
  }

  while (1)
  {
    if (*v14 > v16 && CFBitVectorGetBitAtIndex(*(v14 + 16), v16))
    {
      goto LABEL_57;
    }

    if (*(a1 + 220) > v16)
    {
      break;
    }

    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v179 = 0u;
    memset(buf, 0, sizeof(buf));
    v39 = *__error();
    v47 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v50 = *(a1 + 220);
      v51 = fd_name(*(a1 + 1272), buf, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_offset_entry";
      *&__s[12] = 1024;
      *&__s[14] = 422;
      *&__s[18] = 1024;
      *&__s[20] = v16;
      *&__s[24] = 1024;
      *&__s[26] = v50;
      *&__s[30] = 2048;
      *&__s[32] = a1;
      *&__s[40] = 2080;
      *&__s[42] = v51;
      v43 = __s;
      v44 = v47;
      v45 = "%s:%d: invalid data id %d max %u %p %s";
      v46 = 50;
      goto LABEL_62;
    }

LABEL_56:
    *__error() = v39;
LABEL_57:
    if (++v16 > v13)
    {
      goto LABEL_16;
    }
  }

  v33 = *(a1 + 1352);
  if (!v33)
  {
    goto LABEL_57;
  }

  v34 = *(v33 + 4 * v16);
  if (v34 < 2)
  {
    goto LABEL_57;
  }

  v154 = 0;
  v155 = 0;
  v156 = 0;
  v35 = *(a1 + 1328);
  if (v35 <= v34)
  {
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v179 = 0u;
    memset(buf, 0, sizeof(buf));
    v39 = *__error();
    v48 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v146 = *(a1 + 1328);
      v49 = fd_name(*(a1 + 1272), buf, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_data_entry";
      *&__s[12] = 1024;
      *&__s[14] = 446;
      *&__s[18] = 2048;
      *&__s[20] = v34;
      *&__s[28] = 2048;
      *&__s[30] = v146;
      *&__s[38] = 2048;
      *&__s[40] = a1;
      *&__s[48] = 2080;
      *&__s[50] = v49;
      v43 = __s;
      v44 = v48;
      v45 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      v46 = 58;
LABEL_62:
      _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, v45, v43, v46);
      goto LABEL_56;
    }

    goto LABEL_56;
  }

  data_entry_restore_32(*(a1 + 1320), v34, v35, &v154, &v156);
  if (v156 == 1)
  {
    v177 = 0;
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v36 = v34;
    v37 = 5;
    memset(__s, 0, sizeof(__s));
    do
    {
      if (v36 >= *(a1 + 1328))
      {
        break;
      }

      v38 = strlen(__s);
      sprintf(&__s[v38], "%d ", *(*(a1 + 1320) + v36++));
      --v37;
    }

    while (v37);
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v179 = 0u;
    memset(buf, 0, sizeof(buf));
    v39 = *__error();
    v40 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    v41 = fd_name(*(a1 + 1272), buf, 0x100uLL);
    v42 = *(a1 + 1328);
    *v157 = 136316674;
    *&v157[4] = "_data_map32_get_data_entry";
    *&v157[12] = 1024;
    *&v157[14] = 442;
    v158 = 2080;
    v159 = v41;
    v160 = 2048;
    v161 = v34;
    v162 = 2048;
    v163 = v42;
    v164 = 2048;
    v165 = v154;
    v166 = 2080;
    v167 = __s;
    v43 = v157;
    v44 = v40;
    v45 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
    v46 = 68;
    goto LABEL_62;
  }

  if (!v16)
  {
    goto LABEL_16;
  }

  if ((a3 & 4) == 0 && a4)
  {
    v8 = _data_map32_garbage_compact_collect(a1, v14, v16, a3, a4);
    goto LABEL_17;
  }

  v71 = *(a1 + 220) - 1;
  if (v71 >= v16)
  {
    v72 = 0;
    v147 = *(a1 + 224);
    while (1)
    {
      if (*v14 <= v16 || !CFBitVectorGetBitAtIndex(*(v14 + 16), v16))
      {
        if (*(a1 + 220) <= v16)
        {
          v190 = 0u;
          v191 = 0u;
          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v179 = 0u;
          memset(buf, 0, sizeof(buf));
          v118 = *__error();
          v119 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            v126 = *(a1 + 220);
            v127 = fd_name(*(a1 + 1272), buf, 0x100uLL);
            *__s = 136316418;
            *&__s[4] = "_data_map32_get_offset_entry";
            *&__s[12] = 1024;
            *&__s[14] = 422;
            *&__s[18] = 1024;
            *&__s[20] = v16;
            *&__s[24] = 1024;
            *&__s[26] = v126;
            *&__s[30] = 2048;
            *&__s[32] = a1;
            *&__s[40] = 2080;
            *&__s[42] = v127;
            _os_log_error_impl(&dword_1C278D000, v119, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
          }

          *__error() = v118;
          goto LABEL_163;
        }

        v104 = *(a1 + 1352);
        if (v104)
        {
          v105 = *(v104 + 4 * v16);
          if (v105 >= 2)
          {
            break;
          }
        }
      }

LABEL_163:
      if (++v16 > v71)
      {
        goto LABEL_97;
      }
    }

    v154 = 0;
    v155 = 0;
    v156 = 0;
    v106 = *(a1 + 1328);
    if (v106 <= v105)
    {
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v179 = 0u;
      memset(buf, 0, sizeof(buf));
      v110 = *__error();
      v120 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
      {
LABEL_161:
        *__error() = v110;
        v121 = v72;
LABEL_162:
        v72 = v121;
        goto LABEL_163;
      }

      v143 = *(a1 + 1328);
      v128 = fd_name(*(a1 + 1272), buf, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_data_entry";
      *&__s[12] = 1024;
      *&__s[14] = 446;
      *&__s[18] = 2048;
      *&__s[20] = v105;
      *&__s[28] = 2048;
      *&__s[30] = v143;
      *&__s[38] = 2048;
      *&__s[40] = a1;
      *&__s[48] = 2080;
      *&__s[50] = v128;
      v114 = __s;
      v115 = v120;
      v116 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      v117 = 58;
LABEL_180:
      _os_log_error_impl(&dword_1C278D000, v115, OS_LOG_TYPE_ERROR, v116, v114, v117);
      goto LABEL_161;
    }

    data_entry_restore_32(*(a1 + 1320), v105, v106, &v154, &v156);
    if (v156 == 1)
    {
      v177 = 0;
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v107 = v105;
      v108 = 5;
      memset(__s, 0, sizeof(__s));
      do
      {
        if (v107 >= *(a1 + 1328))
        {
          break;
        }

        v109 = strlen(__s);
        sprintf(&__s[v109], "%d ", *(*(a1 + 1320) + v107++));
        --v108;
      }

      while (v108);
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v179 = 0u;
      memset(buf, 0, sizeof(buf));
      v110 = *__error();
      v111 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_161;
      }

      v112 = fd_name(*(a1 + 1272), buf, 0x100uLL);
      v113 = *(a1 + 1328);
      *v157 = 136316674;
      *&v157[4] = "_data_map32_get_data_entry";
      *&v157[12] = 1024;
      *&v157[14] = 442;
      v158 = 2080;
      v159 = v112;
      v160 = 2048;
      v161 = v105;
      v162 = 2048;
      v163 = v113;
      v164 = 2048;
      v165 = v154;
      v166 = 2080;
      v167 = __s;
      v114 = v157;
      v115 = v111;
      v116 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
      v117 = 68;
      goto LABEL_180;
    }

    if ((a3 & 2) == 0)
    {
LABEL_172:
      v121 = v72 + 1;
      if ((a3 & 4) == 0)
      {
        if (!v72)
        {
          if ((*(a1 + 1457) & 1) == 0)
          {
            _data_map32_dirty(a1);
            *(a1 + 1457) = 1;
          }

          if ((*(a1 + 1459) & 1) == 0)
          {
            _data_map32_dirty(a1);
            *(a1 + 1459) = 1;
          }
        }

        *(v104 + 4 * v16) = 1;
        bzero(v155, (v154 + v147));
      }

      goto LABEL_162;
    }

    if ((a3 & 8) != 0)
    {
      if (gSILogLevels[0] < 5)
      {
        goto LABEL_172;
      }

      v142 = *__error();
      v129 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_184;
      }

      v131 = v155 + *(a1 + 224);
      *buf = 67109890;
      *&buf[4] = v16;
      *&buf[8] = 1024;
      *&buf[10] = v154;
      *&buf[14] = 2080;
      *&buf[16] = v131;
      *&buf[24] = 2048;
      *&buf[26] = a1;
      v123 = v129;
      v124 = "Delete data for id:%d size:%d %s from %p";
      v125 = 34;
    }

    else
    {
      if (gSILogLevels[0] < 5)
      {
        goto LABEL_172;
      }

      v142 = *__error();
      v122 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_184;
      }

      *buf = 67109632;
      *&buf[4] = v16;
      *&buf[8] = 1024;
      *&buf[10] = v154;
      *&buf[14] = 2048;
      *&buf[16] = a1;
      v123 = v122;
      v124 = "Delete data for id:%d size:%d from %p";
      v125 = 24;
    }

    _os_log_impl(&dword_1C278D000, v123, OS_LOG_TYPE_DEFAULT, v124, buf, v125);
LABEL_184:
    *__error() = v142;
    goto LABEL_172;
  }

  LODWORD(v72) = 0;
LABEL_97:
  if ((a3 & 2) == 0)
  {
    goto LABEL_16;
  }

  v73 = *__error();
  v74 = _SILogForLogForCategory(0);
  v75 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v74, v75))
  {
    *buf = 67109376;
    *&buf[4] = v72;
    *&buf[8] = 2048;
    *&buf[10] = a1;
    _os_log_impl(&dword_1C278D000, v74, v75, "Found %d deleted strings from %p", buf, 0x12u);
  }

  v8 = 0;
  *__error() = v73;
LABEL_17:
  _data_map32_unlock(a1);
LABEL_40:
  v31 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t data_map_garbage_compact_collect_commit(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = 0xFFFFFFFFLL;
    goto LABEL_43;
  }

  v4 = a4;
  v8 = *(a1 + 216);
  v9 = 0xFFFFFFFFLL;
  if (v8 > 842150449)
  {
    if (v8 == 1684300900)
    {
      if ((*(a1 + 4573) & 1) == 0 && (v22 = _db_write_lock(a1)) != 0)
      {
        v36 = v22;
        v33 = *__error();
        v34 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          if (v36 == -1)
          {
            v36 = *__error();
          }

          *buf = 136315650;
          v38 = "_data_map64_wrlock";
          v39 = 1024;
          *v40 = 261;
          *&v40[4] = 1024;
          *&v40[6] = v36;
          _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_wrlock error %d", buf, 0x18u);
        }

        *__error() = v33;
        if (v4)
        {
          goto LABEL_42;
        }
      }

      else if (v4)
      {
        goto LABEL_42;
      }

      if (*a3)
      {
        goto LABEL_42;
      }

      if (!a2[1])
      {
        goto LABEL_42;
      }

      v23 = a2[2];
      if (v23 == *(a1 + 224))
      {
        v24 = a2[3];
        v45.length = v23 - 1;
        v45.location = 0;
        if (v24 == CFBitVectorGetCountOfBit(*(*(a1 + 4560) + 16), v45, 1u))
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      if (v8 != 842150450)
      {
        goto LABEL_43;
      }

      if ((*(a1 + 1461) & 1) == 0 && (v12 = _db_write_lock(a1)) != 0)
      {
        v35 = v12;
        v27 = *__error();
        v28 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          if (v35 == -1)
          {
            v35 = *__error();
          }

          *buf = 136315650;
          v38 = "_data_map32_wrlock";
          v39 = 1024;
          *v40 = 290;
          *&v40[4] = 1024;
          *&v40[6] = v35;
          _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: _data_map32_wrlock error %d", buf, 0x18u);
        }

        *__error() = v27;
        if (v4)
        {
          goto LABEL_42;
        }
      }

      else if (v4)
      {
        goto LABEL_42;
      }

      if (*a3)
      {
        goto LABEL_42;
      }

      if (!a2[1])
      {
        goto LABEL_42;
      }

      v13 = *(a1 + 220);
      if (a2[2] == v13)
      {
        v14 = a2[3];
        v44.length = (v13 - 1);
        v44.location = 0;
        if (v14 == CFBitVectorGetCountOfBit(*(*(a1 + 1448) + 16), v44, 1u))
        {
          goto LABEL_42;
        }
      }
    }

    v9 = 0;
    *a3 = 1;
    goto LABEL_43;
  }

  if (v8 != -572662307)
  {
    if (v8 != -270471200)
    {
      goto LABEL_43;
    }

    if ((*(a1 + 477) & 1) == 0)
    {
      v9 = _db_write_lock(a1);
      if (v9)
      {
        v10 = *__error();
        v11 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          if (v9 == -1)
          {
            LODWORD(v9) = *__error();
          }

          *buf = 136315650;
          v38 = "_data_map_ext_wrlock";
          v39 = 1024;
          *v40 = 288;
          *&v40[4] = 1024;
          *&v40[6] = v9;
          _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", buf, 0x18u);
        }

        v9 = 0;
        *__error() = v10;
      }

      goto LABEL_43;
    }

LABEL_42:
    v9 = 0;
    goto LABEL_43;
  }

  v9 = data_map_garbage_compact_collect_commit(*(a1 + 440), a2, a3, a4);
  v15 = a2[527];
  v16 = (*(**(a1 + 448) + 296))();
  v17 = *a3;
  if (*a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
      v39 = 1024;
      *v40 = 648;
      *&v40[4] = 2080;
      *&v40[6] = "data_map_double_garbage_compact_collect_commit";
      v41 = 2080;
      v42 = "*modified == modified_new";
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      v17 = *a3;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v38 = v17;
      v39 = 2048;
      *v40 = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      v17 = *a3;
    }

    if (v17)
    {
      v29 = __si_assert_copy_extra_332();
      v30 = v29;
      v31 = "";
      if (v29)
      {
        v31 = v29;
      }

      __message_assert(v29, "data_map_double.m", 648, "*modified == modified_new", v31);
      free(v30);
      if (__valid_fs(-1))
      {
        v32 = 2989;
      }

      else
      {
        v32 = 3072;
      }

      *v32 = -559038737;
      abort();
    }
  }

  if (v9 != v16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
      v39 = 1024;
      *v40 = 649;
      *&v40[4] = 2080;
      *&v40[6] = "data_map_double_garbage_compact_collect_commit";
      v41 = 2080;
      v42 = "output == output_new";
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v38 = v9;
      v39 = 2048;
      *v40 = v16;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
    }

    v18 = __si_assert_copy_extra_332();
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert(v18, "data_map_double.m", 649, "output == output_new", v20);
    free(v19);
    if (__valid_fs(-1))
    {
      v21 = 2989;
    }

    else
    {
      v21 = 3072;
    }

    *v21 = -559038737;
    abort();
  }

LABEL_43:
  v25 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t data_map_garbage_collect_handle_deletes(uint64_t a1, int64x2_t *a2)
{
  v104 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 216);
    v5 = 0xFFFFFFFFLL;
    if (v4 > 842150449)
    {
      v6 = (a1 + 1396);
      if (v4 == 1684300900)
      {
        if (a2->i64[1])
        {
          bzero(buf, 0x400uLL);
          bzero(v97, 0x400uLL);
          storageWindowsUnmap(a1 + 280);
          munmap(*(a1 + 4456), *(a1 + 4440));
          *(a1 + 4456) = a2[262].i64[0];
          *(a1 + 4448) = a2[263].i64[0];
          a2[262].i64[0] = -1;
          v17 = fd_name(*(a1 + 280), buf, 0x400uLL);
          v18 = *__error();
          v19 = _SILogForLogForCategory(0);
          v20 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v19, v20))
          {
            v21 = fd_realpath(a2[2].i64[0], v97);
            *v58 = 134218498;
            v59 = a1;
            v60 = 2080;
            v61 = v21;
            v62 = 2080;
            v63 = v17;
            _os_log_impl(&dword_1C278D000, v19, v20, "rename %p %s to %s", v58, 0x20u);
          }

          *__error() = v18;
          fd_rename(a2[2].i64[0], v17);
          memcpy((a1 + 280), &a2[2], 0x1038uLL);
          bzero(&a2[2], 0x1038uLL);
          v22 = fd_name(*(a1 + 4432), buf, 0x400uLL);
          v23 = *__error();
          v24 = _SILogForLogForCategory(0);
          v25 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v24, v25))
          {
            v26 = fd_realpath(a2[261].i64[1], v97);
            *v58 = 134218498;
            v59 = a1;
            v60 = 2080;
            v61 = v26;
            v62 = 2080;
            v63 = v22;
            _os_log_impl(&dword_1C278D000, v24, v25, "rename %p %s to %s", v58, 0x20u);
          }

          *__error() = v23;
          fd_rename(a2[261].i64[1], v22);
          v27 = *(a1 + 4432);
          *(a1 + 4432) = a2[261].i64[1];
          fd_release(v27);
          a2[261].i64[1] = 0;
          v28 = &a2->i64[1];
          v29 = vld1q_dup_f64(v28);
          *(a1 + 4512) = vaddq_s64(*(a1 + 4512), v29);
          *(a1 + 4528) = 0;
          _data_map64_dirty(a1);
          _data_map64_sync_data(a1);
          _data_map64_sync_header(a1);
          if ((*(a1 + 4570) & 1) == 0)
          {
            _data_map64_dirty(a1);
            *(a1 + 4570) = 1;
          }

          _data_map64_rehash(a1);
          _data_map64_sync_data(a1);
          _data_map64_sync_header(a1);
        }
      }

      else
      {
        if (v4 != 842150450)
        {
          goto LABEL_48;
        }

        if (a2->i64[1])
        {
          bzero(buf, 0x400uLL);
          bzero(v97, 0x400uLL);
          munmap(*(a1 + 1320), *(a1 + 1312));
          *(a1 + 1320) = a2[2].i64[1];
          *(a1 + 1312) = vmovn_s64(a2[5]);
          *(a1 + 1328) = a2[6].i64[0];
          a2[2].i64[1] = -1;
          fd_sync(a2[2].i64[0], 0);
          fd_sync(a2[3].i64[0], 1);
          munmap(*(a1 + 1352), *(a1 + 1344));
          *(a1 + 1352) = a2[3].i64[1];
          *(a1 + 1348) = a2[4].i64[1];
          a2[3].i64[1] = -1;
          v96 = 0u;
          v95 = 0u;
          v94 = 0u;
          v93 = 0u;
          v92 = 0u;
          v91 = 0u;
          v90 = 0u;
          v89 = 0u;
          v88 = 0u;
          v87 = 0u;
          v86 = 0u;
          v85 = 0u;
          v84 = 0u;
          v83 = 0u;
          v82 = 0u;
          v81 = 0u;
          v80 = 0u;
          v79 = 0u;
          v78 = 0u;
          v77 = 0u;
          v76 = 0u;
          v75 = 0u;
          v74 = 0u;
          v73 = 0u;
          v72 = 0u;
          v71 = 0u;
          v70 = 0u;
          v69 = 0u;
          v68 = 0u;
          v67 = 0u;
          v66 = 0u;
          v65 = 0u;
          __buf[0] = 0x6D6F76650A00;
          __buf[1] = 0x3232323200000003;
          __strlcpy_chk();
          v7 = &a2->i32[2];
          v8 = vld1_dup_f32(v7);
          *v6 = vadd_s32(*v6, v8);
          *(a1 + 1404) = 0;
          _data_map32_dirty(a1);
          _data_map32_sync_data(a1, 1);
          _data_map32_sync_header_to_tmp(a1);
          v9 = *(a1 + 1304);
          if (v9)
          {
            v10 = *(v9 + 44);
          }

          else
          {
            v10 = 0xFFFFFFFFLL;
          }

          v30 = si_openat_protected(v10, "tmp.movePlan", 1538, 3);
          pwrite(v30, __buf, 0x210uLL, 0);
          fcntl(v30, 85);
          bzero(v58, 0x400uLL);
          snprintf(v58, 0x400uLL, "tmp.%s.rehash", (a1 + 228));
          v31 = *(a1 + 1304);
          if (v31)
          {
            v32 = *(v31 + 44);
          }

          else
          {
            v32 = 0xFFFFFFFFLL;
          }

          v33 = si_openat_protected(v32, v58, 1538, 3);
          close(v33);
          v34 = fd_name(*(a1 + 1304), buf, 0x400uLL);
          v35 = *__error();
          v36 = _SILogForLogForCategory(0);
          v37 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v36, v37))
          {
            v38 = fd_realpath(a2[2].i64[0], v97);
            *v52 = 134218498;
            v53 = a1;
            v54 = 2080;
            v55 = v38;
            v56 = 2080;
            v57 = v34;
            _os_log_impl(&dword_1C278D000, v36, v37, "rename %p %s to %s", v52, 0x20u);
          }

          *__error() = v35;
          fd_rename(a2[2].i64[0], v34);
          v39 = *(a1 + 1304);
          *(a1 + 1304) = a2[2].i64[0];
          fd_release(v39);
          a2[2].i64[0] = 0;
          v40 = fd_name(*(a1 + 1336), buf, 0x400uLL);
          v41 = *__error();
          v42 = _SILogForLogForCategory(0);
          v43 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v42, v43))
          {
            v44 = fd_realpath(a2[3].i64[0], v97);
            *v52 = 134218498;
            v53 = a1;
            v54 = 2080;
            v55 = v44;
            v56 = 2080;
            v57 = v40;
            _os_log_impl(&dword_1C278D000, v42, v43, "rename %p %s to %s", v52, 0x20u);
          }

          *__error() = v41;
          fd_rename(a2[3].i64[0], v40);
          v45 = *(a1 + 1336);
          *(a1 + 1336) = a2[3].i64[0];
          fd_release(v45);
          a2[3].i64[0] = 0;
          _data_map32_sync_header(a1, 1);
          data_map32_commit_sync(a1);
          data_map32_shadow(a1);
          data_map32_commit_shadow(a1);
          data_map32_commit_shadow_complete(a1);
          v46 = *(a1 + 1304);
          if (v46)
          {
            v47 = *(v46 + 44);
          }

          else
          {
            v47 = -1;
          }

          unlinkat(v47, "tmp.movePlan", 2048);
          close(v30);
          if ((*(a1 + 1458) & 1) == 0)
          {
            _data_map32_dirty(a1);
            *(a1 + 1458) = 1;
          }

          _data_map32_rehash(a1);
          _data_map32_sync_data(a1, 1);
          _data_map32_sync_header(a1, 1);
          data_map32_shadow(a1);
          data_map32_commit_shadow(a1);
          data_map32_commit_shadow_complete(a1);
          v48 = *(a1 + 1304);
          if (v48)
          {
            v49 = *(v48 + 44);
          }

          else
          {
            v49 = -1;
          }

          unlinkat(v49, v58, 2048);
        }
      }

      v5 = 0;
      goto LABEL_48;
    }

    if (v4 == -572662307)
    {
      v5 = data_map_garbage_collect_handle_deletes(*(a1 + 440), a2);
      v11 = (*(**(a1 + 448) + 288))(*(a1 + 448), a2[263].i64[1]);
      if (v5 != v11)
      {
        v12 = v11;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v99 = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
          v100 = 1024;
          *v101 = 662;
          *&v101[4] = 2080;
          *&v101[6] = "data_map_double_garbage_collect_handle_deletes";
          v102 = 2080;
          v103 = "output == output_new";
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v99 = v5;
          v100 = 2048;
          *v101 = v12;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
        }

        v13 = __si_assert_copy_extra_332();
        v14 = v13;
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        __message_assert(v13, "data_map_double.m", 662, "output == output_new", v15);
        free(v14);
        if (__valid_fs(-1))
        {
          v16 = 2989;
        }

        else
        {
          v16 = 3072;
        }

        *v16 = -559038737;
        abort();
      }
    }

    else if (v4 == -270471200)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

LABEL_48:
  v50 = *MEMORY[0x1E69E9840];
  return v5;
}

void data_map_cleanup_compact_ctx(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (*a1 > 842150449)
  {
    if (v2 != 1684300900)
    {
      if (v2 == 842150450)
      {
        v3 = *(a1 + 40);
        if (v3 != -1)
        {
          munmap(v3, *(a1 + 80));
        }

        v4 = *(a1 + 32);
        if (v4)
        {
          _fd_unlink_with_origin(v4, 0);
          fd_release(*(a1 + 32));
        }

        v5 = *(a1 + 56);
        if (v5 != -1)
        {
          munmap(v5, *(a1 + 64));
        }

        v8 = *(a1 + 48);
        v7 = (a1 + 48);
        v6 = v8;
        if (v8)
        {
          goto LABEL_28;
        }
      }

      return;
    }

    goto LABEL_16;
  }

  if (v2 != -572662307)
  {
    if (v2 != -270471200)
    {
      return;
    }

LABEL_16:
    storageWindowsUnmap(a1 + 32);
    v9 = *(a1 + 32);
    if (v9)
    {
      _fd_unlink_with_origin(*(a1 + 32), 0);
      fd_release(v9);
    }

    v10 = *(a1 + 4192);
    if (v10 != -1)
    {
      munmap(v10, *(a1 + 4200));
    }

    v6 = *(a1 + 4184);
    if (v6)
    {
      v7 = (a1 + 4184);
LABEL_28:
      _fd_unlink_with_origin(v6, 0);
      v14 = *v7;

      fd_release(v14);
      return;
    }

    return;
  }

  data_map_cleanup_compact_ctx(a1);
  v11 = *(a1 + 4216);
  storageWindowsUnmap((v11 + 4));
  v12 = v11[4];
  if (v12)
  {
    _fd_unlink_with_origin(v11[4], 0);
    fd_release(v12);
  }

  v13 = v11[524];
  if (v13 != -1)
  {
    munmap(v13, v11[525]);
  }

  v6 = v11[523];
  if (v6)
  {
    v7 = (v11 + 523);
    goto LABEL_28;
  }
}

void data_maps_garbage_compact_collect_commit(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v6 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v22 = __data_maps_garbage_compact_collect_commit_block_invoke;
  v23 = &unk_1E8195DF0;
  v24 = &v27;
  v25 = a2;
  v26 = a3;
  do
  {
    if (v22(v21, *(a1 + 8 * v6), v6))
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 3;
    }

    ++v6;
  }

  while (!v7);
  if (v28[3] & 1) != 0 || (a3)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(0);
    v12 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v11, (gSILogLevels[0] < 3)))
    {
      v16[0] = 0;
      _os_log_impl(&dword_1C278D000, v11, v12, "*warn* Delete strings canceled", v16, 2u);
    }

    *__error() = v10;
  }

  else
  {
    v8 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v18 = __data_maps_garbage_compact_collect_commit_block_invoke_2;
    v19 = &__block_descriptor_tmp_13_8875;
    v20 = v4;
    do
    {
      if (v18(v17, *(a1 + 8 * v8), v8))
      {
        v9 = 1;
      }

      else
      {
        v9 = v8 == 3;
      }

      ++v8;
    }

    while (!v9);
  }

  for (i = 0; i != 32; i += 8)
  {
    v14 = *(a1 + i);
    _data_map_clear_seen(v14);
    _data_map_unlock(v14);
  }

  v15 = 4;
  do
  {
    if (*(v4 + 8))
    {
      data_map_cleanup_compact_ctx(v4);
    }

    v4 += 4224;
    --v15;
  }

  while (v15);
  _Block_object_dispose(&v27, 8);
}

uint64_t __data_maps_garbage_compact_collect_commit_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = (*(a1 + 32) + 4224 * a3);
  v6 = data_map_garbage_collect_handle_deletes(a2, v5);
  if (!v6)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(0);
    v9 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v5->i64[1];
      v13[0] = 67109632;
      v13[1] = v10;
      v14 = 2048;
      v15 = a2;
      v16 = 1024;
      v17 = a3;
      _os_log_impl(&dword_1C278D000, v8, v9, "Deleted %d items from %p[%d]", v13, 0x18u);
    }

    *__error() = v7;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t data_map_copy_deleted_ids(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_71;
  }

  v2 = 0;
  v3 = *(a1 + 216);
  if (v3 > 842150449)
  {
    if (v3 != 1684300900)
    {
      if (v3 != 842150450)
      {
        goto LABEL_72;
      }

      if (!*(a1 + 1396))
      {
        goto LABEL_71;
      }

      v13 = *(a1 + 220);
      v2 = bit_vector_create(v13);
      if (v13 < 2)
      {
        goto LABEL_72;
      }

      v14 = 1;
      while (1)
      {
        if (v14 >= *(a1 + 220))
        {
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          memset(v60, 0, sizeof(v60));
          v15 = *__error();
          v16 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 220);
            v18 = fd_name(*(a1 + 1272), v60, 0x100uLL);
            *buf = 136316418;
            v50 = "_data_map32_get_offset_entry";
            v51 = 1024;
            v52 = 422;
            v53 = 1024;
            *v54 = v14;
            *&v54[4] = 1024;
            *&v54[6] = v17;
            *v55 = 2048;
            *&v55[2] = a1;
            *v56 = 2080;
            *&v56[2] = v18;
            _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", buf, 0x32u);
          }

          *__error() = v15;
        }

        else if (*(*(a1 + 1352) + 4 * v14) != 1)
        {
          goto LABEL_30;
        }

        bit_vector_set_13535(v2, v14);
LABEL_30:
        if (v13 == ++v14)
        {
          goto LABEL_72;
        }
      }
    }

    if (!*(a1 + 4512))
    {
      goto LABEL_71;
    }

    v30 = *(a1 + 224);
    v2 = bit_vector_create(v30);
    if (v30 < 2)
    {
      goto LABEL_72;
    }

    v31 = 1;
    v32 = 16;
    v33 = &dword_1C278D000;
    while (1)
    {
      if (*(a1 + 224) <= v31)
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        memset(v60, 0, sizeof(v60));
        v34 = *__error();
        v35 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = v33;
          v37 = *(a1 + 224);
          v38 = fd_name(*(a1 + 248), v60, 0x100uLL);
          *buf = 136316418;
          v50 = "_data_map64_get_offset_entry";
          v51 = 1024;
          v52 = 359;
          v53 = 2048;
          *v54 = v31;
          *&v54[8] = 2048;
          *v55 = v37;
          v33 = v36;
          *&v55[8] = 2048;
          *v56 = a1;
          *&v56[8] = 2080;
          v57 = v38;
          _os_log_error_impl(v36, v35, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
        }

        *__error() = v34;
      }

      else if (*(*(a1 + 4456) + v32) != 1)
      {
        goto LABEL_69;
      }

      bit_vector_set_7166(v2, v31);
LABEL_69:
      ++v31;
      v32 += 16;
      if (v30 == v31)
      {
        goto LABEL_72;
      }
    }
  }

  if (v3 == -572662307)
  {
    v2 = data_map_copy_deleted_ids(*(a1 + 440));
    v19 = (*(**(a1 + 448) + 328))(*(a1 + 448));
    if (!(v2 | v19))
    {
      goto LABEL_71;
    }

    v20 = v19;
    v21 = *v2;
    v22 = *v19;
    if (*v2 != *v19)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 136315906;
        *&v60[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
        *&v60[12] = 1024;
        *&v60[14] = 620;
        *&v60[18] = 2080;
        *&v60[20] = "data_map_double_copy_deleted_ids";
        *&v60[28] = 2080;
        *&v60[30] = "output->count == output_new->count";
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", v60, 0x26u);
        v21 = *v2;
        v22 = *v20;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 134218240;
        *&v60[4] = v21;
        *&v60[12] = 2048;
        *&v60[14] = v22;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", v60, 0x16u);
        v21 = *v2;
        v22 = *v20;
      }

      v23 = v21 == v22;
      v21 = v22;
      if (!v23)
      {
        v45 = __si_assert_copy_extra_332();
        v46 = v45;
        v47 = "";
        if (v45)
        {
          v47 = v45;
        }

        __message_assert(v45, "data_map_double.m", 620, "output->count == output_new->count", v47);
        free(v46);
        if (__valid_fs(-1))
        {
          v48 = 2989;
        }

        else
        {
          v48 = 3072;
        }

        *v48 = -559038737;
        abort();
      }
    }

    if (v21 < 1)
    {
LABEL_56:
      v29 = v20[2];
      if (v29)
      {
        CFRelease(v29);
      }

      free(v20);
      goto LABEL_72;
    }

    v24 = 0;
    v25 = MEMORY[0x1E69E9C10];
    while (1)
    {
      BitAtIndex = CFBitVectorGetBitAtIndex(*(v2 + 16), v24);
      if (*v20 <= v24)
      {
        if (!BitAtIndex)
        {
          goto LABEL_48;
        }
      }

      else if ((BitAtIndex != 0) == (CFBitVectorGetBitAtIndex(v20[2], v24) != 0))
      {
        goto LABEL_48;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 0;
        _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "assertion failed", v60, 2u);
      }

LABEL_48:
      if (*v2 <= v24)
      {
        if (*v20 > v24)
        {
          v28 = 0;
LABEL_54:
          if (v28 != (CFBitVectorGetBitAtIndex(v20[2], v24) != 0))
          {
LABEL_73:
            v41 = __si_assert_copy_extra_332();
            v42 = v41;
            v43 = "";
            if (v41)
            {
              v43 = v41;
            }

            __message_assert(v41, "data_map_double.m", 622, "bit_vector_get(output, i) == bit_vector_get(output_new, i)", v43);
            free(v42);
            if (__valid_fs(-1))
            {
              v44 = 2989;
            }

            else
            {
              v44 = 3072;
            }

            *v44 = -559038737;
            abort();
          }
        }
      }

      else
      {
        v27 = CFBitVectorGetBitAtIndex(*(v2 + 16), v24);
        v28 = v27 != 0;
        if (*v20 > v24)
        {
          goto LABEL_54;
        }

        if (v27)
        {
          goto LABEL_73;
        }
      }

      if (++v24 >= *v2)
      {
        goto LABEL_56;
      }
    }
  }

  if (v3 != -270471200)
  {
    goto LABEL_72;
  }

  if (!*(a1 + 384))
  {
LABEL_71:
    v2 = 0;
    goto LABEL_72;
  }

  v4 = *(a1 + 224);
  v2 = bit_vector_create(v4);
  if (v4 >= 2)
  {
    v5 = 1;
    v6 = 24;
    do
    {
      if (*(a1 + 224) > v5 && (v7 = *(a1 + 296), (v7 + 1) > 1))
      {
        if (*(v7 + v6) != -2)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        memset(v60, 0, sizeof(v60));
        v8 = *__error();
        v9 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 224);
          v11 = *(a1 + 296);
          v12 = fd_name(*(a1 + 248), v60, 0x100uLL);
          *buf = 136316674;
          v50 = "_data_map_ext_get_offset_entry";
          v51 = 1024;
          v52 = 417;
          v53 = 2048;
          *v54 = v5;
          *&v54[8] = 2048;
          *v55 = v10;
          *&v55[8] = 2048;
          *v56 = a1;
          *&v56[8] = 2048;
          v57 = v11;
          v58 = 2080;
          v59 = v12;
          _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", buf, 0x44u);
        }

        *__error() = v8;
      }

      bit_vector_set_7166(v2, v5);
LABEL_14:
      ++v5;
      v6 += 24;
    }

    while (v4 != v5);
  }

LABEL_72:
  v39 = *MEMORY[0x1E69E9840];
  return v2;
}

void data_map_clone_files(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    while (1)
    {
      v6 = *(v5 + 216);
      if (v6 != -572662307)
      {
        break;
      }

      v5 = *(v5 + 440);
      if (!v5)
      {
        return;
      }
    }

    switch(v6)
    {
      case -270471200:
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v23 = 0;
        asprintf(&v23, "%s%s", a2, ".buckets");
        sibling_protected = fd_create_sibling_protected(*(v5 + 344), v23, 514, 0);
        *a3 = sibling_protected;
        if (sibling_protected)
        {
          fd_copyfile(*(v5 + 344), sibling_protected, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".header");
        v16 = fd_create_sibling_protected(*(v5 + 248), v23, 514, 0);
        *(a3 + 24) = v16;
        if (v16)
        {
          fd_copyfile(*(v5 + 248), v16, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".offsets");
        v17 = fd_create_sibling_protected(*(v5 + 280), v23, 514, 0);
        *(a3 + 8) = v17;
        if (!v17)
        {
          goto LABEL_37;
        }

        break;
      case 1684300900:
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v23 = 0;
        v18 = *(v5 + 4572);
        asprintf(&v23, "%s%s", a2, ".buckets");
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 0;
        }

        v20 = fd_create_sibling_protected(*(v5 + 4472), v23, 514, v19);
        *a3 = v20;
        if (v20)
        {
          fd_copyfile(*(v5 + 4472), v20, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".header");
        v21 = fd_create_sibling_protected(*(v5 + 248), v23, 514, v19);
        *(a3 + 24) = v21;
        if (v21)
        {
          fd_copyfile(*(v5 + 248), v21, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".offsets");
        v22 = fd_create_sibling_protected(*(v5 + 4432), v23, 514, v19);
        *(a3 + 8) = v22;
        if (v22)
        {
          fd_copyfile(*(v5 + 4432), v22, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".data");
        v17 = fd_create_sibling_protected(*(v5 + 280), v23, 514, v19);
        *(a3 + 16) = v17;
        if (!v17)
        {
          goto LABEL_37;
        }

        break;
      case 842150450:
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v23 = 0;
        v7 = *(v5 + 1462);
        asprintf(&v23, "%s%s", a2, ".buckets");
        if (v7)
        {
          v8 = 3;
        }

        else
        {
          v8 = 0;
        }

        v9 = fd_create_sibling_protected(*(v5 + 1368), v23, 514, v8);
        *a3 = v9;
        if (v9)
        {
          fd_copyfile(*(v5 + 1368), v9, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".header");
        v10 = fd_create_sibling_protected(*(v5 + 1272), v23, 514, v8);
        *(a3 + 24) = v10;
        if (v10)
        {
          fd_copyfile(*(v5 + 1272), v10, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".offsets");
        v11 = fd_create_sibling_protected(*(v5 + 1336), v23, 514, v8);
        *(a3 + 8) = v11;
        if (v11)
        {
          fd_copyfile(*(v5 + 1336), v11, 1);
        }

        free(v23);
        asprintf(&v23, "%s%s", a2, ".data");
        v12 = fd_create_sibling_protected(*(v5 + 1304), v23, 514, v8);
        *(a3 + 16) = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        v13 = v12;
        v14 = *(v5 + 1304);
        goto LABEL_36;
      default:
        return;
    }

    v13 = v17;
    v14 = *(v5 + 280);
LABEL_36:
    fd_copyfile(v14, v13, 1);
LABEL_37:
    free(v23);
  }
}

void data_map_delete_files(int a1, const char *a2, int a3)
{
  v29[128] = *MEMORY[0x1E69E9840];
  v29[0] = 0;
  v5 = a3 << 23 >> 31;
  asprintf(v29, "%s%s", a2, ".buckets");
  v6 = fd_create_protected(a1, v29[0], 2, v5 & 3);
  if (v6)
  {
    v7 = v6;
    _fd_unlink_with_origin(v6, 0);
    fd_release(v7);
  }

  free(v29[0]);
  asprintf(v29, "%s%s", a2, ".header");
  v8 = fd_create_protected(a1, v29[0], 514, v5 & 3);
  if (v8)
  {
    v9 = v8;
    _fd_unlink_with_origin(v8, 0);
    fd_release(v9);
  }

  free(v29[0]);
  asprintf(v29, "%s%s", a2, ".offsets");
  v10 = fd_create_protected(a1, v29[0], 514, v5 & 3);
  if (v10)
  {
    v11 = v10;
    _fd_unlink_with_origin(v10, 0);
    fd_release(v11);
  }

  free(v29[0]);
  asprintf(v29, "%s%s", a2, ".data");
  v12 = fd_create_protected(a1, v29[0], 514, v5 & 3);
  if (v12)
  {
    v13 = v12;
    _fd_unlink_with_origin(v12, 0);
    fd_release(v13);
  }

  free(v29[0]);
  bzero(v29, 0x400uLL);
  snprintf(v29, 0x400uLL, "%s%s", a2, ".buckets");
  v14 = fd_create_protected(a1, v29, 2, v5 & 3);
  if (v14)
  {
    v15 = v14;
    _fd_unlink_with_origin(v14, 0);
    fd_release(v15);
  }

  snprintf(v29, 0x400uLL, "%s%s", a2, ".header");
  v16 = fd_create_protected(a1, v29, 514, v5 & 3);
  if (v16)
  {
    v17 = v16;
    _fd_unlink_with_origin(v16, 0);
    fd_release(v17);
  }

  snprintf(v29, 0x400uLL, "%s%s", a2, ".offsets");
  v18 = fd_create_protected(a1, v29, 514, v5 & 3);
  if (v18)
  {
    v19 = v18;
    _fd_unlink_with_origin(v18, 0);
    fd_release(v19);
  }

  snprintf(v29, 0x400uLL, "%s%s", a2, ".data");
  v20 = fd_create_protected(a1, v29, 514, v5 & 3);
  if (v20)
  {
    v21 = v20;
    _fd_unlink_with_origin(v20, 0);
    fd_release(v21);
  }

  v29[0] = 0;
  asprintf(v29, "%s%s", a2, ".buckets");
  v22 = fd_create_protected(a1, v29[0], 2, v5 & 3);
  if (v22)
  {
    v23 = v22;
    _fd_unlink_with_origin(v22, 0);
    fd_release(v23);
  }

  free(v29[0]);
  asprintf(v29, "%s%s", a2, ".header");
  v24 = fd_create_protected(a1, v29[0], 514, v5 & 3);
  if (v24)
  {
    v25 = v24;
    _fd_unlink_with_origin(v24, 0);
    fd_release(v25);
  }

  free(v29[0]);
  asprintf(v29, "%s%s", a2, ".offsets");
  v26 = fd_create_protected(a1, v29[0], 514, v5 & 3);
  if (v26)
  {
    v27 = v26;
    _fd_unlink_with_origin(v26, 0);
    fd_release(v27);
  }

  free(v29[0]);
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t flatPageSearchFuzzyBucketCompare(float **a1, float **a2)
{
  v2 = **a1;
  if ((v2 & 3) != 0 && (*a1)[2] < 0.0)
  {
    if ((**a2 & 3) != 0)
    {
      return (*a2)[2] >= 0.0;
    }

    return 1;
  }

  v4 = **a2;
  if ((v4 & 3) == 0 || (*a2)[2] >= 0.0)
  {
    v5 = v2 >> 3;
    v6 = v4 >> 3;
    if (v5 > v6)
    {
      return 1;
    }

    if (v5 >= v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = __si_assert_copy_extra(0);
      v10 = v9;
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      __message_assert("%s:%u: failed assertion '%s' %s duplicate pages %ld %ld", "FindTermIDs.c", 617, "false", v11, v7, v8);
      free(v10);
      if (__valid_fs(-1))
      {
        v12 = 2989;
      }

      else
      {
        v12 = 3072;
      }

      *v12 = -559038737;
      abort();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t _floatCompare(float *a1, float *a2)
{
  if (*a2 <= *a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

char *si_cache_relative_path_for_oid(unint64_t a1, const char *a2, char *__str, int a4)
{
  v4 = __str;
  if (a4)
  {
    if (snprintf(__str, 0x400uLL, "Cache/%x/%llx.%s", HIDWORD(a1), a1, a2) > 0x3FF)
    {
      return 0;
    }
  }

  else
  {
    snprintf(__str, 0x400uLL, "Cache/%4.4x/%4.4x/%4.4x/%lld.%s", HIWORD(a1), WORD2(a1), WORD1(a1), a1, a2);
  }

  return v4;
}

uint64_t si_textcache_fds_for_oids(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 4;
  bzero(v9, v8);
  do
  {
    if (*v9++)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      bzero(v20, 0x400uLL);
      v12 = si_cache_relative_path_for_oid(*a3, "txt", v20, *(a1 + 2072));
      result = x_openat(*(a1 + 32), v12, 0, v13, v14, v15, v16, v17, v19);
    }

    *a4++ = result;
    ++a3;
    --a2;
  }

  while (a2);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void si_remove_text_content_cache_for_oid(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 6624) && (*(a1 + 6584) & 0x300010) == 0x300000)
  {
    if (get_compressor_queue_onceToken != -1)
    {
      dispatch_once(&get_compressor_queue_onceToken, &__block_literal_global_125_8957);
    }

    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2000000000;
    v6 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __si_remove_text_content_cache_for_oid_block_invoke;
    block[3] = &unk_1E8195E38;
    block[5] = a2;
    block[6] = a1;
    block[4] = v5;
    dispatch_barrier_sync(get_compressor_queue_compressor_queue, block);
    _Block_object_dispose(v5, 8);
  }
}

uint64_t __si_remove_text_content_cache_for_oid_block_invoke(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v2 = si_cache_relative_path_for_oid(a1[5], "txt", __str, *(a1[6] + 2072));
  if (v2)
  {
    result = x_unlinkat(*(a1[6] + 32), v2, 2048);
  }

  else
  {
    v4 = *__error();
    if (v4)
    {
      result = v4;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  *(*(a1[4] + 8) + 24) = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __get_compressor_queue_block_invoke()
{
  initially_inactive = dispatch_queue_attr_make_initially_inactive(MEMORY[0x1E69E96A8]);
  v1 = dispatch_queue_attr_make_with_qos_class(initially_inactive, 5u, 0);
  get_compressor_queue_compressor_queue = dispatch_queue_create("compressor queue", v1);
  dispatch_queue_set_width();
  v2 = get_compressor_queue_compressor_queue;

  dispatch_activate(v2);
}

void si_update_text_content_cache_for_oid(uint64_t a1, uint64_t a2, const __CFString *a3, NSObject *a4)
{
  if (*(a1 + 6624))
  {
    v6 = (~*(a1 + 6584) & 0x300000) != 0 || a3 == 0;
    if (!v6 && (*(a1 + 6584) & 0x10) == 0)
    {
      TypeID = CFStringGetTypeID();
      v11 = CFGetTypeID(a3);
      if (a4)
      {
        if (TypeID == v11)
        {
          if (get_compressor_queue_onceToken != -1)
          {
            dispatch_once(&get_compressor_queue_onceToken, &__block_literal_global_125_8957);
          }

          v12 = get_compressor_queue_compressor_queue;
          Length = CFStringGetLength(a3);
          if (Length)
          {
            v14 = Length;
            CFRetain(a3);
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 0x40000000;
            v16[2] = __si_update_text_content_cache_for_oid_block_invoke;
            v16[3] = &__block_descriptor_tmp_13_8963;
            v16[4] = a3;
            v16[5] = v14;
            v16[6] = a2;
            v16[7] = a1;
            v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v16);
            dispatch_group_async(a4, v12, v15);
            _Block_release(v15);
          }
        }
      }
    }
  }
}

void __si_update_text_content_cache_for_oid_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v24 = *MEMORY[0x1E69E9840];
  usedBufLen = 0;
  bzero(v23, 0x10000uLL);
  CStringPtr = CFStringGetCStringPtr(*(v1 + 32), 0x8000100u);
  if (CStringPtr || (CStringPtr = CFStringGetCStringPtr(*(v1 + 32), 0x600u)) != 0)
  {
    v3 = CStringPtr;
    v4 = 0;
    usedBufLen = strlen(CStringPtr);
  }

  else
  {
    v16.length = *(v1 + 40);
    v17 = 3 * v16.length;
    v4 = ((3 * v16.length) & 0xFFFFFFFFFFFF0000) != 0;
    if ((3 * v16.length) < 0x10000)
    {
      v3 = v23;
    }

    else
    {
      v18 = malloc_type_zone_malloc(indexingZone, 3 * v16.length, 0xBF1CA4A4uLL);
      if (!v18)
      {
        goto LABEL_16;
      }

      v3 = v18;
      v16.length = *(v1 + 40);
    }

    v16.location = 0;
    CFStringGetBytes(*(v1 + 32), v16, 0x8000100u, 0, 0, v3, v17, &usedBufLen);
  }

  bzero(__str, 0x400uLL);
  *v21 = 0x4400000001;
  *v20 = 2;
  sysctl(v21, 2u, 0, 0, v20, 4uLL);
  v5 = si_cache_relative_path_for_oid(*(v1 + 48), "tmp", __str, *(*(v1 + 56) + 2072));
  v6 = si_cache_open_for_relative_path(*(v1 + 56), v5, *(v1 + 48));
  if (v6 != -1)
  {
    v7 = v6;
    bzero(v21, 0x400uLL);
    v8 = fcntl(v7, 50, v21);
    if (LOBYTE(v21[0]))
    {
      v9 = v8 < 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v21;
    }

    if (compress_data_to_file(v3, usedBufLen, v10, v7, 0))
    {
      goto LABEL_12;
    }

    bzero(v20, 0x400uLL);
    v12 = si_cache_relative_path_for_oid(*(v1 + 48), "txt", v20, *(*(v1 + 56) + 2072));
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = v12;
    v14 = *(*(v1 + 56) + 32);
    if (!renameatx_np(v14, v5, v14, v12, 0x10u))
    {
      close(v7);
      goto LABEL_14;
    }

    if (*__error() == 22)
    {
      v15 = renameatx_np(v14, v5, v14, v13, 0);
      close(v7);
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_12:
      close(v7);
    }

    x_unlinkat(*(*(v1 + 56) + 32), v5, 2048);
  }

LABEL_14:
  *v21 = 0x4400000001;
  *v20 = 4;
  sysctl(v21, 2u, 0, 0, v20, 4uLL);
  if (v4)
  {
    free(v3);
  }

LABEL_16:
  CFRelease(*(v1 + 32));
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t si_cache_open_for_relative_path(uint64_t a1, const char *a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      x_unlinkat(*(a1 + 32), a2, 0x20000000);
      result = openat(*(a1 + 32), a2, 536872449, 384);
      if (result == -1)
      {
        bzero(&v14[6], 0x3FAuLL);
        v12 = 0;
        if ((fd_setDir(*(a1 + 32), &v12) & 1) == 0)
        {
LABEL_23:
          result = openat(*(a1 + 32), a2, 536872449, 384);
          goto LABEL_24;
        }

        bzero(__str, 0x400uLL);
        strcpy(v14, "Cache");
        if (mkdir(v14, 0x1C0u) != -1 || *__error() == 17)
        {
          if (*(a1 + 2072))
          {
            snprintf(__str, 0x400uLL, "/%x", HIDWORD(a3));
            __strlcat_chk();
            if (mkdir(v14, 0x1C0u) != -1 || *__error() == 17)
            {
              v7 = v12;
              MEMORY[0x1C6921200](v12);
              if ((v7 & 0x80000000) == 0)
              {
                close(v7);
              }

              goto LABEL_23;
            }
          }

          else
          {
            snprintf(__str, 0x400uLL, "/%4.4x", HIWORD(a3));
            __strlcat_chk();
            if (mkdir(v14, 0x1C0u) != -1 || *__error() == 17)
            {
              snprintf(__str, 0x400uLL, "/%4.4x", WORD2(a3));
              __strlcat_chk();
              if (mkdir(v14, 0x1C0u) != -1 || *__error() == 17)
              {
                snprintf(__str, 0x400uLL, "/%4.4x", WORD1(a3));
                __strlcat_chk();
                v8 = mkdir(v14, 0x1C0u);
                v9 = v12;
                MEMORY[0x1C6921200](v12);
                if ((v9 & 0x80000000) == 0)
                {
                  close(v9);
                }

                if (v8 != -1)
                {
                  goto LABEL_23;
                }

LABEL_22:
                if (*__error() != 17)
                {
                  result = 0xFFFFFFFFLL;
                  goto LABEL_24;
                }

                goto LABEL_23;
              }
            }
          }
        }

        v10 = v12;
        MEMORY[0x1C6921200](v12);
        if ((v10 & 0x80000000) == 0)
        {
          close(v10);
        }

        goto LABEL_22;
      }
    }
  }

LABEL_24:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

int *si_remove_icon_cache_for_oid(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v4 = si_cache_relative_path_for_oid(a2, "img", __str, *(a1 + 2072));
  if (v4)
  {
    result = unlinkat(*(a1 + 32), v4, 0);
  }

  else
  {
    result = __error();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID si_update_icon_cache_for_oid(CFTypeID result, unint64_t a2, const void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = result;
    TypeID = CFDataGetTypeID();
    result = CFGetTypeID(a3);
    if (TypeID == result)
    {
      result = CFDataGetLength(a3);
      if (result)
      {
        v7 = result;
        bzero(__str, 0x400uLL);
        v8 = si_cache_relative_path_for_oid(a2, "img", __str, *(v5 + 2072));
        result = si_cache_open_for_relative_path(v5, v8, a2);
        if (result != -1)
        {
          v9 = result;
          BytePtr = CFDataGetBytePtr(a3);
          prot_write(v9, BytePtr, v7);
          result = close(v9);
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void si_analytics_log_8973(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v15 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  string[1] = &a9;
  vasprintf(string, "no field name for id %d of localize id %d", &a9);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v9 = xpc_string_create(string[0]);
  values = v9;
  v10 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v10);
  xpc_release(v9);
  free(string[0]);
  v11 = *MEMORY[0x1E69E9840];
}

BOOL si_getGroupFromDBO(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 6584);
  if ((v6 & 0x800) != 0)
  {
    v7 = 139;
  }

  else
  {
    v7 = 137;
  }

  if ((v6 & 0x200) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 136;
  }

  if ((v6 & 0x80) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 131;
  }

  if ((v6 & 0x20) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 120;
  }

  v25 = 0;
  v26 = 0;
  memset(v28, 0, sizeof(v28));
  v11 = db_copy_field_ids_with_buffer(*(a1 + 1192), "kMDItemContentTypeTree", v28, 8uLL);
  field_by_id = db_get_field_by_id(*(a1 + 1192), a2, v11, &v26, &v25);
  if (!field_by_id && (*(v26 + 2) & 0x10) != 0)
  {
    v13 = *(v26 + 8);
    if (v13 >= 4)
    {
      v15 = 0;
      v14 = v13 >> 2;
      while (1)
      {
        v16 = *(v25 + 4 * v15) & 0x7FFFFFFF;
        if (v16 < v10)
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_20;
        }
      }

      v17 = si_getGroupFromDBO_memberShipList[v16];
      *a3 = v17;
      LODWORD(v14) = v15;
    }

    else
    {
      LODWORD(v14) = 0;
LABEL_20:
      v17 = 0;
    }

    if ((*(a1 + 2072) & 1) == 0)
    {
      v18 = ((v17 >> 1) | (v17 << 7));
      if (v18 <= 9 && ((1 << v18) & 0x2A1) != 0 && v14)
      {
        v19 = 0;
        v20 = 4 * v14;
        while (1)
        {
          v21 = *(a1 + 6608);
          if (v21)
          {
            v22 = *(v25 + v19);
            value = 0;
            if (CFDictionaryGetValueIfPresent(v21, (v22 & 0x7FFFFFFF), &value))
            {
              if (value <= 0x8A)
              {
                break;
              }
            }
          }

          v19 += 4;
          if (v20 == v19)
          {
            goto LABEL_33;
          }
        }

        *a3 = si_getGroupFromDBO_memberShipList[value];
      }
    }
  }

LABEL_33:
  if (v11 != v28)
  {
    free(v11);
  }

  result = field_by_id == 0;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void __si_addRecoveryAttributes_block_invoke(uint64_t a1, char *a2, unsigned __int16 *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!strcmp("_kMDItemGroupId", a2))
  {
    goto LABEL_19;
  }

  v7 = a3[1];
  if ((v7 & 0x10) == 0)
  {
    v8 = db_add_field(*(*(a1 + 40) + 1192), *(a1 + 48), 5u, a2, 0, v7, *a3, a3 + 13, v6, *(a3 + 2));
LABEL_4:
    if (v8)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    goto LABEL_19;
  }

  if ((v7 & 0x80) != 0)
  {
    v12 = *(a3 + 2);
    v13 = v20 - ((v12 + 15) & 0x1FFFFFFF0);
    bzero(v13, v12);
    if (v12)
    {
      v15 = a3 + v12 + 13;
      v16 = (a3 + 13);
      v17 = v13;
      while (1)
      {
        string_for_id = db_get_string_for_id(*(*(a1 + 40) + 6880), *v16);
        if (!string_for_id)
        {
          break;
        }

        *v17++ = db_create_id_for_value(*(*(a1 + 40) + 1192), string_for_id);
        if (++v16 >= v15)
        {
          goto LABEL_17;
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

LABEL_17:
    if (*(*(*(a1 + 32) + 8) + 24) != 1)
    {
      goto LABEL_19;
    }

    v8 = db_add_field(*(*(a1 + 40) + 1192), *(a1 + 48), 5u, a2, 0, a3[1], *a3, v13, v14, *(a3 + 2));
    goto LABEL_4;
  }

  v9 = _decodeSDBField(*(*(a1 + 40) + 6880), a3, a3 + 13, 0, 0, 0, 0, *MEMORY[0x1E695E480]);
  if (!v9)
  {
LABEL_19:
    v19 = *MEMORY[0x1E69E9840];
    return;
  }

  v10 = v9;
  setOneFieldLocked(0, a2, v9, *(*(a1 + 40) + 1192), *(a1 + 48), a3[1], 0, 0);
  v11 = *MEMORY[0x1E69E9840];

  CFRelease(v10);
}

void _SIRecomputeSizesWithCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1192) && *(a1 + 1064))
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    v5 = 0;
    v6 = 22;
    if (*(a1 + 2072))
    {
      v6 = 256;
    }

    v7 = (a1 + 7040);
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 < 0)
      {
        v5 = a2 + 1;
      }

      v5 += v8;
      --v6;
    }

    while (v6);
    if (v5 > a2)
    {
LABEL_11:
      v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B0040EF6A6668uLL);
      v11 = *__error();
      v12 = _SILogForLogForCategory(0);
      v13 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 134218240;
        v23 = v10;
        v24 = 2048;
        v25 = a1;
        _os_log_impl(&dword_1C278D000, v12, v13, "ctx:%p idx:%p", buf, 0x16u);
      }

      *__error() = v11;
      *v10 = 0xBEEFC0DEBEEFC0DELL;
      v10[1] = a1;
      v14 = _Block_copy(a3);
      *(v10 + 4) = 0;
      v10[5] = 0;
      v10[6] = v14;
      v10[3] = 0;
      v10[4] = 0;
      v15 = *(a1 + 2360);
      if (v15)
      {
        v16 = *(v15 + 64);
        if (v16)
        {
          *(v10 + 4) = v16(*(v15 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 862, "void _SIRecomputeSizesWithCallback(SIRef, off_t, dispatch_block_t)");
        }
      }

      if (*v10 != 0xBEEFC0DEBEEFC0DELL)
      {
        v18 = __si_assert_copy_extra_661(-1);
        v19 = v18;
        v20 = "";
        if (v18)
        {
          v20 = v18;
        }

        __message_assert("%s:%u: failed assertion '%s' %s magic:%llx", "SIStoring.c", 864, "ctx->magic==RECOMPUTE_SIZE_MAGIC", v20, *v10);
        free(v19);
        if (__valid_fs(-1))
        {
          v21 = 2989;
        }

        else
        {
          v21 = 3072;
        }

        *v21 = -559038737;
        abort();
      }

      si_enqueue_work_with_qos(*(a1 + 1064), 9, si_recompute_sizes, v10);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void si_recompute_sizes(void *a1, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  v6 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = "canceled";
    if (!a2)
    {
      v7 = "";
    }

    *buf = 134218242;
    v33 = a1;
    v34 = 2080;
    v35 = v7;
    _os_log_impl(&dword_1C278D000, v5, v6, "ctx:%p %s", buf, 0x16u);
  }

  *__error() = v4;
  if (*a1 != 0xBEEFC0DEBEEFC0DELL)
  {
    v20 = __si_assert_copy_extra_661(-1);
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s magic:%llx ctx:%p ref:%p", "SIStoring.c", 807, "ctx->magic==RECOMPUTE_SIZE_MAGIC", v22, *a1, a1, a1[1]);
    free(v21);
    if (__valid_fs(-1))
    {
      v23 = 2989;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  if (!a2)
  {
    v9 = a1[1];
    if (*(v9 + 1192))
    {
      if (*(v9 + 872))
      {
        if (*v9 != 0xC0DE10DE10DEC0DELL)
        {
          v24 = __si_assert_copy_extra_661(-1);
          v25 = v24;
          v26 = "";
          if (v24)
          {
            v26 = v24;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 810, "ref->magic == (0xc0de10de10dec0de)", v26);
          free(v25);
          if (__valid_fs(-1))
          {
            v27 = 2989;
          }

          else
          {
            v27 = 3072;
          }

          *v27 = -559038737;
          abort();
        }

        v10 = malloc_type_calloc(1uLL, 0xC08uLL, 0x1000040DB61F97BuLL);
        *v10 = vrev64_s32(*(v9 + 2008));
        atomic_fetch_add((v9 + 1452), 1u);
        v11 = _si_scheduler_suspend(*(v9 + 872), "SpotlightIndex.c", 2139);
        atomic_fetch_add((v9 + 1452), 0xFFFFFFFF);
        v12 = *(v9 + 1192);
        v13 = *v12;
        v14 = v12[1];
        v15 = *__error();
        v16 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "si_recompute_sizes start", buf, 2u);
        }

        *__error() = v15;
        v17 = db_apply(*(v9 + 1192), recompute_sizes_callback, v10);
        v18 = *__error();
        v19 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v33) = v17;
          _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "si_recompute_sizes end (%d)", buf, 8u);
        }

        *__error() = v18;
        if (v13 != **(v9 + 1192))
        {
          v28 = __si_assert_copy_extra_661(-1);
          v29 = v28;
          v30 = "";
          if (v28)
          {
            v30 = v28;
          }

          __message_assert("%s:%u: failed assertion '%s' %s sig 0x%x (0x%x) != 0x%x (0x%x)", "SIStoring.c", 824, "in_store.signature==ref->store->signature", v30, v13, v14, **(v9 + 1192), *(*(v9 + 1192) + 4));
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

        if (v17)
        {
          si_scheduler_resume(*(v9 + 872), v11, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 834);
          free(v10);
        }

        else
        {
          pthread_mutex_lock((v9 + 6976));
          memcpy((v9 + 7040), &v10[1], 0x800uLL);
          memcpy((v9 + 9088), &v10[257], 0x400uLL);
          pthread_mutex_unlock((v9 + 6976));
          db_dirty_datastore(*(v9 + 1192));
          si_scheduler_resume(*(v9 + 872), v11, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 834);
          free(v10);
          (*(a1[6] + 16))();
        }
      }
    }
  }

  si_power_info_cleanup((a1 + 2), a1[1], a2 != 0);
  _Block_release(a1[6]);
  free(a1);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t recompute_sizes_callback(int *a1, uint64_t a2, _DWORD *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14[0] = 0;
  LODWORD(v14[0]) = a3[1];
  v12 = 0;
  if (!db_get_field_by_id(a1, a2, v14, &v13, &v12))
  {
    v6 = *v12;
    if ((db_corespotlight_store(a1) & 1) != 0 || v6 <= 0x15)
    {
      v11 = 0;
      LODWORD(v14[0]) = *a3;
      field_by_id = db_get_field_by_id(a1, a2, v14, &v13, &v11);
      v8 = v12;
      if (!field_by_id)
      {
        *&a3[2 * *v12 + 2] += *v11;
      }

      ++a3[*v8 + 514];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

void fixupOrphanItems(void *a1, int a2)
{
  if (!a2)
  {
    fixupOrphanArray(*a1, *(a1 + 1), 0);
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

unint64_t fixupOrphanArray(unint64_t a1, uint64_t a2, char a3)
{
  result = si_get_cs_orphan_oid(a1);
  if (result)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __fixupOrphanArray_block_invoke;
    v7[3] = &__block_descriptor_tmp_137;
    v7[4] = a1;
    v8 = a3;
    return SIValueSet<unsigned long long>::_SIValueSetInnerIterate(a2 + 256, *(a2 + 216), *(a2 + 224), runBlock, v7, 1024);
  }

  return result;
}

void __fixupOrphanArray_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v89 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = v1;
    v7 = 0;
    alloc = *MEMORY[0x1E695E480];
    v8 = 0x1EBF46000uLL;
    v71 = v2;
    while (1)
    {
      v9 = *(v6 + 32);
      if (*(v9 + 2432) == 1)
      {
        goto LABEL_93;
      }

      v10 = *(v5 + 8 * v7);
      v11 = *(v6 + 40);
      v82[0] = *(v9 + 2060);
      v82[1] = 0;
      v81[0] = *(v9 + 2064);
      v81[1] = 0;
      v80 = *(v9 + 2068);
      v77 = 0;
      bzero(&v78, 0x1000uLL);
      cs_orphan_oid = si_get_cs_orphan_oid(v9);
      if (*(v8 + 2764) >= 5)
      {
        v44 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v46 = " ";
          if (v11)
          {
            v46 = " inflight";
          }

          *&buf[4] = v46;
          v84 = 2048;
          *v85 = v10;
          *&v85[8] = 2048;
          *v86 = cs_orphan_oid;
          _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "repair%s oid: %lld orphan parent: %lld", buf, 0x20u);
        }

        *__error() = v44;
        v8 = 0x1EBF46000;
      }

      if (db_get_obj(*(v9 + 1192), v10, &v77, 0))
      {
        if (*(v8 + 2764) >= 5)
        {
          v13 = *__error();
          v14 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v10;
            _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "repair oid: %lld skipped", buf, 0xCu);
          }

          *__error() = v13;
          v8 = 0x1EBF46000;
        }

        goto LABEL_47;
      }

      v15 = *(v77 + 3);
      if (!v15 || v15 == cs_orphan_oid)
      {
        break;
      }

      if (*(v8 + 2764) >= 5)
      {
        v16 = *__error();
        v17 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(v77 + 3);
          *buf = 134218240;
          *&buf[4] = v10;
          v84 = 2048;
          *v85 = v18;
          _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "repair oid: %lld parent oid: %lld skipped", buf, 0x16u);
        }

        *__error() = v16;
LABEL_37:
        v8 = 0x1EBF46000;
      }

LABEL_38:
      free(v77);
      v5 = v71;
LABEL_47:
      if (++v7 == v4)
      {
        goto LABEL_93;
      }
    }

    if (*v77 == cs_orphan_oid)
    {
      v19 = 0;
      v20 = 0;
      v78 = 2;
      v21 = 1;
      v22 = 1;
LABEL_18:
      if (v20)
      {
        v23 = 1;
      }

      else
      {
        v23 = v78 == cs_orphan_oid;
      }

      v24 = v23 || v21 == 0;
      v8 = 0x1EBF46000;
      if (v24 && !v22)
      {
        goto LABEL_38;
      }

      v25 = v19;
      v69 = _si_scheduler_suspend(*(v9 + 864), "SIStoring.c", 1216);
      atomic_fetch_add((v9 + 1452), 1u);
      v67 = _si_scheduler_suspend(*(v9 + 872), "SpotlightIndex.c", 2139);
      atomic_fetch_add((v9 + 1452), 0xFFFFFFFF);
      if (v21 > 1)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      if (v26 == 1)
      {
        v27 = (v21 - 2);
        v28 = v27 + 1;
        v29 = &v79[v27];
        v30 = 1;
        do
        {
          *buf = 0;
          if (!db_get_obj(*(v9 + 1192), *(v29 - 1), buf, 0))
          {
            v31 = *(v29 - 1);
            updateWithNewPath(v9);
            free(*buf);
          }

          --v29;
          ++v30;
        }

        while (v28-- > 1);
      }

      updateWithNewPath(v9);
      si_scheduler_resume(*(v9 + 872), v67, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 1228);
      si_scheduler_resume(*(v9 + 864), v69, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 1229);
      goto LABEL_37;
    }

    *buf = 0;
    cStr = 0;
    if (db_get_field_by_id(*(v9 + 1192), v77, v82, buf, &cStr) || **buf != 11 || (v74 = 0, *v75 = 0, db_get_field_by_id(*(v9 + 1192), v77, v81, v75, &v74)) || **v75 != 11)
    {
      free(v77);
      goto LABEL_47;
    }

    v70 = CFStringCreateWithCString(alloc, cStr, 0x8000100u);
    v33 = _decodeSDBField(*(v9 + 1192), *v75, (*v75 + 13), 0, 0, 0, 0, alloc);
    if (v33)
    {
      v34 = v33;
      v35 = CFGetTypeID(v33);
      if (v35 == CFStringGetTypeID())
      {
        cf = CFRetain(v34);
      }

      else
      {
        cf = 0;
      }

      CFRelease(v34);
    }

    else
    {
      cf = 0;
    }

    v72 = 0;
    v73 = 0;
    if (db_get_field_by_id(*(v9 + 1192), v77, &v80, &v73, &v72) || *v73 != 11)
    {
      v64 = 0;
    }

    else
    {
      v64 = CFStringCreateWithCString(alloc, v72, 0x8000100u);
    }

    v36 = v70;
    v37 = cf;
    v19 = 0;
    v68 = -1;
    v20 = 0;
    v22 = 0;
    if (!cf || !v70)
    {
LABEL_86:
      if (!v37)
      {
LABEL_88:
        if (v36)
        {
          v53 = v19;
          CFRelease(v36);
          v19 = v53;
        }

        if (v64)
        {
          v54 = v19;
          CFRelease(v64);
          v19 = v54;
        }

        v21 = v68;
        goto LABEL_18;
      }

LABEL_87:
      v52 = v19;
      CFRelease(v37);
      v19 = v52;
      v36 = v70;
      goto LABEL_88;
    }

    v38 = v77;
    if (*v77 == 2)
    {
      v22 = 0;
      v19 = 0;
      v78 = 0;
      v68 = -1;
      v20 = 1;
      goto LABEL_87;
    }

    dispatch_time(0, 10000000000);
    v39 = *(*(v9 + 1416) + 128);
    if (v39)
    {
      v40 = *v38;
      v41 = v39();
      v42 = v41;
      if (v41 > 0)
      {
        v78 = v41;
        if (v41 == 2)
        {
          v43 = 1;
          goto LABEL_75;
        }

LABEL_72:
        Path = directoryStoreWriterGetPath(*(v9 + 6624), v42, v79);
        LODWORD(cStr) = Path;
        if (!Path || (v43 = Path + 1, LODWORD(cStr) = Path + 1, Path == -1))
        {
          v20 = psid_lookupPath(v9, v38, cf, v64, v70, &cStr, &v78);
          v19 = 1;
          v43 = cStr;
LABEL_82:
          v22 = 0;
          v68 = v43;
          if (!v20 && v43)
          {
            v20 = 0;
            v22 = *(v77 + 3) != v78;
          }

          v36 = v70;
          v37 = cf;
          goto LABEL_86;
        }

LABEL_75:
        v48 = 0;
        do
        {
          if (v79[v48 - 1] <= 0)
          {
            v59 = v43;
            v60 = __si_assert_copy_extra_661(-1);
            v61 = v60;
            v62 = "";
            if (v60)
            {
              v62 = v60;
            }

            __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 1124, "newpath[i] > 0", v62, v48, v79[v48 - 1], v59);
            free(v61);
            if (__valid_fs(-1))
            {
              v63 = 2989;
            }

            else
            {
              v63 = 3072;
            }

            *v63 = -559038737;
            abort();
          }

          ++v48;
        }

        while (v43 != v48);
        v19 = 0;
        v20 = 0;
        goto LABEL_82;
      }
    }

    else
    {
      v42 = -1;
    }

    if (*v38 != 2)
    {
      v20 = *__error();
      v49 = *__error();
      v50 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v55 = *__error();
        v56 = *v38;
        v57 = v38[3];
        *buf = 136316162;
        *&buf[4] = "repair_lookupPath";
        v84 = 1024;
        *v85 = 1111;
        *&v85[4] = 1024;
        *&v85[6] = v55;
        *v86 = 2048;
        *&v86[2] = v56;
        v87 = 2048;
        v88 = v57;
        _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: error: %d oid: %lld parent: %lld", buf, 0x2Cu);
      }

      v51 = __error();
      v19 = 0;
      *v51 = v49;
      v43 = -1;
      goto LABEL_82;
    }

    v78 = v42;
    goto LABEL_72;
  }

LABEL_93:
  v58 = *MEMORY[0x1E69E9840];
}

uint64_t psid_lookupPath(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t *a7)
{
  v39 = *MEMORY[0x1E69E9840];
  v26 = 0;
  if (SIPersistentIDStoreGetOidPathForOid(*(a1 + 1416), *a2, a7, 0, &v26))
  {
    v11 = *__error();
    if (v11 != 22 && v11 != 60)
    {
      v12 = *__error();
      v13 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = *a2;
        v21 = a2[3];
        *buf = 136316418;
        v28 = "psid_lookupPath";
        v29 = 1024;
        v30 = 944;
        v31 = 1024;
        v32 = v11;
        v33 = 1024;
        v34 = 944;
        v35 = 2048;
        v36 = v20;
        v37 = 2048;
        v38 = v21;
        _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: SIPersistentIDStoreGetOidPathForOid error:%d at:%d oid:%lld parent:%lld", buf, 0x32u);
      }

      *__error() = v12;
    }

    if (v11 == 60)
    {
      result = 60;
    }

    else
    {
      result = 22;
    }
  }

  else if (*(a1 + 2072) == 1)
  {
    result = 0;
    *a6 = v26;
  }

  else if (v26 < 2)
  {
    result = 0;
    *a6 = 0;
  }

  else
  {
    v15 = *a7;
    v16 = *a2;
    v17 = si_directoryStoreEnsurePath(a1) + 1;
    *a6 = v17;
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        if (a7[i] <= 0)
        {
          v22 = __si_assert_copy_extra_661(-1);
          v23 = v22;
          v24 = "";
          if (v22)
          {
            v24 = v22;
          }

          __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 961, "newpath[i] > 0", v24, i, a7[i], *a6);
          free(v23);
          if (__valid_fs(-1))
          {
            v25 = 2989;
          }

          else
          {
            v25 = 3072;
          }

          *v25 = -559038737;
          abort();
        }
      }
    }

    result = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void updateWithNewPath(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v133[1] = *MEMORY[0x1E69E9840];
  v13 = malloc_type_malloc(v4[3], 0x1000040EED21634uLL);
  v14 = v13;
  if (v13)
  {
    memcpy(v13, v5, v5[3]);
    *(v14 + 2) = v5[3];
  }

  v16 = v7 != 2 && v7 != v3;
  if (v11)
  {
    v17 = *v9;
    if (*v9 != v7)
    {
LABEL_13:
      *(v14 + 3) = v17;
      goto LABEL_14;
    }

    ++v9;
    if (--v11)
    {
      v17 = *v9;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (*v9 != v3)
  {
    v18 = !v16;
    if (v11 < 2)
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      v19 = v9 + 1;
      v20 = 2;
      do
      {
        v22 = *v19++;
        v21 = v22;
        v16 = v22 != v7 && *v9 != v21;
        v24 = !v16 || v20++ >= v11;
      }

      while (!v24);
    }

    if ((v11 & 0x80000000) == 0 && v16)
    {
      v25 = *(v12 + 1192);
      if (*v25 != 1685287992)
      {
        v115 = __si_assert_copy_extra_332();
        v116 = v115;
        if (v115)
        {
          v117 = v115;
        }

        else
        {
          v117 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 321, v117);
        free(v116);
        goto LABEL_182;
      }

      if ((*(v25 + 804) & 8) != 0)
      {
        inserted = 13;
        goto LABEL_38;
      }

      v26 = *(v14 + 3);
      if (v26 < 0x30 || (v27 = *(v14 + 2), v27 < 0x30))
      {
        inserted = 22;
        goto LABEL_38;
      }

      inserted = 7;
      if (v26 > 0xFFEB || v27 > 0x10000)
      {
        goto LABEL_38;
      }

      *(v14 + 10) &= ~8u;
      v32 = __THREAD_SLOT_KEY;
      if (!__THREAD_SLOT_KEY)
      {
        makeThreadId();
        v32 = __THREAD_SLOT_KEY;
      }

      v122 = pthread_getspecific(v32);
      HIDWORD(v34) = qos_class_self() - 9;
      LODWORD(v34) = HIDWORD(v34);
      v33 = v34 >> 2;
      if (v33 > 6)
      {
        v35 = 0;
      }

      else
      {
        v35 = dword_1C2BFF8F0[v33];
      }

      v36 = pthread_mutex_lock((v25 + 584));
      if (!*(v25 + 768) && !*(v25 + 780) && (*(v25 + 796) & 1) == 0)
      {
        if (v35 > 5)
        {
LABEL_82:
          *(v25 + 768) = pthread_self();
LABEL_53:
          pthread_mutex_unlock((v25 + 584));
          if (v36)
          {
            v118 = *__error();
            v119 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "db2_cas_obj";
              v125 = 1024;
              v126 = 11741;
              v127 = 1024;
              v128 = v36;
              _os_log_error_impl(&dword_1C278D000, v119, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
            }

            *__error() = v118;
            sdb2_die(v25, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11741);
          }

          if (v122)
          {
            v120 = CIOnThreadCleanUpPush(v122 - 1, db_write_unlock, v25 + 584);
          }

          else
          {
            v120 = -1;
          }

          v121 = v122 - 1;
          if ((*(v25 + 4) & 2) != 0)
          {
            inserted = 22;
            goto LABEL_130;
          }

          if (*(v14 + 3) > 0x2Fu)
          {
            v37 = *(v25 + 992);
            v38 = *v14;
            v39 = v37[1];
            if (v39)
            {
              v40 = vcnt_s8(v39);
              v40.i16[0] = vaddlv_u8(v40);
              if (v40.u32[0] > 1uLL)
              {
                v41 = *v14;
                if (v38 >= *&v39)
                {
                  v41 = v38 % *&v39;
                }
              }

              else
              {
                v41 = (*&v39 - 1) & v38;
              }

              v42 = *(*v37 + 8 * v41);
              if (v42)
              {
                for (i = *v42; i; i = *i)
                {
                  v44 = i[1];
                  if (v44 == v38)
                  {
                    if (i[2] == v38)
                    {
                      if (*(i + 6) == 3)
                      {
                        goto LABEL_129;
                      }

                      break;
                    }
                  }

                  else
                  {
                    if (v40.u32[0] > 1uLL)
                    {
                      if (v44 >= *&v39)
                      {
                        v44 %= *&v39;
                      }
                    }

                    else
                    {
                      v44 &= *&v39 - 1;
                    }

                    if (v44 != v41)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v131 = 0;
            *buf = 0;
            v47 = std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(v37, v38);
            if (v47)
            {
              if (*(v47 + 6) != 3)
              {
                *buf = v47[4];
                goto LABEL_128;
              }

              goto LABEL_129;
            }

            v48 = *(v25 + 856);
            v49 = *(v48 + 8);
            if (!v49)
            {
LABEL_129:
              inserted = 2;
              goto LABEL_130;
            }

            v50 = *(v48 + 16);
            if (v50 < v49)
            {
              v51 = v48 + 16 * v50;
              v53 = *(v51 + 20);
              v52 = v51 + 20;
              if (v53 == v38)
              {
                v54 = *(v52 + 12);
                if (!(v54 >> 28))
                {
                  goto LABEL_106;
                }
              }
            }

            v55 = v49;
            if (v49 < 1)
            {
              v60 = 0;
              v57 = 0;
              goto LABEL_102;
            }

            v56 = 0;
            while (1)
            {
              v57 = (v49 + v56) >> 1;
              v58 = v48 + 20 + 16 * v57;
              if (*(v58 + 12) >> 28 || (v59 = *v58, v59 > v38))
              {
                v60 = 0;
                v49 = (v49 + v56) >> 1;
              }

              else
              {
                if (v59 == v38)
                {
                  v60 = 0;
LABEL_102:
                  if (v55 - 1 > v57)
                  {
                    v61 = v60;
                  }

                  else
                  {
                    v61 = 0;
                  }

                  v62 = v57 + v61;
                  v63 = v48 + 16 * v62;
                  *(v48 + 16) = v62;
                  v52 = v63 + 20;
                  v54 = *(v63 + 32);
LABEL_106:
                  if (!page_find_oid_with_flags(v25, *(v52 + 8), v54 & 0xFFFFFFF, v38, 0, buf, 0, 0))
                  {
                    goto LABEL_128;
                  }

                  v64 = *(v25 + 856);
                  v65 = *(v64 + 8);
                  if (!v65)
                  {
                    goto LABEL_129;
                  }

                  v66 = *(v64 + 16);
                  if (v66 < v65)
                  {
                    v67 = v64 + 16 * v66;
                    v69 = *(v67 + 20);
                    v68 = v67 + 20;
                    if (v69 == v38)
                    {
                      v70 = *(v68 + 12);
                      if (v70 >> 28 == 1)
                      {
                        goto LABEL_127;
                      }
                    }
                  }

                  v71 = v65;
                  if (v65 < 1)
                  {
                    v78 = 0;
                    v73 = 0;
                    goto LABEL_123;
                  }

                  v72 = 0;
                  while (1)
                  {
                    v73 = (v65 + v72) >> 1;
                    v74 = v64 + 20 + 16 * v73;
                    v75 = *(v74 + 12) >> 28;
                    if (v75 == 1)
                    {
                      v76 = v38 - *v74;
                    }

                    else
                    {
                      v76 = 1 - v75;
                    }

                    v77 = (v65 + v72) >> 1;
                    if ((v76 & 0x8000000000000000) == 0)
                    {
                      if (!v76)
                      {
                        v78 = 0;
LABEL_123:
                        v79 = v71 - 1 > v73 && v78;
                        v80 = v73 + v79;
                        v81 = v64 + 16 * v80;
                        *(v64 + 16) = v80;
                        v68 = v81 + 20;
                        v70 = *(v81 + 32);
LABEL_127:
                        if (!page_find_oid_with_flags(v25, *(v68 + 8), v70 & 0xFFFFFFF, v38, 1u, buf, 0, 0))
                        {
LABEL_128:
                          if (!_inflateDBO(v25, *buf, &v131, 0, 0x10000, 0))
                          {
                            v105 = v131;
                            v106 = equalDBO(v131);
                            free(v105);
                            if (v106)
                            {
                              serializeDBO(v25);
                              if ((MEMORY[0] - 16360) <= 0xFFFFC013)
                              {
                                v107 = test_compress_obj(v25, 0x4000, 0);
                                if (v107)
                                {
                                  inserted = v107;
                                  free(0);
                                  goto LABEL_130;
                                }
                              }

                              inserted = db_updateset_insert_object(*(v25 + 992), 0, 1, 0);
                              free(0);
                              if (inserted)
                              {
                                v108 = *__error();
                                v109 = _SILogForLogForCategory(7);
                                if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_171;
                                }

                                *buf = 136315650;
                                *&buf[4] = "cas_obj";
                                v125 = 1024;
                                v126 = 5346;
                                v127 = 1024;
                                v128 = inserted;
                                v110 = "%s:%d: Error %d from db_updateset_insert_object";
LABEL_178:
                                _os_log_error_impl(&dword_1C278D000, v109, OS_LOG_TYPE_ERROR, v110, buf, 0x18u);
                                goto LABEL_171;
                              }

                              if ((*(*(v25 + 992) + 56) + 16 * *(*(v25 + 992) + 48)) < 0x80000)
                              {
                                inserted = 0;
                              }

                              else
                              {
                                inserted = flush_updateset_locked(v25);
                                if (inserted)
                                {
                                  v108 = *__error();
                                  v109 = _SILogForLogForCategory(7);
                                  if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 136315650;
                                    *&buf[4] = "cas_obj";
                                    v125 = 1024;
                                    v126 = 5350;
                                    v127 = 1024;
                                    v128 = inserted;
                                    v110 = "%s:%d: Error %d from flush_updateset_locked";
                                    goto LABEL_178;
                                  }

LABEL_171:
                                  *__error() = v108;
                                }
                              }

LABEL_130:
                              v82 = pthread_mutex_lock((v25 + 584));
                              *(v25 + 788) = 0;
                              v83 = *(v25 + 760);
                              *(v25 + 760) = 0u;
                              v84 = *(v25 + 780) != 0;
                              *(v25 + 796) = 0;
                              db_rwlock_wakeup(v25 + 584, v84, 0);
                              pthread_mutex_unlock((v25 + 584));
                              if (v83)
                              {
                                pthread_override_qos_class_end_np(v83);
                              }

                              if (v82)
                              {
                                sdb2_die(v25, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11749);
                              }

                              if (v122)
                              {
                                CIOnThreadCleanUpClearItem(v121, v120);
                                v85 = &threadData[9 * v121];
                                v88 = *(v85 + 14);
                                v86 = v85 + 7;
                                v87 = v88;
                                if (v120 + 1 == v88)
                                {
                                  *v86 = v87 - 1;
                                }
                              }

                              if (!inserted)
                              {
                                v131 = *v14;
                                v132 = v3;
                                v133[0] = 2;
                                v89 = *(v14 + 3);
                                if (v131 == v3)
                                {
                                  v90 = 2;
                                }

                                else
                                {
                                  v90 = 3;
                                }

                                v123 = v131;
                                if (v131 == v3)
                                {
                                  v91 = &v132;
                                }

                                else
                                {
                                  v91 = &v131;
                                }

                                if (v89 == 2)
                                {
                                  v92 = 1;
                                }

                                else
                                {
                                  v92 = v11;
                                }

                                directoryStoreSetParentForMove(*(v12 + 6624), v131, v89);
                                v93 = *(v12 + 6632);
                                if (v93)
                                {
                                  directoryOverlayMoveDirectory(v93, v90, v91, v92, v9);
                                }

                                v94 = *(v12 + 1384);
                                v95 = *(v12 + 1392);
                                if (*(v95 + 8))
                                {
                                  v96 = 0;
                                  do
                                  {
                                    v97 = *(v12 + 6640);
                                    if (!v97 || !CFSetContainsValue(v97, *(*(*v95 + 8 * v96) + 56)))
                                    {
                                      _CIMoveDirectory(*(*v95 + 8 * v96), v90, v91, v92, v9);
                                    }

                                    ++v96;
                                  }

                                  while (v96 < *(v95 + 8));
                                }

                                if (*(v94 + 8))
                                {
                                  v98 = 0;
                                  do
                                  {
                                    v99 = *(v12 + 6640);
                                    if (!v99 || !CFSetContainsValue(v99, *(*(*v94 + 8 * v98) + 56)))
                                    {
                                      _CIMoveDirectory(*(*v94 + 8 * v98), v90, v91, v92, v9);
                                    }

                                    ++v98;
                                  }

                                  while (v98 < *(v94 + 8));
                                }

                                if (*(v14 + 4))
                                {
                                  bzero(buf, 0x8001uLL);
                                  allocator = _SIStackAllocatorCreate(buf, 0x8000, indexingZone);
                                  obj = db_create_obj(*(v12 + 1192), 256, 0);
                                  obj[2] = 0;
                                  v102 = decodeDBOToDictionary(*(v12 + 1192), obj, 0, 0x2000, 2, *(v12 + 2028), *(v12 + 2060), 0, 1, allocator);
                                  LiveIndex = si_getLiveIndex(*(v12 + 1384));
                                  if (v123 == v3)
                                  {
                                    v104 = v133;
                                  }

                                  else
                                  {
                                    v104 = &v132;
                                  }

                                  _CIUpdateContent(LiveIndex, v92, v9, v90 - 1, v104, *v14, 0, v102, 0.0, 0, *(v14 + 4), v14 + 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                                  free(obj);
                                  CFRelease(v102);
                                }

                                goto LABEL_41;
                              }

LABEL_38:
                              v29 = *__error();
                              v30 = _SILogForLogForCategory(4);
                              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136315906;
                                *&buf[4] = "updateWithNewPath";
                                v125 = 1024;
                                v126 = 994;
                                v127 = 1024;
                                v128 = inserted;
                                v129 = 2048;
                                v130 = v7;
                                _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: db_cas_obj error: %d oid: %lld", buf, 0x22u);
                              }

                              *__error() = v29;
                              goto LABEL_41;
                            }
                          }
                        }

                        goto LABEL_129;
                      }

                      v72 = v73 + 1;
                      v77 = v65;
                    }

                    v65 = v77;
                    if (v72 >= v77)
                    {
                      v78 = v76 > 0;
                      goto LABEL_123;
                    }
                  }
                }

                v56 = v57 + 1;
                v60 = 1;
              }

              if (v56 >= v49)
              {
                goto LABEL_102;
              }
            }
          }

          v111 = __si_assert_copy_extra_3233(0, -1);
          v112 = v111;
          v113 = "";
          if (v111)
          {
            v113 = v111;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v113);
          free(v112);
          if (!__valid_fs(-1))
          {
            v114 = 3072;
LABEL_184:
            *v114 = -559038737;
            abort();
          }

LABEL_182:
          v114 = 2989;
          goto LABEL_184;
        }

        v45 = v35 - 6;
        v46 = (v25 + 16 * v35 + 648);
        while (!*v46)
        {
          v46 += 2;
          v24 = __CFADD__(v45++, 1);
          if (v24)
          {
            goto LABEL_82;
          }
        }
      }

      db_rwlock_wait(v25 + 584, v35, 2);
      goto LABEL_53;
    }
  }

LABEL_41:
  free(v14);
  v31 = *MEMORY[0x1E69E9840];
}

void *stack_reallocate(void *ptr, size_t size, uint64_t a3, uint64_t a4)
{
  if (*a4 > ptr || *(a4 + 16) <= ptr)
  {
    v11 = *(a4 + 32);

    return malloc_type_zone_realloc(v11, ptr, size, 0x6A106D85uLL);
  }

  else
  {
    v7 = malloc_type_zone_malloc(*(a4 + 32), size, 0x57CA2FD2uLL);
    v8 = v7;
    if (v7)
    {
      if (*(a4 + 16) - ptr >= size)
      {
        v9 = size;
      }

      else
      {
        v9 = *(a4 + 16) - ptr;
      }

      memcpy(v7, ptr, v9);
      ++*(a4 + 24);
    }

    return v8;
  }
}

uint64_t computePathFS(uint64_t a1, unint64_t *a2, uint64_t *a3, unsigned int *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  Path = directoryStoreWriterGetPath(*(a1 + 6624), *a2, a3);
  if (Path)
  {
LABEL_2:
    v9 = 0;
    *a4 = Path;
LABEL_3:
    v10 = *MEMORY[0x1E69E9840];
    return v9;
  }

  v12 = a2[3];
  if (!v12)
  {
    v15 = *(*(a1 + 1416) + 128);
    if (v15)
    {
      v16 = v15();
      v17 = *a2;
      if (v16 > 0)
      {
        if (v17 != 2)
        {
          *a3 = v16;
          if (v16 == 2)
          {
            Path = 1;
          }

          else
          {
            Path = directoryStoreWriterGetPath(*(a1 + 6624), v16, (a3 + 1)) + 1;
            if (Path < 2)
            {
              goto LABEL_26;
            }
          }

          for (i = 0; i != Path; ++i)
          {
            if (a3[i] <= 0)
            {
              v30 = __si_assert_copy_extra_661(-1);
              v31 = v30;
              v32 = "";
              if (v30)
              {
                v32 = v30;
              }

              __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 1544, "newpath[i] > 0", v32, i, a3[i], Path);
              free(v31);
              if (__valid_fs(-1))
              {
                v33 = 2989;
              }

              else
              {
                v33 = 3072;
              }

              *v33 = -559038737;
              abort();
            }
          }

          goto LABEL_2;
        }

LABEL_27:
        v9 = 0;
        *a3 = 0;
        goto LABEL_3;
      }

      if (v17 == 2)
      {
        goto LABEL_27;
      }
    }

    else if (*a2 == 2)
    {
      goto LABEL_27;
    }

    v9 = *__error();
    v19 = *__error();
    v20 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = *__error();
      v24 = *a2;
      v25 = a2[3];
      *buf = 136316418;
      v35 = "computePathFS";
      v36 = 1024;
      v37 = 1529;
      v38 = 1024;
      v39 = v23;
      v40 = 1024;
      v41 = 1529;
      v42 = 2048;
      v43 = v24;
      v44 = 2048;
      v45 = v25;
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: SIPersistentIDStoreGetParentForOid error:%d at:%d oid:%lld parent:%lld", buf, 0x32u);
    }

    *__error() = v19;
    goto LABEL_3;
  }

  v13 = directoryStoreWriterGetPath(*(a1 + 6624), v12, (a3 + 1));
  v14 = a2[3];
  if (!v13)
  {
    if (v14 != 2)
    {
      goto LABEL_26;
    }

    *a3 = 2;
    Path = 1;
LABEL_15:
    v18 = 0;
    do
    {
      if (a3[v18] <= 0)
      {
        v26 = __si_assert_copy_extra_661(-1);
        v27 = v26;
        v28 = "";
        if (v26)
        {
          v28 = v26;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 1522, "newpath[i] > 0", v28, v18, a3[v18], Path);
        free(v27);
        if (__valid_fs(-1))
        {
          v29 = 2989;
        }

        else
        {
          v29 = 3072;
        }

        *v29 = -559038737;
        abort();
      }

      ++v18;
    }

    while (Path != v18);
    goto LABEL_2;
  }

  *a3 = v14;
  Path = v13 + 1;
  if (v13 != -1)
  {
    goto LABEL_15;
  }

LABEL_26:
  if (*a2 == 2)
  {
    goto LABEL_27;
  }

  v21 = *MEMORY[0x1E69E9840];

  return psid_lookupPath(a1, a2, 0, 0, 0, a4, a3);
}

uint64_t groupForBundleId(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock(&group_assignment_lock);
  Value = CFDictionaryGetValue(*(a1 + 2088), a2);
  os_unfair_lock_unlock(&group_assignment_lock);
  if (!Value)
  {
    return 0;
  }

  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberCharType, &valuePtr);
  return valuePtr;
}

void SIUpdateKnownBundles(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v5 = Count;
      if (Count >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          _si_updateCSGroupAssignments(a1, ValueAtIndex);
        }
      }

      os_unfair_lock_lock(&group_assignment_lock);
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a1 + 2088));
      os_unfair_lock_unlock(&group_assignment_lock);
      SISetProperty(a1, @"GroupAssignments", Copy);

      CFRelease(Copy);
    }
  }
}

uint64_t computePath(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v1;
  v93 = *MEMORY[0x1E69E9840];
  bzero(&v87, 0x1008uLL);
  v83 = 0;
  v17 = *v15;
  if (!v9 || !v7 || !v5)
  {
    v20 = computePathFS(v16, *v15, v13, &v83);
    Path = 0;
    if (v20)
    {
      goto LABEL_116;
    }

LABEL_85:
    v47 = v83;
    *v11 = v83;
    v48 = *v15;
    if (v47)
    {
      v49 = *v13;
      v48[3] = *v13;
      if (!v49 && *v48 != 2)
      {
        v73 = __si_assert_copy_extra_661(-1);
        v74 = v73;
        v75 = "";
        if (v73)
        {
          v75 = v73;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 883, "dbo->parent_oid||dbo->oid==2", v75);
        v67 = v74;
        goto LABEL_120;
      }

      if (Path && v88[0] != *v13)
      {
        v87 = *v48;
        directoryStoreSetParentForMove(*(v16 + 6624), *v48, v49);
        v50 = *(v16 + 6632);
        if (v50)
        {
          directoryOverlayMoveDirectory(v50, Path + 1, &v87, v47, v13);
        }

        v51 = *(v16 + 1384);
        v52 = *(v16 + 1392);
        if (*(v52 + 8))
        {
          v53 = 0;
          do
          {
            v54 = *(v16 + 6640);
            if (!v54 || !CFSetContainsValue(v54, *(*(*v52 + 8 * v53) + 56)))
            {
              _CIMoveDirectory(*(*v52 + 8 * v53), Path + 1, &v87, v47, v13);
            }

            ++v53;
          }

          while (v53 < *(v52 + 8));
        }

        if (*(v51 + 8))
        {
          v55 = 0;
          do
          {
            v56 = *(v16 + 6640);
            if (!v56 || !CFSetContainsValue(v56, *(*(*v51 + 8 * v55) + 56)))
            {
              _CIMoveDirectory(*(*v51 + 8 * v55), Path + 1, &v87, v47, v13);
            }

            ++v55;
          }

          while (v55 < *(v51 + 8));
        }
      }
    }

    if (v48[3] || !**(v16 + 6592))
    {
      v20 = 0;
      *v11 = v47;
      goto LABEL_116;
    }

LABEL_109:
    v20 = 89;
    goto LABEL_116;
  }

  v18 = *v17;
  if (v3 && CFStringHasSuffix(v3, @"NSFileProviderRootContainerItemIdentifier"))
  {
    *v13 = 2;
    Path = directoryStoreWriterGetPath(*(v16 + 6624), v18, v88);
    LODWORD(v18) = 1;
  }

  else
  {
    v21 = directoryStoreWriterGetPath(*(v16 + 6624), v18, v13);
    if (!v21)
    {
      Path = 0;
      v23 = v17 + 3;
      v24 = v17[3];
      if (!v24)
      {
        LODWORD(v18) = 0;
        v20 = 0;
        goto LABEL_73;
      }

      goto LABEL_15;
    }

    LODWORD(v18) = v21;
    Path = 0;
  }

  v23 = v17 + 3;
  v22 = v17[3];
  if (v22 == *v13)
  {
LABEL_78:
    if (v22 == 2)
    {
      v20 = 0;
      goto LABEL_83;
    }

    LODWORD(v86) = 0;
    v44 = *v17;
    v45 = si_directoryStoreEnsurePath(v16);
    v46 = v86;
    if (v86 != 22)
    {
      if (!v86)
      {
        v20 = 0;
        LODWORD(v18) = v45 + 1;
        goto LABEL_83;
      }

      v57 = *__error();
      v58 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v61 = *__error();
        v62 = *v17;
        v63 = v17[3];
        *buf = 136316162;
        *v90 = "computePathFP";
        *&v90[8] = 1024;
        *&v90[10] = 1478;
        *&v90[14] = 1024;
        *&v90[16] = v61;
        *&v90[20] = 2048;
        *&v90[22] = v62;
        v91 = 2048;
        v92 = v63;
        _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, "%s:%d: error: %d oid: %lld parent: %lld", buf, 0x2Cu);
      }

      *__error() = v57;
    }

    if (v46 == 60)
    {
      v20 = 60;
    }

    else
    {
      v20 = 22;
    }

    goto LABEL_116;
  }

  if (!v22)
  {
    goto LABEL_77;
  }

  __memcpy_chk();
  v24 = *v23;
  Path = v18;
LABEL_15:
  v25 = directoryStoreWriterGetPath(*(v16 + 6624), v24, (v13 + 1));
  v26 = *v23;
  if (v25)
  {
    *v13 = v26;
    LODWORD(v18) = v25 + 1;
    if (v25 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (!v26)
  {
LABEL_25:
    LODWORD(v18) = 0;
    v20 = 0;
    goto LABEL_73;
  }

  if (v26 == 2)
  {
    *v13 = 2;
    LODWORD(v18) = 1;
LABEL_21:
    v27 = 0;
    while (v13[v27] > 0)
    {
      if (v18 == ++v27)
      {
        goto LABEL_77;
      }
    }

    v64 = __si_assert_copy_extra_661(-1);
    v65 = v64;
    v66 = "";
    if (v64)
    {
      v66 = v64;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 1462, "newpath[i] > 0", v66, v27, v13[v27], v18);
    v67 = v65;
LABEL_120:
    free(v67);
    if (__valid_fs(-1))
    {
      v68 = 2989;
    }

    else
    {
      v68 = 3072;
    }

    *v68 = -559038737;
    abort();
  }

  v28 = **v15;
  v82 = *v15;
  v29 = (*v15)[3];
  v85 = v29;
  v86 = v82;
  if (dword_1EBF46ADC >= 5)
  {
    v76 = *__error();
    v77 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v90 = v28;
      *&v90[8] = 2048;
      *&v90[10] = v29;
      _os_log_impl(&dword_1C278D000, v77, OS_LOG_TYPE_DEFAULT, "lookupPathByDBO enter oid: %lld  parent: %lld", buf, 0x16u);
    }

    *__error() = v76;
  }

  if (v28 < 3)
  {
    LODWORD(v18) = 0;
    v20 = 0;
    goto LABEL_67;
  }

  v81 = v28;
  cs_orphan_oid = si_get_cs_orphan_oid(v16);
  v18 = 0;
  while (1)
  {
    v31 = v85;
    if (v85 == 2)
    {
      v20 = 0;
      v13[v18] = 2;
      LODWORD(v18) = v18 + 1;
      goto LABEL_66;
    }

    if (v85 >= 1 && v85 != cs_orphan_oid)
    {
      break;
    }

    v13[v18] = cs_orphan_oid;
    v85 = 2;
    v18 = (v18 + 1);
LABEL_58:
    if (v18 > 511)
    {
      v20 = 22;
      goto LABEL_66;
    }
  }

  v84 = 0;
  if (db_get_obj(*(v16 + 1192), v85, &v84, 0))
  {
    v34 = forceToOrphanParent(v16, &v86, &v85, v9, v86 == v82);
    if (v34)
    {
      v20 = v34;
      LODWORD(v43) = v18;
LABEL_65:
      LODWORD(v18) = v43;
      goto LABEL_66;
    }

    goto LABEL_51;
  }

  if (dword_1EBF46ADC >= 5)
  {
    v80 = *__error();
    v41 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v84[3];
      *buf = 134218496;
      *v90 = v81;
      *&v90[8] = 2048;
      *&v90[10] = v31;
      *&v90[18] = 2048;
      *&v90[20] = v42;
      _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "lookupPathByDBO oid: %lld p1: %lld p2: %lld", buf, 0x20u);
    }

    *__error() = v80;
  }

  if (v86 != v82)
  {
    free(v86);
  }

  v35 = v84;
  v43 = v18 + 1;
  v13[v18] = v31;
  v36 = v35[3];
  v85 = v36;
  v86 = v35;
  if (v36 <= 0)
  {
    v37 = forceToOrphanParent(v16, &v86, &v85, v9, 0);
    if (v37)
    {
      v20 = v37;
      goto LABEL_65;
    }

    v36 = v85;
  }

  if (v36 == 2 || v36 == cs_orphan_oid)
  {
    goto LABEL_57;
  }

  v39 = directoryStoreWriterGetPath(*(v16 + 6624), v36, &v13[v43]);
  v18 = (v39 + v43);
  if (!v39)
  {
LABEL_51:
    if (v18)
    {
      v40 = 0;
      do
      {
        if (v13[v40] <= 0)
        {
          v69 = __si_assert_copy_extra_661(-1);
          v70 = v69;
          v71 = "";
          if (v69)
          {
            v71 = v69;
          }

          __message_assert("%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", "SIStoring.c", 1407, "newpath[i] > 0", v71, v40, v13[v40], v18);
          free(v70);
          if (__valid_fs(-1))
          {
            v72 = 2989;
          }

          else
          {
            v72 = 3072;
          }

          *v72 = -559038737;
          abort();
        }

        ++v40;
      }

      while (v18 != v40);
      v43 = v18;
    }

    else
    {
      v43 = 0;
    }

LABEL_57:
    v18 = v43;
    goto LABEL_58;
  }

  v20 = 0;
LABEL_66:
  v28 = v81;
LABEL_67:
  if (v86 != v82)
  {
    free(v86);
  }

  if (v20)
  {
    if (dword_1EBF46ADC >= 5)
    {
      v78 = *__error();
      v79 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v90 = v20;
        *&v90[4] = 2048;
        *&v90[6] = v28;
        *&v90[14] = 2048;
        *&v90[16] = v85;
        _os_log_impl(&dword_1C278D000, v79, OS_LOG_TYPE_DEFAULT, "lookupPathByDBO error: %d oid: %lld  parent: %lld", buf, 0x1Cu);
      }

      LODWORD(v18) = 0;
      *__error() = v78;
    }

    else
    {
      LODWORD(v18) = 0;
    }
  }

  v17 = *v15;
LABEL_73:
  if (v20 | v18)
  {
    if (v20)
    {
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  LODWORD(v18) = 0;
  if (v17[3] == 2)
  {
LABEL_77:
    v22 = *v13;
    goto LABEL_78;
  }

  v20 = 2;
LABEL_83:
  if (!v17[3] && **(v16 + 6592))
  {
    goto LABEL_109;
  }

  v83 = v18;
  if (!v20)
  {
    goto LABEL_85;
  }

LABEL_116:
  v59 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t si_text_store_put(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v35 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(v2);
  if (!Length)
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(8);
    v19 = 2 * (dword_1EBF46AEC < 4);
    if (!os_log_type_enabled(v18, v19))
    {
LABEL_15:
      *__error() = v17;
      v22 = 4294967274;
      goto LABEL_18;
    }

    *buf = 0;
    v20 = "Could not get string length";
    v21 = buf;
LABEL_14:
    _os_log_impl(&dword_1C278D000, v18, v19, v20, v21, 2u);
    goto LABEL_15;
  }

  v8 = Length;
  usedBufLen = 0;
  bzero(buf, 0x10000uLL);
  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  if (!CStringPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    if (!CStringPtr)
    {
      v11 = ((3 * v8) & 0xFFFFFFFFFFFF0000) != 0;
      if ((3 * v8) < 0x10000)
      {
        v10 = buf;
      }

      else
      {
        v10 = malloc_type_zone_malloc(indexingZone, 3 * v8, 0x99011990uLL);
        if (!v10)
        {
          v17 = *__error();
          v18 = _SILogForLogForCategory(8);
          v19 = 2 * (dword_1EBF46AEC < 4);
          if (!os_log_type_enabled(v18, v19))
          {
            goto LABEL_15;
          }

          LOWORD(v34[0]) = 0;
          v20 = "Could not get string bytes";
          v21 = v34;
          goto LABEL_14;
        }
      }

      v36.location = 0;
      v36.length = v8;
      CFStringGetBytes(v3, v36, 0x8000100u, 0, 0, v10, 3 * v8, &usedBufLen);
      goto LABEL_5;
    }
  }

  v10 = CStringPtr;
  v11 = 0;
  usedBufLen = strlen(CStringPtr);
LABEL_5:
  if (dword_1EBF46AEC >= 5)
  {
    v25 = *__error();
    v26 = _SILogForLogForCategory(8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v34[0]) = 68157954;
      DWORD1(v34[0]) = usedBufLen;
      WORD4(v34[0]) = 2080;
      *(v34 + 10) = v10;
      _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "Put document: %.*s", v34, 0x12u);
    }

    *__error() = v25;
  }

  v12 = *(v6 + 1296);
  v13 = usedBufLen;
  memset(v34, 0, sizeof(v34));
  snprintf(v34, 0x200uLL, "doc_store_put_document(%p, %lld)", v12, v5);
  v28[0] = 0;
  v28[1] = 0;
  ScopeLogger::ScopeLogger(v28, v34);
  if (v12)
  {
    if (v13 >= 0x3E9)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(8);
      v16 = 2 * (dword_1EBF46AEC < 4);
      if (os_log_type_enabled(v15, v16))
      {
        v30 = 134218240;
        v31 = v13;
        v32 = 2048;
        v33 = 1000;
        _os_log_impl(&dword_1C278D000, v15, v16, "Input doc store string length is %zu, trim down to %zu limit", &v30, 0x16u);
      }

      *__error() = v14;
    }

    DocStore::PutDocument(v12, v5, v10);
  }

  v22 = 4294967282;
  ScopeLogger::~ScopeLogger(v28);
  if (v11)
  {
    free(v10);
  }

LABEL_18:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

BOOL shrinkLocalizedField(uint64_t a1, uint64_t *a2, char *a3)
{
  *v12 = 0;
  *v13 = 0;
  if (db_get_field(*(a1 + 1192), *a2, a3, v13, v12))
  {
    return 0;
  }

  if (*(*v13 + 8) <= 0x1000u || **v13 != 11 || (*(*v13 + 2) & 0x90) != 0x80)
  {
    return db_delete_field(*(a1 + 1192), a2, a3) == 0;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = _decodeSDBField(*(a1 + 1192), *v13, *v12, 0, 0, 0, 0, *MEMORY[0x1E695E480]);
  v9 = CFStringCreateWithCString(v7, a3, 0x8000100u);
  v10 = *(*v13 + 2);
  v6 = 1;
  setOneLocalizedFieldWithFlags(*(a1 + 1192));
  CFRelease(v8);
  CFRelease(v9);
  return v6;
}

uint64_t forceToOrphanParent(unint64_t a1, char **a2, unint64_t *a3, const __CFString *a4, int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3 - 1 < 2)
  {
    goto LABEL_4;
  }

  v11 = **a2;
  v12 = *(*a2 + 3);
  cs_orphan_oid = si_get_cs_orphan_oid(a1);
  if (!cs_orphan_oid)
  {
    result = 2;
    goto LABEL_16;
  }

  if (v11 == cs_orphan_oid)
  {
LABEL_4:
    result = 22;
  }

  else
  {
    *a3 = cs_orphan_oid;
    if (v12 != cs_orphan_oid)
    {
      *(*a2 + 3) = cs_orphan_oid;
      v23 = *__error();
      v15 = _SILogForLogForCategory(4);
      v16 = dword_1EBF46ADC < 3;
      if (os_log_type_enabled(v15, (dword_1EBF46ADC < 3)))
      {
        *v27 = 134218752;
        *&v27[4] = v11;
        *&v27[12] = 2048;
        *&v27[14] = v12;
        v28 = 2048;
        v29 = v5;
        v30 = 1024;
        v31 = a5;
        _os_log_impl(&dword_1C278D000, v15, v16, "*warn* forceToOrphanParent oid: %lld dbo parent oid: %lld parent: %lld original: %d", v27, 0x26u);
      }

      *__error() = v23;
      if ((a5 & 1) == 0)
      {
        v17 = *a2;
        v24 = 0;
        si_populategroup(a1, a2, a4, 0, 1, &v25, &v24, &v26);
        cf = decodeDBOToDictionary(*(a1 + 1192), v17, 0, 0x2000, 2, *(a1 + 2028), *(a1 + 2060), 1, 1, *MEMORY[0x1E695E480]);
        *v27 = *a3;
        *&v27[8] = 2;
        LiveIndex = si_getLiveIndex(*(a1 + 1384));
        _CIUpdateContent(LiveIndex, 2u, v27, 0, 0, *v17, v24, 0, 0.0, cf, 0, v17 + 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
        CFRelease(cf);
      }

      db_update_obj(*(a1 + 1192), *a2, 0);
      os_unfair_lock_lock((a1 + 304));
      v20 = *(a1 + 312);
      if (v20)
      {
        pthread_rwlock_wrlock((v20 + 16));
        SIValueSet<unsigned long long>::SIValueSetInsert((v20 + 216), v11);
        pthread_rwlock_unlock((v20 + 16));
      }

      else
      {
        Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
        *(a1 + 312) = Mutable;
        pthread_rwlock_wrlock((Mutable + 16));
        SIValueSet<unsigned long long>::SIValueSetInsert((Mutable + 216), v11);
        pthread_rwlock_unlock((Mutable + 16));
        si_enqueue_work(*(a1 + 1064), fixupInflightOrphanItems, a1);
      }

      os_unfair_lock_unlock((a1 + 304));
    }

    result = 0;
  }

LABEL_16:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void fixupInflightOrphanItems(unint64_t a1, int a2)
{
  if (!a2)
  {
    os_unfair_lock_lock((a1 + 304));
    v3 = *(a1 + 312);
    if (v3)
    {
      *(a1 + 312) = 0;
      os_unfair_lock_unlock((a1 + 304));
      fixupOrphanArray(a1, v3, 1);

      CFRelease(v3);
    }

    else
    {

      os_unfair_lock_unlock((a1 + 304));
    }
  }
}

int *si_updateIndexForPathRepair(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (si_updateIndexForPathRepair_onceToken != -1)
  {
    dispatch_once(&si_updateIndexForPathRepair_onceToken, &__block_literal_global_67_9138);
  }

  result = ContentIndexUpdatePath(a2, *(a3 + 32), a5, a4, 0, 0);
  v11 = atomic_load((a2 + 36));
  if ((v11 & 2) == 0 && (*(a2 + 15203) & 1) == 0 && *(a2 + 15664))
  {

    return _CIFlushCache(a2, 0, lowDiskSpaceCallback, a1, &__block_literal_global_70);
  }

  return result;
}

CFDictionaryRef __si_updateIndexForPathRepair_block_invoke()
{
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  si_updateIndexForPathRepair_emptyDict = result;
  return result;
}

void si_flush_index_ctx_free(uint64_t a1, char a2)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      dispatch_resume(v4);
      dispatch_release(*(a1 + 40));
      *(a1 + 40) = 0;
    }

    si_power_info_cleanup(a1 + 48, *a1, a2);
    v5 = *(a1 + 88);
    if (v5)
    {
      si_scheduler_resume_with_token(v5);
    }

    free(a1);
  }
}

uint64_t _si_next_index_id(os_unfair_lock_s *a1, uint64_t a2, int a3, char a4)
{
  v26 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if ((a4 & 1) == 0)
  {
    os_unfair_lock_lock(a1 + 365);
  }

  os_unfair_lock_opaque = a1[364]._os_unfair_lock_opaque;
  if (!a2)
  {
    a1[364]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
    v9 = 1;
    if (!a3)
    {
      goto LABEL_10;
    }

    valuePtr = 1;
LABEL_9:
    v9 = 0;
LABEL_10:
    if (a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (os_unfair_lock_opaque < a2)
  {
    a1[364]._os_unfair_lock_opaque = a2 + 1;
    v9 = 1;
    os_unfair_lock_opaque = a2;
    if (!a3)
    {
      goto LABEL_10;
    }

    valuePtr = 1;
    os_unfair_lock_opaque = a2;
    goto LABEL_9;
  }

  v9 = 1;
  os_unfair_lock_opaque = 1;
  if ((a4 & 1) == 0)
  {
LABEL_11:
    os_unfair_lock_unlock(a1 + 365);
  }

LABEL_12:
  v10 = *__error();
  v11 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[15]._os_unfair_lock_opaque;
    v13 = "yes";
    *buf = 67109890;
    if (v9)
    {
      v13 = "no";
    }

    v19 = v12;
    v20 = 1024;
    v21 = os_unfair_lock_opaque;
    v22 = 1024;
    v23 = a2;
    v24 = 2080;
    v25 = v13;
    _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "index[%u] indexID: %u for %u update: %s", buf, 0x1Eu);
  }

  *__error() = v10;
  if ((v9 & 1) == 0)
  {
    v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    SISetProperty(a1, @"kSINextIndexId", v14);
    CFRelease(v14);
  }

  v15 = *MEMORY[0x1E69E9840];
  return os_unfair_lock_opaque;
}

void _swapIndex(void *a1, int a2)
{
  v127 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(10);
  v6 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_1C278D000, v5, v6, "_swapIndex %p\n", buf, 0xCu);
  }

  *__error() = v4;
  if (a2 || (v7 = *a1, (*(*a1 + 6944) & 1) != 0) || *(v7 + 6960) > 0)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(10);
    v10 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(*a1 + 6944);
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&dword_1C278D000, v9, v10, "Skipped swapindex %d\n", buf, 8u);
    }

    *__error() = v8;
LABEL_9:
    v12 = a2 != 0;
    v13 = a1;
    goto LABEL_10;
  }

  v15 = *(v7 + 1392);
  _checkIndexSetValidity(*(v7 + 1384));
  _checkIndexSetValidity(*(v7 + 1392));
  *(a1 + 80) = 0;
  v16 = *(v15 + 8);
  if (v16 <= 0x2D)
  {
    v21 = (v7 + 1392);
    v22 = (v7 + 1384);
    if (!v16)
    {
      goto LABEL_28;
    }

    v23 = 0;
    v24 = a1[1];
    while (1)
    {
      v25 = *(*v15 + 8 * v23);
      if (v24 == v25)
      {
        break;
      }

      if (v16 == ++v23)
      {
        goto LABEL_28;
      }
    }

    if (*(v25 + 56) == *(a1 + 5) && (v26 = atomic_load((v24 + 36)), (v26 & 3) == 0) && (*(v24 + 15203) & 1) == 0)
    {
      v31 = "%d.";
      v99 = 1;
      v32 = (v7 + 1392);
    }

    else
    {
LABEL_28:
      v15 = *v22;
      v27 = (*v22)[2];
      if (!v27)
      {
        goto LABEL_36;
      }

      v23 = 0;
      v28 = a1[1];
      while (1)
      {
        v29 = *(*v15 + 8 * v23);
        if (v28 == v29)
        {
          break;
        }

        if (v27 == ++v23)
        {
          goto LABEL_36;
        }
      }

      if (*(v29 + 56) != *(a1 + 5) || (v30 = atomic_load((v28 + 36)), (v30 & 3) != 0) || (*(v28 + 15203) & 1) != 0)
      {
LABEL_36:
        v13 = a1;
        v12 = 0;
        goto LABEL_10;
      }

      v99 = 0;
      *(a1 + 80) = 1;
      v31 = "live.%d.";
      v32 = (v7 + 1384);
    }

    v107 = 0;
    v100 = 0;
    if (fd_setDir(*(*a1 + 32), &v107))
    {
      v102 = v31;
      v96 = v32;
      v33 = ((*(v7 + 828) & 1) << 6) ^ 0x50;
      if (*(v7 + 2072))
      {
        v33 |= 0x100u;
      }

      if (*(v7 + 2073))
      {
        v33 |= 0x400u;
      }

      v101 = (*(v7 + 6584) >> 7) & 0x8000 | (*(v7 + 6584) >> 13) & 0x800 | v33;
      v34 = *MEMORY[0x1E695E480];
      v35 = *(v7 + 2400);
      *(v7 + 2400) = v35 + 1;
      v97 = CFStringCreateWithFormat(v34, 0, @"tmp.%ld.", v35);
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 0x40000000;
      v106[2] = ___swapIndex_block_invoke;
      v106[3] = &__block_descriptor_tmp_82;
      v106[4] = v7;
      v36 = *(v7 + 32);
      v37 = *(*v15 + 8 * v23);
      v38 = *(v37 + 68);
      v39 = *(v37 + 80);
      if (v38 >= 2)
      {
        v40 = v38;
      }

      else
      {
        v40 = 0;
      }

      v41 = *(v37 + 40);
      v42 = *(a1 + 80);
      v43 = *(v7 + 1284);
      v44 = *(v7 + 1192);
      if (v44)
      {
        v93 = *(v7 + 1284);
        v94 = *(v37 + 40);
        v45 = *(a1 + 80);
        v91 = v40;
        v92 = *(v37 + 80);
        vector_store = db_get_vector_store(v44);
        v40 = v91;
        v39 = v92;
        v43 = v93;
        v41 = v94;
        v42 = v45;
        v47 = vector_store;
      }

      else
      {
        v47 = 0;
      }

      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 0x40000000;
      v105[2] = ___swapIndex_block_invoke_2;
      v105[3] = &__block_descriptor_tmp_84_9158;
      v105[4] = a1;
      New = ContentIndexCreateNew(v36, v97, v39 + v40, v41, v101 ^ 0x8000u, v42, v43, v47, v105, v106, *(v7 + 60));
      CFRelease(v97);
      v49 = a1[1];
      *(a1 + 82) = v49 != si_getLiveIndex(*(*a1 + 1384));
      v100 = New != 0;
      if (New)
      {
        SIActivityJournalNewLiveIndex((v7 + 2192), *(New + 56), *(New + 80));
        v50 = *(*v15 + 8 * v23);
        v51 = *(v50 + 68);
        if (v51 < 2)
        {
          v51 = 0;
        }

        _ContentIndexSetPayloadMaxCount(v50, *(v50 + 80) + v51, 3027);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___swapIndex_block_invoke_3;
        aBlock[3] = &__block_descriptor_tmp_86;
        aBlock[4] = v7;
        aBlock[5] = New;
        ContentIndexSetDirtyCallback(New, aBlock);
        *(New + 15201) = 4;
        v126 = 0;
        v124 = 0u;
        v125 = 0u;
        memset(buf, 0, sizeof(buf));
        v103 = 0;
        ContentIndexSyncIndex(New, buf, &v103);
        v95 = v23;
        v98 = New;
        ContentIndexSetEmergency(New, *(*(*v15 + 8 * v23) + 44));
        v52 = ContentIndexListClone(v15);
        v53 = v52;
        v54 = v52[3];
        if (v54 <= v52[2])
        {
          v55 = 2 * v54;
          v52[3] = v55;
          *v52 = malloc_type_realloc(*v52, 8 * v55, 0x2004093837F09uLL);
        }

        v56 = v99 ^ 1;
        if (!v23)
        {
          v56 = 1;
        }

        if ((v56 & 1) == 0)
        {
          v57 = 0;
          while (1)
          {
            v58 = *(*v53 + v57);
            v59 = atomic_load((v58 + 36));
            if ((v59 & 3) == 0 && (*(v58 + 15203) & 1) == 0)
            {
              break;
            }

            v57 += 8;
            if (8 * v23 == v57)
            {
              goto LABEL_62;
            }
          }

          v81 = __si_assert_copy_extra_661(-1);
          v82 = v81;
          v83 = "";
          if (v81)
          {
            v83 = v81;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3043, "!ContentIndexWritable(indexSet->index[i])", v83);
LABEL_90:
          free(v82);
          if (__valid_fs(-1))
          {
            v84 = 2989;
          }

          else
          {
            v84 = 3072;
          }

          *v84 = -559038737;
          abort();
        }

LABEL_62:
        v60 = (v23 + 1);
        bzero(&buf[8], 0x208uLL);
        *buf = 0x6D6F76650A00;
        *&buf[8] = 2;
        v61 = *(a1 + 80);
        buf[12] = v61;
        *&buf[16] = v60;
        v62 = v53[2];
        *&buf[20] = v62;
        *&buf[24] = v62;
        if (v60 < v62)
        {
          v63 = v62;
          do
          {
            *(*v53 + 8 * v63) = *(*v53 + 8 * v63 - 8);
            --v63;
          }

          while (v63 > v60);
        }

        *(*v53 + 8 * v60) = v98;
        v53[2] = v62 + 1;
        v64 = v53[4];
        if (v64 != -1 && v64 >= v23)
        {
          v53[4] = v64 + 1;
        }

        if (v61)
        {
          v66 = *v21;
        }

        else
        {
          v67 = *v22;
        }

        si_clone_index_metadata_to_inflight(v7);
        __strlcpy_chk();
        v68 = si_openat_protected(*(v7 + 32), "tmp.movePlan", 1538, 3);
        pwrite(v68, buf, 0x210uLL, 0);
        fcntl(v68, 85);
        v69 = v53[2];
        if (v60 < v69)
        {
          v70 = v69 - 1;
          if (v70 > v60)
          {
            v71 = 8 * (v69 - 1);
            do
            {
              *&buf[24] = v70;
              pwrite(v68, buf, 0x210uLL, 0);
              fcntl(v68, 85);
              v121 = 0u;
              memset(v122, 0, sizeof(v122));
              v119 = 0u;
              v120 = 0u;
              v117 = 0u;
              v118 = 0u;
              v115 = 0u;
              v116 = 0u;
              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              __str = 0u;
              v72 = fmtcheck(v102, "%i");
              snprintf(&__str, 0xFFuLL, v72, v70);
              ContentIndexChangePrefix(*(*v53 + v71));
              v70 = (v70 - 1);
              v71 -= 8;
            }

            while (v60 < v70);
          }
        }

        *&buf[28] = 1;
        pwrite(v68, buf, 0x210uLL, 0);
        fcntl(v68, 85);
        v121 = 0u;
        memset(v122, 0, sizeof(v122));
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        __str = 0u;
        v73 = fmtcheck(v102, "%i");
        snprintf(&__str, 0xFFuLL, v73, v60);
        ContentIndexChangePrefix(v98);
        unlinkat(*(v7 + 32), "tmp.movePlan", 2048);
        close(v68);
        if (*(*v53 + 8 * v95) != a1[1])
        {
          v85 = __si_assert_copy_extra_661(-1);
          v82 = v85;
          v86 = "";
          if (v85)
          {
            v86 = v85;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3111, "indexSet->index[spot-1]==ctx->idx", v86);
          goto LABEL_90;
        }

        _checkIndexSetValidity(v53);
        v74 = v15;
        atomic_compare_exchange_strong(v96, &v74, v53);
        if (v74 != v15)
        {
          v87 = __si_assert_copy_extra_661(*(v7 + 32));
          v88 = v87;
          v89 = "";
          if (v87)
          {
            v89 = v87;
          }

          __message_assert("%s:%u: failed assertion '%s' %s This should be impossible; this thread is supposed to be  suspended when the other thread changes index sets.", "SIStoring.c", 3114, "OSAtomicCompareAndSwapPtrBarrier(oldIndexSet,indexSet,(void* volatile*)indexSetPtr)", v89);
          free(v88);
          if (__valid_fs(*(v7 + 32)))
          {
            v90 = 2989;
          }

          else
          {
            v90 = 3072;
          }

          *v90 = -559038737;
          abort();
        }

        si_cleanup(v7, v15);
        atomic_fetch_add_explicit((v7 + 1400), 1u, memory_order_relaxed);
        _CIDisableUpdates(a1[1]);
        _checkIndexSetValidity(*(v7 + 1384));
        _checkIndexSetValidity(*(v7 + 1392));
        si_write_index_state(v7, 1, 0, v75, v76, v77, v78, v79);
      }

      else
      {
        _checkIndexSetValidity(*v22);
        _checkIndexSetValidity(*v21);
      }

      fd_resetDir(v107);
    }

    si_indexDeleteDeferredItems(v7);
    v80 = a1[11];
    if (v80)
    {
      si_scheduler_resume_with_token(v80);
    }

    a1[11] = 0;
    if (v100)
    {
      _swapIndex1(a1);
      a1 = 0;
    }

    goto LABEL_9;
  }

  v17 = *__error();
  v18 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "_swapIndex";
    *&buf[12] = 1024;
    *&buf[14] = 2961;
    _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: Index count too high; ignore split", buf, 0x12u);
  }

  *__error() = v17;
  if (*(v15 + 8) >= 0x30u && (*(v7 + 2434) & 1) == 0)
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "_swapIndex";
      *&buf[12] = 1024;
      *&buf[14] = 2963;
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: Index count too high; start merge", buf, 0x12u);
    }

    *__error() = v19;
    _SIIssueMerge(v7, *(a1 + 80));
  }

  v13 = a1;
  v12 = 0;
LABEL_10:
  si_flush_index_ctx_free(v13, v12);
  v14 = *MEMORY[0x1E69E9840];
}

void _swapIndex1(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  if ((*(*a1 + 6944) & 1) != 0 || *(v2 + 6960) > 0)
  {
    if (dword_1EBF46AF4 >= 5)
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "Skipped flushing\n", v15, 2u);
      }

      *__error() = v13;
    }
  }

  else
  {
    v3 = malloc_type_calloc(1uLL, 0x90uLL, 0x10B00402663C8FFuLL);
    v4 = v3;
    v5 = *(v2 + 2360);
    if (v5)
    {
      v3[2].i64[0] = v5[9].i64[0];
      v3[1] = vextq_s8(*v5, *v5, 8uLL);
    }

    si_indexDeleteDeferredItems(v2);
    *v4 = v2;
    *(v4 + 96) = 1;
    syncIndex(v4, 0);
    if (*(v1 + 82) == 1)
    {
      v6 = *(v1 + 8);
      si_perform_livequeries_bulk_updates(*v1);
    }

    if (*(v2 + 2440) != 1 || (*(v1 + 80) & 1) == 0)
    {
      if (gSISystemOnBattery == 1 && (v7 = *(v2 + 2360), (v8 = *(v7 + 80)) != 0) && (*(v1 + 83) & 1) == 0)
      {
        v9 = *(v1 + 80);
        v11 = *(v1 + 16);
        v10 = *(v1 + 20);
        v12 = *(v7 + 144);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = ___swapIndex1_block_invoke;
        v16[3] = &__block_descriptor_tmp_165;
        v20 = v9;
        v18 = v10;
        v19 = v11;
        v17 = *(v1 + 24);
        v8(v12, 0, @"swapIndex", v16);
      }

      else
      {
        si_enqueue_work_with_qos(*(v2 + 1064), 9, _swapIndex2, v1);
        v1 = 0;
      }
    }
  }

  si_flush_index_ctx_free(v1, 0);
}

void ___swapIndex1_block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    v10 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
    v10[5] = *(a1 + 48);
    *(v10 + 80) = *(a1 + 56);
    v10[4] = *(a1 + 52);
    *v10 = a2;
    *(v10 + 3) = *(a1 + 32);
    *(v10 + 4) = *(a1 + 40);
    *(v10 + 81) = 0;
    si_power_info_init((v10 + 12), a3, a4, a5);
    v11 = *(a2 + 1064);

    si_enqueue_work_with_qos(v11, 9, _swapIndex2, v10);
  }
}

void _swapIndex2(_DWORD *a1, int a2)
{
  if (a2 || (v4 = *a1, (*(*a1 + 6944) & 1) != 0) || *(v4 + 6960) > 0)
  {
    if (dword_1EBF46AF4 >= 5)
    {
      v25 = *__error();
      v26 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "Skipped compacting\n", &buf, 2u);
      }

      *__error() = v25;
    }

    goto LABEL_5;
  }

  v7 = time(0);
  v8 = a1[5];
  if (v8)
  {
    v9 = *a1;
    v10 = *(*a1 + 1392);
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = v7;
      v13 = 0;
      v14 = (v9 + 1392);
      v15 = *v10;
      do
      {
        if (*(*(v15 + 8 * v13) + 56) == v8)
        {
          v16 = 1;
          goto LABEL_18;
        }

        ++v13;
      }

      while (v11 != v13);
      v13 = 0;
      v14 = (v9 + 1384);
      v15 = *v10;
      while (*(*(v15 + 8 * v13) + 56) != v8)
      {
        if (v11 == ++v13)
        {
          goto LABEL_32;
        }
      }

      v16 = 0;
LABEL_18:
      v17 = *(a1 + 1);
      if (v17 == *(v15 + 8 * v13) && *(v17 + 56) == v8)
      {
        v51 = 0;
        if ((fd_setDir(*(v9 + 32), &v51) & 1) == 0)
        {
LABEL_5:
          v5 = a2 != 0;
          v6 = a1;
LABEL_6:
          si_flush_index_ctx_free(v6, v5);
          return;
        }

        values = *(*(a1 + 1) + 56);
        v18 = CFSetCreate(*MEMORY[0x1E695E480], &values, 1, 0);
        setUpOverlay(*a1, v18);
        CFRelease(v18);
        v49 = 0;
        if (gSISystemOnBattery == 1 && (*(v4 + 6587) & 1) != 0)
        {
          goto LABEL_45;
        }

        disableProcMon();
        v19 = *(a1 + 1);
        v20 = (*(*a1 + 6584) >> 4) & 1;
        *&buf = si_compact_lock;
        *(&buf + 1) = si_compact_unlock;
        v53 = si_compact_should_cancel;
        v54 = v4;
        v21 = _CICompact(v19, &buf, v20, &v49);
        enableProcMon();
        v22 = a1[5];
        if (!v22)
        {
          goto LABEL_44;
        }

        v10 = *v14;
        v23 = *(*v14 + 8);
        if (!v23)
        {
          goto LABEL_44;
        }

        v13 = 0;
        v24 = *v10;
        do
        {
          if (*(*(v24 + 8 * v13) + 56) == v22)
          {
            v16 = 1;
            goto LABEL_39;
          }

          ++v13;
        }

        while (v23 != v13);
        v13 = 0;
        v24 = *v10;
        while (*(*(v24 + 8 * v13) + 56) != v22)
        {
          if (v23 == ++v13)
          {
            goto LABEL_44;
          }
        }

LABEL_39:
        v27 = *(a1 + 1);
        if (v27 != *(v24 + 8 * v13) || *(v27 + 56) != v22)
        {
LABEL_44:
          v6 = a1;
          v5 = 0;
          goto LABEL_6;
        }

        if (!v21)
        {
LABEL_45:
          v28 = 0;
        }

        else
        {
          if (v49 == 1)
          {
            si_recycleForBadIndex(*a1, v27, "compact err");
LABEL_70:
            fd_resetDir(v51);
            goto LABEL_5;
          }

          v28 = 1;
        }

        disableProcMon();
        mergeOverlay(*a1, 0);
        enableProcMon();
        v29 = count_IndexSet(v10, v13, *(*(a1 + 1) + 52));
        v30 = v29;
        if (v29 <= 5 && (v29 < 3 || (gSISystemOnBattery & 1) != 0))
        {
          if (((v28 | v16) & 1) == 0)
          {
            v46 = *(a1 + 1);
            v47 = atomic_load((v46 + 16));
            if (*(v46 + 68) / 0xAu < v47)
            {
              v48 = si_mergeOneIndex(*a1, *(a1 + 1));
              *(a1 + 1) = v48;
              if (v48)
              {
                a1[5] = *(v48 + 56);
              }
            }
          }
        }

        else
        {
          v31 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
          v32 = *a1;
          *v31 = *a1;
          v33 = (v13 - v30 + 1);
          v31[2] = *(*(*v10 + 8 * v33) + 56);
          v31[3] = v30;
          *(v31 + 1042) = 0;
          v31[274] = 3;
          *(v31 + 1100) = *(a1 + 81);
          *(v31 + 138) = v12;
          v34 = v31;
          *(v31 + 131) = "void _swapIndex2(struct flush_index_ctx *, Boolean)";
          if (v30 > 0xA || *(v10 + 8) > 0x14u || *(a1 + 5))
          {
            v35 = *(a1 + 5);
            if (!v35)
            {
              v35 = copyHoldQueue(v32);
            }

            *(v34 + 1056) = v35;
            *(a1 + 5) = 0;
          }

          v36 = 0;
          v37 = 0;
          v38 = *(a1 + 4);
          *(v34 + 1064) = *(a1 + 3);
          *(v34 + 1080) = v38;
          a1[12] = 0;
          v39 = v13;
          *(a1 + 8) = 0;
          *(a1 + 9) = 0;
          *(a1 + 7) = 0;
          v40 = *v10;
          if (v13 <= v33)
          {
            v39 = (v13 - v30 + 1);
          }

          v41 = v39 + 1;
          do
          {
            v42 = *(v40 + 8 * v33);
            v43 = atomic_load((v42 + 16));
            v36 += v43;
            LODWORD(v43) = *(v42 + 68);
            v44 = *(v42 + 80);
            if (v43 >= 2)
            {
              v43 = v43;
            }

            else
            {
              v43 = 0;
            }

            v40 = *v10;
            v37 = v44 + v37 + v43 - *(*(*v10 + 8 * v33++) + 80);
          }

          while (v41 != v33);
          *(v34 + 16) = v16 ^ 1;
          if (v37 < 4 * v36)
          {
            v45 = v16 ^ 1;
          }

          else
          {
            v45 = 0;
          }

          *(v34 + 1041) = v45;
          __strlcpy_chk();
          si_power_info_assert_power(v34 + 1064, v4);
          si_enqueue_work_with_qos(*(*a1 + 1064), 9, si_mergeIndex, v34);
        }

        goto LABEL_70;
      }
    }
  }

LABEL_32:

  si_flush_index_ctx_free(a1, 0);
}

uint64_t count_IndexSet(uint64_t a1, unsigned int a2, int a3)
{
  if (*(a1 + 8) <= a2)
  {
    v8 = __si_assert_copy_extra_661(-1);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3372, "startIndex < indexSet->indexCount", v10);
LABEL_18:
    free(v9);
    if (__valid_fs(-1))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  v3 = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = a2;
    while (v4 != *(a1 + 16))
    {
      v5 = *(*a1 + 8 * v4);
      if (*(v5 + 52) > a3)
      {
        break;
      }

      v6 = atomic_load((v5 + 36));
      if ((v6 & 3) == 0 && *(v5 + 15203) != 1)
      {
        break;
      }

      v3 = (v3 + 1);
      --v4;
      if (a2 + 1 == v3)
      {
        v3 = a2 + 1;
        break;
      }
    }

    if (*(a1 + 8) < v3)
    {
      v11 = __si_assert_copy_extra_661(-1);
      v9 = v11;
      v12 = "";
      if (v11)
      {
        v12 = v11;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3378, "indexSet->indexCount >= j", v12);
      goto LABEL_18;
    }
  }

  return v3;
}

void si_forceSplitIndex(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 1384);
  v4 = *(v3 + 8);
  if (v4 < 0x1F)
  {
    if (v4 >= 0xB)
    {
      v5 = *v3;
      v6 = *(v3 + 8);
      while (*(a1 + 8) != *v5)
      {
        ++v5;
        if (!--v6)
        {
          goto LABEL_32;
        }
      }

      v7 = 0;
      v8 = 8 * v4 - 8;
      while (1)
      {
        v9 = atomic_load((*(*v3 + v8) + 36));
        if ((v9 & 4) != 0)
        {
          break;
        }

        ++v7;
        v8 -= 8;
        if (v4 == v7)
        {
          v7 = *(v3 + 8);
          break;
        }
      }

      v10 = *(v3 + 8);
      if (v10 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = *v3 + 8 * v10 - 8;
        while (*(*v12 + 52) <= 2)
        {
          ++v11;
          v12 -= 8;
          if (v10 == v11)
          {
            v11 = v10;
            break;
          }
        }
      }

      if ((v7 > 0xA || v11 >= 0xB) && (*(*a1 + 2440) & 1) == 0)
      {
        *(a1 + 83) = 1;
      }

      if ((v7 > 9 || v11 >= 0xB) && (v13 = *a1, (*(*a1 + 2440) & 1) == 0) && gSISystemOnBattery != 1 || (v7 > 0x13 || v11 >= 0x15) && (v13 = *a1, (*(*a1 + 2440) & 1) == 0))
      {
        *(a1 + 40) = copyHoldQueue(v13);
      }
    }

LABEL_32:
    *(*(a1 + 8) + 15200) |= 4u;
    if (!*(a1 + 72) && !*(a1 + 48))
    {
      v16 = v2[295];
      if (v16)
      {
        v17 = *(v16 + 64);
        if (v17)
        {
          *(a1 + 48) = v17(*(v16 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c", 3213, "void si_forceSplitIndex(struct flush_index_ctx *)");
        }
      }
    }

    if (*(a1 + 88))
    {
      v18 = __si_assert_copy_extra_661(-1);
      v19 = v18;
      v20 = "";
      if (v18)
      {
        v20 = v18;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3215, "ctx->suspend_token == 0", v20);
      free(v19);
      if (__valid_fs(-1))
      {
        v21 = 2989;
      }

      else
      {
        v21 = 3072;
      }

      *v21 = -559038737;
      abort();
    }

    v14 = v2[109];
    v15 = v2[130];

    si_scheduler_async_suspend_and_enqueue(v14, v15, _swapIndex, a1, (a1 + 88));
  }

  else
  {

    si_flush_index_ctx_free(a1, 0);
  }
}

void _flushCache(uint64_t *a1, int a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    dispatch_resume(v4);
    dispatch_release(a1[5]);
    a1[5] = 0;
  }

  v61 = MEMORY[0x1E69E9820];
  v62 = 0x40000000;
  v63 = ___flushCache_block_invoke;
  v64 = &__block_descriptor_tmp_94;
  v65 = a1;
  if (a2)
  {
    if (dword_1EBF46ADC >= 5)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Skipped flushing", &buf, 2u);
      }

      *__error() = v5;
    }

    goto LABEL_61;
  }

  v7 = os_transaction_create();
  v8 = *a1;
  v9 = atomic_load((*a1 + 1448));
  if ((v9 & 2) == 0)
  {
    if (dword_1EBF46ADC >= 5)
    {
      v10 = *__error();
      v11 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        v12 = "Skipped flush";
LABEL_95:
        _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, v12, &buf, 2u);
        goto LABEL_96;
      }

      goto LABEL_96;
    }

    goto LABEL_60;
  }

  if (dword_1EBF46ADC >= 5)
  {
    v56 = *__error();
    v57 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&dword_1C278D000, v57, OS_LOG_TYPE_DEFAULT, "Starting flush", &buf, 2u);
    }

    *__error() = v56;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v14 = a1[1];
  v15 = atomic_load((v14 + 36));
  if ((v15 & 3) != 0 || (*(v14 + 15203) & 1) != 0 || *(a1[1] + 56) != *(a1 + 5))
  {
    v63(&v61);
    v21 = 0;
    goto LABEL_24;
  }

  buf.f_bsize = 0;
  if ((fd_setDir(*(*a1 + 32), &buf) & 1) == 0)
  {
    v19 = 0xFFFFFFFFLL;
LABEL_64:
    if ((atomic_load_explicit((v8 + 2439), memory_order_acquire) & 1) == 0)
    {
      if (SIIsAppleInternal_onceToken != -1)
      {
        dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
      }

      if (SIIsAppleInternal_internal)
      {
        if (!atomic_fetch_add_explicit(&_flushCache__crashCount, 1u, memory_order_relaxed))
        {
          v49 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"_flushCache, error:%d", v19, v61, v62);
          getpid();
          SISimulateCrashForPid(0, v49);
          if (v49)
          {
            CFRelease(v49);
          }
        }
      }
    }

    v50 = 2;
    goto LABEL_72;
  }

  v16 = *a1;
  v17 = *(*a1 + 2360);
  if (v17)
  {
    v18 = v17[6];
    if (v18)
    {
      v18(v17[18]);
      v16 = *a1;
    }

    v19 = _CIFlushCache(a1[1], 0, lowDiskSpaceCallback, v16, &v61);
    v20 = v17[7];
    if (v20)
    {
      v20(v17[18]);
    }
  }

  else
  {
    v19 = _CIFlushCache(a1[1], 0, lowDiskSpaceCallback, v16, &v61);
  }

  f_bsize = buf.f_bsize;
  MEMORY[0x1C6921200](buf.f_bsize);
  if ((f_bsize & 0x80000000) == 0)
  {
    close(f_bsize);
  }

  if (v19 < 2)
  {
    v21 = *(a1[1] + 15200);
LABEL_24:
    if (dword_1EBF46ADC >= 5)
    {
      v59 = *__error();
      v60 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "Completed index flush", &buf, 2u);
      }

      *__error() = v59;
      if ((v21 & 4) == 0)
      {
LABEL_26:
        v22 = CFAbsoluteTimeGetCurrent() - Current;
        if (*(v8 + 6587))
        {
          v23 = v22 > 4.0;
        }

        else
        {
          v23 = v22 > 10.0;
        }

        if (v23)
        {
          v24 = *__error();
          v25 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 134217984;
            *&buf.f_iosize = v22;
            _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "Merge slow at %f", &buf, 0xCu);
          }

          *__error() = v24;
        }

        if ((v21 & 2) != 0)
        {
          goto LABEL_55;
        }

        v26 = ContentIndexCalculateSize(a1[1], 0);
        v27 = v26;
        if (v26 >= 0x4000001)
        {
          v28 = *__error();
          v29 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 134217984;
            *&buf.f_iosize = v27;
            _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, "force split; index size %lld", &buf, 0xCu);
          }

          *__error() = v28;
          goto LABEL_54;
        }

        if (v26 <= 0x80000)
        {
          goto LABEL_47;
        }

        v30 = a1[1];
        v31 = atomic_load((v30 + 16));
        v32 = 5 * v31;
        v33 = *(v30 + 68);
        if (v33 < 2)
        {
          v33 = 0;
        }

        if (v32 <= 4 * v33)
        {
LABEL_47:
          v44 = *a1;
          if (v26 <= 0x80000uLL >> *(*a1 + 2464))
          {
            goto LABEL_55;
          }

          bzero(&buf, 0x878uLL);
          if (fstatfs(*(v44 + 32), &buf) || buf.f_bfree * buf.f_bsize >= v27)
          {
            goto LABEL_55;
          }

          v34 = *__error();
          v45 = _SILogForLogForCategory(4);
          v46 = 2 * (dword_1EBF46ADC < 4);
          if (!os_log_type_enabled(v45, v46))
          {
            goto LABEL_53;
          }

          *v66 = 134218240;
          v67 = buf.f_bfree * buf.f_bsize;
          v68 = 2048;
          v69 = v27;
          v39 = "force split; disk free %lld less than index size %lld";
          p_buf = v66;
          v41 = v45;
          v42 = v46;
          v43 = 22;
        }

        else
        {
          v34 = *__error();
          v35 = _SILogForLogForCategory(4);
          v36 = 2 * (dword_1EBF46ADC < 4);
          if (!os_log_type_enabled(v35, v36))
          {
LABEL_53:
            *__error() = v34;
LABEL_54:
            v21 = 2;
LABEL_55:
            v47 = atomic_load((*a1 + 6888));
            if (v47 || (v21 & 2) == 0 || (*(v8 + 6944) & 1) != 0 || *(v8 + 6960) > 0)
            {
              if (dword_1EBF46ADC >= 5)
              {
                v10 = *__error();
                v11 = _SILogForLogForCategory(4);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.f_bsize) = 0;
                  v12 = "Finished flush";
                  goto LABEL_95;
                }

LABEL_96:
                *__error() = v10;
              }

LABEL_60:
              os_release(v7);
LABEL_61:
              si_flush_index_ctx_free(a1, a2 != 0);
              goto LABEL_62;
            }

            v53 = *__error();
            v54 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              buf.f_bsize = 134218240;
              *&buf.f_iosize = v22;
              WORD2(buf.f_blocks) = 1024;
              *(&buf.f_blocks + 6) = v21;
              _os_log_impl(&dword_1C278D000, v54, OS_LOG_TYPE_DEFAULT, "Flush took %f seconds, split state %d\n", &buf, 0x12u);
            }

            *__error() = v53;
            si_forceSplitIndex(a1);
LABEL_92:
            os_release(v7);
            goto LABEL_62;
          }

          v38 = a1[1];
          v37 = atomic_load((v38 + 16));
          LODWORD(v38) = *(v38 + 68);
          if (v38 >= 2)
          {
            v38 = v38;
          }

          else
          {
            v38 = 0;
          }

          buf.f_bsize = 134218496;
          *&buf.f_iosize = v27;
          WORD2(buf.f_blocks) = 1024;
          *(&buf.f_blocks + 6) = v37;
          WORD1(buf.f_bfree) = 2048;
          *(&buf.f_bfree + 4) = v38;
          v39 = "force split used:%lld, count:%d, deletes: %ld";
          p_buf = &buf;
          v41 = v35;
          v42 = v36;
          v43 = 28;
        }

        _os_log_impl(&dword_1C278D000, v41, v42, v39, p_buf, v43);
        goto LABEL_53;
      }
    }

    else if ((v21 & 4) == 0)
    {
      goto LABEL_26;
    }

    si_flush_index_ctx_free(a1, 0);
    goto LABEL_92;
  }

  if (v19 != 28)
  {
    goto LABEL_64;
  }

  v19 = 28;
  v50 = 1;
LABEL_72:
  si_makeUnavailable(v8, v19, v50, 21, "flush cache err");
  si_flush_index_ctx_free(a1, 0);
  os_release(v7);
  v51 = *__error();
  v52 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.f_bsize) = 0;
    _os_log_impl(&dword_1C278D000, v52, OS_LOG_TYPE_DEFAULT, "Failed index flush", &buf, 2u);
  }

  *__error() = v51;
LABEL_62:
  v48 = *MEMORY[0x1E69E9840];
}

void ___flushCache_block_invoke(uint64_t a1)
{
  atomic_fetch_and((**(a1 + 32) + 1448), ~*(*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    si_scheduler_resume_with_token(v2);
    *(*(a1 + 32) + 88) = 0;
  }
}

uint64_t count_IndexSetForWriting(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2 <= a2)
  {
    v9 = __si_assert_copy_extra_661(-1);
    v7 = v9;
    v10 = "";
    if (v9)
    {
      v10 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3360, "startIndex < indexSet->indexCount", v10);
LABEL_16:
    free(v7);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  result = 0;
  v5 = *a1 + 8 * a2;
  while (!*(*v5 + 52))
  {
    result = (result + 1);
    v5 -= 8;
    if (a2 + 1 == result)
    {
      result = a2 + 1;
      break;
    }
  }

  if (v2 < result)
  {
    v6 = __si_assert_copy_extra_661(-1);
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIStoring.c", 3365, "indexSet->indexCount >= j", v8);
    goto LABEL_16;
  }

  return result;
}

void transferAttributes(uint64_t *a1, int a2)
{
  v83[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *a1;
    v6 = a1[1];
    v7 = *(*a1 + 1192);
    v80 = 0;
    v81 = 0;
    v8 = a1[2];
    v9 = *__error();
    v10 = _SILogForLogForCategory(4);
    v11 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 134218240;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      _os_log_impl(&dword_1C278D000, v10, v11, "Transfer from %lld to %lld", buf, 0x16u);
    }

    *__error() = v9;
    v12 = *(v5 + 1416);
    v13 = *(v12 + 104);
    if (v13 && !*(v12 + 240))
    {
      v13();
    }

    if (db_get_obj_callback(v7, v6, &v81, 0, si_docIdRewriteCallback, *(v5 + 2368), 0))
    {
      if (dword_1EBF46ADC >= 5)
      {
        v53 = *__error();
        v54 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v6;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          _os_log_impl(&dword_1C278D000, v54, OS_LOG_TYPE_DEFAULT, "No origin dbo exists for %lld to %lld", buf, 0x16u);
        }

        *__error() = v53;
      }

      v79 = 0;
      if (db_get_obj_callback(v7, v8, &v79, 0, si_docIdRewriteCallback, *(v5 + 2368), 0) == 2)
      {
        if (dword_1EBF46ADC >= 5)
        {
          v14 = *__error();
          v15 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v6;
            *&buf[12] = 2048;
            *&buf[14] = v8;
            _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "No target dbo exists for %lld to %lld", buf, 0x16u);
          }

          *__error() = v14;
        }
      }

      else
      {
        if (dword_1EBF46ADC >= 5)
        {
          v57 = *__error();
          v58 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v6;
            *&buf[12] = 2048;
            *&buf[14] = v8;
            _os_log_impl(&dword_1C278D000, v58, OS_LOG_TYPE_DEFAULT, "Target dbo exists for %lld to %lld", buf, 0x16u);
          }

          *__error() = v57;
        }

        si_perform_livequeries_reassignments(v5);
      }

      if (v79)
      {
        free(v79);
      }

      goto LABEL_86;
    }

    db_validate_obj(v7);
    if (dword_1EBF46ADC >= 5)
    {
      v55 = *__error();
      v56 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v6;
        *&buf[12] = 2048;
        *&buf[14] = v8;
        _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "Origin exists for %lld to %lld", buf, 0x16u);
      }

      *__error() = v55;
    }

    v75 = v6;
    obj_callback = db_get_obj_callback(v7, v8, &v80, 0, si_docIdRewriteCallback, *(v5 + 2368), 0);
    v17 = MEMORY[0x1E695E480];
    if (obj_callback == 2)
    {
      if (dword_1EBF46ADC >= 5)
      {
        v59 = *__error();
        v60 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v75;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "Target does not exists for %lld to %lld", buf, 0x16u);
        }

        *__error() = v59;
      }

      db_delete_obj(v7, v81);
      reassignIndexDocument(v5, *(v81 + 4), *v81, v8);
      v18 = v81;
      *v81 = v8;
      if (db_store_obj(v7, v18, 0))
      {
        v19 = *v81;
        deleteIndexDocument(v5, *(v81 + 4));
      }

      v20 = decodeDBOToDictionary(v7, v81, 2048, 4, 0, 0, 0, 0, 0, *v17);
      if (dword_1EBF46ADC >= 5)
      {
        v61 = *__error();
        v62 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v75;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, "Reassigning %lld to %lld", buf, 0x16u);
        }

        *__error() = v61;
      }

      si_perform_livequeries_reassignments(v5);
      if (CFDictionaryGetCount(v20))
      {
        v21 = a1[4];
        if (v21)
        {
          (a1[3])(v21, v20, v20, 0);
          a1[3] = 0;
        }
      }

      v22 = v20;
LABEL_85:
      CFRelease(v22);
LABEL_86:
      free(v81);
      bumpWorkTime(v5, Current);
      goto LABEL_87;
    }

    if (dword_1EBF46ADC >= 5)
    {
      v63 = *__error();
      v64 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v75;
        *&buf[12] = 2048;
        *&buf[14] = v8;
        _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "Target exists for %lld to %lld", buf, 0x16u);
      }

      *__error() = v63;
    }

    v23 = *v81;
    v24 = *(v81 + 4);
    v73 = candidateForReimport(v5, &v80);
    if (v73)
    {
      if (dword_1EBF46ADC >= 5)
      {
        v65 = *__error();
        v66 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v75;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, "Target needs reimport for %lld to %lld", buf, 0x16u);
        }

        *__error() = v65;
      }

      v24 = *(v80 + 4);
      v25 = *v80;
      reassignIndexDocument(v5, *(v81 + 4), *v81, v8);
      v26 = v81;
      *v81 = v8;
      v27 = v80;
      v80 = v26;
      v81 = v27;
      *v27 = v75;
      db_delete_obj(v7, v26);
    }

    else if (dword_1EBF46ADC >= 5)
    {
      v68 = *__error();
      v69 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v75;
        *&buf[12] = 2048;
        *&buf[14] = v8;
        _os_log_impl(&dword_1C278D000, v69, OS_LOG_TYPE_DEFAULT, "Target good for %lld to %lld", buf, 0x16u);
      }

      *__error() = v68;
    }

    v78 = 0;
    v79 = 0;
    field = db_get_field(*(v5 + 1192), v81, "kMDItemLastUsedDate", &v78, &v79);
    v74 = 0;
    allocator = *v17;
    if (!field)
    {
      v74 = _decodeSDBField(*(v5 + 1192), v78, v79, 0, 0, 0, 0, *v17);
    }

    v30 = decodeDBOToDictionary(v7, v81, 2048, 4, 0, 0, 0, 0, 0, allocator);
    Count = CFDictionaryGetCount(v30);
    if ((a1[5] & 1) == 0)
    {
      deleteIndexDocument(v5, v24);
      if (!db_delete_obj(v7, v81))
      {
        *buf = 0;
        v77 = 0;
        v83[0] = *(v5 + 2008);
        if (!db_get_field_by_id(*(v5 + 1192), v81, v83, buf, &v77) && ((*(v5 + 2072) & 1) != 0 || *v77 <= 0x15u))
        {
          v76 = 0;
          LODWORD(v83[0]) = *(v5 + 2012);
          if (!db_get_field_by_id(*(v5 + 1192), v81, v83, buf, &v76))
          {
            pthread_mutex_lock((v5 + 6976));
            *(v5 + 8 * *v77 + 7040) -= *v76;
            pthread_mutex_unlock((v5 + 6976));
          }
        }
      }
    }

    v72 = allocator;
    if (Count || v74)
    {
      v32 = decodeDBOToDictionary(v7, v80, 2048, 4, 0, 0, 0, 0, 0, allocator);
      v33 = v73;
      if ((a1[5] & 1) == 0)
      {
        v35 = v80;
        v80 = db_copy_obj(v80, 1024);
        free(v35);
      }

      *buf = v80;
      *&buf[8] = v32;
      *&buf[16] = v7;
      v34 = v73;
      if (!CFEqual(v32, v30))
      {
        CFDictionaryApplyFunction(v30, attr_tfr_callback, buf);
        v36 = a1[3];
        if (v36)
        {
          v36(a1[4], v32, v30, 0);
          a1[3] = 0;
        }

        v34 = 1;
      }

      v80 = *buf;
    }

    else
    {
      v32 = 0;
      v33 = v73;
      v34 = v73;
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    v37 = v74;
    if (v74)
    {
      if (db_get_field(*(v5 + 1192), v80, "kMDItemLastUsedDate", &v78, &v79))
      {
        v71 = 0;
        v38 = v72;
      }

      else
      {
        v38 = v72;
        v71 = _decodeSDBField(*(v5 + 1192), v78, v79, 0, 0, 0, 0, v72);
      }

      if (!db_get_field(*(v5 + 1192), v81, "kMDItemUsedDates", &v78, &v79))
      {
        v39 = _decodeSDBField(*(v5 + 1192), v78, v79, 0, 0, 0, 0, v38);
        if (v39)
        {
          v40 = v39;
          for (i = 0; CFArrayGetCount(v40) > i; ++i)
          {
            v42 = *(v5 + 1192);
            ValueAtIndex = CFArrayGetValueAtIndex(v40, i);
            markItemAsUsedForField(v42, &v80, "kMDItemLastUsedDate", "kMDItemUsedDates", ValueAtIndex, 1, 1, 0, 0.0);
          }

          CFRelease(v40);
          v37 = v74;
          v33 = v73;
        }
      }

      markItemAsUsedForField(*(v5 + 1192), &v80, "kMDItemLastUsedDate", "kMDItemUsedDates", v37, 1, 1, 0, 0.0);
      if (v71)
      {
        markItemAsUsedForField(*(v5 + 1192), &v80, "kMDItemLastUsedDate", "kMDItemUsedDates", v71, 1, 1, 0, 0.0);
        CFRelease(v71);
      }

      si_perform_livequeries_reassignments(v5);
    }

    else
    {
      si_perform_livequeries_reassignments(v5);
      if ((v34 & 1) == 0)
      {
LABEL_81:
        if (v80)
        {
          free(v80);
        }

        if (!v37)
        {
          goto LABEL_86;
        }

        v22 = v37;
        goto LABEL_85;
      }
    }

    v44 = v80;
    if ((v33 & 1) == 0)
    {
      if ((*(v80 + 4) + 1) >= 2)
      {
        v45 = *v80;
        deleteIndexDocument(v5, *(v80 + 4));
        v44 = v80;
      }

      v44[4] = -1;
    }

    v46 = db_store_obj(v7, v44, 8);
    if (v46)
    {
      v47 = v46;
      v48 = *__error();
      v49 = _SILogForLogForCategory(7);
      v50 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v49, v50))
      {
        *buf = 67109120;
        *&buf[4] = v47;
        _os_log_impl(&dword_1C278D000, v49, v50, "Store failed during attribute transfer on safe-save (%d)", buf, 8u);
      }

      *__error() = v48;
    }

    goto LABEL_81;
  }

LABEL_87:
  v51 = a1[3];
  if (v51)
  {
    v51(a1[4], 0, 0, a2 != 0);
  }

  free(a1);
  v52 = *MEMORY[0x1E69E9840];
}

uint64_t reassignIndexDocument(uint64_t a1, unint64_t a2, const char *a3, const char *a4)
{
  result = si_indexForDocId(a1, a2);
  if (result)
  {
    v9 = result;
    db_fast_dirty_datastore_if_necessary(*(a1 + 1192));
    v11 = 0;
    result = fd_setDir(*(a1 + 32), &v11);
    if (result)
    {
      _CIReassign(v9, a2, a3, a4);
      v10 = v11;
      result = MEMORY[0x1C6921200](v11);
      if ((v10 & 0x80000000) == 0)
      {
        return close(v10);
      }
    }
  }

  return result;
}

uint64_t deleteIndexDocument(uint64_t a1, unint64_t a2)
{
  result = si_indexForDocId(a1, a2);
  if (result)
  {
    v4 = result;
    db_fast_dirty_datastore_if_necessary(*(a1 + 1192));
    v6 = 0;
    result = fd_setDir(*(a1 + 32), &v6);
    if (result)
    {
      _CIDelete(v4);
      v5 = v6;
      result = MEMORY[0x1C6921200](v6);
      if ((v5 & 0x80000000) == 0)
      {
        return close(v5);
      }
    }
  }

  return result;
}

void attr_tfr_callback(const __CFString *key, const __CFArray *a2, uint64_t a3)
{
  if (!CFDictionaryContainsKey(*(a3 + 8), key))
  {
    setOneFieldLocked(key, 0, a2, *(a3 + 16), a3, 0x800u, 0, 0);
    v6 = *(a3 + 8);

    CFDictionarySetValue(v6, key, a2);
  }
}

uint64_t si_text_store_delete_by_predicate(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(8);
  v4 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v3, v4, "Deleting by predicate", buf, 2u);
  }

  *__error() = v2;
  v5 = *(a1 + 1296);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *buf = 0u;
  v18 = 0u;
  snprintf(buf, 0x200uLL, "doc_store_delete_documents_by_predicate(%p)", v5);
  v14[0] = 0;
  v14[1] = 0;
  ScopeLogger::ScopeLogger(v14, buf);
  if (v5)
  {
    std::mutex::lock((v5 + 40));
    v15 = 0u;
    v16 = 0u;
    v6 = *(v5 + 168);
    *v49 = *(v5 + 160);
    *&v49[8] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      analytics::ScopedLogger<analytics::DeleteEvent>::ScopedLogger();
    }

    analytics::ScopedLogger<analytics::DeleteEvent>::ScopedLogger();
  }

  ScopeLogger::~ScopeLogger(v14);
  v7 = *__error();
  v8 = _SILogForLogForCategory(8);
  v9 = dword_1EBF46AEC < 3;
  if (os_log_type_enabled(v8, (dword_1EBF46AEC < 3)))
  {
    v11 = strerror(14);
    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&dword_1C278D000, v8, v9, "*warn* doc_store_delete_documents_by_predicate(): %s", buf, 0xCu);
  }

  *__error() = v7;
  v12 = *MEMORY[0x1E69E9840];
  return 4294967282;
}

int *si_text_store_bulk_delete(uint64_t a1, const uint64_t *a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v7 = _SILogForLogForCategory(8);
  v8 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&dword_1C278D000, v7, v8, "Deleted %zd documents", buf, 0xCu);
  }

  *__error() = v6;
  v9 = *(a1 + 1296);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(buf, 0, sizeof(buf));
  snprintf(buf, 0x200uLL, "doc_store_delete_documents_bulk(%p, %d, ...)", v9, a3);
  v16[0] = 0;
  v16[1] = 0;
  ScopeLogger::ScopeLogger(v16, buf);
  if (v9)
  {
    DocStore::DeleteDocumentsBulk(v9, a3, a2);
  }

  ScopeLogger::~ScopeLogger(v16);
  v10 = *__error();
  v11 = _SILogForLogForCategory(8);
  v12 = dword_1EBF46AEC < 3;
  if (os_log_type_enabled(v11, (dword_1EBF46AEC < 3)))
  {
    v13 = strerror(14);
    *buf = 134218242;
    *&buf[4] = a3;
    *&buf[12] = 2080;
    *&buf[14] = v13;
    _os_log_impl(&dword_1C278D000, v11, v12, "*warn* doc_store_delete_documents_bulk(%zd): %s", buf, 0x16u);
  }

  result = __error();
  *result = v10;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void si_setCacheEntry(void *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a2 && dword_1EBF46B00 >= 5)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "si_setCacheEntry at qos 0x%x", v7, 8u);
    }

    *__error() = v5;
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
  v4 = *MEMORY[0x1E69E9840];
}

void si_deleteCacheEntry(void *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a2 && dword_1EBF46B00 >= 5)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "si_deleteCacheEntry at qos 0x%x", v7, 8u);
    }

    *__error() = v5;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
  v4 = *MEMORY[0x1E69E9840];
}

void si_closeCache(void *a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a2 && dword_1EBF46B00 >= 5)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "si_closeCache at qos 0x%x", v6, 8u);
    }

    *__error() = v4;
  }

  free(a1);
  v3 = *MEMORY[0x1E69E9840];
}

int *hot_shard_update_logical_size(uint64_t a1)
{
  v2 = lseek(a1, 0, 2);
  if (v2 < 0)
  {

    return __error();
  }

  else
  {
    v4[0] = &v5;
    v4[1] = 8;
    v5 = v2;
    return pwritevall(a1, v4, 1, 0);
  }
}

uint64_t hot_shard_for_each_region(int a1)
{
  if ((lseek(a1, 8, 0) & 0x8000000000000000) == 0)
  {
    operator new[]();
  }

  return -*__error();
}

uint64_t hot_shard_trim(uint64_t a1, off_t *a2, void *a3)
{
  v12 = v14;
  v13 = 8;
  v14[0] = 0;
  result = preadvall(a1, &v12, 0);
  if ((result & 0x80000000) == 0)
  {
    memset(&v11, 0, sizeof(v11));
    if (fstat(a1, &v11))
    {
      return -*__error();
    }

    v7 = v14[0];
    if (v14[0] >= v11.st_size)
    {
      st_size = v11.st_size;
    }

    else
    {
      st_size = v14[0];
    }

    v10 = st_size;
    if (v14[0] < v11.st_size)
    {
      if (ftruncate(a1, st_size))
      {
        return -*__error();
      }

      v7 = v14[0];
    }

    if (v7 > st_size)
    {
      v12 = &v10;
      v13 = 8;
      if (pwritevall(a1, &v12, 1, 0))
      {
        return -*__error();
      }

      st_size = v10;
    }

    *a2 = st_size;
    *a3 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __hot_shard_trim_block_invoke;
    v9[3] = &__block_descriptor_tmp_2_9282;
    v9[4] = a3;
    v14[1] = MEMORY[0x1E69E9820];
    v14[2] = 0x40000000;
    v14[3] = __hot_shard_iterate_block_invoke;
    v14[4] = &unk_1E8196030;
    v14[5] = v9;
    return hot_shard_for_each_region(a1);
  }

  return result;
}

uint64_t __hot_shard_delete_docs_block_invoke(uint64_t a1, unint64_t a2, int a3, int a4, int a5, off_t a6, unint64_t a7)
{
  v7 = *(a1 + 40);
  if (!*&v7)
  {
    return 0;
  }

  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = a2;
    if (*&v7 <= a2)
    {
      v10 = a2 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & a2;
  }

  v12 = *(*(a1 + 32) + 8 * v10);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (!v13)
  {
    return 0;
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == a2)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v10)
    {
      return 0;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      return 0;
    }
  }

  if (v13[2] != a2)
  {
    goto LABEL_17;
  }

  result = wipe_region(*(a1 + 80), a6, a7);
  if (!result)
  {
    ++**(a1 + 72);
  }

  return result;
}

uint64_t std::unordered_set<long long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(a1, i[2]);
  }

  return a1;
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t wipe_region(uint64_t __fd, off_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  while (a3)
  {
    v6 = 0;
    v7 = 0;
    v8 = v14 + 1;
    memset(v14, 0, sizeof(v14));
    do
    {
      if (a3 >= 0x100)
      {
        v9 = 256;
      }

      else
      {
        v9 = a3;
      }

      *(v8 - 1) = v15;
      *v8 = v9;
      v7 += v9;
      v10 = v6 + 1;
      a3 -= v9;
      if (!a3)
      {
        break;
      }

      v8 += 2;
    }

    while (v6++ < 0xF);
    result = pwritevall(__fd, v14, v10, a2);
    a2 += v7;
    if (result)
    {
      goto LABEL_13;
    }
  }

  result = 0;
LABEL_13:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __hot_shard_delete_docs_by_predicate_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, off_t a6, unint64_t a7)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    result = wipe_region(*(a1 + 48), a6, a7);
    if (!result)
    {
      ++**(a1 + 40);
    }
  }

  return result;
}

CFTypeID __fastFieldFromCFType_block_invoke()
{
  fastFieldFromCFType_sStringTypeID = CFStringGetTypeID();
  fastFieldFromCFType_sNumberTypeID = CFNumberGetTypeID();
  fastFieldFromCFType_sDateTypeID = CFDateGetTypeID();
  fastFieldFromCFType_sBoolTypeID = CFBooleanGetTypeID();
  fastFieldFromCFType_sDataTypeID = CFDataGetTypeID();
  fastFieldFromCFType_sNullTypeID = CFNullGetTypeID();
  result = CFDictionaryGetTypeID();
  fastFieldFromCFType_sDictionaryTypeID = result;
  return result;
}

void si_getCacheFileDescriptors(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2 && *(a1 + 16))
  {
    goto LABEL_19;
  }

  if (dword_1EBF46B00 >= 5)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 67109120;
      LODWORD(v32) = qos_class_self();
      _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "si_getCacheFileDescriptors at qos 0x%x", &v31, 8u);
    }

    *__error() = v29;
  }

  v3 = CFGetTypeID(*(a1 + 16));
  if (v3 == CFArrayGetTypeID() && *(a1 + 8) && (Count = CFArrayGetCount(*(a1 + 16))) != 0)
  {
    v5 = Count;
    v6 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
    v7 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
    v8 = 0;
    *v6 = 0;
    do
    {
      v9 = *(a1 + 8);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v8);
      v6[v8++] = si_compute_oid_for_identifier(v9, ValueAtIndex);
    }

    while (v5 != v8);
    v11 = *__error();
    v12 = _SILogForLogForCategory(5);
    v13 = 2 * (dword_1EBF46AE0 < 4);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = CFAbsoluteTimeGetCurrent() - *(a1 + 24);
      v31 = 134217984;
      v32 = v14;
      _os_log_impl(&dword_1C278D000, v12, v13, "Waited %f seconds on scheduler", &v31, 0xCu);
    }

    *__error() = v11;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v5, 0);
    si_textcache_fds_for_oids(*a1, v5, v6, v7);
    v16 = xpc_null_create();
    if (v5 >= 1)
    {
      v17 = v16;
      v18 = v7;
      do
      {
        v20 = *v18++;
        v19 = v20;
        if (v20 < 0 || (v21 = xpc_fd_create(v19), close(v19), !v21))
        {
          v22 = Mutable;
          v23 = v17;
        }

        else
        {
          v22 = Mutable;
          v23 = v21;
        }

        CFArrayAppendValue(v22, v23);
        --v5;
      }

      while (v5);
    }

    (*(*(a1 + 48) + 16))();
    v34.length = CFArrayGetCount(Mutable);
    v34.location = 0;
    CFArrayApplyFunction(Mutable, v34, _fdArrayApplier, 0);
    CFRelease(Mutable);
    free(v6);
    free(v7);
  }

  else
  {
LABEL_19:
    (*(*(a1 + 48) + 16))();
  }

  v24 = *(a1 + 8);
  if (v24)
  {
    CFRelease(v24);
  }

  *(a1 + 8) = 0;
  v25 = *(a1 + 16);
  if (v25)
  {
    CFRelease(v25);
  }

  *(a1 + 16) = 0;
  v26 = *(a1 + 48);
  if (v26)
  {
    CFRelease(v26);
  }

  *(a1 + 48) = 0;
  v27 = *(a1 + 32);
  if (v27)
  {
    CFRelease(v27);
  }

  free(a1);
  v28 = *MEMORY[0x1E69E9840];
}

BOOL isContact(int *a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v9[0] = a3;
  v9[1] = 0;
  result = !db_get_field_by_id(a1, a2, v9, &v8, &v7) && getFieldAsUInt32(*v8, v7) == 2 && (v9[0] = db_get_id_for_field_locked(a1, "_kMDItemFinderExcluded"), !db_get_field_by_id(a1, a2, v9, &v8, &v7)) && getFieldAsUInt32(*v8, v7) != 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t isReminder(int *a1, uint64_t a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v10[0] = a3;
  v10[1] = 0;
  if (db_get_field_by_id(a1, a2, v10, &v9, &v8))
  {
    goto LABEL_4;
  }

  if (getFieldAsUInt32(*v9, v8) != 6)
  {
    goto LABEL_4;
  }

  v10[0] = db_get_id_for_field_locked(a1, "_kMDItemFinderExcluded");
  if (db_get_field_by_id(a1, a2, v10, &v9, &v8))
  {
    goto LABEL_4;
  }

  result = getFieldAsUInt32(*v9, v8);
  if (!result)
  {
    goto LABEL_5;
  }

  v10[0] = db_get_id_for_field_locked(a1, "kMDItemContentType");
  if (db_get_field_by_id(a1, a2, v10, &v9, &v8) || *v9 != 11)
  {
LABEL_4:
    result = 0;
  }

  else
  {
    string_for_id_locked = v8;
    if ((v9[1] & 0x10) != 0)
    {
      string_for_id_locked = db_get_string_for_id_locked(a1, *v8);
    }

    result = strcmp("com.apple.ical.ics.todo", string_for_id_locked) == 0;
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL isCalendar(int *a1, uint64_t a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v10[0] = a3;
  v10[1] = 0;
  if (db_get_field_by_id(a1, a2, v10, &v9, &v8) || getFieldAsUInt32(*v9, v8) != 6 || (v10[0] = db_get_id_for_field_locked(a1, "_kMDItemFinderExcluded"), db_get_field_by_id(a1, a2, v10, &v9, &v8)))
  {
    result = 0;
  }

  else if (getFieldAsUInt32(*v9, v8) && (v10[0] = db_get_id_for_field_locked(a1, "kMDItemContentType"), !db_get_field_by_id(a1, a2, v10, &v9, &v8)) && *v9 == 11)
  {
    string_for_id_locked = v8;
    if ((v9[1] & 0x10) != 0)
    {
      string_for_id_locked = db_get_string_for_id_locked(a1, *v8);
    }

    result = strcmp("com.apple.ical.ics.todo", string_for_id_locked) != 0;
  }

  else
  {
    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getFieldAsUInt32(unsigned __int16 a1, unsigned __int16 *a2)
{
  if (a1 <= 8u)
  {
    if (((1 << a1) & 0x18) != 0)
    {
      return *a2;
    }

    if (((1 << a1) & 0x60) != 0 || ((1 << a1) & 0x180) != 0)
    {
      return *a2;
    }
  }

  if (a1 - 1 >= 2)
  {
    return 0;
  }

  else
  {
    return *a2;
  }
}