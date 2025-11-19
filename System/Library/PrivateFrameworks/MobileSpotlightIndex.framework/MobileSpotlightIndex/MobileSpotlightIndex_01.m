unint64_t si_get_cs_orphan_oid(unint64_t result)
{
  v6 = 0;
  if (result)
  {
    v1 = result;
    if (*(result + 2072) == 1)
    {
      result = atomic_load((result + 2080));
      v6 = result;
      if (!result)
      {
        v5 = 0;
        si_get_object_for_identifier_createParentDBO(v1, @"com.apple.searchd", @"com.apple.spotlight.missingparent", 0, 1, &v6, &v5, 1u);
        v2 = v5;
        if (v5)
        {
          v3 = *(v5 + 10);
          if ((v3 & 1) == 0)
          {
            *(v5 + 10) = v3 | 1;
          }

          if (v2[3] != 2)
          {
            v2[3] = 2;
            db_update_obj(*(v1 + 1192), v2, 0);
            v2 = v5;
          }

          free(v2);
        }

        v4 = 0;
        atomic_compare_exchange_strong((v1 + 2080), &v4, v6);
        if (v4)
        {
          return v4;
        }

        else
        {
          return v6;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void stack_deallocate(void *ptr, void *a2)
{
  if (*a2 > ptr || a2[2] <= ptr)
  {
    v3 = a2[4];
    --a2[3];
    malloc_zone_free(v3, ptr);
  }
}

void *get_string_and_length_for_id(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3 & 0x7FFFFFFF;
  if (v4 > 0x7FFFFFFD)
  {
    result = 0;
    goto LABEL_10;
  }

  if ((*(a1 + 804) & 0x14) != 0)
  {
    v7 = *(a1 + 8 * a2 + 880);
    v25 = 0;
    if (a4)
    {
      result = data_map_get_data_locked(v7, v4, &v25);
      if (result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = data_map_get_data(v7, v4, &v25);
      if (result)
      {
        goto LABEL_10;
      }
    }

    v12 = result;
    v13 = data_map_count(v7);
    result = v12;
    if (v13 < v4)
    {
      v24 = v13;
      v14 = *__error();
      v15 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 4);
        v21 = data_map_valid(v7);
        *buf = 136316930;
        v27 = "_get_string_and_length_for_id";
        v28 = 1024;
        v29 = 574;
        v22 = "y";
        if (!v21)
        {
          v22 = "n";
        }

        v30 = 2048;
        v31 = v4;
        v32 = 2048;
        v33 = v24;
        v34 = 1024;
        v35 = a2;
        v36 = 2080;
        v37 = a1 + 324;
        v38 = 1024;
        v39 = v20;
        v40 = 2080;
        v41 = v22;
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
      }

      *__error() = v14;
      result = v12;
      if ((*(a1 + 4) & 0x20) != 0)
      {
        v16 = *__error();
        v17 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 4);
          *buf = 136315906;
          v27 = "_get_string_and_length_for_id";
          v28 = 1024;
          v29 = 576;
          v30 = 2080;
          v31 = a1 + 324;
          v32 = 1024;
          LODWORD(v33) = v23;
          _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
        }

        *__error() = v16;
        *(a1 + 4) |= 0x40u;
        result = v12;
      }
    }
  }

  else
  {
    v9 = *(a1 + 8 * a2 + 880);
    if (*(v9 + 56) > v4 && (v10 = *(*(v9 + 32) + 8 * v4)) != 0)
    {
      result = (v10 + table_extra_bytes_14628[a2] + 4);
    }

    else
    {
      v18 = *(a1 + 4);
      if ((v18 & 0x20) != 0)
      {
        result = 0;
        *(a1 + 4) = v18 | 0x40;
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

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

const void *data_map_get_data_locked(uint64_t a1, unint64_t a2, size_t *a3)
{
  v119 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_86;
  }

  data_locked = 0;
  v7 = *(a1 + 216);
  if (v7 > 842150449)
  {
    if (v7 == 1684300900)
    {
      if (*(a1 + 224) <= a2)
      {
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
        v107 = 0u;
        v108 = 0u;
        memset(buf, 0, sizeof(buf));
        v9 = *__error();
        v47 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v63 = *(a1 + 224);
          v64 = fd_name(*(a1 + 248), buf, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map64_get_offset_entry";
          *&__s[12] = 1024;
          *&__s[14] = 359;
          *&__s[18] = 2048;
          *&__s[20] = a2;
          *&__s[28] = 2048;
          *&__s[30] = v63;
          *&__s[38] = 2048;
          *&__s[40] = a1;
          *&__s[48] = 2080;
          *&__s[50] = v64;
          v14 = "%s:%d: invalid data id %lld max %lld %p %s";
          v15 = v47;
          v16 = 58;
          goto LABEL_76;
        }

        goto LABEL_49;
      }

      v31 = *(a1 + 4456);
      if (!v31)
      {
        goto LABEL_86;
      }

      v32 = *(v31 + 16 * a2);
      if (v32 == 1)
      {
        goto LABEL_86;
      }

      *v86 = 0;
      *&v86[8] = 0;
      LOBYTE(v83) = 0;
      v33 = *(a1 + 296);
      if (v33 <= v32)
      {
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
        v107 = 0u;
        v108 = 0u;
        memset(buf, 0, sizeof(buf));
        v23 = *__error();
        v34 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v67 = *(a1 + 296);
          v68 = fd_name(*(a1 + 248), buf, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map64_get_data_entry";
          *&__s[12] = 1024;
          *&__s[14] = 376;
          *&__s[18] = 2048;
          *&__s[20] = v32;
          *&__s[28] = 2048;
          *&__s[30] = v67;
          *&__s[38] = 2048;
          *&__s[40] = a1;
          *&__s[48] = 2080;
          *&__s[50] = v68;
          v27 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
          goto LABEL_81;
        }
      }

      else
      {
        data_entry_restore_64(a1 + 280, v32, v33, v86, &v83);
        if (v83 != 1)
        {
          if (a3)
          {
            *a3 = (*v86 - *(a1 + 220));
          }

          if (*(a1 + 4560))
          {
            os_unfair_lock_lock((a1 + 4552));
            v79 = *(a1 + 4560);
            if (v79)
            {
              bit_vector_set_7166(v79, a2);
            }

            os_unfair_lock_unlock((a1 + 4552));
          }

          v57 = *&v86[8];
          v58 = *(a1 + 220);
          goto LABEL_67;
        }

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
        v107 = 0u;
        v108 = 0u;
        memset(buf, 0, sizeof(buf));
        v23 = *__error();
        v34 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = fd_name(*(a1 + 248), buf, 0x100uLL);
          v36 = *(a1 + 296);
          *__s = 136316418;
          *&__s[4] = "_data_map64_get_data_entry";
          *&__s[12] = 1024;
          *&__s[14] = 372;
          *&__s[18] = 2080;
          *&__s[20] = v35;
          *&__s[28] = 2048;
          *&__s[30] = v32;
          *&__s[38] = 2048;
          *&__s[40] = v36;
          *&__s[48] = 2048;
          *&__s[50] = *v86;
          v27 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_81:
          v28 = __s;
          v29 = v34;
          v30 = 58;
LABEL_82:
          _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, v27, v28, v30);
        }
      }
    }

    else
    {
      if (v7 != 842150450)
      {
        goto LABEL_87;
      }

      if (*(a1 + 220) <= a2)
      {
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
        v107 = 0u;
        v108 = 0u;
        memset(buf, 0, sizeof(buf));
        v9 = *__error();
        v37 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = *(a1 + 220);
          v39 = fd_name(*(a1 + 1272), buf, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_offset_entry";
          *&__s[12] = 1024;
          *&__s[14] = 422;
          *&__s[18] = 1024;
          *&__s[20] = a2;
          *&__s[24] = 1024;
          *&__s[26] = v38;
          *&__s[30] = 2048;
          *&__s[32] = a1;
          *&__s[40] = 2080;
          *&__s[42] = v39;
          v14 = "%s:%d: invalid data id %d max %u %p %s";
          v15 = v37;
          v16 = 50;
          goto LABEL_76;
        }

LABEL_49:
        data_locked = 0;
        *__error() = v9;
        goto LABEL_87;
      }

      v17 = *(a1 + 1352);
      if (!v17)
      {
        goto LABEL_86;
      }

      v18 = *(v17 + 4 * a2);
      if (v18 == 1)
      {
        goto LABEL_86;
      }

      v83 = 0;
      v84 = 0;
      v85 = 0;
      v19 = *(a1 + 1328);
      if (v19 > v18)
      {
        data_entry_restore_32(*(a1 + 1320), v18, v19, &v83, &v85);
        if (v85 == 1)
        {
          v105 = 0;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v98 = 0u;
          v20 = 5;
          v21 = v18;
          memset(__s, 0, sizeof(__s));
          do
          {
            if (v21 >= *(a1 + 1328))
            {
              break;
            }

            v22 = strlen(__s);
            sprintf(&__s[v22], "%d ", *(*(a1 + 1320) + v21++));
            --v20;
          }

          while (v20);
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
          v107 = 0u;
          v108 = 0u;
          memset(buf, 0, sizeof(buf));
          v23 = *__error();
          v24 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          v25 = fd_name(*(a1 + 1272), buf, 0x100uLL);
          v26 = *(a1 + 1328);
          *v86 = 136316674;
          *&v86[4] = "_data_map32_get_data_entry";
          *&v86[12] = 1024;
          *&v86[14] = 442;
          v87 = 2080;
          v88 = v25;
          v89 = 2048;
          v90 = v18;
          v91 = 2048;
          v92 = v26;
          v93 = 2048;
          v94 = v83;
          v95 = 2080;
          v96 = __s;
          v27 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
          v28 = v86;
          v29 = v24;
          v30 = 68;
          goto LABEL_82;
        }

        if (a3)
        {
          *a3 = (v83 - *(a1 + 224));
        }

        if (*(a1 + 1448))
        {
          os_unfair_lock_lock((a1 + 1444));
          v78 = *(a1 + 1448);
          if (v78)
          {
            bit_vector_set_13535(v78, a2);
          }

          os_unfair_lock_unlock((a1 + 1444));
        }

        v57 = v84;
        v58 = *(a1 + 224);
LABEL_67:
        data_locked = (v57 + v58);
        goto LABEL_87;
      }

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
      v107 = 0u;
      v108 = 0u;
      memset(buf, 0, sizeof(buf));
      v23 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v48 = *(a1 + 1328);
        v49 = fd_name(*(a1 + 1272), buf, 0x100uLL);
        *__s = 136316418;
        *&__s[4] = "_data_map32_get_data_entry";
        *&__s[12] = 1024;
        *&__s[14] = 446;
        *&__s[18] = 2048;
        *&__s[20] = v18;
        *&__s[28] = 2048;
        *&__s[30] = v48;
        *&__s[38] = 2048;
        *&__s[40] = a1;
        *&__s[48] = 2080;
        *&__s[50] = v49;
        v27 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
        goto LABEL_81;
      }
    }

LABEL_53:
    data_locked = 0;
    *__error() = v23;
    goto LABEL_87;
  }

  if (v7 != -572662307)
  {
    if (v7 != -270471200)
    {
      goto LABEL_87;
    }

    if (*(a1 + 224) <= a2 || (v8 = *(a1 + 296), (v8 + 1) <= 1))
    {
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
      v107 = 0u;
      v108 = 0u;
      memset(buf, 0, sizeof(buf));
      v9 = *__error();
      v10 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 224);
        v12 = *(a1 + 296);
        v13 = fd_name(*(a1 + 248), buf, 0x100uLL);
        *__s = 136316674;
        *&__s[4] = "_data_map_ext_get_offset_entry";
        *&__s[12] = 1024;
        *&__s[14] = 417;
        *&__s[18] = 2048;
        *&__s[20] = a2;
        *&__s[28] = 2048;
        *&__s[30] = v11;
        *&__s[38] = 2048;
        *&__s[40] = a1;
        *&__s[48] = 2048;
        *&__s[50] = v12;
        *&__s[58] = 2080;
        *&__s[60] = v13;
        v14 = "%s:%d: invalid data id %lld max %lld %p map: %p %s";
        v15 = v10;
        v16 = 68;
LABEL_76:
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, v14, __s, v16);
        goto LABEL_49;
      }

      goto LABEL_49;
    }

    v50 = (v8 + 24 * a2);
    v51 = *v50;
    if (*v50 != -2)
    {
      *v86 = 0;
      *&v86[8] = 0;
      if (v51 == -1)
      {
        v59 = *(a1 + 496);
        if (v59)
        {
          Value = CFDictionaryGetValue(v59, a2);
          if (Value)
          {
            v61 = Value;
            v56 = CFDataGetLength(Value) - *(a1 + 220);
            *v86 = v56;
            *&v86[8] = &CFDataGetBytePtr(v61)[*(a1 + 220)];
            CFDataGetBytePtr(v61);
            v62 = *(a1 + 220);
            __memcpy_chk();
            goto LABEL_71;
          }

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
          v107 = 0u;
          v108 = 0u;
          memset(buf, 0, sizeof(buf));
          v69 = *__error();
          v70 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v74 = fd_name(*(a1 + 248), buf, 0x100uLL);
            *__s = 136316162;
            *&__s[4] = "_data_map_ext_get_data_entry";
            *&__s[12] = 1024;
            *&__s[14] = 451;
            *&__s[18] = 2048;
            *&__s[20] = -1;
            *&__s[28] = 2048;
            *&__s[30] = a1;
            *&__s[38] = 2080;
            *&__s[40] = v74;
            _os_log_error_impl(&dword_1C278D000, v70, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", __s, 0x30u);
          }

          *__error() = v69;
          fd_name(*(a1 + 248), buf, 0x100uLL);
          si_analytics_log_3138("(1)invalid data offset 0x%lx %p %s");
        }

        else
        {
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
          v107 = 0u;
          v108 = 0u;
          memset(buf, 0, sizeof(buf));
          v65 = *__error();
          v66 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v73 = fd_name(*(a1 + 248), buf, 0x100uLL);
            *__s = 136316162;
            *&__s[4] = "_data_map_ext_get_data_entry";
            *&__s[12] = 1024;
            *&__s[14] = 457;
            *&__s[18] = 2048;
            *&__s[20] = -1;
            *&__s[28] = 2048;
            *&__s[30] = a1;
            *&__s[38] = 2080;
            *&__s[40] = v73;
            _os_log_error_impl(&dword_1C278D000, v66, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", __s, 0x30u);
          }

          *__error() = v65;
          fd_name(*(a1 + 248), buf, 0x100uLL);
          si_analytics_log_3138("(2)invalid data offset 0x%lx %p %s");
        }
      }

      else
      {
        v53 = *(v50 + 2);
        v52 = *(v50 + 3);
        *__s = 0;
        v54 = *(a1 + 488);
        if (v54)
        {
          v55 = (*(a1 + 432))(v54, v53);
          LODWORD(v83) = 0;
          if (v55)
          {
            *&v86[8] = (*(a1 + 440))(v55, v51, v52, &v83, __s);
            v56 = *__s;
            *v86 = *__s;
            *&v86[4] = v83;
LABEL_71:
            if (a3)
            {
              *a3 = v56;
            }

            if (*(a1 + 464))
            {
              os_unfair_lock_lock((a1 + 456));
              v80 = *(a1 + 464);
              if (v80)
              {
                bit_vector_set_7166(v80, a2);
              }

              os_unfair_lock_unlock((a1 + 456));
            }

            data_locked = *&v86[8];
            goto LABEL_87;
          }

          if (data_entry_restore_ext__COUNT_ >= 1)
          {
            --data_entry_restore_ext__COUNT_;
LABEL_108:
            v81 = *__error();
            v82 = _SILogForLogForCategory(16);
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              *&buf[4] = "data_entry_restore_ext";
              *&buf[12] = 1024;
              *&buf[14] = 396;
              *&buf[18] = 2048;
              *&buf[20] = a2;
              *&buf[28] = 1024;
              *&buf[30] = v53;
              *&buf[34] = 2048;
              *&buf[36] = v51;
              *&buf[44] = 1024;
              *&buf[46] = v52;
              _os_log_error_impl(&dword_1C278D000, v82, OS_LOG_TYPE_ERROR, "%s:%d: data id %lld invalid indexId %u offset 0x%llx meta 0x%x", buf, 0x32u);
            }

            *__error() = v81;
            goto LABEL_86;
          }

          if (++data_entry_restore_ext__COUNT2_ == 100)
          {
            data_entry_restore_ext__COUNT2_ = 0;
            goto LABEL_108;
          }
        }
      }
    }

LABEL_86:
    data_locked = 0;
    goto LABEL_87;
  }

  if (*(a1 + 432))
  {
    pthread_rwlock_wrlock((a1 + 224));
  }

  else
  {
    pthread_rwlock_rdlock((a1 + 224));
  }

  data_locked = data_map_get_data_locked(*(a1 + 440), a2, a3);
  *__s = 0;
  v40 = (*(**(a1 + 448) + 120))(*(a1 + 448), a2, __s);
  pthread_rwlock_unlock((a1 + 224));
  v41 = *a3;
  v42 = *__s;
  if (*a3 != *__s)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/generic/data_map_double.m";
      *&buf[12] = 1024;
      *&buf[14] = 439;
      *&buf[18] = 2080;
      *&buf[20] = "data_map_double_get_data_locked";
      *&buf[28] = 2080;
      *&buf[30] = "*out_data_size == size_new";
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[ASSERT FAIL] %s:%d:%s(): '%s' failed.\n", buf, 0x26u);
      v41 = *a3;
      v42 = *__s;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v41;
      *&buf[12] = 2048;
      *&buf[14] = v42;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  Values: %llu != %llu\n", buf, 0x16u);
      v41 = *a3;
      v42 = *__s;
    }

    v43 = v41 == v42;
    v41 = v42;
    if (!v43)
    {
      v75 = __si_assert_copy_extra_332();
      v45 = v75;
      v76 = "";
      if (v75)
      {
        v76 = v75;
      }

      __message_assert(v75, "data_map_double.m", 439, "*out_data_size == size_new", v76);
      goto LABEL_91;
    }
  }

  if (v41)
  {
    if (memcmp(data_locked, v40, v41) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "assertion failed", buf, 2u);
      v41 = *a3;
    }

    if (memcmp(data_locked, v40, v41))
    {
      v44 = __si_assert_copy_extra_332();
      v45 = v44;
      v46 = "";
      if (v44)
      {
        v46 = v44;
      }

      __message_assert(v44, "data_map_double.m", 441, "memcmp(output, output_new, *out_data_size) == 0", v46);
LABEL_91:
      free(v45);
      if (__valid_fs(-1))
      {
        v77 = 2989;
      }

      else
      {
        v77 = 3072;
      }

      *v77 = -559038737;
      abort();
    }
  }

LABEL_87:
  v71 = *MEMORY[0x1E69E9840];
  return data_locked;
}

uint64_t db2_get_field_tags_for_id_locked(uint64_t a1, int a2, char *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a2 & 0x7FFFFFFF;
  if (v4 <= 0x7FFFFFFD)
  {
    v5 = *(a1 + 880);
    if ((*(a1 + 804) & 0x14) != 0)
    {
      v25 = 0;
      data_locked = data_map_get_data_locked(v5, a2 & 0x7FFFFFFF, &v25);
      if (!data_locked)
      {
        v8 = data_map_count(v5);
        if (v8 < v4)
        {
          v24 = v8;
          v16 = *__error();
          v17 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v20 = *(a1 + 4);
            v21 = data_map_valid(v5);
            *buf = 136316930;
            v27 = "_get_string_and_length_for_id";
            v28 = 1024;
            v29 = 574;
            v22 = "y";
            if (!v21)
            {
              v22 = "n";
            }

            v30 = 2048;
            v31 = v4;
            v32 = 2048;
            v33 = v24;
            v34 = 1024;
            v35 = 0;
            v36 = 2080;
            v37 = a1 + 324;
            v38 = 1024;
            v39 = v20;
            v40 = 2080;
            v41 = v22;
            _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
          }

          *__error() = v16;
          if ((*(a1 + 4) & 0x20) != 0)
          {
            v18 = *__error();
            v19 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v23 = *(a1 + 4);
              *buf = 136315906;
              v27 = "_get_string_and_length_for_id";
              v28 = 1024;
              v29 = 576;
              v30 = 2080;
              v31 = a1 + 324;
              v32 = 1024;
              LODWORD(v33) = v23;
              _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
            }

            *__error() = v18;
            *(a1 + 4) |= 0x40u;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      if (*(v5 + 56) <= v4 || (v12 = *(*(v5 + 32) + 8 * v4)) == 0)
      {
        v15 = *(a1 + 4);
        if ((v15 & 0x20) != 0)
        {
          v9 = 0;
          v10 = 0;
          *(a1 + 4) = v15 | 0x40;
          v11 = 1;
          goto LABEL_10;
        }

        if (SIIsAppleInternal_onceToken == -1)
        {
          v9 = 0;
          v10 = 0;
          v11 = 1;
          goto LABEL_10;
        }

        dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
        goto LABEL_5;
      }

      data_locked = (v12 + 6);
    }

    v11 = 0;
    v10 = *(data_locked - 2);
    v9 = *(data_locked - 1);
    goto LABEL_10;
  }

LABEL_5:
  v9 = 0;
  v10 = 0;
  v11 = 1;
LABEL_10:
  *a3 = v11;
  v13 = *MEMORY[0x1E69E9840];
  return v10 | (v9 << 8);
}

uint64_t db_get_obj_callback(int *a1, unint64_t a2, void **a3, int a4, void (*a5)(void *, uint64_t), uint64_t a6, _DWORD *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *a1;
      *buf = 136315650;
      v17 = "db_get_obj_callback";
      v18 = 1024;
      v19 = 316;
      v20 = 1024;
      v21 = v12;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v10;
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 316, v15);
    free(v14);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v7 = *MEMORY[0x1E69E9840];

  return db2_get_obj_callback(a1, a2, a3, a4, a5, a6, a7);
}

BOOL db_rwlock_reader_excluded(uint64_t a1, int a2, char a3)
{
  if (*(a1 + 184) && ((a3 & 1) != 0 || *(a1 + 212) != 1) || *(a1 + 160) && *(a1 + 192) >= a2 && (a3 & 1) == 0 && !*(a1 + 200))
  {
    return 1;
  }

  if (!*(a1 + 196) && *(a1 + 212) != 1)
  {
    return 0;
  }

  v3 = a2 <= 5 ? 5 : a2;
  v4 = (a1 + 16 * a2 + 80);
  v5 = v3 - a2 + 1;
  while (--v5)
  {
    v6 = *v4;
    v4 += 2;
    if (v6)
    {
      return 1;
    }
  }

  return *(a1 + 64 + 16 * a2) && !*(a1 + 200);
}

void fd_assert_not_unlinked(uint64_t a1)
{
  os_unfair_lock_lock(&map_guard_lock);
  if (a1)
  {
    v2 = *(a1 + 60);
    os_unfair_lock_unlock(&map_guard_lock);
    if ((v2 & 0x200) != 0)
    {
      v3 = __si_assert_copy_extra_661(*(a1 + 44));
      v4 = v3;
      v5 = "";
      if (v3)
      {
        v5 = v3;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Unexpected delete of %s from %d", "fd_obj.c", 1823, "!unlinked", v5, *(a1 + 72), *(a1 + 64));
      free(v4);
      if (__valid_fs(*(a1 + 44)))
      {
        v6 = 2989;
      }

      else
      {
        v6 = 3072;
      }

      *v6 = -559038737;
      abort();
    }
  }

  else
  {

    os_unfair_lock_unlock(&map_guard_lock);
  }
}

uint64_t fd_guarded_mmap(uint64_t a1)
{
  v2 = fd_mmap(a1);
  if (v2 != -1)
  {
    os_unfair_lock_lock(&map_guard_lock);
    ++*(a1 + 60);
    os_unfair_lock_unlock(&map_guard_lock);
  }

  return v2;
}

void __setCSAttributes1_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __setCSAttributes1_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_2014;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v14 = *(a1 + 108);
  v6[4] = v4;
  v6[5] = v3;
  v7 = *(a1 + 64);
  v5 = *(a1 + 88);
  v8 = *(a1 + 80);
  v9 = v2;
  v10 = v5;
  v11 = v1;
  v13 = *(a1 + 104);
  v12 = *(a1 + 96);
  si_indexingWatchdogPerform(v2, v1, v3, 6u, v6);
}

void si_indexingWatchdogPerform(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 2072);
  if (v8 == 1)
  {
    v10 = *(a1 + 64);
    os_unfair_lock_lock((v10 + 64));
    if (a4 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = a4;
    }

    v12 = 2 * a3 * v11;
    if (v12 >= 0x1A4)
    {
      v12 = 420;
    }

    v13 = v12 + 60;
    Current = CFAbsoluteTimeGetCurrent();
    *(v10 + 48) = Current;
    v15 = Current;
    *(v10 + 40) = v13;
    *(v10 + 56) = 0;
    *(v10 + 72) = a3;
    *(v10 + 76) = a4;
    *(v10 + 96) = pthread_self();
    *(v10 + 16) = 0;
    *(v10 + 80) = 0;
    v16 = *(a1 + 60);
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = v16 >> 1;
    }

    *(v10 + 88) = v17;
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    v20 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *v10;
      *buf = 134219010;
      v50 = v21;
      v51 = 2048;
      v52 = v13;
      v53 = 2048;
      v54 = v15;
      v55 = 2048;
      v56 = a3;
      v57 = 2112;
      v58 = a2;
      _os_log_impl(&dword_1C278D000, v19, v20, "Starting the indexing watchdog, timer:%p, delta:%llus, startTime:%.3f, itemCount:%lu, bundleID:%@", buf, 0x34u);
    }

    *__error() = v18;
    v22 = *v10;
    v23 = dispatch_time(0, 1000000000 * v13);
    dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (*(v10 + 68))
    {
      *(v10 + 56) = v15;
    }

    else
    {
      dispatch_resume(*v10);
    }

    os_unfair_lock_unlock((v10 + 64));
    v26 = v13;
    v24 = v15;
    v25 = v10;
  }

  else
  {
    v24 = 0.0;
    v25 = 0;
    v26 = 0;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v28 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  *buf = v28;
  v29 = threadData[9 * v28 + 1] + 320 * HIDWORD(v28);
  v48 = HIDWORD(v28);
  v47 = __PAIR64__(v30, v31);
  *(v29 + 216) = 0;
  v32 = *(v29 + 312);
  v33 = *(v29 + 224);
  if (v33)
  {
    v33(*(v29 + 288));
  }

  v46 = *buf;
  v45 = v48;
  v44 = v47;
  if (_setjmp(v29))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v43 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v43, 2u);
    }

    *(v29 + 312) = v32;
    CIOnThreadCleanUpReset(v44);
    dropThreadId(v46, 1, add_explicit + 1);
    CICleanUpReset(v46, HIDWORD(v44));
    if (!v8)
    {
      goto LABEL_32;
    }

LABEL_27:
    os_unfair_lock_lock((v25 + 64));
    if (!*(v25 + 68))
    {
      dispatch_suspend(*v25);
    }

    *(v25 + 16) = 1;
    v36 = CFAbsoluteTimeGetCurrent();
    v37 = *__error();
    v38 = _SILogForLogForCategory(0);
    v39 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = *v25;
      *buf = 134219010;
      v50 = v40;
      v51 = 2048;
      v52 = v26;
      v53 = 2048;
      v54 = v36 - v24;
      v55 = 2048;
      v56 = a3;
      v57 = 2112;
      v58 = a2;
      _os_log_impl(&dword_1C278D000, v38, v39, "Stopping the indexing watchdog, timer:%p, delta:%llus, time:%.3f, itemCount:%lu, bundleId:%@", buf, 0x34u);
    }

    *__error() = v37;
    dispatch_source_set_timer(*v25, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    *(v25 + 80) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 40) = 0;
    os_unfair_lock_unlock((v25 + 64));
    goto LABEL_32;
  }

  (*(a5 + 16))(a5);
  v34 = threadData[9 * v46 + 1] + 320 * v45;
  *(v34 + 312) = v32;
  v35 = *(v34 + 232);
  if (v35)
  {
    v35(*(v34 + 288));
  }

  dropThreadId(v46, 0, add_explicit + 1);
  if (v8)
  {
    goto LABEL_27;
  }

LABEL_32:
  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __setCSAttributes1_block_invoke_2(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(a1 + 32), 0x40000000, add_explicit + 1);
  v39 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v37 = v5;
  v38 = HIDWORD(v3);
  v36 = v6;
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v35 = v39;
  v34 = v38;
  v33 = v37;
  v32 = v36;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v32);
    dropThreadId(v35, 1, add_explicit + 1);
    return CICleanUpReset(v35, v33);
  }

  v10 = *(a1 + 32);
  if (v10[82] & 2) != 0 || (*(a1 + 108))
  {
    v11 = 1;
LABEL_10:
    v12 = v11;
    *buf = 0;
    v13 = *(a1 + 40);
    goto LABEL_11;
  }

  LODWORD(v21) = gCPUCount;
  if (gCPUCount <= 1)
  {
    LODWORD(v21) = 1;
  }

  if (v21 >= 0x10)
  {
    v21 = 16;
  }

  else
  {
    v21 = v21;
  }

  v22 = *(a1 + 40);
  v11 = v21;
  if (v22 > v21)
  {
    goto LABEL_10;
  }

  *buf = 0;
  v13 = v22;
  v12 = v22;
  if (!v22)
  {
    v15 = 0;
    v14 = -1;
    v16 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v14 = *(*v10 + 32);
  v15 = v13;
  v16 = v12;
LABEL_12:
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v17 = *(a1 + 64);
  v24 = *(a1 + 48);
  v23[2] = __setCSAttributes1_block_invoke_3;
  v23[3] = &__block_descriptor_tmp_2013;
  v23[4] = v10;
  v23[5] = buf;
  v23[6] = v15;
  v25 = v17;
  v26 = *(a1 + 80);
  v18 = *(a1 + 104);
  v28 = v14;
  v29 = v18;
  v30 = 0;
  v27 = *(a1 + 88);
  dispatch_apply(v16, 0, v23);
  v19 = threadData[9 * v35 + 1] + 320 * v34;
  *(v19 + 312) = v7;
  v20 = *(v19 + 232);
  if (v20)
  {
    v20(*(v19 + 288));
  }

  return dropThreadId(v35, 0, add_explicit + 1);
}

uint64_t __setCSAttributes1_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(*(a1 + 112), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v56 = v5;
  v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v54 = v7;
  v55 = HIDWORD(v5);
  v53 = v8;
  *(v6 + 216) = 0;
  v9 = *(v6 + 312);
  v10 = *(v6 + 224);
  if (v10)
  {
    v10(*(v6 + 288));
  }

  v52 = v56;
  v51 = v55;
  v50 = v54;
  v49 = v53;
  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v6 + 312) = v9;
    CIOnThreadCleanUpReset(v49);
    dropThreadId(v52, 1, add_explicit + 1);
    result = CICleanUpReset(v52, v50);
  }

  else
  {
    v12 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v13 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(a1 + 32), 0x40000000, v12 + 1);
    v48 = v13;
    v46 = v14;
    v47 = HIDWORD(v13);
    v45 = v15;
    v16 = threadData[9 * v13 + 1] + 320 * HIDWORD(v13);
    *(v16 + 216) = 0;
    v17 = *(v16 + 312);
    v18 = *(v16 + 224);
    if (v18)
    {
      v18(*(v16 + 288));
    }

    v44 = v48;
    v43 = v47;
    v42 = v46;
    v41 = v45;
    v19 = _setjmp(v16);
    if (v19)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v16 + 312) = v17;
      CIOnThreadCleanUpReset(v41);
      dropThreadId(v44, 1, v12 + 1);
      CICleanUpReset(v44, v42);
    }

    else
    {
      v35 = v17;
      v36 = v12;
      MEMORY[0x1EEE9AC00](v19);
      bzero(v34, 0x1000uLL);
      v20 = _SIStackAllocatorCreate(v34, 4096, indexingZone);
      if (atomic_fetch_add_explicit(*(a1 + 40), 1uLL, memory_order_relaxed) < *(a1 + 48))
      {
        v21 = v20;
        do
        {
          if (!v34[3])
          {
            v34[1] = (v34[0] + 55) & 0xFFFFFFFFFFFFFFF0;
          }

          memset(buf, 0, sizeof(buf));
          v40 = 0;
          v37 = *(a1 + 56);
          v38 = *(a1 + 72);
          _MDPlistArrayGetPlistObjectAtIndex();
          v22 = *(a1 + 80);
          v23 = *(a1 + 88);
          v24 = *(a1 + 116);
          v25 = *(a1 + 120);
          v26 = *(a1 + 96);
          v27 = *(a1 + 104);
          v37 = *buf;
          v38 = v40;
          v28 = processOne(v22, v23, v26, 0, &v37, v24, v21, 1u, v25, v27);
        }

        while ((!a2 || !v28) && atomic_fetch_add_explicit(*(a1 + 40), 1uLL, memory_order_relaxed) < *(a1 + 48));
      }

      v29 = threadData[9 * v44 + 1] + 320 * v43;
      *(v29 + 312) = v35;
      v30 = *(v29 + 232);
      if (v30)
      {
        v30(*(v29 + 288));
      }

      dropThreadId(v44, 0, v36 + 1);
    }

    v31 = threadData[9 * v52 + 1] + 320 * v51;
    *(v31 + 312) = v9;
    v32 = *(v31 + 232);
    if (v32)
    {
      v32(*(v31 + 288));
    }

    result = dropThreadId(v52, 0, add_explicit + 1);
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

CFAllocatorRef _SIStackAllocatorCreate(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a1;
  a1[1] = (a1 + 55) & 0xFFFFFFFFFFFFFFF0;
  a1[2] = a1 + a2;
  a1[3] = 0;
  a1[4] = a3;
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  context.allocate = stack_allocate;
  context.reallocate = stack_reallocate;
  context.deallocate = stack_deallocate;
  context.preferredSize = preferredSize;
  result = CFAllocatorCreate(*MEMORY[0x1E695E4B0], &context);
  v5 = (a1[1] + 15) & 0xFFFFFFFFFFFFFFF0;
  *a1 = v5;
  a1[1] = v5;
  return result;
}

void *stack_allocate(size_t size, uint64_t a2, uint64_t a3)
{
  result = *(a3 + 8);
  v6 = (result + size + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v6 >= *(a3 + 16))
  {
    result = malloc_type_zone_malloc(*(a3 + 32), size, 0x404A9EEFuLL);
    if (result)
    {
      ++*(a3 + 24);
    }
  }

  else
  {
    *(a3 + 8) = v6;
  }

  return result;
}

void __processOneCS_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  if (a3 >= 8)
  {
    v7 = *a2 == 1229213035 && *(a2 + 3) == 1835365449;
    v8 = !v7;
    if (a3 >= 0xE && !v8)
    {
      v9 = a2 + a3;
      if (*(a2 + a3 - 7) == 1936876880 && *(a2 + a3 - 4) == 1936617331)
      {
        return;
      }

      if (a3 >= 0x11)
      {
        if (*(v9 - 10) == 0x616E6F6974636944 && *(v9 - 2) == 31090)
        {
          return;
        }

        if (*(v9 - 10) == 0x69747265706F7250 && *(v9 - 2) == 29541)
        {
          return;
        }

        if (a3 != 17)
        {
          if (*(v9 - 11) == 0x746E6F434C4D5448 && *(v9 - 8) == 0x746E65746E6F434CLL)
          {
            return;
          }

          if (a3 >= 0x16)
          {
            v14 = *(v9 - 15);
            v15 = *(v9 - 8);
            if (v14 == 0x746E6F434C4D5448 && v15 == 0x61746144746E6574)
            {
              return;
            }
          }
        }
      }
    }
  }

  v28 = *a4;
  v31 = *(a4 + 2);
  PlistObjectType = _MDPlistGetPlistObjectType();
  v18 = *(a1 + 40);
  if (PlistObjectType == 247)
  {
    v29 = *a4;
    v32 = *(a4 + 2);
    v19 = _MDPlistContainerCopyObject();
    if (!v19)
    {
      return;
    }

    v20 = v19;
    v21 = CFURLCopyAbsoluteURL(v19);
    if (v21)
    {
      v22 = v21;
      v23 = CFURLGetString(v21);
      v24 = v23 ? CFRetain(v23) : 0;
      CFRelease(v22);
    }

    else
    {
      v24 = 0;
    }

    CFRelease(v20);
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v30 = *a4;
    v33 = *(a4 + 2);
    v24 = _MDPlistContainerCopyCSObject();
    if (!v24)
    {
      return;
    }
  }

  v25 = CFStringCreateWithCStringNoCopy(*(a1 + 40), a2, 0x8000100u, *MEMORY[0x1E695E498]);
  if (v25)
  {
    v26 = v25;
    v27 = *(a1 + 48);
    if (v27 == CFGetTypeID(v24))
    {
      *(*(*(a1 + 32) + 8) + 24) += CFStringGetLength(v24);
    }

    CFDictionaryAddValue(*(a1 + 56), v26, v24);
    CFRelease(v26);
  }

  CFRelease(v24);
}

uint64_t _page_fetch_with_fd(uint64_t a1, const void **value_out, uint64_t a3, unsigned int a4, int a5, _DWORD *a6, uint64_t __fd, unsigned int *a8)
{
  v155[3] = *MEMORY[0x1E69E9840];
  ptr = 0;
  if (a8)
  {
    v15 = *(a8 + 9);
    if ((a5 & 0x2000) != 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v15 = 0;
    if ((a5 & 0x2000) != 0)
    {
      goto LABEL_54;
    }
  }

  v16 = *(a1 + 928);
  if (a3 && (a5 & 0x10) != 0)
  {
    v143 = a5 & 3;
    v17 = (v16 + 8);
    if ((a5 & 3) != 0)
    {
      pthread_rwlock_rdlock(v17);
    }

    else
    {
      pthread_rwlock_wrlock(v17);
    }

    v19 = *(v16 + 220);
    if (v19 >= 1)
    {
      v20 = 0;
      while (*(v16 + 252 + 4 * v20) != a3)
      {
        if (v19 == ++v20)
        {
          goto LABEL_27;
        }
      }

      atomic_fetch_add((v16 + 216), 1u);
      v21 = v16 + 48 * v20;
      v22 = malloc_type_malloc(*(*(v21 + 272) + 8), 0xAC1EEBDFuLL);
      memcpy(v22, *(v21 + 272), *(*(v21 + 272) + 8));
      v22[1] = *(*(v21 + 272) + 8);
      *value_out = v22;
      if (!v143)
      {
LABEL_20:
        db_cache_mru(v16, v20);
      }

LABEL_21:
      pthread_rwlock_unlock((v16 + 8));
      result = 0;
      *a6 = 1;
      goto LABEL_208;
    }

LABEL_27:
    pthread_rwlock_unlock((v16 + 8));
    goto LABEL_28;
  }

  if (a3 && (a5 & 4) == 0)
  {
    v144 = a5 & 3;
    v18 = (v16 + 8);
    if ((a5 & 3) != 0)
    {
      pthread_rwlock_rdlock(v18);
    }

    else
    {
      pthread_rwlock_wrlock(v18);
    }

    v24 = *(v16 + 220);
    if (v24 >= 1)
    {
      v20 = 0;
      while (*(v16 + 252 + 4 * v20) != a3)
      {
        if (v24 == ++v20)
        {
          goto LABEL_27;
        }
      }

      atomic_fetch_add((v16 + 216), 1u);
      *value_out = *(v16 + 48 * v20 + 272);
      if (!v144)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_28:
  atomic_fetch_add((v16 + 228), 1u);
  if ((a5 & 2) != 0)
  {
    goto LABEL_54;
  }

  if ((a5 & 8) == 0)
  {
    v25 = *(a1 + 928);
    if (a5)
    {
      if (page_cache_copy_page(*(a1 + 928), value_out, a3, a5))
      {
        goto LABEL_54;
      }

      if ((*(*value_out + 12) & 0xF0) != 0)
      {
        v32 = __si_assert_copy_extra_3233(0, -1);
        v33 = v32;
        v34 = "";
        if (v32)
        {
          v34 = v32;
        }

        __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 2408, "((*dbpp)->flags & DB_PAGE_STRING_DATA)==0", v34, a3, *(*value_out + 3));
LABEL_226:
        free(v33);
        if (__valid_fs(-1))
        {
          v138 = 2989;
        }

        else
        {
          v138 = 3072;
        }

        *v138 = -559038737;
        abort();
      }
    }

    else
    {
      v149[0] = MEMORY[0x1E69E9820];
      v149[1] = 0x40000000;
      v149[2] = ___page_fetch_with_fd_block_invoke;
      v149[3] = &__block_descriptor_tmp_193;
      v149[4] = a1;
      v150 = a5;
      *v153 = 0;
      if (page_cache_copy_page(v25, v153, a3, 4))
      {
        goto LABEL_54;
      }

      if (v25[13].n128_u32[3])
      {
        v26 = atomic_load(&v25[14].n128_u32[1]);
        v27 = 100 * v26;
        v28 = atomic_load(&v25[13].n128_u32[2]);
        v29 = v25[13].n128_i32[3];
        if (v27 > v28 && v29 <= 3)
        {
          if (v25[15].n128_u32[v29 + 2])
          {
            v31 = atomic_load(&v25[14].n128_u32[1]);
            v29 = v25[13].n128_i32[3];
            if (v31 > 10 * v29 && MEMORY[0xFFFFFC030] <= 0x32u)
            {
              v25[13].n128_u32[3] = ++v29;
              atomic_store(0, &v25[14].n128_u32[1]);
              atomic_store(0, &v25[13].n128_u32[2]);
            }
          }
        }
      }

      else
      {
        v29 = 2;
        v25[13].n128_u32[3] = 2;
      }

      v35 = v29 - 1;
      if (db_cache_flush_entry(v25, v29 - 1, v149))
      {
        goto LABEL_54;
      }

      v112 = &v25[3 * v35];
      free(v112[17].n128_u64[1]);
      v112[17].n128_u64[1] = 0;
      v113 = *v153;
      free(v112[17].n128_u64[0]);
      v112[17].n128_u64[0] = v113;
      v25[15].n128_u32[v35 + 3] = a3;
      v112[18].n128_u32[0] = 0;
      *value_out = v113;
      db_cache_mru(v25, v35);
      v25[18].n128_u64[1] = 0;
      v25[19].n128_u32[0] = 0;
      v25[19].n128_u64[1] = 0;
      if ((*(*value_out + 12) & 0xF0) != 0)
      {
        v134 = __si_assert_copy_extra_3233(0, -1);
        v132 = v134;
        v135 = "";
        if (v134)
        {
          v135 = v134;
        }

        __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 2415, "((*dbpp)->flags & DB_PAGE_STRING_DATA)==0", v135, a3, *(*value_out + 3));
        goto LABEL_217;
      }
    }

    result = 0;
    *a6 = 2;
    goto LABEL_208;
  }

  if (!page_cache_fetch(*(a1 + 928), value_out, a3))
  {
    *a6 = 2;
    if ((*(*value_out + 12) & 0xF0) == 0)
    {
      goto LABEL_44;
    }

    v131 = __si_assert_copy_extra_3233(0, -1);
    v132 = v131;
    v133 = "";
    if (v131)
    {
      v133 = v131;
    }

    __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 2400, "((*dbpp)->flags & DB_PAGE_STRING_DATA)==0", v133, a3, *(*value_out + 3));
    goto LABEL_217;
  }

LABEL_54:
  *a6 = 0;
  v36 = (a5 & 4) == 0;
  if ((a5 & 4) != 0)
  {
    v55 = *value_out;
    ptr = *value_out;
    goto LABEL_99;
  }

  if (a5)
  {
    if (v15)
    {
      v36 = 0;
      ptr = v15;
      v55 = v15;
      goto LABEL_100;
    }

    v56 = a4;
    goto LABEL_98;
  }

  if (a3 && (db_cache_contains(*(a1 + 928), a3, 0) & 1) == 0)
  {
    v145 = v15;
    *v153 = a3 << *(a1 + 12);
    *&v153[8] = a4;
    v37 = *(a1 + 848);
    *buf = 0;
    v38 = _fd_acquire_fd(v37, buf);
    do
    {
      v39 = fcntl(v38, 44, v153);
      v40 = g_prot_error_callback;
      if (v39 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v42 = v37[10];
      v43 = __error();
    }

    while (((*(v40 + 16))(v40, v42, *v43, 12) & 1) != 0);
    _fd_release_fd(v37, v38, 0, *buf);
    v36 = (a5 & 4) == 0;
    v15 = v145;
  }

  ptr = 0;
  if ((*(a1 + 804) & 8) != 0)
  {
    goto LABEL_96;
  }

  v146 = v15;
  if (*(a1 + 1000) && *(a1 + 1008))
  {
    v141 = value_out;
    v44 = v36;
    v45 = *__error();
    v46 = _SILogForLogForCategory(7);
    v47 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v46, v47))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v46, v47, "db_flush_cache_lru: start callback", buf, 2u);
    }

    *__error() = v45;
    (*(a1 + 1008))(*(a1 + 1000), 0);
    v36 = v44;
    value_out = v141;
  }

  v48 = *(a1 + 928);
  *v153 = MEMORY[0x1E69E9820];
  *&v153[8] = 0x40000000;
  *&v153[16] = __db_flush_cache_lru_block_invoke;
  *&v153[24] = &__block_descriptor_tmp_215;
  *&v153[32] = a1;
  *&v153[40] = &ptr;
  *&v153[48] = a5 & 0x4000;
  if (v48[55])
  {
    v49 = atomic_load(v48 + 57);
    v50 = 100 * v49;
    v51 = atomic_load(v48 + 54);
    v52 = v48[55];
    if (v50 > v51 && v52 <= 3)
    {
      if (v48[v52 + 62])
      {
        v54 = atomic_load(v48 + 57);
        v52 = v48[55];
        if (v54 > 10 * v52 && MEMORY[0xFFFFFC030] <= 0x32u)
        {
          v48[55] = ++v52;
          atomic_store(0, v48 + 57);
          atomic_store(0, v48 + 54);
        }
      }
    }
  }

  else
  {
    v52 = 2;
    v48[55] = 2;
  }

  v57 = db_cache_flush_entry(v48, v52 - 1, v153);
  if (*(a1 + 1000) && *(a1 + 1008))
  {
    v142 = value_out;
    v58 = v36;
    v59 = v57;
    v60 = *__error();
    v61 = _SILogForLogForCategory(7);
    v62 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v61, v62))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v61, v62, "db_flush_cache_lru: end callback", buf, 2u);
    }

    *__error() = v60;
    (*(a1 + 1008))(*(a1 + 1000), 1);
    v57 = v59;
    v36 = v58;
    value_out = v142;
    v15 = v146;
  }

  if (v57)
  {
    v63 = v57;
    free(ptr);
    result = v63;
    goto LABEL_208;
  }

  if (!ptr)
  {
LABEL_96:
    v55 = 0;
    v64 = a4;
    goto LABEL_97;
  }

  v64 = a4;
  v65 = malloc_size(ptr);
  v55 = ptr;
  if (v65 < a4)
  {
LABEL_97:
    free(v55);
    v56 = v64;
LABEL_98:
    v55 = malloc_type_valloc(v56, 0x1000040A86A77D5uLL);
    ptr = v55;
  }

LABEL_99:
  if (!v55)
  {
    result = 12;
    goto LABEL_208;
  }

LABEL_100:
  if (!a8 || (v67 = *a8, v66 = a8[1], v66 >= *a8))
  {
LABEL_108:
    if (__fd == -1)
    {
      v74 = fd_pread(*(a1 + 848), v55, a4, a3 << *(a1 + 12));
      if (v74 == a4)
      {
        v75 = 0;
        goto LABEL_137;
      }

      v80 = v74;
      *(a1 + 4) |= 4u;
      v81 = *__error();
      v82 = *__error();
      v83 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        *v153 = 136316674;
        *&v153[4] = "_page_fetch_with_fd";
        *&v153[12] = 1024;
        *&v153[14] = 2485;
        *&v153[18] = 1024;
        *&v153[20] = a3;
        *&v153[24] = 1024;
        *&v153[26] = v81;
        *&v153[30] = 2080;
        *&v153[32] = a1 + 324;
        *&v153[40] = 2048;
        *&v153[42] = v80;
        *&v153[50] = 2048;
        *&v153[52] = a4;
        _os_log_error_impl(&dword_1C278D000, v83, OS_LOG_TYPE_ERROR, "%s:%d: Failed reading pgnum %d error:%d (%s) %zd != %zd", v153, 0x3Cu);
      }

      *__error() = v82;
      *__error() = v81;
      if (*__error())
      {
        if (!v36)
        {
          goto LABEL_125;
        }
      }

      else
      {
        *__error() = 22;
        if (!v36)
        {
          goto LABEL_125;
        }
      }
    }

    else
    {
      v147 = v15;
      v69 = v36;
      v70 = a3 << *(a1 + 12);
      while (1)
      {
        v71 = pread(__fd, v55, a4, v70);
        if (v71 != -1)
        {
          break;
        }

        v72 = g_prot_error_callback;
        if (!g_prot_error_callback)
        {
          break;
        }

        v73 = __error();
        if (((*(v72 + 16))(v72, __fd, *v73, 4) & 1) == 0)
        {
          v71 = -1;
          goto LABEL_119;
        }
      }

      if (v71 == a4)
      {
        v75 = 0;
        v36 = v69;
        v15 = v147;
        goto LABEL_137;
      }

LABEL_119:
      v76 = v71;
      *(a1 + 4) |= 4u;
      v77 = *__error();
      v78 = *__error();
      v79 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *v153 = 136316674;
        *&v153[4] = "_page_fetch_with_fd";
        *&v153[12] = 1024;
        *&v153[14] = 2499;
        *&v153[18] = 1024;
        *&v153[20] = a3;
        *&v153[24] = 1024;
        *&v153[26] = v77;
        *&v153[30] = 2080;
        *&v153[32] = a1 + 324;
        *&v153[40] = 2048;
        *&v153[42] = v76;
        *&v153[50] = 2048;
        *&v153[52] = a4;
        _os_log_error_impl(&dword_1C278D000, v79, OS_LOG_TYPE_ERROR, "%s:%d: Failed reading pgnum %d error:%d (%s) %zd != %zd", v153, 0x3Cu);
      }

      *__error() = v78;
      *__error() = v77;
      if (!*__error())
      {
        *__error() = 22;
      }

      if (!v69)
      {
        goto LABEL_125;
      }
    }

    free(ptr);
LABEL_125:
    result = *__error();
    goto LABEL_208;
  }

  while (1)
  {
    v68 = a8[v66 + 10];
    if (v68 < a3)
    {
      a8[1] = ++v66;
      goto LABEL_104;
    }

    if (v68 == a3)
    {
      break;
    }

    a8[1] = ++v66;
    if (v68 > a3)
    {
      goto LABEL_108;
    }

LABEL_104:
    if (v66 >= v67)
    {
      goto LABEL_108;
    }
  }

  if (v36)
  {
    free(v55);
    v84 = a8[1];
    v66 = a8[1];
  }

  else
  {
    v84 = v66;
  }

  v36 = 0;
  a8[1] = v66 + 1;
  ptr = *&a8[2 * v84 + 2];
  v75 = 1;
LABEL_137:
  *buf = 0;
  if (a5)
  {
    v91 = db2_page_uncompress_swap(a1, ptr, buf, 0);
    if (!v91)
    {
      goto LABEL_157;
    }

    v87 = v91;
    v92 = *__error();
    v93 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v124 = a3 << *(a1 + 12);
      v125 = *ptr;
      v126 = *(ptr + 1);
      v128 = *(ptr + 2);
      v127 = *(ptr + 3);
      *v153 = 136317442;
      *&v153[4] = "_page_fetch_with_fd";
      *&v153[12] = 1024;
      *&v153[14] = 2520;
      *&v153[18] = 1024;
      *&v153[20] = v87;
      *&v153[24] = 2048;
      *&v153[26] = a3;
      *&v153[34] = 2048;
      *&v153[36] = v124;
      *&v153[44] = 1024;
      *&v153[46] = v125;
      *&v153[50] = 1024;
      *&v153[52] = v126;
      *&v153[56] = 1024;
      *&v153[58] = v128;
      v154 = 1024;
      LODWORD(v155[0]) = v127;
      WORD2(v155[0]) = 2080;
      *(v155 + 6) = a1 + 324;
      _os_log_error_impl(&dword_1C278D000, v93, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap failed, error:%d, pgnum:%lu, pgoff:0x%llx, signature:0x%x, size:%d, used_bytes:%d, flags:0x%x, name:%s", v153, 0x4Eu);
    }

    *__error() = v92;
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      v90 = &_page_fetch_with_fd__crashCount;
LABEL_155:
      if (!atomic_fetch_add_explicit(v90, 1u, memory_order_relaxed))
      {
        v94 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"db2_page_uncompress_swap failed, error:%d, pgnum:%lu, pgoff:0x%llx, signature:0x%x, size:%d, used_bytes:%d, flags:0x%x, name:%s", v87, a3, a3 << *(a1 + 12), *ptr, *(ptr + 1), *(ptr + 2), *(ptr + 3), a1 + 324);
        goto LABEL_185;
      }
    }

LABEL_187:
    if ((a5 & 0x1000) == 0 && (*(a1 + 4) & 0x40) == 0)
    {
      analytics_send_event_lazy();
    }

    if ((a5 & 4) == 0)
    {
      if (a5)
      {
        if (!v36)
        {
          goto LABEL_202;
        }

        v107 = ptr;
      }

      else
      {
        v103 = *(a1 + 928);
        v104 = *(v103 + 220);
        if (v104 < 1)
        {
          goto LABEL_202;
        }

        v105 = 0;
        v106 = v103 + 272;
        while (*v106 != ptr)
        {
          ++v105;
          v106 += 48;
          if (v104 == v105)
          {
            goto LABEL_202;
          }
        }

        *(v103 + 4 * v105 + 252) = 0;
        *(v106 + 16) = 0;
        v108 = v103 + 272 + 48 * v105;
        *(v108 + 24) = 0;
        *(v108 + 32) = 0;
        *(v108 + 40) = 0;
        *v106 = 0;
        v107 = *(v106 + 8);
        if (v107)
        {
          free(v107);
          *(v106 + 8) = 0;
          v107 = *v106;
        }
      }

      free(v107);
    }

LABEL_202:
    if ((a5 & 0x1000) == 0 && (*(a1 + 4) & 0x40) == 0)
    {
      v109 = *__error();
      v110 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        v129 = *(a1 + 4);
        v130 = a3 << *(a1 + 12);
        *v153 = 136316418;
        *&v153[4] = "_page_fetch_with_fd";
        *&v153[12] = 1024;
        *&v153[14] = 2644;
        *&v153[18] = 2048;
        *&v153[20] = a3;
        *&v153[28] = 2048;
        *&v153[30] = v130;
        *&v153[38] = 1024;
        *&v153[40] = v129;
        *&v153[44] = 2080;
        *&v153[46] = a1 + 324;
        _os_log_error_impl(&dword_1C278D000, v110, OS_LOG_TYPE_ERROR, "%s:%d: page_fetch marking the dst as corrupted, pgnum:%lu, pgoff:0x%llx, flags:0x%x, name:%s", v153, 0x36u);
      }

      *__error() = v109;
      *(a1 + 4) |= 0x40u;
    }

    result = 22;
    goto LABEL_208;
  }

  if ((*(ptr + 3) & 0x1000) != 0)
  {
    v85 = dst_malloc;
  }

  else
  {
    v85 = 0;
  }

  v86 = db2_page_uncompress_swap(a1, ptr, buf, v85);
  if (v86)
  {
    v87 = v86;
    v88 = *__error();
    v89 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      v119 = a3 << *(a1 + 12);
      v120 = *ptr;
      v121 = *(ptr + 1);
      v123 = *(ptr + 2);
      v122 = *(ptr + 3);
      *v153 = 136317442;
      *&v153[4] = "_page_fetch_with_fd";
      *&v153[12] = 1024;
      *&v153[14] = 2538;
      *&v153[18] = 1024;
      *&v153[20] = v87;
      *&v153[24] = 2048;
      *&v153[26] = a3;
      *&v153[34] = 2048;
      *&v153[36] = v119;
      *&v153[44] = 1024;
      *&v153[46] = v120;
      *&v153[50] = 1024;
      *&v153[52] = v121;
      *&v153[56] = 1024;
      *&v153[58] = v123;
      v154 = 1024;
      LODWORD(v155[0]) = v122;
      WORD2(v155[0]) = 2080;
      *(v155 + 6) = a1 + 324;
      _os_log_error_impl(&dword_1C278D000, v89, OS_LOG_TYPE_ERROR, "%s:%d: db2_page_uncompress_swap failed, error:%d, pgnum:%lu, pgoff:0x%llx, signature:0x%x, size:%d, used_bytes:%d, flags:0x%x, name:%s", v153, 0x4Eu);
    }

    *__error() = v88;
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      v90 = &_page_fetch_with_fd__crashCount_197;
      goto LABEL_155;
    }

    goto LABEL_187;
  }

LABEL_157:
  v95 = *buf;
  if (*buf)
  {
    if (v36)
    {
      free(ptr);
      v95 = *buf;
    }

    ptr = v95;
  }

  else if (((ptr != v15) & ~v75) != 0)
  {
    v96 = malloc_size(ptr);
    v95 = ptr;
    *(ptr + 1) = v96;
  }

  else
  {
    *buf = malloc_type_valloc(a4, 0x717F5B51uLL);
    memcpy(*buf, ptr, a4);
    v95 = *buf;
    ptr = *buf;
    *(*buf + 4) = a4;
  }

  if (*v95 != 1684172850)
  {
    goto LABEL_178;
  }

  v97 = v95[3];
  v98 = 4;
  if ((v97 & 4) == 0)
  {
    v98 = 1;
  }

  if (v95[v98] != a4 || (v97 & 1) == 0 || v95[2] > v95[1])
  {
LABEL_178:
    v100 = *__error();
    v101 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      v114 = a3 << *(a1 + 12);
      v115 = *ptr;
      v116 = *(ptr + 1);
      v118 = *(ptr + 2);
      v117 = *(ptr + 3);
      *v153 = 136317186;
      *&v153[4] = "_page_fetch_with_fd";
      *&v153[12] = 1024;
      *&v153[14] = 2578;
      *&v153[18] = 2048;
      *&v153[20] = a3;
      *&v153[28] = 2048;
      *&v153[30] = v114;
      *&v153[38] = 1024;
      *&v153[40] = v115;
      *&v153[44] = 1024;
      *&v153[46] = v116;
      *&v153[50] = 1024;
      *&v153[52] = v118;
      *&v153[56] = 1024;
      *&v153[58] = v117;
      v154 = 2080;
      v155[0] = a1 + 324;
      _os_log_error_impl(&dword_1C278D000, v101, OS_LOG_TYPE_ERROR, "%s:%d: page_fetch found an invalid page, pgnum:%lu, pgoff:0x%llx, signature:0x%x, size:%d, used_bytes:%d, flags:0x%x, name:%s", v153, 0x48u);
    }

    *__error() = v100;
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (!SIIsAppleInternal_internal || atomic_fetch_add_explicit(&_page_fetch_with_fd__crashCount_198, 1u, memory_order_relaxed))
    {
      goto LABEL_187;
    }

    v94 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"page_fetch found an invalid page, pgnum:%lu, pgoff:0x%llx, signature:0x%x, size:%d, used_bytes:%d, flags:0x%x, name:%s", a3, a3 << *(a1 + 12), *ptr, *(ptr + 1), *(ptr + 2), *(ptr + 3), a1 + 324);
LABEL_185:
    v102 = v94;
    getpid();
    SISimulateCrashForPid(0, v102);
    if (v102)
    {
      CFRelease(v102);
    }

    goto LABEL_187;
  }

  v99 = (a5 & 3) != 0;
  if ((v97 & 0xC) != 0)
  {
    v99 = 0;
  }

  if ((v97 & 0xF0) != 0 && !v99)
  {
    v136 = __si_assert_copy_extra_3233(0, -1);
    v33 = v136;
    v137 = "";
    if (v136)
    {
      v137 = v136;
    }

    __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 2588, "(dbp->flags & 0x000000f0)==0", v137, a3, *(ptr + 3));
    goto LABEL_226;
  }

  if (a5 & 4) != 0 || (*value_out = v95, (a5))
  {
    if ((a5 & 0x23) != 1)
    {
      goto LABEL_44;
    }

    if ((*(*value_out + 12) & 0xF0) == 0)
    {
      page_cache_add(*(a1 + 928), value_out, a3, (a5 & 8) != 0);
      result = 0;
      goto LABEL_208;
    }

    v139 = __si_assert_copy_extra_3233(0, -1);
    v132 = v139;
    v140 = "";
    if (v139)
    {
      v140 = v139;
    }

    __message_assert("%s:%u: failed assertion '%s' %s obj_iter_fetch_page: ERR: tried to read attr name table data! pgnum 0x%x, flags 0x%x\n", "sdb2.c", 2606, "((*dbpp)->flags & 0x000000f0)==0", v140, a3, *(ptr + 3));
LABEL_217:
    free(v132);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if ((v97 & 0xC) != 0)
  {
    db_cache_add_page(*(a1 + 928), v95, v95, a3);
    result = 0;
    goto LABEL_208;
  }

LABEL_44:
  result = 0;
LABEL_208:
  v111 = *MEMORY[0x1E69E9840];
  return result;
}

const UInt8 *data_map_get_data(uint64_t a1, unint64_t a2, size_t *a3)
{
  v3 = *(a1 + 216);
  if (v3 <= 842150449)
  {
    if (v3 == -270471200)
    {

      return data_map_ext_get_data(a1, a2, a3);
    }

    else
    {
      if (v3 != -572662307)
      {
        goto LABEL_18;
      }

      return data_map_double_get_data(a1, a2, a3);
    }
  }

  else
  {
    if (v3 != 842150450)
    {
      if (v3 == 1684300900)
      {

        return data_map64_get_data(a1, a2, a3);
      }

LABEL_18:
      v5 = __si_assert_copy_extra_332();
      v6 = v5;
      v7 = "";
      if (v5)
      {
        v7 = v5;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "data_map.c", 402, "data_map_is_double(data_map)", v7);
      free(v6);
      if (__valid_fs(-1))
      {
        v8 = 2989;
      }

      else
      {
        v8 = 3072;
      }

      *v8 = -559038737;
      abort();
    }

    return data_map32_get_data(a1, a2, a3);
  }
}

char *db_get_string_for_id(int *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      *buf = 136315650;
      v12 = "db_get_string_for_id";
      v13 = 1024;
      v14 = 390;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v5;
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 390, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v2 = *MEMORY[0x1E69E9840];

  return get_string_and_length_for_id_15021(a1, 1u, a2, 0, 0);
}

uint64_t page_release(uint64_t a1, unsigned int *value, unsigned int a3, unsigned int a4, int a5)
{
  v118 = *MEMORY[0x1E69E9840];
  v114 = value;
  if (!value)
  {
    result = 22;
    goto LABEL_134;
  }

  LODWORD(v5) = a5;
  if (!a5)
  {
    v10 = 4;
    if ((value[3] & 4) == 0)
    {
      v10 = 1;
    }

    LODWORD(v5) = value[v10];
  }

  v113 = 0;
  v11 = *(a1 + 928);
  if ((a4 & 0x10) == 0)
  {
    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 0x40000000;
    v110 = __page_release_block_invoke;
    v111 = &__block_descriptor_tmp_161_14804;
    v112 = a1;
    v12 = *(v11 + 220);
    if (v12 >= 1)
    {
      v13 = 0;
      v14 = v11 + 272;
      while (*v14 != value)
      {
        ++v13;
        v14 += 48;
        if (v12 == v13)
        {
          goto LABEL_11;
        }
      }

      v48 = v11 + 252;
      v49 = *(v11 + 252 + 4 * v13);
      if (v49 != a3 && (v49 | a4 & 1) != 0)
      {
        v97 = __si_assert_copy_extra_332();
        v98 = v97;
        v99 = "";
        if (v97)
        {
          v99 = v97;
        }

        __message_assert("%s:%u: failed assertion '%s' %s Pgnum: %u dbp:%p cached_pgnum::%u cached_dbp:%p index:%d size:%d", "page-cache.c", 950, "cache->cache_pgnum[i]==pgnum || (cache->cache_pgnum[i]==0 && (flags & PAGE_DIRTY)==0)", v99, a3, value, *(v48 + 4 * v13), *v14, v13, *(v11 + 220));
        v96 = v98;
        goto LABEL_144;
      }

      if (a4)
      {
        *(v14 + 16) = 1;
        free(*(v14 + 8));
        *(v14 + 8) = 0;
      }

      if ((a4 & 2) != 0)
      {
        *&buf[16] = 0u;
        v116 = 0u;
        *buf = 0u;
        *buf = a3;
        *&buf[8] = *v14;
        *&buf[24] = *(v14 + 16);
        *&v116 = *(v14 + 24);
        DWORD2(v116) = *(v14 + 32);
        v117 = *(v14 + 40);
        v110(v109, buf);
        result = 0;
        *v14 = *&buf[8];
        v51 = *buf;
        *(v14 + 16) = *&buf[24];
        *(v14 + 24) = v116;
        *(v14 + 32) = DWORD2(v116);
        *(v14 + 40) = v117;
        *(v48 + 4 * v13) = v51;
        goto LABEL_134;
      }

LABEL_133:
      result = 0;
      goto LABEL_134;
    }

LABEL_11:
    if ((a4 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_49:
    _add_dirty_chunk(a1, a3, v5, (a4 >> 14) & 1);
    v38 = *(a1 + 928);
    *buf = 0;
    *&buf[8] = 0;
    v39 = atomic_load((v38 + 248));
    if (v39 > a3)
    {
      *&buf[8] = 0;
      *buf = *v38;
      *&buf[8] = a3;
      _cache_remove(buf);
    }

    v40 = v114;
    v41 = v114[3];
    if ((v41 & 0xF0) == 0)
    {
      v42 = 4;
      if ((v41 & 4) == 0)
      {
        v42 = 1;
      }

      if (v5 == v114[v42])
      {
        page_cache_add(*(a1 + 928), &v114, a3, 0);
        v40 = v114;
        v41 = v114[3];
      }
    }

    if ((v41 & 0xC) != 0)
    {
      if ((*(a1 + 804) & 2) != 0)
      {
        v43 = 3;
      }

      else
      {
        v43 = 2;
      }

      v44 = page_compress(a1, v40, &v113, 0, v43);
      if (v44)
      {
        if (v44 == 7)
        {
          v101 = *__error();
          v102 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "page_release";
            *&buf[12] = 1024;
            *&buf[14] = 2826;
            _os_log_error_impl(&dword_1C278D000, v102, OS_LOG_TYPE_ERROR, "%s:%d: page_release: ERROR: page_fetch caller responsible for making sure compressed page fits after changes.\n", buf, 0x12u);
          }

          *__error() = v101;
          v103 = *__error();
          v104 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            v105 = v40[2];
            *buf = 136316162;
            *&buf[4] = "page_release";
            *&buf[12] = 1024;
            *&buf[14] = 2827;
            *&buf[18] = 1024;
            *&buf[20] = a3;
            *&buf[24] = 1024;
            *&buf[26] = v105;
            *&buf[30] = 1024;
            LODWORD(v116) = v5;
            _os_log_error_impl(&dword_1C278D000, v104, OS_LOG_TYPE_ERROR, "%s:%d: page_release: page %d used_bytes %d disk page size %d\n", buf, 0x24u);
          }

          *__error() = v103;
          v106 = __si_assert_copy_extra_3233(0, -1);
          v107 = v106;
          if (v106)
          {
            v108 = v106;
          }

          else
          {
            v108 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 2828, v108);
          free(v107);
          goto LABEL_145;
        }

        v45 = v44;
        v46 = *__error();
        v47 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v75 = v40[2];
          *buf = 136316418;
          *&buf[4] = "page_release";
          *&buf[12] = 1024;
          *&buf[14] = 2833;
          *&buf[18] = 1024;
          *&buf[20] = v45;
          *&buf[24] = 1024;
          *&buf[26] = a3;
          *&buf[30] = 1024;
          LODWORD(v116) = v75;
          WORD2(v116) = 1024;
          *(&v116 + 6) = v5;
          _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: page_release: ERR: compress error %d with page %d used_bytes %d disk page size %d\n", buf, 0x2Au);
        }

        *__error() = v46;
        *(a1 + 4) |= 2u;
        result = v45;
        *(a1 + 800) = v45;
        goto LABEL_134;
      }

      if (v113)
      {
        v5 = v5;
        v52 = sdb_pwrite(*(a1 + 848), v113, v5, a3 << *(a1 + 12));
        free(v113);
        v53 = v52;
LABEL_106:
        if (v53 == v5)
        {
LABEL_118:
          if ((a4 & 4) != 0)
          {
            goto LABEL_133;
          }

          v81 = *(a1 + 928);
          v82 = v114;
          pthread_rwlock_rdlock((v81 + 8));
          v83 = *(v81 + 220);
          if (v83 >= 1)
          {
            v84 = (v81 + 252);
            v85 = (v81 + 272);
            while (*v85 != v82 || *v84 != a3)
            {
              ++v84;
              v85 += 6;
              if (!--v83)
              {
                goto LABEL_125;
              }
            }

            v37 = (v81 + 8);
            goto LABEL_132;
          }

LABEL_125:
          pthread_rwlock_unlock((v81 + 8));
          v86 = *(a1 + 928);
          pthread_rwlock_rdlock((v86 + 8));
          v87 = *(v86 + 220);
          if (v87 >= 1)
          {
            v88 = (v86 + 272);
            while (*v88 != v82)
            {
              v88 += 6;
              if (!--v87)
              {
                goto LABEL_129;
              }
            }

            v37 = (v86 + 8);
LABEL_132:
            pthread_rwlock_unlock(v37);
            goto LABEL_133;
          }

LABEL_129:
          pthread_rwlock_unlock((v86 + 8));
          v89 = v82;
LABEL_130:
          free(v89);
          goto LABEL_133;
        }

        *(a1 + 4) |= 2u;
        v73 = *__error();
        v74 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "page_release";
          *&buf[12] = 1024;
          *&buf[14] = 2870;
          *&buf[18] = 1024;
          *&buf[20] = a3;
          _os_log_error_impl(&dword_1C278D000, v74, OS_LOG_TYPE_ERROR, "%s:%d: Failed writing pgnum %d", buf, 0x18u);
        }

        *__error() = v73;
        if (!*__error())
        {
          *__error() = 22;
        }

        *(a1 + 800) = *__error();
        result = *__error();
        goto LABEL_134;
      }
    }

    if ((*(a1 + 4) & 0x80) == 0 || (v54 = *v40, *v40 != 1684172850) && v54 != 846226020)
    {
LABEL_91:
      v5 = v5;
      v53 = sdb_pwrite(*(a1 + 848), v40, v5, a3 << *(a1 + 12));
      if ((*(a1 + 4) & 0x80) == 0)
      {
        goto LABEL_106;
      }

      v63 = *v40;
      if (*v40 != 1684172850 && v63 != 846226020)
      {
        goto LABEL_106;
      }

      v64 = v40[3];
      if (v63 == 846226020)
      {
        if (v64 >> 28)
        {
          v65 = v40[2];
          v66 = bswap32(v65);
LABEL_99:
          if (v66 >= 0x21)
          {
            v67 = v53;
            v68 = v40 + 8;
            for (i = 32; i < v66; i += v70)
            {
              *v68 = bswap32(*v68);
              v70 = strlen(v68 + 4) + 4;
              v68 = (v68 + v70);
            }

            v63 = *v40;
            v65 = v40[2];
            v64 = v40[3];
            v53 = v67;
          }

          v40[5] = bswap32(v40[5]);
          v71 = bswap32(v63);
          v72 = v40[1];
          goto LABEL_105;
        }
      }

      else if ((v64 & 0xF0) != 0)
      {
        v65 = v40[2];
        v66 = v65;
        goto LABEL_99;
      }

      v71 = bswap32(v63);
      v72 = v40[1];
      v65 = v40[2];
LABEL_105:
      *v40 = v71;
      v40[1] = bswap32(v72);
      v40[2] = bswap32(v65);
      v40[3] = bswap32(v64);
      v40[4] = bswap32(v40[4]);
      goto LABEL_106;
    }

    v55 = v40[3];
    if (v54 == 846226020)
    {
      if (v55 >> 28)
      {
        v56 = v40[2];
        v57 = bswap32(v56);
LABEL_84:
        if (v57 >= 0x21)
        {
          v58 = v40 + 8;
          for (j = 32; j < v57; j += v60)
          {
            *v58 = bswap32(*v58);
            v60 = strlen(v58 + 4) + 4;
            v58 = (v58 + v60);
          }

          v54 = *v40;
          v56 = v40[2];
          v55 = v40[3];
        }

        v40[5] = bswap32(v40[5]);
        v61 = bswap32(v54);
        v62 = v40[1];
        goto LABEL_90;
      }
    }

    else if ((v55 & 0xF0) != 0)
    {
      v56 = v40[2];
      v57 = v56;
      goto LABEL_84;
    }

    v61 = bswap32(v54);
    v62 = v40[1];
    v56 = v40[2];
LABEL_90:
    *v40 = v61;
    v40[1] = bswap32(v62);
    v40[2] = bswap32(v56);
    v40[3] = bswap32(v55);
    v40[4] = bswap32(v40[4]);
    goto LABEL_91;
  }

  pthread_rwlock_rdlock((v11 + 8));
  v34 = *(v11 + 220);
  if (v34 >= 1)
  {
    v35 = (v11 + 252);
    v36 = (v11 + 272);
    while (*v36 != value || *v35 != a3)
    {
      ++v35;
      v36 += 6;
      if (!--v34)
      {
        goto LABEL_48;
      }
    }

    v37 = (v11 + 8);
    goto LABEL_132;
  }

LABEL_48:
  pthread_rwlock_unlock((v11 + 8));
  if (a4)
  {
    goto LABEL_49;
  }

LABEL_12:
  v15 = atomic_load((*(a1 + 928) + 248));
  if (v15 <= a3)
  {
    goto LABEL_158;
  }

  if (sdb_init_cache_onceToken != -1)
  {
    dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
  }

  if (sdb_init_cache_status != 1)
  {
    goto LABEL_133;
  }

  result = cache_release_value(sdbLargeCacheArray, value);
  if (result)
  {
LABEL_158:
    if ((a4 & 8) == 0)
    {
      goto LABEL_118;
    }

    v17 = v114;
    if ((*(v114 + 13) & 0x10) != 0)
    {
      goto LABEL_118;
    }

    v18 = *(a1 + 928);
    pthread_rwlock_wrlock((v18 + 8));
    if (*(v18 + 232))
    {
      goto LABEL_117;
    }

    v19 = *(v18 + 220);
    if (v19 >= 1)
    {
      v20 = (v18 + 252);
      v21 = (v18 + 272);
      v22 = *(v18 + 220);
      while (1)
      {
        v23 = *v20++;
        if (v23 == a3)
        {
          goto LABEL_117;
        }

        if (*v21 == v114)
        {
          break;
        }

        v21 += 6;
        if (!--v22)
        {
          goto LABEL_25;
        }
      }

      v93 = __si_assert_copy_extra_332();
      v94 = v93;
      v95 = "";
      if (v93)
      {
        v95 = v93;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 1252, "dbp != cache->cache_entries[i].cache_dbps", v95);
      v96 = v94;
LABEL_144:
      free(v96);
      if (!__valid_fs(-1))
      {
        v100 = 3072;
LABEL_147:
        *v100 = -559038737;
        abort();
      }

LABEL_145:
      v100 = 2989;
      goto LABEL_147;
    }

LABEL_25:
    if (v19)
    {
      v24 = atomic_load((v18 + 228));
      v25 = 100 * v24;
      v26 = atomic_load((v18 + 216));
      v27 = *(v18 + 220);
      v28 = v25 > v26 && v27 <= 3;
      if (v28)
      {
        if (*(v18 + 4 * v27 + 248))
        {
          v29 = atomic_load((v18 + 228));
          v27 = *(v18 + 220);
          if (v29 > 10 * v27 && MEMORY[0xFFFFFC030] <= 0x32u)
          {
            *(v18 + 220) = ++v27;
            atomic_store(0, (v18 + 228));
            atomic_store(0, (v18 + 216));
          }
        }
      }

      v30 = v18 + 272;
      if (*(v18 + 272 + 48 * v27 - 32))
      {
        if (v27 >= 4)
        {
          v31 = v27;
          v32 = (v18 + 48 * v27 + 240);
          while (1)
          {
            v28 = v31-- < 1;
            if (v28)
            {
              break;
            }

            v33 = *v32;
            v32 -= 12;
            if (!v33)
            {
              v27 = v31;
              goto LABEL_116;
            }
          }

LABEL_117:
          pthread_rwlock_unlock((v18 + 8));
          goto LABEL_118;
        }

        goto LABEL_113;
      }

      --v27;
    }

    else
    {
      v27 = 2;
      *(v18 + 220) = 2;
      v30 = v18 + 272;
      if (*(v18 + 336))
      {
LABEL_113:
        *(v18 + 220) = v27 + 1;
        atomic_store(0, (v18 + 228));
        atomic_store(0, (v18 + 216));
        goto LABEL_116;
      }

      v27 = 1;
    }

LABEL_116:
    memset(buf, 0, 28);
    v76 = v30 + 48 * v27;
    v78 = *v76;
    v77 = *(v76 + 8);
    v79 = *(v76 + 16);
    v80 = *(v76 + 20);
    *&buf[12] = *(v76 + 32);
    *buf = v80;
    if (!v79)
    {
      v91 = v27;
      if (v77)
      {
        free(v77);
      }

      *(v18 + 4 * v91 + 252) = a3;
      *v76 = v17;
      *(v76 + 8) = 0;
      *(v76 + 16) = 0;
      v92 = *&buf[16];
      *(v76 + 20) = *buf;
      *(v76 + 24) = 0;
      *(v76 + 32) = 0;
      *(v76 + 36) = v92;
      *(v76 + 40) = 0;
      db_cache_mru(v18, v91);
      pthread_rwlock_unlock((v18 + 8));
      v89 = v78;
      goto LABEL_130;
    }

    goto LABEL_117;
  }

LABEL_134:
  v90 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_get_field_by_id(int *a1, uint64_t a2, int *a3, unint64_t *a4, unint64_t *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *a1;
      *buf = 136315650;
      v22 = "db_get_field_by_id";
      v23 = 1024;
      v24 = 371;
      v25 = 1024;
      v26 = v17;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v15;
    v18 = __si_assert_copy_extra_332();
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 371, v20);
    free(v19);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (a3)
  {
    v5 = *(a2 + 12);
    if (v5 >= 0x31 && *a3)
    {
      v6 = a2 + v5;
      v7 = a2 + 48;
LABEL_6:
      v8 = a3 + 1;
      v9 = *a3;
      while (*(v7 + 4) != v9)
      {
        v10 = *v8++;
        v9 = v10;
        if (!v10)
        {
          v7 += *(v7 + 8) + 13;
          if (v7 < v6)
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }
      }

      if (a4)
      {
        *a4 = v7;
      }

      result = 0;
      if (a5)
      {
        v12 = v7 + 13;
        goto LABEL_19;
      }
    }

    else
    {
LABEL_10:
      if (a4)
      {
        *a4 = 0;
      }

      result = 2;
      if (a5)
      {
        v12 = 0;
LABEL_19:
        *a5 = v12;
      }
    }
  }

  else
  {
    result = 2;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL BOOLValueForDBOProperty(int *a1, uint64_t a2, char *a3)
{
  v4 = 0;
  v5 = 0;
  return !db_get_field(a1, a2, a3, &v4, &v5) && *v5 != 0;
}

uint64_t db_get_field(int *a1, uint64_t a2, char *__s, unint64_t *a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_get_field";
      *&buf[12] = 1024;
      *&buf[14] = 368;
      v26 = 1024;
      v27 = v21;
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v19;
    v22 = __si_assert_copy_extra_332();
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 368, v24);
    free(v23);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *buf = 0;
  *&buf[8] = 0;
  v8 = internal_copy_field_ids(a1, __s, buf, 4uLL, 0);
  if (v8)
  {
    v9 = *(a2 + 12);
    if (v9 >= 0x31 && *v8)
    {
      v10 = a2 + v9;
      v11 = a2 + 48;
      while (2)
      {
        v12 = 1;
        v13 = *v8;
        do
        {
          if (*(v11 + 4) == v13)
          {
            if (a4)
            {
              *a4 = v11;
            }

            if (a5)
            {
              *a5 = v11 + 13;
            }

            v14 = 0;
            v15 = 0;
            goto LABEL_21;
          }

          v13 = v8[v12++];
        }

        while (v13);
        v11 += *(v11 + 8) + 13;
        if (v11 < v10)
        {
          continue;
        }

        break;
      }
    }

    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      *a5 = 0;
    }

    v14 = 2;
    v15 = 2;
LABEL_21:
    if (buf != v8)
    {
      free(v8);
      v15 = v14;
    }
  }

  else
  {
    v15 = 2;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t data_map32_get_data(uint64_t a1, unsigned int a2, void *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  if (_data_map32_rdlock(a1))
  {
LABEL_2:
    if (a3)
    {
      *a3 = 0;
    }

    result = 0;
    goto LABEL_40;
  }

  v43 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v41 = HIDWORD(v8);
  v42 = v8;
  v39 = v10;
  v40 = v9;
  v11 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v39);
    dropThreadId(v42, 1, add_explicit + 1);
    CICleanUpReset(v42, v40);
    v14 = 0;
    goto LABEL_37;
  }

  if (*(a1 + 220) <= a2)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    buf = 0u;
    v62 = 0u;
    v25 = *__error();
    v26 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 220);
      v33 = fd_name(*(a1 + 1272), &buf, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_offset_entry";
      *&__s[12] = 1024;
      *&__s[14] = 422;
      *&__s[18] = 1024;
      *&__s[20] = a2;
      *&__s[24] = 1024;
      *&__s[26] = v32;
      *&__s[30] = 2048;
      *&__s[32] = a1;
      *&__s[40] = 2080;
      *&__s[42] = v33;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
    }

    *__error() = v25;
  }

  else
  {
    v15 = *(a1 + 1352);
    if (v15)
    {
      v16 = *(v15 + 4 * a2);
      v17 = v16;
      if (v16 != 1)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v18 = *(a1 + 1328);
        if (v18 <= v16)
        {
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          buf = 0u;
          v62 = 0u;
          v27 = *__error();
          v28 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v34 = *(a1 + 1328);
            v35 = fd_name(*(a1 + 1272), &buf, 0x100uLL);
            *__s = 136316418;
            *&__s[4] = "_data_map32_get_data_entry";
            *&__s[12] = 1024;
            *&__s[14] = 446;
            *&__s[18] = 2048;
            *&__s[20] = v17;
            *&__s[28] = 2048;
            *&__s[30] = v34;
            *&__s[38] = 2048;
            *&__s[40] = a1;
            *&__s[48] = 2080;
            *&__s[50] = v35;
            _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", __s, 0x3Au);
          }

          *__error() = v27;
          v24 = 0;
        }

        else
        {
          data_entry_restore_32(*(a1 + 1320), v16, v18, &v44, &v46);
          if (v46 == 1)
          {
            v86 = 0;
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            memset(__s, 0, sizeof(__s));
            v19 = v17;
            v20 = 5;
            do
            {
              if (v19 >= *(a1 + 1328))
              {
                break;
              }

              v21 = strlen(__s);
              sprintf(&__s[v21], "%d ", *(*(a1 + 1320) + v19++));
              --v20;
            }

            while (v20);
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            buf = 0u;
            v62 = 0u;
            v22 = *__error();
            v23 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v36 = fd_name(*(a1 + 1272), &buf, 0x100uLL);
              v37 = *(a1 + 1328);
              *v47 = 136316674;
              v48 = "_data_map32_get_data_entry";
              v49 = 1024;
              v50 = 442;
              v51 = 2080;
              v52 = v36;
              v53 = 2048;
              v54 = v17;
              v55 = 2048;
              v56 = v37;
              v57 = 2048;
              v58 = v44;
              v59 = 2080;
              v60 = __s;
              _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", v47, 0x44u);
            }

            *__error() = v22;
            v24 = 0;
          }

          else
          {
            if (a3)
            {
              *a3 = (v44 - *(a1 + 224));
            }

            if (*(a1 + 1448))
            {
              os_unfair_lock_lock((a1 + 1444));
              v38 = *(a1 + 1448);
              if (v38)
              {
                bit_vector_set_13535(v38, a2);
              }

              os_unfair_lock_unlock((a1 + 1444));
            }

            v24 = v45 + *(a1 + 224);
          }
        }

        v14 = v24;
        goto LABEL_34;
      }
    }
  }

  v14 = 0;
LABEL_34:
  v43 = 1;
  v29 = threadData[9 * v42 + 1] + 320 * v41;
  *(v29 + 312) = v12;
  v30 = *(v29 + 232);
  if (v30)
  {
    v30(*(v29 + 288));
  }

  dropThreadId(v42, 0, add_explicit + 1);
LABEL_37:
  if ((v43 & 1) == 0)
  {
    *(a1 + 1464) = 22;
  }

  _data_map32_unlock(a1);
  result = v14;
  if (!v14)
  {
    goto LABEL_2;
  }

LABEL_40:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void __si_set_error_str(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, a2, &a9);
  _si_set_error_str(v10[0], a1);
  free(v10[0]);
}

void _si_set_error_str(const char *a1, int a2)
{
  if (!a1 && !a2)
  {
    return;
  }

  if (!__si_error_str_key)
  {
    if (!a1)
    {
      return;
    }

    pthread_key_create(&__si_error_str_key, MEMORY[0x1E69E9B38]);
    v5 = 0;
    v6 = __si_error_str_key;
LABEL_10:
    v7 = strdup(a1);
    goto LABEL_11;
  }

  v4 = pthread_getspecific(__si_error_str_key);
  v5 = v4;
  if (!a2 && v4)
  {
    return;
  }

  v6 = __si_error_str_key;
  if (a1)
  {
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:
  if (pthread_setspecific(v6, v7) != -1)
  {
    free(v5);
  }

  _si_set_rebuild_reason(a1, 0, a2);
}

void _si_set_rebuild_reason(const char *a1, int a2, int a3)
{
  v5 = a3 | a2;
  if (!a1 && !v5)
  {
    return;
  }

  if (!__si_index_rebuild_reason_key)
  {
    if (!a1)
    {
      return;
    }

    pthread_key_create(&__si_index_rebuild_reason_key, MEMORY[0x1E69E9B38]);
    v7 = 0;
LABEL_10:
    v9 = strlen(a1);
    if (a2)
    {
      v8 = malloc_type_malloc(v9 + 15, 0x43C0DE80uLL);
      strcpy(v8, "Intentional: ");
    }

    else
    {
      v8 = malloc_type_malloc(v9 + 9, 0xC43B03D8uLL);
      *v8 = 0x203A726F727245;
    }

    strcat(v8, a1);
    goto LABEL_14;
  }

  v6 = pthread_getspecific(__si_index_rebuild_reason_key);
  v7 = v6;
  if (!v5 && v6)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_10;
  }

  v8 = 0;
LABEL_14:
  if (pthread_setspecific(__si_index_rebuild_reason_key, v8) == -1)
  {
    if (!v8)
    {
      return;
    }

    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  free(v10);
}

_DWORD *si_getLiveIndex(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    v3 = __si_assert_copy_extra_661(-1);
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10525, "indexSet->indexCount", v5);
LABEL_15:
    free(v4);
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

  result = *(*a1 + 8 * (v1 - 1));
  if (!result)
  {
    v6 = __si_assert_copy_extra_661(-1);
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10526, "indexSet->index[indexSet->indexCount-1]", v8);
    free(v7);
    if (__valid_fs(-1))
    {
      v9 = 2989;
    }

    else
    {
      v9 = 3072;
    }

    *v9 = -559038737;
    abort();
  }

  if (*result != -1163003219)
  {
    v10 = __si_assert_copy_extra_661(-1);
    v4 = v10;
    v11 = "";
    if (v10)
    {
      v11 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10527, "ContentIndexValidIndex(indexSet->index[indexSet->indexCount-1])", v11);
    goto LABEL_15;
  }

  return result;
}

void inflateDBFData(uint64_t a1, unsigned int **a2, uint64_t a3, int a4, gid_t a5, void *a6, uint64_t a7, unint64_t a8, __int16 a9, uint64_t a10)
{
  v10 = a6;
  v12 = a4;
  v14 = a10;
  v277 = *MEMORY[0x1E69E9840];
  v15 = *a2;
  v16 = *a2 + a3;
  *(v16 + 2) = 0;
  if (!a4)
  {
    LOWORD(v17) = *(v16 + 1) | 0x400;
    *(v16 + 1) = v17;
    v32 = 1;
    goto LABEL_41;
  }

  if (a4 == 15)
  {
    v26 = *(v16 + 1);
    *(v16 + 1) = v26 | 0x10;
    *v16 = 11;
    if ((a5 & 3) == 2)
    {
      if (a9 < 0)
      {
        *(v16 + 1) = v26 | 0x8030;
        v60 = *a6;
        v61 = *a6 + 1;
        v62 = (a7 + *a6);
        v63 = *v62;
        if (*v62 < 0)
        {
          if (v63 > 0xBF)
          {
            if (v63 > 0xDF)
            {
              if (v63 > 0xEF)
              {
                v63 = *(a7 + v61);
                v61 = v60 + 5;
              }

              else
              {
                v63 = ((v63 & 0xF) << 24) | (*(a7 + v61) << 16) | (v62[2] << 8) | v62[3];
                v61 = v60 + 4;
              }
            }

            else
            {
              v63 = ((v63 & 0x1F) << 16) | (*(a7 + v61) << 8) | v62[2];
              v61 = v60 + 3;
            }
          }

          else
          {
            v64 = *(a7 + v61) | ((v63 & 0x3F) << 8);
            v61 = v60 + 2;
            v63 = v64;
          }
        }

        *a6 = v61;
        if (v61 <= a8)
        {
          v164 = v15[2];
          v165 = v15[3];
          v166 = v165 + 4;
          if (v165 + 4 >= v164)
          {
            v167 = (2 * v164);
            do
            {
              v168 = v167;
              v167 *= 2;
            }

            while (v168 <= v166);
            v169 = a2;
            v170 = a1;
            if (a10)
            {
              v171 = (*(a10 + 16))(a10, v15);
            }

            else
            {
              v171 = malloc_type_realloc(v15, v168, 0x96D6F8AuLL);
            }

            v15 = v171;
            v171[2] = v168;
            *v169 = v171;
            v16 = v171 + a3;
            v166 = v171[3] + 4;
            v164 = v168 & 0xFFFFFFFE;
            a1 = v170;
          }

          if (v166 <= v164)
          {
            *(v16 + 13) = v63;
            *v16 = 11;
            *(v16 + 2) = 4;
            LODWORD(v104) = v15[3] + 4;
            goto LABEL_428;
          }

          v217 = a1;
          si_analytics_log_2752("%s:%u: failed assertion '%s' Buffer overflow %ld + %ld > %ld extras:%d type:%d", "ldb.c");
LABEL_438:
          memset(&__src, 0, sizeof(__src));
          v214 = -2;
          v215 = *(v217 + 848);
          if (v215)
          {
            goto LABEL_387;
          }

          goto LABEL_390;
        }

        goto LABEL_437;
      }

      v27 = *a6;
      v28 = *a6 + 1;
      v29 = (a7 + *a6);
      v30 = *v29;
      if (*v29 < 0)
      {
        if (v30 > 0xBF)
        {
          if (v30 > 0xDF)
          {
            if (v30 > 0xEF)
            {
              v30 = *(a7 + v28);
              v28 = v27 + 5;
            }

            else
            {
              v30 = ((v30 & 0xF) << 24) | (*(a7 + v28) << 16) | (v29[2] << 8) | v29[3];
              v28 = v27 + 4;
            }
          }

          else
          {
            v30 = ((v30 & 0x1F) << 16) | (*(a7 + v28) << 8) | v29[2];
            v28 = v27 + 3;
          }
        }

        else
        {
          v31 = *(a7 + v28) | ((v30 & 0x3F) << 8);
          v28 = v27 + 2;
          v30 = v31;
        }
      }

      *a6 = v28;
      if (v28 > a8)
      {
        v217 = a1;
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld");
        goto LABEL_438;
      }

      v145 = a2;
      v146 = a1;
      string_and_length_for_id = get_string_and_length_for_id(a1, 3u, v30, 1);
      if (!string_and_length_for_id)
      {
        goto LABEL_291;
      }

      v148 = *string_and_length_for_id;
      if ((*string_and_length_for_id & 0x80000000) == 0)
      {
        if (*string_and_length_for_id)
        {
          v149 = *string_and_length_for_id;
          v150 = 1;
          LODWORD(v79) = *string_and_length_for_id;
          goto LABEL_284;
        }

        goto LABEL_291;
      }

      if (v148 < 0xC0)
      {
        LODWORD(v79) = string_and_length_for_id[1] | ((v148 & 0x3F) << 8);
        if (v79)
        {
          v150 = 2;
          v149 = string_and_length_for_id[1] | ((v148 & 0x3F) << 8);
          goto LABEL_284;
        }

LABEL_291:
        v160 = *__error();
        v161 = _SILogForLogForCategory(7);
        if (!os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_292;
        }

        v178 = *(v16 + 1);
        v179 = *(v146 + 4);
        __src.st_dev = 136317442;
        *&__src.st_mode = "inflateDBFData";
        WORD2(__src.st_ino) = 1024;
        *(&__src.st_ino + 6) = 1410;
        HIWORD(__src.st_uid) = 1024;
        __src.st_gid = 3;
        LOWORD(__src.st_rdev) = 2048;
        *(&__src.st_rdev + 2) = v30;
        WORD1(__src.st_atimespec.tv_sec) = 1024;
        HIDWORD(__src.st_atimespec.tv_sec) = a5;
        __src.st_atimespec.tv_nsec = 0x8000000000F0400;
        __src.st_mtimespec.tv_sec = v178;
        LOWORD(__src.st_mtimespec.tv_nsec) = 2048;
        *(&__src.st_mtimespec.tv_nsec + 2) = a5;
        WORD1(__src.st_ctimespec.tv_sec) = 2048;
        *(&__src.st_ctimespec.tv_sec + 4) = v179;
        WORD2(__src.st_ctimespec.tv_nsec) = 2080;
        *(&__src.st_ctimespec.tv_nsec + 6) = v146 + 324;
        goto LABEL_298;
      }

      if (v148 >= 0xE0)
      {
        if (v148 > 0xEF)
        {
          LODWORD(v149) = *(string_and_length_for_id + 1);
          if (!v149)
          {
            goto LABEL_291;
          }

          v152 = v149 >> 8;
          v151 = *(string_and_length_for_id + 1);
        }

        else
        {
          v151 = string_and_length_for_id[1];
          v152 = string_and_length_for_id[2];
          LODWORD(v149) = ((v148 & 0xF) << 24) | (v151 << 16) | (v152 << 8) | string_and_length_for_id[3];
          if (!v149)
          {
            goto LABEL_291;
          }
        }

        if (v148 > 0xEF)
        {
          LODWORD(v79) = *(string_and_length_for_id + 1);
          v150 = 5;
        }

        else
        {
          LODWORD(v79) = ((v148 & 0xF) << 24) | (v151 << 16) | (v152 << 8) | string_and_length_for_id[3];
          v150 = 4;
        }
      }

      else
      {
        LODWORD(v149) = ((v148 & 0x1F) << 16) | (string_and_length_for_id[1] << 8) | string_and_length_for_id[2];
        if (!v149)
        {
          goto LABEL_291;
        }

        LODWORD(v79) = ((v148 & 0x1F) << 16) | (string_and_length_for_id[1] << 8) | string_and_length_for_id[2];
        v150 = 3;
      }

      if (!v79)
      {
        v160 = *__error();
        v161 = _SILogForLogForCategory(7);
        if (!os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_292;
        }

        v185 = *(v16 + 1);
        v186 = *(v146 + 4);
        __src.st_dev = 136317442;
        *&__src.st_mode = "inflateDBFData";
        WORD2(__src.st_ino) = 1024;
        *(&__src.st_ino + 6) = 1419;
        HIWORD(__src.st_uid) = 1024;
        __src.st_gid = 3;
        LOWORD(__src.st_rdev) = 2048;
        *(&__src.st_rdev + 2) = v30;
        WORD1(__src.st_atimespec.tv_sec) = 1024;
        HIDWORD(__src.st_atimespec.tv_sec) = a5;
        __src.st_atimespec.tv_nsec = 0x8000000000F0400;
        __src.st_mtimespec.tv_sec = v185;
        LOWORD(__src.st_mtimespec.tv_nsec) = 2048;
        *(&__src.st_mtimespec.tv_nsec + 2) = a5;
        WORD1(__src.st_ctimespec.tv_sec) = 2048;
        *(&__src.st_ctimespec.tv_sec + 4) = v186;
        WORD2(__src.st_ctimespec.tv_nsec) = 2080;
        *(&__src.st_ctimespec.tv_nsec + 6) = v146 + 324;
        goto LABEL_298;
      }

      v149 = v149;
LABEL_284:
      if (v150 > v149)
      {
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld extras:%d type:%d");
      }

      else
      {
        *(v16 + 2) = v79;
        v172 = v15[3];
        v173 = v79;
        v174 = v172 + v79;
        if (v174 >= 0xFFFFFFFF)
        {
          si_analytics_log_2752("%s:%u: failed assertion '%s' Overflow %ld + %ld extras:%d type:%d", "ldb.c", 1425, "(size_t)dbo->used_bytes+(size_t)dbf->data_len < (size_t)UINT32_MAX", v172, v79, a5, 15);
          memset(&__src, 0, sizeof(__src));
          v214 = -2;
          v215 = *(v146 + 848);
          if (v215)
          {
            goto LABEL_387;
          }

          goto LABEL_390;
        }

        v175 = v15[2];
        if (v174 >= v175)
        {
          v176 = (2 * v175);
          do
          {
            v79 = v176;
            v176 *= 2;
          }

          while (v79 <= v174);
          if (a10)
          {
            v177 = (*(a10 + 16))(a10, v15, v15[2], v79);
          }

          else
          {
            v177 = malloc_type_realloc(v15, v79, 0x96D6F8AuLL);
          }

          v15 = v177;
          v177[2] = v79;
          *v145 = v177;
          v173 = *(v177 + a3 + 8);
          v174 = v173 + v177[3];
          v175 = v79 & 0xFFFFFFFE;
          LODWORD(v79) = *(v177 + a3 + 8);
        }

        if (v174 <= v175)
        {
          memcpy(v15 + a3 + 13, &string_and_length_for_id[v150], v173);
LABEL_366:
          LODWORD(v104) = v15[3] + v79;
          goto LABEL_428;
        }

        si_analytics_log_2752("%s:%u: failed assertion '%s' Buffer overflow %ld + %ld > %ld extras:%d type:%d", "ldb.c");
      }

      memset(&__src, 0, sizeof(__src));
      v209 = -2;
      v210 = *(v146 + 848);
      if (!v210)
      {
        goto LABEL_378;
      }

      goto LABEL_375;
    }

    if ((a5 & 1) == 0)
    {
LABEL_46:
      v43 = v15[2];
      v44 = v15[3] + 8;
      if (v44 >= v43)
      {
        v46 = (2 * v43);
        do
        {
          v47 = v46;
          v46 *= 2;
        }

        while (v47 <= v44);
        v49 = a7;
        v50 = a2;
        v51 = a8;
        v52 = a1;
        if (a10)
        {
          v53 = a10;
          v54 = (*(a10 + 16))(a10, v15);
        }

        else
        {
          v53 = 0;
          v54 = malloc_type_realloc(v15, v47, 0x96D6F8AuLL);
        }

        v15 = v54;
        v54[2] = v47;
        a2 = v50;
        *v50 = v54;
        v16 = v54 + a3;
        LODWORD(v43) = v47;
        a1 = v52;
        a8 = v51;
        v10 = a6;
        a7 = v49;
        v14 = v53;
        v12 = a4;
      }

      if (v12 <= 6)
      {
        if (v12 < 3)
        {
          v16[13] = *(a7 + *v10);
          if (v15[3] >= v15[2])
          {
            v254 = v15[2];
            v217 = a1;
            si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld <= %ld, extras:%d type:%d");
            goto LABEL_438;
          }

          v85 = *v10 + 1;
          *v10 = v85;
          if (v85 <= a8)
          {
            LODWORD(v79) = 1;
LABEL_365:
            *(v16 + 2) = v79;
            goto LABEL_366;
          }
        }

        else
        {
          if ((v12 - 3) >= 2)
          {
            if ((v12 - 5) >= 2)
            {
              goto LABEL_104;
            }

LABEL_80:
            if (v15[3] + 4 <= v43)
            {
              v80 = *v10;
              v81 = *v10 + 1;
              v82 = (a7 + *v10);
              v83 = *v82;
              if (*v82 < 0)
              {
                if (v83 > 0xBF)
                {
                  if (v83 > 0xDF)
                  {
                    if (v83 > 0xEF)
                    {
                      v83 = *(a7 + v81);
                      v81 = v80 + 5;
                    }

                    else
                    {
                      v83 = ((v83 & 0xF) << 24) | (*(a7 + v81) << 16) | (v82[2] << 8) | v82[3];
                      v81 = v80 + 4;
                    }
                  }

                  else
                  {
                    v83 = ((v83 & 0x1F) << 16) | (*(a7 + v81) << 8) | v82[2];
                    v81 = v80 + 3;
                  }
                }

                else
                {
                  v84 = *(a7 + v81) | ((v83 & 0x3F) << 8);
                  v81 = v80 + 2;
                  v83 = v84;
                }
              }

              *v10 = v81;
              *(v16 + 13) = v83;
              if (v81 <= a8)
              {
                LODWORD(v79) = 4;
                goto LABEL_365;
              }

              goto LABEL_437;
            }

            v249 = v15[3] + 4;
LABEL_433:
            v218 = a1;
            si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld <= %ld extras:%d type:%d");
            goto LABEL_441;
          }

          if (v15[3] + 2 > v43)
          {
            v250 = v15[3] + 2;
            goto LABEL_433;
          }

          v86 = *v10;
          v87 = *v10 + 1;
          v88 = (a7 + *v10);
          v89 = *v88;
          if (*v88 < 0)
          {
            if (v89 > 0xBF)
            {
              if (v89 >= 0xE0)
              {
LABEL_412:
                v237 = __si_assert_copy_extra_2708(0);
                v238 = v237;
                v239 = "";
                if (v237)
                {
                  v239 = v237;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v239);
                free(v238);
                if (__valid_fs(-1))
                {
                  goto LABEL_380;
                }

                v213 = 3072;
                goto LABEL_382;
              }

              LOWORD(v89) = v88[2] | (*(a7 + v87) << 8);
              v87 = v86 + 3;
            }

            else
            {
              v90 = *(a7 + v87) | ((v89 & 0x3F) << 8);
              v87 = v86 + 2;
              LOWORD(v89) = v90;
            }
          }

          *v10 = v87;
          *(v16 + 13) = v89;
          if (v87 <= a8)
          {
            LODWORD(v79) = 2;
            goto LABEL_365;
          }
        }

        v218 = a1;
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld extras:%d type:%d");
        goto LABEL_441;
      }

      if (v12 > 9)
      {
        v79 = 8;
        if (v12 == 10 || v12 == 12)
        {
          goto LABEL_326;
        }

        if (v12 != 15)
        {
LABEL_104:
          v99 = *v10;
          v100 = *v10 + 1;
          v101 = (a7 + *v10);
          v102 = *v101;
          if (*v101 < 0)
          {
            if (v102 > 0xBF)
            {
              if (v102 > 0xDF)
              {
                if (v102 > 0xEF)
                {
                  v102 = *(a7 + v100);
                  v100 = v99 + 5;
                }

                else
                {
                  v102 = ((v102 & 0xF) << 24) | (*(a7 + v100) << 16) | (v101[2] << 8) | v101[3];
                  v100 = v99 + 4;
                }
              }

              else
              {
                v102 = ((v102 & 0x1F) << 16) | (*(a7 + v100) << 8) | v101[2];
                v100 = v99 + 3;
              }
            }

            else
            {
              v103 = *(a7 + v100) | ((v102 & 0x3F) << 8);
              v100 = v99 + 2;
              v102 = v103;
            }
          }

          *v10 = v100;
          v79 = v102;
LABEL_326:
          v187 = v79 + v15[3];
          if (v187 >= v43)
          {
            v266 = v10;
            v188 = a3;
            v189 = (2 * v43);
            do
            {
              v190 = v189;
              v189 *= 2;
            }

            while (v190 <= v187);
            v191 = a7;
            v192 = a2;
            v193 = a8;
            v194 = a1;
            if (v14)
            {
              v195 = v14;
              v196 = (*(v14 + 16))(v14, v15, v43, v190);
            }

            else
            {
              v195 = 0;
              v196 = malloc_type_realloc(v15, v190, 0x96D6F8AuLL);
            }

            v15 = v196;
            v196[2] = v190;
            a2 = v192;
            *v192 = v196;
            v16 = v196 + v188;
            a1 = v194;
            a8 = v193;
            a7 = v191;
            v14 = v195;
            v10 = v266;
          }

          v197 = *v10;
          if (*v10 + v79 > a8)
          {
            v222 = a1;
            v223 = a2;
            v224 = a8;
            v225 = a7;
            v226 = v14;
            hexdumpDBOBuffer(a7, a8);
            v227 = v10;
            v228 = v222;
            v229 = v222;
            v230 = v225;
            v231 = v225;
            v232 = v224;
            v233 = v224;
            v234 = v227;
            if (matchingCorruptObjMissingParentSysObj(v229, v15, v231, v233, v227, v79, v223, v226))
            {
              v235 = *__error();
              v236 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(__src.st_dev) = 0;
                _os_log_impl(&dword_1C278D000, v236, OS_LOG_TYPE_DEFAULT, "##matchingCorruptObjMissingParentSysObj : fixed in-memory object!", &__src, 2u);
              }

              *__error() = v235;
              *v234 = v232;
              goto LABEL_429;
            }

            v197 = *v234;
            a1 = v228;
            v10 = v234;
            a7 = v230;
            if (*v234 + v79 > v232)
            {
              v252 = *v234;
              v217 = a1;
              si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld plus len %ld to fit in size %ld extras:%d type:%d", "ldb.c");
              goto LABEL_438;
            }
          }

          if (v79 + v15[3] > v15[2])
          {
            v253 = v15[3];
            v255 = v15[2];
            v218 = a1;
            si_analytics_log_2752("%s:%u: failed assertion '%s' Expected len %ld plus used_bytes %ld to fit in dbo %ld extras:%d type:%d", "ldb.c");
            goto LABEL_441;
          }

          memcpy(v16 + 13, (a7 + v197), v79);
          *v10 += v79;
          goto LABEL_365;
        }

        goto LABEL_80;
      }

      if ((v12 - 7) >= 2)
      {
        if (v12 == 9)
        {
          v79 = 4;
          goto LABEL_326;
        }

        goto LABEL_104;
      }

      if (v15[3] + 8 > v43)
      {
        v251 = v15[3] + 8;
        v217 = a1;
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld <= %ld extras:%d type:%d");
        goto LABEL_438;
      }

      v73 = *v10;
      v74 = *v10 + 1;
      v75 = (a7 + *v10);
      v76 = *v75;
      if (*v75 < 0)
      {
        v77 = *v75;
        if (v77 > 0xBF)
        {
          if (v77 > 0xDF)
          {
            if (v77 > 0xEF)
            {
              if (v77 > 0xF7)
              {
                if (v77 > 0xFB)
                {
                  if (v77 > 0xFD)
                  {
                    if (v77 == 255)
                    {
                      v76 = *(a7 + v74);
                      v74 = v73 + 9;
                    }

                    else
                    {
                      v76 = (*(a7 + v74) << 48) | (v75[2] << 40) | (v75[3] << 32) | (v75[4] << 24) | (v75[5] << 16) | (v75[6] << 8) | v75[7];
                      v74 = v73 + 8;
                    }
                  }

                  else
                  {
                    v76 = ((v76 & 1) << 48) | (*(a7 + v74) << 40) | (v75[2] << 32) | (v75[3] << 24) | (v75[4] << 16) | (v75[5] << 8) | v75[6];
                    v74 = v73 + 7;
                  }
                }

                else
                {
                  v76 = ((v76 & 3) << 40) | (*(a7 + v74) << 32) | (v75[2] << 24) | (v75[3] << 16) | (v75[4] << 8) | v75[5];
                  v74 = v73 + 6;
                }
              }

              else
              {
                v76 = ((v76 & 7) << 32) | (*(a7 + v74) << 24) | (v75[2] << 16) | (v75[3] << 8) | v75[4];
                v74 = v73 + 5;
              }
            }

            else
            {
              v76 = ((v76 & 0xF) << 24) | (*(a7 + v74) << 16) | (v75[2] << 8) | v75[3];
              v74 = v73 + 4;
            }
          }

          else
          {
            v76 = ((v76 & 0x1F) << 16) | (*(a7 + v74) << 8) | v75[2];
            v74 = v73 + 3;
          }
        }

        else
        {
          v78 = *(a7 + v74) | ((v76 & 0x3F) << 8);
          v74 = v73 + 2;
          v76 = v78;
        }
      }

      *v10 = v74;
      *(v16 + 13) = v76;
      if (v74 <= a8)
      {
        LODWORD(v79) = 8;
        goto LABEL_365;
      }

LABEL_437:
      v217 = a1;
      si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld extras:%d type:%d");
      goto LABEL_438;
    }

    v33 = *a6;
    v34 = *a6 + 1;
    v35 = (a7 + *a6);
    v36 = *v35;
    if (*v35 < 0)
    {
      if (v36 > 0xBF)
      {
        if (v36 > 0xDF)
        {
          if (v36 > 0xEF)
          {
            v36 = *(a7 + v34);
            v34 = v33 + 5;
          }

          else
          {
            v36 = ((v36 & 0xF) << 24) | (*(a7 + v34) << 16) | (v35[2] << 8) | v35[3];
            v34 = v33 + 4;
          }
        }

        else
        {
          v36 = ((v36 & 0x1F) << 16) | (*(a7 + v34) << 8) | v35[2];
          v34 = v33 + 3;
        }
      }

      else
      {
        v37 = *(a7 + v34) | ((v36 & 0x3F) << 8);
        v34 = v33 + 2;
        v36 = v37;
      }
    }

    v265 = a2;
    *a6 = v34;
    if (v34 > a8)
    {
      goto LABEL_437;
    }

    *&v268[0] = 0;
    if ((a5 & 8) != 0)
    {
      v153 = 2;
    }

    else
    {
      v153 = 4;
    }

    v154 = a1;
    DBFForUniquedValue = getDBFForUniquedValue(a1, v153, v36, v268);
    if (!DBFForUniquedValue)
    {
      v160 = *__error();
      v161 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
      {
LABEL_292:
        *__error() = v160;
        goto LABEL_429;
      }

      v162 = *(v16 + 1);
      v163 = *(v154 + 4);
      __src.st_dev = 136317442;
      *&__src.st_mode = "inflateDBFData";
      WORD2(__src.st_ino) = 1024;
      *(&__src.st_ino + 6) = 1560;
      HIWORD(__src.st_uid) = 1024;
      __src.st_gid = v153;
      LOWORD(__src.st_rdev) = 2048;
      *(&__src.st_rdev + 2) = v36;
      WORD1(__src.st_atimespec.tv_sec) = 1024;
      HIDWORD(__src.st_atimespec.tv_sec) = a5;
      __src.st_atimespec.tv_nsec = 0x8000000000F0400;
      __src.st_mtimespec.tv_sec = v162;
      LOWORD(__src.st_mtimespec.tv_nsec) = 2048;
      *(&__src.st_mtimespec.tv_nsec + 2) = a5;
      WORD1(__src.st_ctimespec.tv_sec) = 2048;
      *(&__src.st_ctimespec.tv_sec + 4) = v163;
      WORD2(__src.st_ctimespec.tv_nsec) = 2080;
      *(&__src.st_ctimespec.tv_nsec + 6) = v154 + 324;
LABEL_298:
      _os_log_error_impl(&dword_1C278D000, v161, OS_LOG_TYPE_ERROR, "%s:%d: Failed to fetch the field for index:%d, nameId:%lu, extras:%d, type:%d, flags:0x%lx(0x%lx), dst->flags:0x%lx, dst->name:%s", &__src, 0x56u);
      goto LABEL_292;
    }

    v156 = DBFForUniquedValue;
    v261 = v36;
    LODWORD(v58) = *DBFForUniquedValue;
    v267 = a5;
    if (*DBFForUniquedValue < 0)
    {
      v158 = v154;
      v159 = a10;
      if (v58 > 0xBF)
      {
        if (v58 > 0xDF)
        {
          if (v58 > 0xEF)
          {
            LODWORD(v58) = *(v156 + 1);
            v157 = 5;
          }

          else
          {
            LODWORD(v58) = ((v58 & 0xF) << 24) | (v156[1] << 16) | (v156[2] << 8) | v156[3];
            v157 = 4;
          }
        }

        else
        {
          LODWORD(v58) = ((v58 & 0x1F) << 16) | (v156[1] << 8) | v156[2];
          v157 = 3;
        }
      }

      else
      {
        v157 = 2;
        LODWORD(v58) = v156[1] | ((v58 & 0x3F) << 8);
      }
    }

    else
    {
      v157 = 1;
      v158 = v154;
      v159 = a10;
    }

    v180 = *&v268[0];
    if (*&v268[0] < v157)
    {
      si_analytics_log_2752("Expected offset %ld to fit in size %ld pc:%d extras:%d type:%d", v157, *&v268[0], *(v158 + 984), v267, 15);
      v159 = a10;
      v158 = v154;
      if ((v267 & 8) == 0)
      {
        goto LABEL_302;
      }
    }

    else if ((v267 & 8) == 0)
    {
LABEL_302:
      v181 = v157 + 1;
      v182 = &v156[v157];
      v183 = v156[v157];
      if (v156[v157] < 0)
      {
        if (v183 > 0xBF)
        {
          if (v183 > 0xDF)
          {
            if (v183 > 0xEF)
            {
              v183 = *&v156[v181];
              v181 = v157 + 5;
            }

            else
            {
              v183 = ((v183 & 0xF) << 24) | (v156[v181] << 16) | (v182[2] << 8) | v182[3];
              v181 = v157 + 4;
            }
          }

          else
          {
            v183 = ((v183 & 0x1F) << 16) | (v156[v181] << 8) | v182[2];
            v181 = v157 + 3;
          }
        }

        else
        {
          v184 = v156[v181] | ((v183 & 0x3F) << 8);
          v181 = v157 + 2;
          v183 = v184;
        }
      }

      if (v180 < v181)
      {
        si_analytics_log_2752("Expected offset %ld to fit in size %ld pc:%d, extras:%d type:%d", v181, v180, *(v158 + 984), v267, 15);
        goto LABEL_429;
      }

      if (v183 != *(v16 + 1))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          v247 = *(v16 + 1);
          v248 = *(v158 + 4);
          *&__src.st_dev = 0x404000802;
          LOWORD(__src.st_ino) = 2048;
          *(&__src.st_ino + 2) = v261;
          HIWORD(__src.st_uid) = 1024;
          __src.st_gid = v267;
          LOWORD(__src.st_rdev) = 1024;
          *(&__src.st_rdev + 2) = 15;
          *(&__src.st_rdev + 3) = 2048;
          __src.st_atimespec.tv_sec = v247;
          LOWORD(__src.st_atimespec.tv_nsec) = 2048;
          *(&__src.st_atimespec.tv_nsec + 2) = v267;
          WORD1(__src.st_mtimespec.tv_sec) = 2048;
          *(&__src.st_mtimespec.tv_sec + 4) = v248;
          WORD2(__src.st_mtimespec.tv_nsec) = 2080;
          *(&__src.st_mtimespec.tv_nsec + 6) = v158 + 324;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Got the wrong field for index:%d, nameId:%lu, extras:%d, type:%d, flags:0x%lx(0x%lx), dst->flags:0x%lx, dst->name:%s", &__src, 0x46u);
        }

        goto LABEL_429;
      }

      if (v181 - v157 > v58)
      {
        si_analytics_log_2752("Expected len %ld to contain new data size %ld - %ld pc:%d extras:%d type:%d", v58, v157, v181, *(v158 + 984), v267, 15);
        goto LABEL_429;
      }

      LODWORD(v58) = v58 - (v181 - v157);
LABEL_418:
      *(v16 + 2) = v58;
      v240 = v15[2];
      v241 = v15[3];
      v242 = v241 + v58;
      if (v242 >= v240)
      {
        v243 = (2 * v240);
        do
        {
          v244 = v243;
          v243 *= 2;
        }

        while (v244 <= v242);
        if (v159)
        {
          v245 = (*(v159 + 16))(v159, v15);
        }

        else
        {
          v245 = malloc_type_realloc(v15, v244, 0x96D6F8AuLL);
        }

        v15 = v245;
        v245[2] = v244;
        *v265 = v245;
        LODWORD(v58) = *(v245 + a3 + 8);
        v241 = v245[3];
        v240 = v244 & 0xFFFFFFFE;
      }

      if (v241 + v58 > v240)
      {
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld + %ld <= %ld extras:%d type:%d", "ldb.c", 1600, "(size_t)dbf->data_len + (size_t)dbo->used_bytes <= (size_t)dbo->size", v58, v241, v240, v267, 15);
        memset(&__src, 0, sizeof(__src));
        v214 = -2;
        v215 = *(v158 + 848);
        if (v215)
        {
          goto LABEL_387;
        }

        goto LABEL_390;
      }

      memcpy(v15 + a3 + 13, &v156[v181], v58);
      goto LABEL_427;
    }

    v181 = v157;
    goto LABEL_418;
  }

  if (a4 != 14)
  {
    *v16 = a4;
    if ((a5 & 3) == 2)
    {
      LOWORD(v17) = *(v16 + 1);
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v17 = *(v16 + 1);
  if ((~v17 & 0x5020) == 0)
  {
    *(v16 + 1) = v17 | 0x10;
    if ((v17 & 8) == 0)
    {
      v275 = 0u;
      v276 = 0u;
      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      v270 = 0u;
      memset(&__src, 0, sizeof(__src));
      v18 = *a6;
      v19 = *a6 + 1;
      *a6 = v19;
      v20 = v18 + *(a7 + v18);
      if (v19 >= v20)
      {
        v58 = 0;
      }

      else
      {
        v21 = 0;
        do
        {
          v22 = v19 + 1;
          v23 = (a7 + v19);
          v24 = *(a7 + v19);
          if (*(a7 + v19) < 0)
          {
            v25 = *(a7 + v19);
            if (v25 > 0xBF)
            {
              if (v25 > 0xDF)
              {
                if (v25 > 0xEF)
                {
                  if (v25 > 0xF7)
                  {
                    if (v25 > 0xFB)
                    {
                      if (v25 > 0xFD)
                      {
                        if (v25 == 255)
                        {
                          v24 = *(a7 + v22);
                          v19 += 9;
                        }

                        else
                        {
                          v24 = (*(a7 + v22) << 48) | (v23[2] << 40) | (v23[3] << 32) | (v23[4] << 24) | (v23[5] << 16) | (v23[6] << 8) | v23[7];
                          v19 += 8;
                        }
                      }

                      else
                      {
                        v24 = ((v24 & 1) << 48) | (*(a7 + v22) << 40) | (v23[2] << 32) | (v23[3] << 24) | (v23[4] << 16) | (v23[5] << 8) | v23[6];
                        v19 += 7;
                      }
                    }

                    else
                    {
                      v24 = ((v24 & 3) << 40) | (*(a7 + v22) << 32) | (v23[2] << 24) | (v23[3] << 16) | (v23[4] << 8) | v23[5];
                      v19 += 6;
                    }
                  }

                  else
                  {
                    v24 = ((v24 & 7) << 32) | (*(a7 + v22) << 24) | (v23[2] << 16) | (v23[3] << 8) | v23[4];
                    v19 += 5;
                  }
                }

                else
                {
                  v24 = ((v24 & 0xF) << 24) | (*(a7 + v22) << 16) | (v23[2] << 8) | v23[3];
                  v19 += 4;
                }
              }

              else
              {
                v24 = ((v24 & 0x1F) << 16) | (*(a7 + v22) << 8) | v23[2];
                v19 += 3;
              }
            }

            else
            {
              v19 += 2;
              v24 = *(a7 + v22) | ((v24 & 0x3F) << 8);
            }
          }

          else
          {
            ++v19;
          }

          if (v21 <= 0x1F)
          {
            *(&__src.st_dev + v21++) = v24;
          }
        }

        while (v19 < v20);
        *a6 = v19;
        v58 = 8 * v21;
      }

      v91 = v15[2];
      v92 = v15[3];
      v93 = v58 + v92;
      if (v58 + v92 >= v91)
      {
        v94 = (2 * v91);
        do
        {
          v95 = v94;
          v94 *= 2;
        }

        while (v95 <= v93);
        v96 = a2;
        v97 = a1;
        if (a10)
        {
          v98 = (*(a10 + 16))(a10, v15);
        }

        else
        {
          v98 = malloc_type_realloc(v15, v95, 0x96D6F8AuLL);
        }

        v15 = v98;
        v98[2] = v95;
        *v96 = v98;
        v16 = v98 + a3;
        v92 = v98[3];
        v93 = v58 + v92;
        v91 = v95 & 0xFFFFFFFE;
        a1 = v97;
      }

      if (v93 <= v91)
      {
        *(v16 + 2) = v58;
        memcpy(v16 + 13, &__src, v58 & 0xFFFFFFF8);
        *v16 = 14;
LABEL_427:
        LODWORD(v104) = v15[3] + v58;
        goto LABEL_428;
      }

      v219 = a1;
      si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld + %ld <= %ld type:%d", "ldb.c", 1350, "sizeof(uint64_t)*vi + (size_t)dbo->used_bytes <= (size_t)dbo->size", 8, v92, v91, 14);
      memset(v268, 0, sizeof(v268));
      v209 = -2;
      v220 = *(v219 + 848);
      if (v220)
      {
        v221 = *(v220 + 44);
        if (v221 >= 0xFFFFFFFE)
        {
          v209 = -2;
        }

        else
        {
          v209 = v221;
        }
      }

      p_src = v268;
      goto LABEL_379;
    }

    v65 = v15[2];
    v66 = v15[3] + 8;
    if (v66 >= v65)
    {
      v67 = (2 * v65);
      do
      {
        v68 = v67;
        v67 *= 2;
      }

      while (v68 <= v66);
      v69 = a7;
      v70 = a2;
      v71 = a1;
      if (a10)
      {
        v72 = (*(a10 + 16))(a10, v15);
      }

      else
      {
        v72 = malloc_type_realloc(v15, v68, 0x96D6F8AuLL);
      }

      v15 = v72;
      v72[2] = v68;
      *v70 = v72;
      v16 = v72 + a3;
      v66 = v72[3] + 8;
      v65 = v68 & 0xFFFFFFFE;
      a1 = v71;
      a7 = v69;
    }

    if (v66 <= v65)
    {
      v130 = *v10;
      v131 = *v10 + 1;
      v132 = (a7 + *v10);
      v133 = *v132;
      if (*v132 < 0)
      {
        v134 = *v132;
        if (v134 > 0xBF)
        {
          if (v134 > 0xDF)
          {
            if (v134 > 0xEF)
            {
              if (v134 > 0xF7)
              {
                if (v134 > 0xFB)
                {
                  if (v134 > 0xFD)
                  {
                    if (v134 == 255)
                    {
                      v133 = *(a7 + v131);
                      v131 = v130 + 9;
                    }

                    else
                    {
                      v133 = (*(a7 + v131) << 48) | (v132[2] << 40) | (v132[3] << 32) | (v132[4] << 24) | (v132[5] << 16) | (v132[6] << 8) | v132[7];
                      v131 = v130 + 8;
                    }
                  }

                  else
                  {
                    v133 = ((v133 & 1) << 48) | (*(a7 + v131) << 40) | (v132[2] << 32) | (v132[3] << 24) | (v132[4] << 16) | (v132[5] << 8) | v132[6];
                    v131 = v130 + 7;
                  }
                }

                else
                {
                  v133 = ((v133 & 3) << 40) | (*(a7 + v131) << 32) | (v132[2] << 24) | (v132[3] << 16) | (v132[4] << 8) | v132[5];
                  v131 = v130 + 6;
                }
              }

              else
              {
                v133 = ((v133 & 7) << 32) | (*(a7 + v131) << 24) | (v132[2] << 16) | (v132[3] << 8) | v132[4];
                v131 = v130 + 5;
              }
            }

            else
            {
              v133 = ((v133 & 0xF) << 24) | (*(a7 + v131) << 16) | (v132[2] << 8) | v132[3];
              v131 = v130 + 4;
            }
          }

          else
          {
            v133 = ((v133 & 0x1F) << 16) | (*(a7 + v131) << 8) | v132[2];
            v131 = v130 + 3;
          }
        }

        else
        {
          v135 = *(a7 + v131) | ((v133 & 0x3F) << 8);
          v131 = v130 + 2;
          v133 = v135;
        }
      }

      *v10 = v131;
      *(v16 + 13) = v133;
      *(v16 + 2) = 8;
      *v16 = 14;
      LODWORD(v104) = v15[3] + 8;
      goto LABEL_428;
    }

    v218 = a1;
    si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld + %ld <= %ld");
LABEL_441:
    memset(&__src, 0, sizeof(__src));
    v209 = -2;
    v210 = *(v218 + 848);
    if (!v210)
    {
      goto LABEL_378;
    }

    goto LABEL_375;
  }

  v32 = 14;
LABEL_41:
  *v16 = v32;
  if ((a5 & 3) != 2)
  {
LABEL_45:
    if (a5)
    {
      v55 = *a6;
      v56 = *a6 + 1;
      v57 = (a7 + *a6);
      LODWORD(v58) = *v57;
      v262 = a1;
      if (*v57 < 0)
      {
        if (v58 > 0xBF)
        {
          if (v58 > 0xDF)
          {
            if (v58 > 0xEF)
            {
              LODWORD(v58) = *(a7 + v56);
              v56 = v55 + 5;
            }

            else
            {
              LODWORD(v58) = ((v58 & 0xF) << 24) | (*(a7 + v56) << 16) | (v57[2] << 8) | v57[3];
              v56 = v55 + 4;
            }
          }

          else
          {
            LODWORD(v58) = ((v58 & 0x1F) << 16) | (*(a7 + v56) << 8) | v57[2];
            v56 = v55 + 3;
          }
        }

        else
        {
          v59 = *(a7 + v56) | ((v58 & 0x3F) << 8);
          v56 = v55 + 2;
          LODWORD(v58) = v59;
        }
      }

      *a6 = v56;
      v136 = a3 + 13;
      if (a3 + 13 > v15[2])
      {
        v208 = __si_assert_copy_extra_2708(0);
        v256 = v15[2];
        __message_assert("%s:%u: failed assertion '%s' %s Field outside allocated object (%lu + %lu) > %u extras:%d type:%d", "ldb.c");
      }

      else
      {
        *(v16 + 2) = v58;
        v137 = v15[2];
        v138 = v15[3] + v58;
        if (v138 >= v137)
        {
          v140 = (2 * v137);
          do
          {
            v58 = v140;
            v140 *= 2;
          }

          while (v58 <= v138);
          v141 = a7;
          v142 = a2;
          v143 = a8;
          if (a10)
          {
            v144 = (*(a10 + 16))(a10, v15);
          }

          else
          {
            v144 = malloc_type_realloc(v15, v58, 0x96D6F8AuLL);
          }

          v15 = v144;
          v144[2] = v58;
          *v142 = v144;
          v16 = v144 + a3;
          v139 = *(v144 + a3 + 8);
          v137 = v58 & 0xFFFFFFFE;
          LODWORD(v58) = *(v144 + a3 + 8);
          a8 = v143;
          v10 = a6;
          a7 = v141;
        }

        else
        {
          v139 = v58;
        }

        if (v136 + v139 <= v137)
        {
          if (v56 + v139 > a8)
          {
            si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld plus len %ld to fit in size %ld extras:%d type:%d", a2, "ldb.c");
            goto LABEL_386;
          }

          if (v139 + v15[3] <= v137)
          {
            memcpy(v16 + 13, (a7 + v56), v139);
            *v10 += v139;
            goto LABEL_427;
          }

LABEL_373:
          si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld + %ld <= %ld extras:%d type:%d", "ldb.c");
          goto LABEL_374;
        }

        v208 = __si_assert_copy_extra_2708(0);
        v257 = *(v16 + 2);
        v258 = v15[2];
        __message_assert("%s:%u: failed assertion '%s' %s Field outside allocated object (%lu + %lu + %u) > %u extras:%d type:%d", "ldb.c", 1610);
      }

      free(v208);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    goto LABEL_46;
  }

LABEL_42:
  v262 = a1;
  *(v16 + 1) = v17 | 0x20;
  v38 = *a6;
  v39 = *a6 + 1;
  v40 = (a7 + *a6);
  v41 = *v40;
  if (*v40 < 0)
  {
    if (v41 > 0xBF)
    {
      if (v41 > 0xDF)
      {
        if (v41 > 0xEF)
        {
          v41 = *(a7 + v39);
          v39 = v38 + 5;
        }

        else
        {
          v41 = ((v41 & 0xF) << 24) | (*(a7 + v39) << 16) | (v40[2] << 8) | v40[3];
          v39 = v38 + 4;
        }
      }

      else
      {
        v41 = ((v41 & 0x1F) << 16) | (*(a7 + v39) << 8) | v40[2];
        v39 = v38 + 3;
      }
    }

    else
    {
      v42 = *(a7 + v39) | ((v41 & 0x3F) << 8);
      v39 = v38 + 2;
      v41 = v42;
    }
  }

  *a6 = v39;
  if (v39 > a8)
  {
LABEL_354:
    si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld extras:%d type:%d");
    goto LABEL_374;
  }

  *(v16 + 2) = v41;
  v104 = v15[3];
  v105 = v104 + v41;
  if (v105 >= 0xFFFFFFFF)
  {
    si_analytics_log_2752("%s:%u: failed assertion '%s' Overflow %ld + %ld extras:%d type:%d");
    goto LABEL_374;
  }

  v106 = v15[2];
  if (v105 >= v106)
  {
    v259 = a7;
    v108 = a3;
    v109 = (2 * v106);
    do
    {
      v110 = v109;
      v109 *= 2;
    }

    while (v110 <= v105);
    v112 = a2;
    v113 = a8;
    if (a10)
    {
      v114 = a10;
      v115 = (*(a10 + 16))(a10, v15);
    }

    else
    {
      v114 = 0;
      v115 = malloc_type_realloc(v15, v110, 0x96D6F8AuLL);
    }

    v15 = v115;
    v115[2] = v110;
    a2 = v112;
    *v112 = v115;
    v16 = v115 + v108;
    v104 = v115[3];
    v105 = *(v16 + 2) + v104;
    v106 = v110 & 0xFFFFFFFE;
    v107 = *(v16 + 2);
    a8 = v113;
    v10 = a6;
    a7 = v259;
    v14 = v114;
    v12 = a4;
  }

  else
  {
    v107 = v41;
  }

  if (v105 > v106)
  {
    si_analytics_log_2752("%s:%u: failed assertion '%s' Buffer overflow %ld + %ld > %ld extras:%d type:%d", a2, "ldb.c");
    goto LABEL_386;
  }

  if ((v12 - 9) < 4 || v12 == 14)
  {
    if (v39 + v41 <= a8)
    {
LABEL_124:
      if (v15[3] + v41 <= v15[2])
      {
        memcpy(v16 + 13, (a7 + v39), v41);
        *v10 += v41;
        *(v16 + 2) = v41;
        LODWORD(v104) = v15[3] + v41;
LABEL_428:
        v15[3] = v104;
        goto LABEL_429;
      }

      si_analytics_log_2752("%s:%u: failed assertion '%s' dbo overflow: %ld + %ld > %ld extras:%d type:%d", "ldb.c");
LABEL_374:
      memset(&__src, 0, sizeof(__src));
      v209 = -2;
      v210 = *(v262 + 848);
      if (!v210)
      {
LABEL_378:
        p_src = &__src;
LABEL_379:
        if (!fstatat(v209, "CrystalGlow.created", p_src, 0))
        {
LABEL_380:
          v213 = 2989;
          goto LABEL_382;
        }

        v213 = 2816;
LABEL_382:
        *v213 = -559038737;
        abort();
      }

LABEL_375:
      v211 = *(v210 + 44);
      if (v211 >= 0xFFFFFFFE)
      {
        v209 = -2;
      }

      else
      {
        v209 = v211;
      }

      goto LABEL_378;
    }

    v198 = a2;
    v199 = a8;
    v200 = a7;
    v201 = v14;
    hexdumpDBOBuffer(a7, a8);
    v202 = v200;
    v203 = v200;
    v204 = v199;
    if ((matchingCorruptObjMissingParentSysObj(v262, v15, v203, v199, v10, v41, v198, v201) & 1) == 0)
    {
      v39 = *v10;
      a7 = v202;
      if (*v10 + v41 > v204)
      {
        si_analytics_log_2752("%s:%u: failed assertion '%s' Buffer overflow: %ld + %ld > %ld extras:%d type:%d", v205, "ldb.c");
        goto LABEL_386;
      }

      goto LABEL_124;
    }

    v206 = *__error();
    v207 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__src.st_dev) = 0;
      _os_log_impl(&dword_1C278D000, v207, OS_LOG_TYPE_DEFAULT, "##matchingCorruptObjMissingParentSysObj : fixed in-memory object!", &__src, 2u);
    }

    *__error() = v206;
    *v10 = v199;
  }

  else
  {
    if (!v107)
    {
      goto LABEL_428;
    }

    if (v12 < 9 || v12 == 15)
    {
      v116 = 0;
      v117 = v16 + 13;
      v118 = 1 << v12;
      do
      {
        if ((v118 & 7) != 0)
        {
          if (v15[3] >= v15[2])
          {
            goto LABEL_373;
          }

          v117[v116] = *(a7 + v39);
          v120 = *v10 + 1;
          *v10 = v120;
          if (v120 > a8)
          {
            goto LABEL_354;
          }

          ++v116;
        }

        else if ((v118 & 0x8060) != 0)
        {
          if (v15[3] + 4 > v15[2])
          {
            goto LABEL_373;
          }

          v120 = v39 + 1;
          v123 = a7 + v39;
          v124 = *(a7 + v39);
          if (*(a7 + v39) < 0)
          {
            if (v124 > 0xBF)
            {
              if (v124 > 0xDF)
              {
                if (v124 > 0xEF)
                {
                  v124 = *(a7 + v120);
                  v120 = v39 + 5;
                }

                else
                {
                  v124 = ((v124 & 0xF) << 24) | (*(a7 + v120) << 16) | (*(v123 + 2) << 8) | *(v123 + 3);
                  v120 = v39 + 4;
                }
              }

              else
              {
                v124 = ((v124 & 0x1F) << 16) | (*(a7 + v120) << 8) | *(v123 + 2);
                v120 = v39 + 3;
              }
            }

            else
            {
              v125 = *(a7 + v120) | ((v124 & 0x3F) << 8);
              v120 = v39 + 2;
              v124 = v125;
            }
          }

          *v10 = v120;
          *&v117[v116] = v124;
          if (v120 > a8)
          {
            goto LABEL_354;
          }

          v116 += 4;
        }

        else if ((v118 & 0x18) != 0)
        {
          if (v15[3] + 2 > v15[2])
          {
            goto LABEL_385;
          }

          v120 = v39 + 1;
          v126 = *(a7 + v39);
          if (*(a7 + v39) < 0)
          {
            if (v126 > 0xBF)
            {
              if (v126 >= 0xE0)
              {
                goto LABEL_412;
              }

              LOWORD(v126) = *(a7 + v39 + 2) | (*(a7 + v120) << 8);
              v120 = v39 + 3;
            }

            else
            {
              v127 = *(a7 + v120) | ((v126 & 0x3F) << 8);
              v120 = v39 + 2;
              LOWORD(v126) = v127;
            }
          }

          *v10 = v120;
          *&v117[v116] = v126;
          if (v120 > a8)
          {
            si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld extras:%d type:%d", a2);
            goto LABEL_386;
          }

          v116 += 2;
        }

        else
        {
          if (v15[3] + 8 > v15[2])
          {
LABEL_385:
            si_analytics_log_2752("%s:%u: failed assertion '%s' Expected %ld + %ld <= %ld extras:%d type:%d", a2, "ldb.c");
LABEL_386:
            memset(&__src, 0, sizeof(__src));
            v214 = -2;
            v215 = *(v262 + 848);
            if (v215)
            {
LABEL_387:
              v216 = *(v215 + 44);
              if (v216 >= 0xFFFFFFFE)
              {
                v214 = -2;
              }

              else
              {
                v214 = v216;
              }
            }

LABEL_390:
            if (!fstatat(v214, "CrystalGlow.created", &__src, 0))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xB00] = -559038737;
            abort();
          }

          v120 = v39 + 1;
          v128 = (a7 + v39);
          v121 = *(a7 + v39);
          if (*(a7 + v39) < 0)
          {
            v129 = *(a7 + v39);
            if (v129 <= 0xBF)
            {
              v119 = *(a7 + v120) | ((v121 & 0x3F) << 8);
              v120 = v39 + 2;
              v121 = v119;
            }

            else if (v129 > 0xDF)
            {
              if (v129 > 0xEF)
              {
                if (v129 > 0xF7)
                {
                  if (v129 > 0xFB)
                  {
                    if (v129 > 0xFD)
                    {
                      if (v129 == 255)
                      {
                        v121 = *(a7 + v120);
                        v120 = v39 + 9;
                      }

                      else
                      {
                        v121 = (*(a7 + v120) << 48) | (v128[2] << 40) | (v128[3] << 32) | (v128[4] << 24) | (v128[5] << 16) | (v128[6] << 8) | v128[7];
                        v120 = v39 + 8;
                      }
                    }

                    else
                    {
                      v121 = ((v121 & 1) << 48) | (*(a7 + v120) << 40) | (v128[2] << 32) | (v128[3] << 24) | (v128[4] << 16) | (v128[5] << 8) | v128[6];
                      v120 = v39 + 7;
                    }
                  }

                  else
                  {
                    v121 = ((v121 & 3) << 40) | (*(a7 + v120) << 32) | (v128[2] << 24) | (v128[3] << 16) | (v128[4] << 8) | v128[5];
                    v120 = v39 + 6;
                  }
                }

                else
                {
                  v121 = ((v121 & 7) << 32) | (*(a7 + v120) << 24) | (v128[2] << 16) | (v128[3] << 8) | v128[4];
                  v120 = v39 + 5;
                }
              }

              else
              {
                v121 = ((v121 & 0xF) << 24) | (*(a7 + v120) << 16) | (v128[2] << 8) | v128[3];
                v120 = v39 + 4;
              }
            }

            else
            {
              v121 = ((v121 & 0x1F) << 16) | (*(a7 + v120) << 8) | v128[2];
              v120 = v39 + 3;
            }
          }

          *v10 = v120;
          *&v117[v116] = v121;
          v116 += 8;
        }

        v122 = *(v16 + 2);
        v39 = v120;
      }

      while (v116 < v122);
      LODWORD(v104) = v15[3] + v122;
      goto LABEL_428;
    }
  }

LABEL_429:
  v246 = *MEMORY[0x1E69E9840];
}

uint64_t _inflateDBO(uint64_t a1, unsigned int *a2, void **a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = 4 * *a2 + 48;
  if (a6)
  {
    v11 = (*(a6 + 16))(a6, 0, 0, v10);
  }

  else
  {
    v11 = malloc_type_malloc(v10, 0xE577F81BuLL);
  }

  v12 = v11;
  *a3 = v11;
  if (*a1 != 1685287992)
  {
    v153 = __si_assert_copy_extra_332();
    v151 = v153;
    v154 = "";
    if (v153)
    {
      v154 = v153;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 464, v154);
    goto LABEL_261;
  }

  v13 = *(a1 + 804);
  *(v11 + 2) = v10;
  *(v11 + 3) = 48;
  *(v11 + 11) = 0;
  v14 = a2 + 1;
  v15 = *(a2 + 4);
  if (a2[1] < 0)
  {
    v23 = *(a2 + 4);
    if (v23 > 0xBF)
    {
      if (v23 > 0xDF)
      {
        if (v23 > 0xEF)
        {
          if (v23 > 0xF7)
          {
            if (v23 > 0xFB)
            {
              if (v23 > 0xFD)
              {
                if (v23 == 255)
                {
                  v15 = *(a2 + 5);
                  v16 = 9;
                }

                else
                {
                  v15 = (*(a2 + 5) << 48) | (*(a2 + 6) << 40) | (*(a2 + 7) << 32) | (*(a2 + 8) << 24) | (*(a2 + 9) << 16) | (*(a2 + 10) << 8) | *(a2 + 11);
                  v16 = 8;
                }
              }

              else
              {
                v15 = ((v15 & 1) << 48) | (*(a2 + 5) << 40) | (*(a2 + 6) << 32) | (*(a2 + 7) << 24) | (*(a2 + 8) << 16) | (*(a2 + 9) << 8) | *(a2 + 10);
                v16 = 7;
              }
            }

            else
            {
              v15 = ((v15 & 3) << 40) | (*(a2 + 5) << 32) | (*(a2 + 6) << 24) | (*(a2 + 7) << 16) | (*(a2 + 8) << 8) | *(a2 + 9);
              v16 = 6;
            }
          }

          else
          {
            v15 = ((v15 & 7) << 32) | (*(a2 + 5) << 24) | (*(a2 + 6) << 16) | (*(a2 + 7) << 8) | *(a2 + 8);
            v16 = 5;
          }
        }

        else
        {
          v15 = ((v15 & 0xF) << 24) | (*(a2 + 5) << 16) | (*(a2 + 6) << 8) | *(a2 + 7);
          v16 = 4;
        }
      }

      else
      {
        v15 = ((v15 & 0x1F) << 16) | (*(a2 + 5) << 8) | *(a2 + 6);
        v16 = 3;
      }
    }

    else
    {
      v15 = *(a2 + 5) | ((v15 & 0x3F) << 8);
      v16 = 2;
    }
  }

  else
  {
    v16 = 1;
  }

  v17 = v15;
  v18 = *a2;
  v160 = (a2 + 1);
  *v11 = v17;
  v19 = v16 + 1;
  v20 = v14 + v16;
  v21 = *(v14 + v16);
  if (*(v14 + v16) < 0)
  {
    if (v21 > 0xBF)
    {
      if (v21 > 0xDF)
      {
        if (v21 > 0xEF)
        {
          v24 = *(v160 + v19);
          v19 = v16 + 5;
        }

        else
        {
          v24 = ((v21 & 0xF) << 24) | (*(v160 + v19) << 16) | (v20[2] << 8) | v20[3];
          v19 = v16 + 4;
        }
      }

      else
      {
        v24 = ((v21 & 0x1F) << 16) | (*(v160 + v19) << 8) | v20[2];
        v19 = v16 + 3;
      }
    }

    else
    {
      v24 = *(v160 + v19) | ((v21 & 0x3F) << 8);
      v19 = v16 + 2;
    }

    v22 = v24;
  }

  else
  {
    v22 = *(v14 + v16);
  }

  *(v12 + 10) = v22;
  v25 = v19 + 1;
  v26 = v14 + v19;
  v27 = *(v14 + v19);
  if (*(v14 + v19) < 0)
  {
    v30 = *(v14 + v19);
    if (v30 > 0xBF)
    {
      if (v30 > 0xDF)
      {
        if (v30 > 0xEF)
        {
          if (v30 > 0xF7)
          {
            if (v30 > 0xFB)
            {
              if (v30 > 0xFD)
              {
                if (v30 == 255)
                {
                  v29 = *(v160 + v25);
                  v28 = v19 + 9;
                }

                else
                {
                  v29 = (*(v160 + v25) << 48) | (v26[2] << 40) | (v26[3] << 32) | (v26[4] << 24) | (v26[5] << 16) | (v26[6] << 8) | v26[7];
                  v28 = v19 + 8;
                }
              }

              else
              {
                v29 = ((v27 & 1) << 48) | (*(v160 + v25) << 40) | (v26[2] << 32) | (v26[3] << 24) | (v26[4] << 16) | (v26[5] << 8) | v26[6];
                v28 = v19 + 7;
              }
            }

            else
            {
              v29 = ((v27 & 3) << 40) | (*(v160 + v25) << 32) | (v26[2] << 24) | (v26[3] << 16) | (v26[4] << 8) | v26[5];
              v28 = v19 + 6;
            }
          }

          else
          {
            v29 = ((v27 & 7) << 32) | (*(v160 + v25) << 24) | (v26[2] << 16) | (v26[3] << 8) | v26[4];
            v28 = v19 + 5;
          }
        }

        else
        {
          v29 = ((v27 & 0xF) << 24) | (*(v160 + v25) << 16) | (v26[2] << 8) | v26[3];
          v28 = v19 + 4;
        }
      }

      else
      {
        v29 = ((v27 & 0x1F) << 16) | (*(v160 + v25) << 8) | v26[2];
        v28 = v19 + 3;
      }
    }

    else
    {
      v29 = *(v160 + v25) | ((v27 & 0x3F) << 8);
      v28 = v19 + 2;
    }
  }

  else
  {
    v28 = v19 + 1;
    v29 = v27;
  }

  v12[4] = v29;
  v31 = v28 + 1;
  v32 = v14 + v28;
  v33 = *(v14 + v28);
  if (*(v14 + v28) < 0)
  {
    v36 = *(v14 + v28);
    if (v36 > 0xBF)
    {
      if (v36 > 0xDF)
      {
        if (v36 > 0xEF)
        {
          if (v36 > 0xF7)
          {
            if (v36 > 0xFB)
            {
              if (v36 > 0xFD)
              {
                if (v36 == 255)
                {
                  v35 = *(v160 + v31);
                  v34 = v28 + 9;
                }

                else
                {
                  v35 = (*(v160 + v31) << 48) | (v32[2] << 40) | (v32[3] << 32) | (v32[4] << 24) | (v32[5] << 16) | (v32[6] << 8) | v32[7];
                  v34 = v28 + 8;
                }
              }

              else
              {
                v35 = ((v33 & 1) << 48) | (*(v160 + v31) << 40) | (v32[2] << 32) | (v32[3] << 24) | (v32[4] << 16) | (v32[5] << 8) | v32[6];
                v34 = v28 + 7;
              }
            }

            else
            {
              v35 = ((v33 & 3) << 40) | (*(v160 + v31) << 32) | (v32[2] << 24) | (v32[3] << 16) | (v32[4] << 8) | v32[5];
              v34 = v28 + 6;
            }
          }

          else
          {
            v35 = ((v33 & 7) << 32) | (*(v160 + v31) << 24) | (v32[2] << 16) | (v32[3] << 8) | v32[4];
            v34 = v28 + 5;
          }
        }

        else
        {
          v35 = ((v33 & 0xF) << 24) | (*(v160 + v31) << 16) | (v32[2] << 8) | v32[3];
          v34 = v28 + 4;
        }
      }

      else
      {
        v35 = ((v33 & 0x1F) << 16) | (*(v160 + v31) << 8) | v32[2];
        v34 = v28 + 3;
      }
    }

    else
    {
      v35 = *(v160 + v31) | ((v33 & 0x3F) << 8);
      v34 = v28 + 2;
    }
  }

  else
  {
    v34 = v28 + 1;
    v35 = v33;
  }

  v172 = v34;
  v12[3] = v35;
  v37 = v34 + 1;
  v38 = v14 + v34;
  v39 = *(v14 + v34);
  if (*(v14 + v34) < 0)
  {
    v42 = *(v14 + v34);
    if (v42 > 0xBF)
    {
      if (v42 > 0xDF)
      {
        if (v42 > 0xEF)
        {
          if (v42 > 0xF7)
          {
            if (v42 > 0xFB)
            {
              if (v42 > 0xFD)
              {
                if (v42 == 255)
                {
                  v41 = *(v160 + v37);
                  v40 = v34 + 9;
                }

                else
                {
                  v41 = (*(v160 + v37) << 48) | (v38[2] << 40) | (v38[3] << 32) | (v38[4] << 24) | (v38[5] << 16) | (v38[6] << 8) | v38[7];
                  v40 = v34 + 8;
                }
              }

              else
              {
                v41 = ((v39 & 1) << 48) | (*(v160 + v37) << 40) | (v38[2] << 32) | (v38[3] << 24) | (v38[4] << 16) | (v38[5] << 8) | v38[6];
                v40 = v34 + 7;
              }
            }

            else
            {
              v41 = ((v39 & 3) << 40) | (*(v160 + v37) << 32) | (v38[2] << 24) | (v38[3] << 16) | (v38[4] << 8) | v38[5];
              v40 = v34 + 6;
            }
          }

          else
          {
            v41 = ((v39 & 7) << 32) | (*(v160 + v37) << 24) | (v38[2] << 16) | (v38[3] << 8) | v38[4];
            v40 = v34 + 5;
          }
        }

        else
        {
          v41 = ((v39 & 0xF) << 24) | (*(v160 + v37) << 16) | (v38[2] << 8) | v38[3];
          v40 = v34 + 4;
        }
      }

      else
      {
        v41 = ((v39 & 0x1F) << 16) | (*(v160 + v37) << 8) | v38[2];
        v40 = v34 + 3;
      }
    }

    else
    {
      v41 = *(v160 + v37) | ((v39 & 0x3F) << 8);
      v40 = v34 + 2;
    }
  }

  else
  {
    v40 = v34 + 1;
    v41 = v39;
  }

  v12[2] = v41;
  if ((v22 & 0x80) != 0)
  {
    v44 = v40 + 1;
    v45 = v14 + v40;
    v46 = *(v14 + v40);
    if (*(v14 + v40) < 0)
    {
      if (v46 > 0xBF)
      {
        if (v46 > 0xDF)
        {
          if (v46 > 0xEF)
          {
            v48 = *(v160 + v44);
            v44 = v40 + 5;
          }

          else
          {
            v48 = ((v46 & 0xF) << 24) | (*(v160 + v44) << 16) | (v45[2] << 8) | v45[3];
            v44 = v40 + 4;
          }
        }

        else
        {
          v48 = ((v46 & 0x1F) << 16) | (*(v160 + v44) << 8) | v45[2];
          v44 = v40 + 3;
        }
      }

      else
      {
        v48 = *(v160 + v44) | ((v46 & 0x3F) << 8);
        v44 = v40 + 2;
      }

      v47 = v48;
    }

    else
    {
      v47 = *(v14 + v40);
    }

    v172 = v44;
    *(v12 + 11) = v47;
    v43 = v44;
  }

  else
  {
    v43 = v40;
  }

  v158 = v13;
  v159 = v18;
  v157 = (v13 >> 2) & 1;
  v161 = v14;
  v162 = a4;
  if ((a5 & 0x10000) == 0)
  {
    goto LABEL_112;
  }

  if (*a1 != 1685287992)
  {
LABEL_255:
    v150 = __si_assert_copy_extra_332();
    v151 = v150;
    v152 = "";
    if (v150)
    {
      v152 = v150;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 470, v152);
LABEL_261:
    free(v151);
    goto LABEL_238;
  }

  if ((*(a1 + 804) & 0x14) == 0)
  {
LABEL_112:
    if (v43 >= v18)
    {
      goto LABEL_227;
    }

    v62 = 0;
    v63 = a4 + 4;
    v64 = v43;
    v65 = 0;
    v165 = a1;
    while (1)
    {
      if (a4 && !*(a4 + 4 * v65))
      {
        goto LABEL_227;
      }

      v68 = v64 + 1;
      v69 = v14 + v64;
      v70 = *(v14 + v64);
      if (*(v14 + v64) < 0)
      {
        if (v70 > 0xBF)
        {
          if (v70 > 0xDF)
          {
            if (v70 > 0xEF)
            {
              v72 = *(v160 + v68);
              v68 = v64 + 5;
            }

            else
            {
              v72 = ((v70 & 0xF) << 24) | (*(v160 + v68) << 16) | (v69[2] << 8) | v69[3];
              v68 = v64 + 4;
            }
          }

          else
          {
            v72 = ((v70 & 0x1F) << 16) | (*(v160 + v68) << 8) | v69[2];
            v68 = v64 + 3;
          }
        }

        else
        {
          v72 = *(v160 + v68) | ((v70 & 0x3F) << 8);
          v68 = v64 + 2;
        }

        v71 = v72;
      }

      else
      {
        v71 = *(v14 + v64);
      }

      v74 = *a3;
      v172 = v68;
      if (!v71)
      {
        goto LABEL_227;
      }

      v75 = v71 + v62;
      if (!(v71 + v62))
      {
        v137 = __si_assert_copy_extra_2708(0);
        v138 = v137;
        v139 = "";
        if (v137)
        {
          v139 = v137;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.c", 1908, "field_id!=0", v139);
        free(v138);
        if (__valid_fs(-1))
        {
LABEL_238:
          v140 = 2989;
        }

        else
        {
          v140 = 3072;
        }

LABEL_240:
        *v140 = -559038737;
        abort();
      }

      v62 += v71;
      LOBYTE(v170) = 0;
      field_tags_for_id_locked = db2_get_field_tags_for_id_locked(a1, v75, &v170);
      if (v170)
      {
        goto LABEL_227;
      }

      if (*a1 != 1685287992)
      {
        goto LABEL_255;
      }

      v77 = field_tags_for_id_locked;
      if ((*(a1 + 804) & 0x14) != 0 && !data_map_valid(*(a1 + 880)))
      {
        goto LABEL_227;
      }

      v78 = a3;
      v79 = v77;
      v80 = HIBYTE(v77);
      if (!v162)
      {
        v83 = v65;
        goto LABEL_146;
      }

      if (!*(v162 + 4 * v65))
      {
        goto LABEL_152;
      }

      v81 = *(v162 + 4 * v65);
      v82 = v65;
      while (1)
      {
        if (v81 == v75)
        {
          v83 = v82 + 1;
LABEL_146:
          v84 = v74;
          v85 = v74[2];
          v86 = v74[3];
          v87 = (v86 + 13);
          v74[3] = v87;
          if (v87 >= v85)
          {
            v88 = 2 * v85;
            do
            {
              v89 = v88;
              v88 *= 2;
            }

            while (v89 <= v87);
            if (a6)
            {
              v90 = (*(a6 + 16))();
            }

            else
            {
              v90 = malloc_type_realloc(v84, v89, 0x96D6F8AuLL);
            }

            v90[2] = v89;
            *v78 = v90;
            v84 = v90;
          }

          v91 = HIBYTE(v77);
          v92 = v84 + v86;
          *(v92 + 1) = v75 & 0xFFFFF;
          *(v92 + 1) = 0;
          v92[12] = 0;
          v93 = v84 + v86;
          v94 = (16 * HIBYTE(v77)) & 0x20 | (8 * ((HIBYTE(v77) >> 2) & 1)) & 0xFFFFFC7F | (((HIBYTE(v77) >> 3) & 1) << 8) & 0xFFFFFDFF | ((HIBYTE(v77) & 1) << 7) | (((HIBYTE(v77) >> 6) & 1) << 9);
          v95 = v94;
          if ((v77 & 0x4F00) != 0)
          {
            *(v93 + 1) = v94;
          }

          a4 = v162;
          if ((v158 & 4) != 0)
          {
            if ((v91 & 0x20) != 0)
            {
              v96 = 12288;
            }

            else
            {
              v96 = 4096;
            }

            v97 = v94 | v96;
            *(v93 + 1) = v97;
            if (v79 < 0)
            {
              v73 = v97 | 0x4000;
LABEL_165:
              *(v93 + 1) = v73;
            }
          }

          else
          {
            if ((v91 & 0x20) != 0)
            {
              *(v93 + 1) = v94 | 0x800;
              v95 = v94 | 0x800;
            }

            if (v79 < 0)
            {
              *(v93 + 1) = v95 | 0x1000;
              if ((v79 & 0xFFFF80FF) == 0xFFFF800E)
              {
                v73 = v95 | 0x5000;
                goto LABEL_165;
              }
            }
          }

          v66 = v79;
          a3 = v78;
          inflateDBFData(v165, v78, v86, v66, v80, &v172, v160, v159, a5, a6);
          v67 = v172;
          v65 = v83;
          a1 = v165;
          v14 = v161;
          goto LABEL_116;
        }

        if (v81 > v75)
        {
          break;
        }

        v81 = *(v63 + 4 * v82);
        v65 = ++v82;
        if (!v81)
        {
          goto LABEL_152;
        }
      }

      v65 = v82;
LABEL_152:
      skipDBFData(v77, HIBYTE(v77), &v172, v160, v157);
      v67 = v172;
      if (v172 > v159)
      {
        si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld", "ldb.c", 1946, "*offset <= buffer_size", v172, v159);
        memset(&buf, 0, sizeof(buf));
        v141 = -2;
        v142 = *(a1 + 848);
        if (v142)
        {
          v143 = *(v142 + 44);
          if (v143 >= 0xFFFFFFFE)
          {
            v141 = -2;
          }

          else
          {
            v141 = v143;
          }
        }

        if (!fstatat(v141, "CrystalGlow.created", &buf, 0))
        {
          goto LABEL_238;
        }

        v140 = 2816;
        goto LABEL_240;
      }

      a4 = v162;
      a3 = v78;
      v14 = v161;
      if (!*(v162 + 4 * v65))
      {
        goto LABEL_227;
      }

LABEL_116:
      v64 = v67;
      if (v67 >= v159)
      {
        goto LABEL_227;
      }
    }
  }

  v171 = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v50 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
  v169 = HIDWORD(v50);
  v170 = v50;
  v167 = v52;
  v168 = v51;
  v53 = threadData[9 * v50 + 1] + 320 * HIDWORD(v50);
  *(v53 + 216) = 0;
  v54 = *(v53 + 312);
  v55 = *(v53 + 224);
  if (v55)
  {
    v55(*(v53 + 288));
  }

  v166 = v170;
  if (_setjmp(v53))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.st_dev) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
    }

    *(v53 + 312) = v54;
    if (__THREAD_SLOT_KEY)
    {
      v56 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (v56)
      {
        goto LABEL_106;
      }
    }

    else
    {
      makeThreadId();
      v56 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (v56)
      {
LABEL_106:
        v57 = v56;
        if (v56 < 0x801)
        {
          goto LABEL_107;
        }
      }
    }

    makeThreadId();
    v57 = pthread_getspecific(__THREAD_SLOT_KEY);
LABEL_107:
    v58 = &threadData[9 * v57];
    v60 = *(v58 - 4);
    v59 = (v58 - 2);
    if (v60 > v167)
    {
      v61 = v57 - 1;
      do
      {
        CIOnThreadCleanUpPop(v61);
      }

      while (*v59 > v167);
    }

    dropThreadId(v166, 1, add_explicit + 1);
    CICleanUpReset(v166, v168);
    if (v171)
    {
      goto LABEL_227;
    }

    goto LABEL_228;
  }

  v155 = v54;
  v156 = add_explicit;
  if (v43 >= v159)
  {
    goto LABEL_224;
  }

  v98 = 0;
  v99 = a4 + 4;
  v100 = v43;
  v101 = 0;
  do
  {
    if (a4 && !*(a4 + 4 * v101))
    {
      break;
    }

    v105 = v100 + 1;
    v106 = v14 + v100;
    v107 = *(v14 + v100);
    if (*(v14 + v100) < 0)
    {
      if (v107 > 0xBF)
      {
        if (v107 > 0xDF)
        {
          if (v107 > 0xEF)
          {
            v109 = *(v160 + v105);
            v105 = v100 + 5;
          }

          else
          {
            v109 = ((v107 & 0xF) << 24) | (*(v160 + v105) << 16) | (v106[2] << 8) | v106[3];
            v105 = v100 + 4;
          }
        }

        else
        {
          v109 = ((v107 & 0x1F) << 16) | (*(v160 + v105) << 8) | v106[2];
          v105 = v100 + 3;
        }
      }

      else
      {
        v109 = *(v160 + v105) | ((v107 & 0x3F) << 8);
        v105 = v100 + 2;
      }

      v108 = v109;
    }

    else
    {
      v108 = *(v14 + v100);
    }

    v111 = *a3;
    v172 = v105;
    if (!v108)
    {
      break;
    }

    v112 = v108 + v98;
    if (!(v108 + v98))
    {
      v144 = __si_assert_copy_extra_2708(0);
      v145 = v144;
      v146 = "";
      if (v144)
      {
        v146 = v144;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.c", 1908, "field_id!=0", v146);
      free(v145);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v98 += v108;
    v174[0] = 0;
    v113 = db2_get_field_tags_for_id_locked(a1, v112, v174);
    if (v174[0])
    {
      break;
    }

    if (*a1 != 1685287992)
    {
      goto LABEL_255;
    }

    v114 = v113;
    if ((*(a1 + 804) & 0x14) != 0 && !data_map_valid(*(a1 + 880)))
    {
      break;
    }

    v115 = a3;
    v116 = v114;
    if (!v162)
    {
      v119 = a1;
      v120 = v101;
LABEL_202:
      v121 = v111;
      v122 = v111[2];
      v123 = v111[3];
      v124 = (v123 + 13);
      v111[3] = v124;
      if (v124 >= v122)
      {
        v125 = 2 * v122;
        do
        {
          v126 = v125;
          v125 *= 2;
        }

        while (v126 <= v124);
        if (a6)
        {
          v127 = (*(a6 + 16))();
        }

        else
        {
          v127 = malloc_type_realloc(v121, v126, 0x96D6F8AuLL);
        }

        v127[2] = v126;
        *v115 = v127;
        v121 = v127;
      }

      v128 = HIBYTE(v114);
      v129 = v121 + v123;
      *(v129 + 1) = v112 & 0xFFFFF;
      *(v129 + 1) = 0;
      v129[12] = 0;
      v130 = (16 * HIBYTE(v114)) & 0x20 | (8 * ((HIBYTE(v114) >> 2) & 1)) & 0xFFFFFC7F | (((HIBYTE(v114) >> 3) & 1) << 8) & 0xFFFFFDFF | ((HIBYTE(v114) & 1) << 7) | (((HIBYTE(v114) >> 6) & 1) << 9);
      v131 = v130;
      if ((v114 & 0x4F00) != 0)
      {
        *(v129 + 1) = v130;
      }

      a4 = v162;
      if ((v158 & 4) != 0)
      {
        if ((v128 & 0x20) != 0)
        {
          v132 = 12288;
        }

        else
        {
          v132 = 4096;
        }

        v133 = v130 | v132;
        *(v129 + 1) = v133;
        if ((v116 & 0x80000000) == 0)
        {
          goto LABEL_171;
        }

        v110 = v133 | 0x4000;
      }

      else
      {
        if ((v128 & 0x20) != 0)
        {
          *(v129 + 1) = v130 | 0x800;
          v131 = v130 | 0x800;
        }

        if ((v116 & 0x80000000) == 0)
        {
          goto LABEL_171;
        }

        *(v129 + 1) = v131 | 0x1000;
        if ((v116 & 0xFFFF80FF) != 0xFFFF800E)
        {
          goto LABEL_171;
        }

        v110 = v131 | 0x5000;
      }

      *(v129 + 1) = v110;
LABEL_171:
      v102 = BYTE1(v116);
      v103 = v116;
      a3 = v115;
      inflateDBFData(v119, v115, v123, v103, v102, &v172, v160, v159, a5, a6);
      v104 = v172;
      v101 = v120;
      a1 = v119;
      v14 = v161;
      goto LABEL_172;
    }

    if (!*(v162 + 4 * v101))
    {
      goto LABEL_208;
    }

    v117 = *(v162 + 4 * v101);
    v118 = v101;
    while (1)
    {
      if (v117 == v112)
      {
        v119 = a1;
        v120 = v118 + 1;
        goto LABEL_202;
      }

      if (v117 > v112)
      {
        break;
      }

      v117 = *(v99 + 4 * v118);
      v101 = ++v118;
      if (!v117)
      {
        goto LABEL_208;
      }
    }

    v101 = v118;
LABEL_208:
    skipDBFData(v114, HIBYTE(v114), &v172, v160, v157);
    v104 = v172;
    if (v172 > v159)
    {
      si_analytics_log_2752("%s:%u: failed assertion '%s' Expected offset %ld to fit in size %ld", "ldb.c", 1946, "*offset <= buffer_size", v172, v159);
      memset(&buf, 0, sizeof(buf));
      v147 = -2;
      v148 = *(a1 + 848);
      if (v148)
      {
        v149 = *(v148 + 44);
        if (v149 >= 0xFFFFFFFE)
        {
          v147 = -2;
        }

        else
        {
          v147 = v149;
        }
      }

      if (!fstatat(v147, "CrystalGlow.created", &buf, 0))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xB00] = -559038737;
      abort();
    }

    a4 = v162;
    a3 = v115;
    v14 = v161;
    if (!*(v162 + 4 * v101))
    {
      break;
    }

LABEL_172:
    v100 = v104;
  }

  while (v104 < v159);
LABEL_224:
  v171 = 1;
  v134 = threadData[9 * v166 + 1] + 320 * v169;
  *(v134 + 312) = v155;
  v135 = *(v134 + 232);
  if (v135)
  {
    v135(*(v134 + 288));
  }

  dropThreadId(v166, 0, v156 + 1);
  if (v171)
  {
LABEL_227:
    result = 0;
    *(*a3 + 10) |= 0x100u;
    return result;
  }

LABEL_228:
  free(*a3);
  *a3 = 0;
  return 9;
}

unsigned __int8 *getDBFForUniquedValue(uint64_t a1, unsigned int a2, int a3, void *a4)
{
  result = get_string_and_length_for_id(a1, a2, a3, 1);
  if (result)
  {
    v8 = *result;
    if (*result < 0)
    {
      if (v8 > 0xBF)
      {
        if (v8 > 0xDF)
        {
          if (v8 > 0xEF)
          {
            v8 = *(result + 1);
            v9 = 5;
          }

          else
          {
            v8 = ((v8 & 0xF) << 24) | (result[1] << 16) | (result[2] << 8) | result[3];
            v9 = 4;
          }
        }

        else
        {
          v8 = ((v8 & 0x1F) << 16) | (result[1] << 8) | result[2];
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
        v8 = result[1] | ((v8 & 0x3F) << 8);
      }
    }

    else
    {
      v9 = 1;
    }

    *a4 = v8;
    if (a2 == 4)
    {
      v10 = v9 + 1;
      v11 = &result[v9];
      v12 = result[v9];
      if (result[v9] < 0)
      {
        if (v12 > 0xBF)
        {
          if (v12 > 0xDF)
          {
            if (v12 > 0xEF)
            {
              v12 = *&result[v10];
              v10 = v9 + 5;
            }

            else
            {
              v12 = ((v12 & 0xF) << 24) | (result[v10] << 16) | (v11[2] << 8) | v11[3];
              v10 = v9 + 4;
            }
          }

          else
          {
            v12 = ((v12 & 0x1F) << 16) | (result[v10] << 8) | v11[2];
            v10 = v9 + 3;
          }
        }

        else
        {
          v13 = result[v10] | ((v12 & 0x3F) << 8);
          v10 = v9 + 2;
          v12 = v13;
        }
      }

      if (!v12)
      {
        v14 = __si_assert_copy_extra_2708(*(a1 + 848));
        v15 = v14;
        v16 = "";
        if (v14)
        {
          v16 = v14;
        }

        si_analytics_log_2752("%s:%u: failure log '%s' %s Unexpected field 0 at %ld, dst->flags:0x%lx, dst->name:%s", "ldb.c", 369, "field", v16, v10, *(a1 + 4), (a1 + 324));
        free(v15);
        return 0;
      }
    }
  }

  return result;
}

uint64_t find_slot_for_oid_and_type(uint64_t a1, uint64_t a2, int64_t a3, unsigned int a4, unint64_t *a5, void *a6, int a7)
{
  v14 = *(a1 + 928);
  pthread_rwlock_wrlock((v14 + 8));
  v15 = *(v14 + 220);
  v73 = a6;
  if (v15 < 1)
  {
LABEL_9:
    v19 = 0;
    ++*(v14 + 244);
  }

  else
  {
    v16 = v14 + 272;
    v17 = (v14 + 252);
    while (*v16 != a2 || !*v17)
    {
      ++v17;
      v16 += 48;
      if (!--v15)
      {
        goto LABEL_9;
      }
    }

    v18 = *(v16 + 32) - a4;
    if (v18)
    {
      if (v18 <= 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v16 + 24) - a3 <= 0)
    {
LABEL_8:
      ++*(v14 + 236);
      v19 = *(v16 + 40);
      goto LABEL_10;
    }

    v19 = 0;
    ++*(v14 + 240);
  }

LABEL_10:
  pthread_rwlock_unlock((v14 + 8));
  v20 = (a2 + 20);
  v21 = a2 + 20 + v19;
  v22 = *(a2 + 8);
  v23 = *(v21 + 4);
  if ((*(v21 + 4) & 0x80) != 0)
  {
    if (v23 > 0xBF)
    {
      if (v23 > 0xDF)
      {
        if (v23 > 0xEF)
        {
          if (v23 > 0xF7)
          {
            if (v23 > 0xFB)
            {
              if (v23 > 0xFD)
              {
                if (v23 == 255)
                {
                  v23 = *(v21 + 5);
                  v24 = 9;
                }

                else
                {
                  v23 = (*(v21 + 5) << 48) | (*(v21 + 6) << 40) | (*(v21 + 7) << 32) | (*(v21 + 8) << 24) | (*(v21 + 9) << 16) | (*(v21 + 10) << 8) | *(v21 + 11);
                  v24 = 8;
                }
              }

              else
              {
                v23 = ((v23 & 1) << 48) | (*(v21 + 5) << 40) | (*(v21 + 6) << 32) | (*(v21 + 7) << 24) | (*(v21 + 8) << 16) | (*(v21 + 9) << 8) | *(v21 + 10);
                v24 = 7;
              }
            }

            else
            {
              v23 = ((v23 & 3) << 40) | (*(v21 + 5) << 32) | (*(v21 + 6) << 24) | (*(v21 + 7) << 16) | (*(v21 + 8) << 8) | *(v21 + 9);
              v24 = 6;
            }
          }

          else
          {
            v23 = ((v23 & 7) << 32) | (*(v21 + 5) << 24) | (*(v21 + 6) << 16) | (*(v21 + 7) << 8) | *(v21 + 8);
            v24 = 5;
          }
        }

        else
        {
          v23 = ((v23 & 0xF) << 24) | (*(v21 + 5) << 16) | (*(v21 + 6) << 8) | *(v21 + 7);
          v24 = 4;
        }
      }

      else
      {
        v23 = ((v23 & 0x1F) << 16) | (*(v21 + 5) << 8) | *(v21 + 6);
        v24 = 3;
      }
    }

    else
    {
      v24 = 2;
      v23 = *(v21 + 5) | ((v23 & 0x3F) << 8);
    }
  }

  else
  {
    v24 = 1;
  }

  v25 = (v21 + 4 + v24);
  v26 = *v25;
  if (*v25 < 0)
  {
    if (v26 >= 0xC0)
    {
      if (v26 >= 0xE0)
      {
        goto LABEL_182;
      }

      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    v26 = v25[v27];
  }

  v28 = *(a1 + 804);
  v29 = v28 & (v26 >> 5) & 1;
  if (v19 && v29 > a4)
  {
    v23 = *(a2 + 24);
    if (*(a2 + 24) < 0)
    {
      v31 = *(a2 + 24);
      if (v31 > 0xBF)
      {
        if (v31 > 0xDF)
        {
          if (v31 > 0xEF)
          {
            if (v31 > 0xF7)
            {
              if (v31 > 0xFB)
              {
                if (v31 > 0xFD)
                {
                  if (v31 == 255)
                  {
                    v23 = *(a2 + 25);
                    v30 = 9;
                  }

                  else
                  {
                    v23 = (*(a2 + 25) << 48) | (*(a2 + 26) << 40) | (*(a2 + 27) << 32) | (*(a2 + 28) << 24) | (*(a2 + 29) << 16) | (*(a2 + 30) << 8) | *(a2 + 31);
                    v30 = 8;
                  }
                }

                else
                {
                  v23 = ((v23 & 1) << 48) | (*(a2 + 25) << 40) | (*(a2 + 26) << 32) | (*(a2 + 27) << 24) | (*(a2 + 28) << 16) | (*(a2 + 29) << 8) | *(a2 + 30);
                  v30 = 7;
                }
              }

              else
              {
                v23 = ((v23 & 3) << 40) | (*(a2 + 25) << 32) | (*(a2 + 26) << 24) | (*(a2 + 27) << 16) | (*(a2 + 28) << 8) | *(a2 + 29);
                v30 = 6;
              }
            }

            else
            {
              v23 = ((v23 & 7) << 32) | (*(a2 + 25) << 24) | (*(a2 + 26) << 16) | (*(a2 + 27) << 8) | *(a2 + 28);
              v30 = 5;
            }
          }

          else
          {
            v23 = ((v23 & 0xF) << 24) | (*(a2 + 25) << 16) | (*(a2 + 26) << 8) | *(a2 + 27);
            v30 = 4;
          }
        }

        else
        {
          v23 = ((v23 & 0x1F) << 16) | (*(a2 + 25) << 8) | *(a2 + 26);
          v30 = 3;
        }
      }

      else
      {
        v30 = 2;
        v23 = *(a2 + 25) | ((v23 & 0x3F) << 8);
      }
    }

    else
    {
      v30 = 1;
    }

    v32 = (a2 + 24 + v30);
    v33 = *v32;
    if (*v32 < 0)
    {
      if (v33 >= 0xC0)
      {
        if (v33 >= 0xE0)
        {
LABEL_129:
          v55 = __si_assert_copy_extra_3233(0, -1);
          v56 = v55;
          v57 = "";
          if (v55)
          {
            v57 = v55;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v57);
          free(v56);
          if (__valid_fs(-1))
          {
            v58 = 2989;
          }

          else
          {
            v58 = 3072;
          }

          *v58 = -559038737;
          abort();
        }

        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      v33 = v32[v34];
    }

    v29 = v28 & (v33 >> 5) & 1;
    v21 = a2 + 20;
  }

  v35 = a5;
  v36 = (a2 + v22);
  if (v21 >= a2 + v22)
  {
    i = 0;
    *v35 = v21;
  }

  else
  {
    for (i = 0; ; i = v40)
    {
      v40 = v21;
      if (v29 >= a4 && (v29 != a4 || v23 >= a3))
      {
        break;
      }

      v21 += (*v21 + 4);
      if (v21 >= v36)
      {
        i = v40;
        if (v21 <= v36)
        {
          goto LABEL_93;
        }

LABEL_115:
        if (__valid_fs(-1))
        {
          v51 = __si_assert_copy_extra_3233(0, -1);
          v52 = v51;
          v53 = "";
          if (v51)
          {
            v53 = v51;
          }

          si_analytics_log_2752("%s:%u: failed assertion '%s' %s dbo ends past end of page ([%p, %p] > [%p, %p])", "sdb2.c", 4992, "dbo<=end", v53, i, v21, v20, v36);
          free(v52);
          MEMORY[0xB00] = -559038737;
          abort();
        }

LABEL_186:
        MEMORY[0xC00] = -559038737;
        abort();
      }

      v23 = *(v21 + 4);
      if (*(v21 + 4) < 0)
      {
        v42 = *(v21 + 4);
        if (v42 > 0xBF)
        {
          if (v42 > 0xDF)
          {
            if (v42 > 0xEF)
            {
              if (v42 > 0xF7)
              {
                if (v42 > 0xFB)
                {
                  if (v42 > 0xFD)
                  {
                    if (v42 == 255)
                    {
                      v23 = *(v21 + 5);
                      v41 = 9;
                    }

                    else
                    {
                      v23 = (*(v21 + 5) << 48) | (*(v21 + 6) << 40) | (*(v21 + 7) << 32) | (*(v21 + 8) << 24) | (*(v21 + 9) << 16) | (*(v21 + 10) << 8) | *(v21 + 11);
                      v41 = 8;
                    }
                  }

                  else
                  {
                    v23 = ((v23 & 1) << 48) | (*(v21 + 5) << 40) | (*(v21 + 6) << 32) | (*(v21 + 7) << 24) | (*(v21 + 8) << 16) | (*(v21 + 9) << 8) | *(v21 + 10);
                    v41 = 7;
                  }
                }

                else
                {
                  v23 = ((v23 & 3) << 40) | (*(v21 + 5) << 32) | (*(v21 + 6) << 24) | (*(v21 + 7) << 16) | (*(v21 + 8) << 8) | *(v21 + 9);
                  v41 = 6;
                }
              }

              else
              {
                v23 = ((v23 & 7) << 32) | (*(v21 + 5) << 24) | (*(v21 + 6) << 16) | (*(v21 + 7) << 8) | *(v21 + 8);
                v41 = 5;
              }
            }

            else
            {
              v23 = ((v23 & 0xF) << 24) | (*(v21 + 5) << 16) | (*(v21 + 6) << 8) | *(v21 + 7);
              v41 = 4;
            }
          }

          else
          {
            v23 = ((v23 & 0x1F) << 16) | (*(v21 + 5) << 8) | *(v21 + 6);
            v41 = 3;
          }
        }

        else
        {
          v41 = 2;
          v23 = *(v21 + 5) | ((v23 & 0x3F) << 8);
        }
      }

      else
      {
        v41 = 1;
      }

      v43 = (v21 + 4 + v41);
      v39 = *v43;
      if (*v43 < 0)
      {
        if (v39 < 0xC0)
        {
          v38 = 1;
        }

        else
        {
          if (v39 >= 0xE0)
          {
            goto LABEL_129;
          }

          v38 = 2;
        }

        v39 = v43[v38];
      }

      v29 = v28 & (v39 >> 5) & 1;
    }

    if (v21 > v36)
    {
      goto LABEL_115;
    }

LABEL_93:
    *v35 = v21;
    if (i)
    {
      set_offset_hint(a1, a2, i);
      v44 = 0;
      if (a7 != 2)
      {
        goto LABEL_100;
      }

      goto LABEL_97;
    }
  }

  v44 = 1;
  if (a7 != 2)
  {
    goto LABEL_100;
  }

LABEL_97:
  if (v21 < v36 && v23 == a3)
  {
    return 17;
  }

LABEL_100:
  v47 = v21 < v36 && v23 == a3;
  if (a7 == 1 && !v47)
  {
    return 2;
  }

  if (!v73)
  {
    return 0;
  }

  if (v44)
  {
    v48 = *(a2 + 8);
    if (v48 >= 21)
    {
      v49 = *(a2 + 24);
      if (*(a2 + 24) < 0)
      {
        v54 = *(a2 + 24);
        if (v54 > 0xBF)
        {
          if (v54 > 0xDF)
          {
            if (v54 > 0xEF)
            {
              if (v54 > 0xF7)
              {
                if (v54 > 0xFB)
                {
                  if (v54 > 0xFD)
                  {
                    if (v54 == 255)
                    {
                      v49 = *(a2 + 25);
                      v50 = 9;
                    }

                    else
                    {
                      v49 = (*(a2 + 25) << 48) | (*(a2 + 26) << 40) | (*(a2 + 27) << 32) | (*(a2 + 28) << 24) | (*(a2 + 29) << 16) | (*(a2 + 30) << 8) | *(a2 + 31);
                      v50 = 8;
                    }
                  }

                  else
                  {
                    v49 = ((v49 & 1) << 48) | (*(a2 + 25) << 40) | (*(a2 + 26) << 32) | (*(a2 + 27) << 24) | (*(a2 + 28) << 16) | (*(a2 + 29) << 8) | *(a2 + 30);
                    v50 = 7;
                  }
                }

                else
                {
                  v49 = ((v49 & 3) << 40) | (*(a2 + 25) << 32) | (*(a2 + 26) << 24) | (*(a2 + 27) << 16) | (*(a2 + 28) << 8) | *(a2 + 29);
                  v50 = 6;
                }
              }

              else
              {
                v49 = ((v49 & 7) << 32) | (*(a2 + 25) << 24) | (*(a2 + 26) << 16) | (*(a2 + 27) << 8) | *(a2 + 28);
                v50 = 5;
              }
            }

            else
            {
              v49 = ((v49 & 0xF) << 24) | (*(a2 + 25) << 16) | (*(a2 + 26) << 8) | *(a2 + 27);
              v50 = 4;
            }
          }

          else
          {
            v49 = ((v49 & 0x1F) << 16) | (*(a2 + 25) << 8) | *(a2 + 26);
            v50 = 3;
          }
        }

        else
        {
          v50 = 2;
          v49 = *(a2 + 25) | ((v49 & 0x3F) << 8);
        }
      }

      else
      {
        v50 = 1;
      }

      v59 = (a2 + 24 + v50);
      v60 = *v59;
      if ((*v59 & 0x80000000) == 0)
      {
LABEL_148:
        v62 = 0;
        v63 = a2 + v48;
        while (1)
        {
          i = v62;
          v62 = v20;
          v64 = *(a1 + 804) & (v60 >> 5) & 1;
          if (v64 >= a4 && (v64 != a4 || v49 >= a3))
          {
            break;
          }

          v66 = (*v20 + 4);
          v20 = (v20 + v66);
          if (v62 + v66 >= v63)
          {
            i = v62;
            goto LABEL_180;
          }

          v49 = *(v20 + 4);
          if (v20[1] < 0)
          {
            v68 = *(v20 + 4);
            if (v68 > 0xBF)
            {
              if (v68 > 0xDF)
              {
                if (v68 > 0xEF)
                {
                  if (v68 > 0xF7)
                  {
                    if (v68 > 0xFB)
                    {
                      if (v68 > 0xFD)
                      {
                        if (v68 == 255)
                        {
                          v49 = *(v20 + 5);
                          v67 = 9;
                        }

                        else
                        {
                          v49 = (*(v20 + 5) << 48) | (*(v20 + 6) << 40) | (*(v20 + 7) << 32) | (*(v20 + 8) << 24) | (*(v20 + 9) << 16) | (*(v20 + 10) << 8) | *(v20 + 11);
                          v67 = 8;
                        }
                      }

                      else
                      {
                        v49 = ((v49 & 1) << 48) | (*(v20 + 5) << 40) | (*(v20 + 6) << 32) | (*(v20 + 7) << 24) | (*(v20 + 8) << 16) | (*(v20 + 9) << 8) | *(v20 + 10);
                        v67 = 7;
                      }
                    }

                    else
                    {
                      v49 = ((v49 & 3) << 40) | (*(v20 + 5) << 32) | (*(v20 + 6) << 24) | (*(v20 + 7) << 16) | (*(v20 + 8) << 8) | *(v20 + 9);
                      v67 = 6;
                    }
                  }

                  else
                  {
                    v49 = ((v49 & 7) << 32) | (*(v20 + 5) << 24) | (*(v20 + 6) << 16) | (*(v20 + 7) << 8) | *(v20 + 8);
                    v67 = 5;
                  }
                }

                else
                {
                  v49 = ((v49 & 0xF) << 24) | (*(v20 + 5) << 16) | (*(v20 + 6) << 8) | *(v20 + 7);
                  v67 = 4;
                }
              }

              else
              {
                v49 = ((v49 & 0x1F) << 16) | (*(v20 + 5) << 8) | *(v20 + 6);
                v67 = 3;
              }
            }

            else
            {
              v67 = 2;
              v49 = *(v20 + 5) | ((v49 & 0x3F) << 8);
            }
          }

          else
          {
            v67 = 1;
          }

          v69 = v20 + v67 + 4;
          v60 = *v69;
          if (*v69 < 0)
          {
            if (v60 < 0xC0)
            {
              v60 = v69[1];
            }

            else
            {
              if (v60 >= 0xE0)
              {
                goto LABEL_182;
              }

              v60 = v69[2];
            }
          }
        }

        if (!i)
        {
          goto LABEL_181;
        }

LABEL_180:
        set_offset_hint(a1, a2, i);
        goto LABEL_181;
      }

      if (v60 < 0xC0)
      {
        v61 = 1;
LABEL_147:
        v60 = v59[v61];
        goto LABEL_148;
      }

      if (v60 < 0xE0)
      {
        v61 = 2;
        goto LABEL_147;
      }

LABEL_182:
      v70 = __si_assert_copy_extra_3233(0, -1);
      v71 = v70;
      v72 = "";
      if (v70)
      {
        v72 = v70;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v72);
      free(v71);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      goto LABEL_186;
    }

    i = 0;
  }

LABEL_181:
  result = 0;
  *v73 = i;
  return result;
}

uint64_t page_find_oid_with_flags(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5, void *a6, int a7, uint64_t a8)
{
  v12 = a2;
  v43 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v14 = 16;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 992);
  v16 = v15[1];
  if (!*&v16)
  {
    goto LABEL_20;
  }

  v17 = vcnt_s8(v16);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = a4;
    if (*&v16 <= a4)
    {
      v18 = a4 % *&v16;
    }
  }

  else
  {
    v18 = (*&v16 - 1) & a4;
  }

  v19 = *(*v15 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_20:
    value_out = 0;
    result = _page_fetch_with_fd(a1, &value_out, a2, a3, a7, buf, 0xFFFFFFFFLL, 0);
    if (result)
    {
      goto LABEL_33;
    }

    v23 = *(value_out + 3);
    if ((v23 & 0xF0) != 0)
    {
      v28 = *__error();
      v29 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "page_find_oid_with_flags";
        v39 = 1024;
        v40 = 5913;
        v41 = 1024;
        v42 = v12;
        _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: page_find_oid: ERR: tried to read attr name table data! pgnum 0x%x\n", buf, 0x18u);
      }

      *__error() = v28;
      v30 = __si_assert_copy_extra_3233(0, -1);
      v31 = v30;
      v32 = "";
      if (v30)
      {
        v32 = v30;
      }

      __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5914, v32);
    }

    else
    {
      if ((v23 & 8) == 0)
      {
        *buf = 0;
        slot_for_oid_and_type = find_slot_for_oid_and_type(a1, value_out, a4, a5, buf, 0, 1);
        v25 = value_out;
        if (slot_for_oid_and_type)
        {
          v26 = slot_for_oid_and_type;
          page_release(a1, value_out, v12, v14, 0);
          result = v26;
        }

        else
        {
          *a6 = *buf;
          if (a8)
          {
            result = 0;
            *(a8 + 8) = v14;
            *(a8 + 12) = v12;
            *a8 = v25;
          }

          else
          {
            page_release(a1, v25, v12, v14, 0);
            result = 0;
          }
        }

        goto LABEL_33;
      }

      v33 = *__error();
      v34 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "page_find_oid_with_flags";
        v39 = 1024;
        v40 = 5919;
        v41 = 1024;
        v42 = v12;
        _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: page_find_oid: ERR: page is still compressed! pgnum 0x%x\n", buf, 0x18u);
      }

      *__error() = v33;
      v35 = __si_assert_copy_extra_3233(0, -1);
      v31 = v35;
      v36 = "";
      if (v35)
      {
        v36 = v35;
      }

      __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5920, v36);
    }

    free(v31);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == a4)
    {
      break;
    }

    if (v17.u32[0] > 1uLL)
    {
      if (v21 >= *&v16)
      {
        v21 %= *&v16;
      }
    }

    else
    {
      v21 &= *&v16 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_20;
    }

LABEL_13:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_20;
    }
  }

  if (v20[2] != a4)
  {
    goto LABEL_13;
  }

  if (*(v20 + 6) == 3)
  {
    result = 2;
  }

  else
  {
    result = 0;
    *a6 = v20[4];
  }

  if (a8)
  {
    *a8 = 0;
    *(a8 + 8) = 0;
  }

LABEL_33:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_docIdRewriteCallback(uint64_t result, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = result;
    result = CFArrayGetCount(theArray);
    if (result >= 1)
    {
      v4 = result;
      v5 = 0;
      while (1)
      {
        v6 = *(v3 + 32);
        result = CFArrayGetValueAtIndex(theArray, v5);
        if (v6 >= *(result + 24))
        {
          v7 = *(result + 16);
          v8 = *v7;
          if (*v7 >= 1)
          {
            break;
          }
        }

LABEL_10:
        if (++v5 == v4)
        {
          return result;
        }
      }

      v9 = v7[1];
      while (1)
      {
        v10 = *v9;
        if (v6 > *v9 && v10 + *(v9 + 8) > v6)
        {
          break;
        }

        v9 += 32;
        if (!--v8)
        {
          goto LABEL_10;
        }
      }

      v11 = *(*(v9 + 16) + 4 * (v6 - v10));
      if (v6 != v10 || (v12 = *(result + 32)) == 0)
      {
        if (!v11)
        {
          v13 = -1;
          goto LABEL_18;
        }

        v12 = *(result + 32);
      }

      v13 = v12 + v11;
LABEL_18:
      *(v3 + 32) = v13;
    }
  }

  return result;
}

int *db_validate_obj(int *result)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*result != 1685287992)
  {
    v2 = result;
    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *v2;
      *buf = 136315650;
      v10 = "db_validate_obj";
      v11 = 1024;
      v12 = 327;
      v13 = 1024;
      v14 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v3;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 327, v8);
    free(v7);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t commonHash(int a1, const unsigned __int8 *a2)
{
  v2 = -1759636613;
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 3;
  }

  v4 = &a2[v3 & 0xFFFFFFFC];
  if ((a1 + 3) >= 7)
  {
    v7 = -(v3 >> 2);
    v8 = -1789642873;
    v9 = 718793509;
    do
    {
      v8 = 5 * v8 + 2071795100;
      v9 = 5 * v9 + 1808688022;
      HIDWORD(v10) = v8 * *&v4[4 * v7];
      LODWORD(v10) = HIDWORD(v10);
      v11 = (v10 >> 21) * v9;
      HIDWORD(v10) = v2;
      LODWORD(v10) = v2;
      v2 = v11 ^ (5 * (v10 >> 19) + 1390208809);
    }

    while (!__CFADD__(v7++, 1));
    v6 = 5 * v8 + 2071795100;
    v5 = 5 * v9 + 1808688022;
  }

  else
  {
    v5 = 1107688271;
    v6 = 1713515327;
  }

  v13 = 0;
  if ((a1 & 3u) > 1)
  {
    if ((a1 & 3) != 2)
    {
      v13 = v4[2] << 16;
    }

    v13 |= v4[1] << 8;
  }

  else if ((a1 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v14) = (v13 ^ *v4) * v6;
  LODWORD(v14) = HIDWORD(v14);
  v15 = (v14 >> 21) * v5;
  HIDWORD(v14) = v2;
  LODWORD(v14) = v2;
  v2 = v15 ^ (5 * (v14 >> 19) + 1390208809);
LABEL_17:
  v16 = -1028477387 * ((-2048144789 * (v2 ^ a1)) ^ ((-2048144789 * (v2 ^ a1)) >> 13));
  return v16 ^ HIWORD(v16);
}

uint64_t db_rwlock_wakeup(uint64_t result, char a2, char a3)
{
  v5 = result;
  v6 = (result + 64);
  v7 = 6;
  while (1)
  {
    if ((v7 - 1) <= *(v5 + 192))
    {
      result = *(v5 + 160);
      if (result)
      {
        if ((a2 & 1) == 0)
        {
          *(result + 52) = 1;
          *(v5 + 160) = 0;
          *(v5 + 192) = 0;
          *(v5 + 212) = 0;

          return pthread_cond_signal(result);
        }

        return result;
      }
    }

    v8 = (a2 & 1) != 0 ? 1 : *(v5 + 212);
    v23 = 0uLL;
    v9 = &v6[2 * v7 - 2];
    v10 = *v9;
    if (*v9)
    {
      break;
    }

LABEL_38:
    if (v7-- <= 1)
    {
      return result;
    }
  }

  while (1)
  {
    v11 = *(v10 + 48);
    if (v11 < 3)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 5 && ((a3 & 1) != 0 || *(v5 + 200)))
      {
        goto LABEL_20;
      }

      result = pthread_cond_signal(v10);
      v12 = *v9;
      if (*v9 != v9[1])
      {
        *v9 = *(v12 + 64);
        goto LABEL_25;
      }

      *v9 = 0;
      v9[1] = 0;
      if (v12)
      {
LABEL_25:
        *(v12 + 52) = 1;
        --*(v5 + 208);
      }

      ++*(v5 + 196);
      if (*(v10 + 48) == 5)
      {
        ++*(v5 + 200);
      }

      v8 = 1;
      goto LABEL_34;
    }

    if (*(v5 + 184))
    {
      if (!*(v10 + 56))
      {
        v19 = __si_assert_copy_extra_332();
        v20 = v19;
        v21 = "";
        if (v19)
        {
          v21 = v19;
        }

        __message_assert(v19, "sdb2_rwlock.c", 470, "waiter->threadid", v21);
        free(v20);
        if (__valid_fs(-1))
        {
          v22 = 2989;
        }

        else
        {
          v22 = 3072;
        }

        *v22 = -559038737;
        abort();
      }

      goto LABEL_20;
    }

    result = pthread_cond_signal(v10);
    v14 = *v9;
    if (*v9 != v9[1])
    {
      *v9 = *(v14 + 64);
LABEL_32:
      *(v14 + 52) = 1;
      --*(v5 + 208);
      goto LABEL_33;
    }

    *v9 = 0;
    v9[1] = 0;
    if (v14)
    {
      goto LABEL_32;
    }

LABEL_33:
    *(v5 + 184) = *(v10 + 56);
    v8 = 1;
    *(v5 + 212) = 1;
    a3 = 1;
LABEL_34:
    a2 = 1;
LABEL_35:
    v10 = *v9;
    if (!*v9)
    {
      if (v23)
      {
        *v9 = v23;
      }

      goto LABEL_38;
    }
  }

  if (*(v5 + 200) || *(v5 + 212) == 1)
  {
LABEL_20:
    if (v10 == v9[1])
    {
      v13 = 0;
      v9[1] = 0;
    }

    else
    {
      v13 = *(v10 + 64);
    }

    *v9 = v13;
    result = db_rwlock_waiter_list_enqueue_inner(&v23, v10);
    goto LABEL_35;
  }

  if ((v8 & 1) == 0)
  {
    pthread_cond_signal(v10);
    v16 = *v9;
    if (*v9 != v9[1])
    {
      v17 = *(v16 + 64);
      *v9 = v17;
      goto LABEL_44;
    }

    v17 = 0;
    result = 0;
    *v9 = 0;
    v9[1] = 0;
    if (v16)
    {
LABEL_44:
      *(v16 + 52) = 1;
      --*(v5 + 208);
      result = v17;
    }

    *(v5 + 184) = *(v10 + 56);
    v10 = result;
  }

  if (v23)
  {
    if (v10)
    {
      v18 = v9[1];
      *v9 = v23;
      *(v9[1] + 64) = v10;
      v9[1] = v18;
    }

    else
    {
      *v9 = v23;
    }
  }

  return result;
}

uint64_t _data_map32_rdlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1461))
  {
    lock = 0;
  }

  else
  {
    lock = db_read_lock(a1);
    if (lock)
    {
      v4 = *__error();
      v5 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = lock;
        if (lock == -1)
        {
          v6 = *__error();
        }

        v7 = 136315650;
        v8 = "_data_map32_rdlock";
        v9 = 1024;
        v10 = 300;
        v11 = 1024;
        v12 = v6;
        _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map32_rdlock error %d", &v7, 0x18u);
      }

      *__error() = v4;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return lock;
}

void *internal_copy_field_ids(uint64_t a1, char *__s, void *a3, unint64_t a4, int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 804) & 0x14) != 0)
  {
    v9 = *(a1 + 880);
    v10 = strlen(__s);
    v11 = v10 + 1;
    if (a5)
    {
      locked = data_map_ids_get_locked(v9, __s, v11, a3, a4);
      v13 = locked != 0;
      v14 = locked + 1;
      if (locked)
      {
        v15 = v14 > a4;
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
LABEL_24:
        v17 = a3;
        goto LABEL_25;
      }

      v16 = locked + 1;
      v17 = a3;
      do
      {
        if (v17 == a3)
        {
          v18 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
        }

        else
        {
          v18 = malloc_type_realloc(v17, 4 * v14, 0x100004052888210uLL);
        }

        v17 = v18;
        locked = data_map_ids_get_locked(v9, __s, v10 + 1, v18, v16);
        v13 = locked != 0;
        if (!locked)
        {
          break;
        }

        v16 = locked + 1;
        v19 = v14 >= v16;
        v14 = v16;
      }

      while (!v19);
    }

    else
    {
      locked = data_map_ids_get(v9, __s, v11, a3, a4);
      v13 = locked != 0;
      v27 = locked + 1;
      if (locked)
      {
        v28 = v27 > a4;
      }

      else
      {
        v28 = 0;
      }

      if (!v28)
      {
        goto LABEL_24;
      }

      v29 = locked + 1;
      v17 = a3;
      do
      {
        if (v17 == a3)
        {
          v30 = malloc_type_malloc(4 * v27, 0x100004052888210uLL);
        }

        else
        {
          v30 = malloc_type_realloc(v17, 4 * v27, 0x100004052888210uLL);
        }

        v17 = v30;
        locked = data_map_ids_get(v9, __s, v10 + 1, v30, v29);
        v13 = locked != 0;
        if (!locked)
        {
          break;
        }

        v29 = locked + 1;
        v19 = v27 >= v29;
        v27 = v29;
      }

      while (!v19);
    }

LABEL_25:
    if (v13)
    {
      *(v17 + locked) = 0;
      goto LABEL_72;
    }

LABEL_71:
    v17 = 0;
    goto LABEL_72;
  }

  memset(__src, 0, sizeof(__src));
  v20 = *(*(a1 + 880) + 16);
  v21 = strlen(__s);
  v22 = commonHash(v21, __s);
  if ((a5 & 1) == 0)
  {
    pthread_rwlock_rdlock(v20);
  }

  v23 = v20 + 208 + 16 * (v22 & 0x7F);
  v24 = *(v23 + 8);
  v57 = a3;
  v55 = a4;
  v56 = a5;
  if (v24 < 0)
  {
    v58 = v22 & 0x7FFFFFFF;
    if ((v24 & 0x7FFFFFFF) == (v22 & 0x7FFFFFFF) && (v31 = *v23, !strcmp(__s, *v23)))
    {
      *&__src[0] = &v31[-*(v20 + 200) - 4];
      v26 = __src;
      v33 = 1;
      v32 = 8;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v26 = 0;
    }

    v34 = *(v20 + 2272);
    v35 = v58 % v34;
    v36 = v58 % v34;
    while (1)
    {
      v38 = *(v20 + 2264);
      v39 = v38 + 16 * v36;
      v40 = *(v39 + 8);
      if (v40 < 0)
      {
        break;
      }

LABEL_52:
      if (v36 >= v34)
      {
        goto LABEL_75;
      }

      if ((*(v39 + 8) & 0x80000000) == 0)
      {
        v25 = v33;
        goto LABEL_61;
      }

      if (v32 <= v33)
      {
        if (v32)
        {
          v32 *= 2;
        }

        else
        {
          v32 = 1;
        }

        if (v26 == __src)
        {
          v42 = malloc_type_malloc(8 * v32, 0x80040B8603338uLL);
          memcpy(v42, __src, 8 * v33);
          v26 = v42;
        }

        else
        {
          v26 = malloc_type_realloc(v26, 8 * v32, 0x80040B8603338uLL);
        }
      }

      v37 = *v39 - *(v20 + 200) - 4;
      v25 = v33 + 1;
      *(v26 + v33) = v37;
      v34 = *(v20 + 2272);
      v36 = (v36 + 1) % v34;
      ++v33;
      if (v35 == v36)
      {
        goto LABEL_61;
      }
    }

    ptr = v26;
    v41 = v36;
    do
    {
      if ((v40 & 0x7FFFFFFF) == v58 && !strcmp(__s, *v39))
      {
        v36 = v41;
        v26 = ptr;
        goto LABEL_52;
      }

      if (v41 + 1 < v34)
      {
        ++v41;
      }

      else
      {
        v41 = v41 + 1 - v34;
      }

      if (v41 == v36)
      {
        break;
      }

      v39 = v38 + 16 * v41;
      v40 = *(v39 + 8);
    }

    while (v40 < 0);
    v25 = v33;
    v26 = ptr;
    if (v41 >= v34)
    {
LABEL_75:
      v51 = __si_assert_copy_extra_332();
      v52 = v51;
      v53 = "";
      if (v51)
      {
        v53 = v51;
      }

      __message_assert(v51, "db-common.c", 248, "slot < table->size", v53);
      free(v52);
      if (__valid_fs(-1))
      {
        v54 = 2989;
      }

      else
      {
        v54 = 3072;
      }

      *v54 = -559038737;
      abort();
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

LABEL_61:
  if ((v56 & 1) == 0)
  {
    v43 = v26;
    pthread_rwlock_unlock(v20);
    v26 = v43;
  }

  v17 = v57;
  if (!v26)
  {
    goto LABEL_71;
  }

  if (v25 + 1 > v55)
  {
    v44 = v26;
    v17 = malloc_type_malloc(4 * (v25 + 1), 0x100004052888210uLL);
    v26 = v44;
  }

  if (v25)
  {
    v45 = v26;
    v46 = v17;
    v47 = v25;
    do
    {
      v48 = *v45++;
      *v46++ = *v48;
      --v47;
    }

    while (v47);
  }

  *(v17 + v25) = 0;
  if (v26 != __src)
  {
    free(v26);
  }

LABEL_72:
  v49 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t _data_map32_unlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1461))
  {
    v1 = 0;
  }

  else
  {
    v1 = db_rwlock_unlock_unknown(a1);
    if (v1)
    {
      v4 = *__error();
      v5 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = v1;
        if (v1 == -1)
        {
          v6 = *__error();
        }

        v7 = 136315650;
        v8 = "_data_map32_unlock";
        v9 = 1024;
        v10 = 310;
        v11 = 1024;
        v12 = v6;
        _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map32_unlock error %d", &v7, 0x18u);
      }

      *__error() = v4;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t data_map32_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, size_t a6)
{
  v111 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 224);
  v57 = *(a2 + 1392);
  v69 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v14 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a2, 0, add_explicit + 1);
  v67 = HIDWORD(v14);
  v68 = v14;
  v66 = __PAIR64__(v15, v16);
  v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
  v18 = *(v17 + 312);
  v19 = *(v17 + 224);
  if (v19)
  {
    v19(*(v17 + 288));
  }

  v65 = v68;
  v64 = v67;
  v63 = v66;
  if (_setjmp(v17))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v85) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v85, 2u);
    }

    *(v17 + 312) = v18;
    CIOnThreadCleanUpReset(v63);
    dropThreadId(v65, 1, add_explicit + 1);
    CICleanUpReset(v65, HIDWORD(v63));
    v20 = 0;
    goto LABEL_41;
  }

  v56 = v18;
  v58 = a1;
  v59 = a6;
  v21 = 0;
  v22 = a3 % v57;
  v23 = a3 % v57;
  v55 = v12;
  v54 = v12 + a6;
  while (1)
  {
    v24 = *(a2 + 1384);
    v25 = *(v24 + 4 * v23);
    if (!v25)
    {
      break;
    }

    v26 = v23;
    if (*(a2 + 220) <= v25)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v35 = *__error();
      v36 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        log = v36;
        v40 = v26;
        v41 = *(a2 + 220);
        v42 = fd_name(*(a2 + 1272), &v85, 0x100uLL);
        *__s = 136316418;
        *&__s[4] = "_data_map32_get_offset_entry";
        *&__s[12] = 1024;
        *&__s[14] = 422;
        *&__s[18] = 1024;
        *&__s[20] = v25;
        *&__s[24] = 1024;
        *&__s[26] = v41;
        v26 = v40;
        *&__s[30] = 2048;
        *&__s[32] = a2;
        *&__s[40] = 2080;
        *&__s[42] = v42;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
      }

      *__error() = v35;
      goto LABEL_32;
    }

    v52 = v23;
    v27 = *(*(a2 + 1352) + 4 * v25);
    if (v27 != 1)
    {
      v61 = 0;
      v62 = 0;
      v70 = 0;
      v28 = *(a2 + 1328);
      if (v28 <= v27)
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v37 = *__error();
        v38 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v43 = *(a2 + 1328);
          v44 = fd_name(*(a2 + 1272), &v85, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_data_entry";
          *&__s[12] = 1024;
          *&__s[14] = 446;
          *&__s[18] = 2048;
          *&__s[20] = v27;
          *&__s[28] = 2048;
          *&__s[30] = v43;
          *&__s[38] = 2048;
          *&__s[40] = a2;
          *&__s[48] = 2080;
          *&__s[50] = v44;
          _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", __s, 0x3Au);
        }

        *__error() = v37;
      }

      else
      {
        data_entry_restore_32(*(a2 + 1320), v27, v28, &v61, &v70);
        v29 = v70;
        if (v70 == 1)
        {
          v53 = v22;
          v60 = add_explicit;
          v110 = 0;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v30 = 5;
          v31 = v27;
          memset(__s, 0, sizeof(__s));
          do
          {
            if (v31 >= *(a2 + 1328))
            {
              break;
            }

            v32 = strlen(__s);
            sprintf(&__s[v32], "%d ", *(*(a2 + 1320) + v31++));
            --v30;
          }

          while (v30);
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v33 = *__error();
          v34 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v45 = fd_name(*(a2 + 1272), &v85, 0x100uLL);
            v46 = *(a2 + 1328);
            *buf = 136316674;
            v72 = "_data_map32_get_data_entry";
            v73 = 1024;
            v74 = 442;
            v75 = 2080;
            v76 = v45;
            v77 = 2048;
            v78 = v27;
            v79 = 2048;
            v80 = v46;
            v81 = 2048;
            v82 = v61;
            v83 = 2080;
            v84 = __s;
            _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
          }

          *__error() = v33;
          add_explicit = v60;
          v22 = v53;
        }

        if ((v29 & 1) == 0)
        {
          v26 = v52;
          if (v54 == v61 && !memcmp(a5, (v62 + v55), v59))
          {
            if (v21 < a4)
            {
              *(v58 + 4 * v21) = *(v24 + 4 * v52);
            }

            v21 = (v21 + 1);
          }

          goto LABEL_32;
        }
      }
    }

    v26 = v52;
LABEL_32:
    if (v26 + 1 == v57)
    {
      v39 = 0;
    }

    else
    {
      v39 = v26 + 1;
    }

    v23 = v39;
    v20 = v21;
    if (v39 == v22)
    {
      goto LABEL_38;
    }
  }

  v20 = v21;
LABEL_38:
  v69 = 1;
  v47 = threadData[9 * v65 + 1] + 320 * v64;
  *(v47 + 312) = v56;
  v48 = *(v47 + 232);
  if (v48)
  {
    v48(*(v47 + 288));
  }

  dropThreadId(v65, 0, add_explicit + 1);
LABEL_41:
  result = v20;
  if ((v69 & 1) == 0)
  {
    result = 0;
    *(a2 + 1464) = 22;
  }

  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_rwlock_unlock_unknown(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  v3 = *(a1 + 184);
  if (v3 == pthread_self() || *(a1 + 184) && exc_pthread_key && ((v4 = pthread_getspecific(exc_pthread_key), v4 == -1) || v4 == *(a1 + 184)))
  {
    *(a1 + 204) = 0;
    v6 = *(a1 + 176);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    v7 = *(a1 + 196) != 0;
    *(a1 + 212) = 0;
    db_rwlock_wakeup(a1, v7, 0);
    pthread_mutex_unlock(a1);
    if (v6)
    {
      pthread_override_qos_class_end_np(v6);
    }
  }

  else
  {
    v5 = *(a1 + 196) - 1;
    *(a1 + 196) = v5;
    if (!v5)
    {
      db_rwlock_wakeup(a1, 0, 0);
    }

    pthread_mutex_unlock(a1);
  }

  return v2;
}

uint64_t cStringHashCallback(const char *a1)
{
  v1 = a1;
  v2 = -1640531527;
  v3 = strlen(a1);
  if (v3 < 0xC)
  {
    v6 = -1640531527;
    v5 = -1640531527;
    v4 = v3;
  }

  else
  {
    v4 = v3;
    v5 = -1640531527;
    v6 = -1640531527;
    do
    {
      v7 = *(v1 + 1) + v5;
      v8 = *(v1 + 2) + v2;
      v9 = (*v1 + v6 - (v7 + v8)) ^ (v8 >> 13);
      v10 = (v7 - v8 - v9) ^ (v9 << 8);
      v11 = (v8 - v9 - v10) ^ (v10 >> 13);
      v12 = (v9 - v10 - v11) ^ (v11 >> 12);
      v13 = (v10 - v11 - v12) ^ (v12 << 16);
      v14 = (v11 - v12 - v13) ^ (v13 >> 5);
      v6 = (v12 - v13 - v14) ^ (v14 >> 3);
      v5 = (v13 - v14 - v6) ^ (v6 << 10);
      v2 = (v14 - v6 - v5) ^ (v5 >> 15);
      v1 += 12;
      v4 -= 12;
    }

    while (v4 > 0xB);
  }

  v15 = v2 + v3;
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 != 9)
      {
        if (v4 != 10)
        {
          v15 += *(v1 + 10) << 24;
        }

        v15 += *(v1 + 9) << 16;
      }

      v15 += *(v1 + 8) << 8;
    }

    else
    {
      if (v4 == 6)
      {
LABEL_22:
        v5 += *(v1 + 5) << 8;
        goto LABEL_23;
      }

      if (v4 == 7)
      {
LABEL_21:
        v5 += *(v1 + 6) << 16;
        goto LABEL_22;
      }
    }

    v5 += *(v1 + 7) << 24;
    goto LABEL_21;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
LABEL_25:
      v6 += *(v1 + 2) << 16;
      goto LABEL_26;
    }

    if (v4 == 4)
    {
LABEL_24:
      v6 += *(v1 + 3) << 24;
      goto LABEL_25;
    }

LABEL_23:
    v5 += *(v1 + 4);
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    goto LABEL_27;
  }

  if (v4 != 2)
  {
    goto LABEL_28;
  }

LABEL_26:
  v6 += *(v1 + 1) << 8;
LABEL_27:
  v6 += *v1;
LABEL_28:
  v16 = (v6 - v5 - v15) ^ (v15 >> 13);
  v17 = (v5 - v15 - v16) ^ (v16 << 8);
  v18 = (v15 - v16 - v17) ^ (v17 >> 13);
  v19 = (v16 - v17 - v18) ^ (v18 >> 12);
  v20 = (v17 - v18 - v19) ^ (v19 << 16);
  v21 = (v18 - v19 - v20) ^ (v20 >> 5);
  v22 = (v19 - v20 - v21) ^ (v21 >> 3);
  return (v21 - v22 - ((v20 - v21 - v22) ^ (v22 << 10))) ^ (((v20 - v21 - v22) ^ (v22 << 10)) >> 15);
}