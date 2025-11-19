uint64_t addScalarArray(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int16 a5, const char *a6, int a7)
{
  v14 = (*(a1 + 16))(a1, 6, 0, 0, a3, a2);
  if (a7)
  {
    v15 = 0;
    v16 = kSDBTypeSizes[a4];
    do
    {
      addValue(a1, v14, v15, 0, a4, a5, a6);
      a6 += v16;
      ++v15;
    }

    while (a7 != v15);
  }

  v17 = *(a1 + 16);

  return v17(a1, 7, v14, 0, a3, a2);
}

void *__eventParseDBO_block_invoke_2(void *result, void *a2)
{
  if (a2)
  {
    if (*a2)
    {
      return (*(result[4] + 16))(result[4], 28, *a2, 0, result[5], result[6]);
    }
  }

  return result;
}

void *__eventParseDBO_block_invoke_3(void *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result[5];
    if (*(a2 + 80) == v5)
    {
      v6[7] = v3;
      v6[8] = v4;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __eventParseDBO_block_invoke_4;
      v6[3] = &unk_1E81941C8;
      v6[4] = result[4];
      v6[5] = v5;
      v6[6] = result[6];
      return qp_array_match_indexes(a3, a2, v6);
    }
  }

  return result;
}

void addValue(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int a5, __int16 a6, const char *a7)
{
  v19 = a7;
  if (a5 <= 6)
  {
    if (a5 <= 3)
    {
      switch(a5)
      {
        case 1:
          v13 = *a7;
          break;
        case 2:
          v15 = *a7;
          break;
        case 3:
LABEL_16:
          v11 = *a7;
          break;
        default:
LABEL_32:
          v16 = __si_assert_copy_extra_332();
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "SISearchCtx_METADATA.cpp", 6123, v18);
          free(v17);
          MEMORY[0xBAD] = -559038737;
          abort();
      }

LABEL_25:
      if ((a6 & 0x400) == 0)
      {
        v10 = *(a1 + 16);
        goto LABEL_28;
      }

LABEL_27:
      v10 = *(a1 + 16);
      goto LABEL_28;
    }

    if (a5 != 4)
    {
      v8 = *a7;
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (a5 > 9)
  {
    if (a5 != 10)
    {
      if (a5 == 11)
      {
        addString(a1, a2, a3, a4, a6, &v19);
        return;
      }

      if (a5 != 12)
      {
        goto LABEL_32;
      }

      v9 = *a7;
      v10 = *(a1 + 16);
      goto LABEL_28;
    }

    v14 = *a7;
  }

  else
  {
    if ((a5 - 7) < 2)
    {
      v7 = *a7;
      goto LABEL_25;
    }

    if (a5 != 9)
    {
      goto LABEL_32;
    }

    v12 = *a7;
  }

  if ((a6 & 0x400) != 0)
  {
    goto LABEL_27;
  }

  v10 = *(a1 + 16);
LABEL_28:

  v10();
}

void addString(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, char a5, const char **a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v11 = *(a1 + 16);
  if ((a5 & 0x10) != 0)
  {
    v15 = *v10;
    if (!v11(a1, 30, 0, v15, a3, a2))
    {
      if (v15 == -2)
      {
        string_for_id_locked = "";
      }

      else
      {
        string_for_id_locked = db_get_string_for_id_locked(a4, v15);
        if (!string_for_id_locked)
        {
          if (v15 == -1)
          {
            v18 = *__error();
            v19 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = 136315650;
              v21 = "addString";
              v22 = 1024;
              v23 = 6026;
              v24 = 1024;
              v25 = -1;
              _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: Bad string id for %d", &v20, 0x18u);
            }

            *__error() = v18;
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            v20 = 67109120;
            LODWORD(v21) = v15;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "No data for uniqued string %u", &v20, 8u);
          }

          goto LABEL_8;
        }
      }

      (*(a1 + 16))(a1, 31, string_for_id_locked, v15, a3, a2);
    }

LABEL_8:
    v13 = (v10 + 4);
    goto LABEL_9;
  }

  v12 = strlen(*a6);
  v11(a1, 29, v10, v12, a3, a2);
  v13 = &v10[v12 + 1];
LABEL_9:
  *a6 = v13;
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t emitVector(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = a8;
  v16 = (*(a1 + 16))(a1, 10, 0, 0, a8, a2);
  if (a4)
  {
    (*(a1 + 16))(a1, 14, "vec_format", 0, 0, v16);
    (*(a1 + 16))(a1, 16, a3, 0, 0, v16);
    (*(a1 + 16))(a1, 14, "vec_dim", 0, 1, v16);
    (*(a1 + 16))(a1, 16, a4, 0, 1, v16);
    v17 = 2;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = 0;
  if (a5)
  {
LABEL_3:
    v18 = v17;
    (*(a1 + 16))(a1, 14, "vec_version", 0, v17, v16);
    v17 |= 1u;
    (*(a1 + 16))(a1, 21, a5, 0, v18, v16);
  }

LABEL_4:
  (*(a1 + 16))(a1, 14, "vec_data", 0, v17, v16);
  (*(a1 + 16))(a1, 33, a6, a7, v17, v16);
  v19 = *(a1 + 16);

  return v19(a1, 11, v16, 0, v15, a2);
}

uint64_t isQueryNodePhotosPersonIdentifier(uint64_t result)
{
  if (result)
  {
    if (*(result + 48) == 4 && (v1 = *(result + 16)) != 0)
    {
      result = *v1;
      if (*v1)
      {
        return strcmp(result, "kMDItemPhotosPeoplePersonIdentifiers") == 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 4 * *(a1 + 72));
    os_unfair_lock_lock((*(a1 + 48) + 4568));
    v3 = *(a1 + 56);
    v4 = v2 & 0x7FFFFFFF;
    if ((v2 & 0x7FFFFFFFu) <= 0x7FFFFFFD)
    {
      v5 = *(a1 + 64);
      v6 = *(v5 + 888);
      if ((*(v5 + 804) & 0x14) != 0)
      {
        v24 = 0;
        data_locked = data_map_get_data_locked(v6, v2 & 0x7FFFFFFF, &v24);
        if (data_locked)
        {
          v8 = &data_locked[v24 - 1];
          if (v8 > data_locked)
          {
            v9 = v24 - 1;
            do
            {
              if (*v8 == 22 && v8[1] == 2)
              {
                v24 = v9;
              }

              --v8;
              --v9;
            }

            while (v8 > data_locked);
          }
        }

        else
        {
          v12 = data_map_count(v6);
          if (v12 < v4)
          {
            v22 = v12;
            v23 = v5;
            v14 = *__error();
            v15 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v18 = *(v23 + 4);
              v19 = data_map_valid(v6);
              *buf = 136316930;
              v26 = "_get_string_and_length_for_id";
              v27 = 1024;
              v28 = 574;
              v20 = "y";
              if (!v19)
              {
                v20 = "n";
              }

              v29 = 2048;
              v30 = v2 & 0x7FFFFFFF;
              v31 = 2048;
              v32 = v22;
              v33 = 1024;
              v34 = 1;
              v35 = 2080;
              v36 = v23 + 324;
              v37 = 1024;
              v38 = v18;
              v39 = 2080;
              v40 = v20;
              _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
            }

            *__error() = v14;
            if ((*(v23 + 4) & 0x20) != 0)
            {
              v16 = *__error();
              v17 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v21 = *(v23 + 4);
                *buf = 136315906;
                v26 = "_get_string_and_length_for_id";
                v27 = 1024;
                v28 = 576;
                v29 = 2080;
                v30 = v23 + 324;
                v31 = 1024;
                LODWORD(v32) = v21;
                _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
              }

              *__error() = v16;
              *(v23 + 4) |= 0x40u;
            }
          }
        }
      }

      else if (*(v6 + 56) > v4 && *(*(v6 + 32) + 8 * v4))
      {
        v10 = *(*(v6 + 40) + v4);
      }

      else
      {
        v13 = *(v5 + 4);
        if ((v13 & 0x20) != 0)
        {
          *(v5 + 4) = v13 | 0x40;
        }

        else if (SIIsAppleInternal_onceToken != -1)
        {
          dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
        }
      }
    }

    _MDPlistBytesAddCString();
    os_unfair_lock_unlock((*(a1 + 48) + 4568));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 4 * *(a1 + 80));
    os_unfair_lock_lock((*(a1 + 48) + 1232));
    v3 = SIValueSet<unsigned int>::SIValueSetInsert((*(*(a1 + 48) + 1224) + 16), v2);
    os_unfair_lock_unlock((*(a1 + 48) + 1232));
    if (v3)
    {
      os_unfair_lock_lock((*(a1 + 56) + 4568));
      v4 = *(a1 + 64);
      v5 = v2 & 0x7FFFFFFF;
      if (v5 <= 0x7FFFFFFD)
      {
        v6 = *(a1 + 72);
        v7 = *(v6 + 888);
        if ((*(v6 + 804) & 0x14) != 0)
        {
          v24 = 0;
          data_locked = data_map_get_data_locked(v7, v5, &v24);
          if (data_locked)
          {
            v9 = &data_locked[v24 - 1];
            if (v9 > data_locked)
            {
              v10 = v24 - 1;
              do
              {
                if (*v9 == 22 && v9[1] == 2)
                {
                  v24 = v10;
                }

                --v9;
                --v10;
              }

              while (v9 > data_locked);
            }
          }

          else
          {
            v13 = data_map_count(v7);
            if (v13 < v5)
            {
              v15 = v13;
              v16 = *__error();
              v17 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v23 = *(v6 + 4);
                v20 = data_map_valid(v7);
                *buf = 136316930;
                v21 = "n";
                v26 = "_get_string_and_length_for_id";
                v27 = 1024;
                v28 = 574;
                if (v20)
                {
                  v21 = "y";
                }

                v29 = 2048;
                v30 = v5;
                v31 = 2048;
                v32 = v15;
                v33 = 1024;
                v34 = 1;
                v35 = 2080;
                v36 = v6 + 324;
                v37 = 1024;
                v38 = v23;
                v39 = 2080;
                v40 = v21;
                _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
              }

              *__error() = v16;
              if ((*(v6 + 4) & 0x20) != 0)
              {
                v18 = *__error();
                v19 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v22 = *(v6 + 4);
                  *buf = 136315906;
                  v26 = "_get_string_and_length_for_id";
                  v27 = 1024;
                  v28 = 576;
                  v29 = 2080;
                  v30 = v6 + 324;
                  v31 = 1024;
                  LODWORD(v32) = v22;
                  _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
                }

                *__error() = v18;
                *(v6 + 4) |= 0x40u;
              }
            }
          }
        }

        else if (*(v7 + 56) > v5 && *(*(v7 + 32) + 8 * v5))
        {
          v11 = *(*(v7 + 40) + v5);
        }

        else
        {
          v14 = *(v6 + 4);
          if ((v14 & 0x20) != 0)
          {
            *(v6 + 4) = v14 | 0x40;
          }

          else if (SIIsAppleInternal_onceToken != -1)
          {
            dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
          }
        }
      }

      _MDPlistBytesAddCString();
      os_unfair_lock_unlock((*(a1 + 56) + 4568));
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t isQueryNodeMatchingPersonNamesAlternatives(uint64_t result)
{
  if (result)
  {
    if (*(result + 48) == 4 && (v1 = *(result + 16)) != 0)
    {
      result = *v1;
      if (*v1)
      {
        return strcmp(result, "kMDItemPhotosPeopleNamesAlternatives") == 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_3(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 4 * *(a1 + 80));
    os_unfair_lock_lock((*(a1 + 48) + 1232));
    v3 = SIValueSet<unsigned int>::SIValueSetInsert((*(*(a1 + 48) + 1224) + 16), v2);
    os_unfair_lock_unlock((*(a1 + 48) + 1232));
    if (v3)
    {
      os_unfair_lock_lock((*(a1 + 56) + 4568));
      v4 = *(a1 + 64);
      v5 = v2 & 0x7FFFFFFF;
      if (v5 <= 0x7FFFFFFD)
      {
        v6 = *(a1 + 72);
        v7 = *(v6 + 888);
        if ((*(v6 + 804) & 0x14) != 0)
        {
          v24 = 0;
          data_locked = data_map_get_data_locked(v7, v5, &v24);
          if (data_locked)
          {
            v9 = &data_locked[v24 - 1];
            if (v9 > data_locked)
            {
              v10 = v24 - 1;
              do
              {
                if (*v9 == 22 && v9[1] == 2)
                {
                  v24 = v10;
                }

                --v9;
                --v10;
              }

              while (v9 > data_locked);
            }
          }

          else
          {
            v13 = data_map_count(v7);
            if (v13 < v5)
            {
              v15 = v13;
              v16 = *__error();
              v17 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v23 = *(v6 + 4);
                v20 = data_map_valid(v7);
                *buf = 136316930;
                v21 = "n";
                v26 = "_get_string_and_length_for_id";
                v27 = 1024;
                v28 = 574;
                if (v20)
                {
                  v21 = "y";
                }

                v29 = 2048;
                v30 = v5;
                v31 = 2048;
                v32 = v15;
                v33 = 1024;
                v34 = 1;
                v35 = 2080;
                v36 = v6 + 324;
                v37 = 1024;
                v38 = v23;
                v39 = 2080;
                v40 = v21;
                _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
              }

              *__error() = v16;
              if ((*(v6 + 4) & 0x20) != 0)
              {
                v18 = *__error();
                v19 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v22 = *(v6 + 4);
                  *buf = 136315906;
                  v26 = "_get_string_and_length_for_id";
                  v27 = 1024;
                  v28 = 576;
                  v29 = 2080;
                  v30 = v6 + 324;
                  v31 = 1024;
                  LODWORD(v32) = v22;
                  _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
                }

                *__error() = v18;
                *(v6 + 4) |= 0x40u;
              }
            }
          }
        }

        else if (*(v7 + 56) > v5 && *(*(v7 + 32) + 8 * v5))
        {
          v11 = *(*(v7 + 40) + v5);
        }

        else
        {
          v14 = *(v6 + 4);
          if ((v14 & 0x20) != 0)
          {
            *(v6 + 4) = v14 | 0x40;
          }

          else if (SIIsAppleInternal_onceToken != -1)
          {
            dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
          }
        }
      }

      _MDPlistBytesAddCString();
      os_unfair_lock_unlock((*(a1 + 56) + 4568));
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_4(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 4 * *(a1 + 72)) & 0x7FFFFFFF;
    if (v2 > 0x7FFFFFFD)
    {
LABEL_16:
      *(*(*(a1 + 32) + 8) + 24) = 1;
      goto LABEL_17;
    }

    v3 = *(a1 + 48);
    v4 = *(v3 + 888);
    if ((*(v3 + 804) & 0x14) != 0)
    {
      v22 = 0;
      data_locked = data_map_get_data_locked(v4, v2, &v22);
      if (data_locked)
      {
        v6 = &data_locked[v22 - 1];
        if (v6 > data_locked)
        {
          v7 = v22 - 1;
          do
          {
            if (*v6 == 22 && v6[1] == 2)
            {
              v22 = v7;
            }

            --v6;
            --v7;
          }

          while (v6 > data_locked);
        }

        goto LABEL_15;
      }

      v11 = data_map_count(v4);
      if (v11 >= v2)
      {
        goto LABEL_16;
      }

      v21 = v11;
      v12 = *__error();
      v13 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v3 + 4);
        v18 = data_map_valid(v4);
        *buf = 136316930;
        v24 = "_get_string_and_length_for_id";
        v25 = 1024;
        v26 = 574;
        v19 = "y";
        if (!v18)
        {
          v19 = "n";
        }

        v27 = 2048;
        v28 = v2;
        v29 = 2048;
        v30 = v21;
        v31 = 1024;
        v32 = 1;
        v33 = 2080;
        v34 = v3 + 324;
        v35 = 1024;
        v36 = v17;
        v37 = 2080;
        v38 = v19;
        _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Invalid string_id:%lu, map_count:%lu, index:%d, dst->name:%s, dst->flags:0x%x valid:%s", buf, 0x46u);
      }

      *__error() = v12;
      if ((*(v3 + 4) & 0x20) == 0)
      {
        goto LABEL_16;
      }

      v14 = *__error();
      v15 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = *(v3 + 4);
        *buf = 136315906;
        v24 = "_get_string_and_length_for_id";
        v25 = 1024;
        v26 = 576;
        v27 = 2080;
        v28 = v3 + 324;
        v29 = 1024;
        LODWORD(v30) = v20;
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: marking invalid %s flags:0x%x", buf, 0x22u);
      }

      *__error() = v14;
      v16 = *(v3 + 4);
    }

    else
    {
      if (*(v4 + 56) > v2 && *(*(v4 + 32) + 8 * v2))
      {
        v8 = *(*(v4 + 40) + v2);
LABEL_15:
        os_unfair_lock_lock((*(a1 + 56) + 4568));
        v9 = *(a1 + 64);
        _MDPlistBytesAddCString();
        os_unfair_lock_unlock((*(a1 + 56) + 4568));
        goto LABEL_16;
      }

      v16 = *(v3 + 4);
      if ((v16 & 0x20) == 0)
      {
        if (SIIsAppleInternal_onceToken != -1)
        {
          dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
        }

        goto LABEL_16;
      }
    }

    *(v3 + 4) = v16 | 0x40;
    goto LABEL_16;
  }

LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t isQueryNodePhotosSceneTypedIdentifier(uint64_t result)
{
  if (result)
  {
    if (*(result + 48) == 4 && (v1 = *(result + 16)) != 0)
    {
      result = *v1;
      if (*v1)
      {
        return strcmp(result, "kMDItemPhotosSceneClassificationTypedIdentifiers") == 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 4568));
    v2 = *(a1 + 56);
    v3 = *(*(a1 + 48) + 8 * *(a1 + 72));
    _MDPlistBytesBeginArray();
    v4 = *(a1 + 56);
    _MDPlistBytesAddInteger();
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 64) + 8 * *(a1 + 72) + 13);
    _MDPlistBytesAddInteger();
    v7 = *(a1 + 56);
    _MDPlistBytesEndArray();
    os_unfair_lock_unlock((*(a1 + 40) + 4568));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_2(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 4568));
    v2 = *(a1 + 56);
    v3 = *(*(a1 + 48) + 8 * *(a1 + 72));
    _MDPlistBytesBeginArray();
    v4 = *(a1 + 56);
    _MDPlistBytesAddInteger();
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 64) + 8 * *(a1 + 72) + 13);
    _MDPlistBytesAddInteger();
    v7 = *(a1 + 56);
    _MDPlistBytesEndArray();
    os_unfair_lock_unlock((*(a1 + 40) + 4568));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_3(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 4568));
    v2 = *(a1 + 56);
    v3 = *(*(a1 + 48) + 8 * *(a1 + 72));
    _MDPlistBytesBeginArray();
    v4 = *(a1 + 56);
    _MDPlistBytesAddInteger();
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 64) + 8 * *(a1 + 72) + 13);
    _MDPlistBytesAddInteger();
    v7 = *(a1 + 56);
    _MDPlistBytesEndArray();
    os_unfair_lock_unlock((*(a1 + 40) + 4568));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t PartialQueryResults::totalcount(PartialQueryResults *this)
{
  v1 = *(this + 884);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = this + 464;
  do
  {
    if (*&v5[8 * v3])
    {
      VectorCount = _MDStoreOIDArrayGetVectorCount();
      v1 = *(this + 884);
    }

    else
    {
      VectorCount = 0;
    }

    v4 += VectorCount;
    ++v3;
  }

  while (v3 < v1);
  return v4;
}

void collectCompletionsFromDBO(void *a1, uint64_t a2, uint64_t *a3, _OWORD *a4, unsigned __int8 a5, PartialQueryResults *this, const char **a7, unsigned __int8 **a8)
{
  v147 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_107;
  }

  if (!this)
  {
    goto LABEL_107;
  }

  v10 = *(a2 + 1192);
  if (!v10)
  {
    goto LABEL_107;
  }

  v17 = PartialQueryResults::completionAttributeIdVector(this, *(a2 + 1192));
  v18 = *(this + 47);
  if (!*(this + 45) || v18)
  {
    goto LABEL_8;
  }

  v19 = *(this + 46);
  if (v19)
  {
    SIFlattenArrayToCStringVector(v19, this + 47, this + 44, this + 45);
    v18 = *(this + 47);
    if (!v18)
    {
      v103 = __si_assert_copy_extra_332();
      v104 = v103;
      v105 = "";
      if (v103)
      {
        v105 = v103;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx.h", 1014, "fCompletionAttributeVector", v105);
      free(v104);
      if (__valid_fs(-1))
      {
        v106 = 2989;
      }

      else
      {
        v106 = 3072;
      }

      *v106 = -559038737;
      abort();
    }

LABEL_8:
    if (!v17)
    {
      goto LABEL_107;
    }

    goto LABEL_9;
  }

  v18 = 0;
  if (!v17)
  {
    goto LABEL_107;
  }

LABEL_9:
  v117 = v18;
  v128 = CIRetainIndexingTokenizer(3u);
  v20 = *(this + 36);
  v146[0] = *(a2 + 2064);
  v146[1] = 0;
  v140[0] = 0;
  v140[1] = v140;
  v140[2] = 0x2000000000;
  v140[3] = 0;
  v138[0] = 0;
  v138[1] = v138;
  v138[2] = 0x2000000000;
  v139 = 0;
  v136[0] = 0;
  v136[1] = v136;
  v136[2] = 0x2000000000;
  v137 = 0;
  v134[0] = 0;
  v134[1] = v134;
  v134[2] = 0x2000000000;
  v135 = 0;
  v133[0] = MEMORY[0x1E69E9820];
  v133[1] = 0x40000000;
  v133[2] = __collectCompletionsFromDBO_block_invoke;
  v133[3] = &unk_1E81942B8;
  v133[4] = v134;
  v133[5] = v140;
  v133[8] = a3;
  v133[9] = v10;
  v133[10] = this;
  v133[11] = v20;
  v133[6] = v138;
  v133[7] = v136;
  if (a7)
  {
    v122 = *a7;
  }

  else
  {
    v122 = 0;
  }

  __s = 0;
  v132 = 0;
  v120 = a7;
  v116 = a5;
  if (db_get_field_by_id(v10, a3, v146, &v132, &__s) || *v132 != 11)
  {
    v22 = 0;
    v21 = "";
  }

  else
  {
    v21 = "";
    if ((*(v132 + 2) & 0x10) != 0)
    {
      v22 = *(v132 + 13);
      string_for_id_locked = db_get_string_for_id_locked(v10, v22);
      if (string_for_id_locked)
      {
        v21 = string_for_id_locked;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  v126 = v22;
  v127 = *(this + 90);
  v119 = a4;
  if (*(this + 321))
  {
    v73 = a3;
    v123 = *(a2 + 1296);
    if (dword_1EBF46AD0 >= 5)
    {
      v107 = v21;
      v108 = *__error();
      v109 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        *__dst = 0;
        _os_log_impl(&dword_1C278D000, v109, OS_LOG_TYPE_DEFAULT, "Generating pommmes completions", __dst, 2u);
      }

      *__error() = v108;
      v21 = v107;
    }

    explicit = atomic_load_explicit(a1 + 35, memory_order_acquire);
    if (explicit || (v75 = a1[36], v76 = a1[37], md_deadline_once_wait(), (explicit = atomic_load_explicit(a1 + 35, memory_order_acquire)) != 0))
    {
      __s1 = v21;
      v77 = _os_feature_enabled_impl();
      v78 = *(this + 39);
      v79 = *(this + 48);
      if (v78 && !v79)
      {
        v121 = v77;
        if (*MEMORY[0x1E69E9AC8] <= 0x1FuLL)
        {
          ++sTotal;
        }

        v79 = malloc_type_zone_calloc(queryZone, 1uLL, 0x20uLL, 0x5BAF1CEAuLL);
        if (!v79)
        {
          _log_fault_for_malloc_failure();
        }

        *(this + 48) = v79;
        v80 = *v78;
        *v79 = 0u;
        v79[1] = 0u;
        v81 = *v80;
        if (*v80)
        {
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          do
          {
            if ((v81 & 0x80) == 0)
            {
              goto LABEL_91;
            }

            v86 = v81 >> 4;
            if ((~v86 & 0xC) != 0)
            {
              goto LABEL_91;
            }

            v87 = utf8_byte_length(unsigned char)::utf8_len_table[v86];
            v88 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v87] & v81;
            v87 = v87 <= 2 ? 2 : v87;
            v89 = v87 - 1;
            v90 = v80 + 1;
            do
            {
              v91 = v88;
              v92 = *v90++;
              v88 = v92 & 0x3F | (v88 << 6);
              --v89;
            }

            while (v89);
            if ((v91 << 6) >> 8 >= 0x11 && ((v91 & 0x3FFFFFC) == 0x44 || ((v91 << 6) - 11904) >> 7 < 0x197 || (v88 - 65376) <= 0x4F))
            {
              if ((v88 - 12448) > 0x5F)
              {
                if ((v88 - 12352) > 0x5F)
                {
                  *(v79 + 2) = ++v85;
                }

                else
                {
                  *(v79 + 1) = ++v84;
                }
              }

              else
              {
                *v79 = ++v83;
              }
            }

            else
            {
LABEL_91:
              *(v79 + 3) = ++v82;
            }

            v80 += utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v80 >> 4];
            v81 = *v80;
          }

          while (*v80);
        }

        v77 = v121;
      }

      v93 = a4[3];
      v143 = a4[2];
      v144 = v93;
      v145 = a4[4];
      v94 = a4[1];
      *__dst = *a4;
      v142 = v94;
      if (v77)
      {
        v95 = a1[1];
        v114 = *(v95 + 761);
        v113 = *(v95 + 704);
      }

      else
      {
        v114 = 0;
        v113 = 0;
      }

      v96 = explicit;
      v26 = v128;
      SIPommesSuggestionsProcessDBO(v123, v10, v73, v17, v127, v117, v96, v128, v78, v79, __dst, v126, __s1, a8, v113, v114, v133);
    }

    else
    {
      v101 = *__error();
      v102 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        *__dst = 0;
        _os_log_impl(&dword_1C278D000, v102, OS_LOG_TYPE_DEFAULT, "Not generating pommmes completions; suggestions model did not populate in time.", __dst, 2u);
      }

      *__error() = v101;
      v26 = v128;
    }
  }

  else
  {
    v23 = atomic_load_explicit(this + 41, memory_order_acquire);
    if (v23 || (v24 = *(this + 42), v25 = *(this + 43), md_deadline_once_wait(), (v23 = atomic_load_explicit(this + 41, memory_order_acquire)) != 0))
    {
      v118 = v23;
      v124 = v21;
      v26 = v128;
      if (dword_1EBF46AD0 >= 5)
      {
        v110 = a3;
        v111 = *__error();
        v112 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          *__dst = 0;
          _os_log_impl(&dword_1C278D000, v112, OS_LOG_TYPE_DEFAULT, "Generating spotlight completions", __dst, 2u);
        }

        *__error() = v111;
        v26 = v128;
        a3 = v110;
      }

      v27 = v127;
      if (v127 >= 1)
      {
        v28 = 0;
        v29 = *(v118 + 4);
        do
        {
          if ((v29 & 0x80) != 0 && v28 == 8)
          {
            v30 = *(v17 + 64);
            if (v30)
            {
              if (*(v17 + 72))
              {
                v31 = v29;
                v32 = v17;
                *&v129[0] = 0;
                v130 = 0;
                v33 = v10;
                v34 = v10;
                v35 = a3;
                if (!db_get_field_by_id(v34, a3, v30, &v132, &__s) && !db_get_field_by_id(v33, a3, *(v32 + 72), v129, &v130) && *v132 == 11 && (*(v132 + 2) & 0x20) != 0 && **&v129[0] == 10 && (*(*&v129[0] + 2) & 0x20) != 0)
                {
                  v36 = *(v132 + 8);
                  if (v36)
                  {
                    v38 = v130;
                    v37 = __s;
                    v39 = &__s[v36];
                    do
                    {
                      v40 = strlen(v37);
                      v41 = *v38++;
                      v42 = *(this + 39);
                      v43 = v119[3];
                      v143 = v119[2];
                      v144 = v43;
                      v145 = v119[4];
                      v44 = v119[1];
                      *__dst = *v119;
                      v142 = v44;
                      SICompletionModelProcessUTF8String(v118, v128, v42, v37, v40, __dst, *v35, v126, v124, 8, v122, v116, v133);
                      v26 = v128;
                      v37 += v40 + 1;
                    }

                    while (v37 < v39);
                  }
                }

                v28 = 9;
                a3 = v35;
                v27 = v127;
                v10 = v33;
                v17 = v32;
                v29 = v31;
                a4 = v119;
                goto LABEL_67;
              }
            }
          }

          v45 = *(v17 + 8 * v28);
          if (v45)
          {
            if (!db_get_field_by_id(v10, a3, v45, &v132, &__s))
            {
              v46 = *(v132 + 2);
              if (v120 || (v46 & 0x80) == 0)
              {
                if ((v46 & 0x80) != 0)
                {
                  v130 = 0;
                  if (!db_get_localized_string(v10, v132, v120, &__s, &v130, 1))
                  {
                    bzero(__dst, 0x400uLL);
                    v52 = __s;
                    if (v130)
                    {
                      v53 = a3;
                      v54 = v130 - __s;
                      v55 = (v130 - __s) << 32;
                      if (v130 - __s >= 1023)
                      {
                        v56 = strndup(__s, v54 & 0x7FFFFFFF);
                        v57 = *(this + 39);
                      }

                      else
                      {
                        v56 = __dst;
                        strlcpy(__dst, __s, ((v54 << 32) + 0x100000000) >> 32);
                        v57 = *(this + 39);
                        if (!v130)
                        {
                          v56 = __dst;
                          v52 = __s;
                          a3 = v53;
                          goto LABEL_55;
                        }
                      }

                      v64 = v55 >> 32;
                      a3 = v53;
                    }

                    else
                    {
                      v57 = *(this + 39);
                      v56 = __s;
LABEL_55:
                      v64 = strlen(v52);
                    }

                    v71 = a4[3];
                    v129[2] = a4[2];
                    v129[3] = v71;
                    v129[4] = a4[4];
                    v72 = a4[1];
                    v129[0] = *a4;
                    v129[1] = v72;
                    SICompletionModelProcessUTF8String(v118, v128, v57, v56, v64, v129, *a3, v126, v124, v28, v122, v116, v133);
                    if (v56 != __dst)
                    {
                      free(v56);
                    }

                    v26 = v128;
LABEL_66:
                    v27 = v127;
                  }
                }

                else if (*v132 == 11)
                {
                  v47 = __s;
                  if ((v46 & 0x20) != 0)
                  {
                    v115 = a3;
                    v58 = *(v132 + 8);
                    v59 = &__s[v58];
                    if ((v46 & 0x10) == 0)
                    {
                      if (v58)
                      {
                        do
                        {
                          v60 = strlen(v47);
                          v61 = *(this + 39);
                          v62 = a4[3];
                          v143 = a4[2];
                          v144 = v62;
                          v145 = a4[4];
                          v63 = a4[1];
                          *__dst = *a4;
                          v142 = v63;
                          SICompletionModelProcessUTF8String(v118, v128, v61, v47, v60, __dst, *v115, v126, v124, v28, v122, v116, v133);
                          v47 += v60 + 1;
                        }

                        while (v47 < v59);
                      }

                      a3 = v115;
                      v27 = v127;
                      v26 = v128;
                      goto LABEL_67;
                    }

                    if (v58)
                    {
                      do
                      {
                        v65 = db_get_string_for_id_locked(v10, *v47);
                        if (v65)
                        {
                          v66 = v65;
                          v67 = *(this + 39);
                          v68 = strlen(v65);
                          v69 = a4[3];
                          v143 = a4[2];
                          v144 = v69;
                          v145 = a4[4];
                          v70 = a4[1];
                          *__dst = *a4;
                          v142 = v70;
                          SICompletionModelProcessUTF8String(v118, v128, v67, v66, v68, __dst, *v115, v126, v124, v28, v122, v116, v133);
                        }

                        v47 += 4;
                      }

                      while (v47 < v59);
                    }

                    v26 = v128;
                    a3 = v115;
                    goto LABEL_66;
                  }

                  v48 = strlen(__s);
                  v49 = *(this + 39);
                  v50 = a4[3];
                  v143 = a4[2];
                  v144 = v50;
                  v145 = a4[4];
                  v51 = a4[1];
                  *__dst = *a4;
                  v142 = v51;
                  SICompletionModelProcessUTF8String(v118, v26, v49, __s, v48, __dst, *a3, v126, v124, v28, v122, v116, v133);
                }
              }
            }
          }

LABEL_67:
          ++v28;
        }

        while (v28 < v27);
      }
    }

    else
    {
      v99 = *__error();
      v100 = _SILogForLogForCategory(1);
      v26 = v128;
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        *__dst = 0;
        _os_log_impl(&dword_1C278D000, v100, OS_LOG_TYPE_DEFAULT, "Not generating spotlight completions; completion model did not populate in time.", __dst, 2u);
      }

      *__error() = v99;
    }
  }

  CIReleaseIndexingTokenizer(v26);
  _Block_object_dispose(v134, 8);
  _Block_object_dispose(v136, 8);
  _Block_object_dispose(v138, 8);
  _Block_object_dispose(v140, 8);
LABEL_107:
  v97 = *MEMORY[0x1E69E9840];
}

uint64_t __collectCompletionsFromDBO_block_invoke(uint64_t result, _DWORD *a2, BOOL *a3)
{
  v4 = result;
  v42 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 32) + 8) + 24))
  {
    goto LABEL_36;
  }

  v36 = 0;
  v37 = 0;
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 80);
  v38 = 0;
  v39 = 0;
  if (!v6 || (v9 = *(v8 + 280), result = db_get_field_by_id(v7, v6, *(v8 + 272), &v39, &v38), *a3 = result == 0, result) && (result = db_get_field_by_id(v7, v6, v9, &v39, &v38), result))
  {
    v10 = 0.0;
    if (dword_1EBF46AD0 >= 5)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *v6;
        *buf = 134217984;
        v41 = v13;
LABEL_39:
        _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "No useful date for %llx", buf, 0xCu);
        goto LABEL_40;
      }

      goto LABEL_40;
    }
  }

  else if (*v38 <= 0.0 || (v14 = *(v8 + 304), v14 <= 0.0))
  {
    v10 = 0.0;
    if (dword_1EBF46AD0 >= 5)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *v6;
        *buf = 134217984;
        v41 = v35;
        goto LABEL_39;
      }

LABEL_40:
      result = __error();
      *result = v11;
    }
  }

  else
  {
    v10 = v14 - *v38;
  }

  *(*(*(v4 + 40) + 8) + 24) = v10;
  v15 = *(v4 + 64);
  if (!v15)
  {
    goto LABEL_31;
  }

  result = db_get_field_by_id(*(v4 + 72), v15, *(v4 + 88), &v37, &v36);
  if (result)
  {
    goto LABEL_31;
  }

  v16 = -1759636613;
  v17 = *(v37 + 8);
  if (v17 >= 0)
  {
    v18 = *(v37 + 8);
  }

  else
  {
    v18 = v17 + 3;
  }

  v19 = &v36[v18 & 0xFFFFFFFC];
  if ((v17 + 3) >= 7)
  {
    v22 = -(v18 >> 2);
    v23 = -1789642873;
    v24 = 718793509;
    do
    {
      v23 = 5 * v23 + 2071795100;
      v24 = 5 * v24 + 1808688022;
      HIDWORD(v25) = v23 * *&v19[4 * v22];
      LODWORD(v25) = HIDWORD(v25);
      v26 = (v25 >> 21) * v24;
      HIDWORD(v25) = v16;
      LODWORD(v25) = v16;
      v16 = v26 ^ (5 * (v25 >> 19) + 1390208809);
    }

    while (!__CFADD__(v22++, 1));
    v21 = 5 * v23 + 2071795100;
    v20 = 5 * v24 + 1808688022;
  }

  else
  {
    v20 = 1107688271;
    v21 = 1713515327;
  }

  v28 = 0;
  if ((*(v37 + 8) & 3u) > 1)
  {
    if ((*(v37 + 8) & 3) != 2)
    {
      v28 = v19[2] << 16;
    }

    v28 |= v19[1] << 8;
  }

  else if ((v17 & 3) == 0)
  {
    goto LABEL_30;
  }

  HIDWORD(v29) = (v28 ^ *v19) * v21;
  LODWORD(v29) = HIDWORD(v29);
  v30 = (v29 >> 21) * v20;
  HIDWORD(v29) = v16;
  LODWORD(v29) = v16;
  v16 = v30 ^ (5 * (v29 >> 19) + 1390208809);
LABEL_30:
  v31 = -1028477387 * ((-2048144789 * (v16 ^ v17)) ^ ((-2048144789 * (v16 ^ v17)) >> 13));
  *(*(*(v4 + 48) + 8) + 24) = v31 ^ HIWORD(v31);
LABEL_31:
  if (*a3)
  {
    v32 = *(v4 + 64);
    if (v32)
    {
      result = db_get_field_by_id(*(v4 + 72), v32, *(*(v4 + 80) + 296), &v37, &v36);
      if (!result)
      {
        result = matche(**(*(v4 + 80) + 312), v36, 7, 0, 0);
        *(*(*(v4 + 56) + 8) + 24) = result;
      }
    }
  }

  *(*(*(v4 + 32) + 8) + 24) = 1;
LABEL_36:
  *a2 = *(*(*(v4 + 48) + 8) + 24);
  v33 = *(*(*(v4 + 40) + 8) + 24);
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CIIndexSetGetTypeID_block_invoke()
{
  __kCIIndexSetTypeID = _CFRuntimeRegisterClass();
  result = _CFRuntimeRegisterClass();
  __kCIIndexSetInvertedTypeID = result;
  if (__kCIIndexSetTypeID == result)
  {
    v1 = __si_assert_copy_extra_332();
    __message_assert_336(v1, v2, v3, v4, v5, v6, v7, v8, "CIIndexSet.c");
    free(v1);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

CFStringRef __CIIndexSetCopyDebugDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == -2)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CIIndexSet: %p count: %u>", a1, 0);
  }

  else
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CIIndexSet: %p count: %u isBitMap: %d>", a1, (-2 - v1), v1 < -9);
  }
}

void CIIndexSetReleaseToCache(uint64_t *a1, uint64_t a2, void *a3)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = *a1;
      if (*(*a1 + 16) <= 0xFFFFFFF6)
      {
        blob_free(*(v8 + 40), *(v8 + 32), a3);
        *(v8 + 32) = 0;
      }

      *(v8 + 40) = v7;
      ++a1;
      v7 = v8;
      --v5;
    }

    while (v5);
    v9 = *a3 + 8;

    cicachelistenqueue(v9, v8, 20);
  }
}

uint64_t countItemsInRangeByEnumeration(_DWORD *cf, unsigned int a2, unsigned int a3)
{
  v12 = 0u;
  v13 = 0u;
  if (cf[6] >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = cf[6];
  }

  v5 = cf[4];
  if (cf[5] <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = cf[5];
  }

  if (v5 <= -10)
  {
    DWORD2(v13) = 2;
    *&v12 = __PAIR64__(v6, v4);
    *&v13 = cf;
LABEL_9:
    DWORD2(v12) = 0;
    goto LABEL_27;
  }

  if (v5 > -2)
  {
    if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    DWORD2(v13) = v8;
    v5 = cf[4];
    *&v12 = __PAIR64__(v6, v4);
    *&v13 = cf;
    if (v5 >= 1)
    {
      v9 = binarySearchMap(cf, v4);
      DWORD2(v12) = v9;
      if (v9 != cf[9])
      {
        goto LABEL_27;
      }

      v7 = cf[8] + v9 - cf[4];
      goto LABEL_26;
    }

    if ((v5 & 0x80000000) == 0 || v5 <= 0xFFFFFFF6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *&v12 = __PAIR64__(v6, v4);
    *&v13 = cf;
  }

  if (v5 <= 0xFFFFFFFD)
  {
    if (v4 >= cf[8])
    {
      v7 = 0;
      goto LABEL_26;
    }

    if (v5 != -3)
    {
      if (v4 >= cf[9])
      {
        v7 = 1;
        goto LABEL_26;
      }

      if (v5 != -4)
      {
        if (v4 >= cf[10])
        {
          v7 = 2;
          goto LABEL_26;
        }

        if (v5 != -5)
        {
          if (v4 >= cf[11])
          {
            v7 = 3;
            goto LABEL_26;
          }

          if (v5 != -6)
          {
            if (v4 >= cf[12])
            {
              v7 = 4;
              goto LABEL_26;
            }

            if (v5 != -7)
            {
              if (v4 >= cf[13])
              {
                v7 = 5;
                goto LABEL_26;
              }

              if (v5 != -8 && v4 >= cf[14])
              {
                v7 = 6;
                goto LABEL_26;
              }
            }
          }
        }
      }
    }
  }

  v7 = -2 - v5;
LABEL_26:
  DWORD2(v12) = v7;
LABEL_27:
    ;
  }

  return i;
}

void _CIIndexSetSetIndexRangeWithCache(const void **cf, unsigned int a2, unsigned int a3, int a4, void *a5)
{
  if (*(cf + 6) == a3 && *(cf + 5) == a2)
  {
    return;
  }

  if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
  {
    _CIIndexSetForceBitmap(cf, a5, 0);
  }

  v11 = *(cf + 4);
  if (v11 > -10)
  {
    v22 = *(cf + 5);
    if (v22 >= a2)
    {
      v23 = *(cf + 6);
      if (v23 <= a3)
      {
LABEL_28:
        LODWORD(v29) = *(cf + 4);
        goto LABEL_57;
      }

      if (v11 < 0)
      {
LABEL_26:
        if (v23 > a3)
        {
          _CIIndexSetClearRange(cf, a3, v23);
        }

        goto LABEL_28;
      }
    }

    else if (v11 < 0)
    {
      _CIIndexSetClearRange(cf, v22, a2);
      v23 = *(cf + 6);
      goto LABEL_26;
    }

    v27 = *(cf + 9);
    if (v27 != v11)
    {
      memmove(cf[5] + 4 * v27, cf[5] + 4 * (v27 - v11 + *(cf + 8)), 4 * (v11 - v27));
      v11 = *(cf + 4);
      *(cf + 9) = v11;
    }

    if (v11 < 1)
    {
      LODWORD(v28) = 0;
    }

    else
    {
      v28 = 0;
      while (*(cf[5] + v28) > a3)
      {
        if (v11 == ++v28)
        {
          goto LABEL_48;
        }
      }
    }

    if (v28 >= v11)
    {
LABEL_48:
      LODWORD(v29) = 0;
    }

    else
    {
      v29 = 0;
      v28 = v28;
      do
      {
        v42 = cf[5];
        v43 = v42[v28];
        if (v43 < a2)
        {
          break;
        }

        v42[v29] = v43;
        ++v28;
        ++v29;
      }

      while (*(cf + 4) > v28);
    }

    *(cf + 4) = v29;
    *(cf + 9) = v29;
    goto LABEL_57;
  }

  v12 = a3 - a2;
  if (a3 - a2 > *(cf + 6) - *(cf + 5) && _CIIndexSetConvertIfArrayIsMuchMoreEfficient(cf, a2, a3, a4, a5, v10))
  {
    if (*(cf + 5) > *(cf + 6))
    {
      v13 = __si_assert_copy_extra_332();
      __message_assert_336(v13, v14, v15, v16, v17, v18, v19, v20, "CIIndexSet.c");
      free(v13);
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

    return;
  }

  v24 = (v12 + 32) >> 5;
  v25 = *(cf + 8);
  if (v25 < v24)
  {
    if ((4 * v24) >= *MEMORY[0x1E69E9AC8] >> 1)
    {
      v26 = blob_calloc((v12 + 32) >> 5, 0);
      memcpy(v26, cf[5], 4 * *(cf + 8));
      blob_free(cf[5], *(cf + 8), a5);
    }

    else
    {
      v26 = blob_realloc(cf[5], v25, (v12 + 32) >> 5, a5);
    }

    cf[5] = v26;
    bzero(v26 + 4 * *(cf + 8), 4 * (v24 - *(cf + 8)));
    *(cf + 8) = v24;
    v25 = (v12 + 32) >> 5;
  }

  v30 = *(cf + 6);
  v31 = v30 - a3;
  if (v30 >= a3)
  {
    if (v30 > a3)
    {
      v38 = (v30 - a3) & 0x1F;
      v39 = v31 >> 5;
      if (v25 != (v31 >> 5) + 1)
      {
        v40 = 0;
        v41 = v31 >> 5;
        do
        {
          *(cf[5] + v40) = (*(cf[5] + (v41 + v40 + 1)) >> (v38 ^ 0x1F)) | (*(cf[5] + (v41 + v40)) << v38);
          ++v40;
          v25 = *(cf + 8);
        }

        while (v40 < v25 + ~v39);
      }

      *(cf[5] + v25 - 1 - v39) = *(cf[5] + v25 - 1) << v38;
    }
  }

  else
  {
    v32 = a3 - v30;
    v33 = (a3 - v30) >> 5;
    v34 = (a3 - v30) & 0x1F;
    if ((v32 & 0x1F) != 0)
    {
      if ((v25 + ~v33) > 0)
      {
        v35 = v25 - v33;
        v36 = 4 * (v25 + ~v33);
        v37 = v36 + 4 * v33;
        do
        {
          *(cf[5] + v37) = (*(cf[5] + v36) << v32) | (*(cf[5] + v36 - 4) >> 1 >> ~v32);
          --v35;
          v37 -= 4;
          v36 -= 4;
        }

        while (v35 > 1);
      }

      *(cf[5] + v33) = *cf[5] << v34;
    }

    else
    {
      memmove(cf[5] + 4 * v33, cf[5], 4 * (v25 - v33));
    }

    bzero(cf[5], (4 * v33));
  }

  if (*(cf + 5) > a2)
  {
    v44 = 4 * (v12 >> 5);
    *(cf[5] + v44) &= masks[(v12 & 0x1F) + 1];
    bzero(cf[5] + v44 + 4, 4 * (v24 + ~(v12 >> 5)));
  }

  v45 = a4 - *(cf + 4) - 10;
  if (v45 >= v12 + 1)
  {
    v45 = v12 + 1;
  }

  LODWORD(v29) = -10 - v45;
  *(cf + 4) = v29;
LABEL_57:
  *(cf + 5) = a2;
  *(cf + 6) = a3;
  if (v29 <= -10)
  {

    _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(cf, a5, v10);
  }
}

uint64_t CIIndexSetClearRange_Array(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    v5 = a2 - 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = binarySearchMap(a1, v5);
  v7 = v6;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  if (v9 == v8)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 36);
  if (v10 != v6)
  {
    v17 = *(a1 + 40);
    if (v10 >= v6)
    {
      memmove((v17 + 4 * (v9 - (v8 - v6))), (v17 + 4 * v6), 4 * (v10 - v6));
      v8 = *(a1 + 16);
    }

    else
    {
      memmove((v17 + 4 * v10), (v17 + 4 * (v10 + v9 - v8)), 4 * (v6 - (v10 + v9 - v8)));
      v8 = *(a1 + 16);
      v7 = v7 - *(a1 + 32) + v8;
    }

LABEL_5:
    *(a1 + 36) = v7;
  }

  v11 = v7 - v8;
  if (v11)
  {
    v7 = v11 + *(a1 + 32);
  }

  result = binarySearchMap(a1, a3);
  if (v7 != result)
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 36) - result;
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (v16 < 0 != v15)
    {
      v18 = __si_assert_copy_extra_332();
      __message_assert_336(v18, v19, v20, v21, v22, v23, v24, v25, "CIIndexSet.c");
      free(v18);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    *(a1 + 16) = v16;
    *(a1 + 36) = result;
  }

  return result;
}

BOOL CIIndexSetAddIndexExpandingRange(uint64_t a1, unsigned int a2, int8x8_t a3)
{
  if (*(a1 + 24) < a2)
  {
    v3 = 1 << -__clz(a2);
    do
    {
      v4 = v3;
      v3 *= 2;
    }

    while (v4 < a2);
    v5 = *(a1 + 20);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    if (v5 <= v4)
    {
      v6 = a1;
      v7 = a2;
      _CIIndexSetSetIndexRangeWithCache(a1, v5, v4, 1, 0);
      a1 = v6;
      a2 = v7;
    }
  }

  v9 = -1;
  return _CIIndexSetAddIndex(a1, a2, 0, &v9, a3);
}

BOOL CIIndexSetHasIndexWithHint(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 20);
  if (v3 > a2)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  if (v8 > -10)
  {
    if ((v8 & 0x80000000) == 0)
    {
      v11 = a2;
      v12 = a1;
      if (CFGetTypeID(a1) != __kCIIndexSetInvertedTypeID)
      {
        v16 = *(v12 + 16);
        v17 = *(v12 + 32);
        v18 = *(v12 + 36);
        v19 = searchMapWithHint(v12, v11, a3, 0);
        if (v19 < *(v12 + 36) || v19 >= v17 - v16 + v18 && v19 < *(v12 + 32))
        {
          return *(*(v12 + 40) + 4 * v19) == v11;
        }

        return 0;
      }

      a1 = v12;
      v3 = *(v12 + 20);
      a2 = v11;
    }

    if (v3 <= a2)
    {
      v13 = *(a1 + 24);
      v6 = v13 >= a2;
      v14 = v13 - a2;
      if (v6)
      {
        v15 = *(a1 + 16);
        if (v15 <= -10)
        {
          return (*(*(a1 + 40) + 4 * (v14 >> 5)) >> v14) & 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          v21 = a1;
          v22 = a2;
          v23 = binarySearchMap(a1, a2);
          v24 = v21;
          v25 = *(v21 + 36);
          if (v23 < v25 || (v26 = 0, v27 = *(v24 + 32), v23 < v27) && v23 >= v27 + v25 - *(v24 + 16))
          {
            v26 = *(*(v24 + 40) + 4 * v23) == v22;
          }

          return v26 ^ (CFGetTypeID(v24) == __kCIIndexSetInvertedTypeID);
        }

        if (v15 <= 0xFFFFFFFD)
        {
          v9 = *(a1 + 32) == a2;
          if (*(a1 + 32) == a2)
          {
            return v9;
          }

          if (v15 == -3)
          {
            return v9;
          }

          v9 = *(a1 + 36) == a2;
          if (*(a1 + 36) == a2)
          {
            return v9;
          }

          if (v15 == -4)
          {
            return v9;
          }

          v9 = *(a1 + 40) == a2;
          if (*(a1 + 40) == a2)
          {
            return v9;
          }

          if (v15 == -5)
          {
            return v9;
          }

          v9 = *(a1 + 44) == a2;
          if (*(a1 + 44) == a2)
          {
            return v9;
          }

          if (v15 == -6)
          {
            return v9;
          }

          v9 = *(a1 + 48) == a2;
          if (*(a1 + 48) == a2)
          {
            return v9;
          }

          if (v15 == -7)
          {
            return v9;
          }

          v9 = *(a1 + 52) == a2;
          if (*(a1 + 52) == a2 || v15 == -8)
          {
            return v9;
          }

          return *(a1 + 56) == a2;
        }
      }
    }

    return 0;
  }

  return (*(*(a1 + 40) + 4 * (v7 >> 5)) >> v7) & 1;
}

void data_map_new_init_with_ctx(uint64_t a1)
{
  if ((*(a1 + 20) & 0x20) == 0)
  {
    operator new();
  }

  operator new();
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_insert_with_id(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v64 = 0;
  v8 = a1[1];
  v9 = dataMap<unsigned int,false,false,true>::dm_hash(*(v8 + 282), &a2[*(v8 + 216)], a3 - *(v8 + 216));
  v10 = *(v8 + 256);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  v55 = a4;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v14 = v13;
  v15 = v12;
  v16 = HIDWORD(v12);
  v18 = v17;
  v19 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  v54 = *(v19 + 312);
  v20 = *(v19 + 224);
  if (v20)
  {
    v20(*(v19 + 288));
  }

  v62 = v16;
  v63 = v15;
  v60 = v14;
  v61 = v18;
  if (!_setjmp(v19))
  {
    v22 = 0;
    bucket_entry = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFF);
    *buf = 0;
    v58 = 0;
    v59 = 0;
    if (!bucket_entry)
    {
      goto LABEL_47;
    }

    v24 = *bucket_entry;
    if (*bucket_entry)
    {
      goto LABEL_48;
    }

    v25 = bucket_entry;
    *buf = a3;
    v58 = a2;
    (*(*a1 + 112))(a1);
    if ((*(*a1 + 336))(a1))
    {
LABEL_12:
      v24 = 0;
      goto LABEL_48;
    }

    if (*v25 || *(a1[1] + 256) > v10)
    {
      v26 = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, 0, a2, a3, 0xFFFFFFFF);
      if (!v26)
      {
        v24 = 0;
        goto LABEL_48;
      }

      v25 = v26;
      v24 = *v26;
      if (*v26)
      {
LABEL_48:
        v41 = v24;
        v42 = threadData[9 * v63 + 1] + 320 * v62;
        *(v42 + 312) = v54;
        v43 = *(v42 + 232);
        if (v43)
        {
          v43(*(v42 + 288));
        }

        dropThreadId(v63, 0, add_explicit + 1);
        v21 = v41;
        goto LABEL_51;
      }
    }

    v27 = v25;
    if (a3 >> 28)
    {
      v29 = 5;
      v28 = v55;
      goto LABEL_28;
    }

    v28 = v55;
    if (a3 >> 21)
    {
      v30 = 4;
    }

    else
    {
      if (!(a3 >> 14))
      {
        if (a3 < 0x80)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

LABEL_28:
        v31 = *(a1[1] + 4511);
        if (!dataMap<unsigned int,false,false,true>::_data_map_grow(a1, (v29 + a3), &v64))
        {
          goto LABEL_12;
        }

        v22 = v28;
        v32 = v31 <= v28 ? v28 : v31;
        if (!dataMap<unsigned int,false,false,true>::_data_map_grow_offsets(a1, &v64, v32))
        {
          goto LABEL_12;
        }

        v33 = a1[1];
        if ((*(v33 + 275) & 1) == 0)
        {
          dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
          v33 = a1[1];
          *(v33 + 275) = 1;
        }

        v34 = *(v33 + 4503);
        *(v34 + 4 * v28) = *(v33 + 323);
        if ((*(v33 + 273) & 1) == 0)
        {
          dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
          v33 = a1[1];
          *(v33 + 273) = 1;
        }

        *(v34 + 4 * v28) = data_entry_store<unsigned int,false,false,true>(v33 + 307, buf);
        v35 = a1[1];
        if ((*(v35 + 274) & 1) == 0)
        {
          dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
          v36 = a1[1];
          *(v36 + 274) = 1;
          v35 = v36;
        }

        v37 = v35;
        if ((v64 & 4) != 0)
        {
          v38 = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, v28, a2, a3, 0xFFFFFFFF);
          v37 = a1[1];
          v27 = v38;
        }

        *v27 = v28;
        v39 = *(v37 + 4515);
        if (v39 < v28)
        {
          *(v37 + 4515) = v28;
          v39 = v28;
        }

        v40 = *(v37 + 4519) + 1;
        *(v37 + 4519) = v40;
        if (v39 < v40)
        {
          v45 = __si_assert_copy_extra_332();
          __message_assert_336(v45, v46, v47, v48, v49, v50, v51, v52, "dataMap.ipp");
          free(v45);
          if (__valid_fs(-1))
          {
            v53 = 2989;
          }

          else
          {
            v53 = 3072;
          }

          *v53 = -559038737;
          abort();
        }

        if (v39 == v40)
        {
          *(v37 + 4511) = v39 + 1;
        }

        SIActivityJournalDMAdd(*(v37 + 4543), *(v37 + 252), *(v37 + 216), v28, v9, a3);
LABEL_47:
        v24 = v22;
        goto LABEL_48;
      }

      v30 = 3;
    }

    v29 = v30;
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v19 + 312) = v54;
  CIOnThreadCleanUpReset(v60);
  dropThreadId(v63, 1, add_explicit + 1);
  CICleanUpReset(v63, v61);
  v21 = 0;
LABEL_51:
  v44 = v21;
  (*(*a1 + 112))(a1);
  return v44;
}

uint64_t dataMap<unsigned int,false,false,true>::dm_hash(char a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1)
  {
    return LegacyHash(a2, a3);
  }

  else
  {
    return commonHash(a3, a2);
  }
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4, size_t a5, unsigned int a6)
{
  v85 = *MEMORY[0x1E69E9840];
  v52 = a6;
  if (a3 < a6)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(*(a1 + 8) + 4487);
    v48 = a6;
    v11 = a2 - (a2 / v10) * v10;
    v12 = v10;
    v49 = v10;
    while (v11 >= v12)
    {
      v32 = 0;
      v33 = v11;
LABEL_37:
      if (v9 & 1 | (v33 != v10))
      {
        goto LABEL_45;
      }

      result = 0;
      v9 = 1;
      v12 = v11;
      v11 = 0;
      if (v32)
      {
        goto LABEL_46;
      }
    }

    v13 = v11;
    while (1)
    {
      v14 = *(a1 + 8);
      v15 = *(v14 + 4479);
      v16 = *(v15 + 4 * v13);
      if (v16)
      {
        v17 = v16 == a3;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
LABEL_44:
        result = v15 + 4 * v13;
        goto LABEL_46;
      }

      if (!a3)
      {
        break;
      }

LABEL_23:
      ++v13;
      if ((v8 & 1) != 0 || v13 >= v12)
      {
        goto LABEL_36;
      }
    }

    v18 = *(v14 + 4503);
    if (v16 >= a6 || (v18 + 1) <= 1)
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v34 = *__error();
      v35 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v38 = *(a1 + 8);
        v39 = fd_name(*(v38 + 220), &v69, 0x100uLL);
        *buf = 136316418;
        v58 = "_data_map_get_offset_entry_impl";
        v59 = 1024;
        v60 = 362;
        v61 = 2048;
        v62 = v16;
        v63 = 2048;
        v64 = v48;
        v65 = 2048;
        v66 = v38;
        v67 = 2080;
        v68 = v39;
        _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v34;
      a6 = v52;
LABEL_35:
      LODWORD(v13) = v13 + 1;
      v8 = 1;
LABEL_36:
      v33 = v13;
      v32 = v8;
      v10 = v49;
      goto LABEL_37;
    }

    v20 = *(v18 + 4 * v16);
    if (v20 == 1)
    {
      goto LABEL_35;
    }

    v53 = 0;
    __s2 = 0;
    v55 = 0;
    v56 = 0;
    v21 = (v20 + *(v14 + 5575));
    if (*(v14 + 323) <= v21)
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v22 = *__error();
      v28 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 8);
        v46 = *(v30 + 323);
        v47 = v30;
        v31 = fd_name(*(v30 + 220), &v69, 0x100uLL);
        *buf = 136316418;
        v58 = "_data_map_get_data_entry";
        v59 = 1024;
        v60 = 397;
        v61 = 2048;
        v62 = v21;
        v63 = 2048;
        v64 = v46;
        v65 = 2048;
        v66 = v47;
        v67 = 2080;
        v68 = v31;
        v26 = v28;
        v27 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
        goto LABEL_30;
      }
    }

    else
    {
      dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v21, &v53, &v56);
      if (v56 != 1)
      {
        if (v53 == a5)
        {
          v29 = memcmp(a4, __s2, a5);
          a6 = v52;
          if (!v29)
          {
            goto LABEL_44;
          }

          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v22 = *__error();
      v23 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = fd_name(*(*(a1 + 8) + 220), &v69, 0x100uLL);
        v25 = *(*(a1 + 8) + 323);
        *buf = 136316418;
        v58 = "_data_map_get_data_entry";
        v59 = 1024;
        v60 = 393;
        v61 = 2080;
        v62 = v24;
        v63 = 2048;
        v64 = v21;
        v65 = 2048;
        v66 = v25;
        v67 = 2048;
        v68 = v53;
        v26 = v23;
        v27 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_30:
        _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x3Au);
      }
    }

    *__error() = v22;
    v8 = 1;
LABEL_22:
    a6 = v52;
    goto LABEL_23;
  }

  if (!a3)
  {
LABEL_45:
    result = 0;
    goto LABEL_46;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v40 = *__error();
  v41 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v44 = *(a1 + 8);
    v45 = fd_name(*(v44 + 220), &v69, 0x100uLL);
    *buf = 136316418;
    v58 = "_data_map_get_bucket_entry";
    v59 = 1024;
    v60 = 514;
    v61 = 2048;
    v62 = a3;
    v63 = 2048;
    v64 = v52;
    v65 = 2048;
    v66 = v44;
    v67 = 2080;
    v68 = v45;
    _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
  }

  v42 = __error();
  result = 0;
  *v42 = v40;
LABEL_46:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_grow(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = dataMap<unsigned int,false,false,true>::_data_map_grow_offsets(a1, a3, *(*(a1 + 8) + 4511));
  v7 = *(a1 + 8);
  if (!v6 || *(v7 + 278))
  {
    goto LABEL_3;
  }

  v10 = *(v7 + 4511) - *(v7 + 4523);
  if (v10 >= 2 * *(v7 + 4487) / 3u || v10 < 2 * *(v7 + 4527))
  {
    v11 = dataMap<unsigned int,false,false,true>::_data_map_rehash(a1);
    v7 = *(a1 + 8);
    if (!v11)
    {
      goto LABEL_3;
    }

    *a3 |= 4u;
  }

  v12 = a2 + *(v7 + 323) + 8;
  if (v12 <= *(v7 + 315))
  {
    return 1;
  }

  if (_storageWindowsSetFileSize((v7 + 307), (v12 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]))
  {
    *a3 |= 1u;
    return 1;
  }

  v7 = *(a1 + 8);
LABEL_3:
  v8 = (v7 + 278);
  result = 0;
  if (!*v8)
  {
    *v8 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_grow_offsets(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 278))
  {
    goto LABEL_2;
  }

  v6 = (v3 + 4463);
  if (*v6 > a3)
  {
    return 1;
  }

  v9 = (*MEMORY[0x1E69E9AC8] + 4 * (a3 + 1) - 1) & -*MEMORY[0x1E69E9AC8];
  v10 = fd_truncate(*(v6 + 28), v9);
  v3 = *(a1 + 8);
  if (v10 != -1)
  {
    *(v3 + 4459) = v9;
    v11 = *(v3 + 4499);
    if (v9 <= v11)
    {
LABEL_9:
      *(v3 + 4463) = (v9 >> 2);
      *a2 |= 2u;
      return 1;
    }

    v12 = 2 * v11;
    munmap(*(v3 + 4503), v11);
    v13 = *(a1 + 8);
    *(v13 + 4499) = 0;
    v14 = fd_mmap(*(v13 + 4491));
    v3 = *(a1 + 8);
    *(v3 + 4503) = v14;
    if (v14 != -1)
    {
      *(v3 + 4499) = v12;
      goto LABEL_9;
    }
  }

LABEL_2:
  v4 = (v3 + 278);
  result = 0;
  if (!*v4)
  {
    *v4 = 1;
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_dirty(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 299);
  if (*(v2 + 16))
  {
    v3 = result;
    *(v2 + 16) = 0;
    fd_pwrite(*(v1 + 220), v2, 0x38uLL, 0);
    v4 = *(*(v3 + 8) + 220);

    return fd_sync(v4, 0);
  }

  return result;
}

uint64_t data_entry_store<unsigned int,false,false,true>(uint64_t a1, unsigned int *a2)
{
  if (*a2 < 0x80)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (*a2 >> 14)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (*a2 >> 21)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  if (*a2 >> 28)
  {
    v7 = 5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 + *a2;
  v9 = *(a1 + 16);
  v10 = v9 + v8;
  if ((v9 + v8) < *(a1 + 8))
  {
    goto LABEL_14;
  }

  if (_storageWindowsExpandBacking(a1, v8))
  {
    v9 = *(a1 + 16);
    v10 = v9 + v8;
LABEL_14:
    *(a1 + 16) = v10;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  v11 = _windowsResolvePtr(a1, v9, v8);
  v12 = *a2;
  v13 = *a2 >> 28;
  if (v13)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = (v12 >> 14) | 0x80;
    v11[3] = (v12 >> 21) | 0x80;
    v11[4] = v13;
    v14 = 5;
  }

  else if (v12 >= 0x200000)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = (v12 >> 14) | 0x80;
    v11[3] = v12 >> 21;
    v14 = 4;
  }

  else if (v12 >= 0x4000)
  {
    *v11 = v12 | 0x80;
    v11[1] = (v12 >> 7) | 0x80;
    v11[2] = v12 >> 14;
    v14 = 3;
  }

  else if (v12 >= 0x80)
  {
    *v11 = v12 | 0x80;
    v11[1] = v12 >> 7;
    v14 = 2;
  }

  else
  {
    *v11 = v12;
    v14 = 1;
  }

  memcpy(&v11[v14], *(a2 + 1), *a2);
  return v9;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_rehash(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  *(v2 + 4527) = 0;
  v3 = *(v2 + 4511) - *(v2 + 4523);
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  v6 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 4511);
    v9 = *(v7 + 4523);
    v10 = *(v7 + 4487);
    *buf = 134219008;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    *&buf[24] = 1024;
    *&buf[26] = v3;
    *&buf[30] = 1024;
    LODWORD(v77) = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "rehash new %p max id: %d deletes: %d count: %d hash_size: %d", buf, 0x24u);
  }

  *__error() = v4;
  v11 = *(a1 + 8);
  v12 = (v11 + 4511);
  v13 = *(v11 + 4543);
  v14 = *(v11 + 252);
  v15 = *(v11 + 299);
  if (v15)
  {
    v16 = *(v15 + 16);
    if (v16 < 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  SIActivityJournalEvent(v13, v14, 3u, v17, *v12);
  v18 = *(a1 + 8);
  v19 = *(v18 + 4479);
  v20 = 4 * *(v18 + 4487);
  fd_system_status_stall_if_busy();
  msync(v19, v20, 4);
  if (fd_truncate(*(*(a1 + 8) + 236), 0) == -1)
  {
    goto LABEL_33;
  }

  v21 = 2 * v3;
  if (2 * v3 <= (*MEMORY[0x1E69E9AC8] >> 2))
  {
    v21 = *MEMORY[0x1E69E9AC8] >> 2;
  }

  v22 = *(a1 + 8);
  *(v22 + 4487) = v21;
  v23 = 4 * v21;
  if (fd_truncate(*(v22 + 236), v23) == -1)
  {
    goto LABEL_33;
  }

  v24 = *(a1 + 8);
  if ((*(v24 + 274) & 1) == 0)
  {
    dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
    v24 = *(a1 + 8);
    *(v24 + 274) = 1;
  }

  *(v24 + 4471) = v23;
  v25 = *(v24 + 4475);
  if (v23 > v25)
  {
    v26 = v24 + 4096;
    v27 = v23 & 0xFFFFFFFC;
    v28 = v25;
    do
    {
      v29 = v28;
      v28 *= 2;
    }

    while (v29 < v27);
    munmap(*(v26 + 383), v25);
    v30 = *(a1 + 8);
    *(v30 + 4475) = 0;
    *(v30 + 4479) = -1;
    v31 = fd_mmap(*(v30 + 236));
    v24 = *(a1 + 8);
    *(v24 + 4479) = v31;
    if (v31 == -1)
    {
      goto LABEL_33;
    }

    *(v24 + 4475) = v29;
  }

  ++*(v24 + 256);
  LODWORD(v32) = *(v24 + 4511);
  if (v32 < 2)
  {
LABEL_30:
    result = 1;
    goto LABEL_36;
  }

  v33 = 1;
  while (1)
  {
    v34 = *(v24 + 4503);
    if ((v34 + 1) <= 1)
    {
      break;
    }

    v35 = *(v34 + 4 * v33);
    if (v35 != 1)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v36 = (v35 + *(v24 + 5575));
      if (*(v24 + 323) <= v36)
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        memset(buf, 0, sizeof(buf));
        v42 = *__error();
        v49 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        v50 = *(a1 + 8);
        v51 = *(v50 + 323);
        v52 = fd_name(*(v50 + 220), buf, 0x100uLL);
        *v64 = 136316418;
        v65 = "_data_map_get_data_entry";
        v66 = 1024;
        v67 = 397;
        v68 = 2048;
        v69 = v36;
        v70 = 2048;
        v71 = v51;
        v72 = 2048;
        v73 = v50;
        v74 = 2080;
        v75 = v52;
        v53 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_41:
        v56 = v49;
        goto LABEL_43;
      }

      dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v35 + *(v24 + 5575), &v60, &v63);
      if (v63 == 1)
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        memset(buf, 0, sizeof(buf));
        v42 = *__error();
        v49 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        v54 = fd_name(*(*(a1 + 8) + 220), buf, 0x100uLL);
        v55 = *(*(a1 + 8) + 323);
        *v64 = 136316418;
        v65 = "_data_map_get_data_entry";
        v66 = 1024;
        v67 = 393;
        v68 = 2080;
        v69 = v54;
        v70 = 2048;
        v71 = v36;
        v72 = 2048;
        v73 = v55;
        v74 = 2048;
        v75 = v60;
        v53 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
        goto LABEL_41;
      }

      v37 = *(a1 + 8);
      v38 = *(v37 + 216);
      if (v60 < v38)
      {
        goto LABEL_33;
      }

      v39 = data_entry_hash<unsigned int,false,false,true>(v60, v61, v38, *(v37 + 282));
      bucket_entry = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v39, v33, 0, 0, *(v37 + 4511));
      if (!bucket_entry || *bucket_entry)
      {
        goto LABEL_33;
      }

      *bucket_entry = v33;
      v24 = *(a1 + 8);
    }

    ++v33;
    v32 = *(v24 + 4511);
    if (v33 >= v32)
    {
      goto LABEL_30;
    }
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  memset(buf, 0, sizeof(buf));
  v42 = *__error();
  v43 = _SILogForLogForCategory(0);
  if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_32;
  }

  v57 = v32;
  v58 = *(a1 + 8);
  v59 = fd_name(*(v58 + 220), buf, 0x100uLL);
  *v64 = 136316418;
  v65 = "_data_map_get_offset_entry_impl";
  v66 = 1024;
  v67 = 362;
  v68 = 2048;
  v69 = v33;
  v70 = 2048;
  v71 = v57;
  v72 = 2048;
  v73 = v58;
  v74 = 2080;
  v75 = v59;
  v53 = "%s:%d: invalid data id %llu max %llu %p %s";
  v56 = v43;
LABEL_43:
  _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, v53, v64, 0x3Au);
LABEL_32:
  *__error() = v42;
LABEL_33:
  v44 = *__error();
  v45 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    v48 = *(a1 + 8);
    *buf = 136315650;
    *&buf[4] = "_data_map_rehash";
    *&buf[12] = 1024;
    *&buf[14] = 645;
    *&buf[18] = 2048;
    *&buf[20] = v48;
    _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: re-build hash error %p", buf, 0x1Cu);
  }

  v46 = __error();
  result = 0;
  *v46 = v44;
LABEL_36:
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t dataMap<unsigned int,false,false,true>::data_entry_restore<false>(uint64_t a1, unsigned int a2, unsigned int *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = _windowsResolvePtr(*(a1 + 8) + 307, a2, 4);
  v9 = *(a1 + 8);
  v10 = *v8;
  if ((v10 & 0x80) == 0)
  {
    v11 = 1;
    goto LABEL_8;
  }

  v12 = *(v9 + 323);
  if (v12 <= 1)
  {
    goto LABEL_7;
  }

  v13 = v8[1];
  if ((v8[1] & 0x80000000) == 0)
  {
    v10 = v10 & 0x7F | (v13 << 7);
    v11 = 2;
    goto LABEL_8;
  }

  if (v12 == 2)
  {
    goto LABEL_7;
  }

  v15 = v8[2];
  if ((v8[2] & 0x80000000) == 0)
  {
    v11 = 3;
    v10 = ((v13 & 0x7F) << 7) | (v15 << 14) | v10 & 0x7F;
    goto LABEL_8;
  }

  if (v12 <= 3)
  {
    goto LABEL_7;
  }

  v16 = v8[3];
  if (v8[3] < 0)
  {
    if (v12 != 4)
    {
      v18 = v8[4];
      if (v18 < 0)
      {
        if (__valid_fs(-1))
        {
          v19 = __si_assert_copy_extra_332();
          v20 = v19;
          v21 = "";
          if (v19)
          {
            v21 = v19;
          }

          si_analytics_log_2752("%s:%u: failed assertion '%s' %s readVInt32_boundschecked: exceeds max size for uint32_t", "VIntUtils.h", 389, "(b4 & 0x80) == 0", v21);
          free(v20);
          v22 = 2816;
        }

        else
        {
          v22 = 3072;
        }

        *v22 = -559038737;
        abort();
      }

      v17 = ((v16 & 0x7F) << 21) | (v18 << 28) | ((v15 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v10 & 0x7F;
      v11 = 5;
      goto LABEL_19;
    }

LABEL_7:
    v11 = 0;
    v10 = 0;
    *a4 = 1;
    goto LABEL_8;
  }

  v17 = ((v15 & 0x7F) << 14) | (v16 << 21) | ((v13 & 0x7F) << 7) | v10 & 0x7F;
  v11 = 4;
LABEL_19:
  v10 = v17;
LABEL_8:
  *a3 = v10;
  result = _windowsResolvePtr(v9 + 307, v7, v11 + v10);
  if (v11 + *a3 <= *(*(a1 + 8) + 323))
  {
    *(a3 + 1) = result + v11;
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

uint64_t data_entry_hash<unsigned int,false,false,true>(int a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a4)
  {
    return LegacyHash((a2 + a3), a1 - a3);
  }

  else
  {
    return commonHash(a1 - a3, (a2 + a3));
  }
}

uint64_t LegacyHash(const unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    v3 = a2 & 3;
    if (a2 >= 4)
    {
      v4 = (a2 >> 2) + 1;
      do
      {
        v5 = ((a2 + *a1) << 16) ^ (*(a1 + 1) << 11) ^ (a2 + *a1);
        a1 += 4;
        LODWORD(a2) = v5 + (v5 >> 11);
        --v4;
      }

      while (v4 > 1);
    }

    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v7 = (a2 + *a1) ^ ((a2 + *a1) << 11);
        LODWORD(a2) = v7 + (v7 >> 17);
      }

      else
      {
        v8 = (a1[2] << 18) ^ ((a2 + *a1) << 16) ^ (a2 + *a1);
        LODWORD(a2) = v8 + (v8 >> 11);
      }
    }

    else if (v3)
    {
      v6 = (a2 + *a1) ^ ((a2 + *a1) << 10);
      LODWORD(a2) = v6 + (v6 >> 1);
    }

    v9 = (a2 ^ (8 * a2)) + ((a2 ^ (8 * a2)) >> 5);
    v10 = (v9 ^ (16 * v9)) + ((v9 ^ (16 * v9)) >> 17);
    return (v10 ^ (v10 << 25)) + ((v10 ^ (v10 << 25)) >> 6);
  }

  return v2;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_get_data_for_offset_locked(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v5 = *(a1 + 8);
  v6 = (*(v5 + 5575) + a2);
  if (*(v5 + 323) <= v6)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
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
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 8);
      v18 = *(v17 + 323);
      v19 = fd_name(*(v17 + 220), &v36, 0x100uLL);
      *buf = 136316418;
      v25 = "_data_map_get_data_entry";
      v26 = 1024;
      v27 = 397;
      v28 = 2048;
      v29 = v6;
      v30 = 2048;
      v31 = v18;
      v32 = 2048;
      v33 = v17;
      v34 = 2080;
      v35 = v19;
      v12 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      goto LABEL_12;
    }

LABEL_6:
    v13 = __error();
    result = 0;
    *v13 = v8;
    goto LABEL_10;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v6, &v20, &v23);
  if (v23 == 1)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
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
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = fd_name(*(*(a1 + 8) + 220), &v36, 0x100uLL);
      v11 = *(*(a1 + 8) + 323);
      *buf = 136316418;
      v25 = "_data_map_get_data_entry";
      v26 = 1024;
      v27 = 393;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = v6;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v20;
      v12 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_12:
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, v12, buf, 0x3Au);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v15 = *(*(a1 + 8) + 216);
  if (a4)
  {
    *a4 = v20 - v15;
  }

  result = v21 + v15;
LABEL_10:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL dataMap<unsigned int,false,false,true>::data_map_is_empty(void *a1)
{
  memset(&v8, 0, sizeof(v8));
  if (fd_stat(*(a1[1] + 236), &v8))
  {
    v2 = 1;
  }

  else
  {
    v2 = v8.st_size == 0;
  }

  if (!v2)
  {
    return 0;
  }

  if (!fd_stat(*(a1[1] + 220), &v8) && v8.st_size != 0)
  {
    return 0;
  }

  if (!fd_stat(*(a1[1] + 4491), &v8) && v8.st_size != 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 272))(a1);
  return fd_stat(v5, &v8) || v8.st_size == 0;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_mprotect_storage(uint64_t a1, int a2)
{
  _windowsResolvePtr(*(a1 + 8) + 307, 4uLL, 4);
  storageWindowsProtect(*(a1 + 8) + 307, a2);
  return 0;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_garbage_collect_complete(int a1, int a2, uint64_t a3, const char *a4, const char *a5)
{
  _rename_prefix_suffix(a2, a4 + 268, ".offsets", a4, a5);
  _rename_prefix_suffix(a2, a4 + 268, ".data", v7, v8);

  return _rename_prefix_suffix(a2, a4 + 268, ".header", v9, v10);
}

uint64_t _rename_prefix_suffix(int a1, const char *a2, const char *a3, const char *a4, const char *a5)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(v11, 0x400uLL);
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s%s", "", a2, a3);
  snprintf(v11, 0x400uLL, "%s%s%s", "tmp.", a2, a3);
  result = renameat(a1, v11, a1, __str);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_defer_block(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 4535);
  if (v3)
  {
    return v3(*(v2 + 244));
  }

  else
  {
    return (*(a2 + 16))(a2);
  }
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_get_data_offset_locked(uint64_t a1, unsigned int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(v4 + 4511);
  v6 = *(v4 + 4503);
  if (v5 > a2 && (v6 + 1) > 1)
  {
    v10 = *(v6 + 4 * a2);
    if (v10 == 1)
    {
      v10 = 0;
    }

    else if (*(v4 + 264))
    {
      os_unfair_lock_lock((v4 + 260));
      v13 = *(a1 + 8);
      v14 = *(v13 + 264);
      if (v14)
      {
        bit_vector_set(v14, a2);
        v13 = *(a1 + 8);
      }

      os_unfair_lock_unlock((v13 + 260));
    }
  }

  else
  {
    memset(v29, 0, sizeof(v29));
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 8);
      v16 = fd_name(*(v15 + 220), v29, 0x100uLL);
      v17 = 136316418;
      v18 = "_data_map_get_offset_entry_impl";
      v19 = 1024;
      v20 = 362;
      v21 = 2048;
      v22 = a2;
      v23 = 2048;
      v24 = v5;
      v25 = 2048;
      v26 = v15;
      v27 = 2080;
      v28 = v16;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v17, 0x3Au);
    }

    v10 = 0;
    *__error() = v8;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_clone_files(uint64_t a1, const char *a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v13 = 0;
  v6 = *(*(a1 + 8) + 277);
  asprintf(&v13, "%s%s", a2, ".buckets");
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(*(a1 + 8) + 236), v13, 514, v7);
  *a3 = sibling_protected;
  if (sibling_protected)
  {
    fd_copyfile(*(*(a1 + 8) + 236), sibling_protected, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".header");
  v9 = fd_create_sibling_protected(*(*(a1 + 8) + 220), v13, 514, v7);
  *(a3 + 24) = v9;
  if (v9)
  {
    fd_copyfile(*(*(a1 + 8) + 220), v9, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".offsets");
  v10 = fd_create_sibling_protected(*(*(a1 + 8) + 4491), v13, 514, v7);
  *(a3 + 8) = v10;
  if (v10)
  {
    fd_copyfile(*(*(a1 + 8) + 4491), v10, 1);
  }

  free(v13);
  asprintf(&v13, "%s%s", a2, ".data");
  v11 = fd_create_sibling_protected(*(*(a1 + 8) + 307), v13, 514, v7);
  *(a3 + 16) = v11;
  if (v11)
  {
    fd_copyfile(*(*(a1 + 8) + 307), v11, 1);
  }

  free(v13);
  return 0;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_wrlock(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    v2 = 0;
  }

  else
  {
    v2 = _db_write_lock(v1);
    if (v2)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v2;
        if (v2 == -1)
        {
          v7 = *__error();
        }

        v8 = 136315650;
        v9 = "_data_map_wrlock";
        v10 = 1024;
        v11 = 164;
        v12 = 1024;
        v13 = v7;
        _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_wrlock error %d", &v8, 0x18u);
      }

      *__error() = v5;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void *dataMap<unsigned int,false,false,true>::data_map_copy_deleted_ids(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 && (v2 = v1 + 4096, *(v2 + 427)))
  {
    v4 = *(v2 + 415);
    v5 = bit_vector_create(v4);
    if (v4 >= 2)
    {
      for (i = 1; v4 != i; ++i)
      {
        v7 = *(a1 + 8);
        v8 = *(v7 + 4511);
        v9 = *(v7 + 4503);
        if (i < v8 && (v9 + 1) > 1)
        {
          if (*(v9 + 4 * i) != 1)
          {
            continue;
          }
        }

        else
        {
          memset(v29, 0, sizeof(v29));
          v11 = *__error();
          v12 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = *(a1 + 8);
            v14 = fd_name(*(v13 + 220), v29, 0x100uLL);
            *buf = 136316418;
            v18 = "_data_map_get_offset_entry_impl";
            v19 = 1024;
            v20 = 362;
            v21 = 2048;
            v22 = i;
            v23 = 2048;
            v24 = v8;
            v25 = 2048;
            v26 = v13;
            v27 = 2080;
            v28 = v14;
            _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
          }

          *__error() = v11;
        }

        bit_vector_set(v5, i);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

void *bit_vector_create(CFIndex a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
  if (!v2)
  {
    v7 = __si_assert_copy_extra_332();
    __message_assert_336(v7, v8, v9, v10, v11, v12, v13, v14, "bit_vector.h");
    free(v7);
    if (__valid_fs(-1))
    {
      v15 = 2989;
    }

    else
    {
      v15 = 3072;
    }

    *v15 = -559038737;
    abort();
  }

  v3 = v2;
  v4 = *MEMORY[0x1E695E480];
  if (a1 <= 128)
  {
    a1 = 128;
  }

  *v3 = 0;
  v3[1] = a1;
  Mutable = CFBitVectorCreateMutable(v4, a1);
  v3[2] = Mutable;
  CFBitVectorSetCount(Mutable, a1);
  if (!v3[2])
  {
    v16 = __si_assert_copy_extra_332();
    __message_assert_336(v16, v17, v18, v19, v20, v21, v22, v23, "bit_vector.h");
    free(v16);
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

  return v3;
}

{
  v2 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
  if (!v2)
  {
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert(v7, "bit_vector.h", 41, "bv", v9);
    free(v8);
    if (__valid_fs(-1))
    {
      v10 = 2989;
    }

    else
    {
      v10 = 3072;
    }

    *v10 = -559038737;
    abort();
  }

  v3 = v2;
  v4 = *MEMORY[0x1E695E480];
  if (a1 <= 128)
  {
    a1 = 128;
  }

  *v3 = 0;
  v3[1] = a1;
  Mutable = CFBitVectorCreateMutable(v4, a1);
  v3[2] = Mutable;
  CFBitVectorSetCount(Mutable, a1);
  if (!v3[2])
  {
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert(v11, "bit_vector.h", 47, "bv->_cfbv", v13);
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

  return v3;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_garbage_collect(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  if (!*(a1[1] + 264))
  {
    v13 = 0;
    goto LABEL_13;
  }

  (*(*a1 + 336))(a1);
  v8 = *(a1[1] + 264);
  if (a2 >= (*(*a1 + 96))(a1))
  {
    goto LABEL_10;
  }

  v9 = (*(*a1 + 96))(a1);
  if (v9 <= a2)
  {
    goto LABEL_10;
  }

  v107.location = a2;
  v107.length = (*(a1[1] + 4511) - a2);
  FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(*(v8 + 16), v107, 0);
  v11 = FirstIndexOfBit;
  if (FirstIndexOfBit < a2)
  {
    goto LABEL_10;
  }

  if (*(a1[1] + 4511) <= FirstIndexOfBit || FirstIndexOfBit > v9)
  {
    goto LABEL_10;
  }

  v75 = a3;
  while (1)
  {
    if (*v8 <= v11 || !CFBitVectorGetBitAtIndex(*(v8 + 16), v11))
    {
      v16 = a1[1];
      v17 = *(v16 + 4511);
      v18 = *(v16 + 4503);
      if (v11 >= v17 || (v18 + 1) <= 1)
      {
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        memset(v92, 0, sizeof(v92));
        v20 = *__error();
        v21 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v30 = a1[1];
          v31 = fd_name(*(v30 + 220), v92, 0x100uLL);
          *buf = 136316418;
          v81 = "_data_map_get_offset_entry_impl";
          v82 = 1024;
          v83 = 362;
          v84 = 2048;
          v85 = v11;
          v86 = 2048;
          v87 = v17;
          v88 = 2048;
          v89 = v30;
          v90 = 2080;
          v91 = v31;
          _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        *__error() = v20;
        goto LABEL_23;
      }

      v22 = *(v18 + 4 * v11);
      if (v22 >= 2)
      {
        break;
      }
    }

LABEL_23:
    if (++v11 > v9)
    {
      goto LABEL_10;
    }
  }

  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v23 = (v22 + *(v16 + 5575));
  if (*(v16 + 323) <= v23)
  {
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    memset(v92, 0, sizeof(v92));
    v24 = *__error();
    v32 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = a1[1];
      v34 = *(v33 + 323);
      v35 = fd_name(*(v33 + 220), v92, 0x100uLL);
      *buf = 136316418;
      v81 = "_data_map_get_data_entry";
      v82 = 1024;
      v83 = 397;
      v84 = 2048;
      v85 = v23;
      v86 = 2048;
      v87 = v34;
      v88 = 2048;
      v89 = v33;
      v90 = 2080;
      v91 = v35;
      v28 = v32;
      v29 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
      goto LABEL_33;
    }

LABEL_31:
    *__error() = v24;
    goto LABEL_23;
  }

  dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v23, &v76, &v79);
  if (v79 == 1)
  {
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    memset(v92, 0, sizeof(v92));
    v24 = *__error();
    v25 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = fd_name(*(a1[1] + 220), v92, 0x100uLL);
      v27 = *(a1[1] + 323);
      *buf = 136316418;
      v81 = "_data_map_get_data_entry";
      v82 = 1024;
      v83 = 393;
      v84 = 2080;
      v85 = v26;
      v86 = 2048;
      v87 = v23;
      v88 = 2048;
      v89 = v27;
      v90 = 2048;
      v91 = v76;
      v28 = v25;
      v29 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_33:
      _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x3Au);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v36 = v75;
  if ((v75 & 4) == 0 && a4)
  {
    v13 = dataMap<unsigned int,false,false,true>::_data_map_garbage_compact_collect<false>(a1);
    goto LABEL_11;
  }

  v37 = (*(*a1 + 96))(a1);
  if (v11 > v37)
  {
    v38 = 0;
    goto LABEL_79;
  }

  *&v74[8] = 0;
  *v74 = *(a1[1] + 216);
  while (2)
  {
    if (*v8 <= v11 || !CFBitVectorGetBitAtIndex(*(v8 + 16), v11))
    {
      v39 = a1[1];
      v40 = *(v39 + 4511);
      v41 = *(v39 + 4503);
      if (v11 >= v40 || (v41 + 1) <= 1)
      {
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        memset(v92, 0, sizeof(v92));
        v43 = *__error();
        v44 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v53 = a1[1];
          v54 = fd_name(*(v53 + 220), v92, 0x100uLL);
          *buf = 136316418;
          v81 = "_data_map_get_offset_entry_impl";
          v82 = 1024;
          v83 = 362;
          v84 = 2048;
          v85 = v11;
          v86 = 2048;
          v87 = v40;
          v88 = 2048;
          v89 = v53;
          v90 = 2080;
          v91 = v54;
          _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
        }

        *__error() = v43;
        goto LABEL_50;
      }

      v45 = *(v41 + 4 * v11);
      if (v45 < 2)
      {
        goto LABEL_50;
      }

      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v46 = (v45 + *(v39 + 5575));
      if (*(v39 + 323) <= v46)
      {
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        memset(v92, 0, sizeof(v92));
        v47 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v64 = a1[1];
          v65 = *(v64 + 323);
          v66 = fd_name(*(v64 + 220), v92, 0x100uLL);
          *buf = 136316418;
          v81 = "_data_map_get_data_entry";
          v82 = 1024;
          v83 = 397;
          v84 = 2048;
          v85 = v46;
          v86 = 2048;
          v87 = v65;
          v88 = 2048;
          v89 = v64;
          v90 = 2080;
          v91 = v66;
          v51 = v55;
          v52 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_74:
          _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, v52, buf, 0x3Au);
        }

LABEL_58:
        *__error() = v47;
        v56 = *&v74[4];
      }

      else
      {
        dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v46, &v76, &v79);
        if (v79 == 1)
        {
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          memset(v92, 0, sizeof(v92));
          v47 = *__error();
          v48 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = fd_name(*(a1[1] + 220), v92, 0x100uLL);
            v50 = *(a1[1] + 323);
            *buf = 136316418;
            v81 = "_data_map_get_data_entry";
            v82 = 1024;
            v83 = 393;
            v84 = 2080;
            v85 = v49;
            v86 = 2048;
            v87 = v46;
            v88 = 2048;
            v89 = v50;
            v90 = 2048;
            v91 = v76;
            v51 = v48;
            v52 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
            goto LABEL_74;
          }

          goto LABEL_58;
        }

        if ((v75 & 2) != 0)
        {
          if ((v75 & 8) != 0)
          {
            if (gSILogLevels[0] >= 5)
            {
              v57 = *__error();
              v67 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = a1[1];
                v69 = v77 + *(v68 + 216);
                *v92 = 67109890;
                *&v92[4] = v11;
                *&v92[8] = 1024;
                *&v92[10] = v76;
                *&v92[14] = 2080;
                *&v92[16] = v69;
                *&v92[24] = 2048;
                *&v92[26] = v68;
                v60 = v67;
                v61 = "Delete data for id:%d size:%d %s from %p";
                v62 = 34;
LABEL_77:
                _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, v61, v92, v62);
              }

LABEL_78:
              *__error() = v57;
            }
          }

          else if (gSILogLevels[0] >= 5)
          {
            v57 = *__error();
            v58 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = a1[1];
              *v92 = 67109632;
              *&v92[4] = v11;
              *&v92[8] = 1024;
              *&v92[10] = v76;
              *&v92[14] = 2048;
              *&v92[16] = v59;
              v60 = v58;
              v61 = "Delete data for id:%d size:%d from %p";
              v62 = 24;
              goto LABEL_77;
            }

            goto LABEL_78;
          }
        }

        v56 = *&v74[4] + 1;
        if ((v75 & 4) == 0)
        {
          if (!*&v74[4])
          {
            v63 = a1[1];
            if ((*(v63 + 273) & 1) == 0)
            {
              dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
              v63 = a1[1];
              *(v63 + 273) = 1;
            }

            if ((*(v63 + 275) & 1) == 0)
            {
              dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
              *(a1[1] + 275) = 1;
            }
          }

          *(v41 + 4 * v11) = 1;
          bzero(v77, (v76 + *v74));
        }
      }

      *&v74[4] = v56;
    }

LABEL_50:
    if (++v11 <= v37)
    {
      continue;
    }

    break;
  }

  v36 = v75;
  v38 = *&v74[4];
LABEL_79:
  if ((v36 & 2) == 0)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v70 = *__error();
  v71 = _SILogForLogForCategory(0);
  v72 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v71, v72))
  {
    v73 = a1[1];
    *v92 = 67109376;
    *&v92[4] = v38;
    *&v92[8] = 2048;
    *&v92[10] = v73;
    _os_log_impl(&dword_1C278D000, v71, v72, "Found %d deleted strings from %p", v92, 0x12u);
  }

  v13 = 0;
  *__error() = v70;
LABEL_11:
  (*(*a1 + 112))(a1);
LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_garbage_compact_collect<false>(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v84 = v4;
  v85 = v5;
  v7 = v6;
  v9 = v8;
  v126 = *MEMORY[0x1E69E9840];
  v10 = (*(*v8 + 96))(v8, v1);
  bzero(v99, 0x400uLL);
  bzero(v98, 0x400uLL);
  v127.location = 0;
  v95 = 0;
  v11 = *(v9 + 8);
  v12 = *(v11 + 277);
  *v3 = 842150450;
  *(v3 + 8) = 0;
  v13 = *(v11 + 4511);
  *(v3 + 16) = v13;
  v127.length = (v13 - 1);
  v83 = v7;
  *(v3 + 24) = CFBitVectorGetCountOfBit(*(v7 + 16), v127, 1u);
  bzero(__src, 0x1058uLL);
  __src[520] = -1;
  v14 = fd_name(*(*(v9 + 8) + 307), v99, 0x400uLL);
  snprintf(v98, 0x400uLL, "tmp.%s", v14);
  if (v12)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(*(v9 + 8) + 307), v98, 1538, v15);
  if (fd_truncate(sibling_protected, *(*(v9 + 8) + 315)) == -1)
  {
    goto LABEL_16;
  }

  v17 = *(*(v9 + 8) + 315);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN7dataMapIjLb0ELb0ELb1EE33_data_map_garbage_compact_collectILb0EEENSt3__19enable_ifIXntT_EiE4typeEP10bit_vectorj14DMCollectFlagsP32data_map_garbage_compact_context_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_238;
  aBlock[4] = v9;
  __src[0] = sibling_protected;
  WORD2(__src[4]) = 256;
  __src[1] = v17;
  LODWORD(__src[4]) = 1;
  __src[5] = _Block_copy(aBlock);
  LOBYTE(__src[6]) = 26;
  bzero(&__src[7], 0x1000uLL);
  v18 = fd_name(*(*(v9 + 8) + 4491), v99, 0x400uLL);
  snprintf(v98, 0x400uLL, "tmp.%s", v18);
  __src[519] = fd_create_sibling_protected(*(*(v9 + 8) + 4491), v98, 1538, v15);
  if (fd_truncate(__src[519], *(*(v9 + 8) + 4459)) == -1)
  {
LABEL_16:
    v32 = *__error();
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0xFFFFFFFFLL;
    }

    goto LABEL_19;
  }

  v19 = *(v9 + 8);
  __src[522] = *(v19 + 4459);
  v20 = *(v19 + 4499);
  __src[520] = fd_mmap(__src[519]);
  if (__src[520] == -1)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v112[0]) = 136315394;
      *(v112 + 4) = "_data_map_garbage_compact_collect";
      WORD6(v112[0]) = 1024;
      *(v112 + 14) = 2911;
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: offsets fd_mmap error", v112, 0x12u);
    }

    *__error() = v30;
    goto LABEL_16;
  }

  v96[2] = 0;
  __src[521] = *(*(v9 + 8) + 4499);
  v96[0] = 1;
  v96[1] = "";
  data_entry_store<unsigned int,false,false,true>(__src, v96);
  *__src[520] = 0;
  v95 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v21 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(v9 + 8), 0, add_explicit + 1);
  v23 = v22;
  v24 = v21;
  v25 = HIDWORD(v21);
  v27 = v26;
  v28 = threadData[9 * v21 + 1] + 320 * HIDWORD(v21);
  v81 = *(v28 + 312);
  v29 = *(v28 + 224);
  if (v29)
  {
    v29(*(v28 + 288));
  }

  v91 = v25;
  v92 = v24;
  v89 = v23;
  v90 = v27;
  if (_setjmp(v28))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v112[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v112, 2u);
    }

    *(v28 + 312) = v81;
    CIOnThreadCleanUpReset(v89);
    dropThreadId(v92, 1, add_explicit + 1);
    CICleanUpReset(v92, v90);
    goto LABEL_85;
  }

  if (v10)
  {
    v36 = v10;
    for (i = 1; i <= v36; ++i)
    {
      v38 = *(v9 + 8);
      v39 = *(v38 + 4511);
      v40 = *(v38 + 4503);
      if (i >= v39 || (v40 + 1) <= 1)
      {
        v125 = 0u;
        v124 = 0u;
        v123 = 0u;
        v122 = 0u;
        v121 = 0u;
        v120 = 0u;
        v119 = 0u;
        v118 = 0u;
        v117 = 0u;
        v116 = 0u;
        v115 = 0u;
        v114 = 0u;
        v113 = 0u;
        memset(v112, 0, sizeof(v112));
        v42 = *__error();
        v43 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v53 = *(v9 + 8);
          v54 = fd_name(*(v53 + 220), v112, 0x100uLL);
          v100 = 136316418;
          v101 = "_data_map_get_offset_entry_impl";
          v102 = 1024;
          v103 = 362;
          v104 = 2048;
          v105 = i;
          v106 = 2048;
          v107 = v39;
          v108 = 2048;
          v109 = v53;
          v110 = 2080;
          v111 = v54;
          _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", &v100, 0x3Au);
        }

        v44 = i;
        *__error() = v42;
        goto LABEL_36;
      }

      v44 = i;
      v45 = *(v40 + 4 * i);
      if (v45 >= 2)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v97 = 0;
        v46 = (v45 + *(v38 + 5575));
        if (*(v38 + 323) <= v46)
        {
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          v119 = 0u;
          v118 = 0u;
          v117 = 0u;
          v116 = 0u;
          v115 = 0u;
          v114 = 0u;
          v113 = 0u;
          memset(v112, 0, sizeof(v112));
          v47 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          log = v55;
          v68 = *(v9 + 8);
          v69 = *(v68 + 323);
          v70 = fd_name(*(v68 + 220), v112, 0x100uLL);
          v100 = 136316418;
          v101 = "_data_map_get_data_entry";
          v102 = 1024;
          v103 = 397;
          v104 = 2048;
          v105 = v46;
          v106 = 2048;
          v107 = v69;
          v108 = 2048;
          v109 = v68;
          v110 = 2080;
          v111 = v70;
          v51 = log;
          v52 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
          goto LABEL_70;
        }

        dataMap<unsigned int,false,false,true>::data_entry_restore<false>(v9, v45 + *(v38 + 5575), &v86, &v97);
        if (v97 == 1)
        {
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          v119 = 0u;
          v118 = 0u;
          v117 = 0u;
          v116 = 0u;
          v115 = 0u;
          v114 = 0u;
          v113 = 0u;
          memset(v112, 0, sizeof(v112));
          v47 = *__error();
          v48 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          v49 = fd_name(*(*(v9 + 8) + 220), v112, 0x100uLL);
          v50 = *(*(v9 + 8) + 323);
          v100 = 136316418;
          v101 = "_data_map_get_data_entry";
          v102 = 1024;
          v103 = 393;
          v104 = 2080;
          v105 = v49;
          v106 = 2048;
          v107 = v46;
          v108 = 2048;
          v109 = v50;
          v110 = 2048;
          v111 = v86;
          v51 = v48;
          v52 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_70:
          _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, v52, &v100, 0x3Au);
          goto LABEL_45;
        }

        if (i < v84 || *v83 > i && CFBitVectorGetBitAtIndex(*(v83 + 16), i))
        {
          if (v86 < 0x80)
          {
            v56 = 1;
          }

          else
          {
            v56 = 2;
          }

          if (v86 >> 14)
          {
            v57 = 3;
          }

          else
          {
            v57 = v56;
          }

          if (v86 >> 21)
          {
            v58 = 4;
          }

          else
          {
            v58 = v57;
          }

          if (v86 >> 28)
          {
            v59 = 5;
          }

          else
          {
            v59 = v58;
          }

          v60 = (v86 + v59 + 8);
          v61 = (__src[2] + v60);
          if ((__src[2] + v60) >= __src[1])
          {
            if (_storageWindowsExpandBacking(__src, v60))
            {
              v61 = (__src[2] + v60);
              goto LABEL_62;
            }
          }

          else
          {
LABEL_62:
            __src[2] = v61;
          }

          v62 = data_entry_store<unsigned int,false,false,true>(__src, &v86);
          __src[520][i] = v62;
          continue;
        }

        ++*(v3 + 8);
        if ((v85 & 2) != 0)
        {
          if ((v85 & 8) != 0)
          {
            if (gSILogLevels[0] < 5)
            {
              goto LABEL_36;
            }

            v47 = *__error();
            v71 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              v72 = *(v9 + 8);
              v73 = v87 + *(v72 + 216);
              LODWORD(v112[0]) = 67109890;
              DWORD1(v112[0]) = i;
              WORD4(v112[0]) = 1024;
              *(v112 + 10) = v86;
              HIWORD(v112[0]) = 2080;
              *&v112[1] = v73;
              WORD4(v112[1]) = 2048;
              *(&v112[1] + 10) = v72;
              v65 = v71;
              v66 = "Deleting id: %d size: %d %s from %p";
              v67 = 34;
LABEL_74:
              _os_log_impl(&dword_1C278D000, v65, OS_LOG_TYPE_DEFAULT, v66, v112, v67);
            }
          }

          else
          {
            if (gSILogLevels[0] < 5)
            {
              goto LABEL_36;
            }

            v47 = *__error();
            v63 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v64 = *(v9 + 8);
              LODWORD(v112[0]) = 67109632;
              DWORD1(v112[0]) = i;
              WORD4(v112[0]) = 1024;
              *(v112 + 10) = v86;
              HIWORD(v112[0]) = 2048;
              *&v112[1] = v64;
              v65 = v63;
              v66 = "Deleting id: %d size: %d from %p";
              v67 = 24;
              goto LABEL_74;
            }
          }

LABEL_45:
          *__error() = v47;
        }
      }

LABEL_36:
      __src[520][v44] = 1;
    }
  }

  if (*(v3 + 8))
  {
    if (SLODWORD(__src[4]) >= 1)
    {
      v74 = 0;
      do
      {
        v75 = v74;
        storageWindowSync(__src[v74 + 7], 1);
        v74 = v75 + 1;
      }

      while (v75 + 1 < SLODWORD(__src[4]));
    }

    v76 = __src[520];
    v77 = __src[522];
    fd_system_status_stall_if_busy();
    msync(v76, v77, 16);
    memcpy((v3 + 32), __src, 0x1058uLL);
    *v3 = 842150450;
    v95 = 1;
    v78 = threadData[9 * v92 + 1] + 320 * v91;
    *(v78 + 312) = v81;
    v79 = *(v78 + 232);
    if (v79)
    {
      v79(*(v78 + 288));
    }

    dropThreadId(v92, 0, add_explicit + 1);
LABEL_85:
    v33 = 0;
    result = 0;
    if (v95)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v33 = 0;
LABEL_19:
  if (sibling_protected)
  {
    storageWindowsUnmap(__src);
    fd_release(sibling_protected);
    _fd_unlink_with_origin(sibling_protected, 0);
  }

  if (__src[520] + 1 >= 2)
  {
    munmap(__src[520], __src[521]);
  }

  if (__src[519])
  {
    fd_release(__src[519]);
    _fd_unlink_with_origin(__src[519], 0);
  }

  result = v33;
LABEL_26:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_garbage_collect_setup(void *a1)
{
  (*(*a1 + 336))(a1);
  v2 = a1[1];
  v3 = *(v2 + 4511);
  os_unfair_lock_lock((v2 + 260));
  v4 = a1[1];
  if (*(v4 + 264))
  {
    os_unfair_lock_unlock((v4 + 260));
    (*(*a1 + 112))(a1);
    return 22;
  }

  else
  {
    v6 = bit_vector_create(v3);
    v7 = a1[1];
    *(v7 + 264) = v6;
    os_unfair_lock_unlock((v7 + 260));
    return 0;
  }
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_garbage_compact_collect_commit(void *a1, void *a2, _BYTE *a3, char a4)
{
  (*(*a1 + 336))(a1);
  if ((a4 & 1) == 0 && (*a3 & 1) == 0)
  {
    if (a2[1])
    {
      v8 = a1[1];
      v9 = *(v8 + 4511);
      if (a2[2] != v9 || (v10 = a2[3], v12.length = (v9 - 1), v12.location = 0, v10 != CFBitVectorGetCountOfBit(*(*(v8 + 264) + 16), v12, 1u)))
      {
        *a3 = 1;
      }
    }
  }

  return 0;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_garbage_collect_handle_deletes(uint64_t *a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a2[1])
  {
    bzero(v53, 0x400uLL);
    bzero(v52, 0x400uLL);
    storageWindowsUnmap(a1[1] + 307);
    fd_sync(*(a1[1] + 307), 0);
    fd_sync(a2[523], 1);
    munmap(*(a1[1] + 4503), *(a1[1] + 4499));
    v4 = a1[1];
    *(v4 + 4503) = a2[524];
    *(v4 + 4459) = a2[526];
    a2[524] = -1;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    __buf[0] = 0x6D6F76650A00;
    __buf[1] = 0x3232323200000003;
    strlcpy(&v51[12], (v4 + 4551), 0xFFuLL);
    v5 = (a2 + 1);
    v6 = a1[1];
    v7 = vld1_dup_f32(v5);
    *(v6 + 4523) = vadd_s32(*(v6 + 4523), v7);
    *(v6 + 4531) = 0;
    dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
    (*(*a1 + 224))(a1, 1);
    dataMap<unsigned int,false,false,true>::_data_map_sync_header_to_tmp<false>(a1);
    v8 = *(a1[1] + 307);
    if (v8)
    {
      v9 = *(v8 + 44);
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    v10 = si_openat_protected(v9, "tmp.movePlan", 1538, 3);
    pwrite(v10, __buf, 0x210uLL, 0);
    fcntl(v10, 85);
    v11 = fd_name(*(a1[1] + 307), v53, 0x400uLL);
    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    v14 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = a1[1];
      v16 = fd_realpath(a2[4], v52);
      v29 = 134218498;
      v30 = v15;
      v31 = 2080;
      v32 = v16;
      v33 = 2080;
      v34 = v11;
      _os_log_impl(&dword_1C278D000, v13, v14, "rename %p %s to %s", &v29, 0x20u);
    }

    *__error() = v12;
    fd_rename(a2[4], v11);
    memcpy((a1[1] + 307), a2 + 4, 0x1038uLL);
    bzero(a2 + 4, 0x1038uLL);
    v17 = fd_name(*(a1[1] + 4491), v53, 0x400uLL);
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    v20 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = a1[1];
      v22 = fd_realpath(a2[523], v52);
      v29 = 134218498;
      v30 = v21;
      v31 = 2080;
      v32 = v22;
      v33 = 2080;
      v34 = v17;
      _os_log_impl(&dword_1C278D000, v19, v20, "rename %p %s to %s", &v29, 0x20u);
    }

    *__error() = v18;
    fd_rename(a2[523], v17);
    v23 = a1[1];
    v24 = *(v23 + 4491);
    *(v23 + 4491) = a2[523];
    fd_release(v24);
    a2[523] = 0;
    (*(*a1 + 232))(a1, 1);
    (*(*a1 + 48))(a1);
    (*(*a1 + 56))(a1);
    (*(*a1 + 64))(a1);
    (*(*a1 + 72))(a1);
    v25 = *(a1[1] + 307);
    if (v25)
    {
      v26 = *(v25 + 44);
    }

    else
    {
      v26 = -1;
    }

    unlinkat(v26, "tmp.movePlan", 2048);
    close(v10);
    if ((*(a1[1] + 274) & 1) == 0)
    {
      dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
      *(a1[1] + 274) = 1;
    }

    dataMap<unsigned int,false,false,true>::_data_map_rehash(a1);
    (*(*a1 + 224))(a1, 1);
    (*(*a1 + 232))(a1, 1);
    (*(*a1 + 56))(a1);
    (*(*a1 + 64))(a1);
    (*(*a1 + 72))(a1);
  }

  v27 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_sync_header_to_tmp<false>(uint64_t *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v39 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v5 = v4;
  v6 = v3;
  v7 = HIDWORD(v3);
  v9 = v8;
  v10 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v11 = *(v10 + 312);
  v12 = *(v10 + 224);
  if (v12)
  {
    v12(*(v10 + 288));
  }

  v37 = v7;
  v38 = v6;
  if (_setjmp(v10))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v10 + 312) = v11;
    CIOnThreadCleanUpReset(v5);
    dropThreadId(v6, 1, add_explicit + 1);
    result = CICleanUpReset(v6, v9);
  }

  else
  {
    if (!*(a1[1] + 278) && *(*(a1[1] + 299) + 16) != 1)
    {
      v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
      v15 = *(a1[1] + 299);
      v16 = *(v15 + 6);
      v17 = v15[2];
      v18 = *v15;
      *(v14 + 1) = v15[1];
      *(v14 + 2) = v17;
      *(v14 + 6) = v16;
      *v14 = v18;
      *(v14 + 4) = *(v14 + 20);
      *(v14 + 10) = *(v14 + 7);
      v19 = a1[1];
      *(v14 + 5) = *(v19 + 323);
      *(v14 + 7) = *(v19 + 4511);
      *(v14 + 6) = *(v19 + 4487);
      *(v14 + 4) = 2;
      sibling_with_prefix_protected = fd_create_sibling_with_prefix_protected(*(v19 + 220), "tmp.", 0);
      fd_pwrite(sibling_with_prefix_protected, v14, 0x38uLL, 0);
      fd_sync(sibling_with_prefix_protected, 1);
      fd_release(sibling_with_prefix_protected);
      v21 = a1[1];
      if (v21)
      {
        v22 = a1[1];
        v23 = (v21 + 4511);
        v24 = *(v21 + 4543);
        v25 = *(v21 + 252);
        v26 = *(v21 + 299);
        if (v26)
        {
          v27 = *(v26 + 16);
          if (v27 < 3)
          {
            v28 = v27 + 1;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
        }

        SIActivityJournalEvent(v24, v25, 0xBu, v28, *v23);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      *buf = 0u;
      v29 = *__error();
      v30 = _SILogForLogForCategory(7);
      v31 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v30, v31))
      {
        v32 = fd_name(*(a1[1] + 220), buf, 0x100uLL);
        v33 = (*(*a1 + 96))(a1);
        *v40 = 136315394;
        v41 = v32;
        v42 = 2048;
        v43 = v33;
        _os_log_impl(&dword_1C278D000, v30, v31, "%s complete write tmp header with count: %llu", v40, 0x16u);
      }

      *__error() = v29;
      free(v14);
    }

    v39 = 1;
    v34 = threadData[9 * v38 + 1] + 320 * v37;
    *(v34 + 312) = v11;
    v35 = *(v34 + 232);
    if (v35)
    {
      v35(*(v34 + 288));
    }

    result = dropThreadId(v38, 0, add_explicit + 1);
  }

  if ((v39 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  v36 = *MEMORY[0x1E69E9840];
  return result;
}

void dataMap<unsigned int,false,false,true>::_data_map_clear_seen(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 8) + 260));
  v2 = *(a1 + 8);
  v3 = *(v2 + 264);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(v3);
    v2 = *(a1 + 8);
    *(v2 + 264) = 0;
  }

  os_unfair_lock_unlock((v2 + 260));
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_match_address(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 283);
  if (v4 != -1)
  {
    if (v4)
    {
      if (v4 <= a2)
      {
        v5 = *(v2 + 291);
        if (&v4[v5] > a2)
        {
          v6 = *(v2 + 220);
          v7 = "data ro header";
          v8 = a2;
          v9 = *(v2 + 291);
LABEL_21:
          log_map_access_error(v8, v4, v5, v9, v7, v6);
          return 1;
        }
      }
    }

    return 0;
  }

  if (!storage_windows_contains_address(v2 + 307, a2))
  {
    v4 = *(v2 + 4503);
    v10 = (v4 + 1) < 2 || v4 > a2;
    if (v10 || (v5 = *(v2 + 4499), &v4[v5] <= a2))
    {
      v4 = *(v2 + 4479);
      if ((v4 + 1) < 2)
      {
        return 0;
      }

      if (v4 > a2)
      {
        return 0;
      }

      v5 = *(v2 + 4475);
      if (&v4[v5] <= a2)
      {
        return 0;
      }

      v9 = *(v2 + 4471);
      v6 = *(v2 + 236);
      v7 = "data buckets";
    }

    else
    {
      v9 = *(v2 + 4459);
      v6 = *(v2 + 4491);
      v7 = "data offsets";
    }

    v8 = a2;
    goto LABEL_21;
  }

  return 1;
}

int *log_map_access_error(void *a1, char *a2, uint64_t a3, int a4, char *a5, fd_obj *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v11 = *(a6 + 11);
  }

  else
  {
    v11 = -1;
  }

  memset(&v19, 0, sizeof(v19));
  memset(v38, 0, sizeof(v38));
  v12 = fd_name(a6, v38, 0x100uLL);
  if (fstatat(v11, v12, &v19, 32) == -1)
  {
    v13 = *__error();
  }

  else
  {
    v13 = 0;
  }

  v14 = *__error();
  v15 = _SILogForLogForCategory(0);
  v16 = gSILogLevels[0] < 3;
  if (os_log_type_enabled(v15, (gSILogLevels[0] < 3)))
  {
    *buf = 136317186;
    v21 = a5;
    v22 = 2080;
    v23 = v12;
    v24 = 2048;
    v25 = a1;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = &a2[a3];
    v30 = 1024;
    v31 = a4;
    v32 = 1024;
    v33 = v13;
    v34 = 1024;
    st_dev = v19.st_dev;
    v36 = 2048;
    st_ino = v19.st_ino;
    _os_log_impl(&dword_1C278D000, v15, v16, "*warn* Got exception on %s %s addr:%p start:%p map end:%p file end:%d sres:%d dev:%d ino:%lld", buf, 0x50u);
  }

  result = __error();
  *result = v14;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_version_update(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 299);
  if (*(v2 + 8) <= 0xAu)
  {
    v3 = result;
    *(v2 + 8) = 12;
    result = fd_pwrite(*(v1 + 220), v2, 0x38uLL, 0);
    v4 = *(v3 + 8);
    v5 = (v4 + 339);
    if (*(v4 + 339) >= 1)
    {
      v6 = 0;
      v7 = v4 + 363;
      do
      {
        result = storageWindowSync(*(v7 + 8 * v6++), 1);
      }

      while (v6 < *v5);
    }
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_version(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(*(v1 + 299) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_sync_header(uint64_t *a1, int a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v36 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v34 = v9;
  v35 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v43 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v43, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
  }

  else
  {
    v15 = a1[1];
    if (!*(v15 + 278))
    {
      v16 = *(*(v15 + 299) + 16);
      if (v16 != 1)
      {
        v17 = v15 + 4511;
        if (v16 == 2)
        {
          v18 = 3;
        }

        else
        {
          v18 = 0;
        }

        if (v16)
        {
          v19 = v18;
        }

        else
        {
          v19 = 1;
        }

        SIActivityJournalEvent(*(v17 + 32), *(a1[1] + 252), 0xAu, v19, *v17);
        v20 = a1[1];
        v21 = *(v20 + 299);
        *(v21 + 40) = *(v21 + 28);
        *(v21 + 32) = *(v21 + 20);
        *(v21 + 20) = *(v20 + 323);
        *(v21 + 28) = *(v20 + 4511);
        *(v21 + 24) = *(v20 + 4487);
        *(v21 + 16) = 0;
        fd_pwrite(*(v20 + 220), v21, 0x38uLL, 0);
        if (a2)
        {
          fd_sync(*(a1[1] + 220), 0);
        }

        v22 = a1[1];
        *(*(v22 + 299) + 16) = 2;
        SIActivityJournalEvent(*(v22 + 4543), *(v22 + 252), 0xBu, 3u, *(v22 + 4511));
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        *v43 = 0u;
        v23 = *__error();
        v24 = _SILogForLogForCategory(7);
        v25 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v24, v25))
        {
          v26 = fd_name(*(a1[1] + 220), v43, 0x100uLL);
          if (a2)
          {
            v27 = "sync";
          }

          else
          {
            v27 = "update";
          }

          v28 = (*(*a1 + 96))(a1);
          *buf = 136315650;
          v38 = v26;
          v39 = 2080;
          v40 = v27;
          v41 = 2048;
          v42 = v28;
          _os_log_impl(&dword_1C278D000, v24, v25, "%s complete %s header with count: %llu", buf, 0x20u);
        }

        *__error() = v23;
      }
    }

    v36 = 1;
    v29 = threadData[9 * v35 + 1] + 320 * v34;
    *(v29 + 312) = v13;
    v30 = *(v29 + 232);
    if (v30)
    {
      v30(*(v29 + 288));
    }

    dropThreadId(v35, 0, add_explicit + 1);
  }

  v31 = (a1[1] + 278);
  if (v36 == 1)
  {
    result = *v31;
  }

  else
  {
    *v31 = 22;
    result = 22;
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_sync_data(uint64_t *a1, int a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v44 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v42 = v9;
  v43 = v8;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v51 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v51, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v7);
    dropThreadId(v8, 1, add_explicit + 1);
    CICleanUpReset(v8, v11);
  }

  else
  {
    v15 = a1[1];
    if (!*(v15 + 278) && !*(*(v15 + 299) + 16))
    {
      SIActivityJournalEvent(*(v15 + 4543), *(a1[1] + 252), 7u, 1u, *(v15 + 4511));
      v16 = a1[1];
      v17 = v16;
      if (*(v16 + 273) == 1)
      {
        if (a2)
        {
          v18 = (v16 + 339);
          if (*(v16 + 339) >= 1)
          {
            v19 = v16 + 363;
            v20 = 0;
            do
            {
              v21 = v20;
              storageWindowSync(*(v19 + 8 * v20), 0);
              v20 = v21 + 1;
            }

            while (v21 + 1 < *v18);
            v17 = a1[1];
          }
        }

        *(v17 + 273) = 0;
      }

      v22 = v17;
      if (*(v17 + 275) == 1)
      {
        if (a2)
        {
          v23 = *(*(v17 + 299) + 40);
          v24 = *(v17 + 4503) + 4 * v23;
          v25 = -*MEMORY[0x1E69E9AC8];
          v26 = 4 * (*(v17 + 4511) - v23);
          fd_system_status_stall_if_busy();
          msync((v24 & v25), v26, 16);
          v22 = a1[1];
        }

        *(v22 + 275) = 0;
      }

      if (*(v22 + 274) == 1)
      {
        if (a2)
        {
          v27 = v22 + 4096;
          v28 = *(v27 + 383);
          v29 = 4 * *(v27 + 391);
          fd_system_status_stall_if_busy();
          msync(v28, v29, 16);
          v22 = a1[1];
        }

        *(v22 + 274) = 0;
      }

      v30 = *(v22 + 299);
      *(v30 + 20) = *(v22 + 323);
      *(v30 + 28) = *(v22 + 4511);
      *(v30 + 24) = *(v22 + 4487);
      *(v30 + 44) = *(v22 + 4523);
      *(v30 + 52) = *(v22 + 4531);
      *(v30 + 16) = 0;
      fd_pwrite(*(v22 + 220), v30, 0x38uLL, 0);
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      *v51 = 0u;
      v31 = *__error();
      v32 = _SILogForLogForCategory(7);
      v33 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = fd_name(*(a1[1] + 220), v51, 0x100uLL);
        if (a2)
        {
          v35 = "sync";
        }

        else
        {
          v35 = "update";
        }

        v36 = (*(*a1 + 96))(a1);
        *buf = 136315650;
        v46 = v34;
        v47 = 2080;
        v48 = v35;
        v49 = 2048;
        v50 = v36;
        _os_log_impl(&dword_1C278D000, v32, v33, "%s complete %s map with count: %llu", buf, 0x20u);
      }

      *__error() = v31;
    }

    v44 = 1;
    v37 = threadData[9 * v43 + 1] + 320 * v42;
    *(v37 + 312) = v13;
    v38 = *(v37 + 232);
    if (v38)
    {
      v38(*(v37 + 288));
    }

    dropThreadId(v43, 0, add_explicit + 1);
  }

  v39 = (a1[1] + 278);
  if (v44 == 1)
  {
    result = *v39;
  }

  else
  {
    *v39 = 22;
    result = 22;
  }

  v41 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL dataMap<unsigned int,false,false,true>::_data_map_needs_sync(uint64_t a1)
{
  v22 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, add_explicit + 1);
  v5 = v4;
  v6 = v3;
  v7 = HIDWORD(v3);
  v9 = v8;
  v10 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v11 = *(v10 + 312);
  v12 = *(v10 + 224);
  if (v12)
  {
    v12(*(v10 + 288));
  }

  v20 = v7;
  v21 = v6;
  v18 = v5;
  v19 = v9;
  if (_setjmp(v10))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v17, 2u);
    }

    *(v10 + 312) = v11;
    CIOnThreadCleanUpReset(v18);
    dropThreadId(v21, 1, add_explicit + 1);
    CICleanUpReset(v21, v19);
    result = 0;
  }

  else
  {
    v14 = *(*(*(a1 + 8) + 299) + 16) == 0;
    v22 = 1;
    v15 = threadData[9 * v21 + 1] + 320 * v20;
    *(v15 + 312) = v11;
    v16 = *(v15 + 232);
    if (v16)
    {
      v16(*(v15 + 288));
    }

    dropThreadId(v21, 0, add_explicit + 1);
    result = v14;
  }

  if ((v22 & 1) == 0)
  {
    *(*(a1 + 8) + 278) = 22;
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_get_data(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((*(*a1 + 104))(a1))
  {
    goto LABEL_2;
  }

  v26 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v10 = v9;
  v11 = v8;
  v12 = HIDWORD(v8);
  v14 = v13;
  v15 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v16 = *(v15 + 312);
  v17 = *(v15 + 224);
  if (v17)
  {
    v17(*(v15 + 288));
  }

  v24 = v12;
  v25 = v11;
  v22 = v10;
  v23 = v14;
  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v21, 2u);
    }

    *(v15 + 312) = v16;
    CIOnThreadCleanUpReset(v22);
    dropThreadId(v25, 1, add_explicit + 1);
    CICleanUpReset(v25, v23);
    v18 = 0;
  }

  else
  {
    v18 = (*(*a1 + 120))(a1, a2, a3);
    v26 = 1;
    v19 = threadData[9 * v25 + 1] + 320 * v24;
    *(v19 + 312) = v16;
    v20 = *(v19 + 232);
    if (v20)
    {
      v20(*(v19 + 288));
    }

    dropThreadId(v25, 0, add_explicit + 1);
  }

  if ((v26 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  (*(*a1 + 112))(a1);
  result = v18;
  if (!v18)
  {
LABEL_2:
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }

  return result;
}

char *dataMap<unsigned int,false,false,true>::data_map_get_data_entry@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0;
  v8 = (a5 + 16);
  *a3 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  v9 = *a1;
  *(a5 + 20) = *(a1[1] + 216);
  v13 = 0;
  if (a4)
  {
    result = (*(v9 + 120))(a1, a2, &v13);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = (*(v9 + 192))(a1, a2, &v13);
    if (!result)
    {
      return result;
    }
  }

  *a3 = 1;
  v11 = *(a1[1] + 216);
  v12 = v13 - v11;
  *a5 = result;
  *(a5 + 8) = v12;
  *(a5 + 20) = v11;
  if (v11)
  {
    return memcpy(v8, &result[-v11], v11);
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_get_extra_with_key(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, _BYTE *a4)
{
  v8 = 0;
  v103 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  __dst = 0;
  v9 = dataMap<unsigned int,false,false,true>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    goto LABEL_46;
  }

  v63 = a2;
  v72 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v62 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v70 = v15;
  v71 = v14;
  v68 = v13;
  v69 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v87 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v87, 2u);
    }

    *(v18 + 312) = v62;
    CIOnThreadCleanUpReset(v68);
    dropThreadId(v71, 1, add_explicit + 1);
    CICleanUpReset(v71, v69);
    goto LABEL_43;
  }

  v20 = a1[1];
  v21 = *(v20 + 4487);
  v22 = v9 % v21;
  v23 = v9 % v21;
  v64 = a3;
  v61 = *(v20 + 216);
  v60 = v61 + a3;
  do
  {
    v24 = a1[1];
    v25 = *(v24 + 4479);
    v26 = *(v25 + 4 * v23);
    if (!v26)
    {
      break;
    }

    v27 = v23;
    if (*(v24 + 264))
    {
      os_unfair_lock_lock((v24 + 260));
      v50 = a1[1];
      v51 = *(v50 + 264);
      if (v51)
      {
        bit_vector_set(v51, v26);
        v50 = a1[1];
      }

      os_unfair_lock_unlock((v50 + 260));
      v28 = *(v25 + 4 * v27);
      v24 = a1[1];
    }

    else
    {
      v28 = *(v25 + 4 * v23);
    }

    v29 = *(v24 + 4511);
    v30 = *(v24 + 4503);
    if (v28 >= v29 || (v30 + 1) <= 1)
    {
      v101 = 0u;
      v102 = 0u;
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
      *v87 = 0u;
      v88 = 0u;
      v32 = *__error();
      v33 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        log = v33;
        v43 = a1[1];
        v44 = fd_name(*(v43 + 220), v87, 0x100uLL);
        *buf = 136316418;
        v76 = "_data_map_get_offset_entry_impl";
        v77 = 1024;
        v78 = 362;
        v79 = 2048;
        v80 = v28;
        v81 = 2048;
        v82 = v29;
        v83 = 2048;
        v84 = v43;
        v85 = 2080;
        v86 = v44;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v32;
      goto LABEL_19;
    }

    v35 = *(v30 + 4 * v28);
    if (v35 != 1)
    {
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v74 = 0;
      v36 = (v35 + *(v24 + 5575));
      if (*(v24 + 323) <= v36)
      {
        v101 = 0u;
        v102 = 0u;
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
        *v87 = 0u;
        v88 = 0u;
        v37 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v59 = v45;
          v47 = a1[1];
          v48 = *(v47 + 323);
          v49 = fd_name(*(v47 + 220), v87, 0x100uLL);
          *buf = 136316418;
          v76 = "_data_map_get_data_entry";
          v77 = 1024;
          v78 = 397;
          v79 = 2048;
          v80 = v36;
          v81 = 2048;
          v82 = v48;
          v83 = 2048;
          v84 = v47;
          v85 = 2080;
          v86 = v49;
          v41 = v59;
          v42 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_36:
          _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, v42, buf, 0x3Au);
        }

LABEL_30:
        *__error() = v37;
        goto LABEL_19;
      }

      dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v35 + *(v24 + 5575), &v65, &v74);
      if (v74 == 1)
      {
        v101 = 0u;
        v102 = 0u;
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
        *v87 = 0u;
        v88 = 0u;
        v37 = *__error();
        v38 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = fd_name(*(a1[1] + 220), v87, 0x100uLL);
          v40 = *(a1[1] + 323);
          *buf = 136316418;
          v76 = "_data_map_get_data_entry";
          v77 = 1024;
          v78 = 393;
          v79 = 2080;
          v80 = v39;
          v81 = 2048;
          v82 = v36;
          v83 = 2048;
          v84 = v40;
          v85 = 2048;
          v86 = v65;
          v41 = v38;
          v42 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if ((v74 & 1) == 0 && v60 == v65)
      {
        v46 = v66;
        if (!memcmp(v63, &v66[v61], v64))
        {
          v52 = v46;
          v53 = *(a1[1] + 216);
          memcpy(&__dst, v52, v53);
          HIDWORD(__dst) = v53;
          *a4 = 1;
          break;
        }
      }
    }

LABEL_19:
    if (v27 + 1 == v21)
    {
      v34 = 0;
    }

    else
    {
      v34 = v27 + 1;
    }

    v23 = v34;
  }

  while (v34 != v22);
  v72 = 1;
  v54 = threadData[9 * v71 + 1] + 320 * v70;
  *(v54 + 312) = v62;
  v55 = *(v54 + 232);
  if (v55)
  {
    v55(*(v54 + 288));
  }

  dropThreadId(v71, 0, add_explicit + 1);
LABEL_43:
  if ((v72 & 1) == 0)
  {
    *a4 = 0;
    *(a1[1] + 278) = 22;
  }

  v8 = __dst;
LABEL_46:
  (*(*a1 + 112))(a1);
  v56 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_ids_get_locked(uint64_t a1, unsigned __int8 *a2, size_t a3, uint64_t a4, unsigned int a5)
{
  v10 = dataMap<unsigned int,false,false,true>::dm_hash(*(*(a1 + 8) + 282), a2, a3);

  return dataMap<unsigned int,false,false,true>::data_map_ids_get_locked_with_hash(a1, a4, v10, a5, a2, a3);
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, size_t a6)
{
  v101 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v57 = *(v8 + 4487);
  v9 = *(v8 + 216);
  v71 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, *(a1 + 8), 0, add_explicit + 1);
  v12 = v11;
  v13 = v10;
  v14 = HIDWORD(v10);
  v16 = v15;
  v17 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v58 = *(v17 + 312);
  v18 = *(v17 + 224);
  if (v18)
  {
    v18(*(v17 + 288));
  }

  v69 = v14;
  v70 = v13;
  v67 = v12;
  v68 = v16;
  if (_setjmp(v17))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v85 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v85, 2u);
    }

    *(v17 + 312) = v58;
    CIOnThreadCleanUpReset(v67);
    dropThreadId(v70, 1, add_explicit + 1);
    CICleanUpReset(v70, v68);
    v19 = 0;
    goto LABEL_40;
  }

  v20 = a3 % v57;
  v21 = v20;
  v55 = v9 + a6;
  v56 = v9;
  v22 = 0;
  while (1)
  {
    v23 = v21;
    v24 = *(a1 + 8);
    v25 = *(v24 + 4479);
    v26 = *(v25 + 4 * v23);
    if (!v26)
    {
      break;
    }

    v27 = v23;
    v28 = *(v25 + 4 * v23);
    v29 = *(v24 + 4511);
    v30 = *(v24 + 4503);
    if (v26 >= v29 || (v30 + 1) <= 1)
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
      *v85 = 0u;
      v86 = 0u;
      v32 = *__error();
      v33 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        log = v33;
        v43 = *(a1 + 8);
        v44 = fd_name(*(v43 + 220), v85, 0x100uLL);
        *buf = 136316418;
        v74 = "_data_map_get_offset_entry_impl";
        v75 = 1024;
        v76 = 362;
        v77 = 2048;
        v78 = v28;
        v79 = 2048;
        v80 = v29;
        v81 = 2048;
        v82 = v43;
        v83 = 2080;
        v84 = v44;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v32;
      goto LABEL_16;
    }

    v35 = *(v30 + 4 * v26);
    if (v35 != 1)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v72 = 0;
      v36 = (v35 + *(v24 + 5575));
      if (*(v24 + 323) <= v36)
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
        *v85 = 0u;
        v86 = 0u;
        v37 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v54 = v45;
          v46 = *(a1 + 8);
          v47 = *(v46 + 323);
          v48 = fd_name(*(v46 + 220), v85, 0x100uLL);
          *buf = 136316418;
          v74 = "_data_map_get_data_entry";
          v75 = 1024;
          v76 = 397;
          v77 = 2048;
          v78 = v36;
          v79 = 2048;
          v80 = v47;
          v81 = 2048;
          v82 = v46;
          v83 = 2080;
          v84 = v48;
          v41 = v54;
          v42 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_35:
          _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, v42, buf, 0x3Au);
        }
      }

      else
      {
        dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v35 + *(v24 + 5575), &v64, &v72);
        if (v72 != 1)
        {
          if ((v72 & 1) == 0 && v55 == v64 && !memcmp(a5, (v65 + v56), a6))
          {
            if (v22 < a4)
            {
              *(a2 + 4 * v22) = *(v25 + 4 * v27);
            }

            v22 = (v22 + 1);
          }

          goto LABEL_16;
        }

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
        *v85 = 0u;
        v86 = 0u;
        v37 = *__error();
        v38 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = fd_name(*(*(a1 + 8) + 220), v85, 0x100uLL);
          v40 = *(*(a1 + 8) + 323);
          *buf = 136316418;
          v74 = "_data_map_get_data_entry";
          v75 = 1024;
          v76 = 393;
          v77 = 2080;
          v78 = v39;
          v79 = 2048;
          v80 = v36;
          v81 = 2048;
          v82 = v40;
          v83 = 2048;
          v84 = v64;
          v41 = v38;
          v42 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_35;
        }
      }

      *__error() = v37;
    }

LABEL_16:
    if (v27 + 1 == v57)
    {
      v34 = 0;
    }

    else
    {
      v34 = v27 + 1;
    }

    v21 = v34;
    v19 = v22;
    if (v34 == v20)
    {
      goto LABEL_37;
    }
  }

  v19 = v22;
LABEL_37:
  v71 = 1;
  v49 = threadData[9 * v70 + 1] + 320 * v69;
  *(v49 + 312) = v58;
  v50 = *(v49 + 232);
  if (v50)
  {
    v50(*(v49 + 288));
  }

  dropThreadId(v70, 0, add_explicit + 1);
LABEL_40:
  result = v19;
  if ((v71 & 1) == 0)
  {
    result = 0;
    *(*(a1 + 8) + 278) = 22;
  }

  v52 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_ids_get(void *a1, unsigned __int8 *a2, size_t a3, uint64_t a4, unsigned int a5)
{
  v10 = dataMap<unsigned int,false,false,true>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  locked_with_hash = dataMap<unsigned int,false,false,true>::data_map_ids_get_locked_with_hash(a1, a4, v10, a5, a2, a3);
  (*(*a1 + 112))(a1);
  return locked_with_hash;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_id_get_with_key_noextra(uint64_t *a1, unsigned __int8 *a2, size_t a3)
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = dataMap<unsigned int,false,false,true>::dm_hash(*(a1[1] + 282), a2, a3);
  v67 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v6 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v8 = v7;
  v9 = v6;
  v10 = HIDWORD(v6);
  v12 = v11;
  v13 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v65 = v10;
  v66 = v9;
  v63 = v8;
  v64 = v12;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v81 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v81, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v63);
    dropThreadId(v66, 1, add_explicit + 1);
    CICleanUpReset(v66, v64);
    v16 = 0;
    goto LABEL_42;
  }

  if ((*(*a1 + 104))(a1))
  {
    v16 = 0;
    goto LABEL_38;
  }

  v59 = v14;
  v17 = a1[1];
  v18 = *(v17 + 4487);
  v19 = v4 % v18;
  v20 = v19;
  v55 = *(v17 + 216) + a3;
  v56 = *(v17 + 216);
  while (1)
  {
    v21 = a1[1];
    v22 = *(v21 + 4479);
    v23 = *(v22 + 4 * v20);
    if (!v23)
    {
      break;
    }

    v24 = v20;
    v25 = *(v22 + 4 * v20);
    v26 = *(v21 + 4511);
    v27 = *(v21 + 4503);
    if (v23 >= v26 || (v27 + 1) <= 1)
    {
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
      v83 = 0u;
      v84 = 0u;
      *v81 = 0u;
      v82 = 0u;
      v29 = *__error();
      v30 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        log = v30;
        v40 = a1[1];
        v41 = fd_name(*(v40 + 220), v81, 0x100uLL);
        *buf = 136316418;
        v70 = "_data_map_get_offset_entry_impl";
        v71 = 1024;
        v72 = 362;
        v73 = 2048;
        v74 = v25;
        v75 = 2048;
        v76 = v26;
        v77 = 2048;
        v78 = v40;
        v79 = 2080;
        v80 = v41;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v29;
      goto LABEL_18;
    }

    v32 = *(v27 + 4 * v23);
    if (v32 != 1)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v68 = 0;
      v33 = (v32 + *(v21 + 5575));
      if (*(v21 + 323) <= v33)
      {
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
        v83 = 0u;
        v84 = 0u;
        *v81 = 0u;
        v82 = 0u;
        v34 = *__error();
        v42 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v54 = v42;
          v43 = a1[1];
          v44 = *(v43 + 323);
          v45 = fd_name(*(v43 + 220), v81, 0x100uLL);
          *buf = 136316418;
          v70 = "_data_map_get_data_entry";
          v71 = 1024;
          v72 = 397;
          v73 = 2048;
          v74 = v33;
          v75 = 2048;
          v76 = v44;
          v77 = 2048;
          v78 = v43;
          v79 = 2080;
          v80 = v45;
          v38 = v54;
          v39 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_35:
          _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, v39, buf, 0x3Au);
        }

LABEL_29:
        *__error() = v34;
        goto LABEL_18;
      }

      dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v32 + *(v21 + 5575), &v60, &v68);
      if (v68 == 1)
      {
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
        v83 = 0u;
        v84 = 0u;
        *v81 = 0u;
        v82 = 0u;
        v34 = *__error();
        v35 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = fd_name(*(a1[1] + 220), v81, 0x100uLL);
          v37 = *(a1[1] + 323);
          *buf = 136316418;
          v70 = "_data_map_get_data_entry";
          v71 = 1024;
          v72 = 393;
          v73 = 2080;
          v74 = v36;
          v75 = 2048;
          v76 = v33;
          v77 = 2048;
          v78 = v37;
          v79 = 2048;
          v80 = v60;
          v38 = v35;
          v39 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_35;
        }

        goto LABEL_29;
      }

      if ((v68 & 1) == 0 && v55 == v60 && !memcmp(a2, (v61 + v56), a3))
      {
        v16 = *(v22 + 4 * v24);
        goto LABEL_37;
      }
    }

LABEL_18:
    if (v24 + 1 == v18)
    {
      v31 = 0;
    }

    else
    {
      v31 = v24 + 1;
    }

    v20 = v31;
    if (v31 == v19)
    {
      v16 = 0;
      goto LABEL_37;
    }
  }

  v16 = 0;
LABEL_37:
  v14 = v59;
LABEL_38:
  v46 = a1[1];
  if (*(v46 + 264))
  {
    os_unfair_lock_lock((v46 + 260));
    v51 = a1[1];
    v52 = *(v51 + 264);
    if (v52)
    {
      bit_vector_set(v52, v16);
      v51 = a1[1];
    }

    os_unfair_lock_unlock((v51 + 260));
  }

  v67 = 1;
  v47 = threadData[9 * v66 + 1] + 320 * v65;
  *(v47 + 312) = v14;
  v48 = *(v47 + 232);
  if (v48)
  {
    v48(*(v47 + 288));
  }

  dropThreadId(v66, 0, add_explicit + 1);
LABEL_42:
  if ((v67 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
    v16 = 0;
  }

  (*(*a1 + 112))(a1);
  v49 = *MEMORY[0x1E69E9840];
  return v16;
}

CFIndex dataMap<unsigned int,false,false,true>::data_map_id_get_with_key(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, const void *a4)
{
  v105 = *MEMORY[0x1E69E9840];
  v8 = dataMap<unsigned int,false,false,true>::dm_hash(*(a1[1] + 282), a2, a3);
  if ((*(*a1 + 104))(a1))
  {
    v9 = 0;
    goto LABEL_44;
  }

  v66 = a2;
  v67 = a3;
  v75 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v65 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v73 = v15;
  v74 = v14;
  v71 = v13;
  v72 = v17;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v89, 2u);
    }

    *(v18 + 312) = v65;
    CIOnThreadCleanUpReset(v71);
    dropThreadId(v74, 1, add_explicit + 1);
    CICleanUpReset(v74, v72);
    v20 = 0;
    goto LABEL_41;
  }

  v21 = a1[1];
  v22 = *(v21 + 4487);
  v23 = v8 % v22;
  v24 = v8 % v22;
  v63 = *(v21 + 216) + v67;
  v64 = *(v21 + 216);
  while (1)
  {
    v25 = a1[1];
    v26 = *(v25 + 4479);
    v27 = *(v26 + 4 * v24);
    if (!v27)
    {
      break;
    }

    v28 = v24;
    v29 = *(v26 + 4 * v24);
    v30 = *(v25 + 4511);
    v31 = *(v25 + 4503);
    if (v27 >= v30 || (v31 + 1) <= 1)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
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
      *v89 = 0u;
      v90 = 0u;
      v33 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        log = v34;
        v44 = add_explicit;
        v45 = a1[1];
        v46 = fd_name(*(v45 + 220), v89, 0x100uLL);
        *buf = 136316418;
        v78 = "_data_map_get_offset_entry_impl";
        v79 = 1024;
        v80 = 362;
        v81 = 2048;
        v82 = v29;
        v83 = 2048;
        v84 = v30;
        v85 = 2048;
        v86 = v45;
        add_explicit = v44;
        v87 = 2080;
        v88 = v46;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      *__error() = v33;
      goto LABEL_18;
    }

    v36 = *(v31 + 4 * v27);
    if (v36 != 1)
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v76 = 0;
      v37 = (v36 + *(v25 + 5575));
      if (*(v25 + 323) <= v37)
      {
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
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
        *v89 = 0u;
        v90 = 0u;
        v38 = *__error();
        v47 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v62 = v47;
          v49 = add_explicit;
          v50 = a1[1];
          v51 = *(v50 + 323);
          v52 = fd_name(*(v50 + 220), v89, 0x100uLL);
          *buf = 136316418;
          v78 = "_data_map_get_data_entry";
          v79 = 1024;
          v80 = 397;
          v81 = 2048;
          v82 = v37;
          v83 = 2048;
          v84 = v51;
          v85 = 2048;
          v86 = v50;
          add_explicit = v49;
          v87 = 2080;
          v88 = v52;
          v42 = v62;
          v43 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_36:
          _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, v43, buf, 0x3Au);
        }

LABEL_29:
        *__error() = v38;
        goto LABEL_18;
      }

      dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v36 + *(v25 + 5575), &v68, &v76);
      if (v76 == 1)
      {
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
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
        *v89 = 0u;
        v90 = 0u;
        v38 = *__error();
        v39 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = fd_name(*(a1[1] + 220), v89, 0x100uLL);
          v41 = *(a1[1] + 323);
          *buf = 136316418;
          v78 = "_data_map_get_data_entry";
          v79 = 1024;
          v80 = 393;
          v81 = 2080;
          v82 = v40;
          v83 = 2048;
          v84 = v37;
          v85 = 2048;
          v86 = v41;
          v87 = 2048;
          v88 = v68;
          v42 = v39;
          v43 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      if ((v76 & 1) == 0 && v63 == v68)
      {
        v48 = v69;
        if (!memcmp(v66, &v69[v64], v67) && !memcmp(v48, a4, *(a1[1] + 216)))
        {
          v20 = *(v26 + 4 * v28);
          goto LABEL_38;
        }
      }
    }

LABEL_18:
    if (v28 + 1 == v22)
    {
      v35 = 0;
    }

    else
    {
      v35 = v28 + 1;
    }

    v24 = v35;
    if (v35 == v23)
    {
      v20 = 0;
      goto LABEL_38;
    }
  }

  v20 = 0;
LABEL_38:
  v75 = 1;
  v53 = threadData[9 * v74 + 1] + 320 * v73;
  *(v53 + 312) = v65;
  v54 = *(v53 + 232);
  if (v54)
  {
    v54(*(v53 + 288));
  }

  dropThreadId(v74, 0, add_explicit + 1);
LABEL_41:
  v55 = v20;
  if ((v75 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
    v55 = 0;
  }

  v9 = v55;
LABEL_44:
  v56 = a1[1];
  if (*(v56 + 264))
  {
    os_unfair_lock_lock((v56 + 260));
    v59 = a1[1];
    v60 = *(v59 + 264);
    if (v60)
    {
      bit_vector_set(v60, v9);
      v59 = a1[1];
    }

    os_unfair_lock_unlock((v59 + 260));
  }

  (*(*a1 + 112))(a1);
  v57 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_get_data_id(uint64_t *a1, unsigned int a2, unsigned __int8 *a3, size_t a4, int a5)
{
  v9 = dataMap<unsigned int,false,false,true>::dm_hash(*(a1[1] + 282), &a3[a2], a4 - a2);
  if ((*(*a1 + 104))(a1))
  {
    return 0;
  }

  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v13 = v12;
  v14 = v11;
  v15 = HIDWORD(v11);
  v17 = v16;
  v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v38 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v46 = v15;
  v47 = v14;
  v44 = v13;
  v45 = v17;
  if (!_setjmp(v18))
  {
    bucket_entry = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, *(a1[1] + 4511));
    v43 = 0;
    *buf = 0;
    v41 = 0;
    v42 = 0;
    if (bucket_entry)
    {
      v22 = *bucket_entry;
      if (*bucket_entry)
      {
        if (v22 >= *(a1[1] + 4511))
        {
          v20 = 0;
        }

        else
        {
          v20 = v22;
        }

        goto LABEL_29;
      }

      if (!a5)
      {
        goto LABEL_16;
      }

      v23 = bucket_entry;
      *buf = a4;
      v41 = a3;
      v24 = *(a1[1] + 4511);
      (*(*a1 + 112))(a1);
      if ((*(*a1 + 336))(a1))
      {
        goto LABEL_16;
      }

      v25 = v24;
      v26 = *(a1[1] + 4511);
      if (v24 == v26)
      {
        goto LABEL_18;
      }

      v30 = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, 0, a3, a4, v26);
      if (v30)
      {
        v27 = *v30;
        v25 = *(a1[1] + 4511);
        if (v27 >= v25)
        {
          goto LABEL_16;
        }

        if (v27)
        {
          dataMap<unsigned int,false,false,true>::_data_map_set_seen_id(a1, v27);
          goto LABEL_48;
        }

        v23 = v30;
LABEL_18:
        v27 = v25;
        v28 = v23;
        if (a4 >> 28)
        {
          v33 = 5;
        }

        else if (a4 >> 21)
        {
          v33 = 4;
        }

        else
        {
          if (!(a4 >> 14))
          {
            if (a4 < 0x80)
            {
              v29 = 1;
            }

            else
            {
              v29 = 2;
            }

LABEL_37:
            if (dataMap<unsigned int,false,false,true>::_data_map_grow(a1, (v29 + a4), &v43))
            {
              v34 = a1[1];
              if ((*(v34 + 275) & 1) == 0)
              {
                dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
                v34 = a1[1];
                *(v34 + 275) = 1;
              }

              v35 = *(v34 + 4503);
              *(v35 + 4 * v27) = *(v34 + 323);
              if ((*(v34 + 273) & 1) == 0)
              {
                dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
                v34 = a1[1];
                *(v34 + 273) = 1;
              }

              *(v35 + 4 * v27) = data_entry_store<unsigned int,false,false,true>(v34 + 307, buf);
              v36 = a1[1];
              ++*(v36 + 4511);
              if ((*(v36 + 274) & 1) == 0)
              {
                dataMap<unsigned int,false,false,true>::_data_map_dirty(a1);
                v36 = a1[1];
                *(v36 + 274) = 1;
              }

              if ((v43 & 4) == 0)
              {
                *v28 = v27;
LABEL_47:
                SIActivityJournalDMAdd(*(v36 + 4543), *(v36 + 252), *(v36 + 216), v27, v9, a4);
                goto LABEL_48;
              }

              v37 = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v9, v27, 0, 0, *(v36 + 4511));
              v36 = a1[1];
              *v37 = v27;
              if (v36)
              {
                goto LABEL_47;
              }

LABEL_48:
              v20 = v27;
              goto LABEL_29;
            }

LABEL_16:
            v20 = 0;
LABEL_29:
            v31 = threadData[9 * v47 + 1] + 320 * v46;
            *(v31 + 312) = v38;
            v32 = *(v31 + 232);
            if (v32)
            {
              v32(*(v31 + 288));
            }

            dropThreadId(v47, 0, add_explicit + 1);
            goto LABEL_32;
          }

          v33 = 3;
        }

        v29 = v33;
        goto LABEL_37;
      }
    }

    v20 = 0;
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v18 + 312) = v38;
  CIOnThreadCleanUpReset(v44);
  dropThreadId(v47, 1, add_explicit + 1);
  CICleanUpReset(v47, v45);
  v20 = 0;
LABEL_32:
  (*(*a1 + 112))(a1);
  return v20;
}

void dataMap<unsigned int,false,false,true>::_data_map_set_seen_id(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 264))
  {
    os_unfair_lock_lock((v3 + 260));
    v6 = *(a1 + 8);
    v7 = *(v6 + 264);
    if (v7)
    {
      bit_vector_set(v7, a2);
      v6 = *(a1 + 8);
    }

    os_unfair_lock_unlock((v6 + 260));
  }
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_get_data_locked(uint64_t a1, unsigned int a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v6 = *(v5 + 4511);
  v7 = *(v5 + 4503);
  if (v6 <= a2 || (v7 + 1) <= 1)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      v11 = __error();
      result = 0;
      *v11 = v9;
      goto LABEL_7;
    }

    v26 = *(a1 + 8);
    v27 = fd_name(*(v26 + 220), &v47, 0x100uLL);
    *buf = 136316418;
    v36 = "_data_map_get_offset_entry_impl";
    v37 = 1024;
    v38 = 362;
    v39 = 2048;
    v40 = a2;
    v41 = 2048;
    v42 = v6;
    v43 = 2048;
    v44 = v26;
    v45 = 2080;
    v46 = v27;
    v21 = "%s:%d: invalid data id %llu max %llu %p %s";
    v25 = v10;
LABEL_17:
    _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, v21, buf, 0x3Au);
    goto LABEL_6;
  }

  v14 = *(v7 + 4 * a2);
  if (v14 == 1)
  {
    result = 0;
    goto LABEL_7;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v15 = *(v5 + 216);
  v34 = 0;
  v16 = (v14 + *(v5 + 5575));
  if (*(v5 + 323) <= v16)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v22 = *(a1 + 8);
    v23 = *(v22 + 323);
    v24 = fd_name(*(v22 + 220), &v47, 0x100uLL);
    *buf = 136316418;
    v36 = "_data_map_get_data_entry";
    v37 = 1024;
    v38 = 397;
    v39 = 2048;
    v40 = v16;
    v41 = 2048;
    v42 = v23;
    v43 = 2048;
    v44 = v22;
    v45 = 2080;
    v46 = v24;
    v21 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_15:
    v25 = v18;
    goto LABEL_17;
  }

  dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v14 + *(v5 + 5575), &v31, &v34);
  if (v34 == 1)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v19 = fd_name(*(*(a1 + 8) + 220), &v47, 0x100uLL);
    v20 = *(*(a1 + 8) + 323);
    *buf = 136316418;
    v36 = "_data_map_get_data_entry";
    v37 = 1024;
    v38 = 393;
    v39 = 2080;
    v40 = v19;
    v41 = 2048;
    v42 = v16;
    v43 = 2048;
    v44 = v20;
    v45 = 2048;
    v46 = v31;
    v21 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
    goto LABEL_15;
  }

  if (a3)
  {
    *a3 = (v31 - v15);
  }

  v28 = *(a1 + 8);
  if (*(v28 + 264))
  {
    os_unfair_lock_lock((v28 + 260));
    v29 = *(a1 + 8);
    v30 = *(v29 + 264);
    if (v30)
    {
      bit_vector_set(v30, a2);
      v29 = *(a1 + 8);
    }

    os_unfair_lock_unlock((v29 + 260));
  }

  result = v32 + v15;
LABEL_7:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_unlock(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    v2 = 0;
  }

  else
  {
    v2 = db_rwlock_unlock_unknown(v1);
    if (v2)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v2;
        if (v2 == -1)
        {
          v7 = *__error();
        }

        v8 = 136315650;
        v9 = "_data_map_unlock";
        v10 = 1024;
        v11 = 186;
        v12 = 1024;
        v13 = v7;
        _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_unlock error %d", &v8, 0x18u);
      }

      *__error() = v5;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_rdlock(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 276))
  {
    lock = 0;
  }

  else
  {
    lock = db_read_lock(v1);
    if (lock)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = lock;
        if (lock == -1)
        {
          v7 = *__error();
        }

        v8 = 136315650;
        v9 = "_data_map_rdlock";
        v10 = 1024;
        v11 = 175;
        v12 = 1024;
        v13 = v7;
        _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_rdlock error %d", &v8, 0x18u);
      }

      *__error() = v5;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return lock;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_make_read_only(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v53 = *MEMORY[0x1E69E9840];
  v3 = *(v1[1] + 277);
  if (dataMap<unsigned int,false,false,true>::_data_map_commit(v1, 0))
  {
    goto LABEL_2;
  }

  bzero(v52, 0x400uLL);
  v6 = *(v2[1] + 220);
  if (!v6)
  {
    goto LABEL_2;
  }

  v7 = *(v6 + 44);
  if (v7 == -1)
  {
    goto LABEL_2;
  }

  v8 = fd_name(v6, v52, 0x400uLL);
  if (!v8)
  {
    goto LABEL_2;
  }

  v9 = v8;
  v10 = strlen(v8);
  if (v10 < 8)
  {
    goto LABEL_2;
  }

  v11 = &v9[v10 - 7];
  if (strcmp(v11, ".header"))
  {
    goto LABEL_2;
  }

  strcpy(v11, ".map");
  v12 = v3 ? 3 : 0;
  v13 = fd_create_protected(v7, v9, 1538, v12);
  if (!v13)
  {
    goto LABEL_2;
  }

  v14 = v13;
  v15 = v2[1];
  v16 = *(v15 + 323);
  v17 = (*(v15 + 4471) + 103) & 0x1FFFFFFF8;
  v18 = (*(v15 + 4459) + v17 + 15) & 0x3FFFFFFF8;
  if (fd_truncate(v13, (v16 + v18 + 15) & 0xFFFFFFFFFFFFFFF8))
  {
    _fd_unlink_with_origin(v14, 0);
    fd_release(v14);
LABEL_2:
    result = 0xFFFFFFFFLL;
    goto LABEL_3;
  }

  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN7dataMapIjLb0ELb0ELb1EE28data_map_make_read_only_implILb0EEENSt3__19enable_ifIXntT_EiE4typeEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_216;
  aBlock[4] = v2;
  v47[0] = v14;
  v43 = v14;
  v47[1] = (v16 + v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v49) = 1;
  BYTE5(v49) = 1;
  *(&v49 + 1) = _Block_copy(aBlock);
  LOBYTE(v50) = 26;
  bzero(v51, 0x1000uLL);
  _windowsMapInit(v47, 1);
  v44 = (v16 + v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  *&v48 = v44;
  Ptr = _windowsGetPtr(v47, 0, 88);
  v20 = _windowsGetPtr(v47, 0x58uLL, v17 - 88);
  v21 = _windowsGetPtr(v47, v17, v18 - v17);
  v22 = *(v2[1] + 299);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  *(Ptr + 48) = *(v22 + 6);
  *(Ptr + 16) = v24;
  *(Ptr + 32) = v25;
  *Ptr = v23;
  *(Ptr + 56) = 13;
  *(Ptr + 64) = 88;
  *(Ptr + 68) = v17;
  *(Ptr + 72) = v18;
  memcpy(v20, *(v2[1] + 4479), *(v2[1] + 4471));
  memcpy(v21, *(v2[1] + 4503), *(v2[1] + 4459));
  if (v16)
  {
    for (i = 0; i < v16; i += v27)
    {
      if (v16 - i >= 0x100000)
      {
        v27 = 0x100000;
      }

      else
      {
        v27 = v16 - i;
      }

      v28 = _windowsGetPtr(v47, i + v18, v27);
      fd_pread(*(v2[1] + 307), v28, v27, i);
    }
  }

  *(Ptr + 60) = v44;
  if (v49 >= 1)
  {
    v29 = 0;
    do
    {
      storageWindowSync(v51[v29++], 1);
    }

    while (v29 < v49);
  }

  storageWindowsUnmap(v47);
  fd_release(v43);
  free(*(v2[1] + 299));
  v30 = v2[1];
  *(v30 + 299) = 0;
  _fd_unlink_with_origin(*(v30 + 220), 0);
  fd_release(*(v2[1] + 220));
  v31 = v2[1];
  *(v31 + 220) = 0;
  munmap(*(v31 + 4479), *(v31 + 4475));
  v32 = v2[1];
  *(v32 + 4479) = -1;
  _fd_unlink_with_origin(*(v32 + 236), 0);
  fd_release(*(v2[1] + 236));
  v33 = v2[1];
  *(v33 + 236) = 0;
  munmap(*(v33 + 4503), *(v33 + 4499));
  v34 = v2[1];
  *(v34 + 4503) = -1;
  _fd_unlink_with_origin(*(v34 + 4491), 0);
  fd_release(*(v2[1] + 4491));
  v35 = v2[1];
  *(v35 + 4491) = 0;
  storageWindowsUnmap(v35 + 307);
  v36 = *(v2[1] + 307);
  _fd_unlink_with_origin(v36, 0);
  fd_release(v36);
  if (*(v2[1] + 277))
  {
    v37 = 3;
  }

  else
  {
    v37 = 0;
  }

  v38 = fd_create_protected(v7, v9, 0, v37);
  v39 = v2[1];
  *(v39 + 220) = v38;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 0x40000000;
  v45[2] = ___ZN7dataMapIjLb0ELb0ELb1EE28data_map_make_read_only_implILb0EEENSt3__19enable_ifIXntT_EiE4typeEv_block_invoke_2;
  v45[3] = &__block_descriptor_tmp_217;
  v45[4] = v2;
  *(v39 + 343) = 257;
  *(v39 + 307) = v38;
  *(v39 + 315) = v44;
  *(v39 + 339) = 1;
  *(v39 + 347) = _Block_copy(v45);
  *(v39 + 355) = 26;
  bzero((v39 + 363), 0x1000uLL);
  _windowsMapInit(v2[1] + 307, 1);
  *(v2[1] + 323) = v44;
  v40 = v2[1];
  v41 = _windowsGetPtr(v40 + 307, 0, 76);
  *(v40 + 283) = v41;
  *(v40 + 299) = _windowsGetPtr(v40 + 307, 0, 56);
  *(v40 + 4479) = _windowsGetPtr(v40 + 307, 0x58uLL, v17 - 88);
  v42 = _windowsGetPtr(v40 + 307, v17, v18 - v17);
  result = 0;
  *(v40 + 4503) = v42;
  *(v40 + 5575) = *(v41 + 72);
LABEL_3:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::_data_map_commit(uint64_t *a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 208))(a1))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_50;
  }

  v49 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v6 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v8 = v7;
  v9 = v6;
  v10 = HIDWORD(v6);
  v12 = v11;
  v13 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  LODWORD(v56[0]) = v9;
  *buf = v10;
  v47 = v8;
  v48 = v12;
  if (!_setjmp(v13))
  {
    v17 = a1[1];
    if (v17)
    {
      v18 = a1[1];
      v19 = (v17 + 4511);
      v20 = *(v17 + 4543);
      v21 = *(v17 + 252);
      v22 = *(v17 + 299);
      if (v22)
      {
        v23 = *(v22 + 16);
        if (v23 < 3)
        {
          v24 = v23 + 1;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      SIActivityJournalEvent(v20, v21, 5u, v24, *v19);
      v25 = a1[1];
    }

    else
    {
      v25 = 0;
    }

    v26 = *(*(v25 + 299) + 16);
    if (v26)
    {
      if (v26 != 1)
      {
        v32 = *(v25 + 4543);
        v31 = *(v25 + 252);
        v27 = 0xFFFFFFFFLL;
        goto LABEL_28;
      }
    }

    else
    {
      v27 = (*(*a1 + 224))(a1, a2);
      if (v27 || (v27 = (*(*a1 + 232))(a1, a2), v27))
      {
LABEL_24:
        v28 = a1[1];
        if (!v28)
        {
          v35 = v27;
LABEL_39:
          v49 = 1;
          v37 = threadData[9 * LODWORD(v56[0]) + 1] + 320 * *buf;
          *(v37 + 312) = v14;
          v38 = *(v37 + 232);
          if (v38)
          {
            v38(*(v37 + 288));
          }

          dropThreadId(LODWORD(v56[0]), 0, add_explicit + 1);
          v16 = v35;
          goto LABEL_42;
        }

        v25 = a1[1];
        v29 = *(v28 + 299);
        v30 = *(v28 + 4543);
        v31 = *(v28 + 252);
        if (!v29)
        {
          v36 = 0;
          v33 = a1[1];
          goto LABEL_38;
        }

        v26 = *(v29 + 16);
        v32 = v30;
LABEL_28:
        v33 = v25;
        if (v26)
        {
          if (v26 == 2)
          {
            v34 = 3;
          }

          else
          {
            if (v26 != 1)
            {
              v30 = v32;
              v36 = 0;
              goto LABEL_38;
            }

            v34 = 2;
          }
        }

        else
        {
          v34 = 1;
        }

        v30 = v32;
        v36 = v34;
LABEL_38:
        v35 = v27;
        SIActivityJournalEvent(v30, v31, 6u, v36, *(v33 + 4511));
        goto LABEL_39;
      }
    }

    v27 = (*(*a1 + 56))(a1);
    if (!v27)
    {
      v27 = (*(*a1 + 64))(a1);
      if (!v27)
      {
        v27 = (*(*a1 + 72))(a1);
      }
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v46 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v46, 2u);
  }

  *(v13 + 312) = v14;
  CIOnThreadCleanUpReset(v47);
  dropThreadId(LODWORD(v56[0]), 1, add_explicit + 1);
  CICleanUpReset(LODWORD(v56[0]), v48);
  v16 = 0xFFFFFFFFLL;
LABEL_42:
  if ((v49 & 1) == 0)
  {
    *(a1[1] + 278) = 22;
  }

  memset(v56, 0, sizeof(v56));
  v39 = *__error();
  v40 = _SILogForLogForCategory(7);
  v41 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = fd_name(*(a1[1] + 220), v56, 0x100uLL);
    if (a2)
    {
      v43 = "commit";
    }

    else
    {
      v43 = "syncless commit";
    }

    v44 = (*(*a1 + 96))(a1);
    *buf = 136315650;
    v51 = v42;
    v52 = 2080;
    v53 = v43;
    v54 = 2048;
    v55 = v44;
    _os_log_impl(&dword_1C278D000, v40, v41, "%s complete %s with count: %llu", buf, 0x20u);
  }

  *__error() = v39;
  (*(*a1 + 216))(a1);
  result = v16;
LABEL_50:
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_commit_shadow_complete(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    if (*(*(v2 + 299) + 16) == 2)
    {
      SIActivityJournalEvent(*(v2 + 4543), *(v2 + 252), 0xFu, 3u, *(v2 + 4511));
      v4 = *(a1 + 8);
      v5 = *(v4 + 299);
      *(v5 + 32) = *(v5 + 20);
      *(v5 + 40) = *(v5 + 28);
      *(v5 + 16) = 1;
      fd_pwrite(*(v4 + 220), v5, 0x38uLL, 0);
      fd_sync(*(*(a1 + 8) + 220), 0);
      v6 = *(a1 + 8);
      v7 = (v6 + 4511);
      v8 = *(v6 + 4543);
      v9 = *(v6 + 252);
      v10 = *(v6 + 299);
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11 < 3)
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      SIActivityJournalEvent(v8, v9, 0x10u, v12, *v7);
      return *(*(a1 + 8) + 278);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_commit_shadow(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!*(v2 + 278) && *(*(v2 + 299) + 16) == 2)
  {
    SIActivityJournalEvent(*(v2 + 4543), *(v2 + 252), 0xEu, 3u, *(v2 + 4511));
    fd_sync(*(*(a1 + 8) + 228), 0);
    v2 = *(a1 + 8);
  }

  fd_release(*(v2 + 228));
  v3 = *(a1 + 8);
  *(v3 + 228) = 0;
  return *(v3 + 278);
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_shadow(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    if (*(*(v2 + 299) + 16) == 2)
    {
      SIActivityJournalEvent(*(v2 + 4543), *(v2 + 252), 0xCu, 3u, *(v2 + 4511));
      v4 = *(a1 + 8);
      v5 = *(v4 + 299);
      *(v5 + 16) = 2;
      sibling_with_suffix_protected = *(v4 + 228);
      if (!sibling_with_suffix_protected)
      {
        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v4 + 220), ".shadow", 514);
        v7 = *(a1 + 8);
        *(v7 + 228) = sibling_with_suffix_protected;
        v5 = *(v7 + 299);
      }

      fd_pwrite(sibling_with_suffix_protected, v5, 0x38uLL, 0);
      v8 = *(a1 + 8);
      v9 = (v8 + 4511);
      v10 = *(v8 + 4543);
      v11 = *(v8 + 252);
      v12 = *(v8 + 299);
      if (v12)
      {
        v13 = *(v12 + 16);
        if (v13 < 3)
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      SIActivityJournalEvent(v10, v11, 0xDu, v14, *v9);
      return *(*(a1 + 8) + 278);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_commit_sync(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 278);
  if (!result)
  {
    v4 = *(*(v2 + 299) + 16);
    if (v4 == 1)
    {
      return 0;
    }

    else
    {
      v5 = (v2 + 4511);
      v6 = *(v2 + 4543);
      v7 = *(v2 + 252);
      if (v4 == 2)
      {
        v8 = 3;
      }

      else
      {
        v8 = 0;
      }

      if (v4)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }

      SIActivityJournalEvent(v6, v7, 8u, v9, *v5);
      v10 = *(a1 + 8);
      v11 = *(v10 + 299);
      *(v11 + 16) = 2;
      fd_pwrite(*(v10 + 220), v11, 0x38uLL, 0);
      fd_sync(*(*(a1 + 8) + 220), 0);
      v12 = *(a1 + 8);
      v13 = (v12 + 4511);
      v14 = *(v12 + 4543);
      v15 = *(v12 + 252);
      v16 = *(v12 + 299);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17 < 3)
        {
          v18 = v17 + 1;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      SIActivityJournalEvent(v14, v15, 9u, v18, *v13);
      return *(*(a1 + 8) + 278);
    }
  }

  return result;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_flush(uint64_t *a1)
{
  if ((*(*a1 + 208))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v36 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, add_explicit + 1);
  v6 = v5;
  v7 = v4;
  v8 = HIDWORD(v4);
  v10 = v9;
  v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  v34 = v8;
  v35 = v7;
  v32 = v6;
  v33 = v10;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31[0] = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v31, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v32);
    dropThreadId(v35, 1, add_explicit + 1);
    CICleanUpReset(v35, v33);
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v15 = a1[1];
    v16 = (v15 + 4511);
    v17 = *(v15 + 4543);
    v18 = *(v15 + 252);
    v19 = *(v15 + 299);
    if (v19)
    {
      v20 = *(v19 + 16);
      if (v20 < 3)
      {
        v21 = v20 + 1;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    SIActivityJournalEvent(v17, v18, 4u, v21, *v16);
    if (*(*(a1[1] + 299) + 16))
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = (*(*a1 + 224))(a1, 1);
    }

    v36 = 1;
    v22 = threadData[9 * v35 + 1] + 320 * v34;
    *(v22 + 312) = v12;
    v23 = *(v22 + 232);
    if (v23)
    {
      v23(*(v22 + 288));
    }

    dropThreadId(v35, 0, add_explicit + 1);
  }

  v24 = a1[1];
  v25 = v24;
  v26 = v24 + 278;
  if ((v36 & 1) == 0)
  {
    *v26 = 22;
    goto LABEL_24;
  }

  if (v24)
  {
LABEL_24:
    v27 = v24 + 4511;
    v28 = *(v26 + 21);
    if (v28)
    {
      v29 = *(v28 + 16);
      if (v29 < 3)
      {
        v30 = v29 + 1;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    SIActivityJournalEvent(*(v27 + 32), *(v25 + 252), 4u, v30, *v27);
  }

  (*(*a1 + 216))(a1);
  return v14;
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_validate(void *a1)
{
  v97 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 104))(a1))
  {
    v2 = 0;
    goto LABEL_72;
  }

  v3 = a1[1];
  v2 = 1;
  if (!*(v3 + 323))
  {
    goto LABEL_71;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v66 = *(v3 + 216);
  while (1)
  {
    v67 = 0;
    v68 = 0;
    v7 = *(v3 + 4511);
    v69 = 0;
    v8 = *(v3 + 4503);
    if (v5 < v7 && (v8 + 1) > 1)
    {
      v13 = (v8 + 4 * v5);
      v12 = 1;
    }

    else
    {
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
      v84 = 0u;
      memset(v83, 0, sizeof(v83));
      v10 = *__error();
      v11 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v30 = a1[1];
        v31 = fd_name(*(v30 + 220), v83, 0x100uLL);
        *buf = 136316418;
        v72 = "_data_map_get_offset_entry_impl";
        v73 = 1024;
        v74 = 362;
        v75 = 2048;
        v76 = v5;
        v77 = 2048;
        v78 = v7;
        v79 = 2048;
        v80 = v30;
        v81 = 2080;
        v82 = v31;
        _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %llu max %llu %p %s", buf, 0x3Au);
      }

      v12 = 0;
      v13 = 0;
      *__error() = v10;
    }

    v70 = 0;
    v14 = a1[1];
    v15 = (*(v14 + 5575) + v4);
    if (v15 >= *(v14 + 323))
    {
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
      v84 = 0u;
      memset(v83, 0, sizeof(v83));
      v39 = *__error();
      v40 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
LABEL_44:
        *__error() = v39;
        v34 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        *v83 = 136315394;
        *&v83[4] = "_data_map_validate";
        *&v83[12] = 1024;
        *&v83[14] = 814;
        v38 = "%s:%d: entry exceeds storage";
        v46 = v45;
        v47 = 18;
LABEL_68:
        _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, v38, v83, v47);
        goto LABEL_69;
      }

      v41 = a1[1];
      v42 = *(v41 + 323);
      v43 = fd_name(*(v41 + 220), v83, 0x100uLL);
      *buf = 136316418;
      v72 = "_data_map_get_data_entry";
      v73 = 1024;
      v74 = 397;
      v75 = 2048;
      v76 = v15;
      v77 = 2048;
      v78 = v42;
      v79 = 2048;
      v80 = v41;
      v81 = 2080;
      v82 = v43;
      v44 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_74:
      _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, v44, buf, 0x3Au);
      goto LABEL_44;
    }

    dataMap<unsigned int,false,false,true>::data_entry_restore<false>(a1, v15, &v67, &v70);
    if (v70 == 1)
    {
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
      v84 = 0u;
      memset(v83, 0, sizeof(v83));
      v39 = *__error();
      v40 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      v64 = fd_name(*(a1[1] + 220), v83, 0x100uLL);
      v65 = *(a1[1] + 323);
      *buf = 136316418;
      v72 = "_data_map_get_data_entry";
      v73 = 1024;
      v74 = 393;
      v75 = 2080;
      v76 = v64;
      v77 = 2048;
      v78 = v15;
      v79 = 2048;
      v80 = v65;
      v81 = 2048;
      v82 = v67;
      v44 = "%s:%d: data_entry_restore failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
      goto LABEL_74;
    }

    if ((v12 & 1) == 0 || *v13 != v6)
    {
      break;
    }

    v16 = v67;
    if (v5)
    {
      v17 = v68;
      v18 = a1[1];
      v19 = data_entry_hash<unsigned int,false,false,true>(v67, v68, v66, *(v18 + 282));
      bucket_entry = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v19, v5, 0, 0, *(v18 + 4511));
      v21 = bucket_entry;
      if (bucket_entry)
      {
        if (v5 == *bucket_entry)
        {
          v22 = a1[1];
          v23 = dataMap<unsigned int,false,false,true>::dm_hash(*(v22 + 282), v17, v16);
          v24 = dataMap<unsigned int,false,false,true>::_data_map_get_bucket_entry(a1, v23, 0, v17, v16, *(v22 + 4511));
          v25 = v24;
          if (v24)
          {
            if (v5 == *v24)
            {
              goto LABEL_21;
            }

            v57 = v24;
          }

          else
          {
            v57 = 0;
          }

          v58 = *__error();
          v59 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *v83 = 136315394;
            *&v83[4] = "_data_map_validate";
            *&v83[12] = 1024;
            *&v83[14] = 855;
            _os_log_error_impl(&dword_1C278D000, v59, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ", v83, 0x12u);
          }

          *__error() = v58;
          v34 = *__error();
          v35 = _SILogForLogForCategory(0);
          v60 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
          if (v25)
          {
            if (!v60)
            {
              goto LABEL_69;
            }

            v61 = *v57;
            *v83 = 136316418;
            *&v83[4] = "_data_map_validate";
            *&v83[12] = 1024;
            *&v83[14] = 857;
            *&v83[18] = 2048;
            *&v83[20] = v5;
            *&v83[28] = 2048;
            *&v83[30] = v61;
            *&v83[38] = 2048;
            *&v83[40] = v4;
            LOWORD(v84) = 2080;
            *(&v84 + 2) = v17;
            v38 = "%s:%d: sid: %llu hid: %llu offset: %ld %s";
LABEL_62:
            v46 = v35;
            v47 = 58;
            goto LABEL_68;
          }

          if (!v60)
          {
            goto LABEL_69;
          }

          *v83 = 136316162;
          *&v83[4] = "_data_map_validate";
          *&v83[12] = 1024;
          *&v83[14] = 859;
          *&v83[18] = 2048;
          *&v83[20] = v5;
          *&v83[28] = 2048;
          *&v83[30] = v4;
          *&v83[38] = 2080;
          *&v83[40] = v17;
          v38 = "%s:%d: hash entry not found for %llu offset 0x%lx %s";
LABEL_67:
          v46 = v35;
          v47 = 48;
          goto LABEL_68;
        }

        v48 = bucket_entry;
      }

      else
      {
        v48 = 0;
      }

      v49 = *__error();
      v50 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *v83 = 136315394;
        *&v83[4] = "_data_map_validate";
        *&v83[12] = 1024;
        *&v83[14] = 841;
        _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch hash ids ", v83, 0x12u);
      }

      *__error() = v49;
      v34 = *__error();
      v51 = _SILogForLogForCategory(0);
      v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        if (v52)
        {
          v53 = *v48;
          *v83 = 136316418;
          *&v83[4] = "_data_map_validate";
          *&v83[12] = 1024;
          *&v83[14] = 843;
          *&v83[18] = 2048;
          *&v83[20] = v5;
          *&v83[28] = 2048;
          *&v83[30] = v53;
          *&v83[38] = 2048;
          *&v83[40] = v4;
          LOWORD(v84) = 2080;
          *(&v84 + 2) = v17;
          v54 = "%s:%d: sid: %llu hid: %llu offset: %ld %s";
          v55 = v51;
          v56 = 58;
LABEL_76:
          _os_log_error_impl(&dword_1C278D000, v55, OS_LOG_TYPE_ERROR, v54, v83, v56);
        }
      }

      else if (v52)
      {
        *v83 = 136316162;
        *&v83[4] = "_data_map_validate";
        *&v83[12] = 1024;
        *&v83[14] = 845;
        *&v83[18] = 2048;
        *&v83[20] = v5;
        *&v83[28] = 2048;
        *&v83[30] = v4;
        *&v83[38] = 2080;
        *&v83[40] = v17;
        v54 = "%s:%d: hash entry not found for %llu offset 0x%lx %s";
        v55 = v51;
        v56 = 48;
        goto LABEL_76;
      }

      v2 = 0;
      goto LABEL_70;
    }

LABEL_21:
    if (v16 < 0x80)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v16 >> 14)
    {
      v27 = 3;
    }

    else
    {
      v27 = v26;
    }

    if (v16 >> 21)
    {
      v28 = 4;
    }

    else
    {
      v28 = v27;
    }

    if (v16 >> 28)
    {
      v29 = 5;
    }

    else
    {
      v29 = v28;
    }

    v4 = (v16 + v6 + v29);
    ++v5;
    v3 = a1[1];
    v6 = v4;
    if (*(v3 + 323) <= v4)
    {
      v2 = 1;
      goto LABEL_71;
    }
  }

  v32 = *__error();
  v33 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *v83 = 136315394;
    *&v83[4] = "_data_map_validate";
    *&v83[12] = 1024;
    *&v83[14] = 827;
    _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: Error mismatch offset ids ", v83, 0x12u);
  }

  *__error() = v32;
  v34 = *__error();
  v35 = _SILogForLogForCategory(0);
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  if (!v12)
  {
    if (!v36)
    {
      goto LABEL_69;
    }

    *v83 = 136316162;
    *&v83[4] = "_data_map_validate";
    *&v83[12] = 1024;
    *&v83[14] = 831;
    *&v83[18] = 2048;
    *&v83[20] = v5;
    *&v83[28] = 2048;
    *&v83[30] = v4;
    *&v83[38] = 2080;
    *&v83[40] = v68;
    v38 = "%s:%d: offset not found for %llu offset 0x%lx %s";
    goto LABEL_67;
  }

  if (v36)
  {
    v37 = *v13;
    *v83 = 136316418;
    *&v83[4] = "_data_map_validate";
    *&v83[12] = 1024;
    *&v83[14] = 829;
    *&v83[18] = 2048;
    *&v83[20] = v5;
    *&v83[28] = 2048;
    *&v83[30] = v4;
    *&v83[38] = 2048;
    *&v83[40] = v37;
    LOWORD(v84) = 2080;
    *(&v84 + 2) = v68;
    v38 = "%s:%d: sid: %llu so: %ld oo:%ld %s";
    goto LABEL_62;
  }

LABEL_69:
  v2 = 1;
LABEL_70:
  *__error() = v34;
LABEL_71:
  (*(*a1 + 112))(a1);
LABEL_72:
  v62 = *MEMORY[0x1E69E9840];
  return v2;
}

void dataMap<unsigned int,false,false,true>::data_map_destroy(uint64_t a1)
{
  if (*(a1 + 8))
  {
    makeThreadId();
    v2 = *(a1 + 8);
    if ((*(v2 + 283) + 1) >= 2)
    {
      v79 = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v15 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, v2, 0, add_explicit + 1);
      v17 = v16;
      v18 = v15;
      v19 = HIDWORD(v15);
      v21 = v20;
      v22 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
      v23 = *(v22 + 312);
      v24 = *(v22 + 224);
      if (v24)
      {
        v24(*(v22 + 288));
      }

      v77 = v19;
      v78 = v18;
      v75 = v17;
      v76 = v21;
      if (_setjmp(v22))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v74 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v74, 2u);
        }

        *(v22 + 312) = v23;
        CIOnThreadCleanUpReset(v75);
        dropThreadId(v78, 1, add_explicit + 1);
        CICleanUpReset(v78, v76);
        v25 = 0;
      }

      else
      {
        v33 = *(*(*(a1 + 8) + 283) + 60);
        v79 = 1;
        v34 = threadData[9 * v78 + 1] + 320 * v77;
        *(v34 + 312) = v23;
        v35 = *(v34 + 232);
        if (v35)
        {
          v35(*(v34 + 288));
        }

        dropThreadId(v78, 0, add_explicit + 1);
        v25 = v33;
      }

      v36 = v25;
      if ((v79 & 1) == 0)
      {
        v36 = *(*(a1 + 8) + 291);
      }

      munmap(*(*(a1 + 8) + 283), v36);
      v37 = *(a1 + 8);
      *(v37 + 283) = -1;
      fd_release(*(v37 + 220));
      v38 = *(a1 + 8);
      *(v38 + 220) = 0;
      v39 = *(v38 + 228);
      if (v39)
      {
        fd_release(v39);
        v40 = *(a1 + 8);
        *(v40 + 228) = 0;
        v41 = v40;
      }

      else
      {
        v41 = v38;
      }

      v42 = v41;
    }

    else
    {
      v3 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, v2, 0, v3 + 1);
      v6 = v5;
      v7 = v4;
      v8 = HIDWORD(v4);
      v10 = v9;
      v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
      v12 = *(v11 + 312);
      v13 = *(v11 + 224);
      if (v13)
      {
        v13(*(v11 + 288));
      }

      v77 = v8;
      v78 = v7;
      v75 = v6;
      v76 = v10;
      if (_setjmp(v11))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v74 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v74, 2u);
        }

        *(v11 + 312) = v12;
        CIOnThreadCleanUpReset(v75);
        dropThreadId(v78, 1, v3 + 1);
        CICleanUpReset(v78, v76);
      }

      else
      {
        v26 = *(a1 + 8);
        v27 = (v26 + 4511);
        v28 = *(v26 + 4543);
        v29 = *(v26 + 252);
        v30 = *(v26 + 299);
        if (v30)
        {
          v31 = *(v30 + 16);
          if (v31 < 3)
          {
            v32 = v31 + 1;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }

        SIActivityJournalEvent(v28, v29, 2u, v32, *v27);
        v43 = *(a1 + 8);
        v44 = *(v43 + 299);
        if (v44 && !*(v44 + 16))
        {
          v45 = *(a1 + 8);
          if (*(v43 + 274) == 1)
          {
            v46 = v43 + 4479;
            v47 = *v46;
            v48 = 4 * *(v46 + 8);
            fd_system_status_stall_if_busy();
            msync(v47, v48, 4);
            _fd_unlink_with_origin(*(*(a1 + 8) + 236), 0);
            munmap(*(*(a1 + 8) + 4479), *(*(a1 + 8) + 4475));
            v49 = *(a1 + 8);
            *(v49 + 4479) = -1;
            v45 = v49;
          }

          v50 = v45;
          if (*(v45 + 273) == 1)
          {
            storageWindowsKillPages(v45 + 307);
            storageWindowsUnmap(*(a1 + 8) + 307);
            storageWindowsClose(*(a1 + 8) + 307);
            fd_truncate(*(*(a1 + 8) + 307), *(*(*(a1 + 8) + 299) + 20));
            v50 = *(a1 + 8);
          }

          if (*(v50 + 275) == 1)
          {
            v51 = v50 + 4096;
            v52 = *(v51 + 407);
            v53 = 4 * *(v51 + 415);
            fd_system_status_stall_if_busy();
            msync(v52, v53, 4);
            munmap(*(*(a1 + 8) + 4503), *(*(a1 + 8) + 4499));
            v54 = *(a1 + 8);
            *(v54 + 4503) = -1;
            fd_truncate(*(v54 + 4491), 4 * *(v54 + 4511));
          }
        }

        v55 = threadData[9 * v78 + 1] + 320 * v77;
        *(v55 + 312) = v12;
        v56 = *(v55 + 232);
        if (v56)
        {
          v56(*(v55 + 288));
        }

        dropThreadId(v78, 0, v3 + 1);
      }

      v57 = *(a1 + 8);
      v58 = *(v57 + 299);
      if (v58)
      {
        free(v58);
        v59 = *(a1 + 8);
        *(v59 + 299) = 0;
        v57 = v59;
      }

      fd_release(*(v57 + 220));
      v60 = *(a1 + 8);
      *(v60 + 220) = 0;
      v61 = *(v60 + 4503);
      if (v61 != -1)
      {
        munmap(v61, *(v60 + 4499));
        v62 = *(a1 + 8);
        *(v62 + 4503) = -1;
        *(v62 + 4499) = 0;
        v60 = v62;
      }

      fd_release(*(v60 + 4491));
      v63 = *(a1 + 8);
      *(v63 + 4491) = 0;
      storageWindowsUnmap(v63 + 307);
      storageWindowsClose(*(a1 + 8) + 307);
      v64 = *(a1 + 8);
      v65 = *(v64 + 4479);
      if (v65 != -1)
      {
        munmap(v65, *(v64 + 4475));
        v66 = *(a1 + 8);
        *(v66 + 4479) = -1;
        *(v66 + 4475) = 0;
        v64 = v66;
      }

      fd_release(*(v64 + 236));
      v67 = *(a1 + 8);
      *(v67 + 236) = 0;
      v42 = v67;
    }

    v68 = *(v42 + 228);
    if (v68)
    {
      fd_release(v68);
      v69 = *(a1 + 8);
      *(v69 + 228) = 0;
      v42 = v69;
    }

    v70 = *(v42 + 264);
    v71 = v42;
    if (v70)
    {
      v72 = v70[2];
      if (v72)
      {
        CFRelease(v72);
      }

      free(v70);
      v73 = *(a1 + 8);
      *(v73 + 264) = 0;
      v71 = v73;
    }

    if ((v71[4].__opaque[12] & 1) == 0)
    {
      db_rwlock_destroy(v71);
      v71 = *(a1 + 8);
    }

    free(v71);
  }
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_init(uint64_t (***a1)(void, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v9[0] = a2;
  v9[1] = a3;
  v10 = a4;
  v11 = a5;
  return (**a1)(a1, v9, a3, a4, a5, a6, a7, a8);
}

uint64_t dataMap<unsigned int,false,false,true>::data_map_init_with_ctx(uint64_t *a1, uint64_t a2)
{
  v218 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(*a2, sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v6 = v5;
  v7 = v4;
  v8 = HIDWORD(v4);
  v10 = v9;
  v11 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  *(v11 + 216) = 0;
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  v194 = v8;
  v195 = v7;
  v192 = v6;
  v193 = v10;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", __str, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v192);
    dropThreadId(v195, 1, add_explicit + 1);
    CICleanUpReset(v195, v193);
    result = 0;
    goto LABEL_162;
  }

  v183 = v12;
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 20);
  v179 = *(a2 + 16);
  bzero(__str, 0x400uLL);
  v18 = malloc_type_calloc(1uLL, 0x15D7uLL, 0x10A0040EAD026E7uLL);
  a1[1] = v18;
  *(v18 + 63) = *(a2 + 72);
  *(v18 + 4535) = *(a2 + 24);
  *(v18 + 244) = *(a2 + 56);
  *(v18 + 65) = 0;
  v18[277] = BYTE1(v17) & 1;
  v18[276] = (v17 & 8) != 0;
  *(v18 + 283) = -1;
  *(v18 + 299) = 0;
  *(v18 + 4503) = -1;
  *(v18 + 4479) = -1;
  v184 = add_explicit;
  if ((v17 & 8) == 0)
  {
    *(v18 + 26) = 0;
    *(v18 + 11) = 0u;
    *(v18 + 12) = 0u;
    *(v18 + 9) = 0u;
    *(v18 + 10) = 0u;
    *(v18 + 7) = 0u;
    *(v18 + 8) = 0u;
    *(v18 + 5) = 0u;
    *(v18 + 6) = 0u;
    *(v18 + 3) = 0u;
    *(v18 + 4) = 0u;
    *(v18 + 1) = 0u;
    *(v18 + 2) = 0u;
    *v18 = 0u;
    pthread_mutex_init(v18, 0);
    v18 = a1[1];
  }

  v19 = *(a2 + 32);
  *(v18 + 339) = 0;
  *(v18 + 5575) = 0;
  *(v18 + 5583) = v19;
  *(v18 + 315) = 0;
  *(v18 + 307) = 0;
  strlcpy(v18 + 4551, v16, 0x400uLL);
  *(a1[1] + 4543) = *(a2 + 64);
  if ((v17 & 2) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = 536871426;
  }

  v191 = 0;
  makeThreadId();
  v181 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v21 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1[1], 0, v181 + 1);
  v23 = v22;
  v24 = v21;
  v25 = HIDWORD(v21);
  v27 = v26;
  v28 = threadData[9 * v21 + 1] + 320 * HIDWORD(v21);
  v180 = *(v28 + 312);
  v29 = *(v28 + 224);
  if (v29)
  {
    v29(*(v28 + 288));
  }

  v189 = v25;
  v190 = v24;
  v187 = v23;
  v188 = v27;
  if (_setjmp(v28))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v202 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v202, 2u);
    }

    *(v28 + 312) = v180;
    CIOnThreadCleanUpReset(v187);
    dropThreadId(v190, 1, v181 + 1);
    CICleanUpReset(v190, v188);
    v30 = v183;
    v31 = a1;
    if (v191)
    {
      goto LABEL_158;
    }

    goto LABEL_156;
  }

  if (!v16 || (v32 = strlen(v16), v15 == -1) || v32 - 241 <= 0xFFFFFFFFFFFFFF0FLL)
  {
    v55 = *__error();
    v56 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *v202 = 136315394;
      *&v202[4] = "data_map_init_with_ctx";
      *&v202[12] = 1024;
      *&v202[14] = 1111;
      _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, "%s:%d: param error", v202, 0x12u);
    }

    v57 = v55;
    v30 = v183;
    goto LABEL_43;
  }

  v33 = v15;
  if ((v17 & 2) != 0)
  {
    v34 = 0;
  }

  else
  {
    v34 = ((v17 & 1) << 10) | 0x20000202;
  }

  if ((v17 & 3) != 2)
  {
    if ((v17 & 0x100) != 0)
    {
      v58 = 3;
    }

    else
    {
      v58 = 0;
    }

    v59 = a1;
LABEL_49:
    snprintf(__str, 0x400uLL, "%s.header", v16);
    v60 = fd_create_protected(v15, __str, v34, 3u);
    *(v59[1] + 220) = v60;
    *(v59[1] + 295) = fd_lseek(v60, 0, 2);
    snprintf(__str, 0x400uLL, "%s.data", v16);
    v61 = fd_create_protected(v15, __str, v34, v58);
    v62 = v61;
    if ((v17 & 3) != 0 || (memset(&v216, 0, sizeof(v216)), fd_stat(v61, &v216)) || (v63 = v216.st_blocks << 9, v216.st_blocks << 9 <= v216.st_size + 0x400000))
    {
      v65 = v62;
      v67 = v17 & 1;
    }

    else
    {
      bzero(v202, 0x400uLL);
      v178 = *__error();
      v64 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v197 = v63;
        v198 = 2048;
        st_size = v216.st_size;
        v200 = 2080;
        v201 = __str;
        _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "found allocated size %lld for %lld %s", buf, 0x20u);
      }

      *__error() = v178;
      snprintf(v202, 0x400uLL, "tmp.%s.data.1", v16);
      v65 = fd_create_protected(v33, v202, 1538, v58);
      if (fd_copyfile(v62, v65, 0))
      {
        v66 = v65;
        v65 = v62;
        v67 = v17 & 1;
      }

      else
      {
        snprintf(v202, 0x400uLL, "tmp.%s.data.2", v16);
        v67 = v17 & 1;
        if (fd_rename(v62, v202) || fd_rename(v65, __str))
        {
          v66 = v65;
          v65 = v62;
        }

        else
        {
          _fd_unlink_with_origin(v62, 0);
          fd_release(v62);
          v66 = 0;
        }
      }

      v118 = v66;
      _fd_unlink_with_origin(v66, 0);
      fd_release(v118);
    }

    v68 = fd_lseek(v65, 0, 2);
    v69 = a1[1];
    v185[0] = MEMORY[0x1E69E9820];
    v185[1] = 0x40000000;
    v185[2] = ___ZN7dataMapIjLb0ELb0ELb1EE22data_map_init_with_ctxEP17data_map_init_ctx_block_invoke_171;
    v185[3] = &__block_descriptor_tmp_172_6059;
    v185[4] = a1;
    *(v69 + 343) = (v17 & 2) >> 1;
    *(v69 + 307) = v65;
    *(v69 + 315) = v68;
    *(v69 + 339) = 1;
    *(v69 + 344) = 1;
    *(v69 + 347) = _Block_copy(v185);
    *(v69 + 355) = 26;
    bzero((v69 + 363), 0x1000uLL);
    snprintf(__str, 0x400uLL, "%s.offsets", v16);
    v70 = fd_create_protected(v33, __str, v34, 3u);
    *(a1[1] + 4491) = v70;
    *(a1[1] + 4459) = fd_lseek(v70, 0, 2);
    snprintf(__str, 0x400uLL, "%s.buckets", v16);
    v71 = fd_create_protected(v33, __str, 514, 3u);
    *(a1[1] + 236) = v71;
    v31 = a1;
    v72 = fd_lseek(v71, 0, 2);
    v73 = a1[1];
    *(v73 + 4471) = v72;
    if (v67)
    {
      v30 = v183;
      if (fd_truncate(*(v73 + 220), 56) == -1)
      {
        v114 = *__error();
        v115 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_141;
        }

        *v202 = 136315394;
        *&v202[4] = "data_map_init_with_ctx";
        *&v202[12] = 1024;
        *&v202[14] = 1241;
        v116 = "%s:%d: fd_truncate error";
      }

      else
      {
        v76 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
        v77 = a1[1];
        *(v77 + 295) = 56;
        *(v77 + 299) = v76;
        v76[2] = 0;
        *v76 = 0x446174615000;
        *(v76 + 2) = 13;
        *(v76 + 3) = v179;
        v78 = MEMORY[0x1E69E9AC8];
        if (fd_truncate(*(v77 + 4491), *MEMORY[0x1E69E9AC8] & 0xFFFFFFFFFFFFFFFCLL) == -1)
        {
          v114 = *__error();
          v115 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }

          *v202 = 136315394;
          *&v202[4] = "data_map_init_with_ctx";
          *&v202[12] = 1024;
          *&v202[14] = 1267;
          v116 = "%s:%d: fd_truncate error";
        }

        else
        {
          v79 = fd_mmap(*(a1[1] + 4491));
          v80 = a1[1];
          *(v80 + 4503) = v79;
          if (v79 == -1)
          {
            v114 = *__error();
            v115 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_141;
            }

            *v202 = 136315394;
            *&v202[4] = "data_map_init_with_ctx";
            *&v202[12] = 1024;
            *&v202[14] = 1272;
            v116 = "%s:%d: offsets fd_mmap error";
          }

          else
          {
            v81 = v80;
            v82 = v80 + 4096;
            *(v82 + 403) = 0x100000;
            v83 = *v78 >> 2;
            v84 = *v78 & 0xFFFFFFFFFFFFFFFCLL;
            *(v82 + 363) = *v78 & 0xFFFFFFFC;
            *(v82 + 367) = v83;
            if (fd_truncate(*(v81 + 236), v84) == -1)
            {
              v114 = *__error();
              v115 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_141;
              }

              *v202 = 136315394;
              *&v202[4] = "data_map_init_with_ctx";
              *&v202[12] = 1024;
              *&v202[14] = 1282;
              v116 = "%s:%d: fd_truncate error";
            }

            else
            {
              v85 = fd_mmap(*(a1[1] + 236));
              v86 = a1[1];
              *(v86 + 4479) = v85;
              if (v85 == -1)
              {
                v114 = *__error();
                v115 = _SILogForLogForCategory(0);
                if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_141;
                }

                *v202 = 136315394;
                *&v202[4] = "data_map_init_with_ctx";
                *&v202[12] = 1024;
                *&v202[14] = 1288;
                v116 = "%s:%d: hash fd_mmap error";
              }

              else
              {
                *(v86 + 4471) = v84;
                *(v86 + 4475) = 0x100000;
                v87 = *v78;
                v88 = *v78 >> 2;
                *(*(v86 + 299) + 24) = v88;
                *(v86 + 4487) = v88;
                if (_storageWindowsSetFileSize((v86 + 307), v87))
                {
                  data_entry_store<unsigned int,false,false,true>(a1[1] + 307, dword_1E8194788);
                  v89 = a1[1];
                  v90 = *(v89 + 299);
                  v90[5] = *(v89 + 323);
                  **(v89 + 4503) = 0;
                  v90[7] = 1;
                  *(v89 + 4511) = 1;
                  v91 = *(v89 + 4543);
                  v92 = *(v89 + 252);
                  v93 = v90[4];
                  if (v93 < 3)
                  {
                    v94 = v93 + 1;
                  }

                  else
                  {
                    v94 = 0;
                  }

                  SIActivityJournalEvent(v91, v92, 0, v94, 1u);
                  v53 = a1[1];
                  v54 = 0;
                  goto LABEL_124;
                }

                v114 = *__error();
                v115 = _SILogForLogForCategory(0);
                if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_141;
                }

                *v202 = 136315394;
                *&v202[4] = "data_map_init_with_ctx";
                *&v202[12] = 1024;
                *&v202[14] = 1300;
                v116 = "%s:%d: fd_truncate error";
              }
            }
          }
        }
      }
    }

    else
    {
      if (*(v73 + 295) <= 0x37u)
      {
        v74 = *__error();
        v75 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v166 = *(a1[1] + 295);
          *v202 = 136315650;
          *&v202[4] = "data_map_init_with_ctx";
          *&v202[12] = 1024;
          *&v202[14] = 1322;
          *&v202[18] = 2048;
          *&v202[20] = v166;
          _os_log_error_impl(&dword_1C278D000, v75, OS_LOG_TYPE_ERROR, "%s:%d: invalid header size %ld", v202, 0x1Cu);
        }

        v57 = v74;
        v30 = v183;
        goto LABEL_142;
      }

      v95 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
      v96 = a1[1];
      *(v96 + 299) = v95;
      v97 = (v17 >> 2) & 1;
      if ((v17 & 0x80) != 0)
      {
        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v96 + 220), ".shadow", 0);
        v96 = a1[1];
        if (sibling_with_suffix_protected)
        {
          v99 = sibling_with_suffix_protected;
          v100 = (v17 >> 2) & 1;
          if (!fd_copyfile(sibling_with_suffix_protected, *(v96 + 220), 0))
          {
            v100 = 0;
          }

          fd_release(v99);
          v96 = a1[1];
          v97 = v100;
        }
      }

      v30 = v183;
      if (fd_pread(*(v96 + 220), *(v96 + 299), 0x38uLL, 0) == 56)
      {
        *(a1[1] + 323) = *(*(a1[1] + 299) + 20);
        v101 = a1[1];
        v102 = *(v101 + 299);
        v103 = *(v102 + 28);
        *(v101 + 4511) = v103;
        v104 = *(v101 + 4543);
        v105 = *(v101 + 252);
        v106 = *(v102 + 16);
        if (v106 < 3)
        {
          v107 = v106 + 1;
        }

        else
        {
          v107 = 0;
        }

        SIActivityJournalEvent(v104, v105, 1u, v107, v103);
        fd_truncate(*(a1[1] + 4491), 4 * *(a1[1] + 4511));
        fd_truncate(*(a1[1] + 4491), *(a1[1] + 4459));
        v108 = a1[1];
        *(v108 + 4463) = *(v108 + 4459) >> 2;
        v109 = *(v108 + 299);
        *(v108 + 4487) = *(v109 + 24);
        *(v108 + 4523) = *(v109 + 44);
        *(v108 + 4531) = *(v109 + 52);
        *(v108 + 282) = *(v109 + 8) < 9u;
        if (v97)
        {
          v110 = *(v109 + 20);
          v111 = *(v109 + 32);
          if (v110 < v111)
          {
            goto LABEL_143;
          }

          if (v111 == v110)
          {
            v112 = v109;
            v113 = v108;
          }

          else
          {
            v119 = *(v109 + 32);
            if ((v17 & 2) == 0)
            {
              *(v109 + 20) = v111;
            }

            *(v108 + 323) = v111;
            v113 = a1[1];
            v112 = *(v113 + 299);
          }

          v120 = *(v113 + 4511);
          v121 = v112[10];
          if (v120 < v121)
          {
            goto LABEL_143;
          }

          if (v120 != v121)
          {
            if ((v17 & 2) == 0)
            {
              v112[6] = 0;
              v112[7] = v121;
              v112[5] = v112[8];
            }

            *(v113 + 4511) = v121;
            *(v113 + 4487) = 0;
          }

          v108 = v113;
        }

        v122 = MEMORY[0x1E69E9AC8];
        if (((*MEMORY[0x1E69E9AC8] + *(v108 + 4459) - 1) & -*MEMORY[0x1E69E9AC8]) <= 0x100000)
        {
          LODWORD(v123) = 0x100000;
        }

        else
        {
          v123 = (*MEMORY[0x1E69E9AC8] + *(v108 + 4459) - 1) & -*MEMORY[0x1E69E9AC8];
        }

        v124 = fd_mmap(*(v108 + 4491));
        v125 = a1[1];
        *(v125 + 4503) = v124;
        if (v124 == -1)
        {
          v114 = *__error();
          v115 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }

          *v202 = 136315394;
          *&v202[4] = "data_map_init_with_ctx";
          *&v202[12] = 1024;
          *&v202[14] = 1398;
          v116 = "%s:%d: offset fd_mmap error";
        }

        else
        {
          *(v125 + 4499) = v123;
          if (((*v122 + *(v125 + 4471) - 1) & -*v122) <= 0x100000)
          {
            LODWORD(v126) = 0x100000;
          }

          else
          {
            v126 = (*v122 + *(v125 + 4471) - 1) & -*v122;
          }

          v127 = fd_mmap(*(v125 + 236));
          v128 = a1[1];
          v129 = (v128 + 4475);
          *(v128 + 4479) = v127;
          if (v127 != -1)
          {
            v130 = v128;
            *v129 = v126;
            v131 = *(v128 + 299);
            if (!*(v131 + 28))
            {
              *(v131 + 28) = 1;
              v129[9] = 1;
            }

            v53 = v130;
            v54 = 0;
            goto LABEL_124;
          }

          v114 = *__error();
          v115 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }

          *v202 = 136315394;
          *&v202[4] = "data_map_init_with_ctx";
          *&v202[12] = 1024;
          *&v202[14] = 1407;
          v116 = "%s:%d: offset fd_mmap error";
        }
      }

      else
      {
        v114 = *__error();
        v115 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_141;
        }

        *v202 = 136315394;
        *&v202[4] = "data_map_init_with_ctx";
        *&v202[12] = 1024;
        *&v202[14] = 1341;
        v116 = "%s:%d: header pread error";
      }
    }

LABEL_139:
    v136 = v115;
    v137 = 18;
    goto LABEL_140;
  }

  snprintf(__str, 0x400uLL, "%s.map", v16);
  if ((v17 & 0x100) != 0)
  {
    v35 = 3;
  }

  else
  {
    v35 = 0;
  }

  v36 = fd_create_protected(v15, __str, v20, v35);
  v31 = a1;
  *(a1[1] + 220) = v36;
  v37 = fd_lseek(v36, 0, 2);
  v38 = a1[1];
  *(v38 + 295) = v37;
  if (v37 == -1 || v37 < 0x4DuLL)
  {
    fd_release(*(v38 + 220));
    *(a1[1] + 295) = 0;
    v58 = v35;
    v59 = a1;
    goto LABEL_49;
  }

  v39 = fd_mmap(*(v38 + 220));
  v40 = a1[1];
  *(v40 + 283) = v39;
  if (v39 == -1)
  {
    v117 = 0;
    v30 = v183;
    goto LABEL_144;
  }

  v41 = *(v40 + 295);
  *(v40 + 291) = v41;
  v30 = v183;
  if (v39[15] != v41)
  {
    goto LABEL_143;
  }

  *(v40 + 299) = v39;
  v42 = v39[16];
  if (v42 >= v41)
  {
    goto LABEL_143;
  }

  v43 = v39[17];
  if (v43 >= v41)
  {
    goto LABEL_143;
  }

  v44 = v39[18];
  if (v44 >= v41)
  {
    goto LABEL_143;
  }

  *(v40 + 4511) = v39[7];
  *(v40 + 4479) = v39 + v42;
  *(v40 + 4487) = v39[6];
  *(v40 + 4503) = v39 + v43;
  v45 = *(v40 + 220);
  v46 = v39[5] + v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN7dataMapIjLb0ELb0ELb1EE22data_map_init_with_ctxEP17data_map_init_ctx_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_169;
  aBlock[4] = a1;
  *(v40 + 343) = 257;
  *(v40 + 307) = v45;
  *(v40 + 315) = v46;
  *(v40 + 339) = 1;
  *(v40 + 347) = _Block_copy(aBlock);
  *(v40 + 355) = 26;
  bzero((v40 + 363), 0x1000uLL);
  v47 = a1[1];
  v48 = *(*(v47 + 283) + 72);
  *(v47 + 5575) = v48;
  *(v47 + 323) = (*(*(v47 + 299) + 20) + v48);
  v49 = a1[1];
  LODWORD(v50) = (*(*(v49 + 283) + 72) - *(*(v49 + 283) + 68)) >> 2;
  v51 = *(v49 + 4511);
  if (*(v49 + 4463) <= v51)
  {
    v50 = v50;
  }

  else
  {
    v50 = v51;
  }

  *(v49 + 4463) = v50;
  v52 = *(v49 + 299);
  *(v49 + 4523) = *(v52 + 44);
  *(v49 + 4531) = *(v52 + 52);
  *(v49 + 282) = *(v52 + 8) < 9u;
  v53 = v49;
  v54 = 1;
LABEL_124:
  if (*(v53 + 4463) < *(v53 + 4511))
  {
    v114 = *__error();
    v132 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
    {
      v133 = v31[1];
      v134 = *(v133 + 4463);
      v135 = *(v133 + 4511);
      *v202 = 136315906;
      *&v202[4] = "data_map_init_with_ctx";
      *&v202[12] = 1024;
      *&v202[14] = 1431;
      *&v202[18] = 2048;
      *&v202[20] = v134;
      *&v202[28] = 2048;
      *&v202[30] = v135;
      v116 = "%s:%d: invalid offset size 1 - %ld %llu";
LABEL_127:
      v136 = v132;
      v137 = 38;
LABEL_140:
      _os_log_error_impl(&dword_1C278D000, v136, OS_LOG_TYPE_ERROR, v116, v202, v137);
    }

LABEL_141:
    v57 = v114;
    goto LABEL_142;
  }

  v138 = *(v53 + 299);
  if (*v138 != 0x446174615000)
  {
    v114 = *__error();
    v115 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_141;
    }

    *v202 = 136315394;
    *&v202[4] = "data_map_init_with_ctx";
    *&v202[12] = 1024;
    *&v202[14] = 1440;
    v116 = "%s:%d: invalid offset signature";
    goto LABEL_139;
  }

  v139 = *(v138 + 8);
  if ((v139 - 8) >= 6 && v139 != 1)
  {
    v114 = *__error();
    v169 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_141;
    }

    *v202 = 136315650;
    *&v202[4] = "data_map_init_with_ctx";
    *&v202[12] = 1024;
    *&v202[14] = 1450;
    *&v202[18] = 1024;
    *&v202[20] = v139;
    v116 = "%s:%d: invalid version %d";
    v136 = v169;
    v137 = 24;
    goto LABEL_140;
  }

  if (*(v138 + 12) != v179)
  {
    v114 = *__error();
    v167 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_141;
    }

    v168 = *(*(v31[1] + 299) + 12);
    *v202 = 136315906;
    *&v202[4] = "data_map_init_with_ctx";
    *&v202[12] = 1024;
    *&v202[14] = 1454;
    *&v202[18] = 1024;
    *&v202[20] = v168;
    *&v202[24] = 1024;
    *&v202[26] = v179;
    v116 = "%s:%d: invalid extra_size %d %d";
    v136 = v167;
    v137 = 30;
    goto LABEL_140;
  }

  *(v53 + 216) = v179;
  if (v54)
  {
    v117 = 1;
    goto LABEL_144;
  }

  if (*(v53 + 295) <= 0x37u)
  {
    v114 = *__error();
    v132 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_141;
    }

    v170 = *(v31[1] + 295);
    *v202 = 136315906;
    *&v202[4] = "data_map_init_with_ctx";
    *&v202[12] = 1024;
    *&v202[14] = 1462;
    *&v202[18] = 2048;
    *&v202[20] = v170;
    *&v202[28] = 2048;
    *&v202[30] = 56;
    v116 = "%s:%d: invalid header size %llu < %lu";
    goto LABEL_127;
  }

  if (*(v53 + 315) < *(v53 + 323))
  {
    v171 = *__error();
    v172 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
    {
      *v202 = 136315394;
      *&v202[4] = "data_map_init_with_ctx";
      *&v202[12] = 1024;
      *&v202[14] = 1468;
      v173 = "%s:%d: invalid storage size 1";
LABEL_194:
      _os_log_error_impl(&dword_1C278D000, v172, OS_LOG_TYPE_ERROR, v173, v202, 0x12u);
      goto LABEL_191;
    }

    goto LABEL_191;
  }

  if ((v17 & 0x80) != 0 || !*(v138 + 16) || (v174 = *(v53 + 4487), !v174) || (v175 = 4 * v174, v176 = *(v53 + 4471), v175 > v176))
  {
    if (!dataMap<unsigned int,false,false,true>::_data_map_rehash(a1))
    {
      v171 = *__error();
      v172 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
      {
        *v202 = 136315394;
        *&v202[4] = "data_map_init_with_ctx";
        *&v202[12] = 1024;
        *&v202[14] = 1475;
        v173 = "%s:%d: re-build hash error";
        goto LABEL_194;
      }

      goto LABEL_191;
    }

    v177 = a1[1];
    v176 = *(v177 + 4471);
    v175 = 4 * *(v177 + 4487);
  }

  if (v175 > v176)
  {
    v171 = *__error();
    v172 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
    {
      *v202 = 136315394;
      *&v202[4] = "data_map_init_with_ctx";
      *&v202[12] = 1024;
      *&v202[14] = 1482;
      v173 = "%s:%d: invalid hash size 1";
      goto LABEL_194;
    }

LABEL_191:
    v57 = v171;
    v30 = v183;
LABEL_43:
    v31 = a1;
LABEL_142:
    *__error() = v57;
LABEL_143:
    v117 = 0;
    goto LABEL_144;
  }

  v117 = 1;
  v30 = v183;
  v31 = a1;
LABEL_144:
  v191 = 1;
  v140 = threadData[9 * v190 + 1] + 320 * v189;
  *(v140 + 312) = v180;
  v141 = *(v140 + 232);
  if (v141)
  {
    v141(*(v140 + 288));
  }

  dropThreadId(v190, 0, v181 + 1);
  if ((v191 & 1) == 0)
  {
LABEL_156:
    v158 = *__error();
    v159 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
    {
      v164 = fd_realpath(*(v31[1] + 220), __str);
      *&v202[4] = "data_map_init_with_ctx";
      v165 = "";
      *v202 = 136315650;
      if (v164)
      {
        v165 = v164;
      }

      *&v202[12] = 1024;
      *&v202[14] = 1496;
      *&v202[18] = 2080;
      *&v202[20] = v165;
      _os_log_error_impl(&dword_1C278D000, v159, OS_LOG_TYPE_ERROR, "%s:%d: exception processing %s", v202, 0x1Cu);
    }

    *__error() = v158;
    goto LABEL_158;
  }

  if (v117)
  {
    v142 = v31[1];
    if (v142)
    {
      v143 = v142 + 4096;
      v144 = *(v143 + 415) - 1;
      *(v143 + 419) = v144;
      *(v143 + 423) = v144;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v203 = 0u;
      memset(v202, 0, sizeof(v202));
      v145 = *__error();
      v146 = _SILogForLogForCategory(7);
      v147 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v146, v147))
      {
        v148 = fd_name(*(a1[1] + 220), v202, 0x100uLL);
        v149 = (*(*a1 + 96))(a1);
        v216.st_dev = 136315394;
        *&v216.st_mode = v148;
        WORD2(v216.st_ino) = 2048;
        *(&v216.st_ino + 6) = v149;
        _os_log_impl(&dword_1C278D000, v146, v147, "Opened map %s with counts: %llu", &v216, 0x16u);
      }

      *__error() = v145;
      v150 = a1[1];
      if (v150)
      {
        v151 = a1[1];
        v152 = (v150 + 4511);
        v153 = *(v150 + 4543);
        v154 = *(v150 + 252);
        v155 = *(v150 + 299);
        if (v155)
        {
          v156 = *(v155 + 16);
          if (v156 < 3)
          {
            v157 = v156 + 1;
          }

          else
          {
            v157 = 0;
          }
        }

        else
        {
          v157 = 0;
        }

        SIActivityJournalEvent(v153, v154, 1u, v157, *v152);
      }
    }

    v160 = 1;
    goto LABEL_159;
  }

LABEL_158:
  (*(*v31 + 16))(v31);
  v31[1] = 0;
  v160 = 0;
LABEL_159:
  v161 = threadData[9 * v195 + 1] + 320 * v194;
  *(v161 + 312) = v30;
  v162 = *(v161 + 232);
  if (v162)
  {
    v162(*(v161 + 288));
  }

  dropThreadId(v195, 0, v184 + 1);
  result = v160;
LABEL_162:
  v163 = *MEMORY[0x1E69E9840];
  return result;
}