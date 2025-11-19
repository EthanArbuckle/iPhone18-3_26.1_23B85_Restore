void __query_node_expand_block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (a3 <= 0x13)
  {
    v22 = v4;
    v23 = v5;
    if (!a3)
    {
      v8 = *(a1 + 48);
      v9 = strlen(v8);
      v10 = malloc_type_zone_malloc(queryZone, v9 + 1, 0xA4971684uLL);
      if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      memcpy(v10, v8, v9);
      *(v10 + v9) = 0;
      *(*(*(a1 + 32) + 8) + 24) = v10;
      *(*(a1 + 56) - *(a1 + 48) + *(*(*(a1 + 32) + 8) + 24) + 1) = 0;
    }

    v11 = *(a1 + 64);
    *buf = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __db_query_tree_apply_block_block_invoke;
    v19 = &unk_1E8198ED0;
    v20 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v11, buf, &__block_literal_global_25_15416);
    v13 = v12;
    *buf = 0;
    if (*(a1 + 72))
    {
      v14 = "*";
    }

    else
    {
      v14 = "";
    }

    asprintf(buf, "%s%s%s", *(*(*(a1 + 32) + 8) + 24), a4, v14);
    free(*(*(v13 + 16) + 72));
    *(*(v13 + 16) + 72) = *buf;
    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
    {
      ++sTotal_15332;
    }

    v15 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (!v15 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v21 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v21, 2u);
    }

    v15[24] = 1;
    *v15 = *(*(*(a1 + 40) + 8) + 24);
    *(v15 + 1) = v13;
    *(*(*(a1 + 40) + 8) + 24) = v15;
  }
}

void __query_node_expand_block_invoke_3(uint64_t a1, const char *a2, uint64_t a3, size_t *a4)
{
  if (a3 >= 2)
  {
    v36 = v7;
    v37 = v6;
    v38 = v4;
    v39 = v5;
    v9 = &qword_1EDD81000;
    if (*(a1 + 56) == 1)
    {
      v11 = a3;
      v12 = 0;
      v13 = 0;
      v30 = MEMORY[0x1E69E9820];
      do
      {
        v17 = *(a1 + 40);
        *buf = v30;
        v32 = 0x40000000;
        v33 = __db_query_tree_apply_block_block_invoke;
        v34 = &unk_1E8198ED0;
        v35 = &__block_literal_global_21_15415;
        db_query_tree_apply_block_with_meta(v17, buf, &__block_literal_global_25_15416);
        v16 = v18;
        free(*(v18[2] + 72));
        v20 = *a4++;
        v19 = v20;
        v21 = *(a1 + 48);
        if (*(a1 + 57) == 1 && v11 == 1)
        {
          if (*(v21 + v13 + v19) == 42)
          {
            v22 = v19 + 1;
          }

          else
          {
            v22 = v19;
          }
        }

        else
        {
          v22 = v19;
        }

        *(v16[2] + 72) = strndup((v21 + v13), v22);
        if (v12)
        {
          if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
          {
            ++sTotal_15332;
          }

          v14 = v9;
          v15 = malloc_type_zone_calloc(v9[58], 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v15 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          }

          *v15 = v12;
          v15[1] = v16;
          v16 = v15;
          *(v15 + 24) = 2;
          v9 = v14;
        }

        v13 += v19;
        v12 = v16;
        --v11;
      }

      while (v11);
    }

    else
    {
      v24 = *(a1 + 40);
      *buf = MEMORY[0x1E69E9820];
      v32 = 0x40000000;
      v33 = __db_query_tree_apply_block_block_invoke;
      v34 = &unk_1E8198ED0;
      v35 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v24, buf, &__block_literal_global_25_15416);
      v16 = v25;
      free(*(v25[2] + 72));
      v26 = strlen(a2);
      v27 = malloc_type_zone_malloc(queryZone, v26 + 1, 0xA4971684uLL);
      if (!v27 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      memcpy(v27, a2, v26);
      *(v27 + v26) = 0;
      *(v16[2] + 72) = v27;
    }

    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
    {
      ++sTotal_15332;
    }

    v28 = malloc_type_zone_calloc(v9[58], 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (!v28 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    v28[24] = 1;
    v29 = *(*(*(a1 + 32) + 8) + 24);
    if (!v29)
    {
      v29 = *(a1 + 40);
    }

    *v28 = v29;
    *(v28 + 1) = v16;
    *(*(*(a1 + 32) + 8) + 24) = v28;
  }
}

const __CFArray *__db_make_query_node_with_ann_block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if (CFArrayGetCount(result) <= a3)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), a3);
    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    v9 = *(a2 + 60) & 0xFFFFFFF3 | (4 * (*(a1 + 48) & 3));
    *(a2 + 60) = v9;
    v10 = v9 & 0xFFFFFFFC | *(a1 + 52) & 3;
    *(a2 + 60) = v10;
    *(a2 + 60) = v10 & 0x1FFFFFF | (*(a1 + 56) << 25);
    v11 = *(a1 + 52);
    v12 = -1;
    if (v11 <= 2)
    {
      v13 = *(a1 + 48);
      if (v13 <= 2)
      {
        v12 = (vector_dimension_vec_sizes_15424[v11] * vector_size_elem_sizes_15423[v13]);
      }
    }

    if (*(a1 + 40) == -1)
    {
      return 0;
    }

    else
    {
      v14 = malloc_type_malloc(v12, 0x81A54655uLL);
      *(a2 + 296) = v14;
      *(a2 + 160) |= 0x10000u;
      memcpy(v14, BytePtr, v12);
      return 1;
    }
  }

  return result;
}

uint64_t parse_comma(char *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = a1 + 1;
  v5 = MEMORY[0x1E69E9830];
  while (1)
  {
    if (v2 < 0)
    {
      if (!__maskrune(v2, 0x4000uLL))
      {
        break;
      }

      goto LABEL_4;
    }

    if ((*(v5 + 4 * v2 + 60) & 0x4000) == 0)
    {
      break;
    }

LABEL_4:
    v6 = *v4++;
    v2 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (*(v4 - 1) != 44)
  {
    return 0;
  }

  while (1)
  {
    v8 = v4;
    v9 = *v4;
    if (!*v4)
    {
      break;
    }

    if ((v9 & 0x80000000) != 0)
    {
      ++v4;
      if (!__maskrune(v9, 0x4000uLL))
      {
        break;
      }
    }

    else
    {
      ++v4;
      if ((*(v5 + 4 * v9 + 60) & 0x4000) == 0)
      {
        break;
      }
    }
  }

  *a2 = v8;
  return 1;
}

_BYTE *parse_whitespace(_BYTE *a1)
{
  v1 = a1;
  v2 = *a1;
  if (*a1)
  {
    v3 = MEMORY[0x1E69E9830];
    do
    {
      if (v2 < 0)
      {
        if (!__maskrune(v2, 0x4000uLL))
        {
          return v1;
        }
      }

      else if ((*(v3 + 4 * v2 + 60) & 0x4000) == 0)
      {
        return v1;
      }

      v4 = *++v1;
      v2 = v4;
    }

    while (v4);
  }

  return v1;
}

void get_proximities(uint64_t a1, char *a2, char **a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __get_proximities_block_invoke;
  v10[3] = &unk_1E81992A8;
  v10[4] = &v11;
  v6 = _process_proximities(a2, v10);
  *(a1 + 96) = 0;
  v7 = v12[3];
  if (v7)
  {
    v8 = malloc_type_zone_malloc(queryZone, 4 * v7, 0xA4971684uLL);
    if (v8)
    {
      *(a1 + 88) = v8;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 0x40000000;
      v9[2] = __get_proximities_block_invoke_2;
      v9[3] = &__block_descriptor_tmp_168_15562;
      v9[4] = a1;
      _process_proximities(a2, v9);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(a1 + 88) = 0;
    }
  }

  *a3 = v6;
  _Block_object_dispose(&v11, 8);
}

uint64_t __get_wildcard_limit_block_invoke(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  if (!v3)
  {
    *(*(result + 40) + 60) = a2;
  }

  return result;
}

char *_process_proximities(char *a1, uint64_t a2)
{
  v2 = a1;
  if (*a1 == 40)
  {
    v4 = a1 + 1;
    v5 = MEMORY[0x1E69E9830];
    while (1)
    {
      v2 = v4;
      v7 = *v4;
      if (!*v4)
      {
        break;
      }

      if ((v7 & 0x80000000) != 0)
      {
        v6 = __maskrune(v7, 0x4000uLL);
        v4 = v2 + 1;
        if (!v6)
        {
          break;
        }
      }

      else
      {
        ++v4;
        if ((*(v5 + 4 * v7 + 60) & 0x4000) == 0)
        {
          break;
        }
      }
    }

    __endptr = v2;
LABEL_10:
    while (2)
    {
      v8 = *v2;
      if (!*v2)
      {
        return v2;
      }

      if (v8 == 41)
      {
        return ++v2;
      }

      do
      {
        if ((v8 & 0x80) != 0)
        {
          if (!__maskrune(v8, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v5 + 4 * v8 + 60) & 0x4000) == 0)
        {
          break;
        }

        v9 = *++v2;
        LOBYTE(v8) = v9;
      }

      while (v9);
      __endptr = v2;
      if ((*v2 - 48) > 9)
      {
        v11 = *v2;
        if (*v2)
        {
          do
          {
LABEL_21:
            if (v11 < 0)
            {
              if (!__maskrune(v11, 0x4000uLL))
              {
LABEL_8:
                __endptr = v2;
                if (*v2 != 41)
                {
                  break;
                }

                goto LABEL_10;
              }
            }

            else if ((*(v5 + 4 * v11 + 60) & 0x4000) == 0)
            {
              goto LABEL_8;
            }

            v12 = *++v2;
            v11 = v12;
          }

          while (v12);
        }
      }

      else
      {
        v10 = strtol(v2, &__endptr, 0);
        (*(a2 + 16))(a2, v10);
        v2 = __endptr;
        v11 = *__endptr;
        if (*__endptr)
        {
          goto LABEL_21;
        }
      }

      __endptr = ++v2;
      continue;
    }
  }

  return v2;
}

uint64_t __get_weights_block_invoke(uint64_t result, float a2)
{
  v2 = *(*(*(result + 32) + 8) + 24);
  if (v2 == 1)
  {
    if (a2 == -1.0)
    {
      a2 = 1.1755e-38;
    }

    *(*(result + 40) + 56) = a2;
  }

  else if (!v2)
  {
    if (a2 == -1.0)
    {
      a2 = 1.1755e-38;
    }

    *(*(result + 40) + 52) = a2;
  }

  ++*(*(*(result + 32) + 8) + 24);
  return result;
}

uint64_t __get_proximities_block_invoke_2(uint64_t result, int a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 96) = v4 + 1;
  *(v3 + 4 * v4) = a2;
  return result;
}

void db_dump_pommes_query_node_with_prefix(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, int a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (db_dump_pommes_query_node_with_prefix_onceToken == -1)
  {
    if (!a6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = a1;
    v11 = a2;
    v12 = a5;
    v13 = a4;
    v14 = a3;
    dispatch_once(&db_dump_pommes_query_node_with_prefix_onceToken, &__block_literal_global_67_15609);
    a1 = v10;
    a3 = v14;
    a4 = v13;
    a2 = v11;
    a5 = v12;
    if (!a6)
    {
      goto LABEL_5;
    }
  }

  if (db_dump_pommes_query_node_with_prefix_isSearchToolDebugMode == 1)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *__str = 0u;
    v24 = 0u;
    v6 = a2;
    v7 = a5;
    v8 = a4;
    snprintf(__str, 0x64uLL, "[qid=%llu][%s]", a1, a3);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *v16 = 0u;
    v17 = 0u;
    snprintf(v16, 0x64uLL, "%s[POMMES]", v8);
    db_dump_query_node_with_prefix(v16, v6, -1, v7, __str);
  }

LABEL_5:
  v9 = *MEMORY[0x1E69E9840];
}

void db_dump_query_node_with_prefix(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  *__str = 0u;
  if (a2)
  {
    if (a3 < 0)
    {
      snprintf(__str, 0x200uLL, "%s[%p][%p]%s");
    }

    else
    {
      snprintf(__str, 0x200uLL, "%s[%p{%d}][%p]%s");
    }
  }

  else if (a5)
  {
    snprintf(__str, 0x200uLL, "%s[%p]%s");
  }

  else
  {
    snprintf(__str, 0x200uLL, "[%p]%s");
  }

  os_unfair_lock_lock(&db_dump_query_node_with_prefix_s_dump_node_lock);
  v6 = *__error();
  v7 = _SILogForLogForCategory(1);
  v8 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 136315138;
    v14 = __str;
    _os_log_impl(&dword_1C278D000, v7, v8, "%s[begin]-------------------------------------------------------------------------------------------", buf, 0xCu);
  }

  *__error() = v6;
  if (a4)
  {
    bzero(buf, 0x800uLL);
    dump_tree_with_prefix(a4, 0, buf, __str);
  }

  v9 = *__error();
  v10 = _SILogForLogForCategory(1);
  v11 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 136315138;
    v14 = __str;
    _os_log_impl(&dword_1C278D000, v10, v11, "%s[end]-------------------------------------------------------------------------------------------", buf, 0xCu);
  }

  *__error() = v9;
  os_unfair_lock_unlock(&db_dump_query_node_with_prefix_s_dump_node_lock);
  v12 = *MEMORY[0x1E69E9840];
}

int *dump_tree_with_prefix(uint64_t a1, int a2, char *a3, const char *a4)
{
  v108 = *MEMORY[0x1E69E9840];
  do
  {
    if (*a1)
    {
      dump_tree_with_prefix(*a1, (a2 + 1), a3, a4);
    }

    *a3 = 0;
    v9 = snprintf(a3, 0x800uLL, "%s", a4);
    v10 = v9;
    if (a2 >= 32)
    {
      v11 = 32;
    }

    else
    {
      v11 = a2;
    }

    v12 = v11;
    v13 = v9 + v11;
    if (v13 <= 2046)
    {
      if (v9 >= 2048)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9;
      }

      memset(&a3[v14], 32, v12);
      a3[v13] = 0;
      v10 = v13 + snprintf(&a3[v13], 2048 - v13, "(%d) ", a2);
    }

    v15 = *(a1 + 48);
    if (v15 > 9)
    {
      if (*(a1 + 48) > 0xFu)
      {
        if (v15 == 32)
        {
          if (v10 >= 2048)
          {
            v40 = 0;
          }

          else
          {
            v40 = v10;
          }

          if (v10 >= 2048)
          {
            v41 = 0;
          }

          else
          {
            v41 = 2048 - v10;
          }

          snprintf(&a3[v40], v41, "ALWAYS TRUE node        @0x%p");
          goto LABEL_171;
        }

        if (v15 == 16)
        {
          if (v10 >= 2048)
          {
            v20 = 0;
          }

          else
          {
            v20 = v10;
          }

          if (v10 >= 2048)
          {
            v21 = 0;
          }

          else
          {
            v21 = 2048 - v10;
          }

          snprintf(&a3[v20], v21, "ALWAYS FALSE node        @0x%p");
          goto LABEL_171;
        }

LABEL_95:
        if (v10 >= 2048)
        {
          v42 = 0;
        }

        else
        {
          v42 = v10;
        }

        if (v10 >= 2048)
        {
          v43 = 0;
        }

        else
        {
          v43 = 2048 - v10;
        }

        v44 = *(a1 + 16);
        v88 = *(a1 + 48);
        snprintf(&a3[v42], v43, "we got garbage for node @ 0x%p (type %d qp 0x%p)");
        goto LABEL_171;
      }

      if (v15 == 10)
      {
        if (v10 >= 2048)
        {
          v38 = 0;
        }

        else
        {
          v38 = v10;
        }

        if (v10 >= 2048)
        {
          v39 = 0;
        }

        else
        {
          v39 = 2048 - v10;
        }

        snprintf(&a3[v38], v39, "NAND node    @ 0x%p");
        goto LABEL_171;
      }

      if (v15 != 12)
      {
        goto LABEL_95;
      }

LABEL_46:
      v22 = *(a1 + 16);
      v23 = *(v22 + 6);
      if ((v23 - 11) < 2)
      {
        if (v10 >= 2048)
        {
          v45 = 0;
        }

        else
        {
          v45 = v10;
        }

        if (v10 >= 2048)
        {
          v46 = 0;
        }

        else
        {
          v46 = 2048 - v10;
        }

        v47 = *(v22 + 4);
        v48 = *v22;
        v49 = *(v22 + 21);
        v96 = *v49;
        v100 = v49[1];
        v35 = snprintf(&a3[v45], v46, "factor node @ 0x%p flags 0x%llx value <%s%s(%s,%s,%s)>", a1, v47);
      }

      else if ((v23 - 13) >= 2)
      {
        if (v23 == 15)
        {
          if (v10 >= 2048)
          {
            v50 = 0;
          }

          else
          {
            v50 = v10;
          }

          if (v10 >= 2048)
          {
            v51 = 0;
          }

          else
          {
            v51 = 2048 - v10;
          }

          v26 = (v15 & 8) == 0;
          v52 = "!";
          if (v26)
          {
            v52 = "";
          }

          v53 = *v22;
          v54 = *(v22 + 15);
          v55 = off_1E8199358[(v54 >> 2) & 3];
          v56 = v22[16];
          v101 = vector_dimension_vec_sizes_15424[v54 & 3];
          v35 = snprintf(&a3[v50], v51, "factor node @ 0x%p flags 0x%llx value <%s%s(%s,%s,%u,%d,%.3f,%s)>", a1, *(v22 + 4), v52);
        }

        else
        {
          v57 = *(v22 + 4);
          if ((v57 & 0x6000000) != 0)
          {
            if ((v57 & 0x2000000) != 0 && *(v22 + 11) <= 0)
            {
              if (v10 >= 2048)
              {
                v65 = 0;
              }

              else
              {
                v65 = v10;
              }

              if (v10 >= 2048)
              {
                v66 = 0;
              }

              else
              {
                v66 = 2048 - v10;
              }

              if ((v23 - 9) >= 0xFFFFFFF8)
              {
                v67 = off_1E81991C8[v23];
              }

              v98 = *(v22 + 9);
              v93 = *v22;
              v35 = snprintf(&a3[v65], v66, "factor node @ 0x%p flags 0x%llx value <%s%s[] %s %s>", a1);
            }

            else
            {
              if (v10 >= 2048)
              {
                v58 = 0;
              }

              else
              {
                v58 = v10;
              }

              if (v10 >= 2048)
              {
                v59 = 0;
              }

              else
              {
                v59 = 2048 - v10;
              }

              v26 = (v15 & 8) == 0;
              v60 = "!";
              if (v26)
              {
                v60 = "";
              }

              if ((v23 - 9) >= 0xFFFFFFF8)
              {
                v61 = off_1E81991C8[v23];
              }

              v103 = *(v22 + 9);
              v91 = *v22;
              v35 = snprintf(&a3[v58], v59, "factor node @ 0x%p flags 0x%llx value <%s%s[%s%d] %s %s>", a1, v57, v60);
            }
          }

          else
          {
            if (v10 >= 2048)
            {
              v62 = 0;
            }

            else
            {
              v62 = v10;
            }

            if (v10 >= 2048)
            {
              v63 = 0;
            }

            else
            {
              v63 = 2048 - v10;
            }

            if ((v23 - 9) >= 0xFFFFFFF8)
            {
              v64 = off_1E81991C8[v23];
            }

            v97 = *(v22 + 9);
            v92 = *v22;
            v35 = snprintf(&a3[v62], v63, "factor node @ 0x%p flags 0x%llx value <%s%s %s %s>", a1);
          }
        }
      }

      else
      {
        if (v10 >= 2048)
        {
          v24 = 0;
        }

        else
        {
          v24 = v10;
        }

        if (v10 >= 2048)
        {
          v25 = 0;
        }

        else
        {
          v25 = 2048 - v10;
        }

        v26 = (v15 & 8) == 0;
        v27 = "!";
        if (v26)
        {
          v27 = "";
        }

        v26 = v23 == 13;
        v28 = "OUT_FIELD_MATCH";
        if (v26)
        {
          v28 = "FIELD_MATCH";
        }

        v10 += snprintf(&a3[v24], v25, "factor node @ 0x%p flags 0x%llx value <%s%s(%s", a1, *(v22 + 4), v27, v28, *v22);
        v29 = *(a1 + 16);
        if (*(v29 + 40) >= 1)
        {
          v30 = 0;
          do
          {
            if (v10 >= 2048)
            {
              v31 = 0;
            }

            else
            {
              v31 = v10;
            }

            if (v10 >= 2048)
            {
              v32 = 0;
            }

            else
            {
              v32 = 2048 - v10;
            }

            v10 += snprintf(&a3[v31], v32, ",%s", *(*(v29 + 168) + 8 * v30++));
            v29 = *(a1 + 16);
          }

          while (v30 < *(v29 + 40));
        }

        if (v10 >= 2048)
        {
          v33 = 0;
        }

        else
        {
          v33 = v10;
        }

        if (v10 >= 2048)
        {
          v34 = 0;
        }

        else
        {
          v34 = 2048 - v10;
        }

        v35 = snprintf(&a3[v33], v34, ")>", v86, v87, v89, v90, v94, v95, v99, v102, v104, v105);
      }

      v68 = v10 + v35;
      v69 = *(a1 + 16);
      v71 = *(v69 + 52);
      v70 = *(v69 + 56);
      if (v71 != 0.0 || v70 != 0.0)
      {
        if (v68 >= 2048)
        {
          v72 = 0;
        }

        else
        {
          v72 = v68;
        }

        if (v68 >= 2048)
        {
          v73 = 0;
        }

        else
        {
          v73 = 2048 - v68;
        }

        v74 = v71 <= 0.0;
        v75 = v71 > 1.1755e-38;
        v76 = v71;
        if (!v74 && !v75)
        {
          v76 = -1.0;
        }

        v77 = v70 <= 0.0;
        v78 = v70 > 1.1755e-38;
        v79 = v70;
        if (!v77 && !v78)
        {
          v79 = -1.0;
        }

        v68 += snprintf(&a3[v72], v73, " W(%0.10f),fW(%0.10f)", v76, v79);
        v69 = *(a1 + 16);
      }

      if (*(v69 + 60))
      {
        if (v68 >= 2048)
        {
          v80 = 0;
        }

        else
        {
          v80 = v68;
        }

        if (v68 >= 2048)
        {
          v81 = 0;
        }

        else
        {
          v81 = 2048 - v68;
        }

        snprintf(&a3[v80], v81, " D(%u)");
      }

      goto LABEL_171;
    }

    if (*(a1 + 48) > 3u)
    {
      if (v15 != 4)
      {
        if (v15 == 9)
        {
          if (v10 >= 2048)
          {
            v18 = 0;
          }

          else
          {
            v18 = v10;
          }

          if (v10 >= 2048)
          {
            v19 = 0;
          }

          else
          {
            v19 = 2048 - v10;
          }

          snprintf(&a3[v18], v19, "NOR node     @ 0x%p");
          goto LABEL_171;
        }

        goto LABEL_95;
      }

      goto LABEL_46;
    }

    if (v15 == 1)
    {
      if (v10 >= 2048)
      {
        v36 = 0;
      }

      else
      {
        v36 = v10;
      }

      if (v10 >= 2048)
      {
        v37 = 0;
      }

      else
      {
        v37 = 2048 - v10;
      }

      snprintf(&a3[v36], v37, "OR node     @ 0x%p");
      goto LABEL_171;
    }

    if (v15 != 2)
    {
      goto LABEL_95;
    }

    if (v10 >= 2048)
    {
      v16 = 0;
    }

    else
    {
      v16 = v10;
    }

    if (v10 >= 2048)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2048 - v10;
    }

    snprintf(&a3[v16], v17, "AND node    @ 0x%p");
LABEL_171:
    v82 = *__error();
    v83 = _SILogForLogForCategory(1);
    v84 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v83, v84))
    {
      *buf = 136315138;
      v107 = a3;
      _os_log_impl(&dword_1C278D000, v83, v84, "%s", buf, 0xCu);
    }

    result = __error();
    *result = v82;
    a1 = *(a1 + 8);
    ++a2;
  }

  while (a1);
  v85 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __db_dump_pommes_query_node_with_prefix_block_invoke()
{
  result = _os_feature_enabled_impl();
  db_dump_pommes_query_node_with_prefix_isSearchToolDebugMode = result;
  return result;
}

size_t render_field_name(uint64_t a1, void **a2, uint64_t a3, size_t *a4, _DWORD *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = strlen(*a1);
  v12 = v11 + a3;
  v13 = *a4;
  if (v11 + a3 <= *a4)
  {
    v14 = *a2;
  }

  else
  {
    do
    {
      v13 *= 2;
    }

    while (v12 > v13);
    *a4 = v13;
    v14 = malloc_type_realloc(*a2, v13, 0xDAC6A741uLL);
    *a2 = v14;
  }

  memcpy(&v14[a3], v10, v11);
  v15 = *(a1 + 32);
  if ((v15 & 0x800000) == 0 && (v15 & 0x6000000) != 0)
  {
    v16 = v12 + 1;
    v17 = *a4;
    if (v12 + 1 <= *a4)
    {
      v18 = *a2;
    }

    else
    {
      do
      {
        v17 *= 2;
      }

      while (v16 > v17);
      *a4 = v17;
      v18 = malloc_type_realloc(*a2, v17, 0xDAC6A741uLL);
      *a2 = v18;
    }

    *(v18 + v12) = 91;
    if ((*(a1 + 35) & 2) != 0)
    {
      v20 = v12 + 2;
      v21 = *a4;
      if (v20 <= *a4)
      {
        v22 = *a2;
      }

      else
      {
        do
        {
          v21 *= 2;
        }

        while (v20 > v21);
        *a4 = v21;
        v22 = malloc_type_realloc(*a2, v21, 0xDAC6A741uLL);
        *a2 = v22;
      }

      *(v22 + v16) = 36;
      v23 = *(a1 + 32);
      *__str = 0u;
      v35 = 0u;
      v19 = *(a1 + 44);
      if (a5 && (v23 & 0x2000000) != 0)
      {
        v24 = *a5;
        if (v24 >= 1)
        {
          for (i = 0; i != v24; ++i)
          {
            if (a5[i + 1] == v19)
            {
              v19 = i;
              goto LABEL_26;
            }
          }

          if (v24 > 29)
          {
            goto LABEL_26;
          }
        }

        a5[v24 + 1] = v19;
        v19 = (*a5)++;
      }
    }

    else
    {
      *__str = 0u;
      v35 = 0u;
      v19 = *(a1 + 44);
      v20 = v12 + 1;
    }

LABEL_26:
    snprintf(__str, 0x20uLL, "%d", v19);
    v26 = strlen(__str);
    v27 = v26 + v20;
    v28 = *a4;
    if (v26 + v20 <= *a4)
    {
      v29 = *a2;
    }

    else
    {
      do
      {
        v28 *= 2;
      }

      while (v27 > v28);
      *a4 = v28;
      v29 = malloc_type_realloc(*a2, v28, 0xDAC6A741uLL);
      *a2 = v29;
    }

    memcpy(&v29[v20], __str, v26);
    v12 = v27 + 1;
    v30 = *a4;
    if (v27 + 1 <= *a4)
    {
      v31 = *a2;
    }

    else
    {
      do
      {
        v30 *= 2;
      }

      while (v12 > v30);
      *a4 = v30;
      v31 = malloc_type_realloc(*a2, v30, 0xDAC6A741uLL);
      *a2 = v31;
    }

    *(v31 + v27) = 93;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v12;
}

size_t render_string_protecting_char(const char *a1, void **a2, uint64_t a3, size_t *a4)
{
  v7 = a1;
  v8 = strlen(a1);
  v9 = 0;
  for (i = v7; ; i = v11 + 1)
  {
    v11 = strchr(i, 34);
    if (!v11)
    {
      break;
    }

    ++v9;
  }

  v12 = v8 + a3;
  v13 = v8 + a3 + v9;
  v14 = *a4;
  if (v13 > *a4)
  {
    do
    {
      v14 *= 2;
    }

    while (v13 > v14);
    *a4 = v14;
    *a2 = malloc_type_realloc(*a2, v14, 0x705F6673uLL);
  }

  if (v9)
  {
    while (1)
    {
      v15 = strchr(v7, 34);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      v17 = v15 - v7;
      memcpy(*a2 + a3, v7, v15 - v7);
      v18 = v17 + a3;
      *(*a2 + v18) = 92;
      a3 += v17 + 2;
      *(*a2 + v18 + 1) = 34;
      v8 += ~v17;
      v7 = v16 + 1;
    }

    v12 = a3 + v8;
  }

  memcpy(*a2 + a3, v7, v8);
  return v12;
}

void **_db_render_query_tree(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v226 = v6;
  v240 = *MEMORY[0x1E69E9840];
  size = v3;
  if (!result)
  {
    goto LABEL_373;
  }

  v7 = *result;
  if (!*result)
  {
    result = 0;
    goto LABEL_373;
  }

  v8 = v4;
  v9 = v3;
  v10 = v2;
  if (v5)
  {
    v11 = v2;
    v12 = result;
    db_optimize_query_tree(result);
    v7 = *v12;
    v10 = v11;
  }

  if (v8)
  {
    v13 = strlen(v8);
    v14 = v13;
    if (v13 <= v9)
    {
      v15 = *v10;
    }

    else
    {
      do
      {
        v9 *= 2;
      }

      while (v13 > v9);
      size = v9;
      v15 = malloc_type_realloc(*v10, v9, 0xDAC6A741uLL);
      *v10 = v15;
    }

    memcpy(v15, v8, v14);
  }

  else
  {
    v14 = 0;
  }

  memset(v228, 0, 124);
  bzero(&v231, 0x3FF8uLL);
  v16 = 1024;
  v17 = 1;
  __ptr = v7;
  p_ptr = &__ptr;
  do
  {
    v20 = size;
    v21 = v17 - 1;
    v22 = &p_ptr[2 * v17 - 2];
    v23 = *(v22 + 5);
    if ((v23 & 2) != 0)
    {
      v29 = v14 + 1;
      if (v14 + 1 <= size)
      {
        v19 = *v10;
      }

      else
      {
        do
        {
          v20 *= 2;
        }

        while (v29 > v20);
        size = v20;
        v30 = p_ptr;
        v19 = malloc_type_realloc(*v10, v20, 0xDAC6A741uLL);
        p_ptr = v30;
        *v10 = v19;
      }

      *(v19 + v14) = 40;
      goto LABEL_16;
    }

    if ((v23 & 4) != 0)
    {
      v29 = v14 + 1;
      if (v14 + 1 <= size)
      {
        v32 = *v10;
      }

      else
      {
        do
        {
          v20 *= 2;
        }

        while (v29 > v20);
        size = v20;
        v31 = p_ptr;
        v32 = malloc_type_realloc(*v10, v20, 0xDAC6A741uLL);
        p_ptr = v31;
        *v10 = v32;
      }

      *(v32 + v14) = 41;
      goto LABEL_16;
    }

    v227 = v16;
    v24 = v10;
    v25 = *v22;
    v26 = *(*v22 + 48);
    v27 = v26 & 0xFFFFFFFFFFFFFFF7;
    if ((v26 & 0xFFFFFFF7) > 7)
    {
      v28 = 0;
      if (v23)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v28 = binding_str[v27];
      if (v23)
      {
        goto LABEL_37;
      }
    }

    v33 = *(v22 + 4);
    v34 = *(v22 + 3);
    if (v25[1] || *v25)
    {
      v35 = 3;
      if (v28 < v33)
      {
        v35 = 5;
      }

      v224 = v34;
      if (v35 + v21 <= v227)
      {
        v41 = v227;
        if (v28 >= v33)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (p_ptr == &__ptr)
        {
          v50 = malloc_type_malloc(32 * v227, 0x10200403A5D3213uLL);
          memcpy(v50, &__ptr, 16 * (v17 - 1));
          p_ptr = v50;
          v21 = v17 - 1;
        }

        else
        {
          p_ptr = reallocf(p_ptr, 32 * v227);
        }

        v41 = 2 * v227;
        v34 = v224;
        if (v28 >= v33)
        {
LABEL_68:
          if ((v26 & 8) != 0 && (v27 - 1) <= 1)
          {
            v52 = v14 + 1;
            v53 = size;
            v10 = v24;
            v225 = v41;
            if (v14 + 1 <= size)
            {
              v54 = p_ptr;
              v55 = *v24;
            }

            else
            {
              do
              {
                v53 *= 2;
              }

              while (v52 > v53);
              v54 = p_ptr;
              size = v53;
              v55 = malloc_type_realloc(*v24, v53, 0xDAC6A741uLL);
              *v24 = v55;
            }

            *(v55 + v14) = 33;
            v14 += 2;
            v61 = size;
            if (v14 <= size)
            {
              v62 = *v24;
            }

            else
            {
              do
              {
                v61 *= 2;
              }

              while (v14 > v61);
              size = v61;
              v62 = malloc_type_realloc(*v24, v61, 0xDAC6A741uLL);
              *v24 = v62;
            }

            p_ptr = v54;
            v41 = v225;
            v34 = v224;
            *(v62 + v52) = 40;
            v63 = &v54[2 * v21];
            *v63 = 0;
            *(v63 + 2) = 0x40000;
            ++v21;
            v56 = v25[1];
            if (!v56)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v10 = v24;
            v56 = v25[1];
            if (!v56)
            {
LABEL_75:
              v58 = &p_ptr[2 * v21];
              *v58 = v25;
              *(v58 + 4) = v33;
              *(v58 + 5) = v23 | 1;
              *(v58 + 3) = v34;
              if (*v25)
              {
                v59 = &p_ptr[2 * v21 + 2];
                *v59 = *v25;
                *(v59 + 4) = v28;
                *(v59 + 5) = 0;
                v21 += 2;
                if (v28 < v33)
                {
                  goto LABEL_77;
                }
              }

              else
              {
                ++v21;
                if (v28 < v33)
                {
LABEL_77:
                  v60 = &p_ptr[2 * v21];
                  *v60 = 0;
                  *(v60 + 2) = 0x20000;
                  ++v21;
                  v16 = v41;
                  goto LABEL_17;
                }
              }

              v16 = v41;
              goto LABEL_17;
            }
          }

          v57 = &p_ptr[2 * v21];
          *v57 = v56;
          *(v57 + 4) = v28;
          *(v57 + 5) = 0;
          ++v21;
          goto LABEL_75;
        }
      }

      v51 = &p_ptr[2 * v21];
      *v51 = 0;
      *(v51 + 2) = 0x40000;
      v21 = v17;
      goto LABEL_68;
    }

LABEL_37:
    v36 = v26 & 0xFFF7;
    if (v36 <= 3)
    {
      v10 = v24;
      if (v36 == 1)
      {
        v29 = v14 + 2;
        v16 = v227;
        if (v14 + 2 <= size)
        {
          v45 = *v24;
        }

        else
        {
          do
          {
            v20 *= 2;
          }

          while (v29 > v20);
          size = v20;
          v44 = p_ptr;
          v45 = malloc_type_realloc(*v24, v20, 0xDAC6A741uLL);
          p_ptr = v44;
          *v24 = v45;
        }

        *&v45[v14] = 31868;
      }

      else
      {
        v16 = v227;
        if (v36 != 2)
        {
          goto LABEL_52;
        }

        v29 = v14 + 2;
        if (v14 + 2 <= size)
        {
          v38 = *v24;
        }

        else
        {
          do
          {
            v20 *= 2;
          }

          while (v29 > v20);
          size = v20;
          v37 = p_ptr;
          v38 = malloc_type_realloc(*v24, v20, 0xDAC6A741uLL);
          p_ptr = v37;
          *v24 = v38;
        }

        *&v38[v14] = 9766;
      }

      goto LABEL_16;
    }

    v10 = v24;
    if (v36 != 4)
    {
      v16 = v227;
      if (v36 == 32)
      {
        v29 = v14 + 4;
        if (v14 + 4 <= size)
        {
          v40 = *v24;
        }

        else
        {
          do
          {
            v20 *= 2;
          }

          while (v29 > v20);
          size = v20;
          v39 = p_ptr;
          v40 = malloc_type_realloc(*v24, v20, 0xDAC6A741uLL);
          p_ptr = v39;
          *v24 = v40;
        }

        *&v40[v14] = 1702195828;
        goto LABEL_16;
      }

LABEL_52:
      v29 = v14 + 5;
      if (v14 + 5 <= size)
      {
        v43 = *v10;
      }

      else
      {
        do
        {
          v20 *= 2;
        }

        while (v29 > v20);
        size = v20;
        v42 = p_ptr;
        v43 = malloc_type_realloc(*v10, v20, 0xDAC6A741uLL);
        p_ptr = v42;
        *v10 = v43;
      }

      v64 = &v43[v14];
      v64[4] = 101;
      *v64 = 1936482662;
LABEL_16:
      v14 = v29;
      goto LABEL_17;
    }

    v46 = v25[2];
    v47 = *(v46 + 24);
    if (v47 <= 12)
    {
      if (v47 != 11)
      {
        if (v47 != 12)
        {
LABEL_103:
          v223 = v17 - 1;
          v69 = p_ptr;
          v70 = render_field_name(v46, v24, v14, &size, v228);
          v71 = *(v46 + 24);
          v72 = "bad op";
          if ((v71 - 9) >= 0xFFFFFFF8)
          {
            v72 = off_1E81991C8[v71];
          }

          v73 = strlen(v72);
          v74 = v73 + v70;
          v75 = size;
          if (v73 + v70 <= size)
          {
            v76 = *v24;
          }

          else
          {
            do
            {
              v75 *= 2;
            }

            while (v74 > v75);
            size = v75;
            v76 = malloc_type_realloc(*v24, v75, 0xDAC6A741uLL);
            *v24 = v76;
          }

          memcpy(&v76[v70], v72, v73);
          v141 = v74 + 1;
          v142 = size;
          if (v74 + 1 <= size)
          {
            v143 = *v24;
          }

          else
          {
            do
            {
              v142 *= 2;
            }

            while (v141 > v142);
            size = v142;
            v143 = malloc_type_realloc(*v24, v142, 0xDAC6A741uLL);
            *v24 = v143;
          }

          v16 = v227;
          *(v143 + v74) = 34;
          if (v226)
          {
            v144 = v74 + 4;
            v145 = size;
            if (v74 + 4 <= size)
            {
              v146 = *v24;
            }

            else
            {
              do
              {
                v145 *= 2;
              }

              while (v144 > v145);
              size = v145;
              v146 = malloc_type_realloc(*v24, v145, 0xDAC6A741uLL);
              *v24 = v146;
            }

            v150 = &v146[v141];
            v150[2] = 46;
            *v150 = 11822;
          }

          else
          {
            v144 = render_string_protecting_char(*(v46 + 72), v24, v74 + 1, &size);
          }

          v14 = v144 + 1;
          v151 = size;
          if (v144 + 1 <= size)
          {
            v152 = *v24;
          }

          else
          {
            do
            {
              v151 *= 2;
            }

            while (v14 > v151);
            size = v151;
            v152 = malloc_type_realloc(*v24, v151, 0xDAC6A741uLL);
            *v24 = v152;
          }

          p_ptr = v69;
          *(v152 + v144) = 34;
          v153 = *(v46 + 32);
          if ((v153 & 0x10) != 0)
          {
            v154 = size;
            if (v144 + 2 <= size)
            {
              v155 = *v24;
            }

            else
            {
              do
              {
                v154 *= 2;
              }

              while (v144 + 2 > v154);
              size = v154;
              v155 = malloc_type_realloc(*v24, v154, 0xDAC6A741uLL);
              p_ptr = v69;
              *v24 = v155;
            }

            *(v155 + v14) = 99;
            v153 = *(v46 + 32);
            v14 = v144 + 2;
            if ((v153 & 0x800000) != 0)
            {
              goto LABEL_243;
            }

LABEL_231:
            if ((v153 & 0x20) == 0)
            {
              goto LABEL_232;
            }

LABEL_252:
            v163 = size;
            if (v14 + 1 <= size)
            {
              v164 = *v24;
            }

            else
            {
              do
              {
                v163 *= 2;
              }

              while (v14 + 1 > v163);
              size = v163;
              v164 = malloc_type_realloc(*v24, v163, 0xDAC6A741uLL);
              p_ptr = v69;
              *v24 = v164;
            }

            *(v164 + v14) = 100;
            v153 = *(v46 + 32);
            ++v14;
            if ((v153 & 0x40) != 0)
            {
              goto LABEL_257;
            }

LABEL_233:
            if ((v153 & 2) == 0)
            {
              goto LABEL_234;
            }

LABEL_262:
            v167 = size;
            if (v14 + 1 <= size)
            {
              v168 = *v24;
            }

            else
            {
              do
              {
                v167 *= 2;
              }

              while (v14 + 1 > v167);
              size = v167;
              v168 = malloc_type_realloc(*v24, v167, 0xDAC6A741uLL);
              p_ptr = v69;
              *v24 = v168;
            }

            *(v168 + v14) = 114;
            v153 = *(v46 + 32);
            ++v14;
            if ((v153 & 4) != 0)
            {
              goto LABEL_267;
            }

LABEL_235:
            if ((v153 & 8) == 0)
            {
              goto LABEL_236;
            }

LABEL_272:
            v171 = size;
            if (v14 + 1 <= size)
            {
              v172 = *v24;
            }

            else
            {
              do
              {
                v171 *= 2;
              }

              while (v14 + 1 > v171);
              size = v171;
              v172 = malloc_type_realloc(*v24, v171, 0xDAC6A741uLL);
              p_ptr = v69;
              *v24 = v172;
            }

            *(v172 + v14++) = 106;
            if ((*(v46 + 32) & 0x1000000) == 0)
            {
LABEL_282:
              if (*(v46 + 52) != 0.0 || *(v46 + 56) != 0.0)
              {
                v238 = 0u;
                v239 = 0u;
                v236 = 0u;
                v237 = 0u;
                v234 = 0u;
                v235 = 0u;
                *__str = 0u;
                v233 = 0u;
                v175 = v14 + 2;
                v176 = size;
                if (v14 + 2 <= size)
                {
                  v177 = *v24;
                }

                else
                {
                  do
                  {
                    v176 *= 2;
                  }

                  while (v175 > v176);
                  size = v176;
                  v177 = malloc_type_realloc(*v24, v176, 0xDAC6A741uLL);
                  *v24 = v177;
                }

                *&v177[v14] = 10327;
                snprintf(__str, 0x80uLL, "%.6g", *(v46 + 52));
                v178 = strlen(__str);
                v179 = v178 + v175;
                v180 = size;
                if (v178 + v175 <= size)
                {
                  v181 = *v24;
                }

                else
                {
                  do
                  {
                    v180 *= 2;
                  }

                  while (v179 > v180);
                  size = v180;
                  v181 = malloc_type_realloc(*v24, v180, 0xDAC6A741uLL);
                  *v24 = v181;
                }

                memcpy(&v181[v175], __str, v178);
                if (*(v46 + 56) != 0.0)
                {
                  v182 = v179 + 1;
                  v183 = size;
                  if (v179 + 1 <= size)
                  {
                    v184 = *v24;
                  }

                  else
                  {
                    do
                    {
                      v183 *= 2;
                    }

                    while (v182 > v183);
                    size = v183;
                    v184 = malloc_type_realloc(*v24, v183, 0xDAC6A741uLL);
                    *v24 = v184;
                  }

                  *(v184 + v179) = 44;
                  snprintf(__str, 0x80uLL, "%.6g", *(v46 + 56));
                  v185 = strlen(__str);
                  v179 = v185 + v182;
                  v186 = size;
                  if (v185 + v182 <= size)
                  {
                    v187 = *v24;
                  }

                  else
                  {
                    do
                    {
                      v186 *= 2;
                    }

                    while (v179 > v186);
                    size = v186;
                    v187 = malloc_type_realloc(*v24, v186, 0xDAC6A741uLL);
                    *v24 = v187;
                  }

                  memcpy(&v187[v182], __str, v185);
                }

                v14 = v179 + 1;
                v188 = size;
                if (v179 + 1 <= size)
                {
                  v189 = *v24;
                }

                else
                {
                  do
                  {
                    v188 *= 2;
                  }

                  while (v14 > v188);
                  size = v188;
                  v189 = malloc_type_realloc(*v24, v188, 0xDAC6A741uLL);
                  *v24 = v189;
                }

                p_ptr = v69;
                *(v189 + v179) = 41;
              }

              if (*(v46 + 60))
              {
                v238 = 0u;
                v239 = 0u;
                v236 = 0u;
                v237 = 0u;
                v234 = 0u;
                v235 = 0u;
                *__str = 0u;
                v233 = 0u;
                v190 = v14 + 2;
                v191 = size;
                if (v14 + 2 <= size)
                {
                  v192 = *v24;
                }

                else
                {
                  do
                  {
                    v191 *= 2;
                  }

                  while (v190 > v191);
                  size = v191;
                  v192 = malloc_type_realloc(*v24, v191, 0xDAC6A741uLL);
                  *v24 = v192;
                }

                *&v192[v14] = 10316;
                snprintf(__str, 0x80uLL, "%u", *(v46 + 60));
                v193 = strlen(__str);
                v194 = v193 + v190;
                v195 = size;
                if (v193 + v190 <= size)
                {
                  v196 = *v24;
                }

                else
                {
                  do
                  {
                    v195 *= 2;
                  }

                  while (v194 > v195);
                  size = v195;
                  v196 = malloc_type_realloc(*v24, v195, 0xDAC6A741uLL);
                  *v24 = v196;
                }

                memcpy(&v196[v190], __str, v193);
                v14 = v194 + 1;
                v197 = size;
                if (v194 + 1 <= size)
                {
                  v198 = *v24;
                }

                else
                {
                  do
                  {
                    v197 *= 2;
                  }

                  while (v14 > v197);
                  size = v197;
                  v198 = malloc_type_realloc(*v24, v197, 0xDAC6A741uLL);
                  *v24 = v198;
                }

                p_ptr = v69;
                v16 = v227;
                *(v198 + v194) = 41;
              }

              v199 = (*(v46 + 32) >> 37) & 3;
              if (v199 > 1)
              {
                v200 = v14 + 1;
                if (v199 == 2)
                {
                  v201 = size;
                  if (v200 <= size)
                  {
                    v202 = *v24;
                  }

                  else
                  {
                    do
                    {
                      v201 *= 2;
                    }

                    while (v200 > v201);
                    size = v201;
                    v202 = malloc_type_realloc(*v24, v201, 0xDAC6A741uLL);
                    p_ptr = v69;
                    *v24 = v202;
                  }

                  v205 = "o";
                }

                else
                {
                  v204 = size;
                  if (v200 <= size)
                  {
                    v202 = *v24;
                  }

                  else
                  {
                    do
                    {
                      v204 *= 2;
                    }

                    while (v200 > v204);
                    size = v204;
                    v202 = malloc_type_realloc(*v24, v204, 0xDAC6A741uLL);
                    p_ptr = v69;
                    *v24 = v202;
                  }

                  v205 = "a";
                }
              }

              else
              {
                if (!v199)
                {
                  v21 = v17 - 1;
                  goto LABEL_17;
                }

                v200 = v14 + 1;
                v203 = size;
                if (v14 + 1 <= size)
                {
                  v202 = *v24;
                }

                else
                {
                  do
                  {
                    v203 *= 2;
                  }

                  while (v200 > v203);
                  size = v203;
                  v202 = malloc_type_realloc(*v24, v203, 0xDAC6A741uLL);
                  p_ptr = v69;
                  *v24 = v202;
                }

                v205 = "n";
              }

              *(v202 + v14) = *v205;
              if (!*(v46 + 96))
              {
                v14 = v200;
                v21 = v17 - 1;
                goto LABEL_17;
              }

              v234 = 0u;
              v235 = 0u;
              *__str = 0u;
              v233 = 0u;
              v206 = v200 + 1;
              v207 = size;
              if (v200 + 1 <= size)
              {
                v208 = *v24;
              }

              else
              {
                do
                {
                  v207 *= 2;
                }

                while (v206 > v207);
                size = v207;
                v208 = malloc_type_realloc(*v24, v207, 0xDAC6A741uLL);
                *v24 = v208;
              }

              *(v208 + v200) = 40;
              snprintf(__str, 0x40uLL, "%d", **(v46 + 88));
              v209 = strlen(__str);
              v80 = v209 + v206;
              v210 = size;
              if (v209 + v206 <= size)
              {
                v211 = *v24;
              }

              else
              {
                do
                {
                  v210 *= 2;
                }

                while (v80 > v210);
                size = v210;
                v211 = malloc_type_realloc(*v24, v210, 0xDAC6A741uLL);
                *v24 = v211;
              }

              memcpy(&v211[v206], __str, v209);
              if (*(v46 + 96) >= 2u)
              {
                v212 = 1;
                do
                {
                  v214 = v80 + 1;
                  v215 = size;
                  if (v80 + 1 <= size)
                  {
                    v216 = *v24;
                  }

                  else
                  {
                    do
                    {
                      v215 *= 2;
                    }

                    while (v214 > v215);
                    size = v215;
                    v216 = malloc_type_realloc(*v24, v215, 0xDAC6A741uLL);
                    *v24 = v216;
                  }

                  *(v216 + v80) = 44;
                  snprintf(__str, 0x40uLL, "%d", *(*(v46 + 88) + 4 * v212));
                  v217 = strlen(__str);
                  v80 = v217 + v214;
                  v218 = size;
                  if (v217 + v214 <= size)
                  {
                    v213 = *v24;
                  }

                  else
                  {
                    do
                    {
                      v218 *= 2;
                    }

                    while (v80 > v218);
                    size = v218;
                    v213 = malloc_type_realloc(*v24, v218, 0xDAC6A741uLL);
                    *v24 = v213;
                  }

                  memcpy(&v213[v214], __str, v217);
                  ++v212;
                }

                while (v212 < *(v46 + 96));
              }

              v14 = v80 + 1;
              v95 = size;
              if (v80 + 1 > size)
              {
                do
                {
                  v95 *= 2;
                }

                while (v14 > v95);
                goto LABEL_144;
              }

              goto LABEL_364;
            }
          }

          else
          {
            if ((v153 & 0x800000) == 0)
            {
              goto LABEL_231;
            }

LABEL_243:
            v156 = v14 + 1;
            v157 = size;
            if (v14 + 1 <= size)
            {
              v158 = *v24;
            }

            else
            {
              do
              {
                v157 *= 2;
              }

              while (v156 > v157);
              size = v157;
              v158 = malloc_type_realloc(*v24, v157, 0xDAC6A741uLL);
              *v24 = v158;
            }

            *(v158 + v14) = 102;
            v159 = *(v46 + 28);
            __str[0] = (v159 / 0x64u) | 0x30;
            __str[1] = (v159 / 0xAu - 10 * ((26 * (v159 / 0xAu)) >> 8)) | 0x30;
            *&__str[2] = (v159 % 0xAu) | 0x30;
            v160 = strlen(__str);
            v14 = v160 + v156;
            v161 = size;
            if (v160 + v156 <= size)
            {
              v162 = *v24;
            }

            else
            {
              do
              {
                v161 *= 2;
              }

              while (v14 > v161);
              size = v161;
              v162 = malloc_type_realloc(*v24, v161, 0xDAC6A741uLL);
              *v24 = v162;
            }

            memcpy(&v162[v156], __str, v160);
            v153 = *(v46 + 32);
            p_ptr = v69;
            if ((v153 & 0x20) != 0)
            {
              goto LABEL_252;
            }

LABEL_232:
            if ((v153 & 0x40) == 0)
            {
              goto LABEL_233;
            }

LABEL_257:
            v165 = size;
            if (v14 + 1 <= size)
            {
              v166 = *v24;
            }

            else
            {
              do
              {
                v165 *= 2;
              }

              while (v14 + 1 > v165);
              size = v165;
              v166 = malloc_type_realloc(*v24, v165, 0xDAC6A741uLL);
              p_ptr = v69;
              *v24 = v166;
            }

            *(v166 + v14) = 119;
            v153 = *(v46 + 32);
            ++v14;
            if ((v153 & 2) != 0)
            {
              goto LABEL_262;
            }

LABEL_234:
            if ((v153 & 4) == 0)
            {
              goto LABEL_235;
            }

LABEL_267:
            v169 = size;
            if (v14 + 1 <= size)
            {
              v170 = *v24;
            }

            else
            {
              do
              {
                v169 *= 2;
              }

              while (v14 + 1 > v169);
              size = v169;
              v170 = malloc_type_realloc(*v24, v169, 0xDAC6A741uLL);
              p_ptr = v69;
              *v24 = v170;
            }

            *(v170 + v14) = 116;
            v153 = *(v46 + 32);
            ++v14;
            if ((v153 & 8) != 0)
            {
              goto LABEL_272;
            }

LABEL_236:
            if ((v153 & 0x1000000) == 0)
            {
              goto LABEL_282;
            }
          }

          v173 = size;
          if (v14 + 1 <= size)
          {
            v174 = *v24;
          }

          else
          {
            do
            {
              v173 *= 2;
            }

            while (v14 + 1 > v173);
            size = v173;
            v174 = malloc_type_realloc(*v24, v173, 0xDAC6A741uLL);
            p_ptr = v69;
            *v24 = v174;
          }

          *(v174 + v14++) = 115;
          goto LABEL_282;
        }

        if (v14 + 1 <= size)
        {
          v66 = *v24;
        }

        else
        {
          do
          {
            v20 *= 2;
          }

          while (v14 + 1 > v20);
          size = v20;
          v65 = p_ptr;
          v66 = malloc_type_realloc(*v24, v20, 0xDAC6A741uLL);
          p_ptr = v65;
          *v24 = v66;
        }

        *(v66 + v14) = 33;
        v20 = size;
        ++v14;
      }

      if (v14 + 8 <= v20)
      {
        v120 = p_ptr;
        v121 = *v24;
      }

      else
      {
        do
        {
          v20 *= 2;
        }

        while (v14 + 8 > v20);
        v120 = p_ptr;
        size = v20;
        v121 = malloc_type_realloc(*v24, v20, 0xDAC6A741uLL);
        *v24 = v121;
      }

      *&v121[v14] = 0x2865676E61526E49;
      v122 = render_field_name(v46, v24, v14 + 8, &size, v228);
      v123 = v122 + 1;
      v124 = size;
      if (v122 + 1 <= size)
      {
        v125 = *v24;
      }

      else
      {
        do
        {
          v124 *= 2;
        }

        while (v123 > v124);
        size = v124;
        v125 = malloc_type_realloc(*v24, v124, 0xDAC6A741uLL);
        *v24 = v125;
      }

      *(v125 + v122) = 44;
      v126 = "...";
      if ((v226 & 1) == 0)
      {
        v126 = **(v46 + 168);
      }

      v127 = strlen(v126);
      v128 = v127 + v123;
      v129 = size;
      v16 = v227;
      if (v127 + v123 <= size)
      {
        v130 = *v24;
      }

      else
      {
        do
        {
          v129 *= 2;
        }

        while (v128 > v129);
        size = v129;
        v130 = malloc_type_realloc(*v24, v129, 0xDAC6A741uLL);
        *v24 = v130;
      }

      memcpy(&v130[v123], v126, v127);
      v131 = v128 + 1;
      v132 = size;
      if (v128 + 1 <= size)
      {
        v133 = *v24;
      }

      else
      {
        do
        {
          v132 *= 2;
        }

        while (v131 > v132);
        size = v132;
        v133 = malloc_type_realloc(*v24, v132, 0xDAC6A741uLL);
        *v24 = v133;
      }

      *(v133 + v128) = 44;
      v134 = "...";
      if ((v226 & 1) == 0)
      {
        v134 = *(*(v46 + 168) + 8);
      }

      v135 = strlen(v134);
      v136 = v135 + v131;
      v137 = size;
      if (v135 + v131 <= size)
      {
        v138 = *v24;
      }

      else
      {
        do
        {
          v137 *= 2;
        }

        while (v136 > v137);
        size = v137;
        v138 = malloc_type_realloc(*v24, v137, 0xDAC6A741uLL);
        *v24 = v138;
      }

      memcpy(&v138[v131], v134, v135);
      v14 = v136 + 1;
      v139 = size;
      if (v136 + 1 <= size)
      {
        v140 = *v24;
      }

      else
      {
        do
        {
          v139 *= 2;
        }

        while (v14 > v139);
        size = v139;
        v140 = malloc_type_realloc(*v24, v139, 0xDAC6A741uLL);
        *v24 = v140;
      }

      p_ptr = v120;
      *(v140 + v136) = 41;
    }

    else
    {
      if (v47 == 13)
      {
        goto LABEL_110;
      }

      if (v47 == 14)
      {
        if (v14 + 1 <= size)
        {
          v68 = *v24;
        }

        else
        {
          do
          {
            v20 *= 2;
          }

          while (v14 + 1 > v20);
          size = v20;
          v67 = p_ptr;
          v68 = malloc_type_realloc(*v24, v20, 0xDAC6A741uLL);
          p_ptr = v67;
          *v24 = v68;
        }

        *(v68 + v14) = 33;
        v20 = size;
        ++v14;
LABEL_110:
        v223 = v17 - 1;
        if (v14 + 11 <= v20)
        {
          v69 = p_ptr;
          v77 = *v24;
        }

        else
        {
          do
          {
            v20 *= 2;
          }

          while (v14 + 11 > v20);
          v69 = p_ptr;
          size = v20;
          v77 = malloc_type_realloc(*v24, v20, 0xDAC6A741uLL);
          *v24 = v77;
        }

        v78 = &v77[v14];
        *v78 = *"FieldMatch(";
        *(v78 + 7) = 677929844;
        v79 = render_field_name(v46, v24, v14 + 11, &size, v228);
        v80 = v79 + 1;
        v81 = size;
        if (v79 + 1 <= size)
        {
          v82 = *v24;
        }

        else
        {
          do
          {
            v81 *= 2;
          }

          while (v80 > v81);
          size = v81;
          v82 = malloc_type_realloc(*v24, v81, 0xDAC6A741uLL);
          *v24 = v82;
        }

        *(v82 + v79) = 44;
        if (*(v46 + 40) >= 1)
        {
          v83 = 0;
          do
          {
            if (v83)
            {
              v85 = size;
              if (v80 + 1 <= size)
              {
                v86 = *v24;
              }

              else
              {
                do
                {
                  v85 *= 2;
                }

                while (v80 + 1 > v85);
                size = v85;
                v86 = malloc_type_realloc(*v24, v85, 0xDAC6A741uLL);
                *v24 = v86;
              }

              *(v86 + v80++) = 44;
            }

            v87 = v80 + 1;
            v88 = size;
            if (v80 + 1 <= size)
            {
              v89 = *v24;
            }

            else
            {
              do
              {
                v88 *= 2;
              }

              while (v87 > v88);
              size = v88;
              v89 = malloc_type_realloc(*v24, v88, 0xDAC6A741uLL);
              *v24 = v89;
            }

            *(v89 + v80) = 34;
            if (v226)
            {
              v90 = v80 + 4;
              v91 = size;
              if (v80 + 4 <= size)
              {
                v92 = *v24;
              }

              else
              {
                do
                {
                  v91 *= 2;
                }

                while (v90 > v91);
                size = v91;
                v92 = malloc_type_realloc(*v24, v91, 0xDAC6A741uLL);
                *v24 = v92;
              }

              v93 = &v92[v87];
              v93[2] = 46;
              *v93 = 11822;
            }

            else
            {
              v90 = render_string_protecting_char(*(*(v46 + 168) + 8 * v83), v24, v80 + 1, &size);
            }

            v80 = v90 + 1;
            v94 = size;
            if (v90 + 1 <= size)
            {
              v84 = *v24;
            }

            else
            {
              do
              {
                v94 *= 2;
              }

              while (v80 > v94);
              size = v94;
              v84 = malloc_type_realloc(*v24, v94, 0xDAC6A741uLL);
              *v24 = v84;
            }

            *(v84 + v90) = 34;
            ++v83;
          }

          while (v83 < *(v46 + 40));
        }

        v14 = v80 + 1;
        v95 = size;
        if (v80 + 1 > size)
        {
          do
          {
            v95 *= 2;
          }

          while (v14 > v95);
LABEL_144:
          size = v95;
          v96 = malloc_type_realloc(*v24, v95, 0xDAC6A741uLL);
          *v24 = v96;
LABEL_365:
          p_ptr = v69;
          v16 = v227;
          *(v96 + v80) = 41;
          v21 = v223;
          goto LABEL_17;
        }

LABEL_364:
        v96 = *v24;
        goto LABEL_365;
      }

      if (v47 != 15)
      {
        goto LABEL_103;
      }

      v222 = v17 - 1;
      if (v14 + 9 <= size)
      {
        v48 = p_ptr;
        v49 = *v24;
      }

      else
      {
        do
        {
          v20 *= 2;
        }

        while (v14 + 9 > v20);
        v48 = p_ptr;
        size = v20;
        v49 = malloc_type_realloc(*v24, v20, 0xDAC6A741uLL);
        *v24 = v49;
      }

      v97 = &v49[v14];
      *v97 = *"aNN.data(";
      v97[8] = 40;
      v98 = render_field_name(v46, v24, v14 + 9, &size, v228);
      v99 = v98 + 3;
      v100 = size;
      if (v98 + 3 <= size)
      {
        v101 = *v24;
      }

      else
      {
        do
        {
          v100 *= 2;
        }

        while (v99 > v100);
        size = v100;
        v101 = malloc_type_realloc(*v24, v100, 0xDAC6A741uLL);
        *v24 = v101;
      }

      v102 = &v101[v98];
      v102[2] = 44;
      *v102 = 12332;
      v238 = 0u;
      v239 = 0u;
      v236 = 0u;
      v237 = 0u;
      v234 = 0u;
      v235 = 0u;
      *__str = 0u;
      v233 = 0u;
      snprintf(__str, 0x80uLL, "%u", (*(v46 + 60) >> 4) & 0xFFFFF);
      v103 = strlen(__str);
      v104 = v103 + v99;
      v105 = size;
      if (v103 + v99 <= size)
      {
        v106 = *v24;
      }

      else
      {
        do
        {
          v105 *= 2;
        }

        while (v104 > v105);
        size = v105;
        v106 = malloc_type_realloc(*v24, v105, 0xDAC6A741uLL);
        *v24 = v106;
      }

      memcpy(&v106[v99], __str, v103);
      v107 = v104 + 1;
      v108 = size;
      if (v104 + 1 <= size)
      {
        v109 = *v24;
      }

      else
      {
        do
        {
          v108 *= 2;
        }

        while (v107 > v108);
        size = v108;
        v109 = malloc_type_realloc(*v24, v108, 0xDAC6A741uLL);
        *v24 = v109;
      }

      *(v109 + v104) = 44;
      snprintf(__str, 0x80uLL, "%g", *(v46 + 64));
      v110 = strlen(__str);
      v111 = v110 + v107;
      v112 = size;
      if (v110 + v107 <= size)
      {
        v113 = *v24;
      }

      else
      {
        do
        {
          v112 *= 2;
        }

        while (v111 > v112);
        size = v112;
        v113 = malloc_type_realloc(*v24, v112, 0xDAC6A741uLL);
        *v24 = v113;
      }

      memcpy(&v113[v107], __str, v110);
      v114 = v111 + 1;
      v115 = size;
      if (v111 + 1 <= size)
      {
        v116 = *v24;
      }

      else
      {
        do
        {
          v115 *= 2;
        }

        while (v114 > v115);
        size = v115;
        v116 = malloc_type_realloc(*v24, v115, 0xDAC6A741uLL);
        *v24 = v116;
      }

      *(v116 + v111) = 44;
      v117 = v111 + 2;
      v118 = size;
      if (*(v46 + 63))
      {
        if (v117 <= size)
        {
          v119 = *v24;
        }

        else
        {
          do
          {
            v118 *= 2;
          }

          while (v117 > v118);
          size = v118;
          v119 = malloc_type_realloc(*v24, v118, 0xDAC6A741uLL);
          *v24 = v119;
        }

        v147 = "1";
      }

      else
      {
        if (v117 <= size)
        {
          v119 = *v24;
        }

        else
        {
          do
          {
            v118 *= 2;
          }

          while (v117 > v118);
          size = v118;
          v119 = malloc_type_realloc(*v24, v118, 0xDAC6A741uLL);
          *v24 = v119;
        }

        v147 = "0";
      }

      *(v119 + v114) = *v147;
      v14 = v111 + 3;
      v148 = size;
      if (v111 + 3 <= size)
      {
        v149 = *v24;
      }

      else
      {
        do
        {
          v148 *= 2;
        }

        while (v14 > v148);
        size = v148;
        v149 = malloc_type_realloc(*v24, v148, 0xDAC6A741uLL);
        *v24 = v149;
      }

      p_ptr = v48;
      v16 = v227;
      *(v149 + v117) = 41;
      v21 = v222;
    }

LABEL_17:
    v17 = v21;
  }

  while (v21);
  if (p_ptr != &__ptr)
  {
    free(p_ptr);
  }

  result = (v14 + 1);
  v219 = size;
  if (v14 + 1 <= size)
  {
    v220 = *v10;
  }

  else
  {
    do
    {
      v219 *= 2;
    }

    while (result > v219);
    size = v219;
    v220 = malloc_type_realloc(*v10, v219, 0x93E4E095uLL);
    result = (v14 + 1);
    *v10 = v220;
  }

  *(v220 + v14) = 0;
LABEL_373:
  v221 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_node_has_ranking_weights(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_node_has_ranking_weights_block_invoke;
  v3[3] = &unk_1E8199158;
  v3[4] = &v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __db_query_tree_apply_block_block_invoke;
  v8[3] = &unk_1E8198ED0;
  v8[4] = v3;
  db_query_tree_apply_block_with_meta(a1, v8, 0);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t __db_node_has_ranking_weights_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (v4 && (*(v4 + 52) != 0.0 || *(v4 + 56) != 0.0))
  {
    a2 = 0;
    *(v2 + 24) = 1;
  }

  return a2;
}

uint64_t __db_query_enumerate_matched_qps_for_dbo_block_invoke(void *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = (*(a1[4] + 16))();
    v5 = *(a2 + 16);
    if ((*(v5 + 36) & 4) != 0)
    {
      v6 = 2;
    }

    else
    {
      v6 = v4;
    }

    if (v6 == 2)
    {
      v16[1] = 0;
      v16[2] = 0;
      v8 = a1[21];
      v9 = a1[22];
      v10 = a1[23];
      v11 = a1[24];
      v15 = a1[25];
      v16[0] = a1[20];
      if (compare_file_by_dbo(v8, v16, v5, 0, v9, v10, 1, v11, v15) == 1)
      {
        v12 = *(a2 + 16);
        v13 = a1[25];
        (*(a1[5] + 16))();
      }
    }

    else if (v6 == 1)
    {
      v7 = *(a2 + 16);
      (*(a1[5] + 16))();
    }
  }

  return a2;
}

void db_query_enumerate_matched_qps_for_dbf(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memset(&v12[1], 0, 104);
  v12[0] = 0x400000004;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __db_query_enumerate_matched_qps_for_dbf_block_invoke;
  v11[3] = &unk_1E81991A8;
  v11[6] = a3;
  v11[7] = a4;
  v11[8] = a5;
  v11[9] = a6;
  v11[4] = a7;
  v11[5] = a1;
  v11[10] = v12;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __db_query_tree_apply_block_block_invoke;
  v13[3] = &unk_1E8198ED0;
  v13[4] = v11;
  db_query_tree_apply_block_with_meta(a2, v13, 0);
  v7 = HIDWORD(v12[0]);
  if (HIDWORD(v12[0]) >= 5)
  {
    v8 = v12[2];
  }

  else
  {
    v8 = &v12[2];
  }

  if (v12[0])
  {
    v9 = LODWORD(v12[1]);
    if (LODWORD(v12[1]))
    {
      v10 = v8 + 2;
      do
      {
        if (*(v10 - 2) >= 0x41u)
        {
          free(*v10);
          *(v10 - 1) = 0;
          *v10 = 0;
        }

        v10 += 3;
        --v9;
      }

      while (v9);
      v7 = HIDWORD(v12[0]);
    }
  }

  if (v7 >= 5)
  {
    free(v8);
  }
}

uint64_t __db_query_enumerate_matched_qps_for_dbf_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && _db_compare_val(*(a1 + 40), *(a1 + 48), v3, *(a1 + 56), *(a1 + 64), *(a1 + 72), 1))
  {
    v5 = *(a2 + 16);
    v6 = *(a1 + 80);
    (*(*(a1 + 32) + 16))();
  }

  return a2;
}

void _qsort_big_oid_lookups(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v37 = a1[6];
  v38 = *a1;
  v6 = *(a1 + 14);
  v36 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v8 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v10 = getSize(void)::memSize;
      if (!getSize(void)::memSize)
      {
        v43 = 0u;
        v44 = 0u;
        *host_info_out = 0u;
        v11 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v12 = host_info(v11, 1, host_info_out, &host_info_outCnt);
        if (v12)
        {
          mach_error("flushsize", v12);
          exit(1);
        }

        v10 = *(&v44 + 1);
        getSize(void)::memSize = *(&v44 + 1);
      }

      v13 = 3 * v10;
      v14 = (v13 * 0xCCCCCCCCCCCCCCCDLL) >> 64;
      v15 = v3;
      if (32 * v8 > v13 / 5)
      {
        v15 = dispatch_group_create();
      }

      if (v8 <= v37 || 32 * v8 >= v14 >> 2)
      {
        v18 = _partition_oid_lookups(v38, v1, v2);
      }

      else
      {
        v16 = qos_class_self();
        global_queue = dispatch_get_global_queue(v16, 2uLL);
        v18 = _big_partition_oid_lookups(v38, v1, v2, global_queue, v6);
      }

      v19 = v18;
      v20 = v18 - v1;
      if (v18 < v1)
      {
        v32 = __si_assert_copy_extra_332();
        v33 = v32;
        v34 = "";
        if (v32)
        {
          v34 = v32;
        }

        __message_assert(v32, "sdb2_qsort.cpp", 17, "q>=left", v34, v40);
        free(v33);
        if (__valid_fs(-1))
        {
          v35 = 2989;
        }

        else
        {
          v35 = 3072;
        }

        *v35 = -559038737;
        abort();
      }

      v21 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v21)
      {
        v21 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
      }

      *(v21 + 4) = i;
      *(v21 + 5) = v5;
      *(v21 + 6) = v37;
      v22 = v2 - v19;
      if (v20 <= v2 - v19)
      {
        v23 = v19 - 1;
      }

      else
      {
        v22 = v19 - 1 - v1;
        v23 = v2;
      }

      if (v20 > v2 - v19)
      {
        v24 = v19;
      }

      else
      {
        v24 = v1;
      }

      if (v20 > v2 - v19)
      {
        v2 = v19 - 1;
      }

      else
      {
        v1 = v19;
      }

      *v21 = v38;
      *(v21 + 1) = v24;
      v25 = (((v22 + 1) / (v23 - v24 + 1)) * v6);
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      if (v6 >= v25)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v21[14] = v6 - v27;
      v21[15] = v36;
      *(v21 + 2) = v23;
      *(v21 + 3) = v15;
      if (v15 == v3)
      {
        if (v6 >= v25)
        {
          v6 = v26;
        }

        v30 = qos_class_self();
        v31 = dispatch_get_global_queue(v30, 2uLL);
        dispatch_group_async_f(v15, v31, v21, _qsort_big_oid_lookups);
      }

      else
      {
        v21[14] = v6;
        _qsort_big_oid_lookups(v21);
        dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v15);
        v28 = qos_class_self();
        v29 = dispatch_get_global_queue(v28, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        v40[0] = ___ZL22_qsort_big_oid_lookupsPv_block_invoke;
        v40[1] = &__block_descriptor_tmp_8_15689;
        v40[2] = v21;
        dispatch_async(v29, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_oid_lookups(v38, v1, v2);
  }
}

uint64_t _big_partition_oid_lookups(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v7 = a3 - a2;
  v8 = a3 - a2 + 1;
  v9 = (a1 + 32 * a2);
  v10 = &v9[4 * ((v8 + (v8 >> 63)) >> 1)];
  v11 = (a1 + 32 * a3);
  if (v7 < 64)
  {
    v26 = (a1 + 32 * a3);
    v16 = v9;
    goto LABEL_92;
  }

  v12 = v8 >> 3;
  v13 = &v9[4 * (v8 >> 3)];
  v14 = *v9;
  v15 = *v13;
  v16 = v9;
  if (*v9 != *v13)
  {
    v17 = &v9[8 * v12];
    v18 = *v17;
    if (*v17 == v14 || v18 == v15)
    {
      v16 = &v9[8 * v12];
      goto LABEL_32;
    }

    v20 = v9[2];
    v21 = v13[2];
    v22 = v17[2];
    v23 = v14 < v15;
    if (v20 != v21)
    {
      v23 = 0;
    }

    if (v20 < v21 || v23)
    {
      v25 = v15 < v18;
      if (v21 != v22)
      {
        v25 = 0;
      }

      if (v21 >= v22)
      {
        v16 = &v9[4 * (v8 >> 3)];
        if (!v25)
        {
          if (v14 >= v18 || (v16 = &v9[8 * v12], v20 != v22))
          {
            if (v20 < v22)
            {
              v16 = &v9[8 * v12];
            }

            else
            {
              v16 = v9;
            }
          }
        }

        goto LABEL_32;
      }

LABEL_31:
      v16 = &v9[4 * (v8 >> 3)];
      goto LABEL_32;
    }

    v27 = v15 > v18;
    if (v21 != v22)
    {
      v27 = 0;
    }

    if (v21 > v22)
    {
      goto LABEL_31;
    }

    v16 = &v9[4 * (v8 >> 3)];
    if (!v27)
    {
      if (v14 < v18 && v20 == v22 || (v16 = &v9[8 * v12], v20 < v22))
      {
        v16 = v9;
      }
    }
  }

LABEL_32:
  v28 = 2 * v12;
  v29 = -v12;
  v30 = &v10[-4 * v12];
  v31 = *v30;
  v32 = *v10;
  if (*v30 == *v10)
  {
    v10 -= 4 * v12;
  }

  else
  {
    v33 = &v10[4 * v12];
    v34 = *v33;
    if (*v33 == v31 || v34 == v32)
    {
      v10 = v33;
    }

    else
    {
      v36 = v30[2];
      v37 = v10[2];
      v38 = v33[2];
      v39 = v31 < v32;
      if (v36 != v37)
      {
        v39 = 0;
      }

      if (v36 >= v37 && !v39)
      {
        v43 = v32 > v34;
        if (v37 != v38)
        {
          v43 = 0;
        }

        if (v37 <= v38 && !v43)
        {
          if ((v31 >= v34 || v36 != v38) && v36 >= v38)
          {
            v10 = v33;
          }

          else
          {
            v10 = v30;
          }
        }
      }

      else
      {
        v41 = v32 < v34;
        if (v37 != v38)
        {
          v41 = 0;
        }

        if (v37 >= v38 && !v41)
        {
          v10 = v36 < v38 ? v33 : v30;
          if (v31 < v34 && v36 == v38)
          {
            v10 = v33;
          }
        }
      }
    }
  }

  v26 = &v11[-4 * v28];
  v46 = &v11[4 * v29];
  v47 = *v26;
  v48 = *v46;
  if (*v26 != *v46)
  {
    v49 = *v11;
    if (*v11 == v47 || v49 == v48)
    {
      goto LABEL_90;
    }

    v50 = v26[2];
    v51 = v46[2];
    v52 = v11[2];
    v53 = v47 < v48;
    if (v50 != v51)
    {
      v53 = 0;
    }

    if (v50 >= v51 && !v53)
    {
      v54 = v48 > v49;
      if (v51 != v52)
      {
        v54 = 0;
      }

      if (v51 <= v52 && !v54)
      {
        if (v47 < v49 && v50 == v52 || v50 < v52)
        {
          goto LABEL_92;
        }

LABEL_90:
        v26 = v11;
        goto LABEL_92;
      }

LABEL_91:
      v26 = v46;
      goto LABEL_92;
    }

    v55 = v48 < v49;
    if (v51 != v52)
    {
      v55 = 0;
    }

    if (v51 < v52 || v55)
    {
      goto LABEL_91;
    }

    if (v47 < v49 && v50 == v52)
    {
      goto LABEL_90;
    }

    if (v50 < v52)
    {
      v26 = v11;
    }
  }

LABEL_92:
  v56 = *v16;
  v57 = *v10;
  if (*v16 == *v10)
  {
    goto LABEL_117;
  }

  v58 = *v26;
  if (*v26 == v56 || v58 == v57)
  {
    goto LABEL_109;
  }

  v60 = v16[2];
  v61 = v10[2];
  v62 = v26[2];
  v63 = v56 < v57;
  if (v60 != v61)
  {
    v63 = 0;
  }

  if (v60 >= v61 && !v63)
  {
    v66 = v57 > v58;
    if (v61 != v62)
    {
      v66 = 0;
    }

    if (v61 > v62 || v66)
    {
      goto LABEL_121;
    }

    if (v56 >= v58 || v60 != v62)
    {
      v10 = v26;
      if (v60 >= v62)
      {
        goto LABEL_121;
      }
    }

LABEL_117:
    v10 = v16;
    goto LABEL_121;
  }

  v65 = v57 < v58;
  if (v61 != v62)
  {
    v65 = 0;
  }

  if (v61 >= v62 && !v65)
  {
    if (v56 < v58 && v60 == v62)
    {
LABEL_109:
      v10 = v26;
      goto LABEL_121;
    }

    if (v60 < v62)
    {
      v10 = v26;
    }

    else
    {
      v10 = v16;
    }
  }

LABEL_121:
  v69 = 0u;
  v70 = 0u;
  v67 = *(v10 + 1);
  v69 = *v10;
  v70 = v67;
  return parallel_partition_oid_lookups(v9, v8, &v69, a4, a5) + a2;
}

void ___ZL22_qsort_big_oid_lookupsPv_block_invoke(uint64_t a1)
{
  madvise((**(a1 + 32) + 32 * *(*(a1 + 32) + 8)), 32 * (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)), 4);
  v2 = *(a1 + 32);

  OSAtomicEnqueue(&qsort_cached_allocations, v2, 0);
}

uint64_t parallel_partition_oid_lookups(void *a1, uint64_t a2, __int128 *a3, NSObject *a4, unsigned int a5)
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  context[6] = a1;
  v10 = 8 * a5;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &context[-1] - v11;
  bzero(&context[-1] - v11, v10);
  v13 = a3[1];
  v21 = *a3;
  v22 = v13;
  v23 = v12;
  v14 = (a2 / 0x4000) << 13;
  v15 = a2 - v14;
  context[1] = v14;
  context[2] = a2;
  context[4] = 0;
  context[5] = 0;
  if (v5 >= 1)
  {
    memset(v12, 255, v10);
  }

  v16 = v14 + 0x2000;
  if (v15 > v14 + 0x2000)
  {
    v16 = a2 - ((a2 / 0x4000) << 13);
  }

  context[3] = v15 + ((v16 - v15 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (32 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 32 * a2, 3);
  }

  if (a2 / 0x4000 < v5)
  {
    v5 = a2 / 0x4000;
  }

  dispatch_apply_f(v5, a4, context, partition_phase_oid_lookups);
  result = sequential_fixup_oid_lookups(context, a2, v5);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sequential_fixup_oid_lookups(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  qsort(*(a1 + 88), a3, 8uLL, index_comp);
  v63 = 0;
  v62 = 0;
  v7 = *(a1 + 88);
  v8 = a3 - 1;
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_99;
  }

  while (*(v7 + 8 * v9) == -1)
  {
    if (v6 == ++v9)
    {
      v9 = v6;
      break;
    }
  }

  if (a3 == 1)
  {
    v8 = 0;
  }

  else
  {
LABEL_99:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
  }

  while (v9 < v8)
  {
    v10 = *(a1 + 48);
    v11 = *(v7 + 8 * v9);
    v12 = *(a1 + 72);
    v13 = v10 + 32 * *(v7 + 8 * v8);
    v61[0] = *(a1 + 56);
    v61[1] = v12;
    v14 = neutralize_oid_lookups(v10 + 32 * v11, v13, v61, &v62, &v63);
    v7 = *(a1 + 88);
    if ((v14 & 1) == 0)
    {
      v15 = *(v7 + 8 * v9);
      if ((v15 & 0x8000000000000000) == 0 && v15 < *(a1 + 32))
      {
        *(v7 + 8 * v9) = -1;
        *(a1 + 32) += 0x2000;
      }

      ++v9;
      v62 = 0;
      if ((v14 - 1) > 1)
      {
        continue;
      }
    }

    v16 = *(v7 + 8 * v8);
    v17 = v16 >= a2 || v16 < a2 - *(a1 + 40);
    if (!v17)
    {
      *(v7 + 8 * v8) = -1;
      *(a1 + 40) += 0x2000;
    }

    --v8;
    v63 = 0;
  }

  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  v20 = malloc_type_malloc(0x40000uLL, 0x1000040E990BCCAuLL);
  if (a3 < 1)
  {
    v38 = *a1;
    v37 = *(a1 + 16) - 1;
  }

  else
  {
    v21 = 0;
    v22 = ~v18 + a2;
    v23 = a3;
    v24 = *(a1 + 88);
    v25 = 8 * a3;
    do
    {
      v26 = v24[v21];
      if (v26 != -1 && v22 <= v26)
      {
        break;
      }

      if (v26 != -1)
      {
        if (v19 <= v26)
        {
          break;
        }

        v28 = *(a1 + 32);
        if (v28 > v26)
        {
          v29 = 0;
          do
          {
            if (v24[v29 / 8] == v28)
            {
              v28 += 0x2000;
              *(a1 + 32) = v28;
            }

            v29 += 8;
          }

          while (v25 != v29);
          if (v28 >= *a1)
          {
            break;
          }

          memcpy(v20, (*(a1 + 48) + 32 * v24[v21]), 0x40000uLL);
          memcpy((*(a1 + 48) + 32 * *(*(a1 + 88) + 8 * v21)), (*(a1 + 48) + 32 * *(a1 + 32)), 0x40000uLL);
          memcpy((*(a1 + 48) + 32 * *(a1 + 32)), v20, 0x40000uLL);
          v30 = *(a1 + 32);
          v24 = *(a1 + 88);
          v24[v21] = v30;
          *(a1 + 32) = v30 + 0x2000;
        }
      }

      ++v21;
    }

    while (v21 != v23);
    v31 = v23;
    do
    {
      v32 = v31 - 1;
      v33 = v24[v31 - 1];
      if (v19 > v33)
      {
        break;
      }

      if (v33 != -1)
      {
        if (v22 > v33)
        {
          break;
        }

        v34 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v34;
        v35 = v23 - 1;
        do
        {
          if (v24[v35] == a2 - v34)
          {
            v34 += 0x2000;
            *(a1 + 40) = v34;
          }

          v36 = v35-- + 1;
        }

        while (v36 > 1);
        if ((a2 - v34) < *(a1 + 16))
        {
          break;
        }

        memcpy(v20, (*(a1 + 48) + 32 * v24[v32]), 0x40000uLL);
        memcpy((*(a1 + 48) + 32 * *(*(a1 + 88) + 8 * v32)), (*(a1 + 48) + 32 * (a2 - *(a1 + 40))), 0x40000uLL);
        memcpy((*(a1 + 48) + 32 * (a2 - *(a1 + 40))), v20, 0x40000uLL);
        v24 = *(a1 + 88);
        v24[v32] = a2 - *(a1 + 40);
      }

      v17 = v31-- <= 1;
    }

    while (!v17);
    v37 = *(a1 + 16) - 1;
    v38 = *a1;
    do
    {
      v40 = *v24++;
      v39 = v40;
      if (v40 != -1)
      {
        if (v39 < v38)
        {
          v38 = v39;
        }

        v41 = v39 + 0x2000;
        v42 = v39 + 0x1FFF;
        if (v41 > v37)
        {
          v37 = v42;
        }

        if (v37 >= a2)
        {
          v57 = __si_assert_copy_extra_332();
          v58 = v57;
          v59 = "";
          if (v57)
          {
            v59 = v57;
          }

          __message_assert(v57, "sdb2_qsort.cpp", 17, "right < count", v59);
          free(v58);
          if (__valid_fs(-1))
          {
            v60 = 2989;
          }

          else
          {
            v60 = 3072;
          }

          *v60 = -559038737;
          abort();
        }
      }

      --v23;
    }

    while (v23);
  }

  free(v20);
  if (v38 >= v37)
  {
    result = v38;
    goto LABEL_86;
  }

  result = v38;
  do
  {
    v44 = *(a1 + 48);
    v45 = *(a1 + 72);
    v46 = (v44 + 32 * v38);
    while (1)
    {
      v47 = v46[2];
      if (v47 != v45)
      {
        break;
      }

      if (*v46 >= *(a1 + 56))
      {
        goto LABEL_71;
      }

LABEL_69:
      ++result;
      v46 += 4;
      if (result >= v37)
      {
        if (v37 <= v38 + 1)
        {
          result = v38 + 1;
        }

        else
        {
          result = v37;
        }

        goto LABEL_86;
      }
    }

    if (v47 < v45)
    {
      goto LABEL_69;
    }

LABEL_71:
    if (result >= v37)
    {
      goto LABEL_80;
    }

    v48 = (v44 + 32 * v37);
LABEL_73:
    v49 = v48[2];
    if (v49 == v45)
    {
      if (*v48 <= *(a1 + 56))
      {
        goto LABEL_79;
      }

      goto LABEL_77;
    }

    if (v49 > v45)
    {
LABEL_77:
      --v37;
      v48 -= 4;
      if (result >= v37)
      {
        break;
      }

      goto LABEL_73;
    }

LABEL_79:
    v51 = *v48;
    v50 = *(v48 + 1);
    v52 = *(v46 + 1);
    *v48 = *v46;
    *(v48 + 1) = v52;
    v53 = (*(a1 + 48) + 32 * result);
    *v53 = v51;
    v53[1] = v50;
    ++result;
    --v37;
LABEL_80:
    v38 = result;
  }

  while (result < v37);
LABEL_86:
  v54 = (*(a1 + 48) + 32 * result);
  v55 = v54[2];
  v56 = *(a1 + 72);
  if (v55 == v56 && *v54 < *(a1 + 56) || v55 < v56)
  {
    ++result;
  }

  return result;
}

uint64_t neutralize_oid_lookups(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a4;
  v6 = *a5;
  while (1)
  {
    if (v5 >= 0x2000)
    {
LABEL_10:
      v9 = v5;
    }

    else
    {
      v7 = a3[2];
      v8 = (a1 + 16 + 32 * v5);
      do
      {
        if (*v8 == v7)
        {
          if (*(v8 - 2) > *a3)
          {
            goto LABEL_10;
          }
        }

        else if (*v8 > v7)
        {
          goto LABEL_10;
        }

        ++v5;
        v8 += 4;
      }

      while (v5 != 0x2000);
      v9 = 0x2000;
    }

    if (v6 < 0x2000)
    {
      break;
    }

LABEL_19:
    v12 = v6;
    if (v9 == 0x2000 || v6 == 0x2000)
    {
      v5 = v9;
      goto LABEL_23;
    }

    v13 = (a2 + 32 * v6);
    v15 = *v13;
    v14 = v13[1];
    v16 = (a1 + 32 * v9);
    v17 = v16[1];
    *v13 = *v16;
    v13[1] = v17;
    *v16 = v15;
    v16[1] = v14;
    v5 = v9 + 1;
    v6 = v12 + 1;
    if (v9 > 8190 || v12 >= 0x1FFF)
    {
      goto LABEL_23;
    }
  }

  v10 = a3[2];
  v11 = (a2 + 16 + 32 * v6);
  do
  {
    if (*v11 == v10)
    {
      if (*(v11 - 2) < *a3)
      {
        goto LABEL_19;
      }
    }

    else if (*v11 < v10)
    {
      goto LABEL_19;
    }

    ++v6;
    v11 += 4;
  }

  while (v6 != 0x2000);
  v5 = v9;
LABEL_23:
  *a4 = v5;
  *a5 = v6;
  if (v6 == 0x2000 && v5 == 0x2000)
  {
    return 2;
  }

  else
  {
    return v5 != 0x2000;
  }
}

atomic_ullong *partition_phase_oid_lookups(atomic_ullong *result, uint64_t a2)
{
  v3 = result;
  v4 = result[6];
  v5 = result[1];
  if (*result >= v5)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v5)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v7 = result[3];
  if (result[2] <= v7)
  {
LABEL_8:
    v10 = 0;
    if (add_explicit == -1)
    {
      v9 = -1;
      v11 = 0;
      goto LABEL_32;
    }

    v11 = 0;
    goto LABEL_33;
  }

  v8 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
  v9 = v8 - 0x2000;
  if ((v8 - 0x2000) < v7)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  v19 = 0;
  v20 = 0;
  if (v8 == 0x1FFF || add_explicit == -1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_31;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    v15 = *(v3 + 9);
    v18[0] = *(v3 + 7);
    v18[1] = v15;
    result = neutralize_oid_lookups(v4 + 32 * add_explicit, v4 + 32 * v9, v18, &v20, &v19);
    if (result)
    {
LABEL_23:
      v17 = v3[3];
      if (v3[2] > v17)
      {
        v9 = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v9 >= v17)
        {
LABEL_27:
          v19 = 0;
          ++v13;
          continue;
        }

        atomic_fetch_add_explicit(v3 + 2, 0x2000uLL, memory_order_relaxed);
      }

      v9 = -1;
      goto LABEL_27;
    }

    v16 = v3[1];
    if (*v3 < v16)
    {
      add_explicit = atomic_fetch_add_explicit(v3, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v16)
      {
        goto LABEL_22;
      }

      atomic_fetch_add_explicit(v3, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_22:
    v20 = 0;
    ++v14;
    if ((result - 1) <= 1)
    {
      goto LABEL_23;
    }
  }

  while (v9 != -1 && add_explicit != -1);
  v11 = v14 << 13;
  v10 = v13 << 13;
LABEL_31:
  if (add_explicit == -1)
  {
LABEL_32:
    add_explicit = v9;
  }

LABEL_33:
  *(v3[11] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(v3 + 4, v11, memory_order_relaxed);
  atomic_fetch_add_explicit(v3 + 5, v10, memory_order_relaxed);
  return result;
}

uint64_t ___ZL18_qsort_oid_lookupsP17oid_lookup_structll_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  v4 = a2[2];
  v5 = a3[2];
  if (*a2 > *a3 && v4 == v5 || v4 > v5)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t fieldCmp(const char *a1, const char *a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    if (v2 > 0xBF)
    {
      if (v2 > 0xDF)
      {
        if (v2 > 0xEF)
        {
          v2 = *(a1 + 1);
          v3 = 5;
        }

        else
        {
          v2 = ((v2 & 0xF) << 24) | (*(a1 + 1) << 16) | (*(a1 + 2) << 8) | *(a1 + 3);
          v3 = 4;
        }
      }

      else
      {
        v2 = ((v2 & 0x1F) << 16) | (*(a1 + 1) << 8) | *(a1 + 2);
        v3 = 3;
      }
    }

    else
    {
      v3 = 2;
      v2 = *(a1 + 1) | ((v2 & 0x3F) << 8);
    }
  }

  else
  {
    v3 = 1;
  }

  v4 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    v5 = 1;
    v6 = v4 - v2;
    if (!v6)
    {
      return memcmp(&a1[v3], &a2[v5], v2);
    }

    return v6;
  }

  if (v4 <= 0xBF)
  {
    v5 = 2;
    v6 = (*(a2 + 1) | ((v4 & 0x3F) << 8)) - v2;
    if (!v6)
    {
      return memcmp(&a1[v3], &a2[v5], v2);
    }

    return v6;
  }

  if (v4 <= 0xDF)
  {
    v5 = 3;
    v6 = (((v4 & 0x1F) << 16) | (*(a2 + 1) << 8) | *(a2 + 2)) - v2;
    if (!v6)
    {
      return memcmp(&a1[v3], &a2[v5], v2);
    }

    return v6;
  }

  if (v4 > 0xEF)
  {
    v5 = 5;
    v6 = *(a2 + 1) - v2;
    if (v6)
    {
      return v6;
    }
  }

  else
  {
    v5 = 4;
    v6 = (((v4 & 0xF) << 24) | (*(a2 + 1) << 16) | (*(a2 + 2) << 8) | *(a2 + 3)) - v2;
    if (v6)
    {
      return v6;
    }
  }

  return memcmp(&a1[v3], &a2[v5], v2);
}

void ___ZN20GenericUniquingTableIXadL_Z6strlenEEXadL_Z6strcmpEEE9initTableEmj_block_invoke()
{
  zone = malloc_create_zone(0x10000uLL, 0);
  sdb_uniquing_zone = zone;

  malloc_set_zone_name(zone, "sdb_uniquing_zone");
}

uint64_t GenericUniquingTable<&(strlen),&(strcmp)>::buckFind(uint64_t *a1, unsigned int a2, uint64_t a3, char *__s1, size_t a5, const void *a6, unsigned int *a7)
{
  v8 = *a1;
  v9 = *a1 + 16 * a2;
  v10 = *(v9 + 8);
  if (v10 < 0)
  {
    if (a6)
    {
      v16 = -a5;
      v11 = a2;
      while (1)
      {
        v17 = a3;
        if ((v10 & 0x7FFFFFFF) == a3)
        {
          v18 = *v9;
          if (!strcmp(__s1, *v9) && !memcmp(&v18[v16], a6, a5))
          {
            break;
          }
        }

        result = 0;
        v19 = *(a1 + 2);
        v20 = v11 + 1 >= v19;
        v21 = v11 + 1 - v19;
        if (v20)
        {
          v11 = v21;
        }

        else
        {
          ++v11;
        }

        if (v11 != a2)
        {
          v9 = v8 + 16 * v11;
          v10 = *(v9 + 8);
          a3 = v17;
          if (v10 < 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }
    }

    else
    {
      v11 = a2;
      while (1)
      {
        v23 = a3;
        if ((v10 & 0x7FFFFFFF) == a3 && !strcmp(__s1, *v9))
        {
          break;
        }

        result = 0;
        v24 = *(a1 + 2);
        v20 = v11 + 1 >= v24;
        v25 = v11 + 1 - v24;
        if (v20)
        {
          v11 = v25;
        }

        else
        {
          ++v11;
        }

        if (v11 != a2)
        {
          v9 = v8 + 16 * v11;
          v10 = *(v9 + 8);
          a3 = v23;
          if (v10 < 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  result = v9;
LABEL_4:
  *a7 = v11;
  return result;
}

void *GenericUniquingTable<&(strlen),&(strcmp)>::replaceBucket(uint64_t a1, char *__s1, uint64_t a3, size_t a4)
{
  v7 = a3 & 0x7FFFFFFF;
  v8 = v7 % *(a1 + 8);
  v16 = 0;
  result = GenericUniquingTable<&(strlen),&(strcmp)>::buckFind(a1, v8, v7, __s1, a4, &__s1[-a4], &v16);
  if (result)
  {
    *result = __s1;
    result[1] = a3;
    if ((a3 & 0x80000000) == 0)
    {
      v10 = __si_assert_copy_extra_332();
      v11 = v10;
      v12 = "";
      if (v10)
      {
        v12 = v10;
      }

      __message_assert(v10, "db-common.c", 337, "bucket.used", v12);
      goto LABEL_11;
    }
  }

  else
  {
    v13 = (*a1 + 16 * v16);
    *v13 = __s1;
    v13[1] = a3;
    if ((a3 & 0x80000000) == 0)
    {
      v14 = __si_assert_copy_extra_332();
      v11 = v14;
      v15 = "";
      if (v14)
      {
        v15 = v14;
      }

      __message_assert(v14, "db-common.c", 341, "bucket.used", v15);
LABEL_11:
      free(v11);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  return result;
}

uint64_t GenericUniquingTable<&(strlen),&(strcmp)>::buckFindGrowing(uint64_t result, uint64_t a2)
{
  v2 = *result;
  if ((*(*result + 16 * a2 + 8) & 0x80000000) == 0)
  {
    return a2;
  }

  v3 = *(result + 8);
  LODWORD(result) = a2;
  do
  {
    if (result + 1 >= v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    result = result + 1 - v4;
    if (result == a2)
    {
      v5 = __si_assert_copy_extra_332();
      v6 = v5;
      v7 = "";
      if (v5)
      {
        v7 = v5;
      }

      __message_assert(v5, "db-common.c", 129, "probe!=start", v7);
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
  }

  while ((*(v2 + 16 * result + 8) & 0x80000000) != 0);
  return result;
}

uint64_t hash_insert_extended(uint64_t a1, char *__s, const void *a3, char *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  pthread_rwlock_wrlock(a1);
  v9 = commonHash(v8, __s);
  v10 = *(a1 + 200);
  if (&__s[-v10 - 4] != a4)
  {
    v30 = __si_assert_copy_extra_332();
    v31 = v30;
    v32 = "";
    if (v30)
    {
      v32 = v30;
    }

    __message_assert(v30, "db-common.c", 364, "data == name - ht->extra_bytes - sizeof(db_uint32_t)", v32);
    free(v31);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v11 = a1 + 16 * (v9 & 0x7F);
  v12 = *(v11 + 216);
  if (v12 < 0)
  {
    v14 = v9;
    v15 = v9 & 0x7FFFFFFF;
    if ((v12 & 0x7FFFFFFF) == v15 && (v16 = *(v11 + 208), !memcmp(&v16[-v10], a3, *(a1 + 200))) && !strcmp(__s, v16))
    {
      pthread_rwlock_unlock(a1);
      result = 17;
    }

    else
    {
      LODWORD(v17) = *(a1 + 2272);
      v39 = 0;
      while (1)
      {
        v18 = GenericUniquingTable<&(strlen),&(strcmp)>::buckFind((a1 + 2264), v15 % v17, v15, __s, v10, a3, &v39);
        if (v39 >= v17)
        {
          v33 = __si_assert_copy_extra_332();
          v34 = v33;
          v35 = "";
          if (v33)
          {
            v35 = v33;
          }

          __message_assert(v33, "db-common.c", 398, "slot<table->size", v35);
          free(v34);
          if (__valid_fs(-1))
          {
            v36 = 2989;
          }

          else
          {
            v36 = 3072;
          }

          *v36 = -559038737;
          abort();
        }

        if (v18)
        {
          break;
        }

        if (3 * v17 >= (4 * *(a1 + 2276)))
        {
          v25 = 0;
          v26 = *(a1 + 2264) + 16 * v39;
          *(v26 + 8) = v14 | 0x80000000;
          ++*(a1 + 2276);
          *v26 = __s;
          goto LABEL_22;
        }

        if (dword_1EBF46AE8 >= 5)
        {
          v21 = *__error();
          v22 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(a1 + 2272);
            v24 = *(a1 + 2276);
            *buf = 67109376;
            v41 = v23;
            v42 = 1024;
            v43 = v24;
            _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "Growing hash table %d %d", buf, 0xEu);
          }

          *__error() = v21;
          LODWORD(v17) = *(a1 + 2272);
        }

        v37 = *(a1 + 2264);
        *(a1 + 2272) = 2 * v17;
        *(a1 + 2264) = malloc_type_zone_calloc(sdb_uniquing_zone, 1uLL, 16 * (2 * v17), 0x1050040DB1D6C16uLL);
        if (v17)
        {
          v17 = v17;
          v19 = v37 + 2;
          do
          {
            if ((*v19 & 0x80000000) != 0)
            {
              v38 = *v19;
              v20 = *(a1 + 2264) + 16 * GenericUniquingTable<&(strlen),&(strcmp)>::buckFindGrowing(a1 + 2264, (*v19 & 0x7FFFFFFFu) % *(a1 + 2272));
              *(v20 + 8) = v38;
              *v20 = *(v19 - 1);
            }

            v19 += 4;
            --v17;
          }

          while (v17);
        }

        free(v37);
        LODWORD(v17) = *(a1 + 2272);
        v10 = *(a1 + 200);
      }

      if ((*(v18 + 8) & 0x80000000) != 0)
      {
        v28 = *(v11 + 208);
        v29 = *(v11 + 216);
        *(v11 + 208) = *v18;
        GenericUniquingTable<&(strlen),&(strcmp)>::replaceBucket(a1 + 2264, v28, v29, v10);
        v25 = 17;
      }

      else
      {
        v25 = 0;
        *(v18 + 8) = v14 | 0x80000000;
        *v18 = __s;
        ++*(a1 + 2276);
      }

LABEL_22:
      pthread_rwlock_unlock(a1);
      result = v25;
    }
  }

  else
  {
    *(v11 + 216) = v9 | 0x80000000;
    ++*(a1 + 2276);
    *(v11 + 208) = __s;
    pthread_rwlock_unlock(a1);
    result = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

size_t hash_lookup_extended(uint64_t a1, char *__s, const void *a3, char a4)
{
  v8 = strlen(__s);
  v9 = commonHash(v8, __s);
  v10 = a1 + 16 * (v9 & 0x7F);
  pthread_rwlock_rdlock(a1);
  v11 = *(v10 + 216);
  if (v11 < 0)
  {
    v13 = v9 & 0x7FFFFFFF;
    if ((v11 & 0x7FFFFFFF) == v13 && (v14 = *(v10 + 208), !strcmp(__s, v14)) && (v15 = *(a1 + 200), v16 = &v14[-v15], !memcmp(v16, a3, v15)))
    {
      result = (v16 - 4);
      if (a4)
      {
        return result;
      }
    }

    else
    {
      v17 = *(a1 + 2272);
      v24 = 0;
      v18 = *(a1 + 200);
      v19 = GenericUniquingTable<&(strlen),&(strcmp)>::buckFind((a1 + 2264), v13 % v17, v13, __s, v18, a3, &v24);
      if (v24 >= v17)
      {
        v21 = __si_assert_copy_extra_332();
        v22 = v21;
        v23 = "";
        if (v21)
        {
          v23 = v21;
        }

        __message_assert(v21, "db-common.c", 304, "slot < table->size", v23);
        free(v22);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      if (!v19 || (*(v19 + 8) & 0x80000000) == 0)
      {
        goto LABEL_2;
      }

      result = *v19 - v18 - 4;
      if (a4)
      {
        return result;
      }
    }

    v20 = result;
    pthread_rwlock_unlock(a1);
    return v20;
  }

LABEL_2:
  if ((a4 & 1) == 0)
  {
    pthread_rwlock_unlock(a1);
  }

  return 0;
}

void ___ZN20GenericUniquingTableIXadL_Z8fieldLenEEXadL_Z8fieldCmpPKcS1_EEE9initTableEmj_block_invoke()
{
  zone = malloc_create_zone(0x10000uLL, 0);
  sdb_uniquing_zone = zone;

  malloc_set_zone_name(zone, "sdb_uniquing_zone");
}

uint64_t hash_field_insert(pthread_rwlock_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*a2 < 0)
  {
    if (v6 > 0xBF)
    {
      if (v6 > 0xDF)
      {
        if (v6 > 0xEF)
        {
          v6 = *(a2 + 1);
          v7 = 5;
        }

        else
        {
          v6 = ((v6 & 0xF) << 24) | (a2[1] << 16) | (a2[2] << 8) | a2[3];
          v7 = 4;
        }
      }

      else
      {
        v6 = ((v6 & 0x1F) << 16) | (a2[1] << 8) | a2[2];
        v7 = 3;
      }
    }

    else
    {
      v7 = 2;
      v6 = a2[1] | ((v6 & 0x3F) << 8);
    }
  }

  else
  {
    v7 = 1;
  }

  pthread_rwlock_wrlock(a1);
  v8 = commonHash(v6 + v7, a2);
  sig = a1[1].__sig;
  if (&a2[-sig - 4] != a3)
  {
    v33 = __si_assert_copy_extra_332();
    v34 = v33;
    v35 = "";
    if (v33)
    {
      v35 = v33;
    }

    __message_assert(v33, "db-common.c", 364, "data == name - ht->extra_bytes - sizeof(db_uint32_t)", v35);
    free(v34);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v11 = v8;
  v12 = a1 + 16 * (v8 & 0x7F);
  v13 = *(v12 + 54);
  if (v13 < 0)
  {
    v15 = v8 & 0x7FFFFFFF;
    if ((v13 & 0x7FFFFFFF) == (v8 & 0x7FFFFFFF) && (v16 = *(v12 + 26), !memcmp(&v16[-sig], 0, sig)) && !fieldCmp(a2, v16))
    {
      pthread_rwlock_unlock(a1);
      result = 17;
    }

    else
    {
      *&v9 = 67109376;
      while (1)
      {
        LODWORD(v17) = *&a1[11].__opaque[64];
        v18 = *&a1[11].__opaque[56];
        v19 = &v18[4 * (v15 % v17)];
        v20 = *(v19 + 2);
        if ((v20 & 0x80000000) == 0)
        {
          break;
        }

        v40 = v9;
        v21 = v15 % v17;
        do
        {
          if ((v20 & 0x7FFFFFFF) == v15 && !fieldCmp(a2, *v19))
          {
            if (v21 >= v17)
            {
LABEL_49:
              v36 = __si_assert_copy_extra_332();
              v37 = v36;
              v38 = "";
              if (v36)
              {
                v38 = v36;
              }

              __message_assert(v36, "db-common.c", 398, "slot<table->size", v38);
              free(v37);
              if (__valid_fs(-1))
              {
                v39 = 2989;
              }

              else
              {
                v39 = 3072;
              }

              *v39 = -559038737;
              abort();
            }

            goto LABEL_39;
          }

          if (v21 + 1 < v17)
          {
            ++v21;
          }

          else
          {
            v21 = v21 + 1 - v17;
          }

          v19 = &v18[4 * v21];
          if (v21 == v15 % v17)
          {
            break;
          }

          v20 = *(v19 + 2);
        }

        while (v20 < 0);
        if (v21 >= v17)
        {
          goto LABEL_49;
        }

        if (3 * v17 >= (4 * *&a1[11].__opaque[68]))
        {
          v29 = 0;
          *(v19 + 2) = v11 | 0x80000000;
          ++*&a1[11].__opaque[68];
          *v19 = a2;
          goto LABEL_42;
        }

        if (dword_1EBF46AE8 >= 5)
        {
          v25 = *__error();
          v26 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *&a1[11].__opaque[64];
            v28 = *&a1[11].__opaque[68];
            *buf = v40;
            v42 = v27;
            v43 = 1024;
            v44 = v28;
            _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "Growing hash table %d %d", buf, 0xEu);
          }

          *__error() = v25;
          LODWORD(v17) = *&a1[11].__opaque[64];
          v18 = *&a1[11].__opaque[56];
        }

        *&a1[11].__opaque[64] = 2 * v17;
        *&a1[11].__opaque[56] = malloc_type_zone_calloc(sdb_uniquing_zone, 1uLL, 16 * (2 * v17), 0x1050040DB1D6C16uLL);
        if (v17)
        {
          v17 = v17;
          v22 = v18 + 2;
          do
          {
            v23 = *v22;
            if ((*v22 & 0x80000000) != 0)
            {
              v24 = *&a1[11].__opaque[56] + 16 * GenericUniquingTable<&(strlen),&(strcmp)>::buckFindGrowing(&a1[11].__opaque[56], (v23 & 0x7FFFFFFFu) % *&a1[11].__opaque[64]);
              *(v24 + 8) = v23;
              *v24 = *(v22 - 1);
            }

            v22 += 4;
            --v17;
          }

          while (v17);
        }

        free(v18);
        v9 = v40;
      }

LABEL_39:
      if ((*(v19 + 2) & 0x80000000) != 0)
      {
        v30 = *(v12 + 26);
        v31 = *(v12 + 27);
        *(v12 + 13) = *v19;
        GenericUniquingTable<&(fieldLen),&(fieldCmp(char const*,char const*))>::replaceBucket(&a1[11].__opaque[56], v30, v31, a1[1].__sig);
        v29 = 17;
      }

      else
      {
        v29 = 0;
        *(v19 + 2) = v11 | 0x80000000;
        *v19 = a2;
        ++*&a1[11].__opaque[68];
      }

LABEL_42:
      pthread_rwlock_unlock(a1);
      result = v29;
    }
  }

  else
  {
    *(v12 + 54) = v8 | 0x80000000;
    ++*&a1[11].__opaque[68];
    *(v12 + 26) = a2;
    pthread_rwlock_unlock(a1);
    result = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t GenericUniquingTable<&(fieldLen),&(fieldCmp(char const*,char const*))>::replaceBucket(uint64_t result, char *a2, uint64_t a3, size_t a4)
{
  v6 = a3 & 0x7FFFFFFF;
  v7 = *(result + 8);
  v8 = (a3 & 0x7FFFFFFF) % v7;
  v9 = *result;
  v10 = *result + 16 * v8;
  v11 = *(v10 + 8);
  if (v11 < 0)
  {
    v24 = -a4;
    v13 = &a2[-a4];
    v23 = (a3 & 0x7FFFFFFF) % v7;
    while (1)
    {
      if ((v11 & 0x7FFFFFFF) == v6)
      {
        v14 = *v10;
        result = fieldCmp(a2, *v10);
        if (!result)
        {
          result = memcmp(&v14[v24], v13, a4);
          if (!result)
          {
            break;
          }
        }
      }

      if (v23 + 1 < v7)
      {
        v15 = v23 + 1;
      }

      else
      {
        v15 = v23 + 1 - v7;
      }

      v10 = v9 + 16 * v15;
      v23 = v15;
      if (v15 != v8)
      {
        v11 = *(v10 + 8);
        if (v11 < 0)
        {
          continue;
        }
      }

      *v10 = a2;
      *(v10 + 8) = a3;
      if ((a3 & 0x80000000) == 0)
      {
        v16 = __si_assert_copy_extra_332();
        v17 = v16;
        v18 = "";
        if (v16)
        {
          v18 = v16;
        }

        __message_assert(v16, "db-common.c", 341, "bucket.used", v18);
        free(v17);
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
  }

  *v10 = a2;
  *(v10 + 8) = a3;
  if ((a3 & 0x80000000) == 0)
  {
    v19 = __si_assert_copy_extra_332();
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert(v19, "db-common.c", 337, "bucket.used", v21);
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

  return result;
}

uint64_t hash_field_lookup(uint64_t a1, unsigned __int8 *a2)
{
  v4 = a1 + 208;
  v5 = *a2;
  if (*a2 < 0)
  {
    if (v5 > 0xBF)
    {
      if (v5 > 0xDF)
      {
        if (v5 > 0xEF)
        {
          v5 = *(a2 + 1);
          v6 = 5;
        }

        else
        {
          v5 = ((v5 & 0xF) << 24) | (a2[1] << 16) | (a2[2] << 8) | a2[3];
          v6 = 4;
        }
      }

      else
      {
        v5 = ((v5 & 0x1F) << 16) | (a2[1] << 8) | a2[2];
        v6 = 3;
      }
    }

    else
    {
      v6 = 2;
      v5 = a2[1] | ((v5 & 0x3F) << 8);
    }
  }

  else
  {
    v6 = 1;
  }

  v7 = commonHash(v5 + v6, a2);
  pthread_rwlock_rdlock(a1);
  v8 = v4 + 16 * (v7 & 0x7F);
  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    v10 = v7 & 0x7FFFFFFF;
    if ((v9 & 0x7FFFFFFF) == (v7 & 0x7FFFFFFF))
    {
      v11 = *v8;
      if (!fieldCmp(a2, *v8))
      {
        v12 = *(a1 + 200);
        v13 = &v11[-v12];
        if (!memcmp(v13, 0, v12))
        {
          v19 = (v13 - 4);
          goto LABEL_28;
        }
      }
    }

    v14 = *(a1 + 2272);
    v15 = *(a1 + 2264);
    v16 = v15 + 16 * (v10 % v14);
    v17 = *(v16 + 8);
    if (v17 < 0)
    {
      v18 = v10 % v14;
      do
      {
        if ((v17 & 0x7FFFFFFF) == v10 && !fieldCmp(a2, *v16))
        {
          if (v18 >= v14)
          {
            goto LABEL_31;
          }

          goto LABEL_26;
        }

        if (v18 + 1 < v14)
        {
          ++v18;
        }

        else
        {
          v18 = v18 + 1 - v14;
        }

        if (v18 == v10 % v14)
        {
          break;
        }

        v16 = v15 + 16 * v18;
        v17 = *(v16 + 8);
      }

      while (v17 < 0);
      if (v18 >= v14)
      {
LABEL_31:
        v21 = __si_assert_copy_extra_332();
        v22 = v21;
        v23 = "";
        if (v21)
        {
          v23 = v21;
        }

        __message_assert(v21, "db-common.c", 304, "slot < table->size", v23);
        free(v22);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

    else
    {
LABEL_26:
      if ((*(v16 + 8) & 0x80000000) != 0)
      {
        v19 = *v16 - *(a1 + 200) - 4;
        goto LABEL_28;
      }
    }
  }

  v19 = 0;
LABEL_28:
  pthread_rwlock_unlock(a1);
  return v19;
}

uint64_t _data_map_ext_wrlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 477))
  {
    v1 = 0;
  }

  else
  {
    v1 = _db_write_lock(a1);
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
        v8 = "_data_map_ext_wrlock";
        v9 = 1024;
        v10 = 288;
        v11 = 1024;
        v12 = v6;
        _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", &v7, 0x18u);
      }

      *__error() = v4;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t data_map_ext_init_with_ctx(uint64_t a1)
{
  v124 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  bzero(__str, 0x400uLL);
  v6 = malloc_type_calloc(1uLL, 0x200uLL, 0x10A0040C012C236uLL);
  v7 = v6;
  v6[477] = (v4 & 8) != 0;
  *(v6 + 54) = -270471200;
  if ((v4 & 8) == 0)
  {
    *(v6 + 26) = 0;
    *(v6 + 11) = 0u;
    *(v6 + 12) = 0u;
    *(v6 + 9) = 0u;
    *(v6 + 10) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 6) = 0u;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0u;
    pthread_mutex_init(v6, 0);
  }

  *(v7 + 232) = -1;
  *(v7 + 272) = 0;
  *(v7 + 296) = -1;
  *(v7 + 304) = 0;
  *(v7 + 312) = 0;
  *(v7 + 320) = -1;
  *(v7 + 368) = -1;
  *(v7 + 456) = 0;
  *(v7 + 424) = *(a1 + 24);
  *(v7 + 448) = *(a1 + 56);
  v8 = *(a1 + 40);
  if (!v8)
  {
    v8 = si_get_contentindex_for_id;
  }

  *(v7 + 432) = v8;
  v9 = *(a1 + 48);
  if (!v9)
  {
    v9 = ContentIndexGetDataForId;
  }

  *(v7 + 440) = v9;
  *(v7 + 476) = BYTE1(v4) & 1;
  *(v7 + 408) = *(a1 + 64);
  *(v7 + 416) = *(a1 + 72);
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, v7, 0, add_explicit + 1);
  *buf = v11;
  v103 = v13;
  v104 = v12;
  v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v15 = *(v14 + 312);
  v16 = *(v14 + 224);
  if (v16)
  {
    v16(*(v14 + 288));
  }

  v102 = *buf;
  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v109 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v109, 2u);
    }

    *(v14 + 312) = v15;
    CIOnThreadCleanUpReset(v103);
    dropThreadId(v102, 1, add_explicit + 1);
    CICleanUpReset(v102, v104);
    v40 = *__error();
    v41 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v63 = fd_realpath(*(v7 + 248), __str);
      *&v109[4] = "data_map_ext_init_with_ctx";
      v64 = "";
      *v109 = 136315650;
      if (v63)
      {
        v64 = v63;
      }

      *&v109[12] = 1024;
      *&v109[14] = 1312;
      *&v109[18] = 2080;
      *&v109[20] = v64;
      _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: exception processing %s", v109, 0x1Cu);
    }

    *__error() = v40;
LABEL_36:
    data_map_ext_destroy(v7);
    result = 0;
    goto LABEL_37;
  }

  if (!v3 || (v17 = strlen(v3), v2 == -1) || v17 - 241 <= 0xFFFFFFFFFFFFFF0FLL)
  {
    v22 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v109 = 136315394;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1020;
    v60 = "%s:%d: param error";
    goto LABEL_60;
  }

  v101 = v15;
  if ((v4 & 2) != 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = ((v4 & 1) << 10) | 0x20000202;
  }

  snprintf(__str, 0x400uLL, "%s.header", v3);
  v19 = fd_create_protected(v2, __str, v18, 3u);
  *(v7 + 248) = v19;
  *(v7 + 264) = fd_lseek(v19, 0, 2);
  snprintf(__str, 0x400uLL, "%s.offsets", v3);
  v20 = fd_create_protected(v2, __str, v18, 3u);
  *(v7 + 280) = v20;
  *(v7 + 328) = fd_lseek(v20, 0, 2);
  snprintf(__str, 0x400uLL, "%s.buckets", v3);
  v21 = fd_create_protected(v2, __str, 514, 3u);
  *(v7 + 344) = v21;
  *(v7 + 352) = fd_lseek(v21, 0, 2);
  if ((v4 & 1) == 0)
  {
    if (*(v7 + 264) <= 0x53uLL)
    {
      v22 = *__error();
      v23 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(v7 + 264);
        *v109 = 136315650;
        *&v109[4] = "data_map_ext_init_with_ctx";
        *&v109[12] = 1024;
        *&v109[14] = 1166;
        *&v109[18] = 2048;
        *&v109[20] = v24;
        v25 = "%s:%d: invalid header size %ld";
        v26 = v23;
        v27 = 28;
LABEL_119:
        _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, v25, v109, v27);
        goto LABEL_69;
      }

      goto LABEL_69;
    }

    *(v7 + 272) = malloc_type_calloc(1uLL, 0x54uLL, 0x10000405C84B8F7uLL);
    v65 = (v4 >> 2) & 1;
    if ((v4 & 0x80) != 0)
    {
      sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v7 + 248), ".shadow", v18);
      v56 = v5;
      if (sibling_with_suffix_protected)
      {
        v67 = sibling_with_suffix_protected;
        v68 = (fd_copyfile(sibling_with_suffix_protected, *(v7 + 248), 0) != 0) & (v4 >> 2);
        fd_release(v67);
        v65 = v68;
      }
    }

    else
    {
      v56 = v5;
    }

    v69 = v65;
    v70 = fd_pread(*(v7 + 248), *(v7 + 272), 0x54uLL, 0);
    v22 = *__error();
    v71 = _SILogForLogForCategory(0);
    v72 = v71;
    if (v70 != 84)
    {
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *v109 = 136315394;
        *&v109[4] = "data_map_ext_init_with_ctx";
        *&v109[12] = 1024;
        *&v109[14] = 1186;
        v25 = "%s:%d: header pread error";
        v26 = v72;
        v27 = 18;
        goto LABEL_119;
      }

LABEL_69:
      v15 = v101;
      goto LABEL_24;
    }

    v73 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
    if ((v4 & 0x80) != 0)
    {
      if (v73)
      {
        v76 = *(*(v7 + 272) + 28);
        *v109 = 134217984;
        *&v109[4] = v76;
        v75 = "recovered next_id: %llu";
        goto LABEL_76;
      }
    }

    else if (v73)
    {
      v74 = *(*(v7 + 272) + 28);
      *v109 = 134217984;
      *&v109[4] = v74;
      v75 = "opened next_id: %llu";
LABEL_76:
      _os_log_impl(&dword_1C278D000, v72, OS_LOG_TYPE_DEFAULT, v75, v109, 0xCu);
    }

    *__error() = v22;
    v77 = *(v7 + 272);
    if (*v77 != 0x4461746150EELL)
    {
LABEL_85:
      v29 = 0;
      v15 = v101;
      goto LABEL_25;
    }

    v78 = *(v77 + 28);
    *(v7 + 224) = v78;
    v79 = *(v77 + 16);
    if (v79 < 3)
    {
      v80 = v79 + 1;
    }

    else
    {
      v80 = 0;
    }

    SIActivityJournalEvent(*(v7 + 408), *(v7 + 416), 1u, v80, v78);
    *(v7 + 336) = *(v7 + 328) / 0x18uLL;
    v81 = *(v7 + 272);
    *(v7 + 376) = *(v81 + 20);
    *(v7 + 384) = *(v81 + 60);
    *(v7 + 400) = *(v81 + 76);
    if (v69)
    {
      v82 = *__error();
      v83 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v84 = *(*(v7 + 272) + 52);
        *v109 = 134217984;
        *&v109[4] = v84;
        _os_log_impl(&dword_1C278D000, v83, OS_LOG_TYPE_DEFAULT, "use_shadow next_id: %llu", v109, 0xCu);
      }

      *__error() = v82;
      v85 = *(v7 + 224);
      v86 = *(v7 + 272);
      v87 = *(v86 + 52);
      if (v85 < v87)
      {
        goto LABEL_85;
      }

      if (v85 != v87)
      {
        if ((v4 & 2) == 0)
        {
          *(v86 + 28) = v87;
          *(v86 + 20) = 0;
        }

        *(v7 + 224) = v87;
        *(v7 + 376) = 0;
      }
    }

    v91 = MEMORY[0x1E69E9AC8];
    if (((*(v7 + 328) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) <= 0x100000)
    {
      v92 = 0x100000;
    }

    else
    {
      v92 = (*(v7 + 328) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    }

    v93 = fd_mmap(*(v7 + 280));
    *(v7 + 296) = v93;
    if (v93 == -1)
    {
      v22 = *__error();
      v28 = _SILogForLogForCategory(0);
      v15 = v101;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *v109 = 136315394;
      *&v109[4] = "data_map_ext_init_with_ctx";
      *&v109[12] = 1024;
      *&v109[14] = 1233;
      v60 = "%s:%d: offset fd_mmap error";
      goto LABEL_60;
    }

    *(v7 + 288) = v92;
    if (((*(v7 + 352) + *v91 - 1) & -*v91) <= 0x100000)
    {
      v94 = 0x100000;
    }

    else
    {
      v94 = (*(v7 + 352) + *v91 - 1) & -*v91;
    }

    v95 = fd_mmap(*(v7 + 344));
    *(v7 + 368) = v95;
    v15 = v101;
    if (v95 == -1)
    {
      v22 = *__error();
      v28 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *v109 = 136315394;
      *&v109[4] = "data_map_ext_init_with_ctx";
      *&v109[12] = 1024;
      *&v109[14] = 1242;
      v60 = "%s:%d: offset fd_mmap error";
      goto LABEL_60;
    }

    *(v7 + 360) = v94;
    v96 = *(v7 + 272);
    if (!*(v96 + 28))
    {
      *(v96 + 28) = 1;
      *(v7 + 224) = 1;
    }

    goto LABEL_47;
  }

  if (fd_truncate(*(v7 + 248), 84) == -1)
  {
    v22 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v109 = 136315394;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1107;
    v60 = "%s:%d: fd_truncate error";
    goto LABEL_60;
  }

  v44 = malloc_type_calloc(1uLL, 0x54uLL, 0x10000405C84B8F7uLL);
  *(v7 + 264) = 84;
  *(v7 + 272) = v44;
  *v44 = 0x4461746150EELL;
  v44[2] = 14;
  v44[3] = v5;
  v44[4] = 0;
  v45 = MEMORY[0x1E69E9AC8];
  if (fd_truncate(*(v7 + 280), 24 * (*MEMORY[0x1E69E9AC8] / 0x18uLL)) == -1)
  {
    v22 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v109 = 136315394;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1122;
    v60 = "%s:%d: fd_truncate error";
    goto LABEL_60;
  }

  v46 = fd_mmap(*(v7 + 280));
  *(v7 + 296) = v46;
  if (v46 == -1)
  {
    v22 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v109 = 136315394;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1127;
    v60 = "%s:%d: offsets fd_mmap error";
    goto LABEL_60;
  }

  *(v7 + 288) = 0x100000;
  v47 = *v45;
  v48 = *v45 / 0x18uLL;
  *(v7 + 328) = 24 * v48;
  *(v7 + 336) = v48;
  v49 = v47 & 0xFFFFFFFFFFFFFFF8;
  if (fd_truncate(*(v7 + 344), v47 & 0xFFFFFFFFFFFFFFF8) == -1)
  {
    v22 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v109 = 136315394;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1137;
    v60 = "%s:%d: fd_truncate error";
    goto LABEL_60;
  }

  v50 = fd_mmap(*(v7 + 344));
  *(v7 + 368) = v50;
  if (v50 == -1)
  {
    v22 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v109 = 136315394;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1143;
    v60 = "%s:%d: hash fd_mmap error";
    goto LABEL_60;
  }

  *(v7 + 352) = v49;
  *(v7 + 360) = 0x100000;
  v51 = *v45 >> 3;
  v52 = *(v7 + 272);
  *(v52 + 20) = v51;
  *(v7 + 376) = v51;
  v53 = *(v7 + 296);
  *v53 = 0;
  v53[1] = 0;
  v53[2] = 0;
  *(v52 + 28) = 1;
  *(v7 + 224) = 1;
  v54 = *(v52 + 16);
  if (v54 < 3)
  {
    v55 = v54 + 1;
  }

  else
  {
    v55 = 0;
  }

  SIActivityJournalEvent(*(v7 + 408), *(v7 + 416), 0, v55, 1u);
  v56 = v5;
LABEL_47:
  if (*(v7 + 336) < *(v7 + 224))
  {
    v22 = *__error();
    v57 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = *(v7 + 336);
      v59 = *(v7 + 224);
      *v109 = 136315906;
      *&v109[4] = "data_map_ext_init_with_ctx";
      *&v109[12] = 1024;
      *&v109[14] = 1263;
      *&v109[18] = 2048;
      *&v109[20] = v58;
      *&v109[28] = 2048;
      *&v109[30] = v59;
      v60 = "%s:%d: invalid offset size 1 - %lld %lld";
      v61 = v57;
      v62 = 38;
LABEL_61:
      _os_log_error_impl(&dword_1C278D000, v61, OS_LOG_TYPE_ERROR, v60, v109, v62);
    }

LABEL_24:
    *__error() = v22;
    v29 = 0;
    goto LABEL_25;
  }

  v88 = *(v7 + 272);
  if (*v88 != 0x4461746150EELL)
  {
    v22 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v109 = 136315394;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1267;
    v60 = "%s:%d: invalid offset signature";
    goto LABEL_60;
  }

  v89 = *(v88 + 8);
  if (v89 <= 0xD)
  {
    v22 = *__error();
    v90 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v109 = 136315650;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1273;
    *&v109[18] = 1024;
    *&v109[20] = v89;
    v60 = "%s:%d: invalid version %d";
    v61 = v90;
    v62 = 24;
    goto LABEL_61;
  }

  if (*(v88 + 12) != v56)
  {
    v22 = *__error();
    v97 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v98 = *(*(v7 + 272) + 12);
    *v109 = 136315906;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1277;
    *&v109[18] = 1024;
    *&v109[20] = v98;
    *&v109[24] = 1024;
    *&v109[26] = v5;
    v60 = "%s:%d: invalid extra_size %d %d";
    v61 = v97;
    v62 = 30;
    goto LABEL_61;
  }

  *(v7 + 220) = v5;
  if (*(v7 + 264) <= 0x53uLL)
  {
    v22 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v109 = 136315394;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1285;
    v60 = "%s:%d: invalid header size";
    goto LABEL_60;
  }

  if ((v4 & 0x80) != 0 || !*(v88 + 16) || (v99 = *(v7 + 376)) == 0 || (v100 = *(v7 + 352), v100 < 8 * v99))
  {
    if (_data_map_ext_rehash(v7))
    {
      v100 = *(v7 + 352);
      v99 = *(v7 + 376);
      goto LABEL_128;
    }

    v22 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v109 = 136315394;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1291;
    v60 = "%s:%d: re-build hash error";
LABEL_60:
    v61 = v28;
    v62 = 18;
    goto LABEL_61;
  }

LABEL_128:
  if (v100 < 8 * v99)
  {
    v22 = *__error();
    v28 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *v109 = 136315394;
    *&v109[4] = "data_map_ext_init_with_ctx";
    *&v109[12] = 1024;
    *&v109[14] = 1298;
    v60 = "%s:%d: invalid hash size 1";
    goto LABEL_60;
  }

  v29 = 1;
LABEL_25:
  v30 = threadData[9 * v102 + 1] + 320 * HIDWORD(v11);
  *(v30 + 312) = v15;
  v31 = *(v30 + 232);
  if (v31)
  {
    v31(*(v30 + 288));
  }

  dropThreadId(v102, 0, add_explicit + 1);
  if ((v29 & 1) == 0)
  {
    goto LABEL_36;
  }

  v121 = 0u;
  v122 = 0u;
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
  v110 = 0u;
  memset(v109, 0, sizeof(v109));
  v32 = *__error();
  v33 = _SILogForLogForCategory(7);
  v34 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = fd_name(*(v7 + 248), v109, 0x100uLL);
    v36 = *(v7 + 224) - 1;
    *buf = 136315394;
    v106 = v35;
    v107 = 2048;
    v108 = v36;
    _os_log_impl(&dword_1C278D000, v33, v34, "Opened map %s with counts: %lld", buf, 0x16u);
  }

  *__error() = v32;
  v37 = *(v7 + 272);
  if (v37)
  {
    v38 = *(v37 + 16);
    if (v38 < 3)
    {
      v39 = v38 + 1;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  SIActivityJournalEvent(*(v7 + 408), *(v7 + 416), 1u, v39, *(v7 + 224));
  result = v7;
LABEL_37:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _data_map_ext_rehash(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  *(a1 + 392) = 0;
  v2 = *(a1 + 224) - *(a1 + 384);
  v3 = *__error();
  v4 = _SILogForLogForCategory(0);
  v5 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 224);
    v8 = *(a1 + 376);
    v7 = *(a1 + 384);
    *buf = 134219008;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 2048;
    *&buf[24] = v7;
    *&buf[32] = 2048;
    *&buf[34] = v2;
    *&buf[42] = 2048;
    *&buf[44] = v8;
    _os_log_impl(&dword_1C278D000, v4, v5, "rehash %p max id: %lld deletes: %lld count: %lld hash_size: %lld", buf, 0x34u);
  }

  *__error() = v3;
  v9 = *(a1 + 272);
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10 < 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 3u, v11, *(a1 + 224));
  v12 = *(a1 + 368);
  v13 = 8 * *(a1 + 376);
  fd_system_status_stall_if_busy();
  msync(v12, v13, 4);
  if (fd_truncate(*(a1 + 344), 0) == -1)
  {
    goto LABEL_31;
  }

  v14 = 2 * v2;
  if ((2 * v2) <= *MEMORY[0x1E69E9AC8] >> 3)
  {
    v14 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  *(a1 + 376) = v14;
  v15 = 8 * v14;
  if (fd_truncate(*(a1 + 344), 8 * v14) == -1)
  {
    goto LABEL_31;
  }

  if ((*(a1 + 474) & 1) == 0)
  {
    _data_map_ext_dirty(a1);
    *(a1 + 474) = 1;
  }

  *(a1 + 352) = v15;
  v16 = *(a1 + 360);
  if (v15 > v16)
  {
    v17 = *(a1 + 360);
    do
    {
      v18 = v17;
      v17 *= 2;
    }

    while (v18 < v15);
    munmap(*(a1 + 368), v16);
    *(a1 + 360) = 0;
    *(a1 + 368) = -1;
    v19 = fd_mmap(*(a1 + 344));
    *(a1 + 368) = v19;
    if (v19 == -1)
    {
      goto LABEL_31;
    }

    *(a1 + 360) = v18;
  }

  v20 = *(a1 + 224);
  if (v20 < 2)
  {
LABEL_27:
    result = 1;
    goto LABEL_34;
  }

  v21 = 0;
  v22 = 1;
  while (1)
  {
    v23 = *(a1 + 296);
    if ((v23 + 1) <= 1)
    {
      break;
    }

    v24 = v23 + v21;
    if (*(v24 + 24) != -2)
    {
      bucket_entry = _data_map_ext_get_bucket_entry(a1, *(v24 + 40), v22, 0, 0);
      if (!bucket_entry || *bucket_entry)
      {
        goto LABEL_31;
      }

      *bucket_entry = v22;
      v20 = *(a1 + 224);
    }

    ++v22;
    v21 += 24;
    if (v22 >= v20)
    {
      goto LABEL_27;
    }
  }

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
  memset(buf, 0, sizeof(buf));
  v27 = *__error();
  v28 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v33 = *(a1 + 224);
    v34 = *(a1 + 296);
    v35 = fd_name(*(a1 + 248), buf, 0x100uLL);
    v36 = 136316674;
    v37 = "_data_map_ext_get_offset_entry";
    v38 = 1024;
    v39 = 417;
    v40 = 2048;
    v41 = v22;
    v42 = 2048;
    v43 = v33;
    v44 = 2048;
    v45 = a1;
    v46 = 2048;
    v47 = v34;
    v48 = 2080;
    v49 = v35;
    _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", &v36, 0x44u);
  }

  *__error() = v27;
LABEL_31:
  v29 = *__error();
  v30 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "_data_map_ext_rehash";
    *&buf[12] = 1024;
    *&buf[14] = 645;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: re-build hash error %p", buf, 0x1Cu);
  }

  v31 = __error();
  result = 0;
  *v31 = v29;
LABEL_34:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void data_map_ext_destroy(uint64_t a1)
{
  if (a1)
  {
    makeThreadId();
    if ((*(a1 + 232) + 1) >= 2)
    {
      v49 = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a1, 0, add_explicit + 1);
      v47 = HIDWORD(v10);
      v48 = v10;
      v45 = v12;
      v46 = v11;
      v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
      v14 = *(v13 + 312);
      v15 = *(v13 + 224);
      if (v15)
      {
        v15(*(v13 + 288));
      }

      v44 = v48;
      v43 = v47;
      v42 = __PAIR64__(v46, v45);
      if (_setjmp(v13))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v41 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v41, 2u);
        }

        *(v13 + 312) = v14;
        CIOnThreadCleanUpReset(v42);
        dropThreadId(v44, 1, add_explicit + 1);
        CICleanUpReset(v44, HIDWORD(v42));
        v16 = 0;
      }

      else
      {
        v20 = *(*(a1 + 232) + 88);
        v49 = 1;
        v21 = threadData[9 * v44 + 1] + 320 * v43;
        *(v21 + 312) = v14;
        v22 = *(v21 + 232);
        if (v22)
        {
          v22(*(v21 + 288));
        }

        dropThreadId(v44, 0, add_explicit + 1);
        v16 = v20;
      }

      v23 = v16;
      if ((v49 & 1) == 0)
      {
        v23 = *(a1 + 240);
      }

      munmap(*(a1 + 232), v23);
      *(a1 + 232) = -1;
      fd_release(*(a1 + 248));
      *(a1 + 248) = 0;
      v24 = *(a1 + 256);
      if (v24)
      {
        fd_release(v24);
        *(a1 + 256) = 0;
      }
    }

    else
    {
      v2 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a1, 0, v2 + 1);
      v47 = HIDWORD(v3);
      v48 = v3;
      v45 = v5;
      v46 = v4;
      v6 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
      v7 = *(v6 + 312);
      v8 = *(v6 + 224);
      if (v8)
      {
        v8(*(v6 + 288));
      }

      v44 = v48;
      v43 = v47;
      v42 = __PAIR64__(v46, v45);
      if (_setjmp(v6))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v41 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v41, 2u);
        }

        *(v6 + 312) = v7;
        CIOnThreadCleanUpReset(v42);
        dropThreadId(v44, 1, v2 + 1);
        CICleanUpReset(v44, HIDWORD(v42));
      }

      else
      {
        v17 = *(a1 + 272);
        if (v17)
        {
          v18 = *(v17 + 16);
          if (v18 < 3)
          {
            v19 = v18 + 1;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }

        SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 2u, v19, *(a1 + 224));
        v25 = *(a1 + 272);
        if (v25 && !*(v25 + 16))
        {
          if (*(a1 + 474) == 1)
          {
            v26 = *(a1 + 368);
            v27 = 8 * *(a1 + 376);
            fd_system_status_stall_if_busy();
            msync(v26, v27, 4);
            _fd_unlink_with_origin(*(a1 + 344), 0);
            munmap(*(a1 + 368), *(a1 + 360));
            *(a1 + 368) = -1;
          }

          if (*(a1 + 475) == 1)
          {
            v28 = *(a1 + 296);
            v29 = 24 * *(a1 + 224);
            fd_system_status_stall_if_busy();
            msync(v28, v29, 4);
            munmap(*(a1 + 296), *(a1 + 288));
            *(a1 + 296) = -1;
            fd_truncate(*(a1 + 280), 24 * *(a1 + 224));
          }
        }

        v30 = threadData[9 * v44 + 1] + 320 * v43;
        *(v30 + 312) = v7;
        v31 = *(v30 + 232);
        if (v31)
        {
          v31(*(v30 + 288));
        }

        dropThreadId(v44, 0, v2 + 1);
      }

      v32 = *(a1 + 272);
      if (v32)
      {
        free(v32);
        *(a1 + 272) = 0;
      }

      fd_release(*(a1 + 248));
      *(a1 + 248) = 0;
      v33 = *(a1 + 296);
      if (v33 != -1)
      {
        munmap(v33, *(a1 + 288));
        *(a1 + 288) = 0;
        *(a1 + 296) = -1;
      }

      fd_release(*(a1 + 280));
      *(a1 + 280) = 0;
      if (*(a1 + 304))
      {
        v34 = *(a1 + 320);
        v35 = *(a1 + 304);
        if (v34 + 1 >= 2)
        {
          v36 = 24 * *(a1 + 224);
          fd_system_status_stall_if_busy();
          msync(v34, v36, 4);
          munmap(*(a1 + 320), *(a1 + 288));
          *(a1 + 320) = -1;
          v35 = *(a1 + 304);
        }

        fd_truncate(v35, 0);
        _fd_unlink_with_origin(*(a1 + 304), 0);
        fd_release(*(a1 + 304));
        *(a1 + 304) = 0;
      }

      v37 = *(a1 + 368);
      if (v37 != -1)
      {
        munmap(v37, *(a1 + 360));
        *(a1 + 360) = 0;
        *(a1 + 368) = -1;
      }

      fd_release(*(a1 + 344));
      *(a1 + 344) = 0;
    }

    v38 = *(a1 + 464);
    if (v38)
    {
      v39 = v38[2];
      if (v39)
      {
        CFRelease(v39);
      }

      free(v38);
      *(a1 + 464) = 0;
    }

    v40 = *(a1 + 496);
    if (v40)
    {
      CFRelease(v40);
    }

    if ((*(a1 + 477) & 1) == 0)
    {
      db_rwlock_destroy(a1);
    }

    free(a1);
  }
}

uint64_t _data_map_ext_dirty(uint64_t result)
{
  v1 = *(result + 272);
  if (*(v1 + 16))
  {
    v2 = result;
    *(v1 + 16) = 0;
    fd_pwrite(*(result + 248), v1, 0x54uLL, 0);
    v3 = *(v2 + 248);

    return fd_sync(v3, 0);
  }

  return result;
}

uint64_t _data_map_ext_get_bucket_entry(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5)
{
  v88 = *MEMORY[0x1E69E9840];
  if (*(a1 + 224) > a3)
  {
    v7 = a2;
    v8 = 0;
    v9 = *(a1 + 376);
    v10 = a2 % v9;
    v11 = v9;
    v52 = v9;
    while (1)
    {
      v12 = v10;
      if (v10 < v11)
      {
        break;
      }

LABEL_41:
      v38 = v8 | (v12 != v9);
      v8 = 1;
      v11 = v10;
      v10 = 0;
      if (v38)
      {
        goto LABEL_47;
      }
    }

    v54 = v8;
    v13 = v10;
    while (1)
    {
      v14 = *(a1 + 368);
      v15 = *(v14 + 8 * v13);
      if (v15)
      {
        v16 = v15 == a3;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
LABEL_51:
        result = v14 + 8 * v13;
        goto LABEL_52;
      }

      if (!a3)
      {
        if (*(a1 + 224) <= v15 || (v17 = *(a1 + 296), (v17 + 1) <= 1))
        {
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          memset(v75, 0, sizeof(v75));
          v43 = *__error();
          v44 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v49 = *(a1 + 224);
            v50 = *(a1 + 296);
            v51 = fd_name(*(a1 + 248), v75, 0x100uLL);
            *buf = 136316674;
            v62 = "_data_map_ext_get_offset_entry";
            v63 = 1024;
            v64 = 417;
            v65 = 2048;
            v66 = v15;
            v67 = 2048;
            v68 = v49;
            v69 = 2048;
            v70 = a1;
            v71 = 2048;
            v72 = v50;
            v73 = 2080;
            v74 = v51;
            _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", buf, 0x44u);
          }

          v45 = __error();
          result = 0;
          *v45 = v43;
          goto LABEL_52;
        }

        v18 = (v17 + 24 * v15);
        v19 = *v18;
        if (*v18 == -2)
        {
          goto LABEL_47;
        }

        if (v18[2] == v7)
        {
          v20 = *(a1 + 220);
          HIDWORD(v58) = 0;
          __s2 = 0;
          if (v19 == -1)
          {
            v26 = *(a1 + 496);
            if (!v26)
            {
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              v76 = 0u;
              v77 = 0u;
              memset(v75, 0, sizeof(v75));
              v30 = *__error();
              v31 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v34 = fd_name(*(a1 + 248), v75, 0x100uLL);
                *buf = 136316162;
                v62 = "_data_map_ext_get_data_entry";
                v63 = 1024;
                v64 = 457;
                v65 = 2048;
                v66 = -1;
                v67 = 2048;
                v68 = a1;
                v69 = 2080;
                v70 = v34;
                _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
              }

              *__error() = v30;
              fd_name(*(a1 + 248), v75, 0x100uLL);
              si_analytics_log_3138("(2)invalid data offset 0x%lx %p %s");
              goto LABEL_31;
            }

            Value = CFDictionaryGetValue(v26, v15);
            if (!Value)
            {
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              v76 = 0u;
              v77 = 0u;
              memset(v75, 0, sizeof(v75));
              v32 = *__error();
              v33 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v35 = fd_name(*(a1 + 248), v75, 0x100uLL);
                *buf = 136316162;
                v62 = "_data_map_ext_get_data_entry";
                v63 = 1024;
                v64 = 451;
                v65 = 2048;
                v66 = -1;
                v67 = 2048;
                v68 = a1;
                v69 = 2080;
                v70 = v35;
                _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
              }

              *__error() = v32;
              fd_name(*(a1 + 248), v75, 0x100uLL);
              si_analytics_log_3138("(1)invalid data offset 0x%lx %p %s");
              goto LABEL_31;
            }

            v28 = Value;
            v25 = CFDataGetLength(Value) - *(a1 + 220);
            __s2 = &CFDataGetBytePtr(v28)[*(a1 + 220)];
            CFDataGetBytePtr(v28);
            v29 = *(a1 + 220);
            __memcpy_chk();
          }

          else
          {
            v22 = *(v18 + 2);
            v21 = *(v18 + 3);
            *buf = 0;
            v23 = *(a1 + 488);
            if (!v23)
            {
              goto LABEL_31;
            }

            v53 = v21;
            v24 = (*(a1 + 432))(v23, v22);
            v60 = 0;
            if (!v24)
            {
              if (data_entry_restore_ext__COUNT_ >= 1)
              {
                --data_entry_restore_ext__COUNT_;
                goto LABEL_38;
              }

              if (++data_entry_restore_ext__COUNT2_ == 100)
              {
                data_entry_restore_ext__COUNT2_ = 0;
LABEL_38:
                v36 = *__error();
                v37 = _SILogForLogForCategory(16);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  *v75 = 136316418;
                  *&v75[4] = "data_entry_restore_ext";
                  *&v75[12] = 1024;
                  *&v75[14] = 396;
                  *&v75[18] = 2048;
                  *&v75[20] = v15;
                  *&v75[28] = 1024;
                  *&v75[30] = v22;
                  *&v75[34] = 2048;
                  *&v75[36] = v19;
                  *&v75[44] = 1024;
                  *&v75[46] = v53;
                  _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: data id %lld invalid indexId %u offset 0x%llx meta 0x%x", v75, 0x32u);
                }

                *__error() = v36;
              }

LABEL_31:
              v7 = a2;
              goto LABEL_32;
            }

            __s2 = (*(a1 + 440))(v24, v19, v53, &v60, buf);
            v25 = *buf;
            HIDWORD(v58) = v60;
          }

          if (v25 + v20 != a5 || memcmp(&a4[*(a1 + 220)], __s2, v25))
          {
            goto LABEL_31;
          }

          v7 = a2;
          if (!memcmp(a4, &v58 + 4, v20))
          {
            goto LABEL_51;
          }
        }
      }

LABEL_32:
      if (v11 == ++v13)
      {
        v12 = v11;
        v9 = v52;
        v8 = v54;
        goto LABEL_41;
      }
    }
  }

  if (!a3)
  {
LABEL_47:
    result = 0;
    goto LABEL_52;
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  memset(v75, 0, sizeof(v75));
  v39 = *__error();
  v40 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v47 = *(a1 + 224);
    v48 = fd_name(*(a1 + 248), v75, 0x100uLL);
    *buf = 136316418;
    v62 = "_data_map_ext_get_bucket_entry";
    v63 = 1024;
    v64 = 531;
    v65 = 2048;
    v66 = a3;
    v67 = 2048;
    v68 = v47;
    v69 = 2048;
    v70 = a1;
    v71 = 2080;
    v72 = v48;
    _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
  }

  v41 = __error();
  result = 0;
  *v41 = v39;
LABEL_52:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _data_map_ext_match_address(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 232);
    if (v4 != -1)
    {
      if (v4)
      {
        if (v4 <= a2)
        {
          v5 = *(result + 240);
          if (&v4[v5] > a2)
          {
            v6 = *(result + 248);
            v7 = "data ro header";
            v8 = a2;
            v9 = v3[30];
LABEL_21:
            log_map_access_error(v8, v4, v5, v9, v7, v6);
            return 1;
          }
        }
      }

      return 0;
    }

    if (si_vector_index_contains_address(*(result + 488), a2))
    {
      return 1;
    }

    v4 = v3[37];
    v10 = (v4 + 1) < 2 || v4 > a2;
    if (v10 || (v5 = v3[36], &v4[v5] <= a2))
    {
      v4 = v3[46];
      if ((v4 + 1) < 2)
      {
        return 0;
      }

      if (v4 > a2)
      {
        return 0;
      }

      v5 = v3[45];
      if (&v4[v5] <= a2)
      {
        return 0;
      }

      v6 = v3[43];
      v9 = v3[44];
      v7 = "data buckets";
    }

    else
    {
      v9 = v3[41];
      v6 = v3[35];
      v7 = "data offsets";
    }

    v8 = a2;
    goto LABEL_21;
  }

  return result;
}

uint64_t _data_map_ext_sync_data(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v32 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a1, 0, add_explicit + 1);
  v30 = HIDWORD(v3);
  v31 = v3;
  v28 = v5;
  v29 = v4;
  v6 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v7 = *(v6 + 312);
  v8 = *(v6 + 224);
  if (v8)
  {
    v8(*(v6 + 288));
  }

  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v6 + 312) = v7;
    CIOnThreadCleanUpReset(v28);
    dropThreadId(v31, 1, add_explicit + 1);
    CICleanUpReset(v31, v29);
  }

  else
  {
    if (!*(a1 + 480) && !*(*(a1 + 272) + 16))
    {
      SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 7u, 1u, *(a1 + 224));
      if (*(a1 + 473) == 1)
      {
        *(a1 + 473) = 0;
      }

      if (*(a1 + 475) == 1)
      {
        v9 = *(*(a1 + 272) + 52);
        v10 = *(a1 + 296) + 24 * v9;
        v11 = -*MEMORY[0x1E69E9AC8];
        v12 = 24 * (*(a1 + 224) - v9);
        fd_system_status_stall_if_busy();
        msync((v10 & v11), v12, 16);
        *(a1 + 475) = 0;
      }

      if (*(a1 + 474) == 1)
      {
        v13 = *(a1 + 368);
        v14 = 8 * *(a1 + 376);
        fd_system_status_stall_if_busy();
        msync(v13, v14, 16);
        *(a1 + 474) = 0;
      }

      v15 = *__error();
      v16 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 224);
        *buf = 134217984;
        *&buf[4] = v17;
        _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "sd update next_id = %lld", buf, 0xCu);
      }

      *__error() = v15;
      v18 = *(a1 + 272);
      *(v18 + 28) = *(a1 + 224);
      *(v18 + 20) = *(a1 + 376);
      *(v18 + 60) = *(a1 + 384);
      *(v18 + 76) = *(a1 + 400);
      *(v18 + 16) = 0;
      fd_pwrite(*(a1 + 248), v18, 0x54uLL, 0);
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      *buf = 0u;
      v40 = 0u;
      v19 = *__error();
      v20 = _SILogForLogForCategory(7);
      v21 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = fd_name(*(a1 + 248), buf, 0x100uLL);
        v23 = *(a1 + 224) - 1;
        *v33 = 136315650;
        v34 = v22;
        v35 = 2080;
        v36 = "sync";
        v37 = 2048;
        v38 = v23;
        _os_log_impl(&dword_1C278D000, v20, v21, "%s complete %s map with count: %lld", v33, 0x20u);
      }

      *__error() = v19;
    }

    v32 = 1;
    v24 = threadData[9 * v31 + 1] + 320 * v30;
    *(v24 + 312) = v7;
    v25 = *(v24 + 232);
    if (v25)
    {
      v25(*(v24 + 288));
    }

    dropThreadId(v31, 0, add_explicit + 1);
  }

  if (v32 == 1)
  {
    result = *(a1 + 480);
  }

  else
  {
    *(a1 + 480) = 22;
    result = 22;
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _data_map_ext_sync_header(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v26 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a1, 0, add_explicit + 1);
  v24 = HIDWORD(v3);
  v25 = v3;
  v22 = v5;
  v23 = v4;
  v6 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v7 = *(v6 + 312);
  v8 = *(v6 + 224);
  if (v8)
  {
    v8(*(v6 + 288));
  }

  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v33 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v33, 2u);
    }

    *(v6 + 312) = v7;
    CIOnThreadCleanUpReset(v22);
    dropThreadId(v25, 1, add_explicit + 1);
    CICleanUpReset(v25, v23);
  }

  else
  {
    if (!*(a1 + 480))
    {
      v9 = *(*(a1 + 272) + 16);
      if (v9 != 1)
      {
        if (v9 == 2)
        {
          v10 = 3;
        }

        else
        {
          v10 = 0;
        }

        if (v9)
        {
          v11 = v10;
        }

        else
        {
          v11 = 1;
        }

        SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 0xAu, v11, *(a1 + 224));
        v12 = *(a1 + 272);
        *(v12 + 44) = *(v12 + 20);
        *(v12 + 28) = *(a1 + 224);
        *(v12 + 20) = *(a1 + 376);
        *(v12 + 16) = 0;
        fd_pwrite(*(a1 + 248), v12, 0x54uLL, 0);
        fd_sync(*(a1 + 248), 0);
        *(*(a1 + 272) + 16) = 2;
        SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 0xBu, 3u, *(a1 + 224));
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
        *v33 = 0u;
        v34 = 0u;
        v13 = *__error();
        v14 = _SILogForLogForCategory(7);
        v15 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v14, v15))
        {
          v16 = fd_name(*(a1 + 248), v33, 0x100uLL);
          v17 = *(a1 + 224) - 1;
          *buf = 136315650;
          v28 = v16;
          v29 = 2080;
          v30 = "sync";
          v31 = 2048;
          v32 = v17;
          _os_log_impl(&dword_1C278D000, v14, v15, "%s complete %s header with count: %llu", buf, 0x20u);
        }

        *__error() = v13;
      }
    }

    v26 = 1;
    v18 = threadData[9 * v25 + 1] + 320 * v24;
    *(v18 + 312) = v7;
    v19 = *(v18 + 232);
    if (v19)
    {
      v19(*(v18 + 288));
    }

    dropThreadId(v25, 0, add_explicit + 1);
  }

  if (v26 == 1)
  {
    result = *(a1 + 480);
  }

  else
  {
    *(a1 + 480) = 22;
    result = 22;
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _data_map_ext_commit(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (_data_map_ext_rdlock(a1))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_41;
  }

  v35 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a1, 0, add_explicit + 1);
  *buf = HIDWORD(v4);
  LODWORD(v42[0]) = v4;
  v34 = __PAIR64__(v5, v6);
  v7 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v8 = *(v7 + 312);
  v9 = *(v7 + 224);
  if (v9)
  {
    v9(*(v7 + 288));
  }

  v33 = v42[0];
  v32 = *buf;
  v31 = v34;
  if (!_setjmp(v7))
  {
    v11 = *(a1 + 272);
    if (v11)
    {
      v12 = *(v11 + 16);
      if (v12 < 3)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 5u, v13, *(a1 + 224));
    v14 = *(*(a1 + 272) + 16);
    if (v14)
    {
      if (v14 != 1)
      {
        v17 = *(a1 + 408);
        v18 = *(a1 + 416);
        v15 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }
    }

    else
    {
      v15 = _data_map_ext_sync_data(a1);
      if (v15 || (v15 = _data_map_ext_sync_header(a1), v15))
      {
LABEL_21:
        v16 = *(a1 + 272);
        v17 = *(a1 + 408);
        v18 = *(a1 + 416);
        if (!v16)
        {
          v20 = 0;
LABEL_33:
          v21 = v15;
          SIActivityJournalEvent(v17, v18, 6u, v20, *(a1 + 224));
          v35 = 1;
          v22 = threadData[9 * v33 + 1] + 320 * v32;
          *(v22 + 312) = v8;
          v23 = *(v22 + 232);
          if (v23)
          {
            v23(*(v22 + 288));
          }

          dropThreadId(v33, 0, add_explicit + 1);
          v10 = v21;
          goto LABEL_36;
        }

        v14 = *(v16 + 16);
LABEL_24:
        if (v14 == 1)
        {
          v19 = 2;
        }

        else
        {
          v19 = 0;
        }

        if (v14 == 2)
        {
          v19 = 3;
        }

        if (v14)
        {
          v20 = v19;
        }

        else
        {
          v20 = 1;
        }

        goto LABEL_33;
      }
    }

    v15 = data_map_ext_shadow(a1);
    if (!v15)
    {
      v15 = data_map_ext_commit_shadow(a1);
      if (!v15)
      {
        v15 = data_map_ext_commit_shadow_complete(a1);
      }
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v30 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v30, 2u);
  }

  *(v7 + 312) = v8;
  CIOnThreadCleanUpReset(v31);
  dropThreadId(v33, 1, add_explicit + 1);
  CICleanUpReset(v33, HIDWORD(v31));
  v10 = 0xFFFFFFFFLL;
LABEL_36:
  if ((v35 & 1) == 0)
  {
    *(a1 + 480) = 22;
  }

  memset(v42, 0, sizeof(v42));
  v24 = *__error();
  v25 = _SILogForLogForCategory(7);
  v26 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = fd_name(*(a1 + 248), v42, 0x100uLL);
    v28 = *(a1 + 224) - 1;
    *buf = 136315650;
    v37 = v27;
    v38 = 2080;
    v39 = "commit";
    v40 = 2048;
    v41 = v28;
    _os_log_impl(&dword_1C278D000, v25, v26, "%s complete %s with count: %lld", buf, 0x20u);
  }

  *__error() = v24;
  _data_map_ext_unlock(a1);
  result = v10;
LABEL_41:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t data_map_ext_shadow(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 480) || *(*(a1 + 272) + 16) != 2)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 272) + 28);
      v17 = 134217984;
      v18 = v10;
      _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "Already shadowed; don't shadow next_id = %lld", &v17, 0xCu);
    }

    *__error() = v8;
  }

  else
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 272) + 28);
      v17 = 134217984;
      v18 = v4;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "shadow update next_id = %lld", &v17, 0xCu);
    }

    *__error() = v2;
    v5 = *(a1 + 272);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6 < 3)
      {
        v7 = v6 + 1;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 0xCu, v7, *(a1 + 224));
    *(*(a1 + 272) + 16) = 2;
    sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(a1 + 248), ".shadow", 514);
    *(a1 + 256) = sibling_with_suffix_protected;
    fd_pwrite(sibling_with_suffix_protected, *(a1 + 272), 0x54uLL, 0);
    v14 = *(a1 + 272);
    if (v14)
    {
      v15 = *(v14 + 16);
      if (v15 < 3)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 0xDu, v16, *(a1 + 224));
  }

  result = *(a1 + 480);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t data_map_ext_commit_shadow(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 480) || *(*(a1 + 272) + 16) != 2)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 224);
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Already shadowed cs; don't shadow next_id = %lld", &v10, 0xCu);
    }

    *__error() = v5;
  }

  else
  {
    SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 0xEu, 3u, *(a1 + 224));
    v2 = *__error();
    v3 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 224);
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "commit shadow update next_id = %lld", &v10, 0xCu);
    }

    *__error() = v2;
    fd_sync(*(a1 + 256), 0);
  }

  fd_release(*(a1 + 256));
  *(a1 + 256) = 0;
  result = *(a1 + 480);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t data_map_ext_commit_shadow_complete(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 480) || *(*(a1 + 272) + 16) != 2)
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 224);
      v14 = 134217984;
      v15 = v11;
      _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Already shadowed csc; don't shadow next_id = %lld", &v14, 0xCu);
    }

    *__error() = v9;
  }

  else
  {
    SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 0xFu, 3u, *(a1 + 224));
    v2 = *__error();
    v3 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 224);
      v14 = 134217984;
      v15 = v4;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "commit shadow complete update next_id = %lld", &v14, 0xCu);
    }

    *__error() = v2;
    v5 = *(a1 + 272);
    *(v5 + 16) = 1;
    fd_pwrite(*(a1 + 248), v5, 0x54uLL, 0);
    fd_sync(*(a1 + 248), 0);
    v6 = *(a1 + 272);
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7 < 3)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 0x10u, v8, *(a1 + 224));
  }

  result = *(a1 + 480);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t data_map_ext_flush(uint64_t a1)
{
  if (_data_map_ext_rdlock(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v26 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a1, 0, add_explicit + 1);
  v24 = HIDWORD(v4);
  v25 = v4;
  v23 = __PAIR64__(v5, v6);
  v7 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v8 = *(v7 + 312);
  v9 = *(v7 + 224);
  if (v9)
  {
    v9(*(v7 + 288));
  }

  v22 = v25;
  v21 = v24;
  v20 = v23;
  if (_setjmp(v7))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v19, 2u);
    }

    *(v7 + 312) = v8;
    CIOnThreadCleanUpReset(v20);
    dropThreadId(v22, 1, add_explicit + 1);
    CICleanUpReset(v22, HIDWORD(v20));
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = *(a1 + 272);
    if (v11)
    {
      v12 = *(v11 + 16);
      if (v12 < 3)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 4u, v13, *(a1 + 224));
    if (*(*(a1 + 272) + 16))
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = _data_map_ext_sync_data(a1);
    }

    v26 = 1;
    v14 = threadData[9 * v22 + 1] + 320 * v21;
    *(v14 + 312) = v8;
    v15 = *(v14 + 232);
    if (v15)
    {
      v15(*(v14 + 288));
    }

    dropThreadId(v22, 0, add_explicit + 1);
  }

  if ((v26 & 1) == 0)
  {
    *(a1 + 480) = 22;
  }

  v16 = *(a1 + 272);
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

  SIActivityJournalEvent(*(a1 + 408), *(a1 + 416), 4u, v18, *(a1 + 224));
  _data_map_ext_unlock(a1);
  return v10;
}

uint64_t dm_hash(uint64_t a1, int a2)
{
  v2 = -1759636613;
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 3;
  }

  v4 = (a1 + (v3 & 0xFFFFFFFC));
  if ((a2 + 3) >= 7)
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
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) != 2)
    {
      v13 = v4[2] << 16;
    }

    v13 |= v4[1] << 8;
  }

  else if ((a2 & 3) == 0)
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
  v16 = -1028477387 * ((-2048144789 * (v2 ^ a2)) ^ ((-2048144789 * (v2 ^ a2)) >> 13));
  return v16 ^ HIWORD(v16);
}

uint64_t data_map_ext_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, char *a5, uint64_t a6)
{
  v112 = *MEMORY[0x1E69E9840];
  v69 = *(a2 + 376);
  v83 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v13 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a2, 0, add_explicit + 1);
  v81 = HIDWORD(v13);
  v82 = v13;
  v80 = __PAIR64__(v14, v15);
  v16 = threadData[9 * v13 + 1] + 320 * HIDWORD(v13);
  v17 = *(v16 + 312);
  v18 = *(v16 + 224);
  if (v18)
  {
    v18(*(v16 + 288));
  }

  v79 = v82;
  v78 = v81;
  v77 = v80;
  if (_setjmp(v16))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v99 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v99, 2u);
    }

    *(v16 + 312) = v17;
    CIOnThreadCleanUpReset(v77);
    dropThreadId(v79, 1, add_explicit + 1);
    CICleanUpReset(v79, HIDWORD(v77));
    v19 = 0;
    goto LABEL_52;
  }

  v68 = v17;
  v70 = a1;
  v71 = a3;
  v72 = a4;
  v73 = a5;
  v20 = 0;
  v21 = v69;
  v22 = a3 % v69;
  v67 = a3 % v69;
  v23 = 0;
  while (1)
  {
    v24 = *(a2 + 368);
    v25 = *(v24 + 8 * v22);
    if (!v25)
    {
      break;
    }

    if (*(a2 + 224) <= v25 || (v26 = *(a2 + 296), (v26 + 1) <= 1))
    {
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      memset(v99, 0, sizeof(v99));
      v27 = *__error();
      v28 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        log = v28;
        v41 = *(a2 + 224);
        v42 = v20;
        v43 = a6;
        v44 = add_explicit;
        v45 = *(a2 + 296);
        v46 = fd_name(*(a2 + 248), v99, 0x100uLL);
        *buf = 136316674;
        v86 = "_data_map_ext_get_offset_entry";
        v87 = 1024;
        v88 = 417;
        v89 = 2048;
        v90 = v25;
        v91 = 2048;
        v92 = v41;
        v21 = v69;
        v93 = 2048;
        v94 = a2;
        v95 = 2048;
        v96 = v45;
        add_explicit = v44;
        a6 = v43;
        v20 = v42;
        v97 = 2080;
        v98 = v46;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", buf, 0x44u);
      }

      *__error() = v27;
      goto LABEL_14;
    }

    v31 = (v26 + 24 * v25);
    if (*v31 != -2 && v31[2] == v71)
    {
      v75 = 0;
      __s2 = 0;
      v32 = *(v24 + 8 * v22);
      v33 = *v31;
      if (*v31 == -1)
      {
        v47 = *(a2 + 496);
        if (!v47)
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          memset(v99, 0, sizeof(v99));
          v50 = *__error();
          v51 = _SILogForLogForCategory(v20);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v54 = fd_name(*(a2 + 248), v99, 0x100uLL);
            *buf = 136316162;
            v86 = "_data_map_ext_get_data_entry";
            v87 = 1024;
            v88 = 457;
            v89 = 2048;
            v90 = -1;
            v91 = 2048;
            v92 = a2;
            v93 = 2080;
            v94 = v54;
            _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v50;
          fd_name(*(a2 + 248), v99, 0x100uLL);
          si_analytics_log_3138("(2)invalid data offset 0x%lx %p %s");
          goto LABEL_14;
        }

        Value = CFDictionaryGetValue(v47, v32);
        if (!Value)
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          memset(v99, 0, sizeof(v99));
          v52 = *__error();
          v53 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v55 = fd_name(*(a2 + 248), v99, 0x100uLL);
            *buf = 136316162;
            v86 = "_data_map_ext_get_data_entry";
            v87 = 1024;
            v88 = 451;
            v89 = 2048;
            v90 = -1;
            v91 = 2048;
            v92 = a2;
            v93 = 2080;
            v94 = v55;
            _os_log_error_impl(&dword_1C278D000, v53, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v52;
          fd_name(*(a2 + 248), v99, 0x100uLL);
          si_analytics_log_3138("(1)invalid data offset 0x%lx %p %s");
          goto LABEL_14;
        }

        v64 = v22;
        v49 = Value;
        v74 = CFDataGetLength(Value) - *(a2 + 220);
        __s2 = &CFDataGetBytePtr(v49)[*(a2 + 220)];
        CFDataGetBytePtr(v49);
        v39 = *(a2 + 220);
        __memcpy_chk();
        v40 = v74;
        goto LABEL_27;
      }

      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      *buf = v20;
      v36 = *(a2 + 488);
      if (v36)
      {
        v64 = v22;
        v65 = v32;
        v66 = v34;
        v37 = v33;
        v38 = (*(a2 + 432))(v36, v35);
        v84 = v20;
        if (v38)
        {
          __s2 = (*(a2 + 440))(v38, v37, v66, &v84, buf);
          v75 = v84;
          v39 = *(a2 + 220);
          v40 = *buf;
LABEL_27:
          if (v39 + v40 == a6)
          {
            if (!memcmp(&v73[v39], __s2, a6 - v39) && !memcmp(v73, &v75, v39))
            {
              v20 = v20;
              if (v23 < v72)
              {
                *(v70 + 8 * v23) = *(v24 + 8 * v64);
              }

              v23 = (v23 + 1);
            }

            else
            {
              v20 = v20;
            }
          }

          goto LABEL_14;
        }

        v56 = v35;
        if (data_entry_restore_ext__COUNT_ < 1)
        {
          if (++data_entry_restore_ext__COUNT2_ == 100)
          {
            data_entry_restore_ext__COUNT2_ = v20;
            v57 = *__error();
            v58 = _SILogForLogForCategory(16);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_45;
            }

            goto LABEL_46;
          }
        }

        else
        {
          --data_entry_restore_ext__COUNT_;
          v57 = *__error();
          v58 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
LABEL_45:
            *v99 = 136316418;
            *&v99[4] = "data_entry_restore_ext";
            *&v99[12] = 1024;
            *&v99[14] = 396;
            *&v99[18] = 2048;
            *&v99[20] = v65;
            *&v99[28] = 1024;
            *&v99[30] = v56;
            *&v99[34] = 2048;
            *&v99[36] = v37;
            *&v99[44] = 1024;
            *&v99[46] = v66;
            _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, "%s:%d: data id %lld invalid indexId %u offset 0x%llx meta 0x%x", v99, 0x32u);
          }

LABEL_46:
          *__error() = v57;
        }

        v21 = v69;
      }
    }

LABEL_14:
    v29 = 0;
    if (v22 + 1 != v21)
    {
      v29 = v22 + 1;
    }

    v22 = v29;
    v30 = v23;
    if (v29 == v67)
    {
      goto LABEL_49;
    }
  }

  v30 = v23;
LABEL_49:
  v19 = v30;
  v83 = 1;
  v59 = threadData[9 * v79 + 1] + 320 * v78;
  *(v59 + 312) = v68;
  v60 = *(v59 + 232);
  if (v60)
  {
    v60(*(v59 + 288));
  }

  dropThreadId(v79, 0, add_explicit + 1);
LABEL_52:
  result = v19;
  if ((v83 & 1) == 0)
  {
    result = 0;
    *(a2 + 480) = 22;
  }

  v62 = *MEMORY[0x1E69E9840];
  return result;
}

CFIndex data_map_ext_id_get_with_key(uint64_t a1, uint64_t a2, size_t a3, void *a4)
{
  v5 = a3;
  v109 = *MEMORY[0x1E69E9840];
  v8 = dm_hash(a2, a3);
  if (_data_map_ext_rdlock(a1))
  {
    v9 = 0;
    goto LABEL_57;
  }

  v80 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a1, 0, add_explicit + 1);
  v78 = HIDWORD(v11);
  v79 = v11;
  v77 = __PAIR64__(v12, v13);
  v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v15 = *(v14 + 312);
  v16 = *(v14 + 224);
  if (v16)
  {
    v16(*(v14 + 288));
  }

  v76 = v79;
  v75 = v78;
  v74 = v77;
  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v96 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v96, 2u);
    }

    *(v14 + 312) = v15;
    CIOnThreadCleanUpReset(v74);
    dropThreadId(v76, 1, add_explicit + 1);
    CICleanUpReset(v76, HIDWORD(v74));
    v9 = 0;
    goto LABEL_55;
  }

  __s1 = a2;
  v71 = a4;
  v17 = *(a1 + 376);
  v18 = v8 % v17;
  v67 = v8 % v17;
  __n = *(a1 + 220);
  while (1)
  {
    v19 = *(a1 + 368);
    v20 = *(v19 + 8 * v18);
    if (!v20)
    {
      break;
    }

    if (*(a1 + 224) <= v20 || (v21 = *(a1 + 296), (v21 + 1) <= 1))
    {
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      memset(v96, 0, sizeof(v96));
      v22 = *__error();
      v23 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        log = v23;
        v36 = v17;
        v37 = *(a1 + 224);
        v69 = v8;
        v38 = v15;
        v39 = v5;
        v40 = add_explicit;
        v41 = *(a1 + 296);
        v42 = fd_name(*(a1 + 248), v96, 0x100uLL);
        *buf = 136316674;
        v83 = "_data_map_ext_get_offset_entry";
        v84 = 1024;
        v85 = 417;
        v86 = 2048;
        v87 = v20;
        v88 = 2048;
        v89 = v37;
        v17 = v36;
        v90 = 2048;
        v91 = a1;
        v92 = 2048;
        v93 = v41;
        add_explicit = v40;
        v5 = v39;
        v15 = v38;
        v8 = v69;
        v94 = 2080;
        v95 = v42;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", buf, 0x44u);
      }

      *__error() = v22;
      goto LABEL_16;
    }

    v25 = (v21 + 24 * v20);
    if (*v25 != -2 && v25[2] == v8)
    {
      v26 = v18;
      v27 = *(a1 + 368);
      v72 = 0;
      __s2 = 0;
      v28 = *(v19 + 8 * v18);
      v29 = *v25;
      if (*v25 == -1)
      {
        v43 = *(a1 + 496);
        if (!v43)
        {
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          memset(v96, 0, sizeof(v96));
          v48 = *__error();
          v49 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v52 = fd_name(*(a1 + 248), v96, 0x100uLL);
            *buf = 136316162;
            v83 = "_data_map_ext_get_data_entry";
            v84 = 1024;
            v85 = 457;
            v86 = 2048;
            v87 = -1;
            v88 = 2048;
            v89 = a1;
            v90 = 2080;
            v91 = v52;
            _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v48;
          fd_name(*(a1 + 248), v96, 0x100uLL);
          si_analytics_log_3138("(2)invalid data offset 0x%lx %p %s");
          goto LABEL_16;
        }

        Value = CFDictionaryGetValue(v43, v28);
        if (!Value)
        {
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          memset(v96, 0, sizeof(v96));
          v50 = *__error();
          v51 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v53 = fd_name(*(a1 + 248), v96, 0x100uLL);
            *buf = 136316162;
            v83 = "_data_map_ext_get_data_entry";
            v84 = 1024;
            v85 = 451;
            v86 = 2048;
            v87 = -1;
            v88 = 2048;
            v89 = a1;
            v90 = 2080;
            v91 = v53;
            _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v50;
          fd_name(*(a1 + 248), v96, 0x100uLL);
          si_analytics_log_3138("(1)invalid data offset 0x%lx %p %s");
          goto LABEL_16;
        }

        v45 = Value;
        LODWORD(v72) = CFDataGetLength(Value) - *(a1 + 220);
        __s2 = &CFDataGetBytePtr(v45)[*(a1 + 220)];
        CFDataGetBytePtr(v45);
        v46 = *(a1 + 220);
        __memcpy_chk();
        v47 = 1;
      }

      else
      {
        v31 = *(v25 + 2);
        v30 = *(v25 + 3);
        *buf = 0;
        v32 = *(a1 + 488);
        if (v32)
        {
          v63 = v28;
          v64 = v30;
          v62 = v19;
          v33 = v31;
          v34 = (*(a1 + 432))(v32, v31);
          v81 = 0;
          v65 = v34 != 0;
          if (v34)
          {
            __s2 = (*(a1 + 440))(v34, v29, v64, &v81, buf);
            v72 = __PAIR64__(v81, *buf);
            goto LABEL_27;
          }

          v68 = v5;
          if (data_entry_restore_ext__COUNT_ < 1)
          {
            ++data_entry_restore_ext__COUNT2_;
            add_explicit = add_explicit;
            v15 = v15;
            v26 = v18;
            if (data_entry_restore_ext__COUNT2_ == 100)
            {
              data_entry_restore_ext__COUNT2_ = 0;
              v54 = *__error();
              v55 = _SILogForLogForCategory(16);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_49;
              }

              goto LABEL_50;
            }
          }

          else
          {
            --data_entry_restore_ext__COUNT_;
            v54 = *__error();
            v55 = _SILogForLogForCategory(16);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
LABEL_49:
              *v96 = 136316418;
              *&v96[4] = "data_entry_restore_ext";
              *&v96[12] = 1024;
              *&v96[14] = 396;
              *&v96[18] = 2048;
              *&v96[20] = v63;
              *&v96[28] = 1024;
              *&v96[30] = v33;
              *&v96[34] = 2048;
              *&v96[36] = v29;
              *&v96[44] = 1024;
              *&v96[46] = v64;
              _os_log_error_impl(&dword_1C278D000, v55, OS_LOG_TYPE_ERROR, "%s:%d: data id %lld invalid indexId %u offset 0x%llx meta 0x%x", v96, 0x32u);
            }

LABEL_50:
            *__error() = v54;
            add_explicit = add_explicit;
            v5 = v68;
            v15 = v15;
            v26 = v18;
          }

LABEL_27:
          v35 = v65;
          v27 = v62;
        }

        else
        {
          v35 = 0;
        }

        v47 = v35;
      }

      if (v47 && v72 == v5 && !memcmp(__s1, __s2, v5) && !memcmp(&v72 + 4, v71, __n))
      {
        v9 = *(v27 + 8 * v26);
        goto LABEL_52;
      }
    }

LABEL_16:
    v9 = 0;
    if (v18 + 1 == v17)
    {
      v24 = 0;
    }

    else
    {
      v24 = v18 + 1;
    }

    v18 = v24;
    if (v24 == v67)
    {
      goto LABEL_52;
    }
  }

  v9 = 0;
LABEL_52:
  v80 = 1;
  v56 = threadData[9 * v76 + 1] + 320 * v75;
  *(v56 + 312) = v15;
  v57 = *(v56 + 232);
  if (v57)
  {
    v57(*(v56 + 288));
  }

  dropThreadId(v76, 0, add_explicit + 1);
LABEL_55:
  if ((v80 & 1) == 0)
  {
    v9 = 0;
    *(a1 + 480) = 22;
  }

LABEL_57:
  if (*(a1 + 464))
  {
    os_unfair_lock_lock((a1 + 456));
    v60 = *(a1 + 464);
    if (v60)
    {
      bit_vector_set_7166(v60, v9);
    }

    os_unfair_lock_unlock((a1 + 456));
  }

  _data_map_ext_unlock(a1);
  v58 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t data_map_ext_get_extra_with_key(uint64_t a1, uint64_t a2, size_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v103 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v74 = 0;
  v8 = dm_hash(a2, a3);
  if (_data_map_ext_rdlock(a1))
  {
    goto LABEL_58;
  }

  v73 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a1, 0, add_explicit + 1);
  v72 = v11;
  v71 = v12;
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v90 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v90, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v71);
    dropThreadId(v10, 1, add_explicit + 1);
    CICleanUpReset(v10, v72);
    goto LABEL_56;
  }

  v67 = v14;
  __s1 = a2;
  v65 = *(a1 + 376);
  v66 = v8;
  v16 = v8 % v65;
  v64 = v8 % v65;
  do
  {
    v17 = *(a1 + 368);
    v18 = *(v17 + 8 * v16);
    if (!v18)
    {
      break;
    }

    if (*(a1 + 464))
    {
      os_unfair_lock_lock((a1 + 456));
      v48 = *(a1 + 464);
      if (v48)
      {
        bit_vector_set_7166(v48, v18);
      }

      os_unfair_lock_unlock((a1 + 456));
      v19 = *(v17 + 8 * v16);
    }

    else
    {
      v19 = *(v17 + 8 * v16);
    }

    if (*(a1 + 224) <= v19 || (v20 = *(a1 + 296), (v20 + 1) <= 1))
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
      memset(v90, 0, sizeof(v90));
      v21 = *__error();
      v22 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        log = v22;
        v33 = *(a1 + 224);
        v34 = v5;
        v35 = add_explicit;
        v36 = v4;
        v37 = *(a1 + 296);
        v38 = fd_name(*(a1 + 248), v90, 0x100uLL);
        *buf = 136316674;
        v77 = "_data_map_ext_get_offset_entry";
        v78 = 1024;
        v79 = 417;
        v80 = 2048;
        v81 = v19;
        v82 = 2048;
        v83 = v33;
        v84 = 2048;
        v85 = a1;
        v86 = 2048;
        v87 = v37;
        v4 = v36;
        add_explicit = v35;
        v5 = v34;
        v88 = 2080;
        v89 = v38;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", buf, 0x44u);
      }

      *__error() = v21;
      goto LABEL_17;
    }

    v24 = (v20 + 24 * v19);
    if (*v24 != -2 && v24[2] == v66)
    {
      v69 = 0;
      __s2 = 0;
      v25 = *(v17 + 8 * v16);
      v26 = *v24;
      if (*v24 == -1)
      {
        v39 = *(a1 + 496);
        if (!v39)
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
          memset(v90, 0, sizeof(v90));
          v44 = *__error();
          v45 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v49 = fd_name(*(a1 + 248), v90, 0x100uLL);
            *buf = 136316162;
            v77 = "_data_map_ext_get_data_entry";
            v78 = 1024;
            v79 = 457;
            v80 = 2048;
            v81 = -1;
            v82 = 2048;
            v83 = a1;
            v84 = 2080;
            v85 = v49;
            _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v44;
          fd_name(*(a1 + 248), v90, 0x100uLL);
          si_analytics_log_3138("(2)invalid data offset 0x%lx %p %s");
          goto LABEL_17;
        }

        Value = CFDictionaryGetValue(v39, v25);
        if (!Value)
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
          memset(v90, 0, sizeof(v90));
          v46 = *__error();
          v47 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v50 = fd_name(*(a1 + 248), v90, 0x100uLL);
            *buf = 136316162;
            v77 = "_data_map_ext_get_data_entry";
            v78 = 1024;
            v79 = 451;
            v80 = 2048;
            v81 = -1;
            v82 = 2048;
            v83 = a1;
            v84 = 2080;
            v85 = v50;
            _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", buf, 0x30u);
          }

          *__error() = v46;
          fd_name(*(a1 + 248), v90, 0x100uLL);
          si_analytics_log_3138("(1)invalid data offset 0x%lx %p %s");
          goto LABEL_17;
        }

        v41 = Value;
        v69 = CFDataGetLength(Value) - *(a1 + 220);
        __s2 = &CFDataGetBytePtr(v41)[*(a1 + 220)];
        CFDataGetBytePtr(v41);
        v42 = *(a1 + 220);
        __memcpy_chk();
        v43 = 1;
      }

      else
      {
        v28 = *(v24 + 2);
        v27 = *(v24 + 3);
        *buf = 0;
        v29 = *(a1 + 488);
        if (v29)
        {
          v62 = v25;
          v30 = (*(a1 + 432))(v29, v28);
          v75 = 0;
          v31 = v30 != 0;
          if (v30)
          {
            __s2 = (*(a1 + 440))(v30, v26, v27, &v75, buf);
            v69 = *buf;
            goto LABEL_27;
          }

          v63 = v27;
          v51 = v4;
          if (data_entry_restore_ext__COUNT_ < 1)
          {
            if (++data_entry_restore_ext__COUNT2_ == 100)
            {
              data_entry_restore_ext__COUNT2_ = 0;
              v52 = *__error();
              v53 = _SILogForLogForCategory(16);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_51;
              }

              goto LABEL_52;
            }
          }

          else
          {
            --data_entry_restore_ext__COUNT_;
            v52 = *__error();
            v53 = _SILogForLogForCategory(16);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
LABEL_51:
              *v90 = 136316418;
              *&v90[4] = "data_entry_restore_ext";
              *&v90[12] = 1024;
              *&v90[14] = 396;
              *&v90[18] = 2048;
              *&v90[20] = v62;
              *&v90[28] = 1024;
              *&v90[30] = v28;
              *&v90[34] = 2048;
              *&v90[36] = v26;
              *&v90[44] = 1024;
              *&v90[46] = v63;
              _os_log_error_impl(&dword_1C278D000, v53, OS_LOG_TYPE_ERROR, "%s:%d: data id %lld invalid indexId %u offset 0x%llx meta 0x%x", v90, 0x32u);
            }

LABEL_52:
            *__error() = v52;
            v4 = v51;
            v31 = 0;
          }

LABEL_27:
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        v43 = v32;
      }

      if (v43 && v69 == v5 && !memcmp(__s1, __s2, v5))
      {
        v54 = v4;
        v55 = *(a1 + 220);
        __memcpy_chk();
        v56 = v55;
        v4 = v54;
        HIDWORD(v74) = v56;
        *v54 = 1;
        break;
      }
    }

LABEL_17:
    v23 = 0;
    if (v16 + 1 != v65)
    {
      v23 = v16 + 1;
    }

    v16 = v23;
  }

  while (v23 != v64);
  v73 = 1;
  v57 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  *(v57 + 312) = v67;
  v58 = *(v57 + 232);
  if (v58)
  {
    v58(*(v57 + 288));
  }

  dropThreadId(v10, 0, add_explicit + 1);
LABEL_56:
  if ((v73 & 1) == 0)
  {
    *v4 = 0;
    *(a1 + 480) = 22;
  }

LABEL_58:
  _data_map_ext_unlock(a1);
  result = v74;
  v60 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _data_map_ext_get_data_id(uint64_t a1, int a2, char *a3, unint64_t a4, int a5)
{
  v9 = dm_hash(&a3[a2], a4 - a2);
  if (_data_map_ext_rdlock(a1))
  {
    return 0;
  }

  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a1, 0, add_explicit + 1);
  v33 = HIDWORD(v12);
  v34 = v12;
  v32 = __PAIR64__(v13, v14);
  v15 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  v16 = *(v15 + 312);
  v17 = *(v15 + 224);
  if (v17)
  {
    v17(*(v15 + 288));
  }

  v31 = v34;
  v30 = v33;
  v29 = v32;
  if (!_setjmp(v15))
  {
    bucket_entry = _data_map_ext_get_bucket_entry(a1, v9, 0, a3, a4);
    if (!bucket_entry)
    {
      updated = 0;
LABEL_18:
      v22 = threadData[9 * v31 + 1] + 320 * v30;
      *(v22 + 312) = v16;
      v23 = *(v22 + 232);
      if (v23)
      {
        v23(*(v22 + 288));
      }

      dropThreadId(v31, 0, add_explicit + 1);
      goto LABEL_21;
    }

    if (*bucket_entry)
    {
      if (*bucket_entry >= *(a1 + 224))
      {
        updated = 0;
      }

      else
      {
        updated = *bucket_entry;
      }

      goto LABEL_18;
    }

    if (!a5 || (v20 = bucket_entry, v21 = *(a1 + 224), _data_map_ext_unlock(a1), _data_map_ext_wrlock(a1)))
    {
LABEL_17:
      updated = 0;
      goto LABEL_18;
    }

    v24 = v21;
    if (v21 == *(a1 + 224))
    {
LABEL_23:
      updated = _data_map_ext_push_to_update_set(a1, v24, v9, a3, a4, v20);
      goto LABEL_18;
    }

    v25 = 0;
    v26 = _data_map_ext_get_bucket_entry(a1, v9, 0, a3, a4);
    if (v26)
    {
      v25 = *v26;
      if (*v26 >= *(a1 + 224))
      {
        goto LABEL_17;
      }

      if (!v25)
      {
        v20 = v26;
        v27 = *(a1 + 224);
        SIActivityJournalDMAdd(*(a1 + 408), *(a1 + 416), *(a1 + 220), v27, v9, a4);
        v24 = v27;
        goto LABEL_23;
      }

      _data_map_ext_set_seen_id(a1, v25);
    }

    updated = v25;
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v28 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v28, 2u);
  }

  *(v15 + 312) = v16;
  CIOnThreadCleanUpReset(v29);
  dropThreadId(v31, 1, add_explicit + 1);
  CICleanUpReset(v31, HIDWORD(v29));
  updated = 0;
LABEL_21:
  _data_map_ext_unlock(a1);
  return updated;
}

void _data_map_ext_set_seen_id(uint64_t a1, CFIndex a2)
{
  if (*(a1 + 464))
  {
    os_unfair_lock_lock((a1 + 456));
    v5 = *(a1 + 464);
    if (v5)
    {
      bit_vector_set_7166(v5, a2);
    }

    os_unfair_lock_unlock((a1 + 456));
  }
}

unint64_t _data_map_ext_push_to_update_set(uint64_t a1, unint64_t a2, unint64_t a3, UInt8 *a4, CFIndex a5, void *bucket_entry)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(a1 + 480))
  {
LABEL_2:
    v6 = 0;
    goto LABEL_3;
  }

  v6 = a2;
  v14 = *(a1 + 224);
  if (v14 >= *(a1 + 336))
  {
    v17 = (*MEMORY[0x1E69E9AC8] + 24 * v14 + 23) & -*MEMORY[0x1E69E9AC8];
    if (!grow_offsets(a1, a1 + 280, v17) || !grow_offsets(a1, a1 + 304, v17))
    {
      goto LABEL_12;
    }

    *(a1 + 336) = v17 / 0x18;
    v14 = *(a1 + 224);
  }

  v15 = v14 - *(a1 + 384);
  if (v15 >= 2 * *(a1 + 376) / 3uLL || v15 < 2 * *(a1 + 392))
  {
    if (_data_map_ext_rehash(a1))
    {
      v16 = 0;
      goto LABEL_15;
    }

LABEL_12:
    if (!*(a1 + 480))
    {
      v6 = 0;
      *(a1 + 480) = 1;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  v16 = 1;
LABEL_15:
  if (!*(a1 + 280) || (*(a1 + 296) + 1) <= 1)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    memset(buf, 0, sizeof(buf));
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 224);
      v28 = *(a1 + 296);
      v27 = fd_name(*(a1 + 248), buf, 0x100uLL);
      *v29 = 136316674;
      v30 = "_data_map_ext_push_to_update_set";
      v31 = 1024;
      v32 = 1897;
      v33 = 2048;
      v34 = v6;
      v35 = 2048;
      v36 = v26;
      v37 = 2048;
      v38 = a1;
      v39 = 2048;
      v40 = v28;
      v41 = 2080;
      v42 = v27;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: insert data id error %lld max %lld %p map: %p %s", v29, 0x44u);
    }

    *__error() = v18;
  }

  if ((*(a1 + 475) & 1) == 0)
  {
    _data_map_ext_dirty(a1);
    *(a1 + 475) = 1;
  }

  v20 = *(a1 + 296) + 24 * v6;
  *(v20 + 16) = a3;
  *v20 = xmmword_1C2BFA360;
  if (*(a1 + 304))
  {
    v21 = *(a1 + 320);
    if ((v21 + 1) >= 2)
    {
      v22 = v21 + 24 * v6;
      *(v22 + 16) = a3;
      *v22 = xmmword_1C2BFA360;
    }
  }

  if ((*(a1 + 473) & 1) == 0)
  {
    _data_map_ext_dirty(a1);
    *(a1 + 473) = 1;
  }

  data_map_ext_store_as_update(a1, v6, a4, a5);
  ++*(a1 + 224);
  if ((*(a1 + 474) & 1) == 0)
  {
    _data_map_ext_dirty(a1);
    *(a1 + 474) = 1;
  }

  if (bucket_entry)
  {
    v23 = v16;
  }

  else
  {
    v23 = 0;
  }

  if ((v23 & 1) == 0)
  {
    bucket_entry = _data_map_ext_get_bucket_entry(a1, a3, v6, a4, a5);
  }

  *bucket_entry = v6;
  if (gSILogLevels[0] >= 5)
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "added %lld to %p", buf, 0x16u);
    }

    *__error() = v24;
  }

LABEL_3:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t grow_offsets(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!*a2)
  {
    return 1;
  }

  if (fd_truncate(*a2, a3) != -1)
  {
    *(a1 + 328) = a3;
    v6 = *(a2 + 8);
    if (v6 >= a3)
    {
      return 1;
    }

    v7 = 2 * v6;
    munmap(*(a2 + 16), v6);
    *(a2 + 8) = 0;
    v8 = fd_mmap(*a2);
    *(a2 + 16) = v8;
    if (v8 != -1)
    {
      *(a2 + 8) = v7;
      return 1;
    }
  }

  return 0;
}

void data_map_ext_store_as_update(uint64_t a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  v8 = *MEMORY[0x1E695E480];
  if (!*(a1 + 496))
  {
    *(a1 + 496) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  }

  v9 = CFDataCreate(v8, bytes, length);
  CFDictionarySetValue(*(a1 + 496), a2, v9);

  CFRelease(v9);
}

uint64_t data_map_ext_get_data_entry(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4, char a5)
{
  v93 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if ((a5 & 1) == 0 && _data_map_ext_rdlock(a2))
  {
LABEL_21:
    result = _data_map_ext_unlock(a2);
    goto LABEL_22;
  }

  v64 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a2, 0, add_explicit + 1);
  v62 = HIDWORD(v11);
  v63 = v11;
  v60 = v13;
  v61 = v12;
  v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v15 = *(v14 + 312);
  v16 = *(v14 + 224);
  if (v16)
  {
    v16(*(v14 + 288));
  }

  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v14 + 312) = v15;
    CIOnThreadCleanUpReset(v60);
    dropThreadId(v63, 1, add_explicit + 1);
    result = CICleanUpReset(v63, v61);
    goto LABEL_18;
  }

  if (*(a2 + 464))
  {
    os_unfair_lock_lock((a2 + 456));
    v48 = *(a2 + 464);
    if (v48)
    {
      bit_vector_set_7166(v48, a3);
    }

    os_unfair_lock_unlock((a2 + 456));
  }

  if (*(a2 + 224) <= a3 || (v18 = *(a2 + 296), (v18 + 1) <= 1))
  {
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
    v81 = 0u;
    v82 = 0u;
    memset(buf, 0, sizeof(buf));
    v19 = *__error();
    v20 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      v33 = *(a2 + 224);
      v34 = *(a2 + 296);
      v35 = fd_name(*(a2 + 248), buf, 0x100uLL);
      *v66 = 136316674;
      v67 = "_data_map_ext_get_offset_entry";
      v68 = 1024;
      v69 = 417;
      v70 = 2048;
      v71 = a3;
      v72 = 2048;
      v73 = v33;
      v74 = 2048;
      v75 = a2;
      v76 = 2048;
      v77 = v34;
      v78 = 2080;
      v79 = v35;
      _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", v66, 0x44u);
    }

    *__error() = v19;
    goto LABEL_15;
  }

  v24 = (v18 + 24 * a3);
  v25 = *v24;
  if (*v24 != -2)
  {
    if (v25 == -1)
    {
      v36 = *(a2 + 496);
      if (!v36)
      {
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
        v81 = 0u;
        v82 = 0u;
        memset(buf, 0, sizeof(buf));
        v43 = *__error();
        v44 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v47 = fd_name(*(a2 + 248), buf, 0x100uLL);
          *v66 = 136316162;
          v67 = "_data_map_ext_get_data_entry";
          v68 = 1024;
          v69 = 457;
          v70 = 2048;
          v71 = -1;
          v72 = 2048;
          v73 = a2;
          v74 = 2080;
          v75 = v47;
          _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", v66, 0x30u);
        }

        *__error() = v43;
        fd_name(*(a2 + 248), buf, 0x100uLL);
        si_analytics_log_3138("(2)invalid data offset 0x%lx %p %s");
        goto LABEL_15;
      }

      Value = CFDictionaryGetValue(v36, a3);
      if (!Value)
      {
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
        v81 = 0u;
        v82 = 0u;
        memset(buf, 0, sizeof(buf));
        v45 = *__error();
        v46 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v49 = fd_name(*(a2 + 248), buf, 0x100uLL);
          *v66 = 136316162;
          v67 = "_data_map_ext_get_data_entry";
          v68 = 1024;
          v69 = 451;
          v70 = 2048;
          v71 = -1;
          v72 = 2048;
          v73 = a2;
          v74 = 2080;
          v75 = v49;
          _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", v66, 0x30u);
        }

        *__error() = v45;
        fd_name(*(a2 + 248), buf, 0x100uLL);
        si_analytics_log_3138("(1)invalid data offset 0x%lx %p %s");
        goto LABEL_15;
      }

      v38 = Value;
      v57 = CFDataGetLength(Value) - *(a2 + 220);
      v59 = &CFDataGetBytePtr(v38)[*(a2 + 220)];
      CFDataGetBytePtr(v38);
      v39 = *(a2 + 220);
      __memcpy_chk();
      v32 = v59;
      v31 = v57;
      v30 = v39;
LABEL_31:
      v40 = v30;
      v41 = v32;
      v42 = v31;
      __memcpy_chk();
      *(a1 + 20) = v40;
      *a1 = v41;
      *(a1 + 8) = v42;
      *a4 = 1;
      goto LABEL_15;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    *v66 = 0;
    v28 = *(a2 + 488);
    if (v28)
    {
      v56 = v26;
      v29 = (*(a2 + 432))(v28, v27);
      v65 = 0;
      if (!v29)
      {
        if (data_entry_restore_ext__COUNT_ < 1)
        {
          if (++data_entry_restore_ext__COUNT2_ != 100)
          {
            goto LABEL_15;
          }

          data_entry_restore_ext__COUNT2_ = 0;
          v54 = *__error();
          v52 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "data_entry_restore_ext";
            *&buf[12] = 1024;
            *&buf[14] = 396;
            *&buf[18] = 2048;
            *&buf[20] = a3;
            *&buf[28] = 1024;
            *&buf[30] = v27;
            *&buf[34] = 2048;
            *&buf[36] = v25;
            *&buf[44] = 1024;
            *&buf[46] = v56;
            _os_log_error_impl(&dword_1C278D000, v52, OS_LOG_TYPE_ERROR, "%s:%d: data id %lld invalid indexId %u offset 0x%llx meta 0x%x", buf, 0x32u);
          }

          v51 = v54;
        }

        else
        {
          --data_entry_restore_ext__COUNT_;
          v55 = *__error();
          v50 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "data_entry_restore_ext";
            *&buf[12] = 1024;
            *&buf[14] = 396;
            *&buf[18] = 2048;
            *&buf[20] = a3;
            *&buf[28] = 1024;
            *&buf[30] = v27;
            *&buf[34] = 2048;
            *&buf[36] = v25;
            *&buf[44] = 1024;
            *&buf[46] = v56;
            _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: data id %lld invalid indexId %u offset 0x%llx meta 0x%x", buf, 0x32u);
          }

          v51 = v55;
        }

        *__error() = v51;
        goto LABEL_15;
      }

      v58 = (*(a2 + 440))(v29, v25, v56, &v65, v66);
      v30 = *(a2 + 220);
      v31 = *v66;
      v32 = v58;
      goto LABEL_31;
    }
  }

LABEL_15:
  v64 = 1;
  v21 = threadData[9 * v63 + 1] + 320 * v62;
  *(v21 + 312) = v15;
  v22 = *(v21 + 232);
  if (v22)
  {
    v22(*(v21 + 288));
  }

  result = dropThreadId(v63, 0, add_explicit + 1);
LABEL_18:
  if ((v64 & 1) == 0)
  {
    *a4 = 0;
    *(a2 + 480) = 22;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

const UInt8 *data_map_ext_get_data(uint64_t a1, unint64_t a2, void *a3)
{
  v81 = *MEMORY[0x1E69E9840];
  if (_data_map_ext_rdlock(a1))
  {
LABEL_2:
    if (a3)
    {
      *a3 = 0;
    }

    result = 0;
    goto LABEL_23;
  }

  v50 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_15775, a1, 0, add_explicit + 1);
  v48 = HIDWORD(v8);
  v49 = v8;
  v46 = v10;
  v47 = v9;
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
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v46);
    dropThreadId(v49, 1, add_explicit + 1);
    CICleanUpReset(v49, v47);
    v14 = 0;
    goto LABEL_20;
  }

  if (*(a1 + 224) <= a2 || (v15 = *(a1 + 296), (v15 + 1) <= 1))
  {
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
    memset(buf, 0, sizeof(buf));
    v16 = *__error();
    v17 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 224);
      v33 = *(a1 + 296);
      v34 = fd_name(*(a1 + 248), buf, 0x100uLL);
      *v54 = 136316674;
      v55 = "_data_map_ext_get_offset_entry";
      v56 = 1024;
      v57 = 417;
      v58 = 2048;
      v59 = a2;
      v60 = 2048;
      v61 = v32;
      v62 = 2048;
      v63 = a1;
      v64 = 2048;
      v65 = v33;
      v66 = 2080;
      v67 = v34;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", v54, 0x44u);
    }

    *__error() = v16;
    goto LABEL_16;
  }

  v21 = (v15 + 24 * a2);
  v22 = *v21;
  if (*v21 != -2)
  {
    if (v22 == -1)
    {
      v28 = *(a1 + 496);
      if (v28)
      {
        Value = CFDictionaryGetValue(v28, a2);
        if (Value)
        {
          v30 = Value;
          v51 = CFDataGetLength(Value) - *(a1 + 220);
          v52 = &CFDataGetBytePtr(v30)[*(a1 + 220)];
          CFDataGetBytePtr(v30);
          v31 = *(a1 + 220);
          __memcpy_chk();
          v27 = v51;
          goto LABEL_32;
        }

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
        memset(buf, 0, sizeof(buf));
        v37 = *__error();
        v38 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v40 = fd_name(*(a1 + 248), buf, 0x100uLL);
          *v54 = 136316162;
          v55 = "_data_map_ext_get_data_entry";
          v56 = 1024;
          v57 = 451;
          v58 = 2048;
          v59 = -1;
          v60 = 2048;
          v61 = a1;
          v62 = 2080;
          v63 = v40;
          _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", v54, 0x30u);
        }

        *__error() = v37;
        fd_name(*(a1 + 248), buf, 0x100uLL);
        si_analytics_log_3138("(1)invalid data offset 0x%lx %p %s");
      }

      else
      {
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
        memset(buf, 0, sizeof(buf));
        v35 = *__error();
        v36 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v39 = fd_name(*(a1 + 248), buf, 0x100uLL);
          *v54 = 136316162;
          v55 = "_data_map_ext_get_data_entry";
          v56 = 1024;
          v57 = 457;
          v58 = 2048;
          v59 = -1;
          v60 = 2048;
          v61 = a1;
          v62 = 2080;
          v63 = v39;
          _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx %p %s", v54, 0x30u);
        }

        *__error() = v35;
        fd_name(*(a1 + 248), buf, 0x100uLL);
        si_analytics_log_3138("(2)invalid data offset 0x%lx %p %s");
      }

      v25 = 0;
    }

    else
    {
      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      *v54 = 0;
      v25 = *(a1 + 488);
      if (v25)
      {
        v26 = (*(a1 + 432))(v25, v24);
        v53 = 0;
        if (v26)
        {
          v52 = (*(a1 + 440))(v26, v22, v23, &v53, v54);
          v27 = *v54;
LABEL_32:
          if (a3)
          {
            *a3 = v27;
          }

          if (*(a1 + 464))
          {
            os_unfair_lock_lock((a1 + 456));
            v41 = *(a1 + 464);
            if (v41)
            {
              bit_vector_set_7166(v41, a2);
            }

            os_unfair_lock_unlock((a1 + 456));
          }

          v25 = v52;
          goto LABEL_43;
        }

        v45 = v12;
        v42 = add_explicit;
        if (data_entry_restore_ext__COUNT_ < 1)
        {
          if (++data_entry_restore_ext__COUNT2_ != 100)
          {
LABEL_54:
            v25 = 0;
            add_explicit = v42;
            v12 = v45;
            goto LABEL_43;
          }

          data_entry_restore_ext__COUNT2_ = 0;
        }

        else
        {
          --data_entry_restore_ext__COUNT_;
        }

        v43 = *__error();
        v44 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "data_entry_restore_ext";
          *&buf[12] = 1024;
          *&buf[14] = 396;
          *&buf[18] = 2048;
          *&buf[20] = a2;
          *&buf[28] = 1024;
          *&buf[30] = v24;
          *&buf[34] = 2048;
          *&buf[36] = v22;
          *&buf[44] = 1024;
          *&buf[46] = v23;
          _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, "%s:%d: data id %lld invalid indexId %u offset 0x%llx meta 0x%x", buf, 0x32u);
        }

        *__error() = v43;
        goto LABEL_54;
      }
    }

LABEL_43:
    v14 = v25;
    goto LABEL_17;
  }

LABEL_16:
  v14 = 0;
LABEL_17:
  v50 = 1;
  v18 = threadData[9 * v49 + 1] + 320 * v48;
  *(v18 + 312) = v12;
  v19 = *(v18 + 232);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  dropThreadId(v49, 0, add_explicit + 1);
LABEL_20:
  if ((v50 & 1) == 0)
  {
    *(a1 + 480) = 22;
  }

  _data_map_ext_unlock(a1);
  result = v14;
  if (!v14)
  {
    goto LABEL_2;
  }

LABEL_23:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unionUINT64Set(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v6 = *a1++;
      SIValueSet<unsigned long long>::SIValueSetInsert((a3 + 16), v6);
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t data_map_ext_restore_data(uint64_t a1, unint64_t a2, void *a3, size_t a4, const void *a5)
{
  v9 = a1;
  v43 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 477) & 1) == 0)
  {
    a1 = _db_write_lock(a1);
    if (a1)
    {
      v27 = a1;
      v24 = *__error();
      v25 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        if (v27 == -1)
        {
          v27 = *__error();
        }

        LODWORD(v42[0]) = 136315650;
        *(v42 + 4) = "_data_map_ext_wrlock";
        WORD6(v42[0]) = 1024;
        *(v42 + 14) = 288;
        WORD1(v42[1]) = 1024;
        DWORD1(v42[1]) = v27;
        _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: _data_map_ext_wrlock error %d", v42, 0x18u);
      }

      a1 = __error();
      *a1 = v24;
    }
  }

  if (*(v9 + 224) > a2 && (v10 = *(v9 + 296), (v10 + 1) > 1))
  {
    if (*(v10 + 24 * a2) == -1)
    {
      v16 = *(v9 + 220) + a4;
      MEMORY[0x1EEE9AC00](a1);
      v18 = &v26[-v17];
      bzero(&v26[-v17], v19);
      v20 = *(v9 + 220);
      memcpy(v18, a5, v20);
      memcpy(&v18[v20], a3, a4);
      data_map_ext_store_as_update(v9, a2, v18, v20 + a4);
    }
  }

  else
  {
    memset(v42, 0, sizeof(v42));
    v11 = *__error();
    v12 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = *(v9 + 224);
      v22 = *(v9 + 296);
      v23 = fd_name(*(v9 + 248), v42, 0x100uLL);
      v28 = 136316674;
      v29 = "_data_map_ext_get_offset_entry";
      v30 = 1024;
      v31 = 417;
      v32 = 2048;
      v33 = a2;
      v34 = 2048;
      v35 = v21;
      v36 = 2048;
      v37 = v9;
      v38 = 2048;
      v39 = v22;
      v40 = 2080;
      v41 = v23;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p map: %p %s", &v28, 0x44u);
    }

    *__error() = v11;
    v13 = dm_hash(a3, a4);
    if (*(v9 + 224) <= a2)
    {
      *(v9 + 224) = a2 + 1;
    }

    _data_map_ext_push_to_update_set(v9, a2, v13, a3, a4, 0);
  }

  result = _data_map_ext_unlock(v9);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

dispatch_queue_t __page_cache_init_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  purgeQueue = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80F48 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80F50 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80F58 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80F60 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80F68 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80F70 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80F78 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80F80 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80F88 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80F90 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80F98 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FA0 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FA8 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FB0 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FB8 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FC0 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FC8 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FD0 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FD8 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FE0 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FE8 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FF0 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD80FF8 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD81000 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD81008 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD81010 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD81018 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD81020 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD81028 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD81030 = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  result = dispatch_queue_create("com.apple.spotlightindex.purgablectrl", 0);
  qword_1EDD81038 = result;
  return result;
}

uint64_t __sdb_init_cache_block_invoke()
{
  v5 = 0u;
  v6 = 0u;
  *host_info_out = 0u;
  host_info_outCnt = 12;
  v0 = MEMORY[0x1C6920B70]();
  host_info(v0, 1, host_info_out, &host_info_outCnt);
  result = cache_create("com.apple.metadata.framework.sdb_page_cache", &sdbCacheAttributes, &sdbLargeCacheArray);
  v2 = sdbLargeCacheArray;
  if (sdbLargeCacheArray)
  {
    result = cache_set_cost_hint();
  }

  sdb_init_cache_status = v2 != 0;
  return result;
}

uint64_t sdb_value_release(int a1)
{
  HIDWORD(v1) = 1713515327 * a1;
  LODWORD(v1) = 1713515327 * a1;
  v2 = -2048144789 * ((1107688271 * (v1 >> 21)) ^ 0x1F0A259C);
  v3 = purgeQueue[((53 * (v2 ^ (v2 >> 13))) ^ ((-1028477387 * (v2 ^ (v2 >> 13))) >> 16)) & 0x1F];
  return dispatch_async_enforce_qos_class_f();
}

void value_release(void *a1)
{
  v2 = malloc_default_purgeable_zone();

  malloc_zone_free(v2, a1);
}

_OWORD *sdb_key_retain(_OWORD *a1, void *a2)
{
  result = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
  if (result)
  {
    *result = *a1;
  }

  *a2 = result;
  return result;
}

void page_cache_move(uint64_t a1, unsigned int a2, unsigned int a3)
{
  key = 0;
  v17 = 0;
  value_out = 0;
  v3 = atomic_load((a1 + 248));
  if (v3 > a3)
  {
    key = *a1;
    v17 = a3;
    if (sdb_init_cache_onceToken != -1)
    {
      dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
    }

    if (sdb_init_cache_status == 1 && !cache_get_and_retain(sdbLargeCacheArray, &key, &value_out))
    {
      _cache_remove(&key);
      if (value_out)
      {
        key = *a1;
        v17 = a2;
        v6 = atomic_load((a1 + 248));
        if (v6 <= a2)
        {
          atomic_store(a2 + 1, (a1 + 248));
        }

        v7 = value_out;
        v8 = *(value_out + 2);
        v9 = *MEMORY[0x1E69E9AC8];
        if (sdb_init_cache_onceToken != -1)
        {
          v14 = value_out;
          dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
          v7 = v14;
        }

        if (sdb_init_cache_status == 1)
        {
          if (cache_set_and_retain(sdbLargeCacheArray, &key, v7, (v8 + v9 - 1) & ~v9))
          {
            goto LABEL_17;
          }

          v10 = value_out;
          if (sdb_init_cache_onceToken != -1)
          {
            v13 = value_out;
            dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
            v10 = v13;
          }

          if (sdb_init_cache_status == 1)
          {
            cache_release_value(sdbLargeCacheArray, v10);
LABEL_17:
            v11 = value_out;
            if (sdb_init_cache_onceToken != -1)
            {
              v12 = value_out;
              dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
              v11 = v12;
            }

            goto LABEL_19;
          }
        }

        v11 = value_out;
LABEL_19:
        if (sdb_init_cache_status == 1)
        {
          cache_release_value(sdbLargeCacheArray, v11);
        }
      }
    }
  }
}

char *db_cache_alloc(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x1D0uLL, 0x102004031B59A9BuLL);
  *v2 = a1;
  *(v2 + 26) = 20;
  *(v2 + 220) = 0x400000002;
  pthread_rwlock_init((v2 + 8), 0);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __page_cache_init_block_invoke;
  block[3] = &unk_1E8199400;
  block[4] = &v5;
  if (page_cache_init_onceToken != -1)
  {
    dispatch_once(&page_cache_init_onceToken, block);
  }

  if ((v6[3] & 1) == 0)
  {
    dispatch_apply(0x20uLL, 0, &__block_literal_global_15975);
    atomic_store(0, v2 + 62);
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void db_cache_clear(unint64_t *a1, uint64_t a2)
{
  *(a1 + 232) = 1;
  if (*(a1 + 55) >= 1)
  {
    v4 = 0;
    v5 = a1 + 39;
    do
    {
      v6 = a1 + 4 * v4;
      v7 = *(v6 + 63);
      memset(v17, 0, sizeof(v17));
      v18 = 0u;
      LODWORD(v17[0]) = v7;
      *(v17 + 8) = *(v5 - 5);
      DWORD2(v17[1]) = *(v5 - 6);
      *&v18 = *(v5 - 2);
      DWORD2(v18) = *(v5 - 2);
      v19 = *v5;
      (*(a2 + 16))(a2, v17);
      *(v5 - 5) = *(v17 + 8);
      *(v5 - 6) = DWORD2(v17[1]);
      *(v5 - 2) = v18;
      *(v5 - 2) = DWORD2(v18);
      *v5 = v19;
      v5 += 6;
      *(v6 + 63) = v17[0];
      ++v4;
    }

    while (v4 < *(a1 + 55));
  }

  v17[0] = *a1;
  if (atomic_load(a1 + 62))
  {
    for (i = 0; i < v10; ++i)
    {
      DWORD2(v17[0]) = i;
      _cache_remove(v17);
      v10 = atomic_load(a1 + 62);
    }
  }

  atomic_store(0, a1 + 62);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  *&v17[0] = MEMORY[0x1E69E9820];
  *(&v17[0] + 1) = 0x40000000;
  *&v17[1] = __page_cache_init_block_invoke;
  *(&v17[1] + 1) = &unk_1E8199400;
  *&v18 = &v20;
  if (page_cache_init_onceToken != -1)
  {
    dispatch_once(&page_cache_init_onceToken, v17);
  }

  if ((v21[3] & 1) == 0)
  {
    dispatch_apply(0x20uLL, 0, &__block_literal_global_15975);
    atomic_store(0, a1 + 62);
  }

  _Block_object_dispose(&v20, 8);
  v11 = *(a1 + 55);
  if (v11 >= 1)
  {
    v12 = 0;
    for (j = 0; j < v11; ++j)
    {
      v14 = a1 + 4 * j;
      if (*(v14 + 63))
      {
        v15 = &a1[v12];
        if (a1[v12 + 34])
        {
          v16 = &a1[v12];
          if (!LODWORD(a1[v12 + 36]))
          {
            free(v16[35]);
            v16[35] = 0;
            free(v15[34]);
            v15[34] = 0;
            *(v14 + 63) = 0;
            v16[37] = 0;
            *(v16 + 76) = 0;
            v16[39] = 0;
            v11 = *(a1 + 55);
          }
        }
      }

      v12 += 6;
    }
  }

  *(a1 + 232) = 0;
}

uint64_t __db_cache_dealloc_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(7);
    v5 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v4, v5))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C278D000, v4, v5, "Forcing Cache Cleanup", v7, 2u);
    }

    *__error() = v3;
    *(a2 + 24) = 0;
  }

  return 0;
}

void db_cache_move_page(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 220);
  if (v3 >= 1)
  {
    v7 = 0;
    v8 = a1 + 272;
    v9 = (a1 + 312);
    do
    {
      v12 = a1 + 4 * v7;
      v13 = *(v12 + 252);
      if (v13 == a3)
      {
        *(v12 + 252) = 0;
        v10 = (v8 + 48 * v7);
        *(v9 - 2) = 0;
        *(v9 - 2) = 0;
        *v9 = 0;
        free(*(v9 - 4));
        *(v9 - 4) = 0;
        v11 = *(v9 - 5);
      }

      else
      {
        if (v13 != a2)
        {
          goto LABEL_5;
        }

        *(v12 + 252) = a3;
        v10 = v9 - 4;
        v11 = *(v9 - 4);
        if (!v11)
        {
          goto LABEL_5;
        }
      }

      free(v11);
      *v10 = 0;
      v3 = *(a1 + 220);
LABEL_5:
      ++v7;
      v9 += 6;
    }

    while (v7 < v3);
  }
}

uint64_t db_cache_set_offset_hint(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  pthread_rwlock_wrlock((a1 + 8));
  v10 = *(a1 + 220);
  if (v10 >= 1)
  {
    v11 = a1 + 272;
    while (*v11 != a2)
    {
      v11 += 48;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    if (a5 <= 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = a3;
    }

    if (a5 <= 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4;
    }

    *(v11 + 24) = v12;
    *(v11 + 32) = v13;
    *(v11 + 40) = a5 & ~(a5 >> 63);
  }

LABEL_13:

  return pthread_rwlock_unlock((a1 + 8));
}

uint64_t db_cache_clear_offset_hints(uint64_t a1)
{
  pthread_rwlock_wrlock((a1 + 8));
  v2 = *(a1 + 220);
  if (v2 >= 1)
  {
    if (v2 == 1)
    {
      v3 = 0;
LABEL_7:
      v6 = v2 - v3;
      v7 = (a1 + 48 * v3 + 312);
      do
      {
        *(v7 - 2) = 0;
        *(v7 - 2) = 0;
        *v7 = 0;
        v7 += 6;
        --v6;
      }

      while (v6);
      goto LABEL_9;
    }

    v3 = v2 & 0x7FFFFFFE;
    v4 = (a1 + 360);
    v5 = v3;
    do
    {
      *(v4 - 8) = 0;
      *(v4 - 2) = 0;
      *(v4 - 14) = 0;
      *(v4 - 2) = 0;
      *(v4 - 6) = 0;
      *v4 = 0;
      v4 += 12;
      v5 -= 2;
    }

    while (v5);
    if (v3 != v2)
    {
      goto LABEL_7;
    }
  }

LABEL_9:

  return pthread_rwlock_unlock((a1 + 8));
}

void __page_cache_deserialize_entries_block_invoke(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    (*(a1[4] + 16))();
  }

  v6 = a1[5];

  free(v6);
}

void __page_cache_deserialize_entries_block_invoke_2(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    (*(a1[4] + 16))();
  }

  v6 = a1[5];

  free(v6);
}

uint64_t SISearchCtx::matchingArrayIndexNodes(SISearchCtx *this, uint64_t *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  return 0;
}

uint64_t SISearchCtx::matchingAttributeNodes(SISearchCtx *this, uint64_t *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  return 0;
}

uint64_t SISearchCtx_ItemScope::vinitContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFArray *a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13)
{
  v13 = a5;
  SISearchCtx::initContext(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13);
  if (a9)
  {
    CFRetain(a9);
  }

  *(a1 + 376) = a9;
  if (v13)
  {
    v13 = compileToSDBTree(v13, factorRewrite);
    setupCannedFields(v13);
  }

  *(a1 + 368) = v13;
  v17 = compileToSDBTree(a4, factorRewrite);
  setupCannedFields(v17);
  *(a1 + 360) = v17;
  if (queryApply(v17, v18, v19))
  {
    if ((*(a1 + 43) & 8) != 0)
    {
      *(a1 + 64) = 0;
    }
  }

  else
  {
    db_optimize_query_tree((a1 + 360));
    decorateExpandingFunctions(*(a1 + 360), *a2, *(a2 + 656), *(a2 + 360));
    setupCannedFields(*(a1 + 360));
    *(a1 + 40) |= 0x4000000uLL;
    if (*(a1 + 368))
    {
      db_optimize_query_tree((a1 + 368));
      decorateExpandingFunctions(*(a1 + 368), *a2, *(a2 + 656), *(a2 + 360));
      setupCannedFields(*(a1 + 368));
      if ((*(*(a1 + 368) + 48) & 0x10) != 0)
      {
        return 0;
      }
    }

    *(a1 + 56) = 0;
    CFRelease(a11);
  }

  if (*(a1 + 368))
  {
    rewriteForFSPostCheckInPlace(a1 + 368);
  }

  return 1;
}

uint64_t queryApply(const query_node *a1, BOOL (*a2)(query_piece *, void *), void *a3)
{
  while (1)
  {
    var6 = a1->var6;
    if ((var6 - 1) >= 2)
    {
      break;
    }

    var0 = a1->var0;
    if (a1->var0)
    {
      result = queryApply(a1->var0, a2, a3);
      if (!result)
      {
        return result;
      }

      var1 = a1->var1;
      a1 = var0;
      if (var1)
      {
        continue;
      }
    }

    return 0;
  }

  if (var6 != 4)
  {
    return 1;
  }

  var2 = a1->var2;
  if (!var2)
  {
    return 1;
  }

  return qp_vis(var2, a2);
}

BOOL qp_vis(query_piece *a1, void *a2)
{
  v3 = *a1;
  if (strcmp(*a1, "kMDItemFSInvisible"))
  {
    if (strcmp(v3, "kMDItemFSName"))
    {
      return 1;
    }

    v4 = *(a1 + 9);
    return !v4 || *v4 != 46 || *(a1 + 6) != 1 || (*(a1 + 32) & 0x40) != 0;
  }

  v5 = *(a1 + 9);
  if (v5)
  {
    v6 = *v5;
    switch(v6)
    {
      case '*':
        return v5[1] || *(a1 + 6) != 1;
      case '0':
        return v5[1] || *(a1 + 6) != 5;
      case '1':
        return v5[1] || *(a1 + 6) != 1;
    }
  }

  return 1;
}

BOOL SISearchCtx_ItemScope::preIterate(SISearchCtx_ItemScope *this, SISearchCtx *a2)
{
  if (dword_1EBF46AD0 >= 5)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Entering", v7, 2u);
    }

    *__error() = v5;
  }

  SISearchCtx::common_preIterate(this, a2);
  v3 = *(this + 11);
  if (v3)
  {
    RLEOIDArrayGetAllOids(*(this + 11), this + 48, this + 49);
  }

  return v3 != 0;
}

BOOL SISearchCtx_ItemScope::performSearch(SISearchCtx_ItemScope *this, PartialQueryResults *a2)
{
  v133 = *MEMORY[0x1E69E9840];
  if (*(a2 + 432) == 1)
  {
    v4 = *(a2 + 433);
  }

  else
  {
    v4 = PartialQueryResults::__needsWhatFieldsMatched(a2);
    *(a2 + 433) = v4;
    *(a2 + 432) = 1;
  }

  v6 = *(this + 49);
  v5 = *(this + 50);
  v7 = v6 - v5;
  if (v6 <= v5)
  {
    goto LABEL_150;
  }

  v8 = *(this + 3);
  if (*(this + 40) > 4)
  {
    v114 = 0;
  }

  else
  {
    v9 = *(this + 13);
    v10 = v9;
    do
    {
      v11 = v10;
      v10 = *(v10 + 80);
    }

    while (v10);
    v12 = *(*(v11 + 8) + 80);
    v13 = *(v9 + 80);
    if (v13)
    {
      v14 = 0;
      do
      {
        v14 ^= *(v9 + 104) == 0;
        v9 = v13;
        v13 = *(v13 + 80);
      }

      while (v13);
      if (v14)
      {
        v15 = 3553;
      }

      else
      {
        v15 = 2781;
      }
    }

    else
    {
      v15 = 2781;
    }

    v114 = PartialQueryResults::start(a2, v12, v15, v7, 0);
  }

  v16 = *(this + 5);
  if ((v16 & 0x7000000) != 0)
  {
    if (*MEMORY[0x1E69E9AC8] <= 0x2FuLL)
    {
      ++sTotal;
    }

    v17 = malloc_type_zone_calloc(queryZone, 1uLL, 0x30uLL, 0x5BAF1CEAuLL);
    if (!v17)
    {
      _log_fault_for_malloc_failure();
    }

    v18 = *(this + 49);
    v19 = *(this + 50);
    v20 = v18 - v19;
    if (v18 == v19)
    {
LABEL_70:
      free(v17);
      if (*(a2 + 186))
      {
        _MDPlistBytesEndArray();
        v47 = *(a2 + 186);
        _MDPlistBytesEndPlist();
      }

      if (*(a2 + 58))
      {
        v48 = *(a2 + 443);
        _MDStoreOIDArrayEndBulkAdd();
        v49 = *(a2 + 58);
        _MDStoreOIDArrayEndSequence();
        *(a2 + 443) = 0;
      }

      goto LABEL_150;
    }

    v21 = 0;
    while (1)
    {
      v22 = *(this + 48);
      v23 = *(v22 + 8 * v19);
      if (v23)
      {
        break;
      }

LABEL_69:
      ++v21;
      *(this + 50) = ++v19;
      if (v21 == v20)
      {
        goto LABEL_70;
      }
    }

    if (*(a2 + 314) >= 0xFFFDuLL)
    {
      v24 = *(this + 13);
      v25 = v24;
      do
      {
        v26 = v25;
        v25 = *(v25 + 80);
      }

      while (v25);
      v27 = *(v24 + 80);
      if (v27)
      {
        v28 = 0;
        do
        {
          v28 ^= *(v24 + 104) == 0;
          v24 = v27;
          v27 = *(v27 + 80);
        }

        while (v27);
        if (v28)
        {
          v29 = 3553;
        }

        else
        {
          v29 = 2781;
        }
      }

      else
      {
        v29 = 2781;
      }

      PartialQueryResults::prepare(a2, *(*(v26 + 8) + 80), v29, 0);
      v22 = *(this + 48);
      v19 = *(this + 50);
      v23 = *(v22 + 8 * v19);
    }

    *v17 = v23;
    bzero(v126, 0x478uLL);
    v30 = *(v22 + 8 * v19);
    v31 = *(this + 2);
    *(&v127 + 1) = v8;
    *&v128 = v31;
    memset(&v129[1], 0, 32);
    v130 = 0;
    if (v8)
    {
      v32 = *(v8 + 6586) >> 7;
    }

    else
    {
      LOBYTE(v32) = 1;
    }

    LOBYTE(v131) = v32;
    v132 = v30;
    *v126 = &unk_1F42826E0;
    v129[0] = v17;
    if (!*(this + 45))
    {
      goto LABEL_161;
    }

    *(&v115 + 1) = v8;
    *&v116 = this;
    *(&v116 + 1) = v31;
    *&v117 = 0;
    *&v115 = &unk_1F4282488;
    *(&v117 + 1) = v126;
    v121 = 0;
    v122 = LazyGottenObject::_faultInGottenObj;
    v123 = 0;
    v124 = v126;
    v33 = *(this + 19);
    if (!db_eval_obj_with_options(*(v8 + 1192)))
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v39 = *__error();
        v40 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      }
    }

    else
    {
LABEL_161:
      if (!*(this + 46))
      {
        goto LABEL_43;
      }

      v34 = *(this + 2);
      *(&v115 + 1) = *(&v127 + 1);
      *&v116 = this;
      *(&v116 + 1) = v34;
      *&v117 = 0;
      *&v115 = &unk_1F4282488;
      *(&v117 + 1) = v126;
      v121 = 0;
      v122 = LazyGottenObject::_faultInGottenObj;
      v123 = 0;
      v124 = v126;
      v35 = *(this + 19);
      if (db_eval_obj_with_options(*(v8 + 1192)))
      {
LABEL_43:
        v36 = *(this + 40);
        if (v36 == 4)
        {
          if (*(v8 + 1192))
          {
            v41 = CatInfoGotten_OID::dbo(v126);
          }

          else
          {
            v41 = 0;
          }

          if (*(a2 + 29))
          {
            if (*a2 == 1)
            {
              if (!*(a2 + 13))
              {
                v45 = *(a2 + 16);
                if (v45)
                {
                  *&v115 = 0;
                  SIFlattenArrayToCStringVector(v45, a2 + 13, &v115, &v121);
                }
              }
            }

            else if (!*(a2 + 12))
            {
              v46 = *(a2 + 15);
              if (v46)
              {
                SIFlattenArrayToCStringVector(v46, a2 + 12, a2 + 30, a2 + 29);
                if (!*(a2 + 12))
                {
                  v100 = __si_assert_copy_extra_332();
                  __message_assert_336(v100, v101, v102, v103, v104, v105, v106, v107, "SISearchCtx.h");
                  free(v100);
                  if (__valid_fs(-1))
                  {
                    v108 = 2989;
                  }

                  else
                  {
                    v108 = 3072;
                  }

                  *v108 = -559038737;
                  abort();
                }
              }
            }
          }

          collectAttributesFromDBO(v8, v41, *(a2 + 29), a2, *(this + 19));
        }

        else if (v36 == 5)
        {
          v37 = v132;
          ++*(a2 + 314);
          v38 = *(a2 + 443);
          *v38 = v37;
          *(a2 + 443) = v38 + 1;
        }

        else
        {
          LODWORD(v127) = v127 | 8;
          v42 = *(this + 19);
          v43 = *(this + 28);
          v44 = *(this + 29);
          v117 = xmmword_1C2C00670;
          v118 = unk_1C2C00680;
          v119 = xmmword_1C2C00690;
          v115 = ZERO_RANKING_BITS;
          v116 = unk_1C2C00660;
          v121 = 0;
          v122 = 0;
          LODWORD(v124) = 0;
          v123 = 0;
          v113 &= 0xFFFFFF0000000000;
          writeDBOToPlistBytes(v8, v114, a2, v42, v126, *(this + 2), v43, v44, 0, &v115, v113, SBYTE4(v113), &v121, 0, 0, 0, *(this + 1), 0);
        }

        goto LABEL_66;
      }

      if (dword_1EBF46AD0 >= 5)
      {
        v39 = *__error();
        v40 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
LABEL_54:
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "File failed secondary query", buf, 2u);
        }

LABEL_55:
        *__error() = v39;
      }
    }

LABEL_66:
    if (v129[0] == v17)
    {
      v129[0] = 0;
    }

    CatInfoGotten_OID::~CatInfoGotten_OID(v126);
    v19 = *(this + 50);
    goto LABEL_69;
  }

  if ((v16 & 0x4000) != 0)
  {
    if (*MEMORY[0x1E69E9AC8] <= 0x2FuLL)
    {
      ++sTotal;
    }

    v112 = malloc_type_zone_calloc(queryZone, 1uLL, 0x30uLL, 0x5BAF1CEAuLL);
    if (v112)
    {
      goto LABEL_80;
    }

    _log_fault_for_malloc_failure();
  }

  v112 = 0;
LABEL_80:
  PartialQueryResults::attributeIdVector(a2, *(v8 + 1192));
  v50 = db_obj_iter_create_with_filter(*(v8 + 1192), v7, *(this + 48) + 8 * *(this + 50), 0, 0, 0, 0, 0, 0);
  v54 = 0;
  LODWORD(v111) = 0;
  *(this + 50) += v7;
  v110 = v4;
  while (1)
  {
    *buf = 0;
    v55 = db_obj_iter_next(v50, buf, 1, v51, v52, v53);
    if (*buf >= v7)
    {
      break;
    }

    v56 = v55;
    if ((*(this + 41) & 0x40) != 0)
    {
      if (!v55)
      {
        v56 = v112;
        *v112 = *(*(this + 48) + 8 * *buf);
        goto LABEL_100;
      }

      if (dword_1EBF46AD0 >= 5)
      {
        v58 = v54;
        v59 = *__error();
        v60 = _SILogForLogForCategory(1);
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_98;
        }

        *v126 = 0;
        v61 = v60;
        v62 = "File with dbo: ignored for search during initial indexing";
        goto LABEL_97;
      }
    }

    else if (v55)
    {
      if ((v4 & 1) != 0 && (*(this + 46) || *(this + 45)))
      {
        v57 = v55[3];
        if (v111 < v57)
        {
          v111 = (v57 + 4095) & 0xFFFFF000;
          v54 = malloc_type_realloc(v54, v111, 0x1000040EED21634uLL);
          v57 = v56[3];
        }

        memcpy(v54, v56, v57);
        v56 = v54;
      }

LABEL_100:
      v130 = 0;
      v131 = 0;
      memset(v129, 0, sizeof(v129));
      v128 = 0u;
      v127 = 0u;
      v64 = *(this + 2);
      *(&v127 + 1) = v8;
      *&v128 = v64;
      if (v8)
      {
        v65 = *(v8 + 6586) >> 7;
      }

      else
      {
        LOBYTE(v65) = 1;
      }

      LOBYTE(v131) = v65;
      *v126 = &unk_1F42826A0;
      v129[0] = v56;
      if (*(this + 45))
      {
        *(&v115 + 1) = v8;
        *&v116 = this;
        *(&v116 + 1) = v64;
        *&v117 = 0;
        *&v115 = &unk_1F4282488;
        *(&v117 + 1) = v126;
        v121 = 0;
        v122 = LazyGottenObject::_faultInGottenObj;
        v123 = 0;
        v124 = v126;
        v66 = *(this + 19);
        if (!db_eval_obj_with_options(*(v8 + 1192)))
        {
          if (dword_1EBF46AD0 < 5)
          {
            goto LABEL_141;
          }

          v69 = v54;
          v109 = *__error();
          v78 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            *v120 = 0;
            v79 = v78;
            v80 = "File failed primary query";
            goto LABEL_131;
          }

LABEL_132:
          *__error() = v109;
LABEL_137:
          v54 = v69;
          v4 = v110;
          goto LABEL_141;
        }
      }

      if (*(this + 46))
      {
        v67 = *(this + 2);
        *(&v115 + 1) = *(&v127 + 1);
        *&v116 = this;
        *(&v116 + 1) = v67;
        *&v117 = 0;
        *&v115 = &unk_1F4282488;
        *(&v117 + 1) = v126;
        v121 = 0;
        v122 = LazyGottenObject::_faultInGottenObj;
        v123 = 0;
        v124 = v126;
        v68 = *(this + 19);
        if (!db_eval_obj_with_options(*(v8 + 1192)))
        {
          if (dword_1EBF46AD0 < 5)
          {
            goto LABEL_141;
          }

          v69 = v54;
          v109 = *__error();
          v81 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *v120 = 0;
            v79 = v81;
            v80 = "File failed secondary query";
LABEL_131:
            _os_log_impl(&dword_1C278D000, v79, OS_LOG_TYPE_DEFAULT, v80, v120, 2u);
          }

          goto LABEL_132;
        }
      }

      if (*(this + 40) == 4)
      {
        v69 = v54;
        if (*(v8 + 1192))
        {
          v70 = v129[0];
        }

        else
        {
          v70 = 0;
        }

        if (*(a2 + 29))
        {
          if (*a2 == 1)
          {
            if (!*(a2 + 13))
            {
              v71 = *(a2 + 16);
              if (v71)
              {
                *&v115 = 0;
                SIFlattenArrayToCStringVector(v71, a2 + 13, &v115, &v121);
              }
            }
          }

          else if (!*(a2 + 12))
          {
            v82 = *(a2 + 15);
            if (v82)
            {
              SIFlattenArrayToCStringVector(v82, a2 + 12, a2 + 30, a2 + 29);
              if (!*(a2 + 12))
              {
                v91 = __si_assert_copy_extra_332();
                __message_assert_336(v91, v92, v93, v94, v95, v96, v97, v98, "SISearchCtx.h");
                free(v91);
                if (__valid_fs(-1))
                {
                  v99 = 2989;
                }

                else
                {
                  v99 = 3072;
                }

                *v99 = -559038737;
                abort();
              }
            }
          }
        }

        collectAttributesFromDBO(v8, v70, *(a2 + 29), a2, *(this + 19));
        goto LABEL_137;
      }

      if (*(a2 + 314) >= 0xFFFDuLL)
      {
        v72 = *(this + 13);
        v73 = v72;
        do
        {
          v74 = v73;
          v73 = *(v73 + 80);
        }

        while (v73);
        v75 = *(v72 + 80);
        if (v75)
        {
          v76 = 0;
          do
          {
            v76 ^= *(v72 + 104) == 0;
            v72 = v75;
            v75 = *(v75 + 80);
          }

          while (v75);
          if (v76)
          {
            v77 = 3553;
          }

          else
          {
            v77 = 2781;
          }
        }

        else
        {
          v77 = 2781;
        }

        PartialQueryResults::prepare(a2, *(*(v74 + 8) + 80), v77, 0);
      }

      LODWORD(v127) = v127 | 8;
      v83 = *(this + 19);
      v84 = *(this + 28);
      v85 = *(this + 29);
      v117 = xmmword_1C2C00670;
      v118 = unk_1C2C00680;
      v119 = xmmword_1C2C00690;
      v115 = ZERO_RANKING_BITS;
      v116 = unk_1C2C00660;
      v121 = 0;
      v122 = 0;
      LODWORD(v124) = 0;
      v123 = 0;
      v113 &= 0xFFFFFF0000000000;
      writeDBOToPlistBytes(v8, v114, a2, v83, v126, *(this + 2), v84, v85, 0, &v115, v113, SBYTE4(v113), &v121, 0, 0, 0, *(this + 1), 0);
LABEL_141:
      if (v129[0] == v56)
      {
        v129[0] = 0;
      }

      CatInfoGotten_SDB::~CatInfoGotten_SDB(v126);
    }

    else if (dword_1EBF46AD0 >= 5)
    {
      v58 = v54;
      v59 = *__error();
      v63 = _SILogForLogForCategory(1);
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_98;
      }

      *v126 = 0;
      v61 = v63;
      v62 = "File without dbo";
LABEL_97:
      _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, v62, v126, 2u);
LABEL_98:
      *__error() = v59;
      v54 = v58;
      v4 = v110;
    }
  }

  free(v54);
  if (*(a2 + 186))
  {
    _MDPlistBytesEndArray();
    v86 = *(a2 + 186);
    _MDPlistBytesEndPlist();
  }

  if (*(a2 + 58))
  {
    v87 = *(a2 + 443);
    _MDStoreOIDArrayEndBulkAdd();
    v88 = *(a2 + 58);
    _MDStoreOIDArrayEndSequence();
    *(a2 + 443) = 0;
  }

  db_obj_iter_release(v50);
  if ((*(this + 41) & 0x40) != 0)
  {
    free(v112);
  }

LABEL_150:
  result = *(this + 50) < *(this + 49);
  v90 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LazyGottenObject::_faultInGottenObj(uint64_t a1, uint64_t a2)
{
  result = (*(**(a2 + 24) + 24))(*(a2 + 24));
  *a2 = result;
  return result;
}

uint64_t QueryFunctionCallbackContext::findContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = si_indexForDocId(*(a1 + 8), *(a2 + 32));
  if (v6)
  {
    v7 = *(a3 + 72);
    if (v7)
    {
      v8 = strlen(*(a3 + 72));
    }

    else
    {
      v8 = 0;
    }

    v9 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v7, v8, 0x8000100u, 0);
    v10 = *(a3 + 32);
    v11 = (v10 >> 4) & 1;
    if ((v10 & 0x800000) != 0)
    {
      v11 = (v10 >> 4) & 1 | ((*(a3 + 28) & 0x7F) << 18) | 0x10000;
    }

    v12 = (v10 >> 4) & 2;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(v13 + 8);
      if (v14)
      {
        v15 = v14[82];
        v17 = v14[4];
        v18 = v15;
        v19 = v14[9];
      }
    }

    LODWORD(v6) = ContentIndexContainsContentByDocId(v6, *(a2 + 32), v9, v11 | v12, 0, (*(*(a1 + 8) + 6584) >> 25) & 3, *(a1 + 32), &v17);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  return v6 ^ ((*(a3 + 24) - 5) < 2);
}

uint64_t QueryFunctionCallbackContext_OO::gotten(uint64_t a1)
{
  return *(a1 + 40);
}

{
  return *(a1 + 40);
}

void SISearchCtx_ItemScope::enqueue(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 304);
  if (*(v6 + 1192))
  {
    if (v7 >= 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = *(a1 + 304);
    }

    v9 = *(a1 + 24);

    si_sdb_enqueue(v9, a4, a2, a3, v8);
  }

  else
  {
    if (!*(v6 + 1080))
    {
      v15 = __si_assert_copy_extra_661(-1);
      v16 = v15;
      v17 = "";
      if (v15)
      {
        v17 = v15;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIJob.c", 125, "ref->workqueues.queues[SI_FS_QUEUE_IDX]!=0", v17);
      free(v16);
      if (__valid_fs(-1))
      {
        v18 = 2989;
      }

      else
      {
        v18 = 3072;
      }

      *v18 = -559038737;
      abort();
    }

    if (qos_class_self() <= QOS_CLASS_USER_INITIATED)
    {
      v10 = qos_class_self();
    }

    else
    {
      v10 = QOS_CLASS_USER_INITIATED;
    }

    if (v7 == -1)
    {
      v11 = 17;
    }

    else
    {
      v11 = v10;
    }

    v12 = 72;
    if (v7 >= -1)
    {
      v13 = v11;
    }

    else
    {
      v12 = 64;
      v13 = 9;
    }

    v14 = *(v6 + v12 + 1008);

    si_enqueue_work_with_qos(v14, v13, a2, a3);
  }
}

void SISearchCtx_ItemScope::~SISearchCtx_ItemScope(SISearchCtx_ItemScope *this)
{
  SISearchCtx_ItemScope::~SISearchCtx_ItemScope(this);

  JUMPOUT(0x1C691FEF0);
}

{
  *this = &unk_1F42823E0;
  v2 = *(this + 47);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 47) = 0;
  v3 = *(this + 46);
  if (v3)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 0x40000000;
    v8 = __db_query_tree_apply_block_block_invoke;
    v9 = &unk_1E8198ED0;
    v10 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v3, &v6, 0);
  }

  v4 = *(this + 45);
  if (v4)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 0x40000000;
    v8 = __db_query_tree_apply_block_block_invoke;
    v9 = &unk_1E8198ED0;
    v10 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v4, &v6, 0);
  }

  v5 = *(this + 48);
  if (v5)
  {
    free(v5);
  }

  SISearchCtx::~SISearchCtx(this);
}

void SISearchCtx::pushCompletions(SISearchCtx *this, PartialQueryResults *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (*(this + 44))
  {
    if (_SIPerf_QueryLog(void)::onceToken[0] != -1)
    {
      dispatch_once(_SIPerf_QueryLog(void)::onceToken, &__block_literal_global_62);
    }

    v3 = _SIPerf_QueryLog(void)::sQueryLog;
    v4 = os_signpost_id_generate(_SIPerf_QueryLog(void)::sQueryLog);
    v49 = v4 - 1;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "com_apple_spotlight_suggestions_latency", &unk_1C2C3BEBB, buf, 2u);
    }

    v5 = *(*(this + 44) + 4);
    makeThreadId();
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    memset(__p, 0, sizeof(__p));
    v50 = v4;
    log = v3;
    if (v5)
    {
      v6 = (*(this + 44) + 24);
      v7 = v5;
      v8 = 0;
      do
      {
        v9 = *v6;
        v6 += 3;
        v10 = v8 + v9 - 1;
        v8 = v10;
        --v7;
      }

      while (v7);
      std::vector<oid_and_rankinfo_t>::reserve(&v61, v10);
      std::vector<long long>::reserve(&v58, v10);
      LOWORD(v52) = 0;
      v11 = *(this + 44);
      v12 = 0;
      do
      {
        v13 = v11;
        v14 = v12;
        v15 = v11 + 24 * v12;
        v16 = v13;
        if (*(v15 + 24) != 1)
        {
          v17 = (v15 + 8);
          do
          {
            pqpop_oid_and_rankinfo_t(buf, v17);
            std::vector<oid_and_rankinfo_t>::push_back[abi:nn200100](&v61, buf);
            *buf = *(v62 - 112);
            std::vector<unsigned long>::push_back[abi:nn200100](&v58, buf);
            std::vector<unsigned short>::push_back[abi:nn200100](__p, &v52);
            v18 = *(this + 44) + 24 * v52;
            v17 = (v18 + 8);
          }

          while (*(v18 + 24) != 1);
          v14 = v52;
          v16 = *(this + 44);
        }

        v11 = v16;
        v19 = v14 + 1;
        LOWORD(v52) = v19;
        v12 = v19;
      }

      while (v5 > v19);
    }

    else
    {
      std::vector<oid_and_rankinfo_t>::reserve(&v61, 0);
      std::vector<long long>::reserve(&v58, 0);
    }

    v20 = v58;
    v21 = v59 - v58;
    if (v59 != v58)
    {
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v23 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*(this + 3) + 1192), 0x40000000, add_explicit + 1);
      v25 = v24;
      v26 = v23;
      v27 = HIDWORD(v23);
      v29 = v28;
      v30 = threadData[9 * v23 + 1] + 320 * HIDWORD(v23);
      *(v30 + 216) = 0;
      v46 = *(v30 + 312);
      v31 = *(v30 + 224);
      if (v31)
      {
        v31(*(v30 + 288));
      }

      v55 = v27;
      v56 = v26;
      v53 = v25;
      v54 = v29;
      if (_setjmp(v30))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v30 + 312) = v46;
        CIOnThreadCleanUpReset(v53);
        dropThreadId(v56, 1, add_explicit + 1);
        CICleanUpReset(v56, v54);
      }

      else
      {
        os_unfair_lock_lock(&globalCompletionsMutex);
        v47 = v20;
        v32 = db_obj_iter_create_with_filter(*(*(this + 3) + 1192), v21 >> 3, v20, 0, 0, 0, 0, 0, 0);
        v35 = v61;
        v36 = 0x6DB6DB6DB6DB6DB7 * ((v62 - v61) >> 4);
        v37 = MEMORY[0x1E69E9C10];
        v38 = 134217984;
        while (1)
        {
          v52 = 0;
          v39 = db_obj_iter_next(v32, &v52, 0, *&v38, v33, v34);
          if (!v39)
          {
            break;
          }

          v40 = v52;
          if (v52 >= v36)
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              *buf = 134217984;
              *&buf[4] = v40;
              _os_log_fault_impl(&dword_1C278D000, v37, OS_LOG_TYPE_FAULT, "db_obj_iter returned an unreasonable index %ld", buf, 0xCu);
            }
          }

          else
          {
            v41 = &v35[112 * v52];
            v42 = *(this + 3);
            v65 = *(v41 + 2);
            v66 = *(v41 + 3);
            v67 = *(v41 + 4);
            v68 = *(v41 + 5);
            *buf = *(v41 + 1);
            collectCompletionsFromDBO(this, v42, v39, buf, v41[96], a2, 0, *(this + 19));
          }
        }

        db_obj_iter_release(v32);
        v43 = threadData[9 * v56 + 1] + 320 * v55;
        *(v43 + 312) = v46;
        v44 = *(v43 + 232);
        if (v44)
        {
          v44(*(v43 + 288));
        }

        dropThreadId(v56, 0, add_explicit + 1);
        os_unfair_lock_unlock(&globalCompletionsMutex);
        v20 = v47;
      }

      if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C278D000, log, OS_SIGNPOST_INTERVAL_END, v50, "com_apple_spotlight_suggestions_latency", " enableTelemetry=YES ", buf, 2u);
      }
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v20)
    {
      operator delete(v20);
    }

    if (v61)
    {
      operator delete(v61);
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

void SISearchCtx::pushCompletionsWithLanguage(SISearchCtx *this, PartialQueryResults *a2)
{
  v124 = *MEMORY[0x1E69E9840];
  if (*(this + 44))
  {
    v2 = this;
    if (_SIPerf_QueryLog(void)::onceToken[0] != -1)
    {
      dispatch_once(_SIPerf_QueryLog(void)::onceToken, &__block_literal_global_62);
    }

    v3 = _SIPerf_QueryLog(void)::sQueryLog;
    v4 = os_signpost_id_generate(_SIPerf_QueryLog(void)::sQueryLog);
    v83 = v4 - 1;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "com_apple_spotlight_suggestions_latency_with_language", &unk_1C2C3BEBB, buf, 2u);
    }

    v5 = *(*(v2 + 44) + 4);
    makeThreadId();
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    memset(v111, 0, sizeof(v111));
    v103 = 0;
    v104 = &v103;
    v105 = 0x4002000000;
    v106 = __Block_byref_object_copy__16195;
    v107 = __Block_byref_object_dispose__16196;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v99 = 0;
    v98 = &v99;
    v81 = v2;
    spid = v4;
    v85 = v3;
    if (v5)
    {
      v6 = (*(v2 + 44) + 24);
      v7 = v5;
      v8 = 0;
      do
      {
        v9 = *v6;
        v6 += 3;
        v10 = v8 + v9 - 1;
        v8 = v10;
        --v7;
      }

      while (v7);
      std::vector<oid_and_rankinfo_t>::reserve(&v115, v10);
      std::vector<long long>::reserve(&v112, v10);
      std::vector<int>::reserve((v104 + 5), v10);
      std::vector<unsigned short>::reserve(v111, v10);
      LOWORD(v119[0]) = 0;
      v11 = *(v2 + 44);
      v12 = 0;
      v77 = v5;
      do
      {
        v13 = v11;
        v14 = v12;
        v15 = v11 + 24 * v12;
        v16 = v13;
        if (*(v15 + 24) != 1)
        {
          v17 = (v15 + 8);
          do
          {
            pqpop_oid_and_rankinfo_t(buf, v17);
            std::vector<oid_and_rankinfo_t>::push_back[abi:nn200100](&v115, buf);
            *buf = *(v116 - 14);
            std::vector<unsigned long>::push_back[abi:nn200100](&v112, buf);
            std::vector<unsigned short>::push_back[abi:nn200100](v111, v119);
            v18 = v104;
            v19 = v104[6];
            v20 = v104[7];
            if (v19 >= v20)
            {
              v22 = v104[5];
              v23 = v19 - v22;
              v24 = v23 >> 2;
              v25 = (v23 >> 2) + 1;
              if (v25 >> 62)
              {
                goto LABEL_89;
              }

              v26 = v20 - v22;
              if (v26 >> 1 > v25)
              {
                v25 = v26 >> 1;
              }

              if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v27 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v27 = v25;
              }

              if (v27)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(v27);
              }

              v28 = v104[5];
              *(4 * v24) = -1;
              v21 = 4 * v24 + 4;
              memcpy(0, v28, v23);
              v29 = v18[5];
              v18[5] = 0;
              v18[6] = v21;
              v18[7] = 0;
              if (v29)
              {
                operator delete(v29);
              }

              v2 = v81;
            }

            else
            {
              *v19 = -1;
              v21 = (v19 + 1);
            }

            v18[6] = v21;
            v30 = *(v2 + 44) + 24 * LOWORD(v119[0]);
            v17 = (v30 + 8);
          }

          while (*(v30 + 24) != 1);
          v14 = LOWORD(v119[0]);
          v16 = *(v2 + 44);
          LODWORD(v5) = v77;
        }

        v11 = v16;
        v31 = v14 + 1;
        LOWORD(v119[0]) = v31;
        v12 = v31;
      }

      while (v5 > v31);
    }

    else
    {
      std::vector<oid_and_rankinfo_t>::reserve(&v115, 0);
      std::vector<long long>::reserve(&v112, 0);
      std::vector<int>::reserve((v104 + 5), 0);
      std::vector<unsigned short>::reserve(v111, 0);
    }

    v32 = v112;
    v33 = v113 - v112;
    if (v113 != v112)
    {
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v35 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*(v2 + 3) + 1192), 0x40000000, add_explicit + 1);
      v37 = v36;
      v38 = v35;
      v39 = HIDWORD(v35);
      v41 = v40;
      v42 = threadData[9 * v35 + 1] + 320 * HIDWORD(v35);
      *(v42 + 216) = 0;
      v43 = *(v42 + 312);
      v44 = *(v42 + 224);
      if (v44)
      {
        v44(*(v42 + 288));
      }

      v97 = v38;
      v96 = v39;
      v95 = v41;
      v94 = v37;
      if (_setjmp(v42))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v42 + 312) = v43;
        CIOnThreadCleanUpReset(v94);
        dropThreadId(v97, 1, add_explicit + 1);
        CICleanUpReset(v97, v95);
      }

      else
      {
        v45 = db_obj_iter_create_with_filter(*(*(v2 + 3) + 1192), v33 >> 3, v32, 0, 0, 0, 0, 0, 0);
        memset(v119, 0, sizeof(v119));
        v46 = *(v2 + 3);
        v79 = v43;
        if (v33 < 0xA1)
        {
          v47 = 1;
        }

        else if (*(v46 + 6587))
        {
          v47 = 3;
        }

        else
        {
          v47 = 1;
        }

        PartialQueryResults::completionAttributeIdVector(a2, *(v46 + 1192));
        db_obj_iter_create_subiterators(v45, v47, v119, v48, v49, v50);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 1174405120;
        block[2] = ___ZN11SISearchCtx27pushCompletionsWithLanguageER19PartialQueryResults_block_invoke;
        block[3] = &unk_1F4282308;
        block[5] = v2;
        block[6] = v119;
        v89 = 0;
        v90 = 0;
        __p = 0;
        v78 = v115;
        v51 = v116 - v115;
        if (v116 != v115)
        {
          v52 = 0x6DB6DB6DB6DB6DB7 * (v51 >> 4);
          if (v52 < 0x24924924924924ALL)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<oid_and_rankinfo_t>>(v52);
          }

          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        block[4] = &v103;
        v91 = a2;
        v92 = &v98;
        v93 = &v100;
        dispatch_apply(v47, 0, block);
        db_obj_iter_release(v45);
        SILanguageModelShrinkLanguageGuessers();
        if (v101 != v100)
        {
          if (!((0xAAAAAAAAAAAAAAABLL * ((v101 - v100) >> 3)) >> 62))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(0xAAAAAAAAAAAAAAABLL * ((v101 - v100) >> 3));
          }

LABEL_89:
          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        v54 = v104[5];
        for (i = v104[6]; v54 != i; ++v54)
        {
          v55 = *v54;
          if ((v55 & 0x80000000) == 0)
          {
            ++*(4 * v55);
          }
        }

        v80 = v32;
        v56 = db_obj_iter_create_with_filter(*(*(v2 + 3) + 1192), v33 >> 3, v32, 0, 0, 0, 0, 0, 0);
        os_unfair_lock_lock(&globalCompletionsMutex);
        v58 = 134217984;
        v59 = 134218240;
        v60 = MEMORY[0x1E69E9C10];
        while (1)
        {
          v86 = 0;
          v118[0] = 0;
          v118[1] = 0;
          v61 = db_obj_iter_next(v56, &v86, 0, *&v59, *&v58, v57);
          if (!v61)
          {
            break;
          }

          v62 = v86;
          if (v86 >= 0x6DB6DB6DB6DB6DB7 * (v51 >> 4))
          {
            if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
            {
              *buf = 134217984;
              *&buf[4] = v62;
              _os_log_fault_impl(&dword_1C278D000, v60, OS_LOG_TYPE_FAULT, "db_obj_iter returned an unreasonable index %ld", buf, 0xCu);
            }
          }

          else
          {
            v63 = *(v104[5] + 4 * v86);
            if (v63 == -1)
            {
              v64 = *(v81 + 19);
              if (v64)
              {
                v65 = &v78[112 * v86];
                v118[0] = *v64;
                v66 = *(v81 + 3);
                *&buf[16] = *(v65 + 2);
                v121 = *(v65 + 3);
                v122 = *(v65 + 4);
                v123 = *(v65 + 5);
                *buf = *(v65 + 1);
                collectCompletionsFromDBO(v81, v66, v61, buf, v65[96], a2, v118, *(v81 + 19));
              }

              else if (dword_1EBF46AD0 >= 5)
              {
                v75 = *__error();
                v73 = _SILogForLogForCategory(1);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                {
                  v69 = v80[v62];
                  *buf = 134217984;
                  *&buf[4] = v69;
                  _os_log_impl(&dword_1C278D000, v73, OS_LOG_TYPE_DEFAULT, "completions: language is -1 and _languages is null for oid %ld; skipping", buf, 0xCu);
                }

                *__error() = v75;
              }
            }

            else if (dword_1EBF46AD0 >= 5)
            {
              v76 = *__error();
              log = _SILogForLogForCategory(1);
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                v67 = v80[v62];
                v68 = *(v104[5] + 4 * v62);
                *buf = 134218240;
                *&buf[4] = v67;
                *&buf[12] = 1024;
                *&buf[14] = v68;
                _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "completions: ignoring oid %ld with bad language %d", buf, 0x12u);
              }

              *__error() = v76;
            }
          }
        }

        v70 = threadData[9 * v97 + 1] + 320 * v96;
        *(v70 + 312) = v79;
        v71 = *(v70 + 232);
        if (v71)
        {
          v71(*(v70 + 288));
        }

        dropThreadId(v97, 0, add_explicit + 1);
        if (__p)
        {
          v89 = __p;
          operator delete(__p);
        }

        if (v56)
        {
          db_obj_iter_release(v56);
        }

        os_unfair_lock_unlock(&globalCompletionsMutex);
        v32 = v80;
      }
    }

    if (v83 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v85, OS_SIGNPOST_INTERVAL_END, spid, "com_apple_spotlight_suggestions_latency_with_language", " enableTelemetry=YES ", buf, 2u);
    }

    *buf = &v100;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
    _Block_object_dispose(&v103, 8);
    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }

    if (v111[0])
    {
      operator delete(v111[0]);
    }

    if (v32)
    {
      operator delete(v32);
    }

    if (v115)
    {
      operator delete(v115);
    }
  }

  v72 = *MEMORY[0x1E69E9840];
}

void lowWaterRoutine(uint64_t a1, uint64_t a2)
{
  if (dword_1EBF46AD0 >= 5)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "Low water routine triggered", v12, 2u);
    }

    *__error() = v6;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    si_querypipe_remove_process(*(*a1 + 104), *(*a1 + 8), 0, 1);
    v4 = a1;
    v5 = a2;
    goto LABEL_4;
  }

  *(a1 + 8) = CFAbsoluteTimeGetCurrent();
  *(a1 + 16) = "lowWaterRoutine";
  if (si_querypipe_copy_jobid(*(*a1 + 104)))
  {
    priority = query_priority(*(*a1 + 8));
    v9 = *(*a1 + 24);
    if (v9)
    {
      v10 = priority;
      v11 = *(v9 + 8 * (priority + 14) + 1008);
      if (v11)
      {
        si_enqueue_work_with_qos(v11, 8 * v10 + 9, resumeQuery, a1);
        return;
      }
    }

    si_querypipe_remove_process(*(*a1 + 104), *(*a1 + 8), 0, 0);
    v4 = a1;
    v5 = 0;
  }

  else
  {
    v4 = a1;
    v5 = 1;
  }

LABEL_4:
  search_ctx_destroy(v4, v5);
}

void resumeQuery(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD0 >= 5)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "resumeQuery triggered", &v15, 2u);
    }

    *__error() = v6;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    si_querypipe_remove_process(*(*a1 + 104), *(*a1 + 8), 0, 1);
    v4 = a1;
    v5 = a2;
LABEL_4:
    search_ctx_destroy(v4, v5);
    goto LABEL_16;
  }

  *(a1 + 1) = CFAbsoluteTimeGetCurrent();
  a1[2] = "resumeQuery";
  v8 = si_querypipe_copy_jobid(*(*a1 + 104));
  if (!v8)
  {
    v4 = a1;
    v5 = 1;
    goto LABEL_4;
  }

  v9 = v8;
  v10 = *(*a1 + 24);
  v11 = *(v10 + 8 * query_priority(*(*a1 + 8)) + 832);
  if (*(*(*a1 + 104) + 16) == v11)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "resumeQuery";
      v17 = 1024;
      v18 = 162;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: resumeQuery attempted to wait on already held semaphore", &v15, 0x12u);
    }

    *__error() = v12;
  }

  else
  {
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    si_querypipe_set_semaphore(*(*a1 + 104), v11);
  }

  (*(**a1 + 24))(*a1, executeSearchCtx2, a1, v9);
  si_release_qid(v9);
LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
}

__n128 __Block_byref_object_copy__16195(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__16196(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *std::vector<oid_and_rankinfo_t>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<oid_and_rankinfo_t>>(a2);
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(__n);
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }
}

void *std::vector<unsigned short>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a2);
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

__int128 *pqpop_oid_and_rankinfo_t(__int128 *result, void *a2)
{
  v125 = *MEMORY[0x1E69E9840];
  v2 = a2[2];
  if (v2 != 1)
  {
    v4 = *a2;
    v5 = *(*a2 + 192);
    result[4] = *(*a2 + 176);
    result[5] = v5;
    result[6] = *(v4 + 208);
    v6 = *(v4 + 128);
    *result = *(v4 + 112);
    result[1] = v6;
    v7 = *(v4 + 160);
    result[2] = *(v4 + 144);
    result[3] = v7;
    v8 = v4 + 112 * v2;
    v113 = *(v8 - 112);
    v9 = *(v8 - 96);
    v10 = *(v8 - 88);
    v77 = *(v8 - 80);
    v79 = *(v8 - 64);
    v11 = *(v8 - 48);
    v12 = *(v8 - 44);
    v13 = *(v8 - 40);
    v14 = *(v8 - 36);
    v15 = *(v8 - 32);
    v16 = *(v8 - 28);
    v17 = *(v8 - 27);
    v18 = *(v8 - 26);
    v19 = *(v8 - 18);
    v114 = *(v8 - 16);
    *(v4 + 112) = *(v8 - 112);
    *(v4 + 144) = v77;
    *(v4 + 160) = v79;
    v20 = v114;
    *(v4 + 208) = v114;
    v124 = v113;
    v111 = v77;
    v112 = v79;
    v75 = v16;
    v73 = v15;
    v116 = v19;
    v115 = v18;
    *(v4 + 128) = v9;
    *(v4 + 136) = v10;
    *(v4 + 176) = v11;
    *(v4 + 180) = v12;
    *(v4 + 184) = v13;
    *(v4 + 188) = v14;
    *(v4 + 192) = v15;
    *(v4 + 196) = v16;
    *(v4 + 197) = v17;
    *(v4 + 206) = v19;
    *(v4 + 198) = v18;
    v21 = a2[1];
    v22 = a2[2];
    a2[2] = v22 - 1;
    v72 = v21 >> 1;
    v109 = v15;
    v110 = v16;
    v122 = v18;
    v23 = 3;
    v24 = 2;
    v25 = 1;
    v123 = v116;
    v121 = v20;
    while (1)
    {
      v26 = *a2;
      v27 = (*a2 + 112 * v24);
      v28 = *(v27 + 2);
      v29 = *(v27 + 3);
      v30 = *(v27 + 16);
      v31 = *(v27 + 17);
      v32 = *(v27 + 18);
      v33 = *(v27 + 19);
      v34 = *(v27 + 85);
      v35 = *a2 + 112 * v23;
      v120 = *v35;
      v37 = *(v35 + 16);
      v36 = *(v35 + 24);
      v38 = *(v35 + 48);
      v107 = *(v35 + 32);
      v108 = v38;
      v39 = *(v35 + 64);
      v40 = *(v35 + 68);
      v41 = *(v35 + 72);
      v42 = *(v35 + 76);
      v105 = *(v35 + 80);
      v106 = *(v35 + 84);
      v43 = *(v35 + 85);
      v118 = *(v35 + 86);
      v119 = *(v35 + 94);
      v117 = *(v35 + 96);
      if (v23 >= v22)
      {
        v120 = MAX_OIDINFO;
        v107 = xmmword_1C2C00730;
        v108 = unk_1C2C00740;
        v105 = 0;
        v106 = 0;
        v118 = 0;
        v119 = 0;
        v117 = 0uLL;
        if (v24 >= v22)
        {
          goto LABEL_3;
        }

        v43 = 0;
        v41 = 0;
        v39 = 0;
        v37 = -1;
        v40 = 0.0;
        v42 = 3.4028e38;
        v36 = -1;
      }

      v93[0] = v9;
      v93[1] = v10;
      v94 = v77;
      v95 = v79;
      v96 = v11;
      v97 = v12;
      v98 = v13;
      v99 = v14;
      v100 = v73;
      v101 = v75;
      v102 = v17;
      v103 = v115;
      v104 = v116;
      v81[0] = v37;
      v81[1] = v36;
      v82 = v107;
      v83 = v108;
      v84 = v39;
      v85 = v40;
      v86 = v41;
      v87 = v42;
      v88 = v105;
      v89 = v106;
      v90 = v43;
      v92 = v119;
      v91 = v118;
      if (v34)
      {
        if (v33 < v14)
        {
          goto LABEL_19;
        }

        if (v33 != v14)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (__PAIR128__(v29, v28) < __PAIR128__(v10, v9))
        {
          goto LABEL_19;
        }

        if (v29 != v10 || v28 != v9)
        {
LABEL_38:
          v66 = v17;
          v67 = v13;
          v68 = v11;
          v69 = v10;
          v70 = v9;
          v71 = a2;
          result = ci_rankingbits_wrapped_s::operator<(v81, v93);
          if ((result & 1) == 0)
          {
            _X8 = v26 + 224 * v25;
            __asm { PRFM            #1, [X8] }

            goto LABEL_3;
          }

          v47 = &v117;
          v46 = &v118;
          v45 = &v105;
          result = &v107;
          v27 = &v120;
          v34 = v43;
          v33 = v42;
          v32 = v41;
          v31 = v40;
          v30 = v39;
          v28 = v37;
          v29 = v36;
          v24 = v23;
          v9 = v70;
          a2 = v71;
          v10 = v69;
          v13 = v67;
          v11 = v68;
          v17 = v66;
          goto LABEL_33;
        }
      }

      if (v31 >= v12 && (v31 != v12 || v30 <= v11))
      {
        goto LABEL_38;
      }

LABEL_19:
      result = v27 + 2;
      v45 = (v27 + 5);
      v46 = (v27 + 86);
      v47 = v27 + 6;
      if ((v43 & 1) == 0)
      {
        if (__PAIR128__(v36, v37) >= __PAIR128__(v29, v28))
        {
          if (v36 != v29 || v37 != v28)
          {
            goto LABEL_33;
          }

LABEL_29:
          if (v40 >= v31 && (v40 != v31 || v39 <= v30))
          {
            goto LABEL_33;
          }
        }

LABEL_32:
        v47 = &v117;
        v46 = &v118;
        v45 = &v105;
        result = &v107;
        v27 = &v120;
        v34 = v43;
        v33 = v42;
        v32 = v41;
        v31 = v40;
        v30 = v39;
        v28 = v37;
        v29 = v36;
        v24 = v23;
        goto LABEL_33;
      }

      if (v42 < v33)
      {
        goto LABEL_32;
      }

      if (v42 == v33)
      {
        goto LABEL_29;
      }

LABEL_33:
      v113 = *v27;
      v78 = *result;
      v80 = result[1];
      v74 = *v45;
      v76 = *(v45 + 4);
      v115 = *v46;
      v116 = *(v46 + 4);
      v114 = *v47;
      _X14 = v26 + 224 * v24;
      __asm { PRFM            #1, [X14] }

      if (v24 != v25)
      {
        v54 = v124;
        v55 = v26 + 112 * v24;
        *v55 = v124;
        *(v55 + 16) = v9;
        *(v55 + 24) = v10;
        v56 = v112;
        v58 = v111;
        v57 = v112;
        *(v55 + 32) = v111;
        *(v55 + 48) = v56;
        *(v55 + 64) = v11;
        *(v55 + 68) = v12;
        *(v55 + 72) = v13;
        *(v55 + 76) = v14;
        v59 = v109;
        *(v55 + 80) = v109;
        *(v55 + 84) = v110;
        *(v55 + 85) = v17;
        *(v55 + 94) = v123;
        v60 = v122;
        *(v55 + 86) = v122;
        v61 = v121;
        *(v55 + 96) = v121;
        v62 = *a2 + 112 * v25;
        *v62 = v113;
        *(v62 + 32) = v78;
        *(v62 + 48) = v80;
        *(v62 + 68) = v31;
        *(v62 + 76) = v33;
        *(v62 + 96) = v114;
        v113 = v54;
        v25 = v24;
        v23 = (2 * v24) | 1;
        *(v62 + 16) = v28;
        *(v62 + 24) = v29;
        *(v62 + 64) = v30;
        *(v62 + 72) = v32;
        *(v62 + 84) = v76;
        *(v62 + 80) = v74;
        *(v62 + 85) = v34;
        *(v62 + 94) = v116;
        *(v62 + 86) = v115;
        v77 = v58;
        v79 = v57;
        v75 = v110;
        v73 = v59;
        v116 = v123;
        v115 = v60;
        v114 = v61;
        v63 = v24 < v72;
        v24 *= 2;
        if (v63)
        {
          continue;
        }
      }

      goto LABEL_3;
    }
  }

  result[4] = xmmword_1C2C006E0;
  result[5] = unk_1C2C006F0;
  result[6] = xmmword_1C2C00700;
  *result = ZERO_OIDINFO;
  result[1] = *algn_1C2C006B0;
  result[2] = xmmword_1C2C006C0;
  result[3] = unk_1C2C006D0;
LABEL_3:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void std::vector<oid_and_rankinfo_t>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
    v12 = v11 + 1;
    if ((v11 + 1) > 0x249249249249249)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x124924924924924)
    {
      v14 = 0x249249249249249;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<oid_and_rankinfo_t>>(v14);
    }

    v15 = 112 * v11;
    v16 = *a2;
    v17 = a2[2];
    *(v15 + 16) = a2[1];
    *(v15 + 32) = v17;
    *v15 = v16;
    v18 = a2[3];
    v19 = a2[4];
    v20 = a2[6];
    *(v15 + 80) = a2[5];
    *(v15 + 96) = v20;
    *(v15 + 48) = v18;
    *(v15 + 64) = v19;
    v10 = 112 * v11 + 112;
    v21 = *(a1 + 8) - *a1;
    v22 = v15 - v21;
    memcpy((v15 - v21), *a1, v21);
    v23 = *a1;
    *a1 = v22;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    v3[1] = a2[1];
    v3[2] = v6;
    *v3 = v5;
    v7 = a2[3];
    v8 = a2[4];
    v9 = a2[6];
    v3[5] = a2[5];
    v3[6] = v9;
    v3[3] = v7;
    v3[4] = v8;
    v10 = (v3 + 7);
  }

  *(a1 + 8) = v10;
}

void std::vector<unsigned short>::push_back[abi:nn200100](uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(v12);
    }

    v13 = (2 * v9);
    v14 = *a2;
    v15 = &v13[-(v8 >> 1)];
    *v13 = v14;
    v6 = v13 + 1;
    memcpy(v15, v7, v8);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t ___ZN11SISearchCtx27pushCompletionsWithLanguageER19PartialQueryResults_block_invoke(uint64_t a1, uint64_t a2)
{
  v125 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(*(*(v3 + 24) + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v7 = v6;
  v8 = v5;
  v9 = HIDWORD(v5);
  v11 = v10;
  v12 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  *(v12 + 216) = 0;
  v95 = *(v12 + 312);
  v13 = *(v12 + 224);
  if (v13)
  {
    v13(*(v12 + 288));
  }

  v104 = v9;
  v105 = v8;
  v102 = v7;
  v103 = v11;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v113) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v113, 2u);
    }

    *(v12 + 312) = v95;
    CIOnThreadCleanUpReset(v102);
    dropThreadId(v105, 1, add_explicit + 1);
    result = CICleanUpReset(v105, v103);
    goto LABEL_82;
  }

  v15 = v3;
  v16 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v17 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*(v3 + 24) + 1192), 0x40000000, v16 + 1);
  v19 = v18;
  v20 = v17;
  v21 = HIDWORD(v17);
  v23 = v22;
  v24 = threadData[9 * v17 + 1] + 320 * HIDWORD(v17);
  *(v24 + 216) = 0;
  v92 = *(v24 + 312);
  v25 = *(v24 + 224);
  if (v25)
  {
    v25(*(v24 + 288));
  }

  v100 = v21;
  v101 = v20;
  v98 = v19;
  v99 = v23;
  if (_setjmp(v24))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v113) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v113, 2u);
    }

    *(v24 + 312) = v92;
    CIOnThreadCleanUpReset(v98);
    dropThreadId(v101, 1, v16 + 1);
    CICleanUpReset(v101, v99);
    v29 = v95;
    goto LABEL_79;
  }

  v26.n128_u64[0] = 134217984;
  v30 = a2;
  v96 = add_explicit;
  v94 = v16;
  v91 = v15;
LABEL_14:
  while (2)
  {
    v31 = *(v15 + 104);
    v32 = *(v31 + 96);
    v33 = v31;
    if (*(v31 + 96))
    {
      v81 = *(*(a1 + 48) + 8 * v30);
      goto LABEL_84;
    }

    do
    {
      v34 = v33;
      v33 = *(v33 + 80);
    }

    while (v33);
    if (*(*(v34 + 8) + 12))
    {
      goto LABEL_72;
    }

    v97 = 0;
    v35 = db_obj_subiter_next(*(*(a1 + 48) + 8 * v30), &v97, v26.n128_f64[0], v27, v28);
    if (v35)
    {
      v36 = v97;
      if (v97 >= 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - *(a1 + 56)) >> 4))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          LODWORD(v113) = 134217984;
          *(&v113 + 4) = v36;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "db_obj_iter returned an unreasonable index %ld", &v113, 0xCu);
        }

        continue;
      }

      v37 = v35;
      v90 = v97;
      v111 = 0u;
      v112 = 0u;
      *buffer = 0u;
      v110 = 0u;
      v38 = *(*(v15 + 24) + 1192);
      v39 = PartialQueryResults::completionAttributeIdVector(*(a1 + 80), v38);
      v40 = *(*(a1 + 80) + 360);
      buffer[0] = 0;
      if (v40 < 1)
      {
        goto LABEL_70;
      }

      v41 = v39;
      v42 = v40 & 0x7FFFFFFF;
      while (1)
      {
        v43 = *v41;
        *&__dst = 0;
        __s = 0;
        if (!db_get_field_by_id(v38, v37, v43, &__dst, &__s) && *__dst == 11)
        {
          if ((*(__dst + 2) & 0x10) != 0)
          {
            string_for_id_locked = db_get_string_for_id_locked(v38, *__s);
            if (!string_for_id_locked)
            {
              goto LABEL_38;
            }
          }

          else
          {
            string_for_id_locked = __s;
            if (!__s)
            {
              goto LABEL_38;
            }
          }

          v45 = strlen(string_for_id_locked);
          v46 = CFStringCreateWithBytes(0, string_for_id_locked, v45, 0x8000100u, 0);
          if (v46)
          {
            v47 = v46;
            Length = CFStringGetLength(v46);
            v49 = NLStringTokenizerCopyBestStringLanguage();
            if (v49)
            {
              v50 = v49;
              v51 = CFStringGetLength(v49);
              if (v51)
              {
                v126.length = v51;
                v126.location = 0;
                buffer[CFStringGetBytes(v50, v126, 0x8000100u, 0x3Fu, 0, buffer, 32, 0)] = 0;
                v16 = v94;
              }

              CFRelease(v50);
            }

            if ((Length - 15) <= 0x54 && (!buffer[0] || (SIIsLanguagePreferred() & 1) == 0))
            {
              v123 = 0u;
              memset(v124, 0, sizeof(v124));
              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              v117 = 0u;
              v118 = 0u;
              v115 = 0u;
              v116 = 0u;
              v113 = 0u;
              v114 = 0u;
              v127.location = 0;
              v127.length = Length;
              CFStringGetCharacters(v47, v127, &v113);
              LanguageGuessUsingMontreal = SILanguageModelGetLanguageGuessUsingMontreal();
              if (LanguageGuessUsingMontreal)
              {
                v53 = LanguageGuessUsingMontreal;
                v128.length = CFStringGetLength(LanguageGuessUsingMontreal);
                v128.location = 0;
                buffer[CFStringGetBytes(v53, v128, 0x8000100u, 0x3Fu, 0, buffer, 32, 0)] = 0;
                CFRelease(v53);
              }
            }

            CFRelease(v47);
            add_explicit = v96;
            v30 = a2;
          }
        }

LABEL_38:
        if (!--v42)
        {
          if (!buffer[0])
          {
            goto LABEL_70;
          }

LABEL_44:
          os_unfair_lock_lock(**(a1 + 88));
          v54 = *(a1 + 96);
          v55 = 0xAAAAAAAAAAAAAAABLL * ((*(v54 + 8) - *v54) >> 3);
          if (v55 < 1)
          {
LABEL_50:
            v60 = strlen(buffer);
            if (v60 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::vector<long long>::__throw_length_error[abi:nn200100]();
            }

            v61 = v60;
            if (v60 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v107) = v60;
            if (v60)
            {
              memcpy(&__dst, buffer, v60);
            }

            *(&__dst + v61) = 0;
            v63 = *(v54 + 8);
            v62 = *(v54 + 16);
            if (v63 >= v62)
            {
              v65 = 0xAAAAAAAAAAAAAAABLL * ((v63 - *v54) >> 3);
              v66 = v65 + 1;
              if (v65 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<long long>::__throw_length_error[abi:nn200100]();
              }

              v67 = 0xAAAAAAAAAAAAAAABLL * ((v62 - *v54) >> 3);
              if (2 * v67 > v66)
              {
                v66 = 2 * v67;
              }

              if (v67 >= 0x555555555555555)
              {
                v68 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v68 = v66;
              }

              *&v115 = v54;
              if (v68)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v68);
              }

              v72 = 24 * v65;
              *v72 = __dst;
              *(v72 + 16) = v107;
              v73 = 24 * v65 + 24;
              v74 = *(v54 + 8) - *v54;
              v75 = 24 * v65 - v74;
              memcpy((v72 - v74), *v54, v74);
              v76 = *v54;
              *v54 = v75;
              *&v113 = v76;
              *(&v113 + 1) = v76;
              *(v54 + 8) = v73;
              *&v114 = v76;
              v77 = *(v54 + 16);
              *(v54 + 16) = 0;
              *(&v114 + 1) = v77;
              std::__split_buffer<std::string>::~__split_buffer(&v113);
              v64 = v73;
              v30 = a2;
            }

            else
            {
              *v63 = __dst;
              *(v63 + 16) = v107;
              v64 = v63 + 24;
            }

            *(v54 + 8) = v64;
            v70 = **(a1 + 88);
            v69 = -1 - 1431655765 * ((*(*(a1 + 96) + 8) - **(a1 + 96)) >> 3);
            v71 = v97;
          }

          else
          {
            v56 = v55 & 0x7FFFFFFF;
            v57 = *v54;
            v58 = 0;
            while (1)
            {
              v59 = v57;
              if (v57[23] < 0)
              {
                v59 = *v57;
              }

              if (!strcmp(buffer, v59))
              {
                break;
              }

              ++v58;
              v57 += 24;
              if (v56 == v58)
              {
                goto LABEL_50;
              }
            }

            v69 = v58;
            v70 = **(a1 + 88);
            v71 = v90;
          }

          v78 = v69;
          v79 = v71;
          os_unfair_lock_unlock(v70);
          *(*(*(*(a1 + 32) + 8) + 40) + 4 * v79) = v78;
LABEL_70:
          v15 = v91;
          goto LABEL_14;
        }

        ++v41;
        if (buffer[0])
        {
          goto LABEL_44;
        }
      }
    }

    break;
  }

  v32 = *(*(v15 + 104) + 96);
  v31 = *(v15 + 104);
LABEL_72:
  v80 = v31;
  v81 = *(*(a1 + 48) + 8 * v30);
  if (v32)
  {
LABEL_84:
    v84 = 0;
    v29 = v95;
    v82 = v92;
    goto LABEL_76;
  }

  v29 = v95;
  v82 = v92;
  do
  {
    v83 = v80;
    v80 = *(v80 + 80);
  }

  while (v80);
  v84 = *(*(v83 + 8) + 12) ^ 1;
LABEL_76:
  db_obj_subiter_release(v81, v84 & 1, v26);
  v85 = threadData[9 * v101 + 1] + 320 * v100;
  *(v85 + 312) = v82;
  v86 = *(v85 + 232);
  if (v86)
  {
    v86(*(v85 + 288));
  }

  dropThreadId(v101, 0, v16 + 1);
LABEL_79:
  v87 = threadData[9 * v105 + 1] + 320 * v104;
  *(v87 + 312) = v29;
  v88 = *(v87 + 232);
  if (v88)
  {
    v88(*(v87 + 288));
  }

  result = dropThreadId(v105, 0, add_explicit + 1);
LABEL_82:
  v89 = *MEMORY[0x1E69E9840];
  return result;
}

void std::vector<oid_and_rankinfo_t>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<oid_and_rankinfo_t>>(a2);
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<oid_and_rankinfo_t>>(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

void __destroy_helper_block_8_56c60_ZTSNSt3__16vectorI18oid_and_rankinfo_tNS_9allocatorIS1_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_8_56c60_ZTSNSt3__16vectorI18oid_and_rankinfo_tNS_9allocatorIS1_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  result = a1 + 56;
  *(result + 16) = 0;
  v4 = *(a2 + 56);
  v3 = *(a2 + 64);
  if (v3 != v4)
  {
    std::vector<oid_and_rankinfo_t>::__vallocate[abi:nn200100](result, 0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 4));
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

os_log_t ___ZL16_SIPerf_QueryLogv_block_invoke()
{
  result = os_log_create("com.apple.spotlight", "telemetry");
  _SIPerf_QueryLog(void)::sQueryLog = result;
  return result;
}

void *___ZN11SISearchCtx24populateSuggestionsModelEP18md_deadline_once_s_block_invoke(void *result, int a2)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 24) = *(result[6] + 248);
  }

  *(*(result[5] + 8) + 24) = a2 != 0;
  return result;
}

void ___ZN11SISearchCtx24populateSuggestionsModelEP18md_deadline_once_s_block_invoke_2(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  Current = CFAbsoluteTimeGetCurrent();
  v6 = *(a1 + 40);
  if (a2)
  {
    SIPommesSuggestionsModelRelease(v6);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = (Current - *(a1 + 48)) * 1000.0;
      v12 = 134217984;
      v13 = v7;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "releasing useless suggestions model after %f ms of init";
LABEL_6:
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, 0xCu);
    }
  }

  else
  {
    *(v4 + 280) = v6;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = (Current - *(a1 + 48)) * 1000.0;
      v12 = 134217984;
      v13 = v10;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "populating suggestions model after %f ms of init";
      goto LABEL_6;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t _qpCannedFieldQuery(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4, void *a5)
{
  v10 = *a3;
  v11 = strlen(*a3);
  v12 = CannedFieldTable::in_word_set(v10, v11);
  v13 = v12;
  if (*a2)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    (*(a2 + 8))(a1, a2);
    if (!v13)
    {
      return 0;
    }
  }

  v14 = v13[2];
  if (v14)
  {
    v15 = *a3;
    v16 = a5[3];
    v17 = *a2;
    v18 = *v17;
    v19 = a5[1];
    v20 = (*(*a5 + 32))(a5, v17);
    return (v14)(v19, v15, v16, v18, v17, v20, a3, a4);
  }

  return 0;
}

void si_cancel_activectx(void *a1)
{
  os_unfair_lock_lock(&sActiveCtxLock);
  if (activeCtxs)
  {
    CFSetApplyFunction(activeCtxs, cancelCtxApplier, a1);
  }

  os_unfair_lock_unlock(&sActiveCtxLock);
}

uint64_t cancelCtxApplier(uint64_t result, void *a2)
{
  if (*(result + 24) == a2)
  {
    *(result + 24) = 0;
  }

  return result;
}

query_node *defaultMatchQueryNodeForLLMRetrieval(char *__s, uint64_t *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v6 = 0;
  do
  {
    v7 = (v4 + 2);
    if (*(v4 + 39) < 0)
    {
      v7 = *v7;
    }

    QueryNode = createQueryNode(v7, __s, 112, 1, 0, *(v4 + 10), *(v4 + 10));
    if ((*(a3 + 29) & 0x40) != 0 && !strcmp(v7, "kMDItemTextContent"))
    {
      v9 = createQueryNode("_kMDItemBundleID", "com.apple.mobilesafari", 0, 5, 0, 0.0, 0.0);
      QueryNode = makeAndNode(QueryNode, v9);
    }

    v6 = makeOrNode(v6, QueryNode);
    v4 = *v4;
  }

  while (v4);
  return v6;
}

query_node *groundedNamesRetrievalNode(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = *MEMORY[0x1E69E9840];
  if (a1 && CFDictionaryGetCount(a1))
  {
    v7 = getkQPQUOutputECRGroundNamesTokenKey();
    Value = CFDictionaryGetValue(a1, v7);
  }

  else
  {
    Value = 0;
  }

  if (![Value count])
  {
    goto LABEL_45;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  memset(v72, 0, sizeof(v72));
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v10 = [Value countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v10)
  {
    v11 = 0;
    obj = Value;
    v52 = *v69;
    do
    {
      v12 = 0;
      v53 = v10;
      do
      {
        if (*v69 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v68 + 1) + 8 * v12);
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v58 = v13;
        v14 = [v13 countByEnumeratingWithState:&v61 objects:v74 count:{16, obj}];
        v54 = v12;
        if (v14)
        {
          v15 = *v62;
          v56 = *v62;
          do
          {
            v16 = 0;
            v57 = v14;
            do
            {
              if (*v62 != v15)
              {
                objc_enumerationMutation(v58);
              }

              v17 = *(*(&v61 + 1) + 8 * v16);
              if (([v9 containsObject:v17] & 1) == 0)
              {
                std::string::basic_string[abi:nn200100]<0>(__p, [v17 UTF8String]);
                v18 = v66;
                if (v66 >= v67)
                {
                  v20 = 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3);
                  v21 = v20 + 1;
                  if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<long long>::__throw_length_error[abi:nn200100]();
                  }

                  if (0x5555555555555556 * ((v67 - v65) >> 3) > v21)
                  {
                    v21 = 0x5555555555555556 * ((v67 - v65) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v67 - v65) >> 3) >= 0x555555555555555)
                  {
                    v22 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v22 = v21;
                  }

                  *&v73[32] = &v65;
                  if (v22)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v22);
                  }

                  v23 = 8 * ((v66 - v65) >> 3);
                  v24 = *__p;
                  *(v23 + 16) = v60;
                  *v23 = v24;
                  __p[1] = 0;
                  v60 = 0;
                  __p[0] = 0;
                  v25 = 24 * v20 + 24;
                  v26 = (v23 - (v66 - v65));
                  memcpy(v26, v65, v66 - v65);
                  v27 = v65;
                  v28 = v67;
                  v65 = v26;
                  v66 = v25;
                  v67 = 0;
                  *&v73[16] = v27;
                  *&v73[24] = v28;
                  *v73 = v27;
                  *&v73[8] = v27;
                  std::__split_buffer<std::string>::~__split_buffer(v73);
                  v66 = v25;
                  if (SHIBYTE(v60) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                else
                {
                  v19 = *__p;
                  *(v66 + 2) = v60;
                  *v18 = v19;
                  v66 = v18 + 24;
                }

                v29 = *__error();
                v30 = _SILogForLogForCategory(17);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  v31 = v11;
                  v32 = a2;
                  v33 = v9;
                  v34 = a4;
                  v35 = *a4;
                  v36 = *(a4 + 8);
                  v37 = v34;
                  v38 = redactString(v17, (*(v34 + 28) >> 9) & 1);
                  *v73 = 134218754;
                  *&v73[4] = v35;
                  *&v73[12] = 2080;
                  *&v73[14] = v36;
                  *&v73[22] = 2112;
                  *&v73[24] = a3;
                  *&v73[32] = 2112;
                  *&v73[34] = v38;
                  _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Adding grounded name %@", v73, 0x2Au);
                  a4 = v37;
                  v9 = v33;
                  a2 = v32;
                  v11 = v31;
                }

                *__error() = v29;
                matched = defaultMatchQueryNodeForLLMRetrieval([v17 UTF8String], *(a2 + 16), a4);
                v11 = makeOrNode(v11, matched);
                [v9 addObject:v17];
                v15 = v56;
                v14 = v57;
              }

              ++v16;
            }

            while (v14 != v16);
            v14 = [v58 countByEnumeratingWithState:&v61 objects:v74 count:16];
          }

          while (v14);
        }

        std::vector<std::vector<std::string>>::push_back[abi:nn200100](v72, &v65);
        *v73 = &v65;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v73);
        v12 = v54 + 1;
      }

      while (v54 + 1 != v53);
      v10 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  joinVectors(&v65, v72, (*(a4 + 28) >> 9) & 1);
  v40 = *__error();
  v41 = _SILogForLogForCategory(17);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *a4;
    v43 = *(a4 + 8);
    v44 = &v65;
    if ((v67 & 0x8000000000000000) != 0)
    {
      v44 = v65;
    }

    *v73 = 134218754;
    *&v73[4] = v42;
    *&v73[12] = 2080;
    *&v73[14] = v43;
    *&v73[22] = 2112;
    *&v73[24] = a3;
    *&v73[32] = 2080;
    *&v73[34] = v44;
    _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Added %s grounded names match node", v73, 0x2Au);
  }

  *__error() = v40;

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v65);
  }

  *v73 = v72;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:nn200100](v73);
  if (!v11)
  {
LABEL_45:
    v45 = *__error();
    v46 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *a4;
      v48 = *(a4 + 8);
      *v73 = 134218498;
      *&v73[4] = v47;
      *&v73[12] = 2080;
      *&v73[14] = v48;
      *&v73[22] = 2112;
      *&v73[24] = a3;
      _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ No grounded name available", v73, 0x20u);
    }

    v11 = 0;
    *__error() = v45;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1C2BD6398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  __p = &a50;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:nn200100](&__p);
  _Unwind_Resume(a1);
}

query_node *generateBundleSpecificFilterNode(PRContext *a1, int a2, NSString *a3, NSString *a4, int a5)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v9 = &llmDenseRetrievalBundleSpecificFilterArgIdMap(void)::_retrievalBundleSpecificFilterArgIdMap;
    {
      llmDenseRetrievalBundleSpecificFilterArgIdMap(void)::_retrievalBundleSpecificFilterArgIdMap = 0u;
      unk_1EBF61448 = 0u;
      dword_1EBF61458 = 1065353216;
    }

    if (llmDenseRetrievalBundleSpecificFilterArgIdMap(void)::onceToken == -1)
    {
      goto LABEL_7;
    }

    v38 = &llmDenseRetrievalBundleSpecificFilterArgIdMap(void)::onceToken;
    v39 = &__block_literal_global_21;
LABEL_46:
    dispatch_once(v38, v39);
    goto LABEL_7;
  }

  v9 = &llmSparseRetrievalBundleSpecificFilterArgIdMap(void)::_retrievalBundleSpecificFilterArgIdMap;
  {
    llmSparseRetrievalBundleSpecificFilterArgIdMap(void)::_retrievalBundleSpecificFilterArgIdMap = 0u;
    unk_1EBF614B8 = 0u;
    dword_1EBF614C8 = 1065353216;
  }

  if (llmSparseRetrievalBundleSpecificFilterArgIdMap(void)::onceToken != -1)
  {
    v38 = &llmSparseRetrievalBundleSpecificFilterArgIdMap(void)::onceToken;
    v39 = &__block_literal_global_35;
    goto LABEL_46;
  }

LABEL_7:
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(v10, v11, a2);
  if (!v12)
  {
    v12 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(v10, v11, -1);
    if (!v12)
    {
      abort();
    }
  }

  v13 = v12;
  if (v12[6])
  {
    v51 = 0;
    v49 = 0u;
    memset(v50, 0, sizeof(v50));
    *v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    std::ostringstream::basic_ostringstream[abi:nn200100](&v45);
    v14 = (v13 + 5);
    v15 = v13 + 5;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15 != *v14)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v45, ", ", 4);
      }

      v16 = *(v15 + 39);
      if (v16 >= 0)
      {
        v17 = (v15 + 2);
      }

      else
      {
        v17 = v15[2];
      }

      if (v16 >= 0)
      {
        v18 = *(v15 + 39);
      }

      else
      {
        v18 = v15[3];
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v45, v17, v18);
    }

    __p[0] = 0;
    __p[1] = 0;
    v44 = 0;
    std::stringbuf::str();
    v19 = *v14;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    if (v19)
    {
      v20 = -1;
      v21 = v19;
      do
      {
        v22 = v20;
        v21 = *v21;
        ++v20;
      }

      while (v21);
      if (v20 < 0xAAAAAAAAAAAAAAALL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v22 + 2);
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    if ([(NSString *)a4 length:v40])
    {
      RetrievalNodeFromQueryString = makeRetrievalNodeFromQueryString([(NSString *)a4 UTF8String]);
      matched = createFieldMatchQueryNode("_kMDItemBundleID", 0, &v40, 0.0);
      v25 = *__error();
      v26 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        var0 = a1->var0;
        var1 = a1->var1;
        v29 = __p;
        if (v44 < 0)
        {
          v29 = __p[0];
        }

        *buf = 134218754;
        *&buf[4] = var0;
        v53 = 2080;
        v54 = var1;
        v55 = 2112;
        v56 = a3;
        v57 = 2080;
        v58 = v29;
        _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Added filter in bundles {%s}", buf, 0x2Au);
      }

      *__error() = v25;
      v30 = makeOrNode(RetrievalNodeFromQueryString, matched);
    }

    else
    {
      v31 = *__error();
      v32 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = a1->var0;
        v34 = a1->var1;
        v35 = __p;
        if (v44 < 0)
        {
          v35 = __p[0];
        }

        *buf = 134218754;
        *&buf[4] = v33;
        v53 = 2080;
        v54 = v34;
        v55 = 2112;
        v56 = a3;
        v57 = 2080;
        v58 = v35;
        _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM]%@ Skipping adding filter in bundles {%s} because tokenDescription is empty", buf, 0x2Au);
      }

      v30 = 0;
      *__error() = v31;
    }

    *buf = &v40;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(__p[0]);
    }

    *&v45 = *MEMORY[0x1E69E54E8];
    *(&v46[-1] + *(v45 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&v45 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[1]);
    }

    *(&v45 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v46);
    std::ostream::~ostream();
    MEMORY[0x1C691FE80](v50);
  }

  else
  {
    v30 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v30;
}

void sub_1C2BD699C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  *(v24 - 144) = &a2;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100]((v24 - 144));
  if (a10 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a11);
  MEMORY[0x1C691FE80](va);
  _Unwind_Resume(a1);
}

uint64_t ___Z27llmV2RankingDescriptionNodePKcPNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEfNS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_fEEEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = *v3;
      if (*v3)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v6 = &v26;
        std::string::basic_string[abi:nn200100]<0>(&v26, v4);
        v7 = *(a1 + 32);
        v29 = &v26;
        v8 = *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v7, &v26) + 10);
        v9 = *(*(a2 + 16) + 52);
        v10 = *(a1 + 32);
        v29 = &v26;
        v11 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v10, &v26);
        if (v8 >= v9)
        {
          v12 = v8;
        }

        else
        {
          v12 = v9;
        }

        v11[10] = v12;
        v13 = SHIBYTE(v28);
        v14 = v26;
        if (v28 < 0)
        {
          v6 = v26;
        }

        if (v28 >= 0)
        {
          v15 = SHIBYTE(v28);
        }

        else
        {
          v15 = v27;
        }

        if (v15 >= 4)
        {
          v16 = v6 + v15;
          v17 = v15;
          v18 = v6;
          do
          {
            v19 = memchr(v18, 68, v17 - 3);
            if (!v19)
            {
              break;
            }

            if (*v19 == 1702125892)
            {
              if (v19 != v16 && v19 - v6 != -1)
              {
LABEL_31:
                v23 = *(a2 + 16);
                v24 = *(v23 + 72);
                if (v24 && *v24)
                {
                  *(a2 + 48) = 16;
                  *(v23 + 52) = 0;
                  *(v23 + 56) = 0;
                }

                goto LABEL_34;
              }

              break;
            }

            v18 = (v19 + 1);
            v17 = v16 - v18;
          }

          while (v16 - v18 >= 4);
          if (v15 != 4)
          {
            v20 = v6;
            do
            {
              v21 = memchr(v20, 95, v15 - 4);
              if (!v21)
              {
                break;
              }

              if (*v21 == 1952539743 && v21[4] == 101)
              {
                if (v21 == v16 || v21 - v6 == -1)
                {
                  break;
                }

                goto LABEL_31;
              }

              v20 = (v21 + 1);
              v15 = v16 - v20;
            }

            while (v16 - v20 >= 5);
          }
        }

LABEL_34:
        if (v13 < 0)
        {
          operator delete(v14);
        }
      }
    }
  }

  return a2;
}

float *llmV2RetrievalDescriptionRankingNode(char *a1, float a2, float a3)
{
  query_node_with_ann = db_make_query_node_with_ann(a1, 0);
  v6 = query_node_with_ann;
  v12 = query_node_with_ann;
  if (qword_1EBF61370)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___Z36llmV2RetrievalDescriptionRankingNodePKcffRKNSt3__113unordered_setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_IS8_EEEE_block_invoke;
    v11[3] = &__block_descriptor_40_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
    v11[4] = &llmDateAttributes(void)::_dateAttributes;
    v13 = MEMORY[0x1E69E9820];
    v14 = 0x40000000;
    v15 = __db_query_tree_apply_block_block_invoke;
    v16 = &unk_1E8198ED0;
    v17 = v11;
    db_query_tree_apply_block_with_meta(query_node_with_ann, &v13, 0);
    db_optimize_query_tree(&v12);
    v6 = v12;
  }

  if (v6)
  {
    v7 = *(v6 + 24);
    if (v7 != 16 && v7 != 32)
    {
      v6[18] = a2;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = ___Z36llmV2RetrievalDescriptionRankingNodePKcffRKNSt3__113unordered_setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_IS8_EEEE_block_invoke_2;
      v9[3] = &__block_descriptor_36_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
      v10 = a3;
      v13 = MEMORY[0x1E69E9820];
      v14 = 0x40000000;
      v15 = __db_query_tree_apply_block_block_invoke;
      v16 = &unk_1E8198ED0;
      v17 = v9;
      db_query_tree_apply_block_with_meta(v6, &v13, &__block_literal_global_16346);
    }
  }

  return v6;
}

uint64_t ___Z36llmV2RetrievalDescriptionRankingNodePKcffRKNSt3__113unordered_setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_IS8_EEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      if (*v3)
      {
        v4 = *(a1 + 32);
        std::string::basic_string[abi:nn200100]<0>(__p, *v3);
        v5 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v4, __p);
        v6 = v5;
        if (v9 < 0)
        {
          operator delete(__p[0]);
          if (v6)
          {
            return a2;
          }
        }

        else if (v5)
        {
          return a2;
        }

        *(a2 + 48) = 16;
      }
    }
  }

  return a2;
}

uint64_t *___Z36llmV2RetrievalDescriptionRankingNodePKcffRKNSt3__113unordered_setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_IS8_EEEE_block_invoke_2(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    switch(v3)
    {
      case 1:
        if (*a2)
        {
          *(*a2 + 72) = *(a2 + 18);
        }

        v11 = a2[1];
        if (v11)
        {
          *(v11 + 72) = *(a2 + 18);
        }

        break;
      case 4:
        v10 = a2[2];
        *(v10 + 52) = *(a2 + 18);
        if (fabsf(*(v10 + 56) + 1.0) >= 1.1755e-38)
        {
          *(v10 + 56) = *(a1 + 32);
        }

        else
        {
          *(v10 + 56) = 0;
        }

        break;
      case 2:
        v4 = *(a2 + 18) * 0.5;
        v5 = *a2;
        if (*a2)
        {
          *(v5 + 72) = v4;
        }

        v6 = a2[1];
        if (v6)
        {
          *(v6 + 72) = v4;
        }

        if (v5 && v6 && *(v5 + 48) == 4 && *(v6 + 48) == 4)
        {
          if ((v7 = *(v5 + 16), v8 = *v7, !strcmp(*v7, "kMDItemStartDate")) && (v9 = *(v6 + 16), !strcmp(*v9, "kMDItemEndDate")) || !strcmp(v8, "kMDItemEndDate") && (v9 = *(v6 + 16), !strcmp(*v9, "kMDItemStartDate")))
          {
            *(v7 + 56) = -1082130432;
            *(v9 + 56) = -1082130432;
          }
        }

        break;
    }
  }

  return a2;
}

uint64_t ___Z36llmV2RetrievalDescriptionRankingNodePKcffRKNSt3__113unordered_setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_IS8_EEEE_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    *(a2 + 8) = a4;
    *(a3 + 72) = 0;
    *(a4 + 72) = 0;
    *(a2 + 72) = 0;
  }

  else if (a2)
  {
    v7[5] = v4;
    v7[6] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __db_query_tree_apply_block_block_invoke;
    v7[3] = &unk_1E8198ED0;
    v7[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a2, v7, 0);
    return 0;
  }

  return result;
}

uint64_t ___Z14llmRankingNodePKcff_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 52) = *(a1 + 32);
      *(v2 + 56) = *(a1 + 36);
    }
  }

  return a2;
}

void *PhotosQueryTree(__CFString *a1, const __CFAttributedString *a2, const __CFDictionary *a3, PRContext *a4)
{
  v320 = *MEMORY[0x1E69E9840];
  var23 = a4->var23;
  var0 = a4->var0;
  v8 = *(a4 + 7);
  *&v9 = COERCE_DOUBLE(@"SearchTool");
  if ((v8 & 0x200) == 0)
  {
    *&v9 = COERCE_DOUBLE(@"Photos");
  }

  if ((v8 & 0x400) != 0)
  {
    *&v10 = COERCE_DOUBLE(@"SpotlightUI");
  }

  else
  {
    v10 = v9;
  }

  v11 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
  v12 = @"en";
  if (v11)
  {
    v12 = v11;
  }

  v284 = v12;
  v13 = *(a4 + 7);
  v14 = *__error();
  if ((v13 & 2) == 0)
  {
    v15 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(__CFString *)a1 length];
      v17 = a1;
      if (v16 >= 4)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c...%c<%lu chars>", -[__CFString characterAtIndex:](a1, "characterAtIndex:", 0), -[__CFString characterAtIndex:](a1, "characterAtIndex:", 1), -[__CFString characterAtIndex:](a1, "characterAtIndex:", v16 - 1), v16];
      }

      *buf = 134218498;
      *&buf[4] = var0;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v316 = *&v10;
      _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Processing query: %@, client: %@", buf, 0x20u);
    }

    *__error() = v14;
    if (var23)
    {
      Value = CFDictionaryGetValue(var23, @"disableMetadataSearch");
      buf[0] = 0;
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt8Type, buf);
        v276 = buf[0];
      }

      else
      {
        v276 = 0;
      }

      v91 = CFDictionaryGetValue(var23, @"disableSemanticSearch");
      buf[0] = 0;
      if (v91)
      {
        CFNumberGetValue(v91, kCFNumberSInt8Type, buf);
        theArray = buf[0];
      }

      else
      {
        theArray = 0;
      }

      v92 = CFDictionaryGetValue(var23, @"disableU2");
      buf[0] = 0;
      if (v92)
      {
        CFNumberGetValue(v92, kCFNumberSInt8Type, buf);
        v274 = buf[0];
      }

      else
      {
        v274 = 0;
      }

      v93 = CFDictionaryGetValue(var23, @"maxANNResultCount");
      v29 = 1000;
      *buf = 1000;
      if (v93)
      {
        CFNumberGetValue(v93, kCFNumberIntType, buf);
        v29 = *buf;
      }
    }

    else
    {
      v274 = 0;
      theArray = 0;
      v276 = 0;
      v29 = 1000;
    }

    v267 = v29;
    v301 = 0;
    v302 = 0;
    v94 = [MEMORY[0x1E695DF70] array];
    v95 = [MEMORY[0x1E695DF70] array];
    if (a2 && CFAttributedStringGetLength(a2) >= 1)
    {
      PhPopulateFiltersFromQuery(a2, &v302, &v301, v94, v95, 0, var0);
    }

    v299 = 0;
    v300 = 0;
    v298 = 0;
    if (v274 & v276)
    {
      v96 = *__error();
      v97 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v97, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Skipping aNN filters and metadata nodes (Reason: U2 and metadata search are disabled)", buf, 0xCu);
      }

      *__error() = v96;
      goto LABEL_253;
    }

    if (!a3)
    {
      goto LABEL_143;
    }

    v98 = getkQPQUOutputTokenInfoKey();
    if (CFDictionaryContainsKey(a3, v98) && CFDictionaryContainsKey(a3, @"attributedParse"))
    {
      PhPopulateNodesFromU2Parse(a3, v94, v95, theArray & 1, &v299, &v300, &v298, var0, v284);
      goto LABEL_249;
    }

    if (CFDictionaryContainsKey(a3, @"attributedParses") && (v102 = CFDictionaryGetValue(a3, @"attributedParses"), [v102 count]))
    {
      v103 = [v102 objectAtIndexedSubscript:0];
    }

    else
    {
LABEL_143:
      v103 = 0;
    }

    v104 = *__error();
    v105 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = var0;
      _os_log_impl(&dword_1C278D000, v105, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Using rule-based parse for creating ann filter and unigram node (U2 parse missing)", buf, 0xCu);
    }

    *__error() = v104;
    v291 = [MEMORY[0x1E695DF70] array];
    v296 = [MEMORY[0x1E695DF70] array];
    v293 = [MEMORY[0x1E695DF70] array];
    obja = [MEMORY[0x1E695DF70] array];
    v286 = [MEMORY[0x1E695DF70] array];
    v106 = [v103 length];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL28PhPopulateAllFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES9_S9_S9__block_invoke_16375;
    v316 = COERCE_DOUBLE(&unk_1E8199768);
    *v317 = v293;
    *&v317[8] = obja;
    *&v317[16] = v286;
    v318 = v291;
    v319 = v296;
    [v103 enumerateAttributesInRange:0 options:v106 usingBlock:{0, buf}];
    if ([v296 count] || objc_msgSend(v293, "count") || -[query_node count](v286, "count") || objc_msgSend(obja, "count"))
    {
      v107 = *__error();
      v108 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = [v296 count];
        *&v110 = COERCE_DOUBLE([v293 count]);
        v111 = [(query_node *)v286 count];
        v112 = [obja count];
        *buf = 134219008;
        *&buf[4] = var0;
        *&buf[12] = 2048;
        *&buf[14] = v109;
        *&buf[22] = 2048;
        v316 = *&v110;
        *v317 = 2048;
        *&v317[2] = v111;
        *&v317[10] = 2048;
        *&v317[12] = v112;
        _os_log_impl(&dword_1C278D000, v108, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Populated filters: time = %lu, fav = %lu, person = %lu, mediatype = %lu", buf, 0x34u);
      }

      *__error() = v107;
    }

    v289 = [MEMORY[0x1E695DF90] dictionary];
    PhRetrievalAttribs();
    QueryTokens = CreateQueryTokens(a1, 1);
    if (QueryTokens)
    {
      v264 = QueryTokens;
      v114 = *QueryTokens;
      if (v114)
      {
        Count = CFArrayGetCount(v114);
        v273 = Count;
        if (Count)
        {
          v266 = *v264;
          v269 = v264[1];
          v268 = v264[2];
          v298 = Count;
          v263 = Count - 1;
          if (Count >= 1)
          {
            v116 = 0;
            while (1)
            {
              RangeAtIndex = getRangeAtIndex(v269, v268, v116);
              v119 = v118;
              if (RangeAtIndex == -1)
              {
                break;
              }

              v120 = RangeAtIndex;
              if ([v94 count])
              {
                v121 = 0;
                while (1)
                {
                  v337.location = [objc_msgSend(v94 objectAtIndexedSubscript:{v121), "rangeValue"}];
                  v337.length = v122;
                  v326.location = v120;
                  v326.length = v119;
                  if (NSIntersectionRange(v326, v337).length)
                  {
                    break;
                  }

                  if (++v121 >= [v94 count])
                  {
                    goto LABEL_163;
                  }
                }

                v128 = *__error();
                v129 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218240;
                  *&buf[4] = var0;
                  *&buf[12] = 2048;
                  *&buf[14] = v116;
                  _os_log_impl(&dword_1C278D000, v129, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Skipping token %lu (REASON: Its a filter token)", buf, 0x16u);
                }

                *__error() = v128;
                if ([v95 count])
                {
                  v130 = 0;
                  do
                  {
                    v338.location = [objc_msgSend(v95 objectAtIndexedSubscript:{v130), "rangeValue"}];
                    v338.length = v131;
                    v327.location = v120;
                    v327.length = v119;
                    if (NSIntersectionRange(v327, v338).length)
                    {
                      goto LABEL_181;
                    }
                  }

                  while (++v130 < [v95 count]);
                }
              }

              else
              {
LABEL_163:
                ValueAtIndex = CFArrayGetValueAtIndex(v266, v116);
                if (!CFStringGetLength(ValueAtIndex))
                {
                  v126 = *__error();
                  v132 = _SILogForLogForCategory(19);
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218240;
                    *&buf[4] = var0;
                    *&buf[12] = 2048;
                    *&buf[14] = v116;
                    _os_log_impl(&dword_1C278D000, v132, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Skipping token %lu (Reason: Its zero-length)", buf, 0x16u);
                  }

LABEL_180:
                  *__error() = v126;
                  goto LABEL_181;
                }

                if (!hasOnlySpecialChar(ValueAtIndex))
                {
                  if (isOptionalToken(ValueAtIndex, v116 == v263) && (--v298, v116 != v263))
                  {
                    v126 = *__error();
                    v140 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218240;
                      *&buf[4] = var0;
                      *&buf[12] = 2048;
                      *&buf[14] = v116;
                      _os_log_impl(&dword_1C278D000, v140, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Skipping token %lu (Reason: It is optional)", buf, 0x16u);
                    }
                  }

                  else
                  {
                    if ([v296 count])
                    {
                      v133 = 0;
                      while (1)
                      {
                        v339.location = [objc_msgSend(v296 objectAtIndexedSubscript:{v133), "rangeValue"}];
                        v339.length = v134;
                        v328.location = v120;
                        v328.length = v119;
                        if (NSIntersectionRange(v328, v339).length)
                        {
                          break;
                        }

                        if (++v133 >= [v296 count])
                        {
                          goto LABEL_189;
                        }
                      }

                      v141 = *__error();
                      v142 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218240;
                        *&buf[4] = var0;
                        *&buf[12] = 2048;
                        *&buf[14] = v116;
                        _os_log_impl(&dword_1C278D000, v142, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Token %lu has a date parse, will process it after all tokens are processed", buf, 0x16u);
                      }

                      *__error() = v141;
                      if (-[NSCharacterSet objectForKeyedSubscript:](v289, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithLong:v133]))
                      {
                        [-[NSCharacterSet objectForKeyedSubscript:](v289 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v133)), "addObject:", ValueAtIndex}];
                      }

                      else
                      {
                        v159 = [MEMORY[0x1E695DF70] arrayWithObject:ValueAtIndex];
                        -[NSCharacterSet setObject:forKeyedSubscript:](v289, "setObject:forKeyedSubscript:", v159, [MEMORY[0x1E696AD98] numberWithLong:v133]);
                      }

                      goto LABEL_181;
                    }

LABEL_189:
                    v135 = [(__CFString *)ValueAtIndex UTF8String];
                    if (v135)
                    {
                      v136 = qword_1EC059000;
                      if (v116 == v263)
                      {
                        if (qword_1EC059000)
                        {
                          v137 = 0;
                          do
                          {
                            v138 = (v136 + 16);
                            if (*(v136 + 39) < 0)
                            {
                              v138 = *v138;
                            }

                            QueryNode = createQueryNode(v138, v135, 112, 1, -1, 0.0, 0.0);
                            v137 = makeOrNode(v137, QueryNode);
                            v136 = *v136;
                          }

                          while (v136);
                          goto LABEL_214;
                        }

LABEL_213:
                        v137 = 0;
                        goto LABEL_214;
                      }

                      if (!qword_1EC059000)
                      {
                        goto LABEL_213;
                      }

                      v137 = 0;
                      do
                      {
                        v144 = (v136 + 16);
                        if (*(v136 + 39) < 0)
                        {
                          v144 = *v144;
                        }

                        v145 = createQueryNode(v144, v135, 112, 1, 0, 0.0, 0.0);
                        v137 = makeOrNode(v137, v145);
                        v136 = *v136;
                      }

                      while (v136);
LABEL_214:
                      if ([v293 count])
                      {
                        v146 = 0;
                        while (1)
                        {
                          v340.location = [objc_msgSend(v293 objectAtIndexedSubscript:{v146), "rangeValue"}];
                          v340.length = v147;
                          v329.location = v120;
                          v329.length = v119;
                          if (NSIntersectionRange(v329, v340).length)
                          {
                            break;
                          }

                          if (++v146 >= [v293 count])
                          {
                            goto LABEL_218;
                          }
                        }

                        v262 = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
                        v148 = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
                        v137 = makeOrNode(v137, v148);
                      }

                      else
                      {
LABEL_218:
                        v262 = 0;
                      }

                      if ([obja count])
                      {
                        v149 = 0;
                        do
                        {
                          v341.location = [objc_msgSend(obja objectAtIndexedSubscript:{v149), "rangeValue"}];
                          v341.length = v150;
                          v330.location = v120;
                          v330.length = v119;
                          if (NSIntersectionRange(v330, v341).length)
                          {
                            goto LABEL_225;
                          }

                          ++v149;
                        }

                        while (v149 < [obja count]);
                        v149 = -1;
LABEL_225:
                        v151 = v149 == -1;
                      }

                      else
                      {
                        v151 = 1;
                      }

                      if ([(query_node *)v286 count])
                      {
                        v152 = 0;
                        do
                        {
                          v342.location = [-[query_node objectAtIndexedSubscript:](v286 objectAtIndexedSubscript:{v152), "rangeValue"}];
                          v342.length = v153;
                          v331.location = v120;
                          v331.length = v119;
                          if (NSIntersectionRange(v331, v342).length)
                          {
                            goto LABEL_232;
                          }

                          ++v152;
                        }

                        while (v152 < [(query_node *)v286 count]);
                        v152 = -1;
LABEL_232:
                        v154 = v152 == -1;
                        if (v151)
                        {
LABEL_233:
                          v155 = v262;
LABEL_236:
                          if (!v154)
                          {
                            v157 = createQueryNode("kMDItemPhotosPeopleNames", v135, 112, 1, -1, 0.0, 0.0);
                            v155 = makeOrNode(v155, v157);
                          }

                          if (v155)
                          {
                            --v298;
                            v158 = makeAndNode(v299, v155);
                          }

                          else
                          {
                            v158 = v299;
                          }

                          v299 = v158;
                          v300 = makeAndNode(v300, v137);
                          goto LABEL_181;
                        }
                      }

                      else
                      {
                        v154 = 1;
                        if (v151)
                        {
                          goto LABEL_233;
                        }
                      }

                      v156 = createQueryNode("kMDItemPhotosMediaTypes", v135, 112, 1, -1, 0.0, 0.0);
                      v155 = makeOrNode(v262, v156);
                      goto LABEL_236;
                    }

                    v126 = *__error();
                    v143 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218240;
                      *&buf[4] = var0;
                      *&buf[12] = 2048;
                      *&buf[14] = v116;
                      _os_log_impl(&dword_1C278D000, v143, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Skipping token %lu (ERROR: UTF8 encoding of token failed)", buf, 0x16u);
                    }
                  }

                  goto LABEL_180;
                }

                v124 = *__error();
                v125 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218240;
                  *&buf[4] = var0;
                  *&buf[12] = 2048;
                  *&buf[14] = v116;
                  _os_log_impl(&dword_1C278D000, v125, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Skipping token %lu (Reason: It has only special characters)", buf, 0x16u);
                }

                *__error() = v124;
              }

              --v298;
LABEL_181:
              if (++v116 == v273)
              {
                goto LABEL_291;
              }
            }

            v126 = *__error();
            v127 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218752;
              *&buf[4] = var0;
              *&buf[12] = 2048;
              *&buf[14] = v116;
              *&buf[22] = 2048;
              v316 = NAN;
              *v317 = 2048;
              *&v317[2] = v119;
              _os_log_impl(&dword_1C278D000, v127, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Skipping token %lu (ERROR: invalid range: (%ld, %ld))", buf, 0x2Au);
            }

            goto LABEL_180;
          }

LABEL_291:
          freeQueryTokensContext(v264);
          if (![(NSCharacterSet *)v289 count])
          {
            goto LABEL_249;
          }

          v311 = 0u;
          v312 = 0u;
          *v309 = 0u;
          v310 = 0u;
          objb = [(NSCharacterSet *)v289 allKeys];
          v294 = [objb countByEnumeratingWithState:v309 objects:buf count:16];
          if (!v294)
          {
            goto LABEL_249;
          }

          v287 = *v310;
LABEL_294:
          v196 = 0;
          while (1)
          {
            if (*v310 != v287)
            {
              objc_enumerationMutation(objb);
            }

            v197 = *(&v309[1]->var0 + v196);
            v305 = 0u;
            v306 = 0u;
            v307 = 0u;
            v308 = 0u;
            v297 = v197;
            v198 = [(NSCharacterSet *)v289 objectForKeyedSubscript:?];
            v199 = 0;
            v200 = [v198 countByEnumeratingWithState:&v305 objects:v313 count:16];
            if (v200)
            {
              break;
            }

LABEL_317:
            v210 = [objc_msgSend(v291 objectAtIndexedSubscript:{objc_msgSend(v297, "intValue")), "UTF8String"}];
            v211 = v210;
            if (v210)
            {
              query_node_with_ann = db_make_query_node_with_ann(v210, 0);
              v299 = makeAndNode(v299, query_node_with_ann);
              v213 = db_make_query_node_with_ann(v211, 0);
            }

            else
            {
              v213 = 0;
            }

            v214 = makeOrNode(v199, v213);
            v300 = makeAndNode(v300, v214);
            if (++v196 == v294)
            {
              v294 = [objb countByEnumeratingWithState:v309 objects:buf count:16];
              if (!v294)
              {
                goto LABEL_249;
              }

              goto LABEL_294;
            }
          }

          v201 = *v306;
LABEL_299:
          v202 = 0;
          while (1)
          {
            if (*v306 != v201)
            {
              objc_enumerationMutation(v198);
            }

            v203 = [*(*(&v305 + 1) + 8 * v202) UTF8String];
            if (!v203)
            {
              goto LABEL_315;
            }

            std::string::basic_string[abi:nn200100]<0>(__p, v203);
            v204 = isOptionalWord(__p);
            v205 = v204;
            if (v304 < 0)
            {
              operator delete(__p[0]);
              if (!v205)
              {
LABEL_307:
                v206 = qword_1EC059000;
                if (qword_1EC059000)
                {
                  v207 = 0;
                  do
                  {
                    v208 = (v206 + 16);
                    if (*(v206 + 39) < 0)
                    {
                      v208 = *v208;
                    }

                    v209 = createQueryNode(v208, v203, 112, 1, 0, 0.0, 0.0);
                    v207 = makeOrNode(v207, v209);
                    v206 = *v206;
                  }

                  while (v206);
                }

                else
                {
                  v207 = 0;
                }

                v199 = makeAndNode(v199, v207);
              }
            }

            else if (!v204)
            {
              goto LABEL_307;
            }

LABEL_315:
            if (++v202 == v200)
            {
              v200 = [v198 countByEnumeratingWithState:&v305 objects:v313 count:16];
              if (!v200)
              {
                goto LABEL_317;
              }

              goto LABEL_299;
            }
          }
        }
      }

      freeQueryTokensContext(v264);
      v160 = *__error();
      v161 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v161, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Return no results (ERROR: zero tokens found from the userQuery)", buf, 0xCu);
      }
    }

    else
    {
      v160 = *__error();
      v162 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v162, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Return no results (ERROR: missing tokenization context on userQuery)", buf, 0xCu);
      }
    }

    *__error() = v160;
LABEL_249:
    if (v274)
    {
      v163 = *__error();
      v164 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v164, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Skipping aNN filters (U2 is disabled by client)", buf, 0xCu);
      }

      *__error() = v163;
      db_free_query_node(v299);
      v299 = 0;
    }

LABEL_253:
    v165 = makeAndNode(v300, v301);
    if (v276)
    {
      v166 = *__error();
      v167 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v167, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Skipping metadata node (metadata search is disabled)", buf, 0xCu);
      }

      *__error() = v166;
      db_free_query_node(v165);
      v165 = 0;
    }

    else
    {
      v168 = a3;
      if (v165)
      {
        goto LABEL_262;
      }

      v169 = *__error();
      v170 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v170, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Skipping metadata node (query has no free tokens)", buf, 0xCu);
      }

      v165 = 0;
      *__error() = v169;
    }

    v168 = a3;
LABEL_262:
    if (theArray)
    {
      v171 = *__error();
      v172 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v172, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Skipping ANN node (semantic search is disabled)", buf, 0xCu);
      }

LABEL_325:
      v216 = 0;
      *__error() = v171;
      goto LABEL_326;
    }

    if (!(v276 & 1 | (v165 != 0)))
    {
      v171 = *__error();
      v194 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v194, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Skipping ANN node (query has only suggestions)", buf, 0xCu);
      }

      goto LABEL_325;
    }

    v173 = v298;
    if (v298 <= 0)
    {
      v171 = *__error();
      v215 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v215, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Skipping ANN node (no visual token in the query)", buf, 0xCu);
      }

      goto LABEL_325;
    }

    if (!v168 || !CFDictionaryContainsKey(v168, @"kQPQueryPhotoEmbeddingEncodedData"))
    {
      v171 = *__error();
      v195 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v195, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Skipping ANN node (ERROR: missing query embedding)", buf, 0xCu);
      }

      goto LABEL_325;
    }

    v174 = CFDictionaryGetValue(a3, @"kQPQueryPhotoEmbeddingEncodedData");
    if (!v174)
    {
      v171 = *__error();
      v235 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v235, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Skipping ANN node (ERROR: encoded query embedding in null)", buf, 0xCu);
      }

      goto LABEL_325;
    }

    v175 = decodeEmbeddingData(v174);
    if (!v175)
    {
      v171 = *__error();
      v236 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v236, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Skipping ANN node (ERROR: decoded query embedding in null)", buf, 0xCu);
      }

      goto LABEL_325;
    }

    v176 = v175;
    v177 = [CFDictionaryGetValue(a3 @"embeddingVersion")];
    v178 = CFDictionaryGetValue(a3, @"embeddingRelevanceThreshold");
    if (v178 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v178 floatValue], v179 >= 0.0))
    {
      v250 = CFDictionaryGetValue(a3, @"embeddingScale");
      v251 = CFDictionaryGetValue(a3, @"embeddingBias");
      [v178 floatValue];
      v253 = logf(v252);
      [v178 floatValue];
      v255 = logf(1.0 - v254);
      [v250 floatValue];
      v257 = v256;
      [v251 floatValue];
      v183 = _scaleBiasBasedAnnThresh(v253 - v255, v257, v258, v177);
      v259 = *__error();
      v260 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
      {
        [v178 floatValue];
        *buf = 134218240;
        *&buf[4] = v183;
        *&buf[12] = 2048;
        *&buf[14] = v261;
        _os_log_impl(&dword_1C278D000, v260, OS_LOG_TYPE_DEFAULT, "Threshold based on client supplied values: %f, rel: %f", buf, 0x16u);
      }

      *__error() = v259;
    }

    else
    {
      v180 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
      if (!v180)
      {
        goto LABEL_280;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_280;
      }

      [v180 floatValue];
      v182 = v181;
      v183 = (1.0 - v182) + (1.0 - v182);
      v184 = *__error();
      v185 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v182;
        *&buf[12] = 2048;
        *&buf[14] = v183;
        _os_log_impl(&dword_1C278D000, v185, OS_LOG_TYPE_DEFAULT, "Using user default threshold: %f, distance: %f", buf, 0x16u);
      }

      *__error() = v184;
      if (v183 == -1.0)
      {
LABEL_280:
        v186 = CFDictionaryGetValue(a3, @"embeddingScale");
        v187 = CFDictionaryGetValue(a3, @"embeddingBias");
        [v186 floatValue];
        v189 = v188;
        [v187 floatValue];
        v183 = _scaleBiasBasedAnnThresh(-3.4028e38, v189, v190, v177);
      }
    }

    v191 = [(__CFDictionary *)v176 length];
    if (v191 > 1)
    {
      v237 = [(__CFDictionary *)v176 bytes];
      if (v237)
      {
        v238 = MEMORY[0x1E69E9AC8];
        if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
        {
          ++sTotal;
        }

        v239 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
        v240 = v191 >> 1;
        if (!v239)
        {
          _log_fault_for_malloc_failure();
        }

        *v239 = strdup("_kMDItemPhotoEmbedding");
        *(v239 + 6) = 15;
        if (v240 == 512)
        {
          v241 = 5;
        }

        else
        {
          v241 = 6;
        }

        v239[16] = v183;
        *(v239 + 15) = v241 | (16 * (v267 & 0xFFFFF)) | (v177 << 25);
        *(v239 + 10) = 5;
        *(v239 + 40) |= 0x10000u;
        v242 = malloc_type_zone_malloc(queryZone, v191 & 0xFFFFFFFFFFFFFFFELL, 0xA4971684uLL);
        if (!v242)
        {
          _log_fault_for_malloc_failure();
        }

        v243 = 0;
        *(v239 + 37) = v242;
        if (v240 <= 1)
        {
          v244 = 1;
        }

        else
        {
          v244 = v191 >> 1;
        }

        do
        {
          *(*(v239 + 37) + 2 * v243) = *(v237 + 2 * v243);
          ++v243;
        }

        while (v244 != v243);
        if (*v238 <= 0x4FuLL)
        {
          ++sTotal;
        }

        v245 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
        if (v245)
        {
          v245->var6 = 4;
          v245->var2 = v239;
          v216 = makeAndNode(v245, v299);
          v246 = [(__CFDictionary *)v176 length];
          v247 = *__error();
          v248 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134219008;
            *&buf[4] = var0;
            *&buf[12] = 2048;
            *&buf[14] = v246 >> 1;
            *&buf[22] = 2048;
            v316 = v183;
            *v317 = 1024;
            *&v317[2] = v267;
            *&v317[6] = 2048;
            *&v317[8] = v173;
            _os_log_impl(&dword_1C278D000, v248, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Adding ANN node (dim: %lu, thresh: %f, num results: %d, visual tokens: %ld)", buf, 0x30u);
          }

          *__error() = v247;
        }

        else
        {
          _log_fault_for_malloc_failure();
          v216 = 0;
          MEMORY[0x30] = 4;
          MEMORY[0x10] = v239;
        }

        goto LABEL_383;
      }

      v192 = *__error();
      v249 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v249, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v249, OS_LOG_TYPE_DEFAULT, "Skipping ANN node (ERROR: Failed to get byte from embedding)", buf, 2u);
      }
    }

    else
    {
      v192 = *__error();
      v193 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v193, OS_LOG_TYPE_DEFAULT, "Skipping ANN node (ERROR: embedding has 0 dimensionality)", buf, 2u);
      }
    }

    v216 = 0;
    *__error() = v192;
LABEL_383:
    CFRelease(v176);
LABEL_326:
    if (!v216 && v299)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      v316 = COERCE_DOUBLE(&unk_1E8198ED0);
      *v317 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v299, buf, 0);
    }

    v217 = makeOrNode(v216, v165);
    FalseNode = makeAndNode(v217, v302);
    if (!FalseNode)
    {
      FalseNode = makeFalseNode();
      v218 = *__error();
      v219 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v219, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Return no results (missing all nodes)", buf, 0xCu);
      }

      *__error() = v218;
    }

    goto LABEL_353;
  }

  v19 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(__CFString *)a1 length];
    v21 = a1;
    if (v20 >= 4)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c...%c<%lu chars>", -[__CFString characterAtIndex:](a1, "characterAtIndex:", 0), -[__CFString characterAtIndex:](a1, "characterAtIndex:", 1), -[__CFString characterAtIndex:](a1, "characterAtIndex:", v20 - 1), v20];
    }

    *buf = 134218498;
    *&buf[4] = var0;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    *&buf[22] = 2112;
    v316 = *&v10;
    _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Processing query: %@, client: %@", buf, 0x20u);
  }

  *__error() = v14;
  if (var23)
  {
    v22 = CFDictionaryGetValue(var23, @"disableMetadataSearch");
    buf[0] = 0;
    if (v22)
    {
      CFNumberGetValue(v22, kCFNumberSInt8Type, buf);
      if (buf[0])
      {
        v23 = *__error();
        v24 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = var0;
          _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Skipping ranking nodes (Reason: metadata search is disabled)", buf, 0xCu);
        }

        *__error() = v23;
        FalseNode = makeFalseNode();
        goto LABEL_353;
      }
    }
  }

  v277 = mach_absolute_time();
  v26 = [MEMORY[0x1E695DF70] array];
  *&v305 = 0;
  if (a2 && CFAttributedStringGetLength(a2) >= 1)
  {
    *buf = 0;
    PhPopulateFiltersFromQuery(a2, buf, &v305, v26, [MEMORY[0x1E695DF70] array], 1, var0);
    db_free_query_node(*buf);
  }

  -[NSCharacterSet formUnionWithCharacterSet:](v288, "formUnionWithCharacterSet:", [MEMORY[0x1E696AB08] whitespaceCharacterSet]);
  if (!a3)
  {
    goto LABEL_37;
  }

  v27 = getkQPQUOutputTokenInfoKey();
  if (!CFDictionaryContainsKey(a3, v27) || !CFDictionaryContainsKey(a3, @"attributedParse"))
  {
    if (CFDictionaryContainsKey(a3, @"attributedParses"))
    {
      v30 = CFDictionaryGetValue(a3, @"attributedParses");
      if ([v30 count])
      {
        v31 = [v30 objectAtIndexedSubscript:0];
        goto LABEL_38;
      }
    }

LABEL_37:
    v31 = 0;
LABEL_38:
    v272 = v305;
    v32 = *__error();
    v33 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = var0;
      _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Processing rule-based query parse output to create ranking tree", buf, 0xCu);
    }

    *__error() = v32;
    obj = [MEMORY[0x1E695DF70] array];
    v34 = [MEMORY[0x1E695DF70] array];
    v35 = [MEMORY[0x1E695DF70] array];
    v295 = [MEMORY[0x1E695DF70] array];
    v36 = [MEMORY[0x1E695DF70] array];
    v37 = [v31 length];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL28PhPopulateAllFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES9_S9_S9__block_invoke_16375;
    v316 = COERCE_DOUBLE(&unk_1E8199768);
    *v317 = v35;
    *&v317[8] = v295;
    *&v317[16] = v36;
    v318 = obj;
    v319 = v34;
    [v31 enumerateAttributesInRange:0 options:v37 usingBlock:{0, buf}];
    if ([v34 count] || objc_msgSend(v35, "count") || objc_msgSend(v36, "count") || objc_msgSend(v295, "count"))
    {
      v38 = *__error();
      v39 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v34 count];
        *&v41 = COERCE_DOUBLE([v35 count]);
        v42 = [v36 count];
        v43 = [v295 count];
        *buf = 134219008;
        *&buf[4] = var0;
        *&buf[12] = 2048;
        *&buf[14] = v40;
        *&buf[22] = 2048;
        v316 = *&v41;
        *v317 = 2048;
        *&v317[2] = v42;
        *&v317[10] = 2048;
        *&v317[12] = v43;
        _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Populated filters: time = %lu, fav = %lu, person = %lu, mediatype = %lu", buf, 0x34u);
      }

      *__error() = v38;
    }

    theDicta = [MEMORY[0x1E695DFA8] set];
    v44 = CreateQueryTokens(a1, 1);
    if (v44)
    {
      v275 = v44;
      v45 = *v44;
      if (v45)
      {
        v46 = CFArrayGetCount(v45);
        if (v46)
        {
          theArraya = *v275;
          v290 = v275[2];
          v292 = v275[1];
          v309[0] = 0;
          matched = PhExactMatchTree(a1, v26, v288, v46, v309, var0, v284);
          LODWORD(__p[0]) = 0;
          if (v46 < 1)
          {
            v285 = 0;
LABEL_334:
            freeQueryTokensContext(v275);
            v220 = *__error();
            v221 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = var0;
              *&buf[12] = 1024;
              *&buf[14] = __p[0];
              _os_log_impl(&dword_1C278D000, v221, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Added %d nodes", buf, 0x12u);
            }

            *__error() = v220;
            if (v272)
            {
              v222 = *__error();
              v223 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                *&buf[4] = var0;
                *&buf[12] = 2048;
                *&buf[14] = 0x4024000000000000;
                _os_log_impl(&dword_1C278D000, v223, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Assigning weight: %f to metadata filter", buf, 0x16u);
              }

              *__error() = v222;
              v313[0] = MEMORY[0x1E69E9820];
              v313[1] = 3221225472;
              v313[2] = ___ZL24PhRankingTreeFromQPParsePK10__CFStringP10query_nodeP18NSAttributedStringP7NSArrayIP7NSValueEP14NSCharacterSetyP8NSString_block_invoke;
              v313[3] = &__block_descriptor_36_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
              v314 = 1092616192;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = __db_query_tree_apply_block_block_invoke;
              v316 = COERCE_DOUBLE(&unk_1E8198ED0);
              *v317 = v313;
              db_query_tree_apply_block_with_meta(v272, buf, 0);
              v224 = makeAndNode(matched, v272);
            }

            else
            {
              v224 = matched;
            }

            v225 = makeOrNode(v224, v285);
            if (v225)
            {
              v226 = v225;
              v227 = PhRankingBoostTree();
              v225 = makeAndNode(v226, v227);
            }

            v28 = makeOrNode(v225, v309[0]);
            goto LABEL_344;
          }

          v285 = 0;
          v47 = 0;
          while (1)
          {
            v48 = getRangeAtIndex(v292, v290, v47);
            v50 = v49;
            if (v48 == -1)
            {
              v61 = *__error();
              v62 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218752;
                *&buf[4] = var0;
                *&buf[12] = 2048;
                *&buf[14] = v47;
                *&buf[22] = 2048;
                v316 = NAN;
                *v317 = 2048;
                *&v317[2] = v50;
                _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Skipping token %lu (ERROR: invalid range: (%ld, %ld))", buf, 0x2Au);
              }

              *__error() = v61;
              goto LABEL_99;
            }

            v51 = v48;
            if ([v26 count])
            {
              v52 = 0;
              while (1)
              {
                v332.location = [objc_msgSend(v26 objectAtIndexedSubscript:{v52), "rangeValue"}];
                v332.length = v53;
                v321.location = v51;
                v321.length = v50;
                if (NSIntersectionRange(v321, v332).length)
                {
                  break;
                }

                if (++v52 >= [v26 count])
                {
                  goto LABEL_57;
                }
              }

              v59 = *__error();
              v63 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                *&buf[4] = var0;
                *&buf[12] = 2048;
                *&buf[14] = v47;
                _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Skipping token %lu (Reason: It is a suggestion token)", buf, 0x16u);
              }
            }

            else
            {
LABEL_57:
              if ([v34 count])
              {
                v54 = 0.0;
                while (1)
                {
                  v333.location = [objc_msgSend(v34 objectAtIndexedSubscript:{*&v54), "rangeValue"}];
                  v333.length = v55;
                  v322.location = v51;
                  v322.length = v50;
                  if (NSIntersectionRange(v322, v333).length)
                  {
                    break;
                  }

                  if (++*&v54 >= [v34 count])
                  {
                    goto LABEL_61;
                  }
                }

                v64 = *__error();
                v65 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218496;
                  *&buf[4] = var0;
                  *&buf[12] = 2048;
                  *&buf[14] = v47;
                  *&buf[22] = 2048;
                  v316 = v54;
                  _os_log_impl(&dword_1C278D000, v65, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Token: %lu has a date parse (Date parse idx: %lu)", buf, 0x20u);
                }

                *__error() = v64;
                if ((-[__CFDictionary containsObject:](theDicta, "containsObject:", [MEMORY[0x1E696AD98] numberWithLong:*&v54]) & 1) == 0)
                {
                  -[__CFDictionary addObject:](theDicta, "addObject:", [MEMORY[0x1E696AD98] numberWithLong:*&v54]);
                  v66 = PhRankingTreeFromStr([objc_msgSend(obj objectAtIndexedSubscript:{*&v54), "UTF8String"}], __p, 0.13);
                  v285 = makeAndNode(v285, v66);
                }

                goto LABEL_99;
              }

LABEL_61:
              if ([v35 count])
              {
                v56 = 0.0;
                while (1)
                {
                  v334.location = [objc_msgSend(v35 objectAtIndexedSubscript:{*&v56), "rangeValue"}];
                  v334.length = v57;
                  v323.location = v51;
                  v323.length = v50;
                  if (NSIntersectionRange(v323, v334).length)
                  {
                    break;
                  }

                  if (++*&v56 >= [v35 count])
                  {
                    goto LABEL_65;
                  }
                }

                v74 = *__error();
                v75 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218496;
                  *&buf[4] = var0;
                  *&buf[12] = 2048;
                  *&buf[14] = v47;
                  *&buf[22] = 2048;
                  v316 = v56;
                  _os_log_impl(&dword_1C278D000, v75, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Token: %lu has a fav parse (Fav parse idx: %lu)", buf, 0x20u);
                }

                *__error() = v74;
                v76 = "kMDItemPhotosFavorited";
                v77 = "1";
                v78 = 0;
                v79 = 0.18;
LABEL_97:
                v80 = createQueryNode(v76, v77, v78, 1, 0, v79, 0.0);
                v285 = makeAndNode(v285, v80);
                v81 = LODWORD(__p[0]) + 1;
LABEL_98:
                LODWORD(__p[0]) = v81;
                goto LABEL_99;
              }

LABEL_65:
              v58 = CFArrayGetValueAtIndex(theArraya, v47);
              if (_containsOnlyCharsInCharset(v58, v288))
              {
                v59 = *__error();
                v60 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218240;
                  *&buf[4] = var0;
                  *&buf[12] = 2048;
                  *&buf[14] = v47;
                  _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Token: %lu is skipped (Reason: It has only trimmable chars)", buf, 0x16u);
                }
              }

              else
              {
                v67 = [v58 UTF8String];
                if (v67)
                {
                  if ([v36 count])
                  {
                    v68 = 0.0;
                    while (1)
                    {
                      v335.location = [objc_msgSend(v36 objectAtIndexedSubscript:{*&v68), "rangeValue"}];
                      v335.length = v69;
                      v324.location = v51;
                      v324.length = v50;
                      if (NSIntersectionRange(v324, v335).length)
                      {
                        break;
                      }

                      if (++*&v68 >= [v36 count])
                      {
                        goto LABEL_84;
                      }
                    }

                    v83 = *__error();
                    v84 = _SILogForLogForCategory(20);
                    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218496;
                      *&buf[4] = var0;
                      *&buf[12] = 2048;
                      *&buf[14] = v47;
                      *&buf[22] = 2048;
                      v316 = v68;
                      _os_log_impl(&dword_1C278D000, v84, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Token: %lu has a person parse (Person parse idx: %lu)", buf, 0x20u);
                    }

                    *__error() = v83;
                    v85 = createQueryNode("kMDItemPhotosPeopleNames", v67, 112, 1, 0, 0.17, 0.0);
                    v86 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", v67, 112, 1, 0, 0.17, 0.0);
                    v87 = makeOrNode(v85, v86);
                    v285 = makeAndNode(v285, v87);
                    v81 = LODWORD(__p[0]) + 2;
                    goto LABEL_98;
                  }

LABEL_84:
                  if ([v295 count])
                  {
                    v70 = 0.0;
                    while (1)
                    {
                      v336.location = [objc_msgSend(v295 objectAtIndexedSubscript:{*&v70), "rangeValue"}];
                      v336.length = v71;
                      v325.location = v51;
                      v325.length = v50;
                      if (NSIntersectionRange(v325, v336).length)
                      {
                        break;
                      }

                      if (++*&v70 >= [v295 count])
                      {
                        goto LABEL_88;
                      }
                    }

                    v89 = *__error();
                    v90 = _SILogForLogForCategory(20);
                    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218496;
                      *&buf[4] = var0;
                      *&buf[12] = 2048;
                      *&buf[14] = v47;
                      *&buf[22] = 2048;
                      v316 = v70;
                      _os_log_impl(&dword_1C278D000, v90, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Token: %lu has a media parse (Media parse idx: %lu)", buf, 0x20u);
                    }

                    *__error() = v89;
                    v76 = "kMDItemPhotosMediaTypes";
                    v77 = v67;
                    v78 = 112;
                    v79 = 0.1;
                    goto LABEL_97;
                  }

LABEL_88:
                  std::string::basic_string[abi:nn200100]<0>(buf, v67);
                  v72 = isOptionalWord(buf);
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }

                  if (!v72)
                  {
                    if (v47 == v46 - 1)
                    {
                      v88 = PhImpAttributesPrefixRankingNode(v67);
                    }

                    else
                    {
                      v88 = PhImpAttributesRankingNode(v67);
                    }

                    v285 = makeAndNode(v285, v88);
                    v81 = LODWORD(__p[0]) + 5;
                    goto LABEL_98;
                  }

                  v59 = *__error();
                  v73 = _SILogForLogForCategory(20);
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218240;
                    *&buf[4] = var0;
                    *&buf[12] = 2048;
                    *&buf[14] = v47;
                    _os_log_impl(&dword_1C278D000, v73, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Token: %lu is skipped (Reason: It is optional as per optional dictionary)", buf, 0x16u);
                  }
                }

                else
                {
                  v59 = *__error();
                  v82 = _SILogForLogForCategory(20);
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218240;
                    *&buf[4] = var0;
                    *&buf[12] = 2048;
                    *&buf[14] = v47;
                    _os_log_impl(&dword_1C278D000, v82, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Token: %lu is skipped (ERROR: UTF8 encoding of token failed)", buf, 0x16u);
                  }
                }
              }
            }

            *__error() = v59;
LABEL_99:
            if (++v47 == v46)
            {
              goto LABEL_334;
            }
          }
        }
      }

      freeQueryTokensContext(v275);
      v99 = *__error();
      v100 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v100, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Return no results (ERROR: zero tokens found from the userQuery)", buf, 0xCu);
      }
    }

    else
    {
      v99 = *__error();
      v101 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = var0;
        _os_log_impl(&dword_1C278D000, v101, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {QP} Return no results (ERROR: missing tokenization context on userQuery)", buf, 0xCu);
      }
    }

    *__error() = v99;
    v28 = makeFalseNode();
    goto LABEL_344;
  }

  v28 = PhRankingTreeFromU2Parse(a3, v305, v26, v288, var0, v284);
LABEL_344:
  FalseNode = v28;
  if (!v28)
  {
    v228 = *__error();
    v229 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = var0;
      _os_log_impl(&dword_1C278D000, v229, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Returning false tree (Reason: query tree is empty)", buf, 0xCu);
    }

    *__error() = v228;
    FalseNode = PhRankingBoostTree();
  }

  v230 = *__error();
  v231 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
  {
    v232 = mach_absolute_time();
    if (NanoSecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
    {
      dispatch_once(&NanoSecondsSinceAbsoluteTime(unsigned long long)::onceToken, &__block_literal_global_156);
    }

    *buf = 134218240;
    *&buf[4] = var0;
    *&buf[12] = 2048;
    *&buf[14] = ((v232 - v277) * NanoSecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo / *algn_1EC058FE4) / 1000.0;
    _os_log_impl(&dword_1C278D000, v231, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Created ranking tree in %f micro seconds", buf, 0x16u);
  }

  *__error() = v230;
LABEL_353:
  v233 = *MEMORY[0x1E69E9840];
  return FalseNode;
}

void PhPopulateFiltersFromQuery(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = objc_autoreleasePoolPush();
  v15 = *__error();
  if (a6)
  {
    v16 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = a7;
LABEL_6:
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Processing attributed query", buf, 0xCu);
    }
  }

  else
  {
    v16 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = a7;
      goto LABEL_6;
    }
  }

  *__error() = v15;
  v17 = [a1 length];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_by_block_invoke;
  v19[3] = &unk_1E8199650;
  v19[4] = a4;
  v19[5] = a5;
  v20 = a6;
  v19[6] = a7;
  v19[7] = a2;
  v19[8] = a3;
  [a1 enumerateAttributesInRange:0 options:v17 usingBlock:{0, v19}];
  objc_autoreleasePoolPop(v14);
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t getkQPQUOutputTokenInfoKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenInfoKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenInfoKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenInfoKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenInfoKey");
    getkQPQUOutputTokenInfoKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenInfoKey()") description:{@"PRQueryPhotosProcessor.mm", 29, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2BDA1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

query_node *PhRankingTreeFromU2Parse(const __CFDictionary *a1, query_node *a2, void *a3, NSCharacterSet *a4, uint64_t a5, void *a6)
{
  v318 = *MEMORY[0x1E69E9840];
  v7 = *__error();
  v8 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a5;
    _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Processing query understanding output to create ranking tree", buf, 0xCu);
  }

  *__error() = v7;
  v9 = getkQPQUOutputTokenInfoKey();
  theArray = CFDictionaryGetValue(a1, v9);
  Value = CFDictionaryGetValue(a1, @"attributedParse");
  v290 = [MEMORY[0x1E695DF70] array];
  v278 = [MEMORY[0x1E695DF70] array];
  v10 = [Value length];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke_16485;
  *v317 = &unk_1E8199718;
  *&v317[8] = v290;
  *&v317[16] = v278;
  [Value enumerateAttributesInRange:0 options:v10 usingBlock:{0, buf}];
  if ([v278 count])
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v278 count];
      *buf = 134218240;
      *&buf[4] = a5;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Populated %lu date filters from U2 parse", buf, 0x16u);
    }

    *__error() = v11;
  }

  if (![v290 count])
  {
    if (CFDictionaryContainsKey(a1, @"attributedParses"))
    {
      v99 = CFDictionaryGetValue(a1, @"attributedParses");
      if ([v99 count] >= 2)
      {
        v100 = [v99 objectAtIndexedSubscript:1];
        v101 = [v100 length];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke_16485;
        *v317 = &unk_1E8199718;
        *&v317[8] = v290;
        *&v317[16] = v278;
        [v100 enumerateAttributesInRange:0 options:v101 usingBlock:{0, buf}];
        if ([v278 count])
        {
          v102 = *__error();
          v103 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            v104 = [v278 count];
            *buf = 134218240;
            *&buf[4] = a5;
            *&buf[12] = 2048;
            *&buf[14] = v104;
            _os_log_impl(&dword_1C278D000, v103, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Populated %lu date filters from QP parse", buf, 0x16u);
          }

          *__error() = v102;
        }
      }
    }
  }

  obj = [MEMORY[0x1E695DFA8] set];
  v271 = [MEMORY[0x1E695DF70] array];
  v272 = [MEMORY[0x1E695DF70] array];
  v265 = [MEMORY[0x1E695DF70] array];
  v264 = [MEMORY[0x1E695DF70] array];
  v273 = [MEMORY[0x1E695DF70] array];
  v266 = [MEMORY[0x1E695DF70] array];
  Count = CFArrayGetCount(theArray);
  log = Count;
  if (Count < 1)
  {
    v274 = 0;
    v263 = 1;
    goto LABEL_130;
  }

  v259 = Count - 1;
  v274 = 0;
  v16 = 0;
  v263 = 1;
  v261 = -1;
  v262 = -1;
  *&v15 = 134218754;
  v258 = v15;
  v260 = -1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
    v18 = getkQPQUOutputTokenRangeKey();
    if (!CFDictionaryContainsKey(ValueAtIndex, v18) || (v19 = getkQPQUOutputTokenArgIdsKey(), !CFDictionaryContainsKey(ValueAtIndex, v19)) || (v20 = getkQPQUOutputTokenArgScoresKey(), !CFDictionaryContainsKey(ValueAtIndex, v20)) || (v21 = getkQPQUOutputTokenKey(), !CFDictionaryContainsKey(ValueAtIndex, v21)))
    {
      v24 = *__error();
      v27 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v16;
        _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Skipping token: %lu (ERROR: token info is missing essential keys)", buf, 0x16u);
      }

      goto LABEL_20;
    }

    v22 = getkQPQUOutputTokenRangeKey();
    range1 = [CFDictionaryGetValue(ValueAtIndex v22)];
    range = v23;
    if (range1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = *__error();
      v25 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v319.location = 0x7FFFFFFFFFFFFFFFLL;
        v319.length = range;
        v26 = NSStringFromRange(v319);
        *buf = 134218498;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v16;
        *&buf[22] = 2112;
        *v317 = v26;
        _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Skipping token: %lu (ERROR: invalid range: %@)", buf, 0x20u);
      }

      goto LABEL_20;
    }

    if ([a3 count])
    {
      v28 = 0;
      do
      {
        v340.location = [objc_msgSend(a3 objectAtIndexedSubscript:{v28, v258), "rangeValue"}];
        v340.length = v29;
        v320.location = range1;
        v320.length = range;
        if (NSIntersectionRange(v320, v340).length)
        {
          v54 = *__error();
          v55 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = a5;
            *&buf[12] = 2048;
            *&buf[14] = v16;
            _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Skipping token: %lu (Reason: It is a suggestion token)", buf, 0x16u);
          }

          *__error() = v54;
          goto LABEL_21;
        }

        ++v28;
      }

      while (v28 < [a3 count]);
    }

    if ([v278 count])
    {
      v30 = 0;
      do
      {
        v341.location = [objc_msgSend(v278 objectAtIndexedSubscript:{v30), "rangeValue"}];
        v341.length = v31;
        v321.location = range1;
        v321.length = range;
        if (NSIntersectionRange(v321, v341).length)
        {
          v56 = *__error();
          v57 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            *&buf[4] = a5;
            *&buf[12] = 2048;
            *&buf[14] = v16;
            *&buf[22] = 2048;
            *v317 = v30;
            _os_log_impl(&dword_1C278D000, v57, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token: %lu has a date parse (Date parse idx: %lu)", buf, 0x20u);
          }

          *__error() = v56;
          if (([obj containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v30)}] & 1) == 0)
          {
            [obj addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v30)}];
          }

          if ([v271 count] && v16 == v262 + 1)
          {
            v58 = [v271 count] - 1;
            v59 = [objc_msgSend(v271 objectAtIndexedSubscript:{v58), "rangeValue"}];
            v60 = v59;
            if (v59 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v61 = 0;
            }

            else
            {
              v61 = range1 + range - v59;
            }

            [v271 setObject:objc_msgSend(MEMORY[0x1E696B098] atIndexedSubscript:{"valueWithRange:", v59, v61), v58}];
            v62 = *__error();
            v63 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v322.location = v60;
              v322.length = v61;
              v64 = NSStringFromRange(v322);
              *buf = 134218498;
              *&buf[4] = a5;
              *&buf[12] = 2048;
              *&buf[14] = v16;
              *&buf[22] = 2112;
              *v317 = v64;
              _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token: %lu merged with previous time span (updated range: %@)", buf, 0x20u);
            }

            *__error() = v62;
          }

          else
          {
            [v271 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", range1, range)}];
            v72 = *__error();
            v73 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v323.location = range1;
              v323.length = range;
              v74 = NSStringFromRange(v323);
              *buf = 134218498;
              *&buf[4] = a5;
              *&buf[12] = 2048;
              *&buf[14] = v16;
              *&buf[22] = 2112;
              *v317 = v74;
              _os_log_impl(&dword_1C278D000, v73, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token: %lu is a new time span (added range: %@)", buf, 0x20u);
            }

            *__error() = v72;
          }

          v262 = v16;
          goto LABEL_21;
        }

        ++v30;
      }

      while (v30 < [v278 count]);
    }

    v32 = getkQPQUOutputTokenArgIdsKey();
    v33 = CFDictionaryGetValue(ValueAtIndex, v32);
    v34 = getkQPQUOutputTokenArgScoresKey();
    v35 = CFDictionaryGetValue(ValueAtIndex, v34);
    v36 = getkQPQUOutputSpanTypesKey();
    v37 = CFDictionaryGetValue(ValueAtIndex, v36);
    if (![v33 count])
    {
      v52 = *__error();
      v65 = _SILogForLogForCategory(20);
      v51 = 2;
      v41 = 0.0;
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_89;
      }

      *buf = 134218496;
      *&buf[4] = a5;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      *&buf[22] = 1024;
      *v317 = 2;
      v66 = v65;
      v67 = "[qid=%llu] {U2} Token: %lu is using default label: %d (ERROR: no U2 labels found)";
      v68 = 28;
      goto LABEL_83;
    }

    v38 = [v33 count];
    if (v38 != [v35 count])
    {
      v52 = *__error();
      v69 = _SILogForLogForCategory(20);
      v41 = 0.0;
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v51 = 2;
        goto LABEL_89;
      }

      v70 = [v33 count];
      v71 = [v35 count];
      *buf = 134219008;
      *&buf[4] = a5;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      *&buf[22] = 1024;
      v51 = 2;
      *v317 = 2;
      *&v317[4] = 2048;
      *&v317[6] = v70;
      *&v317[14] = 2048;
      *&v317[16] = v71;
      v66 = v69;
      v67 = "[qid=%llu] {U2} Token: %lu is using default label: %d (ERROR: tokIds.count(%lu) != tokIdsScore.count(%lu))";
      v68 = 48;
LABEL_83:
      _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, v67, buf, v68);
      goto LABEL_89;
    }

    v39 = [objc_msgSend(v33 objectAtIndexedSubscript:{0), "intValue"}];
    [objc_msgSend(v35 objectAtIndexedSubscript:{0), "floatValue"}];
    v41 = v40;
    v298 = 0u;
    v299 = 0u;
    v296 = 0u;
    v297 = 0u;
    v42 = [v37 countByEnumeratingWithState:&v296 objects:v305 count:16];
    if (!v42)
    {
      goto LABEL_51;
    }

    v43 = *v297;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v297 != v43)
        {
          objc_enumerationMutation(v37);
        }

        v45 = *(*(&v296 + 1) + 8 * i);
        if ([v45 isEqualToString:@"Person"])
        {
          v46 = 2;
        }

        else
        {
          if (([v45 isEqualToString:@"Location"] & 1) == 0)
          {
            v47 = *__error();
            v49 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              *&buf[4] = a5;
              *&buf[12] = 2048;
              *&buf[14] = v16;
              *&buf[22] = 2112;
              *v317 = v45;
              _os_log_impl(&dword_1C278D000, v49, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu has unsupported span: %@, skipping it", buf, 0x20u);
            }

            goto LABEL_48;
          }

          v46 = 10;
        }

        if (v39 == 2)
        {
          continue;
        }

        v47 = *__error();
        v48 = _SILogForLogForCategory(20);
        v41 = 1.0;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          *&buf[4] = a5;
          *&buf[12] = 2048;
          *&buf[14] = v16;
          *&buf[22] = 1024;
          *v317 = v39;
          *&v317[4] = 1024;
          *&v317[6] = v46;
          _os_log_impl(&dword_1C278D000, v48, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu type is updated from %d to span %d", buf, 0x22u);
        }

        v39 = v46;
LABEL_48:
        *__error() = v47;
      }

      v42 = [v37 countByEnumeratingWithState:&v296 objects:v305 count:16];
    }

    while (v42);
LABEL_51:
    if (v39 == 57 || v39 == 55)
    {
      v51 = 10;
    }

    else
    {
      v51 = v39;
    }

    if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v51), xmmword_1C2BFA6C0))) & 1) != 0 || (v51 & 0xFFFFFFF5) == 0 || (v51 & 0xFFFFFFFB) == 1 || (v51 - 3) < 2)
    {
      if (v51 || v41 < 0.5)
      {
        goto LABEL_90;
      }

      v24 = *__error();
      v83 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v16;
        _os_log_impl(&dword_1C278D000, v83, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token: %lu is skipped (Reason: It is optional as per QU model)", buf, 0x16u);
      }

      goto LABEL_20;
    }

    v52 = *__error();
    v53 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = a5;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      *&buf[22] = 1024;
      *v317 = v51;
      _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token: %lu is interpreted as ARG_NOUN (Reason: Its U2 id: %d is not supported)", buf, 0x1Cu);
    }

    v51 = 5;
LABEL_89:
    *__error() = v52;
LABEL_90:
    v75 = getkQPQUOutputTokenKey();
    v76 = CFDictionaryGetValue(ValueAtIndex, v75);
    if (_containsOnlyCharsInCharset(v76, a4))
    {
      v24 = *__error();
      v77 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v16;
        _os_log_impl(&dword_1C278D000, v77, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token: %lu is skipped (Reason: It has only trimmable chars)", buf, 0x16u);
      }

      goto LABEL_20;
    }

    v78 = [(NSString *)v76 UTF8String];
    if (!v78)
    {
      v24 = *__error();
      v82 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v16;
        _os_log_impl(&dword_1C278D000, v82, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token: %lu is skipped (ERROR: UTF8 encoding of token failed)", buf, 0x16u);
      }

LABEL_20:
      *__error() = v24;
      v274 = 1;
      goto LABEL_21;
    }

    std::string::basic_string[abi:nn200100]<0>(buf, v78);
    v79 = isOptionalWord(buf);
    v80 = v79;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (v80)
      {
        goto LABEL_97;
      }
    }

    else if (v79)
    {
LABEL_97:
      v24 = *__error();
      v81 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v16;
        _os_log_impl(&dword_1C278D000, v81, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token: %lu is skipped (Reason: It is optional as per optional dictionary)", buf, 0x16u);
      }

      goto LABEL_20;
    }

    if ([v272 count] && v51 == v261 && v16 == v260 + 1)
    {
      v84 = [v272 count] - 1;
      v85 = [objc_msgSend(v272 objectAtIndexedSubscript:{v84), "rangeValue"}];
      v86 = v85;
      if (v85 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v87 = 0;
      }

      else
      {
        v87 = range1 + range - v85;
      }

      [v272 setObject:objc_msgSend(MEMORY[0x1E696B098] atIndexedSubscript:{"valueWithRange:", v85, v87), v84}];
      v88 = MEMORY[0x1E696AD98];
      [objc_msgSend(v264 objectAtIndexedSubscript:{v84), "floatValue"}];
      if (*&v89 >= v41)
      {
        *&v89 = v41;
      }

      [v264 setObject:objc_msgSend(v88 atIndexedSubscript:{"numberWithFloat:", v89), v84}];
      v90 = *__error();
      v91 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v324.location = v86;
        v324.length = v87;
        v92 = NSStringFromRange(v324);
        *buf = v258;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v16;
        *&buf[22] = 1024;
        *v317 = v261;
        *&v317[4] = 2112;
        *&v317[6] = v92;
        v93 = v91;
        v94 = "[qid=%llu] {U2} Token: %lu merged with previous span with type %d (updated range: %@)";
        v95 = 38;
        goto LABEL_121;
      }
    }

    else
    {
      [v272 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", range1, range)}];
      [v265 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v51)}];
      *&v96 = v41;
      [v264 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v96)}];
      v90 = *__error();
      v97 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        v325.location = range1;
        v325.length = range;
        v98 = NSStringFromRange(v325);
        *buf = 134219010;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v16;
        *&buf[22] = 1024;
        *v317 = v51;
        *&v317[4] = 2048;
        *&v317[6] = v41;
        *&v317[14] = 2112;
        *&v317[16] = v98;
        v93 = v97;
        v94 = "[qid=%llu] {U2} Token: %lu is a new span with type: %d, conf: %f (added range: %@)";
        v95 = 48;
LABEL_121:
        _os_log_impl(&dword_1C278D000, v93, OS_LOG_TYPE_DEFAULT, v94, buf, v95);
      }
    }

    *__error() = v90;
    [v273 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", range1, range)}];
    [v266 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v51)}];
    v263 &= v16 != v259;
    v260 = v16;
    v261 = v51;
LABEL_21:
    ++v16;
  }

  while (v16 != log);
LABEL_130:
  range1a = [Value string];
  v295 = 0;
  matched = PhExactMatchTree(range1a, a3, a4, log, &v295, a5, a6);
  if (![range1a length])
  {
    v138 = *__error();
    v139 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a5;
      _os_log_impl(&dword_1C278D000, v139, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping query (Reason: empty query)", buf, 0xCu);
    }

    goto LABEL_159;
  }

  if (![v272 count] && !objc_msgSend(obj, "count"))
  {
    v138 = *__error();
    v141 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a5;
      _os_log_impl(&dword_1C278D000, v141, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping query (Reason: no spans and no time parses in the query)", buf, 0xCu);
    }

LABEL_159:
    v140 = __error();
    v107 = 0;
    goto LABEL_250;
  }

  v105 = [v272 count];
  if (v105 == [v265 count] && (v106 = objc_msgSend(v272, "count"), v106 == objc_msgSend(v264, "count")))
  {
    rangea = [range1a length];
    v304 = 0;
    if ([v272 count] && objc_msgSend(v271, "count"))
    {
      v107 = 0;
      v108 = 0;
      while (1)
      {
        v109 = [objc_msgSend(v271 objectAtIndexedSubscript:{v108), "rangeValue"}];
        v111 = v109;
        v112 = v110;
        if (v109 == 0x7FFFFFFFFFFFFFFFLL || v109 + v110 > rangea)
        {
          v126 = *__error();
          v127 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
          {
            v326.location = v111;
            v326.length = v112;
            v128 = NSStringFromRange(v326);
            *buf = 134218498;
            *&buf[4] = a5;
            *&buf[12] = 2048;
            *&buf[14] = v108;
            *&buf[22] = 2112;
            *v317 = v128;
            _os_log_impl(&dword_1C278D000, v127, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping time span: %lu (ERROR: out of bounds range %@)", buf, 0x20u);
          }

          goto LABEL_151;
        }

        v113 = [range1a substringWithRange:{v109, v110}];
        if (![v113 length])
        {
          break;
        }

        v114 = [v113 UTF8String];
        if (!v114)
        {
          v126 = *__error();
          v131 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
          {
            v328.location = v111;
            v328.length = v112;
            v132 = NSStringFromRange(v328);
            *buf = 134218498;
            *&buf[4] = a5;
            *&buf[12] = 2048;
            *&buf[14] = v108;
            *&buf[22] = 2112;
            *v317 = v132;
            _os_log_impl(&dword_1C278D000, v131, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping time span: %lu (ERROR: UTF8 encoding failed for range %@)", buf, 0x20u);
          }

LABEL_151:
          *__error() = v126;
          goto LABEL_152;
        }

        QueryNode = createQueryNode("kMDItemPhotosHolidays", v114, 48, 1, 0, 10.0, 0.0);
        v116 = createQueryNode("kMDItemPhotosSeasons", v114, 48, 1, 0, 10.0, 0.0);
        v117 = createQueryNode("kMDItemPhotosContentCreationDateMonth", v114, 48, 1, 0, 10.0, 0.0);
        v118 = createQueryNode("kMDItemPhotosContentCreationDateMonths", v114, 48, 1, 0, 10.0, 0.0);
        v119 = createQueryNode("kMDItemPhotosContentCreationDateYear", v114, 48, 1, 0, 10.0, 0.0);
        v120 = createQueryNode("kMDItemPhotosContentCreationDateYears", v114, 48, 1, 0, 10.0, 0.0);
        v304 += 4;
        v121 = makeOrNode(QueryNode, v116);
        v122 = makeOrNode(v118, v120);
        v123 = makeOrNode(v117, v119);
        v124 = makeOrNode(v122, v123);
        v125 = makeOrNode(v121, v124);
        v107 = makeOrNode(v107, v125);
LABEL_152:
        if (++v108 >= [v271 count])
        {
          goto LABEL_164;
        }
      }

      v126 = *__error();
      v129 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
      {
        v327.location = v111;
        v327.length = v112;
        v130 = NSStringFromRange(v327);
        *buf = 134218498;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v108;
        *&buf[22] = 2112;
        *v317 = v130;
        _os_log_impl(&dword_1C278D000, v129, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping time span: %lu (ERROR: Empty sub-query for range %@)", buf, 0x20u);
      }

      goto LABEL_151;
    }

    v107 = 0;
LABEL_164:
    v302 = 0u;
    v303 = 0u;
    v300 = 0u;
    v301 = 0u;
    v142 = [obj countByEnumeratingWithState:&v300 objects:buf count:16];
    if (v142)
    {
      v143 = *v301;
      do
      {
        for (j = 0; j != v142; ++j)
        {
          if (*v301 != v143)
          {
            objc_enumerationMutation(obj);
          }

          v145 = *(*(&v300 + 1) + 8 * j);
          v146 = [v290 objectAtIndexedSubscript:{objc_msgSend(v145, "unsignedIntValue")}];
          if ([v146 length])
          {
            v147 = [v146 UTF8String];
            if (v147)
            {
              v148 = PhRankingTreeFromStr(v147, &v304, 10.0);
              v107 = makeOrNode(v107, v148);
              continue;
            }

            v149 = *__error();
            v152 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
            {
              v153 = [v145 unsignedIntValue];
              *v306 = 134218240;
              v307 = a5;
              v308 = 1024;
              LODWORD(v309) = v153;
              _os_log_impl(&dword_1C278D000, v152, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping time parse: %u (ERROR: UTF8 encoding failed)", v306, 0x12u);
            }
          }

          else
          {
            v149 = *__error();
            v150 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
            {
              v151 = [v145 unsignedIntValue];
              *v306 = 134218240;
              v307 = a5;
              v308 = 1024;
              LODWORD(v309) = v151;
              _os_log_impl(&dword_1C278D000, v150, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping time parse: %u (ERROR: its zero length)", v306, 0x12u);
            }
          }

          *__error() = v149;
        }

        v142 = [obj countByEnumeratingWithState:&v300 objects:buf count:16];
      }

      while (v142);
    }

    if ([v272 count] && (objc_msgSend(v272, "count") != 1 || v274 & 1 | (objc_msgSend(obj, "count") != 0)))
    {
      obja = v107 == 0;
      {
        PhSpanMatchRankingAttribs(void)::_phSpanMatchAttribs = 0u;
        *&qword_1EBF48430 = 0u;
        dword_1EBF48440 = 1065353216;
      }

      if (PhSpanMatchRankingAttribs(void)::onceToken != -1)
      {
        dispatch_once(&PhSpanMatchRankingAttribs(void)::onceToken, &__block_literal_global_117_16702);
      }

      if ([v272 count])
      {
        for (k = 0; k < [v272 count]; ++k)
        {
          v155 = [objc_msgSend(v272 objectAtIndexedSubscript:{k), "rangeValue"}];
          v157 = v155;
          v158 = v156;
          if (v155 == 0x7FFFFFFFFFFFFFFFLL || v155 + v156 > rangea)
          {
            v164 = *__error();
            v165 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
            {
              v329.location = v157;
              v329.length = v158;
              v166 = NSStringFromRange(v329);
              *v306 = 134218498;
              v307 = a5;
              v308 = 2048;
              v309 = k;
              v310 = 2112;
              *v311 = v166;
              _os_log_impl(&dword_1C278D000, v165, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping span: %lu, range: %@ (ERROR: range is out of bounds)", v306, 0x20u);
            }
          }

          else
          {
            v159 = [range1a substringWithRange:{v155, v156}];
            if ([v159 length])
            {
              v159 = [v159 stringByTrimmingCharactersInSet:a4];
            }

            if ([v159 length])
            {
              v160 = [v159 UTF8String];
              if (v160)
              {
                v291 = [objc_msgSend(v265 objectAtIndexedSubscript:{k), "intValue"}];
                [objc_msgSend(v264 objectAtIndexedSubscript:{k), "floatValue"}];
                v162 = v161;
                v163 = v161 >= 0.7 && std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(PhSpanMatchRankingAttribs(void)::_phSpanMatchAttribs, *(&PhSpanMatchRankingAttribs(void)::_phSpanMatchAttribs + 1), v291) != 0;
                v171 = *__error();
                v172 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                {
                  v332.location = v157;
                  v332.length = v158;
                  v173 = NSStringFromRange(v332);
                  *v306 = 134219266;
                  v307 = a5;
                  v308 = 2048;
                  v309 = k;
                  v310 = 1024;
                  *v311 = v291;
                  *&v311[4] = 2048;
                  *&v311[6] = v162;
                  v312 = 1024;
                  v313 = v163;
                  v314 = 2112;
                  v315 = v173;
                  _os_log_impl(&dword_1C278D000, v172, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Adding span: %lu, type: %d, conf: %f, highConfMode: %d range:%@", v306, 0x36u);
                }

                *__error() = v171;
                if ([a6 isEqualToString:@"en"] && objc_msgSend(v159, "length") >= 3 && objc_msgSend(v159, "hasSuffix:", @"’s") && (v174 = objc_msgSend(v159, "substringToIndex:", objc_msgSend(v159, "length") - 2)) != 0)
                {
                  v175 = [v174 UTF8String];
                }

                else
                {
                  v175 = 0;
                }

                if (v163)
                {
                  v176 = qword_1EBF48430;
                  if (qword_1EBF48430)
                  {
                    v177 = 0;
                    if (obja)
                    {
                      v178 = 10.0;
                    }

                    else
                    {
                      v178 = 0.0;
                    }

                    do
                    {
                      if (v291 == *(v176 + 16))
                      {
                        v180 = *(v176 + 32);
                        v179 = *(v176 + 40);
                        while (v180 != v179)
                        {
                          v181 = v180;
                          if (*(v180 + 23) < 0)
                          {
                            v181 = *v180;
                          }

                          v182 = v178 + *(v176 + 24);
                          v183 = createQueryNode(v181, v160, 48, 1, 0, v182, 0.0);
                          v177 = makeOrNode(v177, v183);
                          v184 = v304++;
                          if (v175)
                          {
                            v185 = createQueryNode(v181, v175, 48, 1, 0, v182, 0.0);
                            v177 = makeOrNode(v177, v185);
                            v304 = v184 + 2;
                          }

                          v180 += 24;
                        }
                      }

                      v176 = *v176;
                    }

                    while (v176);
                    goto LABEL_242;
                  }
                }

                else
                {
                  PhExactMatchRankingAttribs();
                  v186 = qword_1EC058F98;
                  if (qword_1EC058F98)
                  {
                    v177 = 0;
                    if (obja)
                    {
                      v187 = 10.0;
                    }

                    else
                    {
                      v187 = 0.0;
                    }

                    do
                    {
                      v188 = (v186 + 16);
                      if (*(v186 + 39) < 0)
                      {
                        v188 = *v188;
                      }

                      v189 = v187 + *(v186 + 40);
                      v190 = createQueryNode(v188, v160, 48, 1, 0, v189, 0.0);
                      v177 = makeOrNode(v177, v190);
                      v191 = v304++;
                      if (v175)
                      {
                        v192 = createQueryNode(v188, v175, 48, 1, 0, v189, 0.0);
                        v177 = makeOrNode(v177, v192);
                        v304 = v191 + 2;
                      }

                      v186 = *v186;
                    }

                    while (v186);
                    goto LABEL_242;
                  }
                }

                v177 = 0;
LABEL_242:
                obja &= v177 == 0;
                v107 = makeAndNode(v107, v177);
                continue;
              }

              v164 = *__error();
              v169 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
              {
                v331.location = v157;
                v331.length = v158;
                v170 = NSStringFromRange(v331);
                *v306 = 134218498;
                v307 = a5;
                v308 = 2048;
                v309 = k;
                v310 = 2112;
                *v311 = v170;
                _os_log_impl(&dword_1C278D000, v169, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping span: %lu, range: %@ (ERROR: UTF8 encoding failed)", v306, 0x20u);
              }
            }

            else
            {
              v164 = *__error();
              v167 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
              {
                v330.location = v157;
                v330.length = v158;
                v168 = NSStringFromRange(v330);
                *v306 = 134218498;
                v307 = a5;
                v308 = 2048;
                v309 = k;
                v310 = 2112;
                *v311 = v168;
                _os_log_impl(&dword_1C278D000, v167, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping span: %lu, range: %@ (Reason: empty sub-query after trimming)", v306, 0x20u);
              }
            }
          }

          *__error() = v164;
        }
      }

      v138 = *__error();
      v195 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
      {
LABEL_248:
        *v306 = 134218240;
        v307 = a5;
        v308 = 1024;
        LODWORD(v309) = v304;
        _os_log_impl(&dword_1C278D000, v195, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Added %d nodes", v306, 0x12u);
      }
    }

    else
    {
      v193 = *__error();
      v194 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
      {
        *v306 = 134217984;
        v307 = a5;
        _os_log_impl(&dword_1C278D000, v194, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping rest of span match nodes (Reason: exact match nodes should be sufficient)", v306, 0xCu);
      }

      *__error() = v193;
      v138 = *__error();
      v195 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_248;
      }
    }

    v140 = __error();
LABEL_250:
    *v140 = v138;
  }

  else
  {
    v133 = *__error();
    v134 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
    {
      v135 = [v272 count];
      v136 = [v265 count];
      v137 = [v264 count];
      *buf = 134218752;
      *&buf[4] = a5;
      *&buf[12] = 2048;
      *&buf[14] = v135;
      *&buf[22] = 2048;
      *v317 = v136;
      *&v317[8] = 2048;
      *&v317[10] = v137;
      _os_log_impl(&dword_1C278D000, v134, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Span Match} Skipping query (ERROR: span count mismatch <#range=%lu, #types=%lu, #confidence=%lu>)", buf, 0x2Au);
    }

    v107 = 0;
    *__error() = v133;
  }

  if (![range1a length])
  {
    v241 = *__error();
    v242 = _SILogForLogForCategory(20);
    if (!os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_333;
    }

    *buf = 134217984;
    *&buf[4] = a5;
    v243 = "[qid=%llu] {Prefix Match} Skipping query (Reason: empty query)";
LABEL_329:
    v244 = v242;
    v245 = 12;
LABEL_332:
    _os_log_impl(&dword_1C278D000, v244, OS_LOG_TYPE_DEFAULT, v243, buf, v245);
    goto LABEL_333;
  }

  if (![v273 count])
  {
    v241 = *__error();
    v242 = _SILogForLogForCategory(20);
    if (!os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_333;
    }

    *buf = 134217984;
    *&buf[4] = a5;
    v243 = "[qid=%llu] {Prefix Match} Skipping query (Reason: no useful tokens)";
    goto LABEL_329;
  }

  v196 = [v273 count];
  if (v196 != [v266 count])
  {
    v241 = *__error();
    v246 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
    {
      v247 = [v273 count];
      v248 = [v266 count];
      *buf = 134218496;
      *&buf[4] = a5;
      *&buf[12] = 2048;
      *&buf[14] = v247;
      *&buf[22] = 2048;
      *v317 = v248;
      v243 = "[qid=%llu] {Prefix Match} Skipping query (ERROR: token count mismatch <%lu,%lu>)";
      v244 = v246;
      v245 = 32;
      goto LABEL_332;
    }

LABEL_333:
    objb = 0;
    goto LABEL_334;
  }

  {
    PhPrefixMatchRankingAttribs(void)::_phPrefixMatchAttribs = 0u;
    unk_1EBF482C8 = 0u;
    dword_1EBF482D8 = 1065353216;
  }

  if (PhPrefixMatchRankingAttribs(void)::onceToken[0] != -1)
  {
    dispatch_once(PhPrefixMatchRankingAttribs(void)::onceToken, &__block_literal_global_121);
  }

  v292 = [range1a length];
  if ([v273 count])
  {
    objb = 0;
    v197 = 0;
    v198 = 0;
    while (1)
    {
      v199 = [objc_msgSend(v273 objectAtIndexedSubscript:{v198), "rangeValue"}];
      v201 = v199;
      v202 = v200;
      if (v199 == 0x7FFFFFFFFFFFFFFFLL || v199 + v200 > v292)
      {
        v208 = *__error();
        v209 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
        {
          v333.location = v201;
          v333.length = v202;
          v210 = NSStringFromRange(v333);
          *buf = 134218498;
          *&buf[4] = a5;
          *&buf[12] = 2048;
          *&buf[14] = v198;
          *&buf[22] = 2112;
          *v317 = v210;
          _os_log_impl(&dword_1C278D000, v209, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Prefix Match} Skipping token: %lu, range: :%@ (ERROR: range is out of bounds)", buf, 0x20u);
        }
      }

      else
      {
        v203 = [range1a substringWithRange:{v199, v200}];
        if ([v203 length])
        {
          v203 = [v203 stringByTrimmingCharactersInSet:a4];
        }

        if ([v203 length])
        {
          v204 = [v203 UTF8String];
          if (v204)
          {
            v205 = [objc_msgSend(v266 objectAtIndexedSubscript:{v198), "intValue"}];
            if (std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(PhPrefixMatchRankingAttribs(void)::_phPrefixMatchAttribs, *(&PhPrefixMatchRankingAttribs(void)::_phPrefixMatchAttribs + 1), v205))
            {
              v206 = [v273 count];
              if (v263)
              {
                v207 = 0;
LABEL_285:
                v219 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(PhPrefixMatchRankingAttribs(void)::_phPrefixMatchAttribs, *(&PhPrefixMatchRankingAttribs(void)::_phPrefixMatchAttribs + 1), v205);
                if (!v219)
                {
LABEL_344:
                  abort();
                }
              }

              else
              {
                v207 = v198 == v206 - 1;
                if ([v273 count] != 1 || !v207)
                {
                  goto LABEL_285;
                }

                v218 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(PhPrefixMatchRankingAttribs(void)::_phPrefixMatchAttribs, *(&PhPrefixMatchRankingAttribs(void)::_phPrefixMatchAttribs + 1), -1);
                if (!v218)
                {
                  goto LABEL_344;
                }

                v219 = v218;
                v207 = 1;
              }

              v220 = *(v219 + 6);
              if (v220 > 0.0)
              {
                if ([a6 isEqualToString:@"en"] && objc_msgSend(v203, "length") >= 3 && objc_msgSend(v203, "hasSuffix:", @"’s") && (v221 = objc_msgSend(v203, "substringToIndex:", objc_msgSend(v203, "length") - 2)) != 0)
                {
                  v222 = [v221 UTF8String];
                }

                else
                {
                  v222 = 0;
                }

                v279 = *__error();
                loga = _SILogForLogForCategory(20);
                v225 = os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT);
                if (v207)
                {
                  if (v225)
                  {
                    v338.location = v201;
                    v338.length = v202;
                    v226 = NSStringFromRange(v338);
                    *buf = 134218754;
                    *&buf[4] = a5;
                    *&buf[12] = 2048;
                    *&buf[14] = v198;
                    *&buf[22] = 2112;
                    *v317 = v226;
                    *&v317[8] = 1024;
                    *&v317[10] = v205;
                    _os_log_impl(&dword_1C278D000, loga, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Prefix Match} Adding token: %lu, range:%@, type: %d, prefix: YES", buf, 0x26u);
                  }

                  *__error() = v279;
                  v228 = v219[4];
                  v227 = v219[5];
                  if (v228 != v227)
                  {
                    v229 = 0;
                    do
                    {
                      v230 = v228;
                      if (*(v228 + 23) < 0)
                      {
                        v230 = *v228;
                      }

                      v231 = createQueryNode(v230, v204, 112, 1, -1, v220, 0.0);
                      v229 = makeOrNode(v229, v231);
                      if (v222)
                      {
                        v232 = v228;
                        if (*(v228 + 23) < 0)
                        {
                          v232 = *v228;
                        }

                        v233 = createQueryNode(v232, v222, 112, 1, -1, v220, 0.0);
                        v229 = makeOrNode(v229, v233);
                        v197 += 2;
                      }

                      else
                      {
                        ++v197;
                      }

                      v228 += 24;
                    }

                    while (v228 != v227);
                    goto LABEL_324;
                  }
                }

                else
                {
                  if (v225)
                  {
                    v339.location = v201;
                    v339.length = v202;
                    v234 = NSStringFromRange(v339);
                    *buf = 134218754;
                    *&buf[4] = a5;
                    *&buf[12] = 2048;
                    *&buf[14] = v198;
                    *&buf[22] = 2112;
                    *v317 = v234;
                    *&v317[8] = 1024;
                    *&v317[10] = v205;
                    _os_log_impl(&dword_1C278D000, loga, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Prefix Match} Adding token: %lu, range:%@, type: %d, prefix: NO", buf, 0x26u);
                  }

                  *__error() = v279;
                  v236 = v219[4];
                  v235 = v219[5];
                  if (v236 != v235)
                  {
                    v229 = 0;
                    do
                    {
                      v237 = v236;
                      if (*(v236 + 23) < 0)
                      {
                        v237 = *v236;
                      }

                      v238 = createQueryNode(v237, v204, 112, 1, 0, v220, 0.0);
                      v229 = makeOrNode(v229, v238);
                      if (v222)
                      {
                        v239 = v236;
                        if (*(v236 + 23) < 0)
                        {
                          v239 = *v236;
                        }

                        v240 = createQueryNode(v239, v222, 112, 1, 0, v220, 0.0);
                        v229 = makeOrNode(v229, v240);
                        v197 += 2;
                      }

                      else
                      {
                        ++v197;
                      }

                      v236 += 24;
                    }

                    while (v236 != v235);
                    goto LABEL_324;
                  }
                }

                v229 = 0;
LABEL_324:
                objb = makeAndNode(objb, v229);
                goto LABEL_277;
              }

              v215 = *__error();
              v223 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
              {
                v337.location = v201;
                v337.length = v202;
                v224 = NSStringFromRange(v337);
                *buf = 134218754;
                *&buf[4] = a5;
                *&buf[12] = 2048;
                *&buf[14] = v198;
                *&buf[22] = 2112;
                *v317 = v224;
                *&v317[8] = 1024;
                *&v317[10] = v205;
                _os_log_impl(&dword_1C278D000, v223, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Prefix Match} Skipping token: %lu, range:%@ (ERROR: attribute score is 0 for type: %d)", buf, 0x26u);
              }
            }

            else
            {
              v215 = *__error();
              v216 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
              {
                v336.location = v201;
                v336.length = v202;
                v217 = NSStringFromRange(v336);
                *buf = 134218754;
                *&buf[4] = a5;
                *&buf[12] = 2048;
                *&buf[14] = v198;
                *&buf[22] = 2112;
                *v317 = v217;
                *&v317[8] = 1024;
                *&v317[10] = v205;
                _os_log_impl(&dword_1C278D000, v216, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Prefix Match} Skipping token: %lu, range:%@ (Reason: not an important attribute type: %d)", buf, 0x26u);
              }
            }

            *__error() = v215;
            goto LABEL_277;
          }

          v208 = *__error();
          v213 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
          {
            v335.location = v201;
            v335.length = v202;
            v214 = NSStringFromRange(v335);
            *buf = 134218498;
            *&buf[4] = a5;
            *&buf[12] = 2048;
            *&buf[14] = v198;
            *&buf[22] = 2112;
            *v317 = v214;
            _os_log_impl(&dword_1C278D000, v213, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Prefix Match} Skipping token: %lu, range: %@ (ERROR: UTF8 encoding failed)", buf, 0x20u);
          }
        }

        else
        {
          v208 = *__error();
          v211 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
          {
            v334.location = v201;
            v334.length = v202;
            v212 = NSStringFromRange(v334);
            *buf = 134218498;
            *&buf[4] = a5;
            *&buf[12] = 2048;
            *&buf[14] = v198;
            *&buf[22] = 2112;
            *v317 = v212;
            _os_log_impl(&dword_1C278D000, v211, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Prefix Match} Skipping token: %lu, range: %@ (ERROR: empty sub-query after trimming)", buf, 0x20u);
          }
        }
      }

      *__error() = v208;
LABEL_277:
      if (++v198 >= [v273 count])
      {
        goto LABEL_342;
      }
    }
  }

  v197 = 0;
  objb = 0;
LABEL_342:
  v241 = *__error();
  v257 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a5;
    *&buf[12] = 1024;
    *&buf[14] = v197;
    _os_log_impl(&dword_1C278D000, v257, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Prefix Match} Added %d nodes", buf, 0x12u);
  }

LABEL_334:
  *__error() = v241;
  v249 = makeOrNode(matched, v107);
  if (a2)
  {
    v250 = *__error();
    v251 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a5;
      *&buf[12] = 2048;
      *&buf[14] = 0x4024000000000000;
      _os_log_impl(&dword_1C278D000, v251, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Assigning weight: %f to metadata filter", buf, 0x16u);
    }

    *__error() = v250;
    v293[0] = MEMORY[0x1E69E9820];
    v293[1] = 3221225472;
    v293[2] = ___ZL24PhRankingTreeFromU2ParsePK14__CFDictionaryP10query_nodeP7NSArrayIP7NSValueEP14NSCharacterSetyP8NSString_block_invoke;
    v293[3] = &__block_descriptor_36_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
    v294 = 1092616192;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    *v317 = &unk_1E8198ED0;
    *&v317[8] = v293;
    db_query_tree_apply_block_with_meta(a2, buf, 0);
    v249 = makeAndNode(v249, a2);
  }

  v252 = makeOrNode(v249, objb);
  if (v252)
  {
    v253 = v252;
    v254 = PhRankingBoostTree();
    v252 = makeAndNode(v253, v254);
  }

  result = makeOrNode(v252, v295);
  v256 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL28PhPopulateAllFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES9_S9_S9__block_invoke_16375(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (result)
  {
    if ([a2 objectForKeyedSubscript:@"kQPFavoritedAction"])
    {
      v9 = 32;
    }

    else if ([a2 objectForKeyedSubscript:@"kQPMedia"] || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPKind"))
    {
      v9 = 40;
    }

    else if ([a2 objectForKeyedSubscript:@"kQPTaggedPerson"] || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPGroundedPerson"))
    {
      v9 = 48;
    }

    else
    {
      result = [a2 objectForKeyedSubscript:@"kQPDate"];
      if (!result)
      {
        return result;
      }

      result = [a2 objectForKeyedSubscript:@"kQPDescription"];
      if (!result)
      {
        return result;
      }

      [*(a1 + 56) addObject:{objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"}];
      v9 = 64;
    }

    v10 = *(a1 + v9);
    v11 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];

    return [v10 addObject:v11];
  }

  return result;
}

query_node *PhExactMatchTree(void *a1, void *a2, uint64_t a3, uint64_t a4, query_node **a5, uint64_t a6, void *a7)
{
  v13 = a1;
  v51 = *MEMORY[0x1E69E9840];
  if (![a1 length])
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a6;
      v25 = "[qid=%llu] {Exact Match} Skipping query (Reason: empty query)";
      goto LABEL_27;
    }

LABEL_28:
    v26 = 0;
    goto LABEL_29;
  }

  v41 = a5;
  if ([a2 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v14 = [a2 reverseObjectEnumerator];
    v15 = [v14 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v15)
    {
      v16 = *v43;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = [*(*(&v42 + 1) + 8 * i) rangeValue];
          v13 = [v13 stringByReplacingCharactersInRange:v18 withString:{v19, &stru_1F4284FD0}];
        }

        v15 = [v14 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v15);
    }

    if (![v13 length])
    {
      v23 = *__error();
      v24 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = a6;
        v25 = "[qid=%llu] {Exact Match} Skipping query (Reason: empty query after suggestion filtering)";
        goto LABEL_27;
      }

      goto LABEL_28;
    }
  }

  if ([v13 length])
  {
    v13 = [v13 stringByTrimmingCharactersInSet:a3];
  }

  if (![v13 length])
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a6;
      v25 = "[qid=%llu] {Exact Match} Skipping query (Reason: empty query after removing special chars)";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v20 = [v13 UTF8String];
  if (!v20)
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a6;
      v25 = "[qid=%llu] {Exact Match} Skipping query (ERROR: UTF8 encoding of trimmed query failed)";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  std::string::basic_string[abi:nn200100]<0>(buf, v20);
  v21 = isOptionalWord(buf);
  v22 = v21;
  if (v49 < 0)
  {
    operator delete(*buf);
    if (v22)
    {
LABEL_17:
      v23 = *__error();
      v24 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = a6;
        v25 = "[qid=%llu] {Exact Match} Skipping query (Reason: query is optional word)";
LABEL_27:
        _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else if (v21)
  {
    goto LABEL_17;
  }

  if ([a7 isEqualToString:@"en"] && objc_msgSend(v13, "length") >= 3 && objc_msgSend(v13, "hasSuffix:", @"’s") && (v29 = objc_msgSend(v13, "substringToIndex:", objc_msgSend(v13, "length") - 2)) != 0)
  {
    v30 = [v29 UTF8String];
  }

  else
  {
    v30 = 0;
  }

  PhExactMatchRankingAttribs();
  v31 = qword_1EC058F98;
  if (qword_1EC058F98)
  {
    v26 = 0;
    v32 = 0;
    do
    {
      v33 = (v31 + 16);
      if (*(v31 + 39) < 0)
      {
        v33 = *v33;
      }

      v34 = *(v31 + 40) + 100.0;
      QueryNode = createQueryNode(v33, v20, 48, 1, 0, v34, 0.0);
      v26 = makeOrNode(v26, QueryNode);
      if (v30)
      {
        v36 = createQueryNode(v33, v30, 48, 1, 0, v34, 0.0);
        v26 = makeOrNode(v26, v36);
        v32 += 2;
      }

      else
      {
        ++v32;
      }

      v31 = *v31;
    }

    while (v31);
  }

  else
  {
    v32 = 0;
    v26 = 0;
  }

  if (a4 == 1)
  {
    v37 = createQueryNode("kMDItemTextContent", v20, 112, 1, 0, 100.0, 0.0);
    *v41 = v37;
    if (v30)
    {
      v38 = v37;
      v39 = createQueryNode("kMDItemTextContent", v30, 112, 1, 0, 100.0, 0.0);
      *v41 = makeOrNode(v38, v39);
    }

    v32 += 2;
  }

  v23 = *__error();
  v40 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a6;
    v47 = 1024;
    v48 = v32;
    _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {Exact Match} Added %d nodes", buf, 0x12u);
  }

LABEL_29:
  *__error() = v23;
  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

void *PhRankingTreeFromStr(char *a1, _DWORD *a2, float a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  query_node_with_ann = db_make_query_node_with_ann(a1, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL20PhRankingTreeFromStrPKcfPi_block_invoke_16644;
  v7[3] = &unk_1E8199740;
  v8 = a3;
  v7[4] = &v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __db_query_tree_apply_block_block_invoke;
  v13[3] = &unk_1E8198ED0;
  v13[4] = v7;
  db_query_tree_apply_block_with_meta(query_node_with_ann, v13, 0);
  *a2 += *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return query_node_with_ann;
}

uint64_t ___ZL24PhRankingTreeFromQPParsePK10__CFStringP10query_nodeP18NSAttributedStringP7NSArrayIP7NSValueEP14NSCharacterSetyP8NSString_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 52) = *(a1 + 32);
    }
  }

  return a2;
}

query_node *PhRankingBoostTree()
{
  QueryNode = createQueryNode("kMDItemPhotosFavorited", "1", 0, 4, 0, 1.13, 1.0);
  if (CurrentYear(void)::onceToken != -1)
  {
    dispatch_once(&CurrentYear(void)::onceToken, &__block_literal_global_149);
  }

  v1 = createQueryNode("_kMDItemContentCreationDateYear", CurrentYear(void)::currYear, 0, 4, 0, 1.1, 1.0);
  if (PhThreeYearAgo(void)::onceToken != -1)
  {
    dispatch_once(&PhThreeYearAgo(void)::onceToken, &__block_literal_global_154);
  }

  v2 = createQueryNode("_kMDItemContentCreationDateYear", PhThreeYearAgo(void)::oldYear, 0, 4, 0, 1.05, 1.0);
  v3 = makeOrNode(v1, v2);
  v4 = createQueryNode("kMDItemAestheticScore", "0.5", 0, 4, 0, 1.05, 1.0);
  v5 = createQueryNode("kMDItemAestheticScore", "0.2", 0, 4, 0, 1.02, 1.0);
  v6 = makeOrNode(v4, v5);
  v7 = createQueryNode("kMDItemCurationScore", "0.7", 0, 4, 0, 1.07, 1.0);
  v8 = createQueryNode("kMDItemCurationScore", "0.4", 0, 4, 0, 1.04, 1.0);
  v9 = makeOrNode(v7, v8);
  v10 = createQueryNode("kMDItemContentRating", "0", 0, 4, 0, 1.01, 1.0);
  v11 = makeAndNode(QueryNode, v3);
  v12 = makeAndNode(v6, v9);
  v13 = makeAndNode(v11, v12);

  return makeAndNode(v10, v13);
}

void PhPopulateNodesFromU2Parse(const __CFDictionary *a1, void *a2, void *a3, char a4, query_node **a5, query_node **a6, void *a7, uint64_t a8, void *a9)
{
  v264 = *MEMORY[0x1E69E9840];
  v11 = *__error();
  v12 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a8;
    _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Using U2 output for creating ann filter and unigram node", buf, 0xCu);
  }

  *__error() = v11;
  v13 = getkQPQUOutputTokenInfoKey();
  theArray = CFDictionaryGetValue(a1, v13);
  Value = CFDictionaryGetValue(a1, @"attributedParse");
  v248 = [Value string];
  if (!v248 || ![v248 length])
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a8;
      _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Skipping adding nodes for the query (Reason: query is empty)", buf, 0xCu);
    }

    *__error() = v16;
    goto LABEL_303;
  }

  v15 = [a9 lowercaseString];
  if ([v15 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v15, "hasPrefix:", @"zh"))
  {
    v231 = 1;
  }

  else
  {
    v231 = [v15 hasPrefix:@"yue"];
  }

  v235 = [MEMORY[0x1E695DF70] array];
  v230 = [MEMORY[0x1E695DF70] array];
  v234 = [MEMORY[0x1E695DF70] array];
  v238 = [MEMORY[0x1E695DF70] array];
  v18 = [Value length];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL30PhPopulateSomeFiltersFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES5_S9__block_invoke_16482;
  *&buf[24] = &unk_1E8199790;
  *&buf[32] = v235;
  *&buf[40] = v230;
  *&buf[48] = v234;
  *v263 = v238;
  [Value enumerateAttributesInRange:0 options:v18 usingBlock:{0, buf}];
  if ([v230 count])
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v230 count];
      *buf = 134218240;
      *&buf[4] = a8;
      *&buf[12] = 2048;
      *&buf[14] = v21;
      _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Populated %lu date filters from U2 parse", buf, 0x16u);
    }

    *__error() = v19;
  }

  if ([v238 count])
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v238 count];
      *buf = 134218240;
      *&buf[4] = a8;
      *&buf[12] = 2048;
      *&buf[14] = v24;
      _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Populated %lu people filters from U2 parse", buf, 0x16u);
    }

    *__error() = v22;
  }

  if (![v235 count])
  {
    if (CFDictionaryContainsKey(a1, @"attributedParses"))
    {
      v128 = CFDictionaryGetValue(a1, @"attributedParses");
      if ([v128 count] >= 2)
      {
        v129 = [v128 objectAtIndexedSubscript:1];
        v130 = [v129 length];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke_16485;
        *&buf[24] = &unk_1E8199718;
        *&buf[32] = v235;
        *&buf[40] = v230;
        [v129 enumerateAttributesInRange:0 options:v130 usingBlock:{0, buf}];
        if ([v230 count])
        {
          v131 = *__error();
          v132 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            v133 = [v230 count];
            *buf = 134218240;
            *&buf[4] = a8;
            *&buf[12] = 2048;
            *&buf[14] = v133;
            _os_log_impl(&dword_1C278D000, v132, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Populated %lu date filters from QP parse", buf, 0x16u);
          }

          *__error() = v131;
        }
      }
    }
  }

  PhRetrievalAttribs();
  v25 = *MEMORY[0x1E695E480];
  theSet = CFCharacterSetCreateWithCharactersInString(v25, @"0123456789");
  v255 = 0;
  v256 = 0uLL;
  v26 = [&unk_1F428F490 objectForKey:a9];
  if (!v26)
  {
    v26 = [&unk_1F428F490 objectForKey:@"en"];
  }

  v27 = [&unk_1F428F4B8 objectForKey:a9];
  if (!v27)
  {
    v27 = [&unk_1F428F4B8 objectForKey:@"en"];
  }

  Count = CFArrayGetCount(theArray);
  v29 = Count;
  if (Count <= 0)
  {
    v243 = 1;
    v125 = v255;
    goto LABEL_180;
  }

  v223 = v26;
  v224 = 0;
  v30 = 0;
  v226 = Count - 1;
  v239 = -1;
  v243 = 1;
  v227 = Count;
  v228 = a2;
  v222 = v27;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v30);
    v32 = getkQPQUOutputTokenRangeKey();
    if (!CFDictionaryContainsKey(ValueAtIndex, v32) || (v33 = getkQPQUOutputTokenArgIdsKey(), !CFDictionaryContainsKey(ValueAtIndex, v33)) || (v34 = getkQPQUOutputTokenArgScoresKey(), !CFDictionaryContainsKey(ValueAtIndex, v34)) || (v35 = getkQPQUOutputTokenKey(), !CFDictionaryContainsKey(ValueAtIndex, v35)))
    {
      v40 = *__error();
      v43 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = a8;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu skipped (ERROR: token info is missing essential keys)", buf, 0x16u);
      }

      goto LABEL_37;
    }

    v36 = getkQPQUOutputTokenRangeKey();
    v37 = [CFDictionaryGetValue(ValueAtIndex v36)];
    v39 = v38;
    if (v37 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v40 = *__error();
      v41 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v265.location = 0x7FFFFFFFFFFFFFFFLL;
        v265.length = v39;
        v42 = NSStringFromRange(v265);
        *buf = 134218498;
        *&buf[4] = a8;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        *&buf[22] = 2112;
        *&buf[24] = v42;
        _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu skipped (ERROR: invalid range: %@)", buf, 0x20u);
      }

LABEL_37:
      *__error() = v40;
      goto LABEL_38;
    }

    if ([a2 count])
    {
      v44 = 0;
      while (1)
      {
        v270.location = [objc_msgSend(a2 objectAtIndexedSubscript:{v44), "rangeValue"}];
        v270.length = v45;
        v266.location = v37;
        v266.length = v39;
        if (NSIntersectionRange(v266, v270).length)
        {
          break;
        }

        if (++v44 >= [a2 count])
        {
          goto LABEL_44;
        }
      }

      if ([a3 count])
      {
        v55 = 0;
        while (1)
        {
          v271.location = [objc_msgSend(a3 objectAtIndexedSubscript:{v55), "rangeValue"}];
          v271.length = v56;
          v267.location = v37;
          v267.length = v39;
          if (NSIntersectionRange(v267, v271).length)
          {
            break;
          }

          if (++v55 >= [a3 count])
          {
            goto LABEL_69;
          }
        }

        ++*a7;
      }

LABEL_69:
      v40 = *__error();
      v62 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = a8;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu skipped (Reason: Its a filter token)", buf, 0x16u);
      }

      goto LABEL_37;
    }

LABEL_44:
    v46 = getkQPQUOutputTokenKey();
    v47 = CFDictionaryGetValue(ValueAtIndex, v46);
    v254 = v47;
    if (!v47)
    {
      v40 = *__error();
      v61 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = a8;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu skipped (ERROR: Token is null)", buf, 0x16u);
      }

      goto LABEL_37;
    }

    v48 = 0;
    v49 = 1;
    v50 = 1;
    while (v48 < CFStringGetLength(v47))
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v47, v48);
      if (CFCharacterSetIsCharacterMember(theSet, CharacterAtIndex))
      {
        v49 = 0;
      }

      else
      {
        IsCharacterMember = CFCharacterSetIsCharacterMember(v232, CharacterAtIndex);
        v50 = 0;
        v53 = 0;
        v54 = 0;
        if (!IsCharacterMember)
        {
          goto LABEL_57;
        }
      }

      ++v48;
    }

    v53 = v49;
    v54 = v50;
LABEL_57:
    v244 = v54;
    if (v256 - v255 < 1 || (v57 = 0xCCCCCCCCCCCCCCCDLL * ((v256 - v255) >> 4) - 1, *(v255 + 80 * v57 + 8) != v37))
    {
      v58 = v230;
      v59 = v54;
      if (v53)
      {
        v29 = v227;
        a2 = v228;
        v40 = *__error();
        v60 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = a8;
          *&buf[12] = 2048;
          *&buf[14] = v30;
          _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu skipped (Reason: It has only special chars)", buf, 0x16u);
        }

        goto LABEL_37;
      }

      goto LABEL_76;
    }

    v58 = v230;
    v59 = v54;
    if ((v53 & 1) == 0)
    {
      if ((v54 | v224))
      {
        v63 = *__error();
        v64 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = a8;
          *&buf[12] = 2048;
          *&buf[14] = v30;
          _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Adjacent token %lu combined with prev-token", buf, 0x16u);
        }

        *__error() = v63;
        v65 = v255 + 80 * v57;
        *(v65 + 16) = 1;
        *(v65 + 8) += v39;
        v58 = v230;
LABEL_90:
        if ([v58 count])
        {
          v81 = 0;
          while (1)
          {
            v272.location = [objc_msgSend(v58 objectAtIndexedSubscript:{v81), "rangeValue"}];
            v272.length = v82;
            v268.location = v37;
            v268.length = v39;
            if (NSIntersectionRange(v268, v272).length)
            {
              break;
            }

            if (++v81 >= [v58 count])
            {
              goto LABEL_98;
            }
          }

          v83 = *__error();
          v84 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            *&buf[4] = a8;
            *&buf[12] = 2048;
            *&buf[14] = v30;
            *&buf[22] = 2048;
            *&buf[24] = v81;
            _os_log_impl(&dword_1C278D000, v84, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu has a date parse: %lu", buf, 0x20u);
          }

          *__error() = v83;
          *(v256 - 56) = v81;
        }

LABEL_98:
        if ([v238 count])
        {
          v85 = 0;
          while (1)
          {
            v273.location = [objc_msgSend(v238 objectAtIndexedSubscript:{v85), "rangeValue"}];
            v273.length = v86;
            v269.location = v37;
            v269.length = v39;
            if (NSIntersectionRange(v269, v273).length)
            {
              break;
            }

            if (++v85 >= [v238 count])
            {
              goto LABEL_106;
            }
          }

          v87 = *__error();
          v88 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            *&buf[4] = a8;
            *&buf[12] = 2048;
            *&buf[14] = v30;
            *&buf[22] = 2048;
            *&buf[24] = v85;
            _os_log_impl(&dword_1C278D000, v88, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu has a person parse: %lu", buf, 0x20u);
          }

          *__error() = v87;
          *(v256 - 48) = v85;
        }

LABEL_106:
        v243 &= v30 != v226;
        if (*(v256 - 64) == 1)
        {
          v89 = *__error();
          v90 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = a8;
            *&buf[12] = 2048;
            *&buf[14] = v30;
            _os_log_impl(&dword_1C278D000, v90, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu is concat token, skipping U2's predictions for it", buf, 0x16u);
          }

LABEL_143:
          *__error() = v89;
          goto LABEL_144;
        }

        v91 = getkQPQUOutputTokenArgIdsKey();
        v92 = CFDictionaryGetValue(ValueAtIndex, v91);
        v93 = getkQPQUOutputTokenArgScoresKey();
        v94 = CFDictionaryGetValue(ValueAtIndex, v93);
        if (![v92 count])
        {
          v89 = *__error();
          v106 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = a8;
            *&buf[12] = 2048;
            *&buf[14] = v30;
            _os_log_impl(&dword_1C278D000, v106, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu skipped (ERROR: No U2 parse for the token)", buf, 0x16u);
          }

          goto LABEL_143;
        }

        v95 = [v92 count];
        if (v95 != [v94 count])
        {
          v89 = *__error();
          v107 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = [v92 count];
            v109 = [v94 count];
            *buf = 134218752;
            *&buf[4] = a8;
            *&buf[12] = 2048;
            *&buf[14] = v30;
            *&buf[22] = 2048;
            *&buf[24] = v108;
            *&buf[32] = 2048;
            *&buf[34] = v109;
            _os_log_impl(&dword_1C278D000, v107, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu skipped (ERROR: tokIds.count(%lu) != tokIdsScore.count(%lu))", buf, 0x2Au);
          }

          goto LABEL_143;
        }

        for (i = 0; ; ++i)
        {
          if (i >= [v92 count] || (objc_msgSend(objc_msgSend(v94, "objectAtIndexedSubscript:", i), "doubleValue"), v98 = v97, v97 < 0.200000003))
          {
            utf8QueryString(buf, &v254, 1, 0);
            v110 = isRelationWord(buf);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v110)
            {
              v111 = *__error();
              v112 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                *&buf[4] = a8;
                *&buf[12] = 2048;
                *&buf[14] = v30;
                _os_log_impl(&dword_1C278D000, v112, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu is a relationship token as per vocab", buf, 0x16u);
              }

              *__error() = v111;
              std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>((v256 - 40), 2);
            }

            v113 = getkQPQUOutputSpanTypesKey();
            if (!CFDictionaryContainsKey(ValueAtIndex, v113) || (v114 = getkQPQUOutputSpanTypesKey(), v115 = CFDictionaryGetValue(ValueAtIndex, v114), v252 = 0u, v253 = 0u, v250 = 0u, v251 = 0u, (v116 = [v115 countByEnumeratingWithState:&v250 objects:v261 count:16]) == 0))
            {
LABEL_144:
              v224 = v59;
              goto LABEL_145;
            }

            v117 = *v251;
            while (2)
            {
              v118 = 0;
LABEL_156:
              if (*v251 != v117)
              {
                objc_enumerationMutation(v115);
              }

              v119 = *(*(&v250 + 1) + 8 * v118);
              LODWORD(v257) = -1;
              if ([v119 isEqualToString:@"Person"])
              {
                v120 = 2;
                goto LABEL_162;
              }

              if ([v119 isEqualToString:@"Location"])
              {
                v120 = 10;
LABEL_162:
                LODWORD(v257) = v120;
                v121 = *__error();
                v122 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218754;
                  *&buf[4] = a8;
                  *&buf[12] = 2048;
                  *&buf[14] = v30;
                  *&buf[22] = 1024;
                  *&buf[24] = v120;
                  *&buf[28] = 2112;
                  *&buf[30] = v119;
                  _os_log_impl(&dword_1C278D000, v122, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu added with tokID: %d (Reason: It has %@ span)", buf, 0x26u);
                }

                *__error() = v121;
                std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>((v256 - 40), v120);
                v59 = v244;
              }

              else
              {
                v123 = *__error();
                v124 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218498;
                  *&buf[4] = a8;
                  *&buf[12] = 2048;
                  *&buf[14] = v30;
                  *&buf[22] = 2112;
                  *&buf[24] = v119;
                  _os_log_impl(&dword_1C278D000, v124, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu has unsupported span: %@, skipping it", buf, 0x20u);
                }

                *__error() = v123;
              }

              if (v116 == ++v118)
              {
                v116 = [v115 countByEnumeratingWithState:&v250 objects:v261 count:16];
                if (!v116)
                {
                  goto LABEL_144;
                }

                continue;
              }

              goto LABEL_156;
            }
          }

          v99 = [objc_msgSend(v92 objectAtIndexedSubscript:{i), "intValue"}];
          v100 = v99;
          LODWORD(v257) = v99;
          if (v99 > 7)
          {
            break;
          }

          if (v99)
          {
            if (v99 == 1)
            {
              goto LABEL_136;
            }

            if (v99 == 2)
            {
              [v222 floatValue];
              if (v98 < v101)
              {
                continue;
              }

              v102 = *__error();
              v103 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218752;
                *&buf[4] = a8;
                *&buf[12] = 2048;
                *&buf[14] = v30;
                *&buf[22] = 1024;
                *&buf[24] = 2;
                *&buf[28] = 2048;
                *&buf[30] = v98;
                _os_log_impl(&dword_1C278D000, v103, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Person token %lu added with tokId: %d (Reason: It has high conf: %f)", buf, 0x26u);
              }

LABEL_135:
              *__error() = v102;
LABEL_136:
              std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>((v256 - 40), v100);
              continue;
            }

LABEL_126:
            if (((v99 - 3) < 2 || v99 == 36) && v239 == -1)
            {
              v239 = -1 - 0x3333333333333333 * ((v256 - v255) >> 4);
            }

            continue;
          }

          if (v98 >= 0.5)
          {
            goto LABEL_136;
          }

LABEL_137:
          ;
        }

        switch(v99)
        {
          case 8:
            goto LABEL_136;
          case 10:
            [v223 floatValue];
            if (v98 < v104)
            {
              goto LABEL_137;
            }

            v102 = *__error();
            v105 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218752;
              *&buf[4] = a8;
              *&buf[12] = 2048;
              *&buf[14] = v30;
              *&buf[22] = 1024;
              *&buf[24] = 10;
              *&buf[28] = 2048;
              *&buf[30] = v98;
              _os_log_impl(&dword_1C278D000, v105, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Location token %lu added with tokId: %d (Reason: It has high conf: %f)", buf, 0x26u);
            }

            goto LABEL_135;
          case 21:
            goto LABEL_136;
        }

        goto LABEL_126;
      }

LABEL_76:
      v66 = *__error();
      v67 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = a8;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Token %lu added as new token", buf, 0x16u);
      }

      *__error() = v66;
      *&v263[8] = 0u;
      *&buf[16] = 0;
      *&buf[24] = -1;
      *&buf[32] = -1;
      *&buf[40] = 0u;
      *v263 = 0u;
      *&v263[16] = 1065353216;
      *buf = v37;
      *&buf[8] = v37 + v39;
      v68 = v256;
      if (v256 >= *(&v256 + 1))
      {
        v72 = 0xCCCCCCCCCCCCCCCDLL * ((v256 - v255) >> 4);
        v73 = v72 + 1;
        if (v72 + 1 > 0x333333333333333)
        {
          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        if (0x999999999999999ALL * ((*(&v256 + 1) - v255) >> 4) > v73)
        {
          v73 = 0x999999999999999ALL * ((*(&v256 + 1) - v255) >> 4);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*(&v256 + 1) - v255) >> 4) >= 0x199999999999999)
        {
          v74 = 0x333333333333333;
        }

        else
        {
          v74 = v73;
        }

        v260 = &v255;
        if (v74)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<PhTokenInfo>>(v74);
        }

        v75 = 16 * ((v256 - v255) >> 4);
        v257 = 0;
        v258 = v75;
        v259 = v75;
        v76 = *buf;
        v77 = *&buf[16];
        *(v75 + 32) = *&buf[32];
        *v75 = v76;
        *(v75 + 16) = v77;
        std::unordered_set<int>::unordered_set(80 * v72 + 40, &buf[40]);
        *&v259 = v259 + 80;
        v78 = v258 + v255 - v256;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhTokenInfo>,PhTokenInfo*>(v255, v256, v78);
        v79 = v255;
        v80 = *(&v256 + 1);
        v255 = v78;
        v225 = v259;
        v256 = v259;
        *&v259 = v79;
        *(&v259 + 1) = v80;
        v257 = v79;
        v258 = v79;
        std::__split_buffer<PhTokenInfo>::~__split_buffer(&v257);
        v71 = v225;
      }

      else
      {
        v69 = *buf;
        v70 = *&buf[16];
        *(v256 + 32) = *&buf[32];
        *v68 = v69;
        v68[1] = v70;
        std::unordered_set<int>::unordered_set(v68 + 40, &buf[40]);
        v71 = v68 + 5;
      }

      *&v256 = v71;
      std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(&buf[40]);
      goto LABEL_90;
    }

    v243 &= v30 != v226;
LABEL_145:
    v29 = v227;
    a2 = v228;
LABEL_38:
    ++v30;
  }

  while (v30 != v29);
  v125 = v255;
  if (v239 == -1)
  {
LABEL_180:
    v126 = v256;
    v127 = 0xCCCCCCCCCCCCCCCDLL * ((v256 - v125) >> 4);
    v239 = v127;
    goto LABEL_181;
  }

  v126 = v256;
  v127 = 0xCCCCCCCCCCCCCCCDLL * ((v256 - v255) >> 4);
LABEL_181:
  *a7 += v127;
  if (v125 == v126)
  {
    goto LABEL_293;
  }

  theArraya = 0;
  v134 = (v125 + 40);
  v135 = -1;
  v237 = -1;
  v242 = v126;
  do
  {
    v136 = v134 - 5;
    v137 = [v248 substringWithRange:{*(v134 - 5), *(v134 - 4) - *(v134 - 5)}];
    v138 = [v137 UTF8String];
    v139 = v135 + 1;
    if (!v138)
    {
      v146 = *__error();
      v147 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = a8;
        *&buf[12] = 2048;
        *&buf[14] = v135 + 1;
        _os_log_impl(&dword_1C278D000, v147, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Search token %ld skipped (ERROR: UTF8 encoding of token failed)", buf, 0x16u);
      }

      *__error() = v146;
      goto LABEL_277;
    }

    v140 = -2 - 0x3333333333333333 * ((v256 - v255) >> 4);
    if ((v135 != v140) | v243 & 1)
    {
      if ((*(v134 - 3) & 1) == 0 && std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(v134, 0))
      {
LABEL_189:
        v144 = *__error();
        v145 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = a8;
          *&buf[12] = 2048;
          *&buf[14] = v135 + 1;
          _os_log_impl(&dword_1C278D000, v145, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Search token %ld skipped (Reason: It is optional)", buf, 0x16u);
        }

        *__error() = v144;
LABEL_192:
        --*a7;
        goto LABEL_277;
      }

      v141 = std::string::basic_string[abi:nn200100]<0>(buf, v138);
      v142 = isOptionalWord(v141);
      v143 = v142;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
        if (v143)
        {
          goto LABEL_189;
        }
      }

      else if (v142)
      {
        goto LABEL_189;
      }
    }

    v148 = PhAttribNodes(v138, v135 == v140, v139 >= v239);
    if ([a9 isEqualToString:@"en"] && objc_msgSend(v137, "length") >= 3 && objc_msgSend(v137, "hasSuffix:", @"’s") && (v149 = objc_msgSend(v137, "substringToIndex:", objc_msgSend(v137, "length") - 2)) != 0)
    {
      v150 = [v149 UTF8String];
      v151 = v150;
      if (v150)
      {
        v152 = PhAttribNodes(v150, v135 == v140, v139 >= v239);
        v148 = makeOrNode(v148, v152);
        v153 = *__error();
        v154 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = a8;
          *&buf[12] = 2048;
          *&buf[14] = v135 + 1;
          _os_log_impl(&dword_1C278D000, v154, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} Added apostrophe trimmed token %ld", buf, 0x16u);
        }

        *__error() = v153;
        v126 = v242;
      }
    }

    else
    {
      v151 = 0;
    }

    if (*(v134 - 1) != -1)
    {
      v155 = [v234 objectAtIndexedSubscript:?];
      if ([v155 length] && (v156 = objc_msgSend(v155, "UTF8String")) != 0)
      {
        query_node_with_ann = db_make_query_node_with_ann(v156, 0);
      }

      else
      {
        query_node_with_ann = 0;
      }

      v148 = makeOrNode(v148, query_node_with_ann);
    }

    if (std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(v134, 21))
    {
      QueryNode = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
      v148 = makeOrNode(v148, QueryNode);
    }

    if (!theArraya)
    {
      theArraya = 0;
      goto LABEL_231;
    }

    if (v237 < 0 || (v159 = *(v255 + 80 * v237 + 24), v159 == -1))
    {
      v163 = *__error();
      v164 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = a8;
        _os_log_impl(&dword_1C278D000, v164, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {U2} ERROR: Matching unexpected condition guard", buf, 0xCu);
      }

      v126 = v242;
      *__error() = v163;
LABEL_231:
      if (*(v134 - 2) != -1)
      {
        if (v135 != v140)
        {
          v237 = v135 + 1;
          theArraya = v148;
          goto LABEL_240;
        }

        v169 = [v235 objectAtIndexedSubscript:?];
        if ([v169 length] && (v170 = objc_msgSend(v169, "UTF8String")) != 0)
        {
          v171 = db_make_query_node_with_ann(v170, 0);
        }

        else
        {
          v171 = 0;
        }

        v148 = makeOrNode(v148, v171);
      }

      goto LABEL_239;
    }

    if (v159 != *(v134 - 2))
    {
      v165 = [v235 objectAtIndexedSubscript:?];
      if ([v165 length] && (v166 = objc_msgSend(v165, "UTF8String")) != 0)
      {
        v167 = db_make_query_node_with_ann(v166, 0);
      }

      else
      {
        v167 = 0;
      }

      v168 = makeOrNode(theArraya, v167);
      theArraya = 0;
      *a6 = makeAndNode(*a6, v168);
      goto LABEL_231;
    }

    theArraya = makeAndNode(theArraya, v148);
    if (v135 == v140)
    {
      v160 = [v235 objectAtIndexedSubscript:*(v134 - 2)];
      if ([v160 length] && (v161 = objc_msgSend(v160, "UTF8String")) != 0)
      {
        v162 = db_make_query_node_with_ann(v161, 0);
      }

      else
      {
        v162 = 0;
      }

      v148 = makeOrNode(theArraya, v162);
      theArraya = 0;
      v237 = v135 + 1;
LABEL_239:
      *a6 = makeAndNode(*a6, v148);
      goto LABEL_240;
    }

    v237 = v135 + 1;
LABEL_240:
    if ((a4 & 1) == 0 && v231 & 1 | ((*(v134 - 3) & 1) == 0))
    {
      if (*(v134 - 2) == -1)
      {
        goto LABEL_248;
      }

      v172 = *__error();
      v173 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = a8;
        *&buf[12] = 2048;
        *&buf[14] = v135 + 1;
        _os_log_impl(&dword_1C278D000, v173, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {ANN} Added date filter for token %lu", buf, 0x16u);
      }

      v126 = v242;
      *__error() = v172;
      v174 = [v235 objectAtIndexedSubscript:*(v134 - 2)];
      if ([v174 length] && (v175 = objc_msgSend(v174, "UTF8String")) != 0)
      {
        v176 = db_make_query_node_with_ann(v175, 0);
      }

      else
      {
LABEL_248:
        v176 = 0;
      }

      if (*(v134 - 1) != -1)
      {
        v177 = *__error();
        v178 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = a8;
          *&buf[12] = 2048;
          *&buf[14] = v135 + 1;
          _os_log_impl(&dword_1C278D000, v178, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {ANN} Added person identifier filter for token %lu", buf, 0x16u);
        }

        v126 = v242;
        *__error() = v177;
        v179 = [v234 objectAtIndexedSubscript:*(v134 - 1)];
        if ([v179 length] && (v180 = objc_msgSend(v179, "UTF8String")) != 0)
        {
          v181 = db_make_query_node_with_ann(v180, 0);
        }

        else
        {
          v181 = 0;
        }

        v182 = makeOrNode(v176, v181);
        v183 = createQueryNode("kMDItemPhotosPeopleNames", v138, 112, 1, 0, 0.0, 0.0);
        v184 = makeOrNode(v182, v183);
        v185 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", v138, 112, 1, 0, 0.0, 0.0);
        v176 = makeOrNode(v184, v185);
      }

      if (std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(v134, 8))
      {
        v186 = *__error();
        v187 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = a8;
          *&buf[12] = 2048;
          *&buf[14] = v135 + 1;
          _os_log_impl(&dword_1C278D000, v187, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {ANN} Added holiday/season filter for token %lu", buf, 0x16u);
        }

        *__error() = v186;
        v188 = createQueryNode("kMDItemPhotosHolidays", v138, 112, 1, 0, 0.0, 0.0);
        v189 = makeOrNode(v176, v188);
        v190 = createQueryNode("kMDItemPhotosSeasons", v138, 112, 1, 0, 0.0, 0.0);
        v176 = makeOrNode(v189, v190);
        v126 = v242;
      }

      if (std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(v134, 1))
      {
        v191 = *__error();
        v192 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = a8;
          *&buf[12] = 2048;
          *&buf[14] = v135 + 1;
          _os_log_impl(&dword_1C278D000, v192, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {ANN} Added media type filter for token %lu", buf, 0x16u);
        }

        *__error() = v191;
        v193 = createQueryNode("kMDItemPhotosMediaTypes", v138, 112, 1, 0, 0.0, 0.0);
        v176 = makeOrNode(v176, v193);
        v126 = v242;
      }

      if (std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(v134, 10))
      {
        v194 = *__error();
        v195 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = a8;
          *&buf[12] = 2048;
          *&buf[14] = v135 + 1;
          _os_log_impl(&dword_1C278D000, v195, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {ANN} Added location filter for token %lu", buf, 0x16u);
        }

        *__error() = v194;
        v196 = createQueryNode("kMDItemPhotosLocationKeywords", v138, 112, 1, 0, 0.0, 0.0);
        v176 = makeOrNode(v176, v196);
        v126 = v242;
        if (v151)
        {
          v197 = createQueryNode("kMDItemPhotosLocationKeywords", v151, 112, 1, 0, 0.0, 0.0);
          v176 = makeOrNode(v176, v197);
        }
      }

      if (std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(v134, 21))
      {
        v198 = *__error();
        v199 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = a8;
          *&buf[12] = 2048;
          *&buf[14] = v135 + 1;
          _os_log_impl(&dword_1C278D000, v199, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {ANN} Added favorited filter for token %lu", buf, 0x16u);
        }

        *__error() = v198;
        v200 = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
        v176 = makeOrNode(v176, v200);
        v126 = v242;
      }

      if (*(v134 - 1) == -1 && std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(v134, 2))
      {
        v201 = *__error();
        v202 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = a8;
          *&buf[12] = 2048;
          *&buf[14] = v135 + 1;
          _os_log_impl(&dword_1C278D000, v202, OS_LOG_TYPE_DEFAULT, "[qid=%llu] {ANN} Added person name/alternative filter for token %lu", buf, 0x16u);
        }

        *__error() = v201;
        v203 = createQueryNode("kMDItemPhotosPeopleNames", v138, 112, 1, 0, 0.0, 0.0);
        v204 = makeOrNode(v176, v203);
        v205 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", v138, 112, 1, 0, 0.0, 0.0);
        v176 = makeOrNode(v204, v205);
        v126 = v242;
        if (v151)
        {
          v206 = createQueryNode("kMDItemPhotosPeopleNames", v151, 112, 1, 0, 0.0, 0.0);
          v207 = makeOrNode(v176, v206);
          v208 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", v151, 112, 1, 0, 0.0, 0.0);
          v176 = makeOrNode(v207, v208);
        }
      }

      if (v176)
      {
        *a5 = makeAndNode(*a5, v176);
        if (*(v134 - 2) == -1)
        {
          goto LABEL_192;
        }
      }
    }

LABEL_277:
    v134 += 10;
    ++v135;
  }

  while (v136 + 10 != v126);
  v125 = v255;
  if (theArraya)
  {
    v209 = [v235 objectAtIndexedSubscript:*(v255 + 80 * v237 + 24)];
    if ([v209 length] && (v210 = objc_msgSend(v209, "UTF8String")) != 0)
    {
      v211 = db_make_query_node_with_ann(v210, 0);
    }

    else
    {
      v211 = 0;
    }

    v212 = makeOrNode(theArraya, v211);
    *a6 = makeAndNode(*a6, v212);
    v125 = v255;
  }

LABEL_293:
  v213 = v256;
  v214 = v125;
  if (v256 != v125)
  {
    do
    {
      v215 = v213 - 80;
      std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v213 - 40);
      v213 = v215;
    }

    while (v215 != v125);
    v214 = v255;
  }

  *&v256 = v125;
  v216 = v125 - v214;
  if (*(&v256 + 1) - v214 > (v125 - v214))
  {
    *&buf[32] = &v255;
    if (v125 != v214)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<PhTokenInfo>>(0xCCCCCCCCCCCCCCCDLL * (v216 >> 4));
    }

    v217 = 16 * (v216 >> 4);
    *buf = 0;
    *&buf[8] = v217;
    *&buf[16] = v217;
    if (0xCCCCCCCCCCCCCCCDLL * ((*(&v256 + 1) - v214) >> 4))
    {
      v218 = v217 + v214 - v256;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhTokenInfo>,PhTokenInfo*>(v214, v256, v218);
      v219 = v255;
      v220 = *(&v256 + 1);
      v255 = v218;
      v256 = *&buf[16];
      *&buf[16] = v219;
      *&buf[24] = v220;
      *buf = v219;
      *&buf[8] = v219;
    }

    std::__split_buffer<PhTokenInfo>::~__split_buffer(buf);
  }

  CFRelease(theSet);
  CFRelease(v232);
  *buf = &v255;
  std::vector<PhTokenInfo>::__destroy_vector::operator()[abi:nn200100](buf);
LABEL_303:
  v221 = *MEMORY[0x1E69E9840];
}

void sub_1C2BDFB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  *(v59 - 224) = &a59;
  std::vector<PhTokenInfo>::__destroy_vector::operator()[abi:nn200100]((v59 - 224));
  _Unwind_Resume(a1);
}

void PhRetrievalAttribs()
{
  {
    PhRetrievalAttribs(void)::_retrievalAttribs = 0u;
    *&qword_1EC059000 = 0u;
    dword_1EC059010 = 1065353216;
  }

  if (PhRetrievalAttribs(void)::onceToken != -1)
  {

    dispatch_once(&PhRetrievalAttribs(void)::onceToken, &__block_literal_global_187);
  }
}

float _scaleBiasBasedAnnThresh(float a1, float a2, float a3, int a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2 == 0.0)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(19);
    v7 = 1.7;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 67109376;
      *v37 = a4;
      *&v37[4] = 2048;
      *&v37[6] = 0x3FFB333340000000;
      v8 = "MD%d: Using default similarity of 0.15 to get threshold = %f (ERROR: scale is 0)";
      v9 = v6;
      v10 = 18;
LABEL_49:
      _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, v8, &v36, v10);
    }
  }

  else
  {
    v13 = a1;
    if (a1 == -3.4028e38)
    {
      v14 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
      if (!v14)
      {
        goto LABEL_10;
      }

      v15 = v14;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      [v15 floatValue];
      v17 = v16;
      v18 = *__error();
      v19 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 134217984;
        *v37 = v17;
        _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "Using user default cutoff: %f", &v36, 0xCu);
      }

      *__error() = v18;
      v20 = logf(v17);
      v13 = v20 - logf(1.0 - v17);
      if (v13 == -1.0)
      {
LABEL_10:
        if (SSSemanticSearchMD7Enabled(void)::onceToken != -1)
        {
          dispatch_once(&SSSemanticSearchMD7Enabled(void)::onceToken, &__block_literal_global_297);
        }

        v21 = SSSemanticSearchMD7Enabled(void)::ffStatus;
        v22 = [MEMORY[0x1E695E000] standardUserDefaults];
        if (v21 == 1)
        {
          v23 = [v22 objectForKey:@"SpotlightPhotosANNPrecisionMD7"];
          v13 = -0.4055;
          if (v23)
          {
            v24 = v23;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [v24 intValue];
              v26 = *__error();
              v27 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v36 = 67109120;
                *v37 = v25;
                _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "Using user default precision for MD6: %d", &v36, 8u);
              }

              *__error() = v26;
              if (v25 > 84)
              {
                switch(v25)
                {
                  case 'U':
                    v13 = 0.2411;
                    break;
                  case 'Z':
                    v13 = 0.7537;
                    break;
                  case '_':
                    v13 = 1.2083;
                    break;
                }
              }

              else
              {
                switch(v25)
                {
                  case 'F':
                    v13 = -0.8473;
                    break;
                  case 'K':
                    v13 = -0.5322;
                    break;
                  case 'P':
                    v13 = -0.2006;
                    break;
                }
              }
            }
          }
        }

        else
        {
          v28 = [v22 objectForKey:@"SpotlightPhotosANNPrecisionMD6"];
          v13 = -0.8473;
          if (v28)
          {
            v29 = v28;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = [v29 intValue];
              v31 = *__error();
              v32 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v36 = 67109120;
                *v37 = v30;
                _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "Using user default precision for MD6: %d", &v36, 8u);
              }

              *__error() = v31;
              if (v30 > 84)
              {
                switch(v30)
                {
                  case 'U':
                    v13 = -0.3228;
                    break;
                  case 'Z':
                    v13 = 0.1201;
                    break;
                  case '_':
                    v13 = 1.046;
                    break;
                }
              }

              else
              {
                switch(v30)
                {
                  case 'F':
                    v13 = -1.2657;
                    break;
                  case 'K':
                    v13 = -0.9946;
                    break;
                  case 'P':
                    v13 = -0.6633;
                    break;
                }
              }
            }
          }
        }
      }
    }

    v7 = (1.0 - ((v13 - a3) / a2)) + (1.0 - ((v13 - a3) / a2));
    v5 = *__error();
    v33 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 67110144;
      *v37 = a4;
      *&v37[4] = 2048;
      *&v37[6] = v7;
      v38 = 2048;
      v39 = v13;
      v40 = 2048;
      v41 = a2;
      v42 = 2048;
      v43 = a3;
      v8 = "MD%d calibrated threshold: %f, cutoffOffset: %f, scale: %f, bias: %f";
      v9 = v33;
      v10 = 48;
      goto LABEL_49;
    }
  }

  *__error() = v5;
  v34 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t ___ZL26SSSemanticSearchMD7Enabledv_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSSemanticSearchMD7Enabled(void)::ffStatus = result;
  return result;
}

void ___ZL18PhRetrievalAttribsv_block_invoke_16474()
{
  v4.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "*");
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemTextContent");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&PhRetrievalAttribs(void)::_retrievalAttribs, &__str, &v4);
  for (i = 0; i != -48; i -= 24)
  {
    if (v3[i + 23] < 0)
    {
      operator delete(*(&__str + i + 24));
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1C2BE0334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = &a21;
  v23 = -48;
  v24 = &a21;
  while (1)
  {
    v25 = *v24;
    v24 -= 24;
    if (v25 < 0)
    {
      operator delete(*(v22 - 23));
    }

    v22 = v24;
    v23 += 24;
    if (!v23)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t ___ZL30PhPopulateSomeFiltersFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES5_S9__block_invoke_16482(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (result)
  {
    if ([a2 objectForKeyedSubscript:@"kQPDate"] && objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"))
    {
      v9 = 40;
      v10 = 32;
    }

    else
    {
      result = [a2 objectForKeyedSubscript:@"kQPGroundedPerson"];
      if (!result)
      {
        return result;
      }

      result = [a2 objectForKeyedSubscript:@"kQPDescription"];
      if (!result)
      {
        return result;
      }

      v9 = 56;
      v10 = 48;
    }

    [*(a1 + v10) addObject:{objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"}];
    v11 = *(a1 + v9);
    v12 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];

    return [v11 addObject:v12];
  }

  return result;
}

uint64_t ___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke_16485(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (result)
  {
    result = [a2 objectForKeyedSubscript:@"kQPDate"];
    if (result)
    {
      result = [a2 objectForKeyedSubscript:@"kQPDescription"];
      if (result)
      {
        [*(a1 + 32) addObject:{objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"}];
        v9 = *(a1 + 40);
        v10 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];

        return [v9 addObject:v10];
      }
    }
  }

  return result;
}

void sub_1C2BE0688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2BE07CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2BE0910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPQUOutputTokenKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
    getkQPQUOutputTokenKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenKey()") description:{@"PRQueryPhotosProcessor.mm", 25, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2BE0A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<int>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, *(i + 4));
  }

  return a1;
}

uint64_t getkQPQUOutputSpanTypesKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputSpanTypesKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputSpanTypesKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputSpanTypesKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputSpanTypesKey");
    getkQPQUOutputSpanTypesKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputSpanTypesKey()") description:{@"PRQueryPhotosProcessor.mm", 28, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2BE0C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

query_node *PhAttribNodes(char *__s, char a2, char a3)
{
  v5 = qword_1EC059000;
  v6 = 0;
  if ((a2 & 1) == 0)
  {
    while (v5)
    {
      v10 = (v5 + 16);
      if (*(v5 + 39) < 0)
      {
        v10 = *v10;
      }

      QueryNode = createQueryNode(v10, __s, 112, 1, 0, 0.0, 0.0);
      v6 = makeOrNode(v6, QueryNode);
      v5 = *v5;
    }

    if (a3)
    {
      v9 = 0;
      goto LABEL_14;
    }

    return v6;
  }

  if (qword_1EC059000)
  {
    do
    {
      v7 = (v5 + 16);
      if (*(v5 + 39) < 0)
      {
        v7 = *v7;
      }

      v8 = createQueryNode(v7, __s, 112, 1, -1, 0.0, 0.0);
      v6 = makeOrNode(v6, v8);
      v5 = *v5;
    }

    while (v5);
  }

  if ((a3 & 1) == 0)
  {
    return v6;
  }

  v9 = -1;
LABEL_14:
  v12 = createQueryNode("kMDItemPhotosSharedLibraryContributorsNames", __s, 112, 1, v9, 0.0, 0.0);
  v13 = makeOrNode(v6, v12);
  v14 = createQueryNode("kMDItemPhotosSharedLibraryContributorsNamesAlternatives", __s, 112, 1, v9, 0.0, 0.0);

  return makeOrNode(v13, v14);
}

void std::vector<PhTokenInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 80;
        std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<PhTokenInfo>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhTokenInfo>,PhTokenInfo*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = a3 + v5;
      v7 = *(result + v5);
      v8 = *(result + v5 + 16);
      *(v6 + 32) = *(result + v5 + 32);
      *v6 = v7;
      *(v6 + 16) = v8;
      v9 = *(result + v5 + 40);
      *(result + v5 + 40) = 0;
      *(v6 + 40) = v9;
      v10 = *(result + v5 + 56);
      *(v6 + 48) = *(result + v5 + 48);
      *(result + v5 + 48) = 0;
      *(a3 + v5 + 56) = v10;
      v11 = *(result + v5 + 64);
      *(v6 + 64) = v11;
      *(v6 + 72) = *(result + v5 + 72);
      if (v11)
      {
        v12 = *(v10 + 8);
        v13 = *(v6 + 48);
        if ((v13 & (v13 - 1)) != 0)
        {
          if (v12 >= v13)
          {
            v12 %= v13;
          }
        }

        else
        {
          v12 &= v13 - 1;
        }

        *(v9 + 8 * v12) = a3 + v5 + 56;
        *(result + v5 + 56) = 0;
        *(result + v5 + 64) = 0;
      }

      v5 += 80;
    }

    while (result + v5 != a2);
    do
    {
      result = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v4 + 40);
      v4 += 80;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<PhTokenInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *___ZL35getkQPQUOutputSpanTypesKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputSpanTypesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputSpanTypesKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL22QueryParserLibraryCorePPc_block_invoke_16545(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  QueryParserLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *___ZL31getkQPQUOutputTokenKeySymbolLocv_block_invoke_16550(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkQPQUOutputTokenArgScoresKeySymbolLocv_block_invoke_16554(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenArgScoresKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL37getkQPQUOutputTokenArgIdsKeySymbolLocv_block_invoke_16558(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkQPQUOutputTokenRangeKeySymbolLocv_block_invoke_16562(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ___ZL14PhThreeYearAgov_block_invoke_16638()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DF00] date];
  asprintf(&PhThreeYearAgo(void)::oldYear, "%lu", [objc_msgSend(MEMORY[0x1E695DEE8] "currentCalendar")] - 3);

  objc_autoreleasePoolPop(v0);
}

void ___ZL11CurrentYearv_block_invoke_16641()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DF00] date];
  asprintf(&CurrentYear(void)::currYear, "%lu", [objc_msgSend(MEMORY[0x1E695DEE8] "currentCalendar")]);

  objc_autoreleasePoolPop(v0);
}

uint64_t ___ZL20PhRankingTreeFromStrPKcfPi_block_invoke_16644(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 52) = *(a1 + 40);
      *(v2 + 56) = 0;
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  return a2;
}

void PhExactMatchRankingAttribs()
{
  {
    PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs = 0u;
    *&qword_1EC058F98 = 0u;
    dword_1EC058FA8 = 1065353216;
  }

  if (PhExactMatchRankingAttribs(void)::onceToken != -1)
  {

    dispatch_once(&PhExactMatchRankingAttribs(void)::onceToken, &__block_literal_global_109);
  }
}

void ___ZL26PhExactMatchRankingAttribsv_block_invoke_16657()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosFavorites");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1043878380;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosPeopleNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1043207291;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosPeopleNamesAlternatives");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1043207291;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSceneClassificationLabels");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1042536202;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSceneClassificationSynonyms");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1042536202;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosDescription");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1041865114;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosKeywords");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1041865114;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosLocationKeywords");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1041194025;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosHolidays");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSeasons");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosContentCreationDateMonth");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosContentCreationDateMonths");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosContentCreationDateYear");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosContentCreationDateYears");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosBusinessCategories");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1039516303;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosBusinessNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1039516303;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosEventCategories");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1038174126;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosEventNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1038174126;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosEventPerformers");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1038174126;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSharedLibraryContributorsNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSharedLibraryContributorsNamesAlternatives");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSavedFromAppName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosUtilityTypes");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAcquisitionModel");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosMeanings");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosMediaTypes");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C2BE1C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL24PhRankingTreeFromU2ParsePK14__CFDictionaryP10query_nodeP7NSArrayIP7NSValueEP14NSCharacterSetyP8NSString_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 52) = *(a1 + 32);
    }
  }

  return a2;
}

void ___ZL27PhPrefixMatchRankingAttribsv_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = 1043878380;
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemPhotosFavorites");
  v1 = 0uLL;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(&v1, v3, v4, 1uLL);
}

void sub_1C2BE2550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a11);
  v48 = &a47;
  v49 = -240;
  v50 = &a47;
  while (1)
  {
    v51 = *v50;
    v50 -= 24;
    if (v51 < 0)
    {
      operator delete(*(v48 - 23));
    }

    v48 = v50;
    v49 += 24;
    if (!v49)
    {
      _Unwind_Resume(a1);
    }
  }
}

void ___ZL25PhSpanMatchRankingAttribsv_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = 1043878380;
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemPhotosFavorites");
  v1 = 0uLL;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(&v1, v3, v4, 1uLL);
}

void sub_1C2BE2EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](va);
  if (*(v3 - 49) < 0)
  {
    operator delete(*(v3 - 72));
  }

  _Unwind_Resume(a1);
}

void *___ZL35getkQPQUOutputTokenInfoKeySymbolLocv_block_invoke_16741(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenInfoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenInfoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_by_block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([a2 count])
  {
    [*(a1 + 32) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", a3, a4)}];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_by_block_invoke_2;
  v19[3] = &unk_1E8199628;
  v8 = *(a1 + 48);
  v19[4] = *(a1 + 40);
  v19[5] = &v25;
  v19[8] = a4;
  v19[9] = v8;
  v20 = *(a1 + 72);
  v19[6] = &v21;
  v19[7] = a3;
  v19[10] = *(a1 + 56);
  [a2 enumerateKeysAndObjectsUsingBlock:v19];
  v9 = v22[3];
  v10 = v26[3];
  if (v9 && v10)
  {
    v11 = makeOrNode(v9, v10);
    if (*(a1 + 72) == 1)
    {
      v12 = makeAndNode(**(a1 + 64), v11);
      v13 = *(a1 + 64);
LABEL_9:
      *v13 = v12;
      goto LABEL_13;
    }

    **(a1 + 56) = makeAndNode(**(a1 + 56), v11);
    v14 = *__error();
    v15 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 48);
      v34.location = a3;
      v34.length = a4;
      v17 = NSStringFromRange(v34);
      *buf = 134218242;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "[qid=%llu] Token (range: %@) has generic and metdata filters (ORing them together)", buf, 0x16u);
    }

    *__error() = v14;
  }

  else
  {
    **(a1 + 64) = makeAndNode(**(a1 + 64), v10);
    if ((*(a1 + 72) & 1) == 0)
    {
      v12 = makeAndNode(**(a1 + 56), v22[3]);
      v13 = *(a1 + 56);
      goto LABEL_9;
    }
  }

LABEL_13:
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1C2BE333C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

int *___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_by_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = [a2 length];
  if (!a3)
  {
    goto LABEL_17;
  }

  if (!v6)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (![a3 length])
  {
    goto LABEL_17;
  }

  v7 = [a2 UTF8String];
  v8 = [a3 UTF8String];
  if (!v7)
  {
    goto LABEL_17;
  }

  v9 = v8;
  if (!v8)
  {
    goto LABEL_17;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v7);
  {
    MetadataKeys(void)::_metadataKeys = 0u;
    unk_1EC058EB8 = 0u;
    dword_1EC058EC8 = 1065353216;
  }

  if (MetadataKeys(void)::onceToken != -1)
  {
    dispatch_once(&MetadataKeys(void)::onceToken, &__block_literal_global_16754);
  }

  v10 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&MetadataKeys(void)::_metadataKeys, __p);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(*__p);
  }

  if (!v10)
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      std::string::basic_string[abi:nn200100]<0>(__p, v7);
      v25 = isGenericFilterKey(__p);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*__p);
      }

      if (v25)
      {
        v26 = *(*(*(a1 + 48) + 8) + 24);
        query_node_with_ann = db_make_query_node_with_ann(v9, 0);
        *(*(*(a1 + 48) + 8) + 24) = makeOrNode(v26, query_node_with_ann);
        v13 = *__error();
        v14 = _SILogForLogForCategory(19);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        v28 = *(a1 + 72);
        v29 = NSStringFromRange(*(a1 + 56));
        *__p = 134218498;
        *&__p[4] = v28;
        v36 = 2112;
        v37 = a3;
        v38 = 2112;
        v39 = v29;
        v17 = "[qid=%llu] Adding generic filter: %@, token range: %@";
        goto LABEL_15;
      }

      if ((*(a1 + 88) & 1) == 0)
      {
        std::string::basic_string[abi:nn200100]<0>(__p, v7);
        v30 = isGenericFilterTopLevelKey(__p);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*__p);
        }

        if (v30)
        {
          v31 = **(a1 + 80);
          v32 = db_make_query_node_with_ann(v9, 0);
          **(a1 + 80) = makeAndNode(v31, v32);
          v13 = *__error();
          v14 = _SILogForLogForCategory(19);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          v33 = *(a1 + 72);
          v34 = NSStringFromRange(*(a1 + 56));
          *__p = 134218498;
          *&__p[4] = v33;
          v36 = 2112;
          v37 = a3;
          v38 = 2112;
          v39 = v34;
          v17 = "[qid=%llu] Adding generic top level filter: %@, token range: %@";
          goto LABEL_15;
        }
      }
    }

LABEL_17:
    v19 = *(a1 + 88);
    v13 = *__error();
    if (v19)
    {
      v20 = _SILogForLogForCategory(20);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v20 = _SILogForLogForCategory(19);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    v21 = *(a1 + 72);
    v22 = NSStringFromRange(*(a1 + 56));
    *__p = 134218498;
    *&__p[4] = v21;
    v36 = 2112;
    v37 = v22;
    v38 = 2112;
    v39 = a2;
    v17 = "[qid=%llu] [WARN] Ignoring filter, token range: %@, key: %@";
    v18 = v20;
    goto LABEL_22;
  }

  v11 = *(*(*(a1 + 40) + 8) + 24);
  v12 = db_make_query_node_with_ann(v9, 0);
  *(*(*(a1 + 40) + 8) + 24) = makeOrNode(v11, v12);
  [*(a1 + 32) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", *(a1 + 56), *(a1 + 64))}];
  v13 = *__error();
  v14 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 72);
    v16 = NSStringFromRange(*(a1 + 56));
    *__p = 134218498;
    *&__p[4] = v15;
    v36 = 2112;
    v37 = a3;
    v38 = 2112;
    v39 = v16;
    v17 = "[qid=%llu] Adding metadata filter: %@, token range: %@";
LABEL_15:
    v18 = v14;
LABEL_22:
    _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, v17, __p, 0x20u);
  }

LABEL_23:
  result = __error();
  *result = v13;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C2BE37F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL25GenericFilterTopLevelKeysv_block_invoke_16768()
{
  v2.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__p, "kMDItemPhotosResultType");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&GenericFilterTopLevelKeys(void)::_genericFilterTopLevelKeys, &__p, &v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void sub_1C2BE39F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL17GenericFilterKeysv_block_invoke_16776()
{
  v33.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&v2, "kMDItemAcquisitionModel");
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemContentCreationDate");
  std::string::basic_string[abi:nn200100]<0>(v4, "kMDItemContentType");
  std::string::basic_string[abi:nn200100]<0>(v5, "kMDItemFilename");
  std::string::basic_string[abi:nn200100]<0>(v6, "kMDItemPhotosBusinessCategories");
  std::string::basic_string[abi:nn200100]<0>(v7, "kMDItemPhotosBusinessNames");
  std::string::basic_string[abi:nn200100]<0>(v8, "kMDItemPhotosContentCreationDateMonth");
  std::string::basic_string[abi:nn200100]<0>(v9, "kMDItemPhotosContentCreationDateMonths");
  std::string::basic_string[abi:nn200100]<0>(v10, "kMDItemPhotosContentCreationDateYear");
  std::string::basic_string[abi:nn200100]<0>(v11, "kMDItemPhotosContentCreationDateYears");
  std::string::basic_string[abi:nn200100]<0>(v12, "kMDItemPhotosDescription");
  std::string::basic_string[abi:nn200100]<0>(v13, "kMDItemPhotosEventCategories");
  std::string::basic_string[abi:nn200100]<0>(v14, "kMDItemPhotosEventNames");
  std::string::basic_string[abi:nn200100]<0>(v15, "kMDItemPhotosEventPerformers");
  std::string::basic_string[abi:nn200100]<0>(v16, "kMDItemPhotosFavorited");
  std::string::basic_string[abi:nn200100]<0>(v17, "kMDItemPhotosHolidays");
  std::string::basic_string[abi:nn200100]<0>(v18, "kMDItemPhotosKeywords");
  std::string::basic_string[abi:nn200100]<0>(v19, "kMDItemPhotosLibraryName");
  std::string::basic_string[abi:nn200100]<0>(v20, "kMDItemPhotosLocationKeywords");
  std::string::basic_string[abi:nn200100]<0>(v21, "kMDItemPhotosMediaTypes");
  std::string::basic_string[abi:nn200100]<0>(v22, "kMDItemPhotosPartsOfDay");
  std::string::basic_string[abi:nn200100]<0>(v23, "kMDItemPhotosPartsOfWeek");
  std::string::basic_string[abi:nn200100]<0>(v24, "kMDItemPhotosPeopleNames");
  std::string::basic_string[abi:nn200100]<0>(v25, "kMDItemPhotosPeopleNamesAlternatives");
  std::string::basic_string[abi:nn200100]<0>(v26, "kMDItemPhotosPeoplePersonIdentifiers");
  std::string::basic_string[abi:nn200100]<0>(v27, "kMDItemPhotosPhotographicStyles");
  std::string::basic_string[abi:nn200100]<0>(v28, "kMDItemPhotosSavedFromAppName");
  std::string::basic_string[abi:nn200100]<0>(v29, "kMDItemPhotosSeasons");
  std::string::basic_string[abi:nn200100]<0>(v30, "kMDItemPhotosSharedLibraryContributorsPersonIdentifiers");
  std::string::basic_string[abi:nn200100]<0>(v31, "kMDItemPhotosTitle");
  std::string::basic_string[abi:nn200100]<0>(v32, "kMDItemTextContent");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&GenericFilterKeys(void)::_genericFilterKeys, &v2, &v33);
  v0 = 744;
  do
  {
    if (v2.__r_.__value_.__s.__data_[v0 - 1] < 0)
    {
      operator delete(*(&v2.__r_.__value_.__l + v0 - 24));
    }

    v0 -= 24;
  }

  while (v0);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1C2BE3D50(_Unwind_Exception *exception_object)
{
  v2 = &STACK[0x2E7];
  v3 = -744;
  v4 = &STACK[0x2E7];
  while (1)
  {
    v5 = *v4;
    v4 -= 3;
    if (v5 < 0)
    {
      operator delete(*(v2 - 23));
    }

    v2 = v4;
    v3 += 24;
    if (!v3)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void ___ZL12MetadataKeysv_block_invoke_16788()
{
  v4.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "kMDItemPhotosMeanings");
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemPhotosSceneClassificationLabels");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&MetadataKeys(void)::_metadataKeys, &__str, &v4);
  for (i = 0; i != -48; i -= 24)
  {
    if (v3[i + 23] < 0)
    {
      operator delete(*(&__str + i + 24));
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1C2BE3E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = &a21;
  v23 = -48;
  v24 = &a21;
  while (1)
  {
    v25 = *v24;
    v24 -= 24;
    if (v25 < 0)
    {
      operator delete(*(v22 - 23));
    }

    v22 = v24;
    v23 += 24;
    if (!v23)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

int *accurate_realpath(int *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = open(result, 32772);
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    result = __error();
    if (*result == 13)
    {
      result = geteuid();
      if (!result)
      {
        memset(&v6, 0, sizeof(v6));
        result = md_stat_real(v3, &v6);
        if (!result)
        {
          if (v6.st_uid)
          {
            *v5 = 0;
            result = pthread_getugid_np(&v5[1], v5);
            if (!result)
            {
              result = pthread_setugid_np(v6.st_uid, v6.st_gid);
              if (!result)
              {
                v4 = open(v3, 32772);
                result = pthread_setugid_np(v5[1], v5[0]);
                if (result)
                {
                  __assert_rtn("accurate_realpath", "MDFileUtil.c", 389, "rc == 0");
                }

                if ((v4 & 0x80000000) == 0)
                {
LABEL_3:
                  fcntl(v4, 50, a2);
                  return close(v4);
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

uint64_t md_stat_real(char *a1, stat *a2)
{
  v4 = fstatat(-2, a1, a2, 512);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstatat(-2, a1, a2, 0);
}

uint64_t md_fstat_real(int a1, stat *a2)
{
  v4 = fstatat(a1, 0, a2, 1536);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstat(a1, a2);
}

uint64_t x_unlinkat(int a1, const char *a2, int a3)
{
  v6 = unlinkat(a1, a2, a3);
  if (!v6)
  {
    return v6;
  }

  v7 = __error();
  if ((a3 & 0x800) == 0 || *v7 != 22)
  {
    return v6;
  }

  return unlinkat(a1, a2, a3 & 0xFFFFF7FF);
}

void state_reduce(unint64_t *a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1)
  {
    v54 = 0u;
    v55 = 0u;
    v3 = __clz(__rbit64(v1));
    v52 = 0u;
    v53 = 0u;
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
    v41 = 0u;
    v56 = 0;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 1 << v3;
    v4 = 1;
    v5 = v1 & (-2 << v3);
    if (v5)
    {
      v6 = 1;
      do
      {
        v7 = __clz(__rbit64(v5));
        *(&v24 + v6++) = 1 << v7;
        v5 = v1 & (-2 << v7);
      }

      while (v5);
      v4 = v6;
    }

    MEMORY[0x1EEE9AC00](a1);
    v9 = (&v23 - ((v8 + 15) & 0x7FFFFFFF0));
    bzero(v9, v8);
    v10 = 0;
    do
    {
      if (!v9[v10])
      {
        v11 = 0;
        do
        {
          if (v10 != v11)
          {
            v12 = __clz(__rbit64(*(&v24 + v10)));
            v13 = (103 * v12) >> 9;
            v14 = v12 - 5 * v13;
            v15 = __clz(__rbit64(*(&v24 + v11)));
            v16 = (103 * v15) >> 9;
            v17 = v15 - 5 * v16;
            if (v14 < v17)
            {
              v18 = v16 - v13;
              if (v18 < 0)
              {
                v18 = -v18;
              }

              if (v18 <= v17 - v14)
              {
                v9[v11] = 1;
              }
            }
          }

          ++v11;
        }

        while (v4 != v11);
      }

      ++v10;
    }

    while (v10 != v4);
    v19 = &v24;
    do
    {
      if (*v9++)
      {
        *a1 &= ~*v19;
      }

      ++v19;
      --v4;
    }

    while (v4);
    v21 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v22 = *MEMORY[0x1E69E9840];
  }
}

void CatInfoGotten::releaseFlush(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t CatInfoGotten::oid(CatInfoGotten *this)
{
  result = (*(*this + 16))(this);
  if (result)
  {
    return *result;
  }

  return result;
}

int *CatInfoGotten_OID::dbo(CatInfoGotten_OID *this)
{
  result = *(this + 5);
  if (!result)
  {
    v3 = *(this + 2);
    v4 = *(this + 12);
    v5 = 0;
    result = *(v3 + 1192);
    if (result)
    {
      if (db_get_obj_callback(result, v4, &v5, 0, si_docIdRewriteCallback, *(v3 + 2368), 0))
      {
        v5 = 0;
        goto LABEL_5;
      }

      result = v5;
      if (!v5)
      {
LABEL_5:
        result = db_create_obj(*(v3 + 1192), 0, 0);
        if (result)
        {
          *result = v4;
        }
      }
    }

    *(this + 5) = result;
  }

  return result;
}

void CatInfoGotten_OID::~CatInfoGotten_OID(CatInfoGotten_OID *this)
{
  CatInfoGotten_OID::~CatInfoGotten_OID(this);

  JUMPOUT(0x1C691FEF0);
}

{
  *this = &unk_1F42826E0;
  v2 = *(this + 5);
  if (v2)
  {
    free(v2);
  }

  CatInfoGotten::~CatInfoGotten(this);
}

void *CatInfoGotten::fastPath(void *this)
{
  if (!this[7])
  {
    v1 = this;
    v2 = malloc_type_zone_malloc(queryZone, 0x400uLL, 0xA4971684uLL);
    if (!v2)
    {
      _log_fault_for_malloc_failure();
    }

    v1[10] = v2;
    v3 = v1[2];
    (*(*v1 + 32))(v1);
    v4 = v1[10];
    this = (*(*(v3 + 1416) + 48))();
    v5 = "";
    if (this)
    {
      v5 = this;
    }

    v1[7] = v5;
  }

  return this;
}

uint64_t _data_map32_commit(uint64_t a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (_data_map32_rdlock(a1))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_43;
  }

  v38 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v6 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  *buf = HIDWORD(v6);
  LODWORD(v45[0]) = v6;
  v37 = __PAIR64__(v7, v8);
  v9 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v10 = *(v9 + 312);
  v11 = *(v9 + 224);
  if (v11)
  {
    v11(*(v9 + 288));
  }

  v36 = v45[0];
  v35 = *buf;
  v34 = v37;
  if (!_setjmp(v9))
  {
    v13 = *(a1 + 1296);
    if (v13)
    {
      v14 = *(v13 + 16);
      if (v14 < 3)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 5u, v15, *(a1 + 220));
    v16 = *(*(a1 + 1296) + 16);
    if (v16)
    {
      if (v16 != 1)
      {
        v19 = *(a1 + 1432);
        v20 = *(a1 + 1440);
        v17 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }
    }

    else
    {
      v17 = _data_map32_sync_data(a1, a2);
      if (v17 || (v17 = _data_map32_sync_header(a1, a2), v17))
      {
LABEL_21:
        v18 = *(a1 + 1296);
        v19 = *(a1 + 1432);
        v20 = *(a1 + 1440);
        if (!v18)
        {
          v22 = 0;
LABEL_33:
          v23 = v17;
          SIActivityJournalEvent(v19, v20, 6u, v22, *(a1 + 220));
          v38 = 1;
          v24 = threadData[9 * v36 + 1] + 320 * v35;
          *(v24 + 312) = v10;
          v25 = *(v24 + 232);
          if (v25)
          {
            v25(*(v24 + 288));
          }

          dropThreadId(v36, 0, add_explicit + 1);
          v12 = v23;
          goto LABEL_36;
        }

        v16 = *(v18 + 16);
LABEL_24:
        if (v16 == 1)
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }

        if (v16 == 2)
        {
          v21 = 3;
        }

        if (v16)
        {
          v22 = v21;
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_33;
      }
    }

    v17 = data_map32_shadow(a1);
    if (!v17)
    {
      v17 = data_map32_commit_shadow(a1);
      if (!v17)
      {
        v17 = data_map32_commit_shadow_complete(a1);
      }
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v33 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v33, 2u);
  }

  *(v9 + 312) = v10;
  CIOnThreadCleanUpReset(v34);
  dropThreadId(v36, 1, add_explicit + 1);
  CICleanUpReset(v36, HIDWORD(v34));
  v12 = 0xFFFFFFFFLL;
LABEL_36:
  if ((v38 & 1) == 0)
  {
    *(a1 + 1464) = 22;
  }

  memset(v45, 0, sizeof(v45));
  v26 = *__error();
  v27 = _SILogForLogForCategory(7);
  v28 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = fd_name(*(a1 + 1272), v45, 0x100uLL);
    v30 = "syncless commit";
    v40 = v29;
    v31 = *(a1 + 220);
    *buf = 136315650;
    if (a2)
    {
      v30 = "commit";
    }

    v41 = 2080;
    v42 = v30;
    v43 = 1024;
    v44 = v31 - 1;
    _os_log_impl(&dword_1C278D000, v27, v28, "%s complete %s with count: %d", buf, 0x1Cu);
  }

  *__error() = v26;
  _data_map32_unlock(a1);
  result = v12;
LABEL_43:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _data_map32_sync_data(uint64_t a1, int a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v35 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v33 = HIDWORD(v5);
  v34 = v5;
  v31 = v7;
  v32 = v6;
  v8 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v9 = *(v8 + 312);
  v10 = *(v8 + 224);
  if (v10)
  {
    v10(*(v8 + 288));
  }

  if (_setjmp(v8))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v42 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v42, 2u);
    }

    *(v8 + 312) = v9;
    CIOnThreadCleanUpReset(v31);
    dropThreadId(v34, 1, add_explicit + 1);
    CICleanUpReset(v34, v32);
  }

  else
  {
    if (!*(a1 + 1464) && !*(*(a1 + 1296) + 16))
    {
      SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 7u, 1u, *(a1 + 220));
      if (*(a1 + 1457) == 1)
      {
        if (a2)
        {
          v11 = *(*(a1 + 1296) + 32) + *(a1 + 1320);
          v12 = -*MEMORY[0x1E69E9AC8];
          v13 = (*(a1 + 1328) - *(*(a1 + 1296) + 32));
          fd_system_status_stall_if_busy();
          msync((v11 & v12), v13, 16);
        }

        *(a1 + 1457) = 0;
      }

      if (*(a1 + 1459) == 1)
      {
        if (a2)
        {
          v14 = *(*(a1 + 1296) + 40);
          v15 = *(a1 + 1352) + 4 * v14;
          v16 = -*MEMORY[0x1E69E9AC8];
          v17 = 4 * (*(a1 + 220) - v14);
          fd_system_status_stall_if_busy();
          msync((v15 & v16), v17, 16);
        }

        *(a1 + 1459) = 0;
      }

      if (*(a1 + 1458) == 1)
      {
        if (a2)
        {
          v18 = *(a1 + 1384);
          v19 = 4 * *(a1 + 1392);
          fd_system_status_stall_if_busy();
          msync(v18, v19, 16);
        }

        *(a1 + 1458) = 0;
      }

      v20 = *(a1 + 1296);
      *(v20 + 20) = *(a1 + 1328);
      *(v20 + 28) = *(a1 + 220);
      *(v20 + 24) = *(a1 + 1392);
      *(v20 + 44) = *(a1 + 1396);
      *(v20 + 52) = *(a1 + 1404);
      *(v20 + 16) = 0;
      fd_pwrite(*(a1 + 1272), v20, 0x38uLL, 0);
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      *v42 = 0u;
      v43 = 0u;
      v21 = *__error();
      v22 = _SILogForLogForCategory(7);
      v23 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = fd_name(*(a1 + 1272), v42, 0x100uLL);
        v25 = "update";
        v37 = v24;
        v26 = *(a1 + 220);
        *buf = 136315650;
        if (a2)
        {
          v25 = "sync";
        }

        v38 = 2080;
        v39 = v25;
        v40 = 1024;
        v41 = v26 - 1;
        _os_log_impl(&dword_1C278D000, v22, v23, "%s complete %s map with count: %d", buf, 0x1Cu);
      }

      *__error() = v21;
    }

    v35 = 1;
    v27 = threadData[9 * v34 + 1] + 320 * v33;
    *(v27 + 312) = v9;
    v28 = *(v27 + 232);
    if (v28)
    {
      v28(*(v27 + 288));
    }

    dropThreadId(v34, 0, add_explicit + 1);
  }

  if (v35 == 1)
  {
    result = *(a1 + 1464);
  }

  else
  {
    *(a1 + 1464) = 22;
    result = 22;
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _data_map32_sync_header(uint64_t a1, int a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v29 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v27 = HIDWORD(v5);
  v28 = v5;
  v25 = v7;
  v26 = v6;
  v8 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v9 = *(v8 + 312);
  v10 = *(v8 + 224);
  if (v10)
  {
    v10(*(v8 + 288));
  }

  if (_setjmp(v8))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v36, 2u);
    }

    *(v8 + 312) = v9;
    CIOnThreadCleanUpReset(v25);
    dropThreadId(v28, 1, add_explicit + 1);
    CICleanUpReset(v28, v26);
  }

  else
  {
    if (!*(a1 + 1464))
    {
      v11 = *(*(a1 + 1296) + 16);
      if (v11 != 1)
      {
        if (v11 == 2)
        {
          v12 = 3;
        }

        else
        {
          v12 = 0;
        }

        if (v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = 1;
        }

        SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 0xAu, v13, *(a1 + 220));
        v14 = *(a1 + 1296);
        *(v14 + 32) = *(v14 + 20);
        *(v14 + 40) = *(v14 + 28);
        *(v14 + 20) = *(a1 + 1328);
        *(v14 + 28) = *(a1 + 220);
        *(v14 + 24) = *(a1 + 1392);
        *(v14 + 16) = 0;
        fd_pwrite(*(a1 + 1272), v14, 0x38uLL, 0);
        if (a2)
        {
          fd_sync(*(a1 + 1272), 0);
        }

        *(*(a1 + 1296) + 16) = 2;
        SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 0xBu, 3u, *(a1 + 220));
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
        *v36 = 0u;
        v37 = 0u;
        v15 = *__error();
        v16 = _SILogForLogForCategory(7);
        v17 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v16, v17))
        {
          v18 = fd_name(*(a1 + 1272), v36, 0x100uLL);
          v19 = "update";
          v31 = v18;
          v20 = *(a1 + 220);
          *buf = 136315650;
          if (a2)
          {
            v19 = "sync";
          }

          v32 = 2080;
          v33 = v19;
          v34 = 1024;
          v35 = v20 - 1;
          _os_log_impl(&dword_1C278D000, v16, v17, "%s complete %s header with count: %d", buf, 0x1Cu);
        }

        *__error() = v15;
      }
    }

    v29 = 1;
    v21 = threadData[9 * v28 + 1] + 320 * v27;
    *(v21 + 312) = v9;
    v22 = *(v21 + 232);
    if (v22)
    {
      v22(*(v21 + 288));
    }

    dropThreadId(v28, 0, add_explicit + 1);
  }

  if (v29 == 1)
  {
    result = *(a1 + 1464);
  }

  else
  {
    *(a1 + 1464) = 22;
    result = 22;
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t data_map32_shadow(uint64_t a1)
{
  result = *(a1 + 1464);
  if (!result)
  {
    if (*(*(a1 + 1296) + 16) == 2)
    {
      SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 0xCu, 3u, *(a1 + 220));
      v3 = *(a1 + 1296);
      *(v3 + 16) = 2;
      sibling_with_suffix_protected = *(a1 + 1280);
      if (!sibling_with_suffix_protected)
      {
        sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(a1 + 1272), ".shadow", 514);
        *(a1 + 1280) = sibling_with_suffix_protected;
        v3 = *(a1 + 1296);
      }

      fd_pwrite(sibling_with_suffix_protected, v3, 0x38uLL, 0);
      v5 = *(a1 + 1296);
      if (v5)
      {
        v6 = *(v5 + 16);
        if (v6 < 3)
        {
          v7 = v6 + 1;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 0xDu, v7, *(a1 + 220));
      return *(a1 + 1464);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t data_map32_commit_shadow(uint64_t a1)
{
  if (!*(a1 + 1464) && *(*(a1 + 1296) + 16) == 2)
  {
    SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 0xEu, 3u, *(a1 + 220));
    fd_sync(*(a1 + 1280), 0);
  }

  fd_release(*(a1 + 1280));
  *(a1 + 1280) = 0;
  return *(a1 + 1464);
}

uint64_t data_map32_commit_shadow_complete(uint64_t a1)
{
  result = *(a1 + 1464);
  if (!result)
  {
    if (*(*(a1 + 1296) + 16) == 2)
    {
      SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 0xFu, 3u, *(a1 + 220));
      v3 = *(a1 + 1296);
      *(v3 + 32) = *(v3 + 20);
      *(v3 + 40) = *(v3 + 28);
      *(v3 + 16) = 1;
      fd_pwrite(*(a1 + 1272), v3, 0x38uLL, 0);
      fd_sync(*(a1 + 1272), 0);
      v4 = *(a1 + 1296);
      if (v4)
      {
        v5 = *(v4 + 16);
        if (v5 < 3)
        {
          v6 = v5 + 1;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 0x10u, v6, *(a1 + 220));
      return *(a1 + 1464);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _data_map32_match_address(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = *(result + 1256);
    if (v2 != -1)
    {
      if (v2)
      {
        if (v2 <= a2)
        {
          v3 = *(result + 1264);
          if (v2 + v3 > a2)
          {
            v4 = *(result + 1272);
            v5 = "data ro header";
            v6 = a2;
            v7 = v2;
            v8 = v3;
LABEL_28:
            log_map_access_error(v6, v7, v3, v8, v5, v4);
            return 1;
          }
        }
      }

      return 0;
    }

    v9 = *(result + 1320);
    v10 = v9 + 1 < 2 || v9 > a2;
    if (v10 || (v3 = *(result + 1312), v9 + v3 <= a2))
    {
      v9 = *(result + 1352);
      v11 = v9 + 1 < 2 || v9 > a2;
      if (v11 || (v3 = *(result + 1344), v9 + v3 <= a2))
      {
        v9 = *(result + 1384);
        if (v9 + 1 < 2)
        {
          return 0;
        }

        if (v9 > a2)
        {
          return 0;
        }

        v3 = *(result + 1380);
        if (v9 + v3 <= a2)
        {
          return 0;
        }

        v8 = *(result + 1376);
        v4 = *(result + 1368);
        v5 = "data buckets";
      }

      else
      {
        v8 = *(result + 1348);
        v4 = *(result + 1336);
        v5 = "data offsets";
      }
    }

    else
    {
      v8 = *(result + 1316);
      v4 = *(result + 1304);
      v5 = "data storage";
    }

    v6 = a2;
    v7 = v9;
    goto LABEL_28;
  }

  return result;
}

uint64_t data_map32_init_with_ctx(uint64_t a1)
{
  v145 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 20);
  v121 = *(a1 + 16);
  bzero(__str, 0x400uLL);
  v5 = malloc_type_calloc(1uLL, 0x5C0uLL, 0x10B00401D25398AuLL);
  v6 = v5;
  v7 = v5;
  v8 = *(a1 + 20) & 0x100;
  v5[54] = 842150450;
  *(v5 + 177) = *(a1 + 24);
  *(v5 + 176) = *(a1 + 32);
  *(v5 + 89) = *(a1 + 56);
  v5[360] = *(a1 + 72);
  *(v5 + 1461) = (v4 & 8) != 0;
  if ((v4 & 8) == 0)
  {
    *(v5 + 26) = 0;
    *(v5 + 11) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    pthread_mutex_init(v5, 0);
  }

  *(v7 + 1256) = -1;
  *(v7 + 1296) = 0;
  *(v7 + 1320) = -1;
  *(v7 + 1352) = -1;
  *(v7 + 1384) = -1;
  *(v7 + 1444) = 0;
  *(v7 + 1462) = BYTE1(v8);
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, v7, 0, add_explicit + 1);
  v126 = HIDWORD(v10);
  v127 = v10;
  v124 = v12;
  v125 = v11;
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v134.st_dev) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v134, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v124);
    dropThreadId(v127, 1, add_explicit + 1);
    CICleanUpReset(v127, v125);
    v43 = *__error();
    v44 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v73 = fd_realpath(*(v7 + 1272), __str);
      *&v134.st_mode = "data_map32_init_with_ctx";
      v74 = "";
      v134.st_dev = 136315650;
      if (v73)
      {
        v74 = v73;
      }

      WORD2(v134.st_ino) = 1024;
      *(&v134.st_ino + 6) = 1402;
      HIWORD(v134.st_uid) = 2080;
      *&v134.st_gid = v74;
      _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, "%s:%d: exception processing %s", &v134, 0x1Cu);
    }

    *__error() = v43;
LABEL_43:
    data_map32_destroy(v7);
    result = 0;
    goto LABEL_44;
  }

  if (!v3 || (v16 = strlen(v3), v2 == -1) || v16 - 241 <= 0xFFFFFFFFFFFFFF0FLL)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v134.st_dev = 136315394;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1014;
    v57 = "%s:%d: param error";
    goto LABEL_103;
  }

  v122 = v14;
  v123 = add_explicit;
  v119 = v2;
  __strlcpy_chk();
  bzero(v143, 0x400uLL);
  snprintf(v143, 0x400uLL, "tmp.%s.rehash", v6 + 228);
  memset(&v134, 0, sizeof(v134));
  v120 = fstatat(*a1, v143, &v134, 0);
  if ((v4 & 2) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = ((v4 & 1) << 10) | 0x20000202;
  }

  if ((v4 & 3) == 2)
  {
    snprintf(__str, 0x400uLL, "%s.map", v3);
    if (v8)
    {
      v18 = 3;
    }

    else
    {
      v18 = 0;
    }

    v19 = fd_create_protected(v119, __str, 0, v18);
    *(v7 + 1272) = v19;
    v20 = fd_lseek(v19, 0, 2);
    *(v7 + 1288) = v20;
    if (v20 != -1 && v20 >= 0x4DuLL)
    {
      v21 = fd_mmap(*(v7 + 1272));
      *(v7 + 1256) = v21;
      if (v21 == -1)
      {
        v32 = 0;
        goto LABEL_112;
      }

      v22 = *(v7 + 1288);
      *(v7 + 1264) = v22;
      v14 = v122;
      if (*(v21 + 60) == v22)
      {
        *(v7 + 1296) = v21;
        v23 = *(v21 + 64);
        if (v23 < v22)
        {
          v24 = *(v21 + 68);
          if (v24 < v22)
          {
            v25 = *(v21 + 72);
            if (v25 < v22)
            {
              v26 = *(v21 + 28);
              *(v7 + 220) = v26;
              *(v7 + 1384) = v21 + v23;
              *(v7 + 1392) = *(v21 + 24);
              *(v7 + 1352) = v21 + v24;
              *(v7 + 1320) = v21 + v25;
              *(v7 + 1328) = *(v21 + 20);
              v27 = (v25 - v24) >> 2;
              if (*(v7 + 1360) > v26)
              {
                v27 = v26;
              }

              *(v7 + 1360) = v27;
              *(v6 + 349) = *(v21 + 44);
              *(v7 + 1404) = *(v21 + 52);
              *(v7 + 1460) = *(v21 + 8) < 9u;
              v28 = 1;
              goto LABEL_140;
            }
          }
        }
      }

LABEL_99:
      v32 = 0;
      goto LABEL_32;
    }

    v47 = v119;
    fd_release(*(v7 + 1272));
    *(v7 + 1288) = 0;
  }

  else
  {
    v47 = v2;
    if (v8)
    {
      v18 = 3;
    }

    else
    {
      v18 = 0;
    }
  }

  snprintf(__str, 0x400uLL, "%s.header", v3);
  v48 = fd_create_protected(v47, __str, v17, 3u);
  *(v7 + 1272) = v48;
  *(v7 + 1288) = fd_lseek(v48, 0, 2);
  snprintf(__str, 0x400uLL, "%s.data", v3);
  v49 = fd_create_protected(v47, __str, v17, v18);
  *(v7 + 1304) = v49;
  if ((v4 & 3) == 0)
  {
    memset(&buf, 0, sizeof(buf));
    if (!fd_stat(v49, &buf))
    {
      v50 = buf.st_blocks << 9;
      if (buf.st_blocks << 9 > buf.st_size + 0x400000)
      {
        bzero(&v134, 0x400uLL);
        v118 = *__error();
        v51 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v128 = 134218498;
          v129 = v50;
          v130 = 2048;
          st_size = buf.st_size;
          v132 = 2080;
          v133 = __str;
          _os_log_impl(&dword_1C278D000, v51, OS_LOG_TYPE_DEFAULT, "found allocated size %lld for %lld %s", v128, 0x20u);
        }

        *__error() = v118;
        snprintf(&v134, 0x400uLL, "tmp.%s.data.1", v3);
        v52 = fd_create_protected(v119, &v134, 1538, v18);
        if (!fd_copyfile(*(v7 + 1304), v52, 0))
        {
          snprintf(&v134, 0x400uLL, "tmp.%s.data.2", v3);
          if (!fd_rename(*(v7 + 1304), &v134) && !fd_rename(v52, __str))
          {
            _fd_unlink_with_origin(*(v7 + 1304), 0);
            fd_release(*(v7 + 1304));
            *(v7 + 1304) = v52;
            v52 = 0;
          }
        }

        _fd_unlink_with_origin(v52, 0);
        fd_release(v52);
      }
    }

    v49 = *(v7 + 1304);
  }

  *(v7 + 1316) = fd_lseek(v49, 0, 2);
  snprintf(__str, 0x400uLL, "%s.offsets", v3);
  v53 = fd_create_protected(v119, __str, v17, 3u);
  *(v7 + 1336) = v53;
  *(v7 + 1348) = fd_lseek(v53, 0, 2);
  snprintf(__str, 0x400uLL, "%s.buckets", v3);
  v54 = fd_create_protected(v119, __str, 514, 3u);
  *(v7 + 1368) = v54;
  *(v7 + 1376) = fd_lseek(v54, 0, 2);
  if ((v4 & 1) == 0)
  {
    v14 = v122;
    add_explicit = v123;
    if (*(v7 + 1288) <= 0x37u)
    {
      v29 = *__error();
      v55 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = *(v7 + 1288);
        v134.st_dev = 136315650;
        *&v134.st_mode = "data_map32_init_with_ctx";
        WORD2(v134.st_ino) = 1024;
        *(&v134.st_ino + 6) = 1223;
        HIWORD(v134.st_uid) = 2048;
        *&v134.st_gid = v56;
        v57 = "%s:%d: invalid header size %ld";
        v58 = v55;
        v59 = 28;
LABEL_104:
        _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, v57, &v134, v59);
      }

LABEL_30:
      v31 = v29;
LABEL_31:
      *__error() = v31;
      v32 = 0;
      goto LABEL_32;
    }

    *(v7 + 1296) = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
    v75 = (v4 >> 2) & 1;
    v76 = v75;
    if ((v4 & 0x80) != 0)
    {
      sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v7 + 1272), ".shadow", 0);
      if (sibling_with_suffix_protected)
      {
        v78 = sibling_with_suffix_protected;
        if (!fd_copyfile(sibling_with_suffix_protected, *(v7 + 1272), 0))
        {
          v75 = 0;
        }

        fd_release(v78);
        v76 = v75;
      }
    }

    if (fd_pread(*(v7 + 1272), *(v7 + 1296), 0x38uLL, 0) != 56)
    {
      v29 = *__error();
      v30 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v134.st_dev = 136315394;
      *&v134.st_mode = "data_map32_init_with_ctx";
      WORD2(v134.st_ino) = 1024;
      *(&v134.st_ino + 6) = 1242;
      v57 = "%s:%d: header pread error";
      goto LABEL_103;
    }

    v79 = *(v7 + 1296);
    if (v79[2] == 1)
    {
      if (fd_truncate(*(v7 + 1272), 56) == -1)
      {
        v29 = *__error();
        v30 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v134.st_dev = 136315394;
        *&v134.st_mode = "data_map32_init_with_ctx";
        WORD2(v134.st_ino) = 1024;
        *(&v134.st_ino + 6) = 1250;
        v57 = "%s:%d: fd_truncate error";
        goto LABEL_103;
      }

      *(v7 + 1288) = 56;
      v80 = *(v7 + 1296);
      *(v80 + 48) = 0;
      *(v80 + 44) = 0;
      *(v80 + 8) = 9;
      *(v80 + 24) = 0;
      *(v7 + 1392) = 0;
      v79 = v80;
    }

    v81 = v79[7];
    *(v7 + 220) = v81;
    v82 = v79[4];
    if (v82 < 3)
    {
      v83 = v82 + 1;
    }

    else
    {
      v83 = 0;
    }

    SIActivityJournalEvent(*(v7 + 1432), *(v7 + 1440), 1u, v83, v81);
    v84 = *(v7 + 1296);
    v85 = *(v84 + 20);
    *(v7 + 1328) = v85;
    *(v7 + 1360) = *(v7 + 1348) >> 2;
    *(v7 + 1392) = *(v84 + 24);
    *(v6 + 349) = *(v84 + 44);
    *(v7 + 1404) = *(v84 + 52);
    *(v7 + 1460) = *(v84 + 8) < 9u;
    if (v76)
    {
      v86 = *(v84 + 32);
      if (v85 < v86)
      {
        goto LABEL_99;
      }

      v87 = *(v84 + 32);
      if (v86 != v85)
      {
        if ((v4 & 2) == 0)
        {
          *(v84 + 20) = v86;
        }

        *(v7 + 1328) = v86;
      }

      v88 = *(v7 + 220);
      v89 = *(v84 + 40);
      if (v88 < v89)
      {
        goto LABEL_99;
      }

      if (v88 != v89)
      {
        if ((v4 & 2) == 0)
        {
          *(v84 + 24) = 0;
          *(v84 + 28) = v89;
          *(v84 + 20) = v87;
        }

        *(v7 + 220) = v89;
        *(v7 + 1392) = 0;
      }
    }

    v90 = MEMORY[0x1E69E9AC8];
    if (((*MEMORY[0x1E69E9AC8] + *(v7 + 1316) - 1) & -*MEMORY[0x1E69E9AC8]) <= 0x100000)
    {
      LODWORD(v91) = 0x100000;
    }

    else
    {
      v91 = (*MEMORY[0x1E69E9AC8] + *(v7 + 1316) - 1) & -*MEMORY[0x1E69E9AC8];
    }

    v92 = fd_mmap(*(v7 + 1304));
    *(v7 + 1320) = v92;
    if (v92 == -1)
    {
      v29 = *__error();
      v30 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v134.st_dev = 136315394;
      *&v134.st_mode = "data_map32_init_with_ctx";
      WORD2(v134.st_ino) = 1024;
      *(&v134.st_ino + 6) = 1310;
      v57 = "%s:%d: storage fd_mmap error";
      goto LABEL_103;
    }

    *(v7 + 1312) = v91;
    if (((*v90 + *(v7 + 1348) - 1) & -*v90) <= 0x100000)
    {
      LODWORD(v93) = 0x100000;
    }

    else
    {
      v93 = (*v90 + *(v7 + 1348) - 1) & -*v90;
    }

    v94 = fd_mmap(*(v7 + 1336));
    *(v7 + 1352) = v94;
    if (v94 == -1)
    {
      v29 = *__error();
      v30 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v134.st_dev = 136315394;
      *&v134.st_mode = "data_map32_init_with_ctx";
      WORD2(v134.st_ino) = 1024;
      *(&v134.st_ino + 6) = 1318;
      v57 = "%s:%d: offset fd_mmap error";
      goto LABEL_103;
    }

    *(v7 + 1344) = v93;
    if (((*v90 + *(v7 + 1376) - 1) & -*v90) <= 0x100000)
    {
      LODWORD(v95) = 0x100000;
    }

    else
    {
      v95 = (*v90 + *(v7 + 1376) - 1) & -*v90;
    }

    v96 = fd_mmap(*(v7 + 1368));
    *(v7 + 1384) = v96;
    if (v96 != -1)
    {
      *(v7 + 1380) = v95;
      v97 = *(v7 + 1296);
      if (!*(v97 + 28))
      {
        *(v97 + 28) = 1;
        *(v7 + 220) = 1;
      }

      v28 = 0;
      goto LABEL_140;
    }

    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v134.st_dev = 136315394;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1327;
    v57 = "%s:%d: offset fd_mmap error";
LABEL_103:
    v58 = v30;
    v59 = 18;
    goto LABEL_104;
  }

  v14 = v122;
  add_explicit = v123;
  if (fd_truncate(*(v7 + 1272), 56) == -1)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v134.st_dev = 136315394;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1145;
    v57 = "%s:%d: fd_truncate error";
    goto LABEL_103;
  }

  v60 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
  *(v7 + 1296) = v60;
  *(v7 + 1288) = 56;
  *v60 = 0x446174615000;
  v60[2] = 13;
  v60[3] = v121;
  *(v60 + 2) = 0;
  v61 = MEMORY[0x1E69E9AC8];
  if (fd_truncate(*(v7 + 1304), *MEMORY[0x1E69E9AC8]) == -1)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v134.st_dev = 136315394;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1160;
    v57 = "%s:%d: fd_truncate error";
    goto LABEL_103;
  }

  v62 = fd_mmap(*(v7 + 1304));
  *(v7 + 1320) = v62;
  if (v62 == -1)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v134.st_dev = 136315394;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1165;
    v57 = "%s:%d: storage fd_mmap error";
    goto LABEL_103;
  }

  *(v7 + 1312) = 0x100000;
  v63 = *v61;
  *(v7 + 1316) = *v61;
  if (fd_truncate(*(v7 + 1336), v63 & 0xFFFFFFFFFFFFFFFCLL) == -1)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v134.st_dev = 136315394;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1173;
    v57 = "%s:%d: fd_truncate error";
    goto LABEL_103;
  }

  v64 = fd_mmap(*(v7 + 1336));
  *(v7 + 1352) = v64;
  if (v64 == -1)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v134.st_dev = 136315394;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1178;
    v57 = "%s:%d: offsets fd_mmap error";
    goto LABEL_103;
  }

  *(v7 + 1344) = 0x100000;
  v65 = *v61 >> 2;
  v66 = *v61 & 0xFFFFFFFFFFFFFFFCLL;
  *(v7 + 1348) = *v61 & 0xFFFFFFFC;
  *(v7 + 1360) = v65;
  if (fd_truncate(*(v7 + 1368), v66) == -1)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v134.st_dev = 136315394;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1188;
    v57 = "%s:%d: fd_truncate error";
    goto LABEL_103;
  }

  v67 = fd_mmap(*(v7 + 1368));
  *(v7 + 1384) = v67;
  if (v67 == -1)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v134.st_dev = 136315394;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1194;
    v57 = "%s:%d: hash fd_mmap error";
    goto LABEL_103;
  }

  *(v7 + 1380) = 0x100000;
  *(v7 + 1376) = v66;
  v68 = *v61 >> 2;
  *(*(v7 + 1296) + 24) = v68;
  *(v7 + 1392) = v68;
  v69 = data_entry_store_16962(*(v7 + 1320), 0, dword_1E81997B0);
  v70 = *(v7 + 1296);
  v70[5] = v69;
  *(v7 + 1328) = v69;
  **(v7 + 1352) = 0;
  v70[7] = 1;
  *(v7 + 220) = 1;
  v71 = v70[4];
  if (v71 < 3)
  {
    v72 = v71 + 1;
  }

  else
  {
    v72 = 0;
  }

  SIActivityJournalEvent(*(v7 + 1432), *(v7 + 1440), 0, v72, 1u);
  v28 = 0;
LABEL_140:
  if (*(v7 + 1360) < *(v7 + 220))
  {
    v29 = *__error();
    v98 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v99 = *(v7 + 1360);
    v100 = *(v7 + 220);
    v134.st_dev = 136315906;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1347;
    HIWORD(v134.st_uid) = 2048;
    *&v134.st_gid = v99;
    *(&v134.st_rdev + 2) = 1024;
    *(&v134.st_rdev + 6) = v100;
    v57 = "%s:%d: invalid offset size 1 - %ld %u";
    goto LABEL_143;
  }

  v101 = *(v7 + 1296);
  if (*v101 != 0x446174615000)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v134.st_dev = 136315394;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1351;
    v57 = "%s:%d: invalid offset signature";
    goto LABEL_103;
  }

  v102 = *(v101 + 8);
  if (v102 - 8 >= 6 && v102 != 1)
  {
    v29 = *__error();
    v105 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v134.st_dev = 136315650;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1357;
    HIWORD(v134.st_uid) = 1024;
    v134.st_gid = v102;
    v57 = "%s:%d: invalid version %d";
    v58 = v105;
    v59 = 24;
    goto LABEL_104;
  }

  if (*(v101 + 12) != v121)
  {
    v29 = *__error();
    v103 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v104 = *(*(v7 + 1296) + 12);
    v134.st_dev = 136315906;
    *&v134.st_mode = "data_map32_init_with_ctx";
    WORD2(v134.st_ino) = 1024;
    *(&v134.st_ino + 6) = 1361;
    HIWORD(v134.st_uid) = 1024;
    v134.st_gid = v104;
    LOWORD(v134.st_rdev) = 1024;
    *(&v134.st_rdev + 2) = v121;
    v57 = "%s:%d: invalid extra_size %d %d";
    v58 = v103;
    v59 = 30;
    goto LABEL_104;
  }

  *(v7 + 224) = v121;
  if ((v28 & 1) == 0)
  {
    if (*(v7 + 1288) <= 0x37u)
    {
      v29 = *__error();
      v98 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v106 = *(v7 + 1288);
      v134.st_dev = 136315906;
      *&v134.st_mode = "data_map32_init_with_ctx";
      WORD2(v134.st_ino) = 1024;
      *(&v134.st_ino + 6) = 1369;
      HIWORD(v134.st_uid) = 1024;
      v134.st_gid = v106;
      LOWORD(v134.st_rdev) = 2048;
      *(&v134.st_rdev + 2) = 56;
      v57 = "%s:%d: invalid header size %u < %lu";
LABEL_143:
      v58 = v98;
      v59 = 34;
      goto LABEL_104;
    }

    if (*(v7 + 1316) < *(v7 + 1328))
    {
      v107 = *__error();
      v108 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        v109 = *(v7 + 1316);
        v110 = *(v7 + 1328);
        v134.st_dev = 136315906;
        *&v134.st_mode = "data_map32_init_with_ctx";
        WORD2(v134.st_ino) = 1024;
        *(&v134.st_ino + 6) = 1374;
        HIWORD(v134.st_uid) = 1024;
        v134.st_gid = v109;
        LOWORD(v134.st_rdev) = 1024;
        *(&v134.st_rdev + 2) = v110;
        v111 = "%s:%d: invalid storage size 1 (%u < %u)";
        v112 = v108;
        v113 = 30;
LABEL_185:
        _os_log_error_impl(&dword_1C278D000, v112, OS_LOG_TYPE_ERROR, v111, &v134, v113);
      }

LABEL_181:
      v31 = v107;
      v14 = v122;
      add_explicit = v123;
      goto LABEL_31;
    }

    if (!v120 || (v4 & 0x80) != 0 || !*(v101 + 16) || (v114 = *(v7 + 1392), !v114) || (v115 = 4 * v114, v116 = *(v7 + 1376), v115 > v116))
    {
      if ((_data_map32_rehash(v7) & 1) == 0)
      {
        v107 = *__error();
        v117 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_181;
        }

        v134.st_dev = 136315394;
        *&v134.st_mode = "data_map32_init_with_ctx";
        WORD2(v134.st_ino) = 1024;
        *(&v134.st_ino + 6) = 1380;
        v111 = "%s:%d: re-build hash error";
        goto LABEL_184;
      }

      unlinkat(*a1, v143, 2048);
      v116 = *(v7 + 1376);
      v115 = 4 * *(v7 + 1392);
    }

    if (v115 > v116)
    {
      v107 = *__error();
      v117 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_181;
      }

      v134.st_dev = 136315394;
      *&v134.st_mode = "data_map32_init_with_ctx";
      WORD2(v134.st_ino) = 1024;
      *(&v134.st_ino + 6) = 1388;
      v111 = "%s:%d: invalid hash size 1";
LABEL_184:
      v112 = v117;
      v113 = 18;
      goto LABEL_185;
    }

    v32 = 1;
LABEL_112:
    v14 = v122;
    add_explicit = v123;
    goto LABEL_32;
  }

  v32 = 1;
LABEL_32:
  v33 = threadData[9 * v127 + 1] + 320 * v126;
  *(v33 + 312) = v14;
  v34 = *(v33 + 232);
  if (v34)
  {
    v34(*(v33 + 288));
  }

  dropThreadId(v127, 0, add_explicit + 1);
  if ((v32 & 1) == 0)
  {
    goto LABEL_43;
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v135 = 0u;
  memset(&v134, 0, sizeof(v134));
  v35 = *__error();
  v36 = _SILogForLogForCategory(7);
  v37 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v36, v37))
  {
    v38 = fd_name(*(v7 + 1272), &v134, 0x100uLL);
    v39 = *(v7 + 220) - 1;
    buf.st_dev = 136315394;
    *&buf.st_mode = v38;
    WORD2(buf.st_ino) = 1024;
    *(&buf.st_ino + 6) = v39;
    _os_log_impl(&dword_1C278D000, v36, v37, "Opened map %s with counts: %d", &buf, 0x12u);
  }

  *__error() = v35;
  v40 = *(v7 + 1296);
  if (v40)
  {
    v41 = *(v40 + 16);
    if (v41 < 3)
    {
      v42 = v41 + 1;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  SIActivityJournalEvent(*(v7 + 1432), *(v7 + 1440), 1u, v42, *(v7 + 220));
  result = v7;
LABEL_44:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t data_entry_store_16962(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v4 = *a3;
  v5 = *a3 >> 28;
  if (v5)
  {
    v8 = (a1 + a2);
    *v8 = v4 | 0x80;
    v8[1] = (v4 >> 7) | 0x80;
    v8[2] = (v4 >> 14) | 0x80;
    v8[3] = (v4 >> 21) | 0x80;
    v7 = a2 + 5;
    v8[4] = v5;
  }

  else if (v4 >= 0x200000)
  {
    v9 = (a1 + a2);
    *v9 = v4 | 0x80;
    v9[1] = (v4 >> 7) | 0x80;
    v9[2] = (v4 >> 14) | 0x80;
    v7 = a2 + 4;
    v9[3] = v4 >> 21;
  }

  else
  {
    v6 = (a1 + a2);
    if (v4 >= 0x4000)
    {
      *v6 = v4 | 0x80;
      v6[1] = (v4 >> 7) | 0x80;
      v7 = a2 + 3;
      v6[2] = v4 >> 14;
    }

    else if (v4 >= 0x80)
    {
      *v6 = v4 | 0x80;
      v7 = a2 + 2;
      v6[1] = v4 >> 7;
    }

    else
    {
      v7 = a2 + 1;
      *v6 = v4;
    }
  }

  memcpy((a1 + v7), *(a3 + 1), *a3);
  return *a3 + v7;
}

uint64_t _data_map32_rehash(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  *(a1 + 1400) = 0;
  v2 = *(a1 + 220) - *(a1 + 1396);
  v3 = *__error();
  v4 = _SILogForLogForCategory(0);
  v5 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 220);
    v7 = *(a1 + 1396);
    v8 = *(a1 + 1392);
    *buf = 134219008;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 1024;
    *&buf[26] = v2;
    *&buf[30] = 1024;
    LODWORD(v66) = v8;
    _os_log_impl(&dword_1C278D000, v4, v5, "rehash %p max id: %d deletes: %d count: %d hash_size: %d", buf, 0x24u);
  }

  *__error() = v3;
  v9 = *(a1 + 1296);
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10 < 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 3u, v11, *(a1 + 220));
  v12 = *(a1 + 1384);
  v13 = 4 * *(a1 + 1392);
  fd_system_status_stall_if_busy();
  msync(v12, v13, 4);
  if (fd_truncate(*(a1 + 1368), 0) == -1)
  {
    goto LABEL_38;
  }

  v14 = 2 * v2;
  if (2 * v2 <= (*MEMORY[0x1E69E9AC8] >> 2))
  {
    v14 = *MEMORY[0x1E69E9AC8] >> 2;
  }

  *(a1 + 1392) = v14;
  v15 = 4 * v14;
  if (fd_truncate(*(a1 + 1368), v15) == -1)
  {
    goto LABEL_38;
  }

  if ((*(a1 + 1458) & 1) == 0)
  {
    _data_map32_dirty(a1);
    *(a1 + 1458) = 1;
  }

  *(a1 + 1376) = v15;
  v16 = *(a1 + 1380);
  if (v15 <= v16)
  {
    goto LABEL_19;
  }

  v17 = v15 & 0xFFFFFFFC;
  v18 = *(a1 + 1380);
  do
  {
    v19 = v18;
    v18 *= 2;
  }

  while (v19 < v17);
  munmap(*(a1 + 1384), v16);
  *(a1 + 1380) = 0;
  *(a1 + 1384) = -1;
  v20 = fd_mmap(*(a1 + 1368));
  *(a1 + 1384) = v20;
  if (v20 == -1)
  {
LABEL_38:
    v42 = *__error();
    v43 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_data_map32_rehash";
      *&buf[12] = 1024;
      *&buf[14] = 632;
      *&buf[18] = 2048;
      *&buf[20] = a1;
      _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, "%s:%d: re-build hash error %p", buf, 0x1Cu);
    }

    v44 = __error();
    result = 0;
    *v44 = v42;
    goto LABEL_41;
  }

  *(a1 + 1380) = v19;
LABEL_19:
  v21 = *(a1 + 220);
  if (v21 >= 2)
  {
    for (i = 1; i < v21; ++i)
    {
      v23 = *(a1 + 1352);
      if (!v23)
      {
        goto LABEL_38;
      }

      v24 = *(v23 + 4 * i);
      if (v24 != 1)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v25 = *(a1 + 1328);
        if (v25 <= v24)
        {
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          memset(buf, 0, sizeof(buf));
          v30 = *__error();
          v31 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = *(a1 + 1328);
            v33 = fd_name(*(a1 + 1272), buf, 0x100uLL);
            *__s = 136316418;
            *&__s[4] = "_data_map32_get_data_entry";
            *&__s[12] = 1024;
            *&__s[14] = 446;
            *&__s[18] = 2048;
            *&__s[20] = v24;
            *&__s[28] = 2048;
            *&__s[30] = v32;
            *&__s[38] = 2048;
            *&__s[40] = a1;
            LOWORD(v81) = 2080;
            *(&v81 + 2) = v33;
            v34 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
            v35 = __s;
            v36 = v31;
            v37 = 58;
            goto LABEL_43;
          }

LABEL_37:
          *__error() = v30;
          goto LABEL_38;
        }

        data_entry_restore_32(*(a1 + 1320), v24, v25, &v48, &v50);
        if (v50 == 1)
        {
          v90 = 0;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v81 = 0u;
          v38 = 5;
          v39 = v24;
          memset(__s, 0, sizeof(__s));
          do
          {
            if (v39 >= *(a1 + 1328))
            {
              break;
            }

            v40 = strlen(__s);
            sprintf(&__s[v40], "%d ", *(*(a1 + 1320) + v39++));
            --v38;
          }

          while (v38);
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          memset(buf, 0, sizeof(buf));
          v30 = *__error();
          v41 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_37;
          }

          v46 = fd_name(*(a1 + 1272), buf, 0x100uLL);
          v47 = *(a1 + 1328);
          *v51 = 136316674;
          v52 = "_data_map32_get_data_entry";
          v53 = 1024;
          v54 = 442;
          v55 = 2080;
          v56 = v46;
          v57 = 2048;
          v58 = v24;
          v59 = 2048;
          v60 = v47;
          v61 = 2048;
          v62 = v48;
          v63 = 2080;
          v64 = __s;
          v34 = "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s";
          v35 = v51;
          v36 = v41;
          v37 = 68;
LABEL_43:
          _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, v34, v35, v37);
          goto LABEL_37;
        }

        v26 = *(a1 + 224);
        if (v48 < v26)
        {
          goto LABEL_38;
        }

        v27 = data_entry_hash<unsigned int,false,false,true>(v48, v49, v26, *(a1 + 1460));
        bucket_entry = _data_map32_get_bucket_entry(a1, v27, i, 0, 0);
        if (!bucket_entry || *bucket_entry)
        {
          goto LABEL_38;
        }

        *bucket_entry = i;
        v21 = *(a1 + 220);
      }
    }
  }

  result = 1;
LABEL_41:
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

void data_map32_destroy(uint64_t a1)
{
  if (a1)
  {
    makeThreadId();
    if ((*(a1 + 1256) + 1) >= 2)
    {
      v48 = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
      v46 = HIDWORD(v10);
      v47 = v10;
      v44 = v12;
      v45 = v11;
      v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
      v14 = *(v13 + 312);
      v15 = *(v13 + 224);
      if (v15)
      {
        v15(*(v13 + 288));
      }

      v43 = v47;
      v42 = v46;
      v41 = __PAIR64__(v45, v44);
      if (_setjmp(v13))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v40 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v40, 2u);
        }

        *(v13 + 312) = v14;
        CIOnThreadCleanUpReset(v41);
        dropThreadId(v43, 1, add_explicit + 1);
        CICleanUpReset(v43, HIDWORD(v41));
        v16 = 0;
      }

      else
      {
        v20 = *(*(a1 + 1256) + 60);
        v48 = 1;
        v21 = threadData[9 * v43 + 1] + 320 * v42;
        *(v21 + 312) = v14;
        v22 = *(v21 + 232);
        if (v22)
        {
          v22(*(v21 + 288));
        }

        dropThreadId(v43, 0, add_explicit + 1);
        v16 = v20;
      }

      v23 = v16;
      if ((v48 & 1) == 0)
      {
        v23 = *(a1 + 1264);
      }

      munmap(*(a1 + 1256), v23);
      *(a1 + 1256) = -1;
      fd_release(*(a1 + 1272));
      *(a1 + 1272) = 0;
    }

    else
    {
      v2 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, v2 + 1);
      v46 = HIDWORD(v3);
      v47 = v3;
      v44 = v5;
      v45 = v4;
      v6 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
      v7 = *(v6 + 312);
      v8 = *(v6 + 224);
      if (v8)
      {
        v8(*(v6 + 288));
      }

      v43 = v47;
      v42 = v46;
      v41 = __PAIR64__(v45, v44);
      if (_setjmp(v6))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v40 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v40, 2u);
        }

        *(v6 + 312) = v7;
        CIOnThreadCleanUpReset(v41);
        dropThreadId(v43, 1, v2 + 1);
        CICleanUpReset(v43, HIDWORD(v41));
      }

      else
      {
        v17 = *(a1 + 1296);
        if (v17)
        {
          v18 = *(v17 + 16);
          if (v18 < 3)
          {
            v19 = v18 + 1;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }

        SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 2u, v19, *(a1 + 220));
        v24 = *(a1 + 1296);
        if (v24 && !*(v24 + 16))
        {
          if (*(a1 + 1458) == 1)
          {
            v25 = *(a1 + 1384);
            v26 = 4 * *(a1 + 1392);
            fd_system_status_stall_if_busy();
            msync(v25, v26, 4);
            _fd_unlink_with_origin(*(a1 + 1368), 0);
            munmap(*(a1 + 1384), *(a1 + 1380));
            *(a1 + 1384) = -1;
          }

          if (*(a1 + 1457) == 1)
          {
            v27 = *(a1 + 1320);
            v28 = *(a1 + 1328);
            fd_system_status_stall_if_busy();
            msync(v27, v28, 4);
            munmap(*(a1 + 1320), *(a1 + 1312));
            *(a1 + 1320) = -1;
            fd_truncate(*(a1 + 1304), *(*(a1 + 1296) + 20));
          }

          if (*(a1 + 1459) == 1)
          {
            v29 = *(a1 + 1352);
            v30 = 4 * *(a1 + 220);
            fd_system_status_stall_if_busy();
            msync(v29, v30, 4);
            munmap(*(a1 + 1352), *(a1 + 1344));
            *(a1 + 1352) = -1;
            fd_truncate(*(a1 + 1336), 4 * *(a1 + 220));
          }
        }

        v31 = threadData[9 * v43 + 1] + 320 * v42;
        *(v31 + 312) = v7;
        v32 = *(v31 + 232);
        if (v32)
        {
          v32(*(v31 + 288));
        }

        dropThreadId(v43, 0, v2 + 1);
      }

      v33 = *(a1 + 1296);
      if (v33)
      {
        free(v33);
        *(a1 + 1296) = 0;
      }

      fd_release(*(a1 + 1272));
      *(a1 + 1272) = 0;
      v34 = *(a1 + 1320);
      if (v34 != -1)
      {
        munmap(v34, *(a1 + 1312));
        *(a1 + 1320) = -1;
        *(a1 + 1312) = 0;
      }

      fd_release(*(a1 + 1304));
      *(a1 + 1304) = 0;
      v35 = *(a1 + 1352);
      if (v35 != -1)
      {
        munmap(v35, *(a1 + 1344));
        *(a1 + 1352) = -1;
        *(a1 + 1344) = 0;
      }

      fd_release(*(a1 + 1336));
      *(a1 + 1336) = 0;
      v36 = *(a1 + 1384);
      if (v36 != -1)
      {
        munmap(v36, *(a1 + 1380));
        *(a1 + 1384) = -1;
        *(a1 + 1380) = 0;
      }

      fd_release(*(a1 + 1368));
      *(a1 + 1368) = 0;
    }

    v37 = *(a1 + 1280);
    if (v37)
    {
      fd_release(v37);
      *(a1 + 1280) = 0;
    }

    v38 = *(a1 + 1448);
    if (v38)
    {
      v39 = v38[2];
      if (v39)
      {
        CFRelease(v39);
      }

      free(v38);
      *(a1 + 1448) = 0;
    }

    if ((*(a1 + 1461) & 1) == 0)
    {
      db_rwlock_destroy(a1);
    }

    free(a1);
  }
}

uint64_t _data_map32_dirty(uint64_t result)
{
  v1 = *(result + 1296);
  if (*(v1 + 16))
  {
    v2 = result;
    *(v1 + 16) = 0;
    fd_pwrite(*(result + 1272), v1, 0x38uLL, 0);
    v3 = *(v2 + 1272);

    return fd_sync(v3, 0);
  }

  return result;
}

uint64_t data_entry_restore_32(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, _BYTE *a5)
{
  v5 = a2;
  v6 = a2 + 1;
  v7 = *(result + a2);
  if ((*(result + a2) & 0x80000000) == 0)
  {
    v5 = a2 + 1;
    goto LABEL_16;
  }

  if (v6 >= a3)
  {
    goto LABEL_15;
  }

  v8 = a2 + 2;
  v9 = *(result + v6);
  v10 = *(result + v6);
  if ((v9 & 0x80000000) == 0)
  {
    v7 = v7 & 0x7F | (v10 << 7);
    v5 = a2 + 2;
    goto LABEL_16;
  }

  if (v8 >= a3)
  {
    goto LABEL_15;
  }

  v11 = a2 + 3;
  v12 = *(result + v8);
  v13 = *(result + v8);
  if ((v12 & 0x80000000) == 0)
  {
    v5 = a2 + 3;
    v7 = ((v10 & 0x7F) << 7) | (v13 << 14) | v7 & 0x7F;
    goto LABEL_16;
  }

  if (v11 >= a3)
  {
    goto LABEL_15;
  }

  v14 = a2 + 4;
  v15 = *(result + v11);
  v16 = *(result + v11);
  if ((v15 & 0x80000000) == 0)
  {
    v5 = a2 + 4;
    v7 = ((v13 & 0x7F) << 14) | (v16 << 21) | ((v10 & 0x7F) << 7) | v7 & 0x7F;
    goto LABEL_16;
  }

  if (v14 >= a3)
  {
LABEL_15:
    v7 = 0;
    *a5 = 1;
  }

  else
  {
    v17 = *(result + v14);
    if (v17 < 0)
    {
      if (__valid_fs(-1))
      {
        v18 = __si_assert_copy_extra_332();
        si_analytics_log_7109(v18, v19, v20, v21, v22, v23, v24, v25, "VIntUtils.h");
        free(v18);
        v26 = 2816;
      }

      else
      {
        v26 = 3072;
      }

      *v26 = -559038737;
      abort();
    }

    v5 = a2 + 5;
    v7 = ((v16 & 0x7F) << 21) | (v17 << 28) | ((v13 & 0x7F) << 14) | ((v10 & 0x7F) << 7) | v7 & 0x7F;
  }

LABEL_16:
  *a4 = v7;
  if (v5 + v7 <= a3)
  {
    *(a4 + 8) = result + v5;
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

uint64_t data_map32_flush(uint64_t a1)
{
  if (_data_map32_rdlock(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v26 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v24 = HIDWORD(v4);
  v25 = v4;
  v23 = __PAIR64__(v5, v6);
  v7 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v8 = *(v7 + 312);
  v9 = *(v7 + 224);
  if (v9)
  {
    v9(*(v7 + 288));
  }

  v22 = v25;
  v21 = v24;
  v20 = v23;
  if (_setjmp(v7))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v19, 2u);
    }

    *(v7 + 312) = v8;
    CIOnThreadCleanUpReset(v20);
    dropThreadId(v22, 1, add_explicit + 1);
    CICleanUpReset(v22, HIDWORD(v20));
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = *(a1 + 1296);
    if (v11)
    {
      v12 = *(v11 + 16);
      if (v12 < 3)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 4u, v13, *(a1 + 220));
    if (*(*(a1 + 1296) + 16))
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = _data_map32_sync_data(a1, 1);
    }

    v26 = 1;
    v14 = threadData[9 * v22 + 1] + 320 * v21;
    *(v14 + 312) = v8;
    v15 = *(v14 + 232);
    if (v15)
    {
      v15(*(v14 + 288));
    }

    dropThreadId(v22, 0, add_explicit + 1);
  }

  if ((v26 & 1) == 0)
  {
    *(a1 + 1464) = 22;
  }

  v16 = *(a1 + 1296);
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

  SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 4u, v18, *(a1 + 220));
  _data_map32_unlock(a1);
  return v10;
}

uint64_t data_map32_id_get_with_key_noextra(uint64_t a1, unsigned __int8 *a2, size_t a3)
{
  v99 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1460) == 1)
  {
    v6 = LegacyHash(a2, a3);
  }

  else
  {
    v6 = commonHash(a3, a2);
  }

  v7 = v6;
  v57 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v9 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v55 = HIDWORD(v9);
  v56 = v9;
  v54 = __PAIR64__(v10, v11);
  v12 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v53 = v56;
  v52 = v55;
  v51 = v54;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v73) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v73, 2u);
    }

    *(v12 + 312) = v13;
    CIOnThreadCleanUpReset(v51);
    dropThreadId(v53, 1, add_explicit + 1);
    CICleanUpReset(v53, HIDWORD(v51));
    v15 = 0;
  }

  else
  {
    if (_data_map32_rdlock(a1))
    {
      v15 = 0;
    }

    else
    {
      v47 = a2;
      v48 = add_explicit;
      v16 = *(a1 + 1392);
      v17 = v7 % v16;
      v18 = v7 % v16;
      v46 = *(a1 + 224);
      while (1)
      {
        v19 = *(a1 + 1384);
        v20 = *(v19 + 4 * v18);
        if (!v20)
        {
          break;
        }

        v21 = v18;
        if (*(a1 + 220) <= v20)
        {
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
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v30 = *__error();
          v31 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v35 = *(a1 + 220);
            v36 = fd_name(*(a1 + 1272), &v73, 0x100uLL);
            LODWORD(v89[0]) = 136316418;
            *(v89 + 4) = "_data_map32_get_offset_entry";
            WORD2(v89[1]) = 1024;
            *(&v89[1] + 6) = 422;
            WORD1(v89[2]) = 1024;
            HIDWORD(v89[2]) = v20;
            LOWORD(v89[3]) = 1024;
            *(&v89[3] + 2) = v35;
            HIWORD(v89[3]) = 2048;
            v89[4] = a1;
            LOWORD(v89[5]) = 2080;
            *(&v89[5] + 2) = v36;
            _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", v89, 0x32u);
          }

          *__error() = v30;
        }

        else
        {
          v22 = *(*(a1 + 1352) + 4 * v20);
          if (v22 != 1)
          {
            v49 = 0;
            v50 = 0;
            v58 = 0;
            v23 = *(a1 + 1328);
            if (v23 <= v22)
            {
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
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v33 = *__error();
              v34 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v37 = *(a1 + 1328);
                v38 = fd_name(*(a1 + 1272), &v73, 0x100uLL);
                LODWORD(v89[0]) = 136316418;
                *(v89 + 4) = "_data_map32_get_data_entry";
                WORD2(v89[1]) = 1024;
                *(&v89[1] + 6) = 446;
                WORD1(v89[2]) = 2048;
                *(&v89[2] + 4) = v22;
                WORD2(v89[3]) = 2048;
                *(&v89[3] + 6) = v37;
                HIWORD(v89[4]) = 2048;
                v89[5] = a1;
                LOWORD(v89[6]) = 2080;
                *(&v89[6] + 2) = v38;
                _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", v89, 0x3Au);
              }

              *__error() = v33;
            }

            else
            {
              data_entry_restore_32(*(a1 + 1320), v22, v23, &v49, &v58);
              v24 = v58;
              if (v58 == 1)
              {
                v98 = 0;
                v96 = 0u;
                v97 = 0u;
                v94 = 0u;
                v95 = 0u;
                v92 = 0u;
                v93 = 0u;
                v90 = 0u;
                v91 = 0u;
                v25 = 5;
                v26 = v22;
                memset(v89, 0, sizeof(v89));
                do
                {
                  if (v26 >= *(a1 + 1328))
                  {
                    break;
                  }

                  v27 = strlen(v89);
                  sprintf(v89 + v27, "%d ", *(*(a1 + 1320) + v26++));
                  --v25;
                }

                while (v25);
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
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
                v28 = *__error();
                v29 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v39 = fd_name(*(a1 + 1272), &v73, 0x100uLL);
                  v40 = *(a1 + 1328);
                  *buf = 136316674;
                  v60 = "_data_map32_get_data_entry";
                  v61 = 1024;
                  v62 = 442;
                  v63 = 2080;
                  v64 = v39;
                  v65 = 2048;
                  v66 = v22;
                  v67 = 2048;
                  v68 = v40;
                  v69 = 2048;
                  v70 = v49;
                  v71 = 2080;
                  v72 = v89;
                  _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
                }

                *__error() = v28;
                v24 = 1;
              }

              if ((v24 & 1) == 0 && v46 + a3 == v49 && !memcmp(v47, (v50 + v46), a3))
              {
                v15 = *(v19 + 4 * v21);
                goto LABEL_40;
              }
            }
          }
        }

        v15 = 0;
        if (v21 + 1 == v16)
        {
          v32 = 0;
        }

        else
        {
          v32 = v21 + 1;
        }

        v18 = v32;
        if (v32 == v17)
        {
          goto LABEL_40;
        }
      }

      v15 = 0;
LABEL_40:
      add_explicit = v48;
    }

    if (*(a1 + 1448))
    {
      os_unfair_lock_lock((a1 + 1444));
      v45 = *(a1 + 1448);
      if (v45)
      {
        bit_vector_set_13535(v45, v15);
      }

      os_unfair_lock_unlock((a1 + 1444));
    }

    v57 = 1;
    v41 = threadData[9 * v53 + 1] + 320 * v52;
    *(v41 + 312) = v13;
    v42 = *(v41 + 232);
    if (v42)
    {
      v42(*(v41 + 288));
    }

    dropThreadId(v53, 0, add_explicit + 1);
  }

  if ((v57 & 1) == 0)
  {
    v15 = 0;
    *(a1 + 1464) = 22;
  }

  _data_map32_unlock(a1);
  v43 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t data_map32_get_extra_with_key(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  v111 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v69 = 0;
  if (*(a1 + 1460) == 1)
  {
    v8 = LegacyHash(a2, a3);
  }

  else
  {
    v8 = commonHash(a3, a2);
  }

  v9 = v8;
  if (_data_map32_rdlock(a1))
  {
    goto LABEL_49;
  }

  v68 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v66 = HIDWORD(v11);
  v67 = v11;
  v65 = __PAIR64__(v12, v13);
  v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v15 = *(v14 + 312);
  v16 = *(v14 + 224);
  if (v16)
  {
    v16(*(v14 + 288));
  }

  v64 = v67;
  v63 = v66;
  v62 = v65;
  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v85) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v85, 2u);
    }

    *(v14 + 312) = v15;
    CIOnThreadCleanUpReset(v62);
    dropThreadId(v64, 1, add_explicit + 1);
    CICleanUpReset(v64, HIDWORD(v62));
    goto LABEL_47;
  }

  v58 = v15;
  v59 = add_explicit;
  v17 = *(a1 + 1392);
  v18 = v9 % v17;
  v19 = v9 % v17;
  v57 = *(a1 + 224);
  v56 = v57 + v5;
  do
  {
    v20 = *(a1 + 1384);
    v21 = *(v20 + 4 * v19);
    if (!v21)
    {
      break;
    }

    v22 = v19;
    if (*(a1 + 1448))
    {
      os_unfair_lock_lock((a1 + 1444));
      v47 = *(a1 + 1448);
      if (v47)
      {
        bit_vector_set_13535(v47, v21);
      }

      os_unfair_lock_unlock((a1 + 1444));
      v23 = *(v20 + 4 * v22);
    }

    else
    {
      v23 = *(v20 + 4 * v19);
    }

    if (*(a1 + 220) <= v23)
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
      v34 = *__error();
      v35 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        *__error() = v34;
        goto LABEL_32;
      }

      log = v35;
      v43 = *(a1 + 220);
      v44 = fd_name(*(a1 + 1272), &v85, 0x100uLL);
      *__s = 136316418;
      *&__s[4] = "_data_map32_get_offset_entry";
      *&__s[12] = 1024;
      *&__s[14] = 422;
      *&__s[18] = 1024;
      *&__s[20] = v23;
      *&__s[24] = 1024;
      *&__s[26] = v43;
      *&__s[30] = 2048;
      *&__s[32] = a1;
      *&__s[40] = 2080;
      *&__s[42] = v44;
      v40 = log;
      v41 = "%s:%d: invalid data id %d max %u %p %s";
      v42 = 50;
LABEL_40:
      _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, v41, __s, v42);
      goto LABEL_31;
    }

    v24 = *(a1 + 1352);
    if (v24)
    {
      v25 = *(v24 + 4 * v23);
      v26 = v25;
      if (v25 != 1)
      {
        v60 = 0;
        v61 = 0;
        v70 = 0;
        v27 = *(a1 + 1328);
        if (v27 <= v25)
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
          v34 = *__error();
          v37 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          v53 = v37;
          v38 = *(a1 + 1328);
          v39 = fd_name(*(a1 + 1272), &v85, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_data_entry";
          *&__s[12] = 1024;
          *&__s[14] = 446;
          *&__s[18] = 2048;
          *&__s[20] = v26;
          *&__s[28] = 2048;
          *&__s[30] = v38;
          *&__s[38] = 2048;
          *&__s[40] = a1;
          *&__s[48] = 2080;
          *&__s[50] = v39;
          v40 = v53;
          v41 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
          v42 = 58;
          goto LABEL_40;
        }

        data_entry_restore_32(*(a1 + 1320), v25, v27, &v60, &v70);
        v28 = v70;
        if (v70 == 1)
        {
          v55 = v5;
          v110 = 0;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v29 = 5;
          v30 = v26;
          memset(__s, 0, sizeof(__s));
          do
          {
            if (v30 >= *(a1 + 1328))
            {
              break;
            }

            v31 = strlen(__s);
            sprintf(&__s[v31], "%d ", *(*(a1 + 1320) + v30++));
            --v29;
          }

          while (v29);
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
          v32 = *__error();
          v33 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v45 = fd_name(*(a1 + 1272), &v85, 0x100uLL);
            v46 = *(a1 + 1328);
            *buf = 136316674;
            v72 = "_data_map32_get_data_entry";
            v73 = 1024;
            v74 = 442;
            v75 = 2080;
            v76 = v45;
            v77 = 2048;
            v78 = v26;
            v79 = 2048;
            v80 = v46;
            v81 = 2048;
            v82 = v60;
            v83 = 2080;
            v84 = __s;
            _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
          }

          *__error() = v32;
          v5 = v55;
          v28 = 1;
        }

        if ((v28 & 1) == 0 && v56 == v60 && !memcmp(a2, (v61 + v57), v5))
        {
          v48 = *(a1 + 224);
          __memcpy_chk();
          HIDWORD(v69) = v48;
          *a4 = 1;
          break;
        }
      }
    }

LABEL_32:
    if (v22 + 1 == v17)
    {
      v36 = 0;
    }

    else
    {
      v36 = v22 + 1;
    }

    v19 = v36;
  }

  while (v36 != v18);
  v68 = 1;
  v49 = threadData[9 * v64 + 1] + 320 * v63;
  *(v49 + 312) = v58;
  v50 = *(v49 + 232);
  if (v50)
  {
    v50(*(v49 + 288));
  }

  dropThreadId(v64, 0, v59 + 1);
LABEL_47:
  if ((v68 & 1) == 0)
  {
    *a4 = 0;
    *(a1 + 1464) = 22;
  }

LABEL_49:
  _data_map32_unlock(a1);
  result = v69;
  v52 = *MEMORY[0x1E69E9840];
  return result;
}

void _data_map32_set_seen_id(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1448))
  {
    os_unfair_lock_lock((a1 + 1444));
    v5 = *(a1 + 1448);
    if (v5)
    {
      bit_vector_set_13535(v5, a2);
    }

    os_unfair_lock_unlock((a1 + 1444));
  }
}

uint64_t _data_map32_sync_header_to_tmp(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v31 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks_16910, a1, 0, add_explicit + 1);
  v29 = HIDWORD(v3);
  v30 = v3;
  v27 = v5;
  v28 = v4;
  v6 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v7 = *(v6 + 312);
  v8 = *(v6 + 224);
  if (v8)
  {
    v8(*(v6 + 288));
  }

  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v6 + 312) = v7;
    CIOnThreadCleanUpReset(v27);
    dropThreadId(v30, 1, add_explicit + 1);
    result = CICleanUpReset(v30, v28);
  }

  else
  {
    if (!*(a1 + 1464) && *(*(a1 + 1296) + 16) != 1)
    {
      v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
      v11 = *(a1 + 1296);
      v12 = *(v11 + 6);
      v13 = v11[2];
      v14 = *v11;
      *(v10 + 1) = v11[1];
      *(v10 + 2) = v13;
      *(v10 + 6) = v12;
      *v10 = v14;
      *(v10 + 4) = *(v10 + 20);
      *(v10 + 10) = *(v10 + 7);
      *(v10 + 5) = *(a1 + 1328);
      *(v10 + 7) = *(a1 + 220);
      *(v10 + 6) = *(a1 + 1392);
      *(v10 + 4) = 2;
      sibling_with_prefix_protected = fd_create_sibling_with_prefix_protected(*(a1 + 1272), "tmp.", 0);
      fd_pwrite(sibling_with_prefix_protected, v10, 0x38uLL, 0);
      fd_sync(sibling_with_prefix_protected, 1);
      fd_release(sibling_with_prefix_protected);
      v16 = *(a1 + 1296);
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

      SIActivityJournalEvent(*(a1 + 1432), *(a1 + 1440), 0xBu, v18, *(a1 + 220));
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
      *buf = 0u;
      v37 = 0u;
      v19 = *__error();
      v20 = _SILogForLogForCategory(7);
      v21 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = fd_name(*(a1 + 1272), buf, 0x100uLL);
        v23 = *(a1 + 220) - 1;
        *v32 = 136315394;
        v33 = v22;
        v34 = 1024;
        v35 = v23;
        _os_log_impl(&dword_1C278D000, v20, v21, "%s complete write tmp header with count: %d", v32, 0x12u);
      }

      *__error() = v19;
      free(v10);
    }

    v31 = 1;
    v24 = threadData[9 * v30 + 1] + 320 * v29;
    *(v24 + 312) = v7;
    v25 = *(v24 + 232);
    if (v25)
    {
      v25(*(v24 + 288));
    }

    result = dropThreadId(v30, 0, add_explicit + 1);
  }

  if ((v31 & 1) == 0)
  {
    *(a1 + 1464) = 22;
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _data_map32_garbage_compact_collect(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5)
{
  v179 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 220);
  bzero(v140, 0x400uLL);
  bzero(__str, 0x400uLL);
  v180.location = 0;
  v9 = *(a1 + 1462);
  *a5 = 842150450;
  *(a5 + 8) = 0;
  *(a5 + 16) = v8;
  v115 = v8 - 1;
  v180.length = (v8 - 1);
  v10 = a1;
  v116 = a2;
  v11 = *(a2 + 16);
  v12 = a5;
  *(a5 + 24) = CFBitVectorGetCountOfBit(v11, v180, 1u);
  v13 = fd_name(*(a1 + 1304), v140, 0x400uLL);
  snprintf(__str, 0x400uLL, "tmp.%s", v13);
  if (v9)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  sibling_protected = fd_create_sibling_protected(*(a1 + 1304), __str, 1538, v14);
  if (fd_truncate(sibling_protected, *(a1 + 1316)) == -1)
  {
    v38 = __error();
    v39 = 0;
    if (*v38)
    {
      v40 = *v38;
    }

    else
    {
      v40 = 0xFFFFFFFFLL;
    }

    v41 = -1;
    v42 = 0;
    v23 = 0;
    v43 = -1;
    goto LABEL_95;
  }

  v16 = *MEMORY[0x1E69E9AC8];
  v17 = *(a1 + 1312);
  v18 = fd_mmap(sibling_protected);
  if (v18 == -1)
  {
    v44 = *__error();
    if (v44)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0xFFFFFFFFLL;
    }

    v46 = *__error();
    v47 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "_data_map32_garbage_compact_collect";
      *&buf[12] = 1024;
      *&buf[14] = 2678;
      _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: storage fd_mmap error", buf, 0x12u);
    }

    v48 = v45;
    v49 = __error();
    v39 = 0;
    *v49 = v46;
    v41 = -1;
    v42 = 0;
    v23 = 0;
    v43 = -1;
    v40 = v48;
    goto LABEL_95;
  }

  v19 = v14;
  v20 = v18;
  v21 = *(a1 + 1312);
  v22 = fd_name(*(a1 + 1336), v140, 0x400uLL);
  snprintf(__str, 0x400uLL, "tmp.%s", v22);
  v23 = fd_create_sibling_protected(*(a1 + 1336), __str, 1538, v19);
  if (fd_truncate(v23, *(a1 + 1348)) == -1)
  {
LABEL_27:
    v42 = 0;
    v52 = *__error();
    if (v52)
    {
      v40 = v52;
    }

    else
    {
      v40 = 0xFFFFFFFFLL;
    }

    v41 = -1;
    v39 = v21;
    v43 = v20;
    goto LABEL_95;
  }

  v24 = *(a1 + 1348);
  v25 = *(a1 + 1344);
  v26 = fd_mmap(v23);
  if (v26 == -1)
  {
    v50 = *__error();
    v51 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "_data_map32_garbage_compact_collect";
      *&buf[12] = 1024;
      *&buf[14] = 2693;
      _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: offsets fd_mmap error", buf, 0x12u);
    }

    *__error() = v50;
    goto LABEL_27;
  }

  v113 = v24;
  v121 = v23;
  v27 = v26;
  v28 = *(a1 + 1344);
  v110 = data_entry_store_16962(v20, 0, dword_1E81997B0);
  *v27 = 0;
  v132 = 0;
  v136 = 0;
  v134 = v20;
  v135 = v21;
  v131[0] = 2;
  v131[1] = &v134;
  v119 = v28;
  v120 = v27;
  v137 = v27;
  v138 = v28;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v30 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v131, 0x40000000, add_explicit + 1);
  v129 = HIDWORD(v30);
  v130 = v30;
  v128 = __PAIR64__(v31, v32);
  v33 = threadData[9 * v30 + 1] + 320 * HIDWORD(v30);
  *(v33 + 216) = 0;
  v34 = *(v33 + 312);
  v35 = *(v33 + 224);
  v36 = v33;
  if (v35)
  {
    v35(*(v33 + 288));
  }

  v127 = v130;
  v126 = v129;
  v125 = v128;
  if (_setjmp(v36))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    v36[78] = v34;
    CIOnThreadCleanUpReset(v125);
    dropThreadId(v127, 1, add_explicit + 1);
    CICleanUpReset(v127, HIDWORD(v125));
    v37 = v121;
    goto LABEL_91;
  }

  v112 = v34;
  v114 = add_explicit;
  v53 = v16;
  v54 = v110;
  v122 = sibling_protected;
  if (v115)
  {
    v55 = 1;
    v56 = v20;
    v57 = v21;
    v58 = v16;
    v111 = v12;
    while (1)
    {
      v59 = v55;
      v20 = v56;
      if (*(v10 + 220) <= v55)
      {
        v168 = 0u;
        v167 = 0u;
        v166 = 0u;
        v165 = 0u;
        v164 = 0u;
        v163 = 0u;
        v162 = 0u;
        v161 = 0u;
        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        memset(buf, 0, sizeof(buf));
        v69 = *__error();
        v70 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v85 = *(v10 + 220);
          v86 = fd_name(*(v10 + 1272), buf, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_offset_entry";
          *&__s[12] = 1024;
          *&__s[14] = 422;
          *&__s[18] = 1024;
          *&__s[20] = v59;
          *&__s[24] = 1024;
          *&__s[26] = v85;
          sibling_protected = v122;
          *&__s[30] = 2048;
          *&__s[32] = v10;
          *&__s[40] = 2080;
          *&__s[42] = v86;
          _os_log_error_impl(&dword_1C278D000, v70, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
        }

        *__error() = v69;
        goto LABEL_47;
      }

      v60 = *(v10 + 1352);
      if (!v60)
      {
        goto LABEL_47;
      }

      v61 = *(v60 + 4 * v59);
      v62 = v61;
      if (v61 < 2)
      {
        goto LABEL_47;
      }

      v123 = 0;
      v124 = 0;
      v133 = 0;
      v63 = *(v10 + 1328);
      if (v63 <= v61)
      {
        v168 = 0u;
        v167 = 0u;
        v166 = 0u;
        v165 = 0u;
        v164 = 0u;
        v163 = 0u;
        v162 = 0u;
        v161 = 0u;
        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        memset(buf, 0, sizeof(buf));
        v109 = *__error();
        v73 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v92 = *(v10 + 1328);
          v93 = fd_name(*(v10 + 1272), buf, 0x100uLL);
          *__s = 136316418;
          *&__s[4] = "_data_map32_get_data_entry";
          *&__s[12] = 1024;
          *&__s[14] = 446;
          *&__s[18] = 2048;
          *&__s[20] = v62;
          *&__s[28] = 2048;
          *&__s[30] = v92;
          sibling_protected = v122;
          *&__s[38] = 2048;
          *&__s[40] = v10;
          *&__s[48] = 2080;
          *&__s[50] = v93;
          _os_log_error_impl(&dword_1C278D000, v73, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", __s, 0x3Au);
        }

        *__error() = v109;
        goto LABEL_47;
      }

      data_entry_restore_32(*(v10 + 1320), v61, v63, &v123, &v133);
      if (v133 == 1)
      {
        break;
      }

      if (v59 >= a3 && (*v116 <= v59 || !CFBitVectorGetBitAtIndex(*(v116 + 16), v59)))
      {
        ++*(v12 + 8);
        if ((a4 & 2) != 0)
        {
          if ((a4 & 8) != 0)
          {
            if (gSILogLevels[0] >= 5)
            {
              v87 = *__error();
              v94 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                v95 = v124 + *(v10 + 224);
                *buf = 67109890;
                *&buf[4] = v59;
                *&buf[8] = 1024;
                *&buf[10] = v123;
                *&buf[14] = 2080;
                *&buf[16] = v95;
                *&buf[24] = 2048;
                *&buf[26] = v10;
                v89 = v94;
                v90 = "Deleting id: %d size: %d %s from %p";
                v91 = 34;
LABEL_83:
                _os_log_impl(&dword_1C278D000, v89, OS_LOG_TYPE_DEFAULT, v90, buf, v91);
              }

LABEL_84:
              *__error() = v87;
              sibling_protected = v122;
            }
          }

          else if (gSILogLevels[0] >= 5)
          {
            v87 = *__error();
            v88 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *&buf[4] = v59;
              *&buf[8] = 1024;
              *&buf[10] = v123;
              *&buf[14] = 2048;
              *&buf[16] = v10;
              v89 = v88;
              v90 = "Deleting id: %d size: %d from %p";
              v91 = 24;
              goto LABEL_83;
            }

            goto LABEL_84;
          }
        }

LABEL_47:
        v120[v59] = 1;
        goto LABEL_48;
      }

      v74 = v54;
      v120[v59] = v54;
      if (v123 < 0x80)
      {
        v75 = 1;
      }

      else
      {
        v75 = 2;
      }

      if (v123 >> 14)
      {
        v76 = 3;
      }

      else
      {
        v76 = v75;
      }

      if (v123 >> 21)
      {
        v77 = 4;
      }

      else
      {
        v77 = v76;
      }

      if (v123 >> 28)
      {
        v78 = 5;
      }

      else
      {
        v78 = v77;
      }

      v79 = v54 + (v78 + v123) + 8;
      v80 = v58;
      if (v79 >= v58)
      {
        v81 = (v79 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        if (fd_truncate(sibling_protected, v81) == -1)
        {
          v105 = *__error();
          if (v105)
          {
            v101 = v105;
          }

          else
          {
            v101 = 0xFFFFFFFFLL;
          }

          v71 = v57;
          goto LABEL_94;
        }

        v80 = v81;
        v74 = v54;
      }

      v58 = v80;
      if (v79 > v57)
      {
        v108 = v80;
        v82 = v74;
        v83 = 2 * v57;
        v134 = -1;
        v135 = 0;
        munmap(v20, v57);
        v84 = fd_mmap(sibling_protected);
        if (v84 == -1)
        {
          v106 = *__error();
          v107 = _SILogForLogForCategory(0);
          v53 = v108;
          if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "_data_map32_garbage_compact_collect";
            *&buf[12] = 1024;
            *&buf[14] = 2750;
            _os_log_error_impl(&dword_1C278D000, v107, OS_LOG_TYPE_ERROR, "%s:%d: storage fd_mmap error", buf, 0x12u);
          }

          *__error() = v106;
          v20 = -1;
          v71 = v57;
          goto LABEL_86;
        }

        v20 = v84;
        v57 = (2 * v57);
        v134 = v84;
        v135 = v83 & 0xFFFFFFFE;
        v74 = v82;
        v58 = v108;
      }

      v54 = data_entry_store_16962(v20, v74, &v123);
LABEL_48:
      v56 = v20;
      v55 = v59 + 1;
      v71 = v57;
      v53 = v58;
      v72 = v54;
      if (v55 > v115)
      {
        goto LABEL_87;
      }
    }

    v178 = 0;
    v177 = 0u;
    v176 = 0u;
    v175 = 0u;
    v174 = 0u;
    v173 = 0u;
    v172 = 0u;
    v171 = 0u;
    v170 = 0u;
    v64 = 5;
    v65 = v62;
    memset(__s, 0, sizeof(__s));
    do
    {
      if (v65 >= *(v10 + 1328))
      {
        break;
      }

      v66 = strlen(__s);
      sprintf(&__s[v66], "%d ", *(*(v10 + 1320) + v65++));
      --v64;
    }

    while (v64);
    v168 = 0u;
    v167 = 0u;
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    v163 = 0u;
    v162 = 0u;
    v161 = 0u;
    v160 = 0u;
    v159 = 0u;
    v158 = 0u;
    v157 = 0u;
    v156 = 0u;
    memset(buf, 0, sizeof(buf));
    v67 = *__error();
    v68 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v96 = fd_name(*(v10 + 1272), buf, 0x100uLL);
      v97 = *(v10 + 1328);
      *v141 = 136316674;
      v142 = "_data_map32_get_data_entry";
      v143 = 1024;
      v144 = 442;
      v145 = 2080;
      v146 = v96;
      v147 = 2048;
      v148 = v62;
      v149 = 2048;
      v150 = v97;
      v151 = 2048;
      v152 = v123;
      v153 = 2080;
      v154 = __s;
      _os_log_error_impl(&dword_1C278D000, v68, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", v141, 0x44u);
    }

    *__error() = v67;
    sibling_protected = v122;
    v12 = v111;
    goto LABEL_47;
  }

  v71 = v21;
LABEL_86:
  v72 = v54;
LABEL_87:
  if (!*(v12 + 8))
  {
    v101 = 0;
LABEL_94:
    v41 = v120;
    v23 = v121;
    v102 = v101;
    v39 = v71;
    v42 = v119;
    v43 = v20;
    v40 = v102;
    goto LABEL_95;
  }

  fd_system_status_stall_if_busy();
  msync(v20, v53, 16);
  fd_system_status_stall_if_busy();
  msync(v120, v113, 16);
  *(v12 + 32) = sibling_protected;
  *(v12 + 40) = v20;
  v37 = v121;
  *(v12 + 48) = v121;
  *(v12 + 56) = v120;
  v28 = v119;
  *(v12 + 64) = v119;
  *(v12 + 72) = v113;
  *(v12 + 80) = v71;
  *(v12 + 88) = v53;
  *(v12 + 96) = v72;
  *v12 = 842150450;
  v132 = 1;
  v98 = threadData[9 * v127 + 1] + 320 * v126;
  *(v98 + 312) = v112;
  v99 = *(v98 + 232);
  if (v99)
  {
    v99(*(v98 + 288));
  }

  dropThreadId(v127, 0, v114 + 1);
  v21 = v71;
  sibling_protected = v122;
LABEL_91:
  v40 = 0;
  v39 = v21;
  v42 = v28;
  v41 = v120;
  v23 = v37;
  v43 = v20;
  v100 = 0;
  if (v132)
  {
    goto LABEL_103;
  }

LABEL_95:
  if ((v43 + 1) >= 2)
  {
    munmap(v43, v39);
    if (!sibling_protected)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (sibling_protected)
  {
LABEL_97:
    fd_release(sibling_protected);
    _fd_unlink_with_origin(sibling_protected, 0);
  }

LABEL_98:
  if (v41 != -1)
  {
    munmap(v41, v42);
  }

  if (v23)
  {
    fd_release(v23);
    _fd_unlink_with_origin(v23, 0);
  }

  v100 = v40;
LABEL_103:
  v103 = *MEMORY[0x1E69E9840];
  return v100;
}

uint64_t _Xmach_exception_raise_identity_protected(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 4);
  if (*(a1 + 24) != 1 || (v3 - 81) < 0xFFFFFFEF)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_7;
  }

  v6 = *(a1 + 60);
  if (v6 <= 2 && v6 <= (v3 - 64) >> 3 && v3 == ((8 * v6) | 0x40))
  {
    result = ContentIndex_catch_mach_exception_raise_identity_protected(*(a1 + 48), *(a1 + 56), *(a1 + 72));
  }

  else
  {
LABEL_6:
    result = 4294966992;
  }

LABEL_7:
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void _Xmach_exception_raise_state_identity(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 4);
  if (*(a1 + 24) != 2 || v3 - 5277 < 0xFFFFEBAF)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 50) << 16 != 1114112)
  {
    v5 = -300;
    goto LABEL_7;
  }

  v6 = *(a1 + 64);
  if (v6 > 2)
  {
LABEL_6:
    v5 = -304;
    goto LABEL_7;
  }

  v5 = -304;
  if (v6 <= (v3 - 76) >> 3)
  {
    v7 = 8 * v6;
    if (v3 >= v7 + 76)
    {
      v8 = *(a1 + v7 + 72);
      if (v8 <= 0x510)
      {
        v9 = v3 - v7;
        if (v8 <= (v9 - 76) >> 2 && v9 == 4 * v8 + 76)
        {
          *(a2 + 40) = 1296;
          ContentIndex_catch_mach_exception_raise_state_identity();
          v5 = 46;
          goto LABEL_7;
        }
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _Xmach_exception_raise_state(_DWORD *a1, uint64_t a2)
{
  v3 = -304;
  if ((*a1 & 0x80000000) == 0)
  {
    v4 = a1[1];
    if (v4 - 5249 >= 0xFFFFEBAF)
    {
      v5 = a1[9];
      if (v5 <= 2)
      {
        v6 = 2 * v5;
        v7 = v5 <= (v4 - 48) >> 3 && v4 >= 8 * v5 + 48;
        if (v7 && (v8 = a1[v6 + 11], v8 <= 0x510) && (v9 = v4 - v6 * 4, v8 <= (v9 - 48) >> 2) && v9 == 4 * v8 + 48)
        {
          *(a2 + 40) = 1296;
          ContentIndex_catch_mach_exception_raise_state();
          v3 = 46;
        }

        else
        {
          v3 = -304;
        }
      }
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _Xmach_exception_raise(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 4);
  if (*(a1 + 24) != 2 || (v3 - 85) < 0xFFFFFFEF)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 50) << 16 != 1114112)
  {
    v5 = -300;
    goto LABEL_7;
  }

  v6 = *(a1 + 64);
  if (v6 <= 2 && v6 <= (v3 - 68) >> 3 && v3 == ((8 * v6) | 0x44))
  {
    ContentIndex_catch_mach_exception_raise();
    v5 = 46;
  }

  else
  {
LABEL_6:
    v5 = -304;
  }

LABEL_7:
  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t (*mach_exc_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 2409) >= 0xFFFFFFFC)
  {
    return ContentIndex_catch_mach_exc_subsystem[5 * (v1 - 2405) + 5];
  }

  else
  {
    return 0;
  }
}

_DWORD *mach_exc_server(_DWORD *result, uint64_t a2)
{
  v2 = result[2];
  *a2 = *result & 0x1F;
  *(a2 + 4) = 36;
  v3 = result[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = result[5];
  if ((v4 - 2409) >= 0xFFFFFFFC)
  {
    v5 = ContentIndex_catch_mach_exc_subsystem[5 * (v4 - 2405) + 5];
    if (v5)
    {
      return v5();
    }
  }

  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  *(a2 + 32) = -303;
  return result;
}

uint64_t sqlite3BtreeOpen(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v57 = *MEMORY[0x1E69E9840];
  v3 = malloc_type_malloc(0x38uLL, 0x82B006DEuLL);
  v4 = v3;
  if (v3)
  {
    *(v3 + 8) = 0u;
    v5 = v3 + 8;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    *v3 = 0;
    v46 = 0u;
    v47 = 0u;
    *v48 = 0u;
    if (sqlite3_malloc_failed)
    {
      v6 = 7;
LABEL_26:
      free(v4);
      v4 = 0;
      goto LABEL_27;
    }

    v49 = 0;
    if (getcwd(v50, 0x1388uLL) && (v7 = getcwd(v50, 0x1388uLL), sqlite3SetString(&v49, v7, v8, v9, v10, v11, v12, v13, "/", "psid.db"), (v19 = v49) != 0))
    {
      v48[2] = -1;
      v20 = x_openat(-2, v49, 536871426, v14, v15, v16, v17, v18, 0x1A4u);
      v48[0] = v20;
      if (v20 < 0)
      {
        if (*__error() == 21 || (v20 = x_openat(-2, v19, 0, v22, v23, v24, v25, v26, v45), v48[0] = v20, v20 < 0))
        {
          v6 = 14;
          goto LABEL_23;
        }

        v21 = 1;
      }

      else
      {
        v21 = 0;
      }

      if (findLockInfo(v20, &v47 + 1, &v47))
      {
        close(v48[0]);
        v6 = 7;
LABEL_23:
        sqlite3OsClose(&v46);
        free(v19);
LABEL_24:
        if (*v4)
        {
          sqlite3pager_close(*v4);
        }

        goto LABEL_26;
      }

      LOWORD(v48[1]) = 256;
      v27 = strlen(v19);
      v28 = sqlite3Malloc(3 * v27 + 16830);
      if (v28)
      {
        v29 = v28;
        v30 = v28 + 282;
        v31 = v28 + 16800;
        v32 = v27 << 32;
        v33 = (v27 << 32) + 0x100000000;
        v34 = &v31[v33 >> 32];
        *v29 = v31;
        *(v29 + 1) = &v34[v33 >> 32];
        *(v29 + 2) = v34;
        strcpy(v31, v19);
        strcpy(v34, v19);
        if (v27 >= 1)
        {
          while (1)
          {
            v35 = *(v29 + 2) + v27;
            if (*(v35 - 1) == 47)
            {
              break;
            }

            v36 = v27 < 2;
            LODWORD(v27) = v27 - 1;
            if (v36)
            {
              goto LABEL_30;
            }
          }

          *(v35 - 1) = 0;
        }

LABEL_30:
        strcpy(*(v29 + 1), v19);
        free(v19);
        strcpy((*(v29 + 1) + (v32 >> 32)), "-journal");
        v39 = v47;
        *(v29 + 24) = v46;
        *(v29 + 56) = *v48;
        *(v29 + 40) = v39;
        *(v29 + 3) = v29;
        v29[280] = 0;
        *v30 = 0;
        *(v29 + 42) = -1;
        *(v29 + 28) = 0x40000000400;
        *(v29 + 44) = 0;
        *(v29 + 23) = 0;
        *(v29 + 29) = 0;
        *(v29 + 60) = 100;
        v29[291] = 0;
        v29[296] = 0;
        v29[292] = v21;
        v29[293] = 0;
        *(v30 + 5) = 1;
        *(v29 + 43) = 0;
        *(v29 + 44) = 0;
        *(v29 + 51) = 136;
        *(v29 + 102) = 512;
        *(v29 + 41) = 0;
        *(v29 + 42) = 0;
        bzero(v29 + 416, 0x4000uLL);
        *v4 = v29;
        *(v29 + 26) = pageDestructor;
        *(v29 + 27) = pageReinit;
        *v5 = 0;
        v4[2] = 0;
        *(v4 + 26) = v29[292];
        *v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0;
        if (v29[296])
        {
          *(v4 + 16) = 0;
        }

        else
        {
          lseek(*(v29 + 14), 0, 0);
          read(*(v29 + 14), v50, 0x64uLL);
          v44 = v51;
          v42 = BYTE1(v51) | (v51 << 8);
          *(v4 + 16) = _byteswap_ushort(v51);
          if (v44 >= 2 && v42 <= 0x2000)
          {
            v41 = BYTE4(v51);
            *(v4 + 27) = BYTE5(v51);
            *(v4 + 14) = WORD3(v51);
            *(v4 + 30) = 1;
            v40 = bswap32(DWORD1(v53)) != 0;
            goto LABEL_33;
          }
        }

        v40 = 0;
        v41 = 0;
        v42 = 1024;
        *(v4 + 16) = 1024;
        *(v4 + 27) = 8256;
        *(v4 + 29) = 32;
LABEL_33:
        v6 = 0;
        *(v4 + 31) = v40;
        *(v4 + 18) = v42 - v41;
        *(v4 + 17) = (v42 + 7) & 0xFFF8;
        v43 = *v4;
        *(v43 + 224) = v42;
        *(v43 + 228) = (v42 + 7) & 0x1FFF8;
        goto LABEL_27;
      }

      sqlite3OsClose(&v46);
      free(v19);
    }

    else
    {
      sqlite3OsClose(&v46);
    }

    v6 = 7;
    goto LABEL_24;
  }

  ++sqlite3_malloc_failed;
  v6 = 7;
LABEL_27:
  *v2 = v4;
  v37 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t pageReinit(uint64_t a1, int a2)
{
  result = a1 + ((a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*result)
  {
    *result = 0;
    return initPage(result, *(result + 128));
  }

  return result;
}

uint64_t initPage(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  v5 = *(a1 + 128);
  if (v5 == a2)
  {
    if (*a1)
    {
      return 0;
    }
  }

  else if (v5 || *a1)
  {
    return 11;
  }

  if (a2 && !v5)
  {
    *(a1 + 128) = a2;
    v7 = *(a2 + 112);
    if (*(v7 - 10))
    {
      ++*(v7 - 10);
    }

    else
    {
      _page_ref((v7 - 88));
    }
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 112);
  v10 = v9 + v8;
  decodeFlags(a1, *(v9 + v8));
  *(a1 + 1) = 0;
  v11 = *(v4 + 36);
  v12 = v8 - 4 * *(a1 + 4) + 12;
  *(a1 + 14) = v8 - 4 * *(a1 + 4) + 12;
  v13 = *(v9 + v8 + 5);
  v14 = __rev16(*(v9 + v8 + 3));
  *(a1 + 20) = v14;
  v15 = 1431655766 * (*(v4 + 32) - 8);
  if (v14 > (HIDWORD(v15) + (v15 >> 63)) || a2 && !v14 && *(a2 + 120) != 1)
  {
    return 11;
  }

  v16 = __rev16(v13);
  v17 = __rev16(*(v10 + 1));
  v18 = v16 - (v12 + 2 * v14) + *(v10 + 7);
  if (v17)
  {
    if (v17 > v11 - 4)
    {
      return 11;
    }

    result = 11;
    while (1)
    {
      v19 = (v9 + v17);
      v20 = __rev16(*v19);
      v21 = __rev16(v19[1]);
      if (!v20)
      {
        break;
      }

      v18 += v21;
      v22 = v20 > v17 + v21 + 3 && v20 <= v11 - 4;
      v17 = v20;
      if (!v22)
      {
        return result;
      }
    }

    v18 += v21;
  }

  *(a1 + 18) = v18;
  if (v18 >= v11)
  {
    return 11;
  }

  result = 0;
  *a1 = 1;
  return result;
}

uint64_t decodeFlags(uint64_t result, unsigned int a2)
{
  *(result + 3) = (a2 & 5) != 0;
  *(result + 5) = (a2 & 2) != 0;
  v2 = (a2 >> 3) & 1;
  *(result + 4) = (a2 & 8) != 0;
  *(result + 9) = (4 * ((a2 & 8) != 0)) ^ 4;
  v3 = *(result + 104);
  v4 = 48;
  if ((a2 & 4) == 0)
  {
    v4 = 40;
  }

  v5 = 52;
  if ((a2 & 4) == 0)
  {
    v5 = 44;
  }

  v6 = *(v3 + v5);
  v7 = *(v3 + v4);
  *(result + 6) = (a2 & 4) >> 2;
  *(result + 10) = v7;
  *(result + 12) = v6;
  if ((a2 & 4) == 0)
  {
    LOBYTE(v2) = 1;
  }

  if ((a2 >> 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = v2;
  }

  *(result + 7) = v8;
  return result;
}

uint64_t pageDestructor(uint64_t result, int a2)
{
  v2 = result + ((a2 + 7) & 0xFFFFFFF8);
  v3 = *(v2 + 128);
  if (v3)
  {
    *(v2 + 128) = 0;
    result = sqlite3pager_unref(*(v3 + 112));
  }

  *v2 = 0;
  return result;
}

void sqlite3BtreeClose(uint64_t *a1)
{
  for (i = a1[1]; i; i = a1[1])
  {
    sqlite3BtreeCloseCursor(i);
  }

  sqlite3pager_close(*a1);

  free(a1);
}

void sqlite3BtreeCloseCursor(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (v2)
  {
    v5 = a1[2];
  }

  else
  {
    v5 = *a1;
  }

  *(v5 + 8) = v3;
  if (v3)
  {
    *(v3 + 16) = v2;
  }

  v6 = a1[6];
  if (v6)
  {
    sqlite3pager_unref(*(v6 + 112));
  }

  unlockBtreeIfUnused(v4);

  free(a1);
}

uint64_t unlockBtreeIfUnused(uint64_t result)
{
  if (!*(result + 24))
  {
    v1 = result;
    if (!*(result + 8))
    {
      v2 = *(result + 16);
      if (v2)
      {
        v3 = *(v2 + 112);
        if (!v3)
        {
          v3 = v2 - *(v1 + 34);
          *(v2 + 104) = v1;
          *(v2 + 112) = v3;
          *(v2 + 120) = 1;
        }

        result = sqlite3pager_unref(v3);
        *(v1 + 16) = 0;
        *(v1 + 25) = 0;
      }
    }
  }

  return result;
}

uint64_t sqlite3BtreeBeginTrans(uint64_t a1)
{
  if (*(a1 + 24) != 2)
  {
    if (*(a1 + 26))
    {
      return 8;
    }

    v3 = *(a1 + 16);
    if (!v3)
    {
      v4 = lockBtree(a1);
      if (v4)
      {
        goto LABEL_12;
      }

      v3 = *(a1 + 16);
    }

    v4 = sqlite3pager_begin(*(*(v3 + 112) - 88));
    if (!v4)
    {
      if (sqlite3pager_pagecount(*a1) > 0)
      {
LABEL_8:
        v1 = 0;
        *(a1 + 24) = 2;
        return v1;
      }

      v5 = *(a1 + 16);
      v6 = *(v5 + 112);
      v4 = sqlite3pager_write(v6);
      if (!v4)
      {
        strcpy(v6, "SQLite format 3");
        v8 = *(a1 + 32);
        *(v6 + 16) = HIBYTE(v8);
        *(v6 + 17) = v8;
        *(v6 + 18) = 257;
        *(v6 + 20) = *(a1 + 32) - *(a1 + 36);
        *(v6 + 21) = *(a1 + 27);
        *(v6 + 22) = *(a1 + 28);
        *(v6 + 23) = *(a1 + 29);
        *(v6 + 24) = 0u;
        *(v6 + 40) = 0u;
        *(v6 + 56) = 0u;
        *(v6 + 72) = 0u;
        *(v6 + 84) = 0u;
        zeroPage(v5, 0xDu);
        *(a1 + 30) = 1;
        if (*(a1 + 31))
        {
          *(v6 + 52) = 0x1000000;
        }

        goto LABEL_8;
      }
    }

LABEL_12:
    v1 = v4;
    unlockBtreeIfUnused(a1);
    return v1;
  }

  return 0;
}

uint64_t lockBtree(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v16[3] = v1;
  v16[4] = v2;
  v16[0] = 0;
  result = getPage(a1, 1, v16);
  if (!result)
  {
    if (sqlite3pager_pagecount(*a1) <= 0)
    {
      v9 = *(a1 + 36);
      v10 = *(a1 + 27);
      v11 = *(a1 + 28);
      v12 = *(a1 + 29);
      v5 = v16[0];
    }

    else
    {
      v5 = v16[0];
      v6 = *(v16[0] + 112);
      if (*v6 != 0x66206574694C5153 || *(v6 + 8) != 0x332074616D726FLL)
      {
        goto LABEL_20;
      }

      if (*(v6 + 18) > 1u)
      {
        goto LABEL_20;
      }

      if (*(v6 + 19) > 1u)
      {
        goto LABEL_20;
      }

      v8 = __rev16(*(v6 + 16));
      *(a1 + 32) = v8;
      v9 = v8 - *(v6 + 20);
      *(a1 + 36) = v9;
      if ((v9 & 0xFFFCu) < 0x1F4)
      {
        goto LABEL_20;
      }

      *(a1 + 34) = (v8 + 7) & 0xFFF8;
      v10 = *(v6 + 21);
      *(a1 + 27) = v10;
      v11 = *(v6 + 22);
      *(a1 + 28) = v11;
      v12 = *(v6 + 23);
      *(a1 + 29) = v12;
      *(a1 + 31) = bswap32(*(v6 + 52)) != 0;
    }

    v13 = v9 - 12;
    v14 = v13 * v10;
    v15 = v13 * v11 / 255;
    *(a1 + 40) = v14 / 255 - 23;
    *(a1 + 44) = v15 - 23;
    *(a1 + 48) = v9 - 35;
    *(a1 + 52) = v13 * v12 / 255 - 23;
    if (v14 >= 5865 && v15 <= v14 / 255)
    {
      result = 0;
LABEL_22:
      *(a1 + 16) = v5;
      return result;
    }

    if (!v5)
    {
LABEL_21:
      result = 26;
      goto LABEL_22;
    }

    v6 = *(v5 + 112);
LABEL_20:
    sqlite3pager_unref(v6);
    v5 = 0;
    goto LABEL_21;
  }

  return result;
}

uint64_t zeroPage(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 104);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 112) + v5);
  bzero(v6, *(v4 + 36) - v5);
  *v6 = a2;
  *(v6 + 1) = 0;
  v6[7] = 0;
  *(v6 + 5) = bswap32(*(v4 + 36)) >> 16;
  *(a1 + 18) = *(v4 + 36) - (((a2 >> 1) & 4 ^ 0xC) + v5);
  result = decodeFlags(a1, a2);
  *(a1 + 8) = v5;
  *(a1 + 14) = ((a2 >> 1) & 4 ^ 0xC) + v5;
  *(a1 + 2) = 0;
  *(a1 + 20) = 0;
  *a1 = 1;
  return result;
}

uint64_t getPage(uint64_t a1, int a2, void *a3)
{
  v10 = 0;
  result = sqlite3pager_get(*a1, a2, &v10);
  if (!result)
  {
    v7 = v10;
    v8 = v10 + *(a1 + 34);
    *(v8 + 104) = a1;
    *(v8 + 112) = v7;
    *(v8 + 120) = a2;
    if (a2 == 1)
    {
      v9 = 100;
    }

    else
    {
      v9 = 0;
    }

    *(v8 + 8) = v9;
    *a3 = v8;
  }

  return result;
}

uint64_t sqlite3BtreeCommit(uint64_t a1)
{
  if (*(a1 + 24) == 2)
  {
    v2 = *a1;
    v3 = *(*a1 + 290);
    if (*(*a1 + 290))
    {
      if (v3 == 1)
      {
        v4 = sqlite3pager_rollback(*a1);
        if (v4)
        {
          v5 = v4;
        }

        else
        {
          v5 = 13;
        }
      }

      else
      {
        v6 = (v3 << 29 >> 31) & 0xF;
        if ((v3 & 0x10) != 0)
        {
          v6 = 10;
        }

        if (v3)
        {
          v6 = 13;
        }

        if ((v3 & 2) != 0)
        {
          v6 = 7;
        }

        if ((v3 & 8) != 0)
        {
          v5 = 11;
        }

        else
        {
          v5 = v6;
        }
      }
    }

    else if (*(v2 + 289) >= 2u)
    {
      if (*(v2 + 296))
      {
        v7 = *(v2 + 360);
        if (v7)
        {
          v8 = 0;
          do
          {
            if (*(v7 + 74))
            {
              *(v7 + 80) = v8;
              v8 = v7;
            }

            v7 = *(v7 + 48);
          }

          while (v7);
          for (; v8; v8 = *(v8 + 80))
          {
            v9 = v8 + *(v2 + 204) + *(v2 + 228) + 88;
            if (*v9)
            {
              free(*v9);
            }

            v10 = *(v9 + 8);
            if (v10)
            {
              free(v10);
            }

            *v9 = 0;
            *(v9 + 8) = 0;
            *(v8 + 56) = 0;
            *(v8 + 64) = 0;
            *(v8 + 71) = 0;
          }
        }

        v5 = 0;
        *(v2 + 368) = 0;
        *(v2 + 289) = 1;
      }

      else if (*(v2 + 294) && (v11 = sqlite3pager_sync(*a1, 0), v11))
      {
        v5 = v11;
        sqlite3pager_rollback(v2);
      }

      else
      {
        v5 = pager_unwritelock(v2);
        *(v2 + 168) = -1;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = 0;
  unlockBtreeIfUnused(a1);
  return v5;
}

uint64_t sqlite3BtreeCursor(uint64_t a1, int a2, int a3, uint64_t (*a4)(int a1, int a2, void *__s1, int a4, void *__s2), uint64_t **a5)
{
  v7 = a3;
  v8 = a2;
  *a5 = 0;
  if (a3)
  {
    if (*(a1 + 26))
    {
      return 8;
    }

    if (checkReadLocks(*(a1 + 8), a2, 0))
    {
      return 6;
    }
  }

  if (*(a1 + 16) || (v10 = lockBtree(a1), !v10))
  {
    v11 = malloc_type_malloc(0x68uLL, 0xFA05FFB3uLL);
    if (!v11)
    {
      ++sqlite3_malloc_failed;
      v10 = 7;
LABEL_25:
      unlockBtreeIfUnused(a1);
      return v10;
    }

    v12 = v11;
    *(v11 + 10) = v8;
    if (v8 == 1)
    {
      if (!sqlite3pager_pagecount(*a1))
      {
        v10 = 16;
LABEL_24:
        free(v12);
        goto LABEL_25;
      }

      v8 = *(v12 + 10);
    }

    v12[6] = 0;
    v13 = v12 + 6;
    inited = getAndInitPage(a1, v8, v12 + 6, 0);
    if (inited)
    {
      v10 = inited;
      if (*v13)
      {
        sqlite3pager_unref(*(*v13 + 112));
      }

      goto LABEL_24;
    }

    if (a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = dfltCompare;
    }

    v12[3] = v15;
    v12[4] = 0;
    *(v12 + 96) = v7;
    *(v12 + 14) = 0;
    *(v12 + 4) = 0u;
    *(v12 + 5) = 0u;
    v16 = *(a1 + 8);
    *v12 = a1;
    v12[1] = v16;
    if (v16)
    {
      *(v16 + 16) = v12;
    }

    v10 = 0;
    v12[2] = 0;
    *(a1 + 8) = v12;
    *(v12 + 97) = 0;
    *a5 = v12;
  }

  return v10;
}

uint64_t checkReadLocks(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    while (1)
    {
      if (v5 != a3 && *(v5 + 40) == a2)
      {
        if (!*(v5 + 96))
        {
          return 6;
        }

        if (*(*(v5 + 48) + 120) != a2)
        {
          moveToRoot(v5);
        }
      }

      v5 = *(v5 + 8);
      if (!v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getAndInitPage(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  if (!a2)
  {
    return 11;
  }

  result = getPage(a1, a2, a3);
  if (!result)
  {
    v7 = *a3;
    if (**a3)
    {
      return 0;
    }

    else
    {

      return initPage(v7, a4);
    }
  }

  return result;
}

uint64_t dfltCompare(int a1, int a2, void *__s1, int a4, void *__s2)
{
  v5 = a2 - a4;
  if (a2 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2;
  }

  LODWORD(result) = memcmp(__s1, __s2, v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

uint64_t moveToRoot(uint64_t a1)
{
  v7 = 0;
  result = getAndInitPage(*a1, *(a1 + 40), &v7, 0);
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      sqlite3pager_unref(*(v4 + 112));
    }

    v5 = v7;
    *(a1 + 48) = v7;
    *(a1 + 56) = 0;
    *(a1 + 90) = 0;
    if (*(v5 + 20))
    {
      result = 0;
      v3 = 1;
    }

    else if (*(v5 + 4))
    {
      v3 = 0;
      result = 0;
    }

    else if (*(v5 + 120) == 1 && (v6 = bswap32(*(*(v5 + 112) + *(v5 + 8) + 8))) != 0)
    {
      *(a1 + 97) = 1;
      result = moveToChild(a1, v6);
      v3 = *(*(a1 + 48) + 20) != 0;
    }

    else
    {
      v3 = 0;
      result = 11;
    }
  }

  *(a1 + 97) = v3;
  return result;
}

uint64_t moveToChild(uint64_t a1, int a2)
{
  v6 = 0;
  result = getAndInitPage(*a1, a2, &v6, *(a1 + 48));
  if (!result)
  {
    v4 = v6;
    *(v6 + 16) = *(a1 + 56);
    v5 = *(a1 + 48);
    *(v5 + 1) = 0;
    sqlite3pager_unref(*(v5 + 112));
    *(a1 + 48) = v4;
    *(a1 + 56) = 0;
    *(a1 + 90) = 0;
    if (*(v4 + 20))
    {
      return 0;
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t getCellInfo(uint64_t result)
{
  if (!*(result + 90))
  {
    return parseCellPtr(*(result + 48), *(*(result + 48) + 112) + __rev16(*(*(*(result + 48) + 112) + *(*(result + 48) + 14) + 2 * *(result + 56))), result + 64);
  }

  return result;
}

uint64_t parseCellPtr(uint64_t result, uint64_t a2, uint64_t a3)
{
  *a3 = a2;
  v3 = *(result + 9);
  v4 = *(result + 7);
  if (*(result + 7))
  {
    v5 = (a2 + *(result + 9));
    v4 = *v5;
    if (v4 < 0)
    {
      v7 = v4 & 0x7F;
      v8 = v5[1];
      v9 = v7 << 7;
      if (v8 < 0)
      {
        v4 = v9 | v8 & 0x7F;
        v6 = 2;
        do
        {
          v10 = v6;
          v11 = v5[v6++];
          v4 = v11 & 0x7F | (v4 << 7);
        }

        while (v10 <= 7 && v11 < 0);
      }

      else
      {
        v4 = v9 | v8;
        LODWORD(v6) = 2;
      }
    }

    else
    {
      LODWORD(v6) = 1;
    }

    v3 += v6;
  }

  v12 = (a2 + v3);
  v13 = *v12;
  if (v13 < 0)
  {
    v15 = v13 & 0x7F;
    v16 = v12[1];
    v17 = v15 << 7;
    if (v12[1] < 0)
    {
      v18 = v16 & 0x7F | v17;
      v19 = v12[2];
      v20 = v18 << 7;
      if (v12[2] < 0)
      {
        v21 = v19 & 0x7F | v20;
        v22 = v12[3];
        v23 = v21 << 7;
        if (v12[3] < 0)
        {
          v13 = v22 & 0x7F | v23;
          v14 = 4;
          while (1)
          {
            v24 = v12[v14];
            if (v14 == 8)
            {
              break;
            }

            v13 = v24 & 0x7F | (v13 << 7);
            ++v14;
            if ((v24 & 0x80) == 0)
            {
              goto LABEL_23;
            }
          }

          v13 = v24 | (v13 << 8);
          LODWORD(v14) = 9;
        }

        else
        {
          v13 = v23 | v22;
          LODWORD(v14) = 4;
        }
      }

      else
      {
        v13 = v20 | v19;
        LODWORD(v14) = 3;
      }
    }

    else
    {
      v13 = v17 | v16;
      LODWORD(v14) = 2;
    }
  }

  else
  {
    LODWORD(v14) = 1;
  }

LABEL_23:
  *(a3 + 8) = v13;
  v25 = v14 + v3;
  *(a3 + 20) = v14 + v3;
  *(a3 + 16) = v4;
  if (*(result + 3))
  {
    v26 = 0;
  }

  else
  {
    v26 = v13;
  }

  v27 = v4 + v26;
  v28 = *(result + 10);
  if (v27 <= v28)
  {
    v29 = 0;
    v30 = v27 + v25;
    if ((v27 + v25) <= 4)
    {
      v30 = 4;
    }
  }

  else
  {
    v27 = (v27 - *(result + 12)) % (*(*(result + 104) + 36) - 4) + *(result + 12);
    if (v27 > v28)
    {
      LOWORD(v27) = *(result + 12);
    }

    v29 = v27 + v25;
    v30 = v27 + v25 + 4;
  }

  *(a3 + 22) = v27;
  *(a3 + 24) = v29;
  *(a3 + 26) = v30;
  return result;
}

uint64_t getPayload(uint64_t a1, int a2, char *a3, int a4)
{
  v8 = *a1;
  v9 = *(a1 + 48);
  getCellInfo(a1);
  v10 = (*(a1 + 64) + *(a1 + 84));
  v23 = v10;
  if (*(v9 + 3))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 72);
  }

  if (a4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 + a2 > (*(a1 + 80) + v11))
  {
    return 1;
  }

  v14 = *(a1 + 86);
  LODWORD(v13) = v12 - v14;
  if (v12 < v14)
  {
    if (v12 + a2 <= v14)
    {
      v15 = a2;
    }

    else
    {
      v15 = v14 - v12;
    }

    memcpy(a3, v10 + v12, v15);
    v13 = 0;
    a2 -= v15;
    if (!a2)
    {
      return v13;
    }

    a3 += v15;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v16 = bswap32(*(v10 + *(a1 + 86)));
  if (!v16)
  {
    return 11;
  }

  v17 = *(v8 + 36) - 4;
  do
  {
    v18 = sqlite3pager_get(*v8, v16, &v23);
    if (v18)
    {
      return v18;
    }

    v19 = v23;
    v20 = *v23;
    if (v13 >= v17)
    {
      LODWORD(v13) = v13 - v17;
    }

    else
    {
      if (v13 + a2 <= v17)
      {
        v21 = a2;
      }

      else
      {
        v21 = v17 - v13;
      }

      memcpy(a3, v23 + v13 + 4, v21);
      LODWORD(v13) = 0;
      a2 -= v21;
      a3 += v21;
    }

    sqlite3pager_unref(v19);
    if (a2 < 1)
    {
      break;
    }

    v16 = bswap32(v20);
  }

  while (v16);
  if (a2 <= 0)
  {
    return 0;
  }

  else
  {
    return 11;
  }
}

uint64_t moveToLeftmost(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 48);
    if (*(v2 + 4))
    {
      break;
    }

    result = moveToChild(a1, bswap32(*(*(v2 + 112) + __rev16(*(*(v2 + 112) + *(v2 + 14) + 2 * *(a1 + 56))))));
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sqlite3BtreeMoveto(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = moveToRoot(a1);
  if (v8)
  {
    return v8;
  }

  if (!*(a1 + 97))
  {
    v14 = -1;
LABEL_47:
    Payload = 0;
    *a4 = v14;
    return Payload;
  }

  while (1)
  {
    v10 = *(a1 + 48);
    if (!a2 && !*(v10 + 3))
    {
      return 11;
    }

    if (*(v10 + 20))
    {
      break;
    }

    v11 = 0;
    v14 = -1;
LABEL_39:
    if (*(v10 + 4) || ((v19 = *(v10 + 112), v11 >= *(v10 + 20)) ? (v23 = (v19 + *(v10 + 8)), v21 = (v23[8] << 24) | (v23[9] << 16) | (v23[10] << 8), v22 = v23 + 11) : (v20 = (v19 + __rev16(*(v19 + *(v10 + 14) + 2 * v11))), v21 = (*v20 << 24) | (v20[1] << 16) | (v20[2] << 8), v22 = v20 + 3), (v24 = v21 | *v22) == 0))
    {
      if (!a4)
      {
        return 0;
      }

      goto LABEL_47;
    }

    *(a1 + 56) = v11;
    *(a1 + 90) = 0;
    Payload = moveToChild(a1, v24);
    if (Payload)
    {
      return Payload;
    }
  }

  v11 = 0;
  v12 = *(v10 + 20) - 1;
  while (1)
  {
    *(a1 + 56) = (v12 + v11) / 2;
    *(a1 + 90) = 0;
    if (*(a1 + 97))
    {
      getCellInfo(a1);
      v13 = *(a1 + 72);
    }

    else
    {
      v13 = 0;
    }

    if (!*(v10 + 3))
    {
      break;
    }

    if (v13 < a3)
    {
      v14 = -1;
LABEL_32:
      v11 = *(a1 + 56) + 1;
      goto LABEL_33;
    }

    if (v13 <= a3)
    {
      goto LABEL_36;
    }

    v14 = 1;
LABEL_31:
    v12 = *(a1 + 56) - 1;
LABEL_33:
    if (v11 > v12)
    {
      goto LABEL_39;
    }
  }

  v15 = *(a1 + 48);
  getCellInfo(a1);
  if (*(v15 + 3))
  {
    LODWORD(v16) = 0;
  }

  else
  {
    LODWORD(v16) = *(a1 + 72);
  }

  if (v16 >= *(a1 + 86))
  {
    v16 = *(a1 + 86);
  }

  else
  {
    v16 = v16;
  }

  if (v13 <= v16)
  {
    v14 = (*(a1 + 24))(*(a1 + 32), v13, *(a1 + 64) + *(a1 + 84), a3, a2);
    if (!v14)
    {
      goto LABEL_36;
    }

LABEL_30:
    if (v14 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v17 = malloc_type_malloc(v13, 0xFA05FFB3uLL);
  v18 = v17;
  if (v13 >= 1 && !v17)
  {
    ++sqlite3_malloc_failed;
    return 7;
  }

  if (!v17)
  {
    return 7;
  }

  Payload = getPayload(a1, v13, v17, 0);
  v14 = (*(a1 + 24))(*(a1 + 32), v13, v18, a3, a2);
  free(v18);
  if (Payload)
  {
    return Payload;
  }

  if (v14)
  {
    goto LABEL_30;
  }

LABEL_36:
  if (*(v10 + 6) && !*(v10 + 4))
  {
    v14 = 0;
    v11 = *(a1 + 56);
    goto LABEL_39;
  }

  v14 = 0;
  Payload = 0;
  if (a4)
  {
    goto LABEL_47;
  }

  return Payload;
}

uint64_t sqlite3BtreeNext(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 48);
  while (2)
  {
    if (!*(a1 + 97))
    {
      result = 0;
      *a2 = 1;
      return result;
    }

    v5 = *(a1 + 56) + 1;
    *(a1 + 56) = v5;
    *(a1 + 90) = 0;
    if (v5 < *(v4 + 20))
    {
      *a2 = 0;
      if (*(v4 + 4))
      {
        return 0;
      }

      return moveToLeftmost(a1);
    }

    else
    {
      if (*(v4 + 4))
      {
        v6 = v4;
        do
        {
          v4 = *(v6 + 128);
          if (!v4 || (v7 = *(v4 + 112), *(v4 + 120) <= 1u) && !__rev16(*(v7 + *(v4 + 8) + 3)))
          {
            result = 0;
            *a2 = 1;
            *(a1 + 97) = 0;
            return result;
          }

          v8 = *(v6 + 16);
          if (*(v7 - 10))
          {
            ++*(v7 - 10);
          }

          else
          {
            _page_ref((v7 - 88));
          }

          sqlite3pager_unref(*(v6 + 112));
          *(a1 + 48) = v4;
          *(a1 + 90) = 0;
          *(a1 + 56) = v8;
          v6 = v4;
        }

        while (v8 >= *(v4 + 20));
        *a2 = 0;
        if (*(v4 + 6))
        {
          continue;
        }

        return 0;
      }

      result = moveToChild(a1, bswap32(*(*(v4 + 112) + *(v4 + 8) + 8)));
      if (!result)
      {
        result = moveToLeftmost(a1);
        *a2 = 0;
      }
    }

    break;
  }

  return result;
}

uint64_t sqlite3BtreeInsert(uint64_t a1, char *a2, unint64_t a3, char *a4, int a5)
{
  v5 = *a1;
  if (*(*a1 + 24) == 2)
  {
    if (!*(a1 + 96))
    {
      return 3;
    }

    if (checkReadLocks(*(v5 + 8), *(a1 + 40), a1))
    {
      return 6;
    }

    v22 = 0;
    v12 = sqlite3BtreeMoveto(a1, a2, a3, &v22);
    if (v12)
    {
      return v12;
    }

    v13 = *(a1 + 48);
    v12 = sqlite3pager_write(*(v13 + 112));
    if (v12)
    {
      return v12;
    }

    v15 = sqlite3MallocRaw(*(v5 + 32) - 8);
    if (!v15)
    {
      return 7;
    }

    v16 = v15;
    v21 = 0;
    inserted = fillInCell(v13, v15, a2, a3, a4, a5, &v21);
    if (inserted)
    {
      goto LABEL_26;
    }

    if (v22)
    {
      if (v22 < 0 && *(v13 + 20))
      {
        ++*(a1 + 56);
        *(a1 + 90) = 0;
      }
    }

    else if (*(a1 + 97))
    {
      v18 = *(v13 + 112);
      v19 = __rev16(*(v18 + *(v13 + 14) + 2 * *(a1 + 56)));
      if (!*(v13 + 4))
      {
        *v16 = *(v18 + v19);
      }

      v23 = 0u;
      v24 = 0u;
      parseCellPtr(v13, v18 + v19, &v23);
      v20 = WORD5(v24);
      inserted = clearCell(v13, v18 + v19);
      if (inserted)
      {
        goto LABEL_26;
      }

      dropCell(v13, *(a1 + 56), v20);
    }

    inserted = insertCell(v13, *(a1 + 56), v16, v21, 0, 0);
    if (!inserted)
    {
      v11 = balance(v13, 1);
      if (!v11)
      {
        moveToRoot(a1);
      }

      goto LABEL_27;
    }

LABEL_26:
    v11 = inserted;
LABEL_27:
    free(v16);
    return v11;
  }

  if (*(v5 + 26))
  {
    return 8;
  }

  else
  {
    return 1;
  }
}

uint64_t fillInCell(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, char *a5, int a6, _DWORD *a7)
{
  v36 = 0;
  v31 = *(a1 + 104);
  v35 = 0;
  v12 = 4 * (*(a1 + 4) == 0);
  if (*(a1 + 7))
  {
    v13 = a6;
    v12 += sqlite3PutVarint((a2 + v12), a6);
  }

  else
  {
    v13 = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v14 = sqlite3PutVarint((a2 + v12), a4);
  parseCellPtr(a1, a2, &v33);
  v15 = *(a1 + 3) == 0;
  if (*(a1 + 3))
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + a4;
  }

  if (v15)
  {
    v17 = a4;
  }

  else
  {
    a3 = a5;
    v17 = v13;
  }

  if (!v15)
  {
    v13 = 0;
  }

  *a7 = WORD5(v34);
  if (v16 < 1)
  {
    return 0;
  }

  v18 = 0;
  v19 = v14 + v12;
  v20 = (a2 + WORD4(v34));
  v21 = (a2 + v19);
  v22 = WORD3(v34);
  do
  {
    if (!v22)
    {
      v23 = v35;
      v24 = allocatePage(v31, &v36, &v35, v35, 0);
      v25 = v24;
      if (v23)
      {
        v26 = *(v31 + 31) == 0;
      }

      else
      {
        v26 = 1;
      }

      if (!v26 && v24 == 0)
      {
        v25 = ptrmapPut(v31, v35, 4, v23);
      }

      if (v25)
      {
        goto LABEL_42;
      }

      *v20 = bswap32(v35);
      if (v18)
      {
        sqlite3pager_unref(*(v18 + 112));
      }

      v18 = v36;
      v20 = *(v36 + 112);
      *v20 = 0;
      v21 = (*(v18 + 112) + 4);
      v22 = *(v31 + 36) - 4;
    }

    if (v16 >= v22)
    {
      v28 = v22;
    }

    else
    {
      v28 = v16;
    }

    if (v28 >= v17)
    {
      v29 = v17;
    }

    else
    {
      v29 = v28;
    }

    memcpy(v21, a3, v29);
    v16 -= v29;
    v21 += v29;
    v22 -= v29;
    if (v17 <= v28)
    {
      a3 = a5;
    }

    else
    {
      a3 += v29;
    }

    if (v17 <= v28)
    {
      v17 = v13;
    }

    else
    {
      v17 -= v29;
    }
  }

  while (v16 > 0);
  v25 = 0;
LABEL_42:
  if (v18)
  {
    sqlite3pager_unref(*(v18 + 112));
  }

  return v25;
}

uint64_t clearCell(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v13 = 0u;
  v14 = 0u;
  parseCellPtr(a1, a2, &v13);
  if (!WORD4(v14))
  {
    return 0;
  }

  v4 = bswap32(*(a2 + WORD4(v14)));
  if (!v4)
  {
    return 0;
  }

  while (1)
  {
    v12 = 0;
    if (v4 > sqlite3pager_pagecount(*v3))
    {
      break;
    }

    result = getPage(v3, v4, &v12);
    if (result)
    {
      return result;
    }

    v6 = v12;
    v7 = *(v12 + 112);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[3];
    result = freePage(v12);
    if (result)
    {
      return result;
    }

    v4 = (v8 << 24) | (v9 << 16) | (v10 << 8) | v11;
    sqlite3pager_unref(*(v6 + 112));
    if (!v4)
    {
      return 0;
    }
  }

  return 11;
}

uint64_t dropCell(uint64_t result, int a2, int a3)
{
  v3 = *(result + 112);
  v4 = *(result + 14);
  v5 = (v3 + v4 + 2 * a2);
  v6 = *v5;
  v7 = v5[1];
  v8 = v7 | (v6 << 8);
  v9 = *(result + 8);
  v10 = v9 + 1;
  v11 = v9 + 1;
  do
  {
    v12 = (v3 + v11);
    v13 = *(v3 + v11);
    v14 = *(v3 + v11 + 1);
    v11 = v14 | (v13 << 8);
  }

  while (v11 < v8 && v11 != 0);
  if (a3 <= 4)
  {
    LOWORD(a3) = 4;
  }

  *v12 = v6;
  v12[1] = v7;
  v16 = (v3 + v8);
  *v16 = v13;
  v16[1] = v14;
  v16[2] = BYTE1(a3);
  v16[3] = a3;
  *(result + 18) += a3;
  v17 = *(result + 8) + 1;
  for (i = __rev16(*(v3 + v17)); i; i = v24 | v20)
  {
    v19 = (v3 + i);
    v20 = v19[1];
    v21 = v19[1] | (*v19 << 8);
    v22 = i + (bswap32(*(v19 + 1)) >> 16);
    if (v21 - 1 >= (v22 + 3))
    {
      v24 = *v19 << 8;
    }

    else
    {
      *(v3 + 7 + *(result + 8)) += v22 - v20;
      *v19 = *(v3 + v21);
      *(v19 + 1) = bswap32((*(v3 + v21 + 3) | (*(v3 + v21 + 2) << 8)) + v21 - i) >> 16;
      v23 = (v3 + v17);
      v20 = v23[1];
      v24 = *v23 << 8;
      i = v17;
    }

    v17 = i;
  }

  v25 = *(v3 + v10);
  v26 = v3 + v9;
  if (v25 == *(v26 + 5))
  {
    v27 = *(v26 + 2);
    if (v27 == *(v26 + 6))
    {
      v28 = v3 + (v27 | (v25 << 8));
      *(v3 + v10) = *v28;
      *(v26 + 5) = bswap32((*(v28 + 3) | (*(v28 + 2) << 8)) + (v27 | (v25 << 8))) >> 16;
    }
  }

  v29 = a2 + 1;
  v30 = *(result + 20);
  if (a2 + 1 < v30)
  {
    v31 = v4 + 2 * a2 + v3 + 3;
    do
    {
      *(v31 - 3) = *(v31 - 1);
      ++v29;
      v30 = *(result + 20);
      v31 += 2;
    }

    while (v29 < v30);
  }

  *(result + 20) = v30 - 1;
  *(v3 + *(result + 8) + 3) = bswap32(v30 - 1) >> 16;
  *(result + 18) += 2;
  *(result + 1) = 1;
  return result;
}

uint64_t insertCell(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v9 = a3;
  v10 = a2;
  v12 = *(a1 + 2);
  if (*(a1 + 2) || a4 + 2 > *(a1 + 18))
  {
    if (a5)
    {
      memcpy((a5 + a6), (a3 + a6), (a4 - a6));
      v12 = *(a1 + 2);
      v9 = a5;
    }

    result = 0;
    *(a1 + 2) = v12 + 1;
    v14 = a1 + 16 * v12;
    *(v14 + 24) = v9;
    *(v14 + 32) = v10;
    *(a1 + 18) = 0;
  }

  else
  {
    v15 = *(a1 + 112);
    v26 = v15 + *(a1 + 8);
    v16 = *(a1 + 14);
    v17 = 2 * *(a1 + 20);
    v18 = v16 + v17;
    v19 = 2 * a2;
    v20 = v16 + 2 * a2;
    if (v16 + v17 + 2 > (__rev16(*(v26 + 5)) - a4))
    {
      defragmentPage(a1);
    }

    Space = allocateSpace(a1, a4);
    ++*(a1 + 20);
    *(a1 + 18) -= 2;
    memcpy((v15 + (Space + a6)), (v9 + a6), (a4 - a6));
    if (v17 > v19)
    {
      v22 = (v15 + v18);
      v23 = v22;
      do
      {
        v24 = *--v23;
        *v22 = v24;
        v18 -= 2;
        v22 = v23;
      }

      while (v18 > v20);
    }

    *(v15 + v20) = bswap32(Space) >> 16;
    *(v26 + 3) = bswap32(*(a1 + 20)) >> 16;
    *(a1 + 1) = 1;
    if (!*(*(a1 + 104) + 31))
    {
      return 0;
    }

    v27 = 0u;
    v28 = 0u;
    parseCellPtr(a1, v9, &v27);
    v25 = *(a1 + 3) ? 0 : *(&v27 + 1);
    if (v25 + v28 <= WORD3(v28))
    {
      return 0;
    }

    result = ptrmapPut(*(a1 + 104), bswap32(*(v9 + WORD4(v28))), 3, *(a1 + 120));
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t balance(uint64_t a1, int a2)
{
  v3 = *(a1 + 2);
  if (!*(a1 + 128))
  {
    if (*(a1 + 2))
    {
      *&v34 = 0;
      LODWORD(v33) = 0;
      v5 = *(a1 + 104);
      inited = allocatePage(v5, &v34, &v33, *(a1 + 120), 0);
      if (inited)
      {
        return inited;
      }

      v7 = *(v5 + 36);
      v8 = *(a1 + 112);
      v9 = *(a1 + 8);
      v10 = __rev16(*(v8 + v9 + 5));
      v11 = v34;
      v12 = *(v34 + 112);
      memcpy(v12, (v8 + v9), *(a1 + 14) - v9 + 2 * *(a1 + 20));
      memcpy(&v12[v10], (v8 + v10), v7 - v10);
      inited = initPage(v11, a1);
      if (inited)
      {
        return inited;
      }

      memcpy((v11 + 24), (a1 + 24), 16 * *(a1 + 2));
      v14 = *(a1 + 2);
      *(v11 + 2) = v14;
      if (v14)
      {
        *(v11 + 18) = 0;
      }

      zeroPage(a1, **(v11 + 112) & 0xF7);
      *(*(a1 + 112) + *(a1 + 8) + 8) = bswap32(v33);
      if (*(v5 + 31))
      {
        inited = ptrmapPut(v5, *(v11 + 120), 5, *(a1 + 120));
        if (inited)
        {
          return inited;
        }

        if (*(v11 + 20))
        {
          v15 = 0;
          do
          {
            OverflowCell = findOverflowCell(v11, v15);
            inited = ptrmapPutOvflPtr(v11, OverflowCell);
            if (inited)
            {
              return inited;
            }
          }

          while (++v15 < *(v11 + 20));
        }
      }

      v13 = balance_nonroot(v11);
      sqlite3pager_unref(*(v11 + 112));
      if (v13)
      {
        return v13;
      }
    }

    if (*(a1 + 20))
    {
      return 0;
    }

    v17 = *(a1 + 104);
    v18 = *(v17 + 32);
    v19 = (v18 - 8) / 3;
    v20 = malloc_type_malloc(12 * v19, 0xFA05FFB3uLL);
    if (v18 >= 0xB && v20 == 0)
    {
      ++sqlite3_malloc_failed;
    }

    else
    {
      v22 = v20;
      if (v20)
      {
        if (*(a1 + 4))
        {
LABEL_31:
          v13 = 0;
LABEL_36:
          free(v22);
          return v13;
        }

        v33 = 0;
        Page = getPage(*(a1 + 104), bswap32(*(*(a1 + 112) + *(a1 + 8) + 8)), &v33);
        if (Page)
        {
LABEL_35:
          v13 = Page;
          goto LABEL_36;
        }

        if (*(a1 + 120) == 1)
        {
          v24 = v33;
          Page = initPage(v33, a1);
          if (Page)
          {
            goto LABEL_35;
          }

          if (*(v24 + 18) < 0x64u)
          {
            goto LABEL_46;
          }

          v25 = &v22[8 * v19];
          zeroPage(a1, **(v24 + 112));
          if (*(v24 + 20))
          {
            v26 = 0;
            v27 = 0;
            do
            {
              v28 = *(v24 + 112) + __rev16(*(*(v24 + 112) + *(v24 + 14) + v26));
              *&v22[8 * v27] = v28;
              v34 = 0u;
              v35 = 0u;
              parseCellPtr(v24, v28, &v34);
              v25[v27++] = WORD5(v35);
              v29 = *(v24 + 20);
              v26 += 2;
            }

            while (v27 < v29);
          }

          else
          {
            LODWORD(v29) = 0;
          }

          assemblePage(a1, v29, v22, v25);
          *(*(a1 + 112) + *(a1 + 8) + 8) = *(*(v24 + 112) + *(v24 + 8) + 8);
        }

        else
        {
          v24 = v33;
          memcpy(*(a1 + 112), *(v33 + 112), *(*(a1 + 104) + 36));
          *a1 = 0;
          *(a1 + 128) = 0;
          initPage(a1, 0);
        }

        freePage(v24);
LABEL_46:
        v30 = reparentChildPages(a1);
        v13 = v30;
        if (!*(v17 + 31) || !*(a1 + 20))
        {
          if (v30)
          {
            goto LABEL_36;
          }

LABEL_54:
          sqlite3pager_unref(*(v24 + 112));
          goto LABEL_31;
        }

        v31 = 0;
        while (1)
        {
          v32 = findOverflowCell(a1, v31);
          Page = ptrmapPutOvflPtr(a1, v32);
          if (Page)
          {
            goto LABEL_35;
          }

          if (++v31 >= *(a1 + 20))
          {
            if (v24)
            {
              goto LABEL_54;
            }

            goto LABEL_31;
          }
        }
      }
    }

    return 7;
  }

  if (!*(a1 + 2) && (a2 || (1431655766 * (2 * *(*(a1 + 104) + 36))) >> 32 >= *(a1 + 18)))
  {
    return 0;
  }

  return balance_nonroot(a1);
}

uint64_t allocatePage(uint64_t a1, void *a2, int *a3, int a4, int a5)
{
  v60 = *(a1 + 16);
  v8 = *(v60 + 112);
  v9 = bswap32(*(v8 + 36));
  v10 = v9 - 1;
  if (v9 >= 1)
  {
    v62 = 0;
    if (a5)
    {
      LOBYTE(v61) = 0;
      v12 = ptrmapGet(a1, a4, &v61, 0);
      if (v12)
      {
        return v12;
      }

      v13 = v61 == 2;
      *a3 = a4;
      v8 = *(v60 + 112);
    }

    else
    {
      v13 = 0;
    }

    v12 = sqlite3pager_write(v8);
    if (v12)
    {
      return v12;
    }

    v58 = a2;
    v59 = a3;
    v18 = 0;
    *(*(v60 + 112) + 36) = bswap32(v10);
    while (1)
    {
      if (v18)
      {
        v19 = bswap32(**(v18 + 112));
        Page = getPage(a1, v19, &v62);
        if (Page)
        {
          v16 = Page;
          goto LABEL_88;
        }
      }

      else
      {
        v19 = bswap32(*(*(v60 + 112) + 32));
        v12 = getPage(a1, v19, &v62);
        if (v12)
        {
          return v12;
        }
      }

      v21 = v62;
      v22 = sqlite3pager_write(*(v62 + 112));
      v23 = *(v21 + 112);
      if (v22)
      {
        v16 = v22;
        v55 = *(v21 + 112);
        goto LABEL_87;
      }

      v24 = bswap32(v23[1]);
      if (v13 || v24 != 0)
      {
        if (v24 > (*(a1 + 36) >> 2) - 8)
        {
          return 11;
        }

        if (v19 == a4 && v13)
        {
          *a2 = v21;
          if (v24)
          {
            v61 = 0;
            v25 = *(v21 + 112);
            v26 = v25[8];
            v27 = v25[9];
            v28 = v25[10];
            v29 = v25[11];
            v30 = getPage(a1, (v26 << 24) | (v27 << 16) | (v28 << 8) | v29, &v61);
            if (v30)
            {
              v16 = v30;
              goto LABEL_86;
            }

            v57 = v29;
            v31 = v61;
            v16 = sqlite3pager_write(*(v61 + 112));
            v32 = *(v31 + 112);
            if (v16)
            {
              sqlite3pager_unref(v32);
LABEL_86:
              v55 = *(v21 + 112);
LABEL_87:
              sqlite3pager_unref(v55);
              if (!v18)
              {
                return v16;
              }

LABEL_88:
              v17 = *(v18 + 112);
              goto LABEL_89;
            }

            *v32 = **(v21 + 112);
            *(*(v31 + 112) + 4) = bswap32(v24 - 1);
            memcpy((*(v31 + 112) + 8), (*(v21 + 112) + 12), 4 * (v24 - 1));
            if (v18)
            {
              v33 = *(v18 + 112);
              *v33 = v26;
              v33[1] = v27;
              v33[2] = v28;
              v34 = v33 + 3;
            }

            else
            {
              v45 = *(v60 + 112);
              v45[32] = v26;
              v45[33] = v27;
              v45[34] = v28;
              v34 = v45 + 35;
            }

            *v34 = v57;
            sqlite3pager_unref(*(v31 + 112));
            a2 = v58;
          }

          else
          {
            v44 = **(v21 + 112);
            if (v18)
            {
              **(v18 + 112) = v44;
            }

            else
            {
              *(*(v60 + 112) + 32) = v44;
            }
          }

          v21 = 0;
          v16 = 0;
          v62 = 0;
          goto LABEL_52;
        }

        v36 = 0;
        if (a4 && v24 >= 2)
        {
          v36 = 0;
          v37 = bswap32(v23[2]) - a4;
          if (v37 < 0)
          {
            v37 = -v37;
          }

          v38 = v23 + 15;
          for (i = 1; i != v24; ++i)
          {
            v40 = bswap32(*(v38 - 3)) - a4;
            if (v40 < 0)
            {
              v40 = -v40;
            }

            if (v40 < v37)
            {
              v36 = i;
              v37 = v40;
            }

            v38 += 4;
          }
        }

        v41 = &v23[v36];
        v42 = bswap32(v41[2]);
        if (!v13 || v42 == a4)
        {
          *v59 = v42;
          if (v42 > sqlite3pager_pagecount(*a1))
          {
            return 11;
          }

          if (v36 < v24 - 1)
          {
            v41[2] = v23[v24 + 1];
          }

          v23[1] = bswap32(v24 - 1);
          a2 = v58;
          v43 = getPage(a1, *v59, v58);
          if (v43)
          {
            v16 = v43;
          }

          else
          {
            v46 = *(*v58 + 112);
            v47 = v46 - 88;
            v48 = *(v46 - 88);
            if (*(v48 + 289) == 4 && *(v48 + 280) && !*(v46 - 12) && !*(v48 + 295) && !*(v48 + 296))
            {
              if (!*(v46 - 16))
              {
                v49 = *(v46 - 80);
                if (v49 <= *(v48 + 172))
                {
                  *(*(v48 + 304) + (v49 >> 3)) |= 1 << (v49 & 7);
                  *(v46 - 16) = 1;
                  if (*(v48 + 285))
                  {
                    *(*(v48 + 312) + (*(v46 - 80) >> 3)) |= 1 << (*(v46 - 80) & 7);
                    if (!*(v46 - 15))
                    {
                      v50 = *(v46 - 88);
                      *(v46 - 24) = 0;
                      v51 = *(v50 + 368);
                      if (v51)
                      {
                        *(v51 + 64) = v47;
                      }

                      *(v46 - 32) = v51;
                      *(v50 + 368) = v47;
                      *(v46 - 15) = 1;
                      a2 = v58;
                    }
                  }
                }
              }

              if (*(v48 + 285))
              {
                if (!*(v46 - 15))
                {
                  v52 = *(v46 - 80);
                  if (v52 <= *(v48 + 176))
                  {
                    *(*(v48 + 312) + (v52 >> 3)) |= 1 << (v52 & 7);
                    if (!*(v46 - 15))
                    {
                      v53 = *(v46 - 88);
                      *(v46 - 24) = 0;
                      v54 = *(v53 + 368);
                      if (v54)
                      {
                        *(v54 + 64) = v47;
                      }

                      *(v46 - 32) = v54;
                      *(v53 + 368) = v47;
                      *(v46 - 15) = 1;
                      a2 = v58;
                    }
                  }
                }
              }
            }

            v16 = sqlite3pager_write(*(*a2 + 112));
            if (v16 && *a2)
            {
              sqlite3pager_unref(*(*a2 + 112));
            }
          }

LABEL_52:
          v35 = 1;
          goto LABEL_53;
        }

        v16 = 0;
        v35 = 0;
        a2 = v58;
      }

      else
      {
        v16 = 0;
        *v59 = v19;
        *(*(v60 + 112) + 32) = *v23;
        *a2 = v21;
        v62 = 0;
        v35 = 1;
        v21 = 0;
      }

LABEL_53:
      if (v18)
      {
        sqlite3pager_unref(*(v18 + 112));
      }

      v13 = 1;
      v18 = v21;
      if (v35)
      {
        if (!v21)
        {
          return v16;
        }

        v17 = *(v21 + 112);
LABEL_89:
        sqlite3pager_unref(v17);
        return v16;
      }
    }
  }

  v14 = sqlite3pager_pagecount(*a1);
  v15 = v14 + 1;
  *a3 = v14 + 1;
  if (*(a1 + 31) && !((v14 - 1) % (*(a1 + 36) / 5u + 1)))
  {
    v15 = v14 + 2;
    *a3 = v14 + 2;
  }

  v16 = getPage(a1, v15, a2);
  if (!v16)
  {
    v16 = sqlite3pager_write(*(*a2 + 112));
    if (v16)
    {
      if (*a2)
      {
        v17 = *(*a2 + 112);
        goto LABEL_89;
      }
    }
  }

  return v16;
}

uint64_t ptrmapPut(uint64_t a1, int a2, int a3, int a4)
{
  if (!a2)
  {
    return 11;
  }

  v14 = 0;
  v7 = a2 - 2;
  v8 = *(a1 + 36) / 5u + 1;
  v9 = sqlite3pager_get(*a1, (a2 - 2) / v8 * v8 + 2, &v14);
  if (!v9)
  {
    v10 = *(a1 + 36) / 5u + 1;
    v11 = v14;
    v12 = v14 + 5 * (v7 % v10);
    if (*(v12 - 5) == a3 && bswap32(*(v12 - 1)) == a4)
    {
      v9 = 0;
    }

    else
    {
      v9 = sqlite3pager_write(v14);
      if (!v9)
      {
        *(v12 - 5) = a3;
        *(v12 - 4) = HIBYTE(a4);
        *(v12 - 3) = BYTE2(a4);
        *(v12 - 2) = BYTE1(a4);
        *(v12 - 1) = a4;
      }
    }

    sqlite3pager_unref(v11);
  }

  return v9;
}

uint64_t findOverflowCell(uint64_t a1, int a2)
{
  v2 = *(a1 + 2);
  if (!*(a1 + 2))
  {
    return *(a1 + 112) + __rev16(*(*(a1 + 112) + *(a1 + 14) + 2 * a2));
  }

  v3 = v2 + 1;
  for (i = (a1 + 16 * v2 + 8); ; i -= 8)
  {
    v5 = i[4];
    if (a2 >= v5)
    {
      break;
    }

LABEL_6:
    if (--v3 <= 1)
    {
      return *(a1 + 112) + __rev16(*(*(a1 + 112) + *(a1 + 14) + 2 * a2));
    }
  }

  if (a2 != v5)
  {
    --a2;
    goto LABEL_6;
  }

  return *i;
}

uint64_t ptrmapPutOvflPtr(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v9 = 0u;
  v10 = 0u;
  parseCellPtr(a1, a2, &v9);
  v4 = *(a1 + 3) ? 0 : *(&v9 + 1);
  if (v4 + v10 <= WORD3(v10))
  {
    return 0;
  }

  v5 = bswap32(*(a2 + WORD4(v10)));
  v6 = *(a1 + 104);
  v7 = *(a1 + 120);

  return ptrmapPut(v6, v5, 3, v7);
}

uint64_t balance_nonroot(uint64_t a1)
{
  v160 = *MEMORY[0x1E69E9840];
  memset(v159, 0, sizeof(v159));
  memset(v158, 0, 24);
  memset(v157, 0, sizeof(v157));
  memset(v155, 0, sizeof(v155));
  v2 = *(a1 + 104);
  v3 = *(a1 + 128);
  sqlite3pager_write(*(v3 + 112));
  if (*(a1 + 4) && *(a1 + 3) && *(a1 + 6) && *(a1 + 2) == 1 && *(a1 + 32) == *(a1 + 20) && *(*(a1 + 128) + 120) != 1 && bswap32(*(*(v3 + 112) + *(v3 + 8) + 8)) == *(a1 + 120))
  {
    v4 = *MEMORY[0x1E69E9840];

    return balance_quick(a1, v3);
  }

  v6 = 1431655766 * (*(v2 + 32) - 8);
  v7 = HIDWORD(v6) + (v6 >> 63);
  v8 = v7 + 2;
  if (*(v2 + 31))
  {
    v9 = 2 * (v7 + 2);
  }

  else
  {
    v9 = 0;
  }

  v10 = malloc_type_malloc(36 * v7 + 8 * *(v2 + 34) + v9 + 480, 0xFA05FFB3uLL);
  if (!v10)
  {
    ++sqlite3_malloc_failed;
    v18 = 7;
    goto LABEL_180;
  }

  v11 = v10;
  v12 = &v10[24 * v8];
  v13 = *(v2 + 34);
  v150 = &v12[12 * v8];
  v151 = &v150[v13 + 136];
  v152 = v151 + v13 + 136;
  v133 = v152 + v13 + 136;
  v145 = v3;
  v124 = v13;
  v125 = 3 * v8;
  if (*(v3 + 1))
  {
    v14 = *(v3 + 20);
    v15 = *(v3 + 112);
    if (*(v3 + 20))
    {
      v16 = 0;
      v17 = *(v3 + 14) + v15 + 1;
      while (bswap32(*(v15 + __rev16(*(v17 - 1)))) != *(a1 + 120))
      {
        v17 += 2;
        if (v14 == ++v16)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v14) = v16;
    }
  }

  else
  {
    LODWORD(v14) = *(a1 + 16);
    v15 = *(v3 + 112);
  }

LABEL_24:
  v146 = *(v2 + 31);
  v19 = v133 + 5 * v13;
  v127 = a1;
  if (*(v15 - 10))
  {
    ++*(v15 - 10);
  }

  else
  {
    _page_ref((v15 - 88));
  }

  v20 = 0;
  v21 = 0;
  v22 = v14 - 1;
  v23 = v3;
  v24 = *(v3 + 20);
  if (v14 + 2 > v24)
  {
    v22 = v24 - 2;
  }

  v25 = v22 & ~(v22 >> 31);
  v26 = (2 * v25) | 1;
  v144 = v22 & ~(v22 >> 31);
  while (1)
  {
    v27 = v25 + v21;
    v28 = *(v23 + 20);
    if (v25 + v21 >= v28)
    {
      break;
    }

    v29 = (*(v23 + 112) + __rev16(*(*(v23 + 112) + *(v23 + 14) + v26 - 1)));
    v155[v21] = v29;
    v30 = (*v29 << 24) | (v29[1] << 16) | (v29[2] << 8);
    v31 = v29 + 3;
LABEL_34:
    v33 = v30 | *v31;
    *(&v158[3] + v21 + 1) = v33;
    v34 = v21;
    inited = getAndInitPage(v2, v33, &v159[v20], v23);
    if (inited)
    {
      v18 = inited;
      v141 = v34;
      LODWORD(v34) = 0;
      goto LABEL_168;
    }

    *(v159[v34] + 16) = v27;
    v158[v34] = 0;
    ++v20;
    v26 += 2;
    LODWORD(v25) = v144;
    v23 = v145;
    v21 = v34 + 1;
    if (v34 == 2)
    {
      goto LABEL_39;
    }
  }

  if (v27 == v28)
  {
    v32 = (*(v23 + 112) + *(v23 + 8));
    v30 = (v32[8] << 24) | (v32[9] << 16) | (v32[10] << 8);
    v31 = v32 + 11;
    goto LABEL_34;
  }

  if (!v21)
  {
    v47 = 0;
    v46 = 1;
    goto LABEL_42;
  }

LABEL_39:
  v36 = *(v2 + 34);
  v37 = v159;
  v38 = v158;
  v39 = &v150;
  v40 = v21;
  v41 = v21;
  do
  {
    v43 = *v39++;
    v42 = v43;
    v44 = &v43[v36];
    *v38++ = &v43[v36];
    *&v43[v36 + 112] = v43;
    v45 = *v37++;
    memcpy(v42, *(v45 + 112), v36 + 136);
    v36 = *(v2 + 34);
    *(v44 + 14) = &v44[-v36];
    --v41;
  }

  while (v41);
  v46 = 0;
  v47 = v40;
LABEL_42:
  v48 = v127;
  v134 = 4 * *(v127 + 4);
  if (*(v127 + 4))
  {
    v49 = *(v127 + 6) != 0;
  }

  else
  {
    v49 = 0;
  }

  v138 = v49 << 31 >> 31;
  v141 = v47;
  v142 = v47;
  if (v46)
  {
    v50 = 0;
    v51 = 0;
LABEL_103:
    v135 = v51;
    v68 = 0;
    v131 = 0;
    v153[0] = 0;
    v136 = v50;
    v154[0] = v50;
    v140 = **(v48 + 112);
    goto LABEL_104;
  }

  v122 = *(v127 + 4);
  v123 = *(v127 + 6);
  v52 = 0;
  v50 = 0;
  v135 = 0;
  if (v146)
  {
    v53 = v2 == 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = !v53;
  v130 = v54;
  v139 = (v47 - 1);
  v55 = v145;
  do
  {
    v56 = v158[v52];
    v57 = *(v56 + 2) + *(v56 + 20);
    if (v57)
    {
      v58 = 0;
      v59 = v50;
      do
      {
        OverflowCell = findOverflowCell(v56, v58);
        v11[v59] = OverflowCell;
        v148 = 0u;
        *__n = 0u;
        parseCellPtr(v56, OverflowCell, &v148);
        *&v12[4 * v59] = WORD1(__n[1]);
        if (*(v2 + 31))
        {
          v61 = v146 == 0;
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
          *(v19 + v59) = v52;
          v62 = *(v56 + 2);
          if (*(v56 + 2))
          {
            v63 = (v56 + 24);
            while (*v63 != v11[v59])
            {
              v63 += 2;
              if (!--v62)
              {
                goto LABEL_66;
              }
            }

            *(v19 + v59) = -1;
          }
        }

LABEL_66:
        ++v59;
        ++v58;
      }

      while (v58 != v57);
      v50 = v59;
      v55 = v145;
      v47 = v141;
    }

    if (v52 < v139)
    {
      v64 = v155[v52];
      v148 = 0u;
      *__n = 0u;
      parseCellPtr(v55, v64, &v148);
      v65 = WORD1(__n[1]);
      if (v138)
      {
        dropCell(v55, v144, WORD1(__n[1]));
      }

      else
      {
        *&v12[4 * v50] = WORD1(__n[1]);
        memcpy((v133 + v135), v64, v65);
        v11[v50] = v133 + v135 + v134;
        if (v130 && *(v2 + 31))
        {
          *(v19 + v50) = -1;
        }

        dropCell(v145, v144, v65);
        *&v12[4 * v50] -= v134;
        if (!*(v56 + 4))
        {
          *v11[v50] = *(*(v56 + 112) + *(v56 + 8) + 8);
        }

        v135 += v65;
        ++v50;
        v55 = v145;
      }

      v47 = v141;
    }

    ++v52;
  }

  while (v52 != v142);
  if (v50 < 1)
  {
    v51 = v135;
    v48 = v127;
    goto LABEL_103;
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = v134 + *(v2 + 36) - 12;
  do
  {
    v70 = v67 + 2;
    v67 += 2 + *&v12[4 * v66];
    if (v67 > v69)
    {
      v67 = 0;
      v153[v68] = v70;
      v154[v68] = v66;
      v66 += v138;
      ++v68;
    }

    ++v66;
  }

  while (v66 < v50);
  v153[v68] = v67;
  v154[v68] = v50;
  v71 = v68 > 0;
  if (v68 < 1)
  {
    goto LABEL_100;
  }

  v72 = v68;
  if (v122)
  {
    v73 = v123 == 0;
  }

  else
  {
    v73 = 1;
  }

  v74 = !v73;
  v75 = v74 << 31 >> 31;
  while (2)
  {
    v76 = v72 - 1;
    v77 = v67;
    v67 = v153[v72 - 1];
    v78 = v154[v72 - 1];
    while (2)
    {
      v79 = v78 - 1;
      v80 = *&v12[4 * v75 + 4 * v78];
      if (!v77)
      {
        v77 = v80 + 2;
        v67 = v67 - *&v12[4 * v79] - 2;
        goto LABEL_97;
      }

      v81 = v77 + v80 + 2;
      if (v81 <= v67 - *&v12[4 * v79] - 2)
      {
        v67 = v67 - *&v12[4 * v79] - 2;
        v77 = v81;
LABEL_97:
        v154[v76] = v79;
        v78 = v79;
        continue;
      }

      break;
    }

    v153[v72] = v77;
    v153[v76] = v67;
    if (v72-- > 1)
    {
      continue;
    }

    break;
  }

LABEL_100:
  v140 = **(v127 + 112);
  if (v68 < 0)
  {
    v128 = v68;
    LODWORD(v34) = 0;
  }

  else
  {
    v131 = v68 > 0;
    v136 = v50;
LABEL_104:
    v83 = 0;
    v128 = v68;
    v34 = (v68 + 1);
    v84 = v156;
    do
    {
      *&v148 = 0;
      if (v83 >= v142)
      {
        v86 = allocatePage(v2, &v148, v84, *(v84 - 1), 0);
        if (v86)
        {
LABEL_112:
          v18 = v86;
          LODWORD(v34) = v83;
          goto LABEL_168;
        }

        v85 = v148;
        v157[v83] = v148;
      }

      else
      {
        v85 = v159[v83];
        v157[v83] = v85;
        *v84 = *(&v158[3] + v83 + 1);
        v159[v83] = 0;
        v86 = sqlite3pager_write(*(v85 + 112));
        if (v86)
        {
          goto LABEL_112;
        }
      }

      ++v83;
      zeroPage(v85, v140);
      ++v84;
    }

    while (v34 != v83);
    v47 = v141;
    v50 = v136;
    v71 = v131;
  }

  if (v34 < v47)
  {
    v87 = v142 - v34;
    v88 = &v159[v34];
    while (1)
    {
      v89 = *v88;
      inserted = freePage(*v88);
      if (inserted)
      {
        break;
      }

      if (v89)
      {
        sqlite3pager_unref(*(v89 + 112));
      }

      *v88++ = 0;
      if (!--v87)
      {
        goto LABEL_121;
      }
    }

LABEL_167:
    v18 = inserted;
    goto LABEL_168;
  }

LABEL_121:
  v91 = v145;
  if (v71)
  {
    v92 = 0;
    v93 = 1;
    do
    {
      v94 = v156[v92];
      v95 = v93;
      v96 = v92;
      v97 = v94;
      do
      {
        if (v156[v95] < v97)
        {
          v97 = v156[v95];
          v96 = v95;
        }

        ++v95;
      }

      while (v128 + 1 != v95);
      if (v92 < v96)
      {
        v98 = v157[v92];
        v156[v92] = v156[v96];
        v157[v92] = v157[v96];
        v156[v96] = v94;
        v157[v96] = v98;
      }

      ++v92;
      ++v93;
    }

    while (v92 != v128);
  }

  if (!v34)
  {
LABEL_155:
    if ((v140 & 8) == 0)
    {
      *(*(v157[v34 - 1] + 112) + 8) = *(*(v158[v141 - 1] + 112) + 8);
    }

    if (v144 == *(v91 + 2) + *(v91 + 20))
    {
      *(*(v91 + 112) + *(v91 + 8) + 8) = bswap32(v156[v34 - 1]);
      if (!v34)
      {
LABEL_165:
        inserted = reparentChildPages(v145);
        if (!inserted)
        {
          inserted = balance(v145, 0);
        }

        goto LABEL_167;
      }
    }

    else
    {
      *findOverflowCell(v91, v144) = bswap32(v156[v34 - 1]);
      if (!v34)
      {
        goto LABEL_165;
      }
    }

    v115 = v34;
    v116 = v157;
    while (1)
    {
      inserted = reparentChildPages(*v116);
      if (inserted)
      {
        goto LABEL_167;
      }

      ++v116;
      if (!--v115)
      {
        goto LABEL_165;
      }
    }
  }

  v137 = v50;
  v99 = 0;
  v100 = 0;
  v143 = v34 - 1;
  v126 = v11 + 12 * v125 + 8 * v124 + 408;
  v129 = v34;
  v132 = v34;
  while (1)
  {
    v101 = v157[v99];
    v102 = v154[v99];
    assemblePage(v101, v102 - v100, &v11[v100], &v12[4 * v100]);
    if (*(v2 + 31))
    {
      if (v102 > v100)
      {
        break;
      }
    }

LABEL_140:
    if (v99 >= v143)
    {
      v91 = v145;
LABEL_146:
      LODWORD(v34) = v132;
      goto LABEL_154;
    }

    v91 = v145;
    if (v102 >= v137)
    {
      goto LABEL_146;
    }

    v110 = v11[v102];
    v111 = *&v12[4 * v102] + v134;
    v147 = v111;
    LODWORD(v34) = v132;
    if (*(v101 + 4))
    {
      v112 = v133 + v135;
      if (v138)
      {
        v148 = 0u;
        *__n = 0u;
        parseCellPtr(v101, v11[--v102], &v148);
        fillInCell(v145, v112, 0, *(&v148 + 1), 0, 0, &v147);
        v111 = v147;
        v135 += v147;
        v110 = v112;
        v112 = 0;
      }

      else
      {
        --v110;
        v135 += v111;
      }
    }

    else
    {
      v112 = 0;
      *(*(v101 + 112) + 8) = *v110;
    }

    v113 = v144;
    inserted = insertCell(v145, v144, v110, v111, v112, 4u);
    if (inserted)
    {
      goto LABEL_167;
    }

    *findOverflowCell(v145, v144) = bswap32(*(v101 + 120));
    if (*(v2 + 31))
    {
      if ((v138 & 1) == 0)
      {
        v114 = findOverflowCell(v145, v144);
        v113 = v144;
        inserted = ptrmapPutOvflPtr(v145, v114);
        if (inserted)
        {
          goto LABEL_167;
        }
      }
    }

    ++v102;
    v144 = v113 + 1;
    v91 = v145;
LABEL_154:
    ++v99;
    v100 = v102;
    if (v99 == v129)
    {
      goto LABEL_155;
    }
  }

  v103 = 0;
  v104 = v100;
  v105 = v102 - v100;
  v106 = v126 + v104;
  while (1)
  {
    if (v146)
    {
      v107 = *(v106 + v103);
      if (v107 == 255 || *(v158[v107] + 120) != *(v101 + 120))
      {
        v108 = findOverflowCell(v101, v103);
        v109 = ptrmapPutOvflPtr(v101, v108);
        if (v109)
        {
          break;
        }
      }
    }

    if (v105 == ++v103)
    {
      goto LABEL_140;
    }
  }

  v18 = v109;
  LODWORD(v34) = v132;
LABEL_168:
  free(v11);
  if (v141)
  {
    v117 = v141;
    v118 = v159;
    do
    {
      if (*v118)
      {
        sqlite3pager_unref(*(*v118 + 112));
      }

      v118 += 8;
      --v117;
    }

    while (v117);
  }

  if (v34)
  {
    v119 = v34;
    v120 = v157;
    do
    {
      if (*v120)
      {
        sqlite3pager_unref(*(*v120 + 112));
      }

      ++v120;
      --v119;
    }

    while (v119);
  }

  if (v145)
  {
    sqlite3pager_unref(*(v145 + 112));
  }

LABEL_180:
  v121 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t assemblePage(uint64_t a1, signed int a2, const void **a3, int *a4)
{
  v4 = a4;
  v8 = a2;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = a4;
    v11 = v8;
    do
    {
      v12 = *v10++;
      v9 += v12;
      --v11;
    }

    while (v11);
  }

  v13 = *(a1 + 14);
  v14 = *(a1 + 112);
  *(v14 + *(a1 + 8) + 3) = bswap32(a2) >> 16;
  result = allocateSpace(a1, v9);
  *(a1 + 18) -= 2 * a2;
  if (a2 >= 1)
  {
    v16 = result;
    v17 = v13 + v14 + 1;
    do
    {
      *(v17 - 1) = bswap32(v16) >> 16;
      v18 = *a3++;
      result = memcpy((v14 + v16), v18, *v4);
      LODWORD(v18) = *v4++;
      v16 += v18;
      v17 += 2;
      --v8;
    }

    while (v8);
  }

  *(a1 + 20) = a2;
  return result;
}

uint64_t freePage(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(v2 + 16);
  *a1 = 0;
  v4 = *(a1 + 128);
  if (v4)
  {
    sqlite3pager_unref(*(v4 + 112));
  }

  *(a1 + 128) = 0;
  result = sqlite3pager_write(*(v3 + 112));
  if (!result)
  {
    v6 = *(v3 + 112);
    v7 = bswap32(*(v6 + 36));
    *(v6 + 36) = bswap32(v7 + 1);
    if (!*(v2 + 31) || (result = ptrmapPut(v2, *(a1 + 120), 2, 0), !result))
    {
      if (v7)
      {
        v11 = 0;
        result = getPage(v2, bswap32(*(*(v3 + 112) + 32)), &v11);
        if (!result)
        {
          v8 = v11;
          v9 = *(v11 + 112);
          v10 = bswap32(*(v9 + 4));
          if (v10 >= (*(v2 + 36) >> 2) - 8)
          {
            result = sqlite3pager_write(*(a1 + 112));
            if (!result)
            {
              **(a1 + 112) = bswap32(*(v8 + 120));
              *(*(a1 + 112) + 4) = 0;
              *(*(v3 + 112) + 32) = bswap32(*(a1 + 120));
              goto LABEL_16;
            }
          }

          else
          {
            result = sqlite3pager_write(v9);
            if (!result)
            {
              *(*(v8 + 112) + 4) = bswap32(v10 + 1);
              *(*(v8 + 112) + 4 * v10 + 8) = bswap32(*(a1 + 120));
              sqlite3pager_dont_write(*v2, *(a1 + 120));
LABEL_16:
              sqlite3pager_unref(*(v8 + 112));
              return 0;
            }
          }
        }
      }

      else
      {
        result = sqlite3pager_write(*(a1 + 112));
        if (!result)
        {
          **(a1 + 112) = 0;
          *(*(v3 + 112) + 32) = bswap32(*(a1 + 120));
        }
      }
    }
  }

  return result;
}

uint64_t reparentChildPages(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return 0;
  }

  v3 = *(a1 + 104);
  v4 = *(a1 + 20);
  if (*(a1 + 20))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (!*(a1 + 4))
      {
        result = reparentPage(v3, bswap32(*(*(a1 + 112) + __rev16(*(*(a1 + 112) + *(a1 + 14) + v5)))), a1, v6);
        if (result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      ++v6;
      v5 += 2;
    }

    while (v6 < v4);
    if (*(a1 + 4))
    {
      return 0;
    }
  }

  else
  {
    LOWORD(v6) = 0;
  }

  result = reparentPage(v3, bswap32(*(*(a1 + 112) + *(a1 + 8) + 8)), a1, v6);
  *(a1 + 1) = 0;
  return result;
}

uint64_t reparentPage(uint64_t a1, int a2, uint64_t a3, __int16 a4)
{
  if (!a2)
  {
    return 0;
  }

  if (*(*a1 + 290) <= 1u && (v7 = *(*a1 + 8 * (a2 & 0x7FF) + 416)) != 0)
  {
    while (*(v7 + 8) != a2)
    {
      v7 = *(v7 + 16);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    if (*(v7 + 78))
    {
      ++*(v7 + 78);
    }

    else
    {
      _page_ref(v7);
    }

    v11 = v7 + 88;
    v12 = v11 + *(a1 + 34);
    if (*v12)
    {
      v13 = *(v12 + 128);
      if (v13 != a3)
      {
        if (v13)
        {
          sqlite3pager_unref(*(v13 + 112));
        }

        *(v12 + 128) = a3;
        if (a3)
        {
          v14 = *(a3 + 112);
          if (*(v14 - 10))
          {
            ++*(v14 - 10);
          }

          else
          {
            _page_ref((v14 - 88));
          }
        }
      }

      *(v12 + 16) = a4;
    }

    sqlite3pager_unref(v11);
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
LABEL_6:
    if (!a3)
    {
      return 0;
    }
  }

  if (!*(a1 + 31))
  {
    return 0;
  }

  v9 = *(a3 + 120);

  return ptrmapPut(a1, a2, 5, v9);
}

uint64_t allocateSpace(uint64_t a1, int a2)
{
  if (a2 <= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = a2;
  }

  v3 = *(a1 + 18);
  if (v2 > v3 || *(a1 + 2))
  {
    return 0;
  }

  v6 = *(a1 + 112);
  *(a1 + 18) = v3 - v2;
  v4 = *(a1 + 8);
  v7 = (v6 + v4);
  v8 = *(v6 + v4 + 7);
  if (v8 >= 0x3C)
  {
    v13 = v7 + 6;
    v14 = v7 + 5;
  }

  else
  {
    LODWORD(v4) = v4 + 1;
    while (1)
    {
      v9 = v4;
      v4 = __rev16(*(v6 + v4));
      if (!v4)
      {
        break;
      }

      v10 = v6 + v4;
      v11 = *(v10 + 3);
      v12 = v11 | (*(v10 + 2) << 8);
      if (v12 >= v2)
      {
        if (v12 >= v2 + 4)
        {
          *(v10 + 2) = bswap32(v12 - v2) >> 16;
          return v4 - v2 + v12;
        }

        else
        {
          *(v6 + v9) = *v10;
          v7[7] = v8 - v2 + v11;
        }

        return v4;
      }
    }

    v15 = *(v7 + 5);
    v14 = v7 + 5;
    v13 = v14 + 1;
    v4 = __rev16(v15) - v2;
    if (((*(v14 - 2) << 9) | (2 * *(v14 - 1))) + *(a1 + 14) <= v4)
    {
      goto LABEL_18;
    }
  }

  if (defragmentPage(a1))
  {
    return 0;
  }

  v4 = (*v13 | (*v14 << 8)) - v2;
LABEL_18:
  *v14 = BYTE1(v4);
  *v13 = v4;
  return v4;
}

uint64_t defragmentPage(uint64_t a1)
{
  v2 = sqlite3Malloc(*(*(a1 + 104) + 32));
  if (!v2)
  {
    return 7;
  }

  v3 = v2;
  v4 = *(a1 + 14);
  v5 = *(a1 + 20);
  v6 = *(a1 + 112);
  v7 = *(*(a1 + 104) + 36);
  v8 = v6 + *(a1 + 8);
  v9 = __rev16(*(v8 + 5));
  memcpy(&v2[v9], (v6 + v9), v7 - v9);
  if (v5)
  {
    v10 = v6 + v4 + 1;
    v11 = v5;
    LODWORD(v12) = v7;
    do
    {
      v13 = __rev16(*(v10 - 1));
      v16 = 0u;
      *__n = 0u;
      parseCellPtr(a1, &v3[v13], &v16);
      v12 = v12 - WORD1(__n[1]);
      memcpy((v6 + v12), &v3[v13], WORD1(__n[1]));
      *(v10 - 1) = bswap32(v12) >> 16;
      v10 += 2;
      --v11;
    }

    while (v11);
    v14 = v12 >> 8;
    LODWORD(v7) = v12;
  }

  else
  {
    v14 = v7 >> 8;
    LOBYTE(v12) = v7;
  }

  *(v8 + 5) = v14;
  *(v8 + 6) = v12;
  *(v8 + 1) = 0;
  *(v8 + 7) = 0;
  bzero((v6 + v4 + 2 * v5), (v7 - (v4 + 2 * v5)));
  free(v3);
  return 0;
}

uint64_t balance_quick(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v16 = 0;
  v4 = *(a1 + 104);
  v5 = *(a2 + 20);
  result = allocatePage(v4, &v17, &v16, 0, 0);
  if (!result)
  {
    v12 = 0;
    v15 = *(a1 + 24);
    v18 = 0u;
    v19 = 0u;
    parseCellPtr(a1, v15, &v18);
    v14 = WORD5(v19);
    v7 = v17;
    zeroPage(v17, **(a1 + 112));
    assemblePage(v7, 1, &v15, &v14);
    *(a1 + 2) = 0;
    *(v7 + 128) = a2;
    v8 = *(a2 + 112);
    if (*(v8 - 10))
    {
      ++*(v8 - 10);
    }

    else
    {
      _page_ref((v8 - 88));
    }

    memset(v13, 0, sizeof(v13));
    parseCellPtr(a1, *(a1 + 112) + __rev16(*(*(a1 + 14) + 2 * *(a1 + 20) + *(a1 + 112) - 2)), v13);
    result = fillInCell(a2, &v18, 0, *(&v13[0] + 1), 0, 0, &v12);
    if (!result)
    {
      result = insertCell(a2, v5, &v18, v12, 0, 4u);
      if (!result)
      {
        *findOverflowCell(a2, v5) = bswap32(*(a1 + 120));
        v9 = v16;
        *(*(a2 + 112) + *(a2 + 8) + 8) = bswap32(v16);
        if (!*(v4 + 31) || (result = ptrmapPut(v4, v9, 5, *(a2 + 120)), !result) && (OverflowCell = findOverflowCell(v7, 0), result = ptrmapPutOvflPtr(v7, OverflowCell), !result))
        {
          sqlite3pager_unref(*(v7 + 112));
          result = balance(a2, 0);
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ptrmapGet(uint64_t a1, int a2, _BYTE *a3, _DWORD *a4)
{
  v12 = 0;
  v7 = a2 - 2;
  v8 = *(a1 + 36) / 5u + 1;
  result = sqlite3pager_get(*a1, (a2 - 2) / v8 * v8 + 2, &v12);
  if (!result)
  {
    v10 = v12;
    v11 = v12 + 5 * (v7 % (*(a1 + 36) / 5u + 1));
    if (a3)
    {
      *a3 = *(v11 - 5);
    }

    if (a4)
    {
      *a4 = bswap32(*(v11 - 4));
    }

    sqlite3pager_unref(v10);
    if (a3 && *a3 - 6 < 0xFFFFFFFB)
    {
      return 11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sqlite3BtreeCreateTable(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 24) == 2)
  {
    if (*(a1 + 8))
    {
      return 6;
    }

    v21 = 0;
    v20 = 0;
    if (!*(a1 + 31))
    {
      v3 = allocatePage(a1, &v21, &v20, 1, 0);
      if (v3)
      {
        return v3;
      }

      v7 = v21;
      goto LABEL_13;
    }

    v19 = 0;
    v18 = 0;
    v22 = 0;
    Page = sqlite3pager_get(*a1, 1, &v22);
    if (Page)
    {
      return Page;
    }

    v8 = bswap32(*(v22 + 52));
    sqlite3pager_unref(v22);
    v9 = v8 + 1;
    v20 = v8 + 1;
    if (!((v8 - 1) % (*(a1 + 36) / 5u + 1)) || v8 == 0x40000000u / *(a1 + 32))
    {
      v9 = v8 + 2;
      v20 = v8 + 2;
    }

    v3 = allocatePage(a1, &v18, &v19, v9, 1);
    if (!v3)
    {
      v10 = v19;
      if (v19 == v9)
      {
        v7 = v18;
        v21 = v18;
        goto LABEL_20;
      }

      v17 = 0;
      LODWORD(v22) = 0;
      if (v18)
      {
        sqlite3pager_unref(*(v18 + 112));
      }

      Page = getPage(a1, v9, &v21);
      if (Page)
      {
        return Page;
      }

      v13 = ptrmapGet(a1, v9, &v17, &v22);
      v14 = v21;
      if (v13)
      {
        v3 = v13;
        if (!v21)
        {
          return v3;
        }

        v15 = (v21 + 112);
        goto LABEL_30;
      }

      v3 = relocatePage(a1, v21, v17, v22, v10);
      if (v14)
      {
        sqlite3pager_unref(*(v14 + 112));
      }

      if (!v3)
      {
        Page = getPage(a1, v9, &v21);
        if (Page)
        {
          return Page;
        }

        v7 = v21;
        v15 = (v21 + 112);
        v16 = sqlite3pager_write(*(v21 + 112));
        if (!v16)
        {
LABEL_20:
          updated = ptrmapPut(a1, v9, 1, 0);
          if (updated || (updated = sqlite3BtreeUpdateMeta(a1, v9), updated))
          {
            v3 = updated;
            if (!v7)
            {
              return v3;
            }

            v12 = *(v7 + 112);
LABEL_31:
            sqlite3pager_unref(v12);
            return v3;
          }

LABEL_13:
          zeroPage(v7, 8u);
          sqlite3pager_unref(*(v7 + 112));
          v3 = 0;
          *a2 = v20;
          return v3;
        }

        v3 = v16;
LABEL_30:
        v12 = *v15;
        goto LABEL_31;
      }
    }
  }

  else if (*(a1 + 26))
  {
    return 8;
  }

  else
  {
    return 1;
  }

  return v3;
}

uint64_t relocatePage(uint64_t *a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v10 = *(a2 + 120);
  v11 = *a1;
  v12 = *(a2 + 112);
  v13 = *(v12 - 80);
  if (*(v12 - 13))
  {
    v14 = *(v12 - 80);
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = *(v12 - 72);
    v16 = *(v12 - 64);
    if (v15)
    {
      *(v15 + 24) = v16;
    }

    v17 = (v11 + 8 * (v13 & 0x7FF) + 416);
    if (v16)
    {
      v17 = (v16 + 16);
    }

    *v17 = v15;
    *(v12 - 80) = 0;
    *(v12 - 72) = 0;
    *(v12 - 64) = 0;
  }

  v18 = v12 - 88;
  v19 = (v11 + 8 * (a5 & 0x7FF) + 416);
  v20 = *v19;
  if (*v19)
  {
    while (*(v20 + 8) != a5)
    {
      v20 = *(v20 + 16);
      if (!v20)
      {
        goto LABEL_24;
      }
    }

    if (a5)
    {
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v21)
      {
        *(v21 + 24) = v22;
      }

      if (v22)
      {
        v23 = (v22 + 16);
      }

      else
      {
        v23 = (v11 + 8 * (a5 & 0x7FF) + 416);
      }

      *v23 = v21;
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
    }

    *(v20 + 74) = 0;
    if (*(v20 + 75))
    {
      *(v12 - 16) = 1;
      *(v12 - 13) = 1;
    }

LABEL_24:
    v20 = *v19;
    *(v12 - 80) = a5;
    if (v20)
    {
      *(v20 + 24) = v18;
      v20 = *v19;
    }
  }

  else
  {
    *(v12 - 80) = a5;
  }

  *(v12 - 72) = v20;
  *v19 = v18;
  *(v12 - 64) = 0;
  *(v12 - 14) = 1;
  *(v11 + 294) = 1;
  if (v14)
  {
    *&v51 = 0;
    Page = sqlite3pager_get(v11, v14, &v51);
    if (Page)
    {
      return Page;
    }

    *(v11 + 293) = 1;
    v25 = v51;
    *(v51 - 16) = 1;
    *(v25 - 14) = 257;
    sqlite3pager_unref(v25);
  }

  *(a2 + 120) = a5;
  if ((a3 & 0xFFFFFFFB) == 1)
  {
    v47 = v10;
    v48 = a3;
    v46 = a4;
    v26 = *(a2 + 104);
    v27 = *a2;
    initPage(a2, 0);
    if (*(a2 + 20))
    {
      v28 = 0;
      v29 = 2 * *(a2 + 20);
      do
      {
        v30 = *(a2 + 112);
        v31 = __rev16(*(v30 + *(a2 + 14) + v28));
        v32 = ptrmapPutOvflPtr(a2, v30 + v31);
        if (v32 || !*(a2 + 4) && (v32 = ptrmapPut(v26, bswap32(*(v30 + v31)), 5, a5), v32))
        {
          v33 = v32;
          *a2 = v27;
          return v33;
        }

        v28 += 2;
      }

      while (v29 != v28);
    }

    if (*(a2 + 4))
    {
      *a2 = v27;
      v10 = v47;
      a3 = v48;
    }

    else
    {
      Page = ptrmapPut(v26, bswap32(*(*(a2 + 112) + *(a2 + 8) + 8)), 5, a5);
      *a2 = v27;
      v10 = v47;
      a3 = v48;
      if (Page)
      {
        return Page;
      }
    }

    a4 = v46;
    if (a3 == 1)
    {
      return 0;
    }
  }

  else
  {
    v34 = bswap32(**(a2 + 112));
    if (v34)
    {
      Page = ptrmapPut(a1, v34, 4, a5);
      if (Page)
      {
        return Page;
      }
    }
  }

  v50 = 0;
  Page = getPage(a1, a4, &v50);
  if (Page)
  {
    return Page;
  }

  v35 = v50;
  v36 = sqlite3pager_write(*(v50 + 112));
  if (v36)
  {
    v33 = v36;
    sqlite3pager_unref(*(v35 + 112));
    return v33;
  }

  if (a3 == 4)
  {
    v38 = *(v35 + 112);
    if (bswap32(*v38) != v10)
    {
      goto LABEL_67;
    }

    *v38 = bswap32(a5);
    goto LABEL_69;
  }

  v49 = *v35;
  initPage(v35, 0);
  v39 = *(v35 + 20);
  if (!*(v35 + 20))
  {
    v41 = 0;
    goto LABEL_63;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = *(v35 + 112);
    v43 = __rev16(*(v42 + *(v35 + 14) + v40));
    v44 = (v42 + v43);
    if (a3 != 3)
    {
      break;
    }

    v51 = 0u;
    v52 = 0u;
    parseCellPtr(v35, v42 + v43, &v51);
    if (WORD4(v52) && bswap32(*(v44 + WORD4(v52))) == v10)
    {
      *(v44 + WORD4(v52)) = bswap32(a5);
      goto LABEL_68;
    }

LABEL_59:
    ++v41;
    v40 += 2;
    if (v39 == v41)
    {
      goto LABEL_64;
    }
  }

  if (bswap32(*v44) != v10)
  {
    goto LABEL_59;
  }

  *v44 = bswap32(a5);
LABEL_63:
  if (v41 != v39)
  {
LABEL_68:
    *v35 = v49;
LABEL_69:
    sqlite3pager_unref(*(v35 + 112));

    return ptrmapPut(a1, a5, a3, a4);
  }

LABEL_64:
  v38 = *(v35 + 112);
  if (a3 == 5)
  {
    v45 = v38 + *(v35 + 8);
    if (bswap32(*(v45 + 2)) == v10)
    {
      *(v45 + 2) = bswap32(a5);
      goto LABEL_68;
    }
  }

LABEL_67:
  sqlite3pager_unref(v38);
  return 11;
}

uint64_t sqlite3BtreeUpdateMeta(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 24) == 2)
  {
    v3 = *(*(a1 + 16) + 112);
    result = sqlite3pager_write(v3);
    if (!result)
    {
      *(v3 + 52) = bswap32(a2);
    }
  }

  else if (*(a1 + 26))
  {
    return 8;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sqlite3BtreeSync(uint64_t a1)
{
  if (*(a1 + 24) != 2)
  {
    return 0;
  }

  if (!*(a1 + 31))
  {
    goto LABEL_16;
  }

  v2 = *a1;
  v3 = *(a1 + 32);
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v4 = (52429 * v3) >> 18;
  v5 = v4 + 1;
  v6 = (sqlite3pager_pagecount(v2) - 2) / v5 * v5 + 2;
  if (v6 == sqlite3pager_pagecount(v2))
  {
    return 11;
  }

  v8 = bswap32(*(*(*(a1 + 16) + 112) + 36));
  if (!v8)
  {
LABEL_16:
    v11 = 0;
    return sqlite3pager_sync(*a1, v11);
  }

  v9 = sqlite3pager_pagecount(v2);
  v10 = v9;
  v11 = v9 - v8 - (v4 + v8 - (v9 - 2) % v5) / v4;
  v12 = 0x40000000u / *(a1 + 32) + 1;
  if (v9 > v12 && v11 <= v12)
  {
    if ((v11 - 3) % (*(a1 + 36) / 5u + 1))
    {
      v13 = -1;
    }

    else
    {
      v13 = -2;
    }

    v11 += v13;
  }

  v26 = 0;
  v24 = 0;
  v14 = v11 + 1;
  if (v11 + 1 <= v9)
  {
    v16 = v11;
    do
    {
      v17 = v16;
      v16 = v14;
      if ((v17 - 1) % v5 && v17 != 0x40000000u / *(a1 + 32))
      {
        Page = ptrmapGet(a1, v14, &v26, &v24);
        if (Page)
        {
          goto LABEL_15;
        }

        if (v26 != 2)
        {
          Page = getPage(a1, v16, &v25);
          if (Page)
          {
            goto LABEL_15;
          }

          do
          {
            if (v22)
            {
              sqlite3pager_unref(*(v22 + 112));
              v22 = 0;
            }

            v18 = allocatePage(a1, &v22, &v23, 0, 0);
            if (v18)
            {
              v7 = v18;
              if (v25)
              {
                sqlite3pager_unref(*(v25 + 112));
              }

              goto LABEL_37;
            }

            v19 = v23;
          }

          while (v23 > v11);
          if (v22)
          {
            sqlite3pager_unref(*(v22 + 112));
          }

          v22 = 0;
          v20 = v25;
          v7 = relocatePage(a1, v25, v26, v24, v19);
          if (v20)
          {
            sqlite3pager_unref(*(v20 + 112));
          }

          if (v7)
          {
            goto LABEL_37;
          }
        }
      }

      v14 = v16 + 1;
    }

    while (v16 + 1 <= v10);
  }

  Page = sqlite3pager_write(*(*(a1 + 16) + 112));
  if (!Page)
  {
    *(*(*(a1 + 16) + 112) + 32) = 0;
    *(*(*(a1 + 16) + 112) + 36) = 0;
    return sqlite3pager_sync(*a1, v11);
  }

LABEL_15:
  v7 = Page;
LABEL_37:
  sqlite3pager_rollback(v2);
  return v7;
}

uint64_t findLockInfo(int a1, void *a2, void *a3)
{
  memset(&v12, 0, sizeof(v12));
  if (md_fstat_real(a1, &v12))
  {
    return 1;
  }

  *(&v14 + 1) = v12.st_ino;
  *&v14 = v12.st_dev;
  *(&v13 + 1) = v12.st_ino;
  *&v13 = v12.st_dev;
  v6 = sqlite3HashFind(lockHash, &v14);
  if (v6)
  {
    v7 = v6;
    ++v6[6];
  }

  else
  {
    v10 = malloc_type_malloc(0x20uLL, 0xFA05FFB3uLL);
    if (!v10)
    {
      ++sqlite3_malloc_failed;
      return 1;
    }

    v7 = v10;
    *v10 = v14;
    *(v10 + 6) = 1;
    *(v10 + 2) = 0;
    if (sqlite3HashInsert(lockHash, v7, v7))
    {
      free(v7);
      return 1;
    }
  }

  *a2 = v7;
  v8 = sqlite3HashFind(openHash, &v13);
  if (v8)
  {
    v9 = v8;
    ++v8[4];
LABEL_8:
    result = 0;
    *a3 = v9;
    return result;
  }

  v11 = malloc_type_malloc(0x28uLL, 0xFA05FFB3uLL);
  if (v11)
  {
    v9 = v11;
    *v11 = v13;
    *(v11 + 2) = 1;
    *(v11 + 6) = 0;
    *(v11 + 4) = 0;
    if (!sqlite3HashInsert(openHash, v9, v9))
    {
      goto LABEL_8;
    }

    free(v9);
  }

  else
  {
    ++sqlite3_malloc_failed;
  }

  releaseLockInfo(v7);
  return 1;
}

void releaseLockInfo(uint64_t a1)
{
  v2 = *(a1 + 24) - 1;
  *(a1 + 24) = v2;
  if (!v2)
  {
    sqlite3HashInsert(&lockHash, a1, 0);

    free(a1);
  }
}

uint64_t sqlite3OsOpenExclusive(char *a1, uint64_t a2, int a3)
{
  if (!access(a1, 0))
  {
    return 14;
  }

  *(a2 + 40) = -1;
  v11 = x_openat(-2, a1, 536873730, v6, v7, v8, v9, v10, 0x180u);
  *(a2 + 32) = v11;
  if (v11 < 0)
  {
    return 14;
  }

  result = findLockInfo(v11, (a2 + 24), (a2 + 16));
  if (result)
  {
    close(*(a2 + 32));
    v13 = 7;
  }

  else
  {
    v13 = 0;
    *(a2 + 36) = 256;
    if (!a3)
    {
      return result;
    }
  }

  unlink(a1);
  return v13;
}

uint64_t sqlite3OsOpenReadOnly(char *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  *(a2 + 40) = -1;
  v9 = x_openat(-2, a1, 0, a4, a5, a6, a7, a8, v11);
  *(a2 + 32) = v9;
  if (v9 < 0)
  {
    return 14;
  }

  result = findLockInfo(v9, (a2 + 24), (a2 + 16));
  if (result)
  {
    close(*(a2 + 32));
    return 7;
  }

  else
  {
    *(a2 + 36) = 256;
  }

  return result;
}

uint64_t sqlite3OsWrite(uint64_t a1, char *__buf, size_t __nbyte)
{
  if (__nbyte < 1)
  {
    return 0;
  }

  v3 = __nbyte;
  while (1)
  {
    v6 = write(*(a1 + 32), __buf, v3);
    if (v6 < 1)
    {
      break;
    }

    __buf += v6 & 0x7FFFFFFF;
    v7 = __OFSUB__(v3, v6);
    v3 -= v6;
    if ((v3 < 0) ^ v7 | (v3 == 0))
    {
      return 0;
    }
  }

  return 13;
}

uint64_t sqlite3OsSync(uint64_t a1)
{
  if (full_fsync(*(a1 + 32)))
  {
    return 10;
  }

  v3 = *(a1 + 40);
  if (v3 < 0)
  {
    return 0;
  }

  full_fsync(v3);
  close(*(a1 + 40));
  result = 0;
  *(a1 + 40) = -1;
  return result;
}

uint64_t full_fsync(int a1)
{
  result = fcntl(a1, 51, 0);
  if (result)
  {

    return fsync(a1);
  }

  return result;
}

uint64_t sqlite3OsCheckReservedLock(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3 && (v4 = *v3) != 0)
  {
    v5 = *(a1 + 32);
    v6 = *(v3 + 24);

    return v4(v6, v5);
  }

  else if (*(*(a1 + 24) + 20) > 1)
  {
    return 1;
  }

  else
  {
    v10 = v1;
    v11 = v2;
    v9 = 0x300000000;
    v8 = xmmword_1C2BFA6D0;
    fcntl(*(a1 + 32), 7, &v8);
    return WORD2(v9) != 2;
  }
}

uint64_t sqlite3OsLock(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      result = v6(*(v5 + 24), *(a1 + 32), a2);
      if (result)
      {
        if (v2 == 4)
        {
          *(a1 + 36) = 3;
        }
      }

      else
      {
        *(a1 + 36) = v2;
      }

      return result;
    }
  }

  v8 = *(a1 + 36);
  if (v8 >= a2)
  {
    return 0;
  }

  v9 = *(v4 + 20);
  if (v9 != v8)
  {
    result = 5;
    if (a2 > 1 || v9 > 2)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (a2 == 1)
  {
LABEL_15:
    if ((v9 - 1) <= 1)
    {
      result = 0;
      *(a1 + 36) = 1;
      ++*(v4 + 16);
      ++*(*(a1 + 16) + 20);
      return result;
    }

    v10 = 1;
    v14 = 1;
    v11 = 1;
    goto LABEL_19;
  }

  v14 = 1;
  if (a2 != 4)
  {
    goto LABEL_26;
  }

  if (v8 > 2)
  {
    goto LABEL_27;
  }

  v10 = 0;
  v11 = 3;
LABEL_19:
  WORD2(v15) = v11;
  v13 = 0x40000000;
  if (fcntl(*(a1 + 32), 8, &v13))
  {
    if (*__error() == 22)
    {
      return 22;
    }

    else
    {
      return 5;
    }
  }

  if (!v10)
  {
LABEL_26:
    if (v2 != 4)
    {
      WORD2(v15) = 3;
      if (v2 == 2)
      {
        v13 = 1073741825;
      }

LABEL_32:
      if (!fcntl(*(a1 + 32), 8, &v13))
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }

LABEL_27:
    if (*(v4 + 16) > 1)
    {
      result = 5;
LABEL_37:
      *(a1 + 36) = 3;
      *(v4 + 20) = 3;
      return result;
    }

    WORD2(v15) = 3;
    v13 = 1073741826;
    v14 = 510;
    goto LABEL_32;
  }

  v13 = 1073741826;
  v14 = 510;
  v12 = fcntl(*(a1 + 32), 8, &v13);
  v13 = 0x40000000;
  v14 = 1;
  WORD2(v15) = 2;
  fcntl(*(a1 + 32), 8, &v13);
  if (!v12)
  {
    ++*(*(a1 + 16) + 20);
    *(v4 + 16) = 1;
LABEL_38:
    result = 0;
    *(a1 + 36) = v2;
    *(v4 + 20) = v2;
    return result;
  }

LABEL_33:
  if (*__error() == 22)
  {
    result = 22;
  }

  else
  {
    result = 5;
  }

  if (v2 == 4)
  {
    goto LABEL_37;
  }

  return result;
}

uint64_t sqlite3OsUnlock(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v16 = 0;
  v15 = 0uLL;
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = v5(*(v4 + 24), *(a1 + 32), a2);
    if (!v6)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = *(a1 + 36);
    if (v7 > a2)
    {
      v8 = *(a1 + 24);
      if (v7 < 2)
      {
        v6 = 0;
        if (a2)
        {
LABEL_25:
          *(a1 + 36) = v2;
          return v6;
        }
      }

      else
      {
        if (a2 == 1)
        {
          WORD2(v16) = 1;
          v15 = xmmword_1C2BFA6E0;
          if (fcntl(*(a1 + 32), 8, &v15))
          {
            v6 = 10;
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }

        HIDWORD(v16) = 2;
        v15 = xmmword_1C2BFA6F0;
        fcntl(*(a1 + 32), 8, &v15);
        *(v8 + 20) = 1;
        if (v2)
        {
          goto LABEL_25;
        }
      }

      v9 = *(v8 + 16) - 1;
      *(v8 + 16) = v9;
      if (!v9)
      {
        HIDWORD(v16) = 2;
        v15 = 0uLL;
        fcntl(*(a1 + 32), 8, &v15);
        *(v8 + 20) = 0;
      }

      v10 = *(a1 + 16);
      v11 = *(v10 + 20) - 1;
      *(v10 + 20) = v11;
      if (!v11 && *(v10 + 24) >= 1)
      {
        v12 = 0;
        do
        {
          close(*(*(v10 + 32) + 4 * v12++));
        }

        while (v12 < *(v10 + 24));
        v13 = *(v10 + 32);
        if (v13)
        {
          free(v13);
        }

        *(v10 + 24) = 0;
        *(v10 + 32) = 0;
      }

      goto LABEL_25;
    }

    return 0;
  }

  return v6;
}

void sqlite3OsClose(uint64_t a1)
{
  if (!*(a1 + 37))
  {
    return;
  }

  sqlite3OsUnlock(a1, 0);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      v3();
    }
  }

  v4 = *(a1 + 40);
  if ((v4 & 0x80000000) == 0)
  {
    close(v4);
  }

  *(a1 + 40) = -1;
  v5 = *(a1 + 16);
  if (*(v5 + 20))
  {
    v6 = *(v5 + 24) + 1;
    *(v5 + 24) = v6;
    v7 = *(v5 + 32);
    v8 = 4 * v6;
    if (!v7)
    {
      v9 = sqlite3Malloc(4 * v6);
      goto LABEL_18;
    }

    if (v8)
    {
      v9 = malloc_type_realloc(v7, v8, 0xF4D520ABuLL);
      if (v8 < 1 || v9 != 0)
      {
LABEL_18:
        if (v9)
        {
          *(v5 + 32) = v9;
          v9[*(v5 + 24) - 1] = *(a1 + 32);
        }

        goto LABEL_21;
      }

      ++sqlite3_malloc_failed;
    }

    else
    {
      free(v7);
    }
  }

  else
  {
    close(*(a1 + 32));
  }

LABEL_21:
  releaseLockInfo(*(a1 + 24));
  v11 = *(a1 + 16);
  v12 = *(v11 + 16) - 1;
  *(v11 + 16) = v12;
  if (!v12)
  {
    sqlite3HashInsert(&openHash, v11, 0);
    v13 = *(v11 + 32);
    if (v13)
    {
      free(v13);
    }

    free(v11);
  }

  *(a1 + 37) = 0;
}

off_t sqlite3pager_pagecount(uint64_t a1)
{
  result = *(a1 + 168);
  if ((result & 0x80000000) != 0)
  {
    memset(&v6, 0, sizeof(v6));
    if (md_fstat_real(*(a1 + 56), &v6))
    {
      result = 0;
      *(a1 + 290) |= 0x10u;
    }

    else
    {
      v3 = *(a1 + 224);
      v4 = v6.st_size / v3;
      if (v6.st_size / v3 == 0x40000000 / v3)
      {
        v5 = v4 + 1;
      }

      else
      {
        v5 = v6.st_size / v3;
      }

      if (*(a1 + 296))
      {
        result = v4;
      }

      else
      {
        result = v5;
      }

      if (*(a1 + 289))
      {
        *(a1 + 168) = result;
      }
    }
  }

  return result;
}

void memoryTruncate(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (v1)
  {
    v3 = *(a1 + 168);
    v4 = (a1 + 360);
    do
    {
      if (*(v1 + 8) > v3)
      {
        if (*(v1 + 78) < 1)
        {
          *v4 = *(v1 + 48);
          unlinkPage(v1);
          free(v1);
          --*(a1 + 232);
          goto LABEL_7;
        }

        bzero((v1 + 88), *(a1 + 224));
      }

      v4 = (v1 + 48);
LABEL_7:
      v1 = *v4;
    }

    while (*v4);
  }
}

uint64_t syncJournal(uint64_t a1)
{
  if (!*(a1 + 293))
  {
    return 0;
  }

  if (!*(a1 + 291))
  {
    if (*(a1 + 288))
    {
      result = sqlite3OsSync(a1 + 72);
      if (result)
      {
        return result;
      }
    }

    lseek(*(a1 + 104), *(a1 + 384) + 8, 0);
    __buf = bswap32(*(a1 + 192));
    p_buf = &__buf;
    v5 = 4;
    do
    {
      v6 = write(*(a1 + 104), p_buf, v5);
      if (v6 < 1)
      {
        return 13;
      }

      p_buf = (p_buf + (v6 & 0x7FFFFFFF));
      v7 = __OFSUB__(v5, v6);
      v5 -= v6;
    }

    while (!((v5 < 0) ^ v7 | (v5 == 0)));
    lseek(*(a1 + 104), *(a1 + 376), 0);
    result = sqlite3OsSync(a1 + 72);
    if (result)
    {
      return result;
    }

    *(a1 + 281) = 1;
  }

  *(a1 + 293) = 0;
  for (i = *(a1 + 360); i; i = *(i + 48))
  {
    *(i + 75) = 0;
  }

  result = 0;
  *(a1 + 352) = *(a1 + 336);
  return result;
}

uint64_t pager_wait_on_lock(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 289) >= a2)
  {
    return 0;
  }

  v4 = 1;
  while (1)
  {
    result = sqlite3OsLock(a1 + 24, a2);
    if (result != 5)
    {
      break;
    }

    v6 = *(a1 + 328);
    if (v6)
    {
      if (*v6)
      {
        v7 = (*v6)(*(v6 + 8), v4);
        v4 = (v4 + 1);
        if (v7)
        {
          continue;
        }
      }
    }

    return 5;
  }

  if (!result)
  {
    *(a1 + 289) = a2;
  }

  return result;
}

uint64_t unlinkPage(uint64_t result)
{
  v1 = *result;
  if (*(*result + 352) == result)
  {
    v2 = result;
    do
    {
      v2 = *(v2 + 32);
    }

    while (v2 && *(v2 + 75));
    v1[44] = v2;
  }

  v4 = *(result + 32);
  v3 = *(result + 40);
  v5 = v1 + 42;
  if (v3)
  {
    v5 = (v3 + 32);
  }

  *v5 = v4;
  if (v4)
  {
    v6 = (v4 + 40);
  }

  else
  {
    v6 = v1 + 43;
  }

  *v6 = v3;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v7 = *(result + 8);
  if (v7)
  {
    v8 = *(result + 16);
    v9 = *(result + 24);
    if (v8)
    {
      *(v8 + 24) = v9;
    }

    v10 = &v1[(v7 & 0x7FF) + 52];
    if (v9)
    {
      v10 = (v9 + 16);
    }

    *v10 = v8;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  return result;
}

void sqlite3pager_close(uint64_t a1)
{
  v2 = *(a1 + 289);
  if ((v2 - 4) >= 2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    if (v2 != 2)
    {
      goto LABEL_7;
    }
  }

  sqlite3pager_rollback(a1);
LABEL_5:
  if (!*(a1 + 296))
  {
    sqlite3OsUnlock(a1 + 24, 0);
  }

LABEL_7:
  v3 = *(a1 + 360);
  if (!v3)
  {
    sqlite3OsClose(a1 + 24);
LABEL_12:

    free(a1);
    return;
  }

  do
  {
    v4 = v3[6];
    free(v3);
    v3 = v4;
  }

  while (v4);
  sqlite3OsClose(a1 + 24);
  if (a1)
  {
    goto LABEL_12;
  }
}

uint64_t sqlite3pager_rollback(uint64_t a1)
{
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v19 = *MEMORY[0x1E69E9840];
  if (*(v1 + 296))
  {
    for (i = *(v1 + 360); i; i = *(i + 48))
    {
      if (*(i + 74))
      {
        v5 = i + 88 + *(v3 + 204) + *(v3 + 228);
        if (*v5)
        {
          memcpy((i + 88), *v5, *(v3 + 224));
          if (*v5)
          {
            free(*v5);
          }
        }

        v6 = *(v5 + 8);
        if (v6)
        {
          free(v6);
        }

        *v5 = 0;
        *(v5 + 8) = 0;
        *(i + 56) = 0;
        *(i + 64) = 0;
        *(i + 71) = 0;
        v7 = *(v3 + 216);
        if (v7)
        {
          v7(i + 88, *(v3 + 224), v2);
        }
      }
    }

    *(v3 + 368) = 0;
    *(v3 + 168) = *(v3 + 172);
    memoryTruncate(v3);
    result = 0;
    *(v3 + 285) = 0;
    *(v3 + 289) = 1;
    goto LABEL_35;
  }

  if (!*(v1 + 294) || !*(v1 + 280))
  {
    result = pager_unwritelock(v1);
    goto LABEL_34;
  }

  v9 = *(v1 + 290);
  v10 = *(v1 + 289);
  if (v9 >= 2)
  {
    if (v10 >= 4)
    {
      pager_playback(v1);
      v9 = *(v3 + 290);
    }

    v17 = ((v9 << 29) >> 31) & 0xF;
    if ((v9 & 0x10) != 0)
    {
      v17 = 10;
    }

    if (v9)
    {
      v17 = 13;
    }

    if ((v9 & 2) != 0)
    {
      v17 = 7;
    }

    if ((v9 & 8) != 0)
    {
      result = 11;
    }

    else
    {
      result = v17;
    }

    goto LABEL_35;
  }

  if (v10 != 2)
  {
    result = pager_playback(v1);
LABEL_48:
    if (result)
    {
      goto LABEL_49;
    }

    goto LABEL_34;
  }

  v11 = *(v1 + 360);
  if (!v11)
  {
LABEL_32:
    result = pager_unwritelock(v3);
    goto LABEL_48;
  }

  while (!*(v11 + 74))
  {
LABEL_31:
    v11 = *(v11 + 48);
    if (!v11)
    {
      goto LABEL_32;
    }
  }

  v12 = *(v11 + 8);
  LODWORD(v13) = *(v3 + 224);
  if (v12 > *(v3 + 172))
  {
    __memset_chk();
    goto LABEL_23;
  }

  lseek(*(v3 + 56), v13 * (v12 - 1), 0);
  v14 = *(v3 + 224);
  if (v14 == read(*(v3 + 56), __s1, v14))
  {
    LODWORD(v13) = *(v3 + 224);
LABEL_23:
    if (*(v11 + 78))
    {
      v13 = v13;
      if (!memcmp(__s1, (v11 + 88), v13))
      {
LABEL_30:
        *(v11 + 74) = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v13 = v13;
    }

    memcpy((v11 + 88), __s1, v13);
    v15 = *(v3 + 216);
    if (v15)
    {
      v15(v11 + 88, *(v3 + 224));
    }

    else
    {
      bzero((v11 + 88 + *(v3 + 228)), *(v3 + 204));
    }

    goto LABEL_30;
  }

  pager_unwritelock(v3);
LABEL_49:
  *(v3 + 290) |= 8u;
  result = 11;
LABEL_34:
  *(v3 + 168) = -1;
LABEL_35:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t pager_unwritelock(uint64_t a1)
{
  if (*(a1 + 289) < 2u)
  {
    return 0;
  }

  if (*(a1 + 285))
  {
    if (!*(a1 + 296))
    {
      lseek(*(a1 + 152), 0, 0);
      v3 = *(a1 + 312);
      if (v3)
      {
        free(v3);
      }

      *(a1 + 312) = 0;
    }

    v4 = *(a1 + 368);
    if (v4)
    {
      do
      {
        v5 = *(v4 + 56);
        *(v4 + 73) = 0;
        *(v4 + 56) = 0;
        *(v4 + 64) = 0;
        if (*(a1 + 296))
        {
          v6 = v4 + *(a1 + 204) + *(a1 + 228);
          v7 = *(v6 + 96);
          if (v7)
          {
            free(v7);
          }

          *(v6 + 96) = 0;
        }

        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 200) = 0;
    *(a1 + 285) = 0;
    *(a1 + 368) = 0;
  }

  *(a1 + 286) = 0;
  if (*(a1 + 284))
  {
    sqlite3OsClose(a1 + 120);
    *(a1 + 284) = 0;
  }

  if (*(a1 + 280))
  {
    sqlite3OsClose(a1 + 72);
    *(a1 + 280) = 0;
    unlink(*(a1 + 8));
    v8 = *(a1 + 304);
    if (v8)
    {
      free(v8);
    }

    *(a1 + 304) = 0;
    for (i = *(a1 + 360); i; i = *(i + 48))
    {
      *(i + 72) = 0;
      *(i + 74) = 0;
    }

    *(a1 + 294) = 0;
    *(a1 + 192) = 0;
  }

  result = sqlite3OsUnlock(a1 + 24, 1);
  *(a1 + 289) = 1;
  *(a1 + 172) = 0;
  *(a1 + 320) = 0;
  return result;
}

uint64_t pager_playback(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v56 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v49 = 0;
  memset(__src, 0, 144);
  if (md_fstat_real(*(v1 + 104), __src))
  {
    Only = 10;
    goto LABEL_3;
  }

  st_size = __src[0].st_size;
  v51 = 0;
  MasterJournal = readMasterJournal(v2 + 72, &v49);
  v8 = v49;
  if (MasterJournal)
  {
    Only = MasterJournal;
    if (v49)
    {
      free(v49);
    }

    v8 = 0;
    v49 = 0;
    if (Only != 101)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  if (!v49 || !access(v49, 0))
  {
    lseek(*(v2 + 104), 0, 0);
    v17 = v2 + 416;
    for (*(v2 + 376) = 0; ; *(v2 + 376) = st_size)
    {
      do
      {
LABEL_20:
        seekJournalHdr(v2);
        if (*(v2 + 376) + *(v2 + 408) > st_size)
        {
          goto LABEL_12;
        }

        v18 = read(*(v2 + 104), __src, 8uLL);
        if (v18 == 8)
        {
          Only = 0;
        }

        else
        {
          Only = 10;
        }

        if (v18 != 8)
        {
          goto LABEL_14;
        }

        if (*&__src[0].st_dev != 0xD763A120F905D5D9)
        {
          goto LABEL_12;
        }

        v9 = read32bits(*(v2 + 104), &v51);
        if (v9)
        {
          goto LABEL_13;
        }

        v9 = read32bits(*(v2 + 104), (v2 + 196));
        if (v9)
        {
          goto LABEL_13;
        }

        v9 = read32bits(*(v2 + 104), &v50);
        if (v9)
        {
          goto LABEL_13;
        }

        v9 = read32bits(*(v2 + 104), (v2 + 408));
        if (v9)
        {
          goto LABEL_13;
        }

        v19 = *(v2 + 376) + *(v2 + 408);
        *(v2 + 376) = v19;
        lseek(*(v2 + 104), v19, 0);
        LODWORD(v20) = v51;
        if (v51 == -1)
        {
          v20 = (st_size - *(v2 + 408)) / (*(v2 + 224) + 8);
          v51 = v20;
        }

        if (*(v2 + 289) >= 4u && *(v2 + 376) == *(v2 + 408))
        {
          v21 = v50;
          if (ftruncate(*(v2 + 56), *(v2 + 224) * v50))
          {
            Only = 10;
            if (v8)
            {
              goto LABEL_96;
            }

            goto LABEL_3;
          }

          *(v2 + 168) = v21;
        }
      }

      while (!v20);
      v22 = 0;
      while (1)
      {
        LODWORD(v53[0]) = 0;
        v23 = read32bits(*(v2 + 104), v53);
        if (v23)
        {
          Only = v23;
          goto LABEL_14;
        }

        v24 = *(v2 + 224);
        v25 = read(*(v2 + 104), __src, v24);
        v26 = v24 == v25;
        if (v24 == v25)
        {
          Only = 0;
        }

        else
        {
          Only = 10;
        }

        if (!v26)
        {
          goto LABEL_52;
        }

        v27 = *(v2 + 224);
        *(v2 + 376) += v27 + 4;
        v28 = v53[0];
        if (!LODWORD(v53[0]) || LODWORD(v53[0]) == 0x40000000 / v27 + 1)
        {
          goto LABEL_72;
        }

        if (LODWORD(v53[0]) <= *(v2 + 168))
        {
          break;
        }

LABEL_53:
        if (++v22 == v20)
        {
          goto LABEL_20;
        }
      }

      LODWORD(__s1) = 0;
      v29 = read32bits(*(v2 + 104), &__s1);
      if (v29)
      {
        Only = v29;
LABEL_52:
        if (Only)
        {
          goto LABEL_14;
        }

        goto LABEL_53;
      }

      *(v2 + 376) += 4;
      v30 = *(v2 + 196);
      v31 = *(v2 + 224);
      if (v31 >= 201)
      {
        v32 = v31 + 200;
        do
        {
          v30 += *(&__src[-2] + v32 - 112);
          v32 -= 200;
        }

        while (v32 > 0x190);
      }

      if (v30 == __s1)
      {
        break;
      }

LABEL_72:
      ;
    }

    v48 = v17;
    for (i = *(v17 + 8 * (v28 & 0x7FF)); i; i = *(i + 16))
    {
      if (*(i + 8) == v28)
      {
        break;
      }
    }

    if (*(v2 + 289) < 4u)
    {
      Only = 0;
    }

    else
    {
      lseek(*(v2 + 56), v31 * (v28 - 1), 0);
      Only = sqlite3OsWrite(v2 + 24, __src, *(v2 + 224));
    }

    if (i)
    {
      memcpy((i + 88), __src, *(v2 + 224));
      v34 = *(v2 + 208);
      if (v34)
      {
        v34(i + 88, *(v2 + 224));
      }

      if (*(v2 + 289) >= 4u)
      {
        *(i + 74) = 0;
      }
    }

    v17 = v48;
    if (Only)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

  free(v8);
  v8 = 0;
  v49 = 0;
LABEL_12:
  v9 = pager_unwritelock(v2);
LABEL_13:
  Only = v9;
LABEL_14:
  if (v8)
  {
    if (Only)
    {
      goto LABEL_96;
    }

    *v54 = 0u;
    memset(v53, 0, sizeof(v53));
    Only = sqlite3OsOpenReadOnly(v8, v53, v10, v11, v12, v13, v14, v15);
    if (!Only)
    {
      memset(__src, 0, 144);
      v16 = v54[0];
      if (md_fstat_real(v54[0], __src))
      {
        Only = 10;
      }

      else
      {
        v35 = __src[0].st_size;
        if (__src[0].st_size < 1)
        {
          v36 = 0;
LABEL_88:
          unlink(v8);
LABEL_89:
          Only = 0;
          if (v36)
          {
LABEL_93:
            free(v36);
          }
        }

        else
        {
          __s1 = 0;
          v36 = sqlite3Malloc(__src[0].st_size);
          if (v36)
          {
            v37 = read(v16, v36, v35);
            if (v37 == v35)
            {
              Only = 0;
            }

            else
            {
              Only = 10;
            }

            if (v37 == v35)
            {
              v38 = v36;
              while (1)
              {
                if (!access(v38, 0))
                {
                  memset(__src, 0, 48);
                  v45 = sqlite3OsOpenReadOnly(v38, __src, v39, v40, v41, v42, v43, v44);
                  if (v45)
                  {
                    Only = v45;
                    goto LABEL_93;
                  }

                  Only = readMasterJournal(__src, &__s1);
                  sqlite3OsClose(__src);
                  if (Only)
                  {
                    break;
                  }

                  v46 = __s1;
                  if (__s1)
                  {
                    v47 = strcmp(__s1, v8);
                    free(v46);
                    if (!v47)
                    {
                      goto LABEL_89;
                    }
                  }
                }

                v38 += strlen(v38) + 1;
                if (v38 - v36 >= v35)
                {
                  goto LABEL_88;
                }
              }
            }
          }

          else
          {
            Only = 7;
          }

          if (v36)
          {
            goto LABEL_93;
          }
        }
      }

      sqlite3OsClose(v53);
    }

    v8 = v49;
    if (v49)
    {
LABEL_96:
      free(v8);
    }
  }

LABEL_3:
  *(v2 + 408) = 512;
  v4 = *MEMORY[0x1E69E9840];
  return Only;
}

uint64_t readMasterJournal(uint64_t a1, void **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  memset(&v20, 0, sizeof(v20));
  if (md_fstat_real(*(a1 + 32), &v20))
  {
    v4 = 10;
    goto LABEL_8;
  }

  v5 = v20.st_size - 16;
  if (v20.st_size < 16)
  {
LABEL_4:
    v4 = 0;
    goto LABEL_8;
  }

  lseek(*(a1 + 32), v20.st_size - 16, 0);
  v19 = 0;
  v6 = read32bits(*(a1 + 32), &v19);
  if (v6 || (v18 = 0, v6 = read32bits(*(a1 + 32), &v18), v6))
  {
    v4 = v6;
    goto LABEL_8;
  }

  v9 = read(*(a1 + 32), &v20, 8uLL);
  if (v9 == 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = 10;
  }

  if (v9 == 8)
  {
    if (*&v20.st_dev != 0xD763A120F905D5D9)
    {
      goto LABEL_4;
    }

    v10 = v19;
    lseek(*(a1 + 32), v5 - v19, 0);
    v11 = sqlite3Malloc(v10 + 1);
    *a2 = v11;
    if (v11)
    {
      v12 = read(*(a1 + 32), v11, v10);
      if (v10 == v12)
      {
        v4 = 0;
      }

      else
      {
        v4 = 10;
      }

      if (v10 == v12)
      {
        v13 = v18;
        v14 = *a2;
        if (v10)
        {
          v15 = *a2;
          v16 = v10;
          do
          {
            v17 = *v15++;
            v13 -= v17;
            --v16;
          }

          while (v16);
        }

        if (!v13)
        {
          v4 = 0;
          v14[v10] = 0;
          goto LABEL_8;
        }

        if (v14)
        {
          free(v14);
        }

        v4 = 0;
      }

      else if (*a2)
      {
        free(*a2);
      }

      *a2 = 0;
    }

    else
    {
      v4 = 7;
    }
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t read32bits(int a1, unsigned int *a2)
{
  v5 = 0;
  if (read(a1, &v5, 4uLL) == 4)
  {
    result = 0;
    v4 = bswap32(v5);
  }

  else
  {
    result = 10;
    v4 = v5;
  }

  *a2 = v4;
  return result;
}

off_t seekJournalHdr(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (v1)
  {
    v2 = *(a1 + 408) + *(a1 + 408) * ((v1 - 1) / *(a1 + 408));
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 376) = v2;
  return lseek(*(a1 + 104), v2, 0);
}

uint64_t *_page_ref(uint64_t *result)
{
  v1 = *(result + 39);
  if (!v1)
  {
    v2 = *result;
    if (*(*result + 352) == result)
    {
      v3 = result;
      do
      {
        v3 = v3[4];
      }

      while (v3 && *(v3 + 75));
      *(v2 + 352) = v3;
    }

    v5 = result[4];
    v4 = result[5];
    v6 = (v2 + 336);
    if (v4)
    {
      v6 = (v4 + 32);
    }

    *v6 = v5;
    if (v5)
    {
      v7 = (v5 + 40);
    }

    else
    {
      v7 = (v2 + 344);
    }

    *v7 = v4;
    ++*(v2 + 236);
  }

  *(result + 39) = v1 + 1;
  return result;
}

uint64_t sqlite3pager_get(uint64_t a1, int a2, void *a3)
{
  v3 = (a2 - 1);
  if (a2 < 1)
  {
    return 11;
  }

  *a3 = 0;
  v6 = *(a1 + 290);
  if (v6 >= 2)
  {
    goto LABEL_69;
  }

  if (*(a1 + 236) || *(a1 + 296))
  {
    for (i = *(a1 + 8 * (a2 & 0x7FF) + 416); i; i = *(i + 16))
    {
      if (*(i + 8) == a2)
      {
        break;
      }
    }

    if (*(a1 + 296) && !*(a1 + 289))
    {
      *(a1 + 289) = 1;
      if (i)
      {
LABEL_11:
        ++*(a1 + 244);
        if (*(i + 78))
        {
          ++*(i + 78);
        }

        else
        {
          _page_ref(i);
        }

        goto LABEL_17;
      }
    }

    else if (i)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(a1 + 283))
    {
      v15 = pager_wait_on_lock(a1, 1);
      if (v15)
      {
        return v15;
      }
    }

    if (*(a1 + 282) && !access(*(a1 + 8), 0) && !sqlite3OsCheckReservedLock(a1 + 24))
    {
      v33 = sqlite3OsLock(a1 + 24, 4);
      if (v33)
      {
        v9 = v33;
        sqlite3OsUnlock(a1 + 24, 0);
        *(a1 + 289) = 0;
        return v9;
      }

      *(a1 + 289) = 4;
      if (sqlite3OsOpenReadOnly(*(a1 + 8), a1 + 72, v34, v35, v36, v37, v38, v39))
      {
        sqlite3OsUnlock(a1 + 24, 0);
        *(a1 + 289) = 0;
        return 5;
      }

      *(a1 + 280) = 1;
      *(a1 + 320) = 0;
      *(a1 + 376) = 0;
      *(a1 + 384) = 0;
      v15 = pager_playback(a1);
      if (v15)
      {
        return v15;
      }
    }
  }

  ++*(a1 + 248);
  if (*(a1 + 232) >= *(a1 + 240) && *(a1 + 336) && !*(a1 + 296))
  {
    i = *(a1 + 352);
    if (!i)
    {
      if (syncJournal(a1))
      {
        goto LABEL_89;
      }

      if (*(a1 + 288))
      {
        *(a1 + 192) = 0;
        if (writeJournalHdr(a1))
        {
          goto LABEL_89;
        }
      }

      i = *(a1 + 336);
    }

    if (!*(i + 74) || (*(i + 80) = 0, !pager_write_pagelist(i)))
    {
      if (*(i + 76))
      {
        *(a1 + 295) = 1;
      }

      unlinkPage(i);
      ++*(a1 + 252);
LABEL_33:
      *(i + 8) = a2;
      v14 = *(a1 + 304);
      if (v14)
      {
        if (*(a1 + 172) >= a2)
        {
          LODWORD(v14) = (*(v14 + (a2 >> 3)) >> (a2 & 7)) & 1;
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      *(i + 72) = v14;
      *(i + 75) = 0;
      v16 = *(a1 + 312);
      if (v16 && *(a1 + 176) >= a2 && ((*(v16 + (a2 >> 3)) >> (a2 & 7)) & 1) != 0)
      {
        if (!*(i + 73))
        {
          v17 = *i;
          *(i + 64) = 0;
          v18 = *(v17 + 368);
          if (v18)
          {
            *(v18 + 64) = i;
          }

          *(i + 56) = v18;
          *(v17 + 368) = i;
          *(i + 73) = 1;
        }
      }

      else if (*(i + 73))
      {
        v19 = *(i + 56);
        v20 = *(i + 64);
        if (v20)
        {
          v21 = (v20 + 56);
        }

        else
        {
          v21 = (*i + 368);
        }

        *v21 = v19;
        if (v19)
        {
          *(v19 + 64) = v20;
        }

        *(i + 73) = 0;
        *(i + 56) = 0;
        *(i + 64) = 0;
      }

      *(i + 74) = 0;
      *(i + 78) = 1;
      ++*(a1 + 236);
      v22 = a1 + 8 * (a2 & 0x7FF);
      *(i + 16) = *(v22 + 416);
      *(v22 + 416) = i;
      v23 = *(i + 16);
      if (v23)
      {
        *(v23 + 24) = i;
      }

      v24 = *(a1 + 204);
      if (v24 >= 1)
      {
        bzero((i + *(a1 + 228) + 88), v24);
      }

      v25 = sqlite3pager_pagecount(a1);
      if (*(a1 + 290))
      {
        sqlite3pager_unref(i + 88);
        v6 = *(a1 + 290);
LABEL_69:
        v26 = ((v6 << 29) >> 31) & 0xF;
        if ((v6 & 0x10) != 0)
        {
          v26 = 10;
        }

        if (v6)
        {
          v26 = 13;
        }

        if ((v6 & 2) != 0)
        {
          v26 = 7;
        }

        if ((v6 & 8) != 0)
        {
          return 11;
        }

        else
        {
          return v26;
        }
      }

      if (v25 >= a2)
      {
        lseek(*(a1 + 56), *(a1 + 224) * v3, 0);
        v29 = *(a1 + 224);
        v30 = read(*(a1 + 56), (i + 88), v29);
        v31 = v29 == v30;
        if (v29 == v30)
        {
          v9 = 0;
        }

        else
        {
          v9 = 10;
        }

        if (v31)
        {
          ++*(a1 + 256);
          goto LABEL_17;
        }

        memset(&v40, 0, sizeof(v40));
        v32 = md_fstat_real(*(a1 + 56), &v40);
        if (v32 || (v28 = *(a1 + 224), v40.st_size >= (v28 * a2)))
        {
          sqlite3pager_unref(i + 88);
          return v9;
        }
      }

      else
      {
        v28 = *(a1 + 224);
      }

      bzero((i + 88), v28);
LABEL_17:
      v9 = 0;
      *a3 = i + 88;
      return v9;
    }

LABEL_89:
    sqlite3pager_rollback(a1);
    return 10;
  }

  v10 = *(a1 + 228) + *(a1 + 204) + 16 * *(a1 + 296) + 92;
  v11 = malloc_type_malloc(v10, 0xFA05FFB3uLL);
  if (v10 >= 1 && v11 == 0)
  {
    ++sqlite3_malloc_failed;
  }

  else
  {
    i = v11;
    if (v11)
    {
      v11[10] = 0;
      *(v11 + 3) = 0u;
      *(v11 + 4) = 0u;
      *(v11 + 1) = 0u;
      *(v11 + 2) = 0u;
      *v11 = 0u;
      if (*(a1 + 296))
      {
        v13 = v11 + *(a1 + 204) + *(a1 + 228);
        *(v13 + 11) = 0;
        *(v13 + 12) = 0;
      }

      *v11 = a1;
      v11[6] = *(a1 + 360);
      *(a1 + 360) = v11;
      ++*(a1 + 232);
      goto LABEL_33;
    }
  }

  if (!*(a1 + 296))
  {
    pager_unwritelock(a1);
  }

  *(a1 + 290) |= 2u;
  return 7;
}

uint64_t writeJournalHdr(uint64_t a1)
{
  seekJournalHdr(a1);
  v2 = *(a1 + 376);
  *(a1 + 384) = v2;
  if (!*(a1 + 392))
  {
    *(a1 + 392) = v2;
  }

  *(a1 + 376) = v2 + *(a1 + 408);
  v3 = &aJournalMagic;
  v4 = 8;
  while (1)
  {
    v5 = write(*(a1 + 104), v3, v4);
    if (v5 < 1)
    {
      break;
    }

    v3 += v5 & 0x7FFFFFFF;
    v6 = __OFSUB__(v4, v5);
    v4 -= v5;
    if ((v4 < 0) ^ v6 | (v4 == 0))
    {
      if (*(a1 + 287))
      {
        v7 = 255;
      }

      else
      {
        v7 = 0;
      }

      __buf = 16843009 * v7;
      p_buf = &__buf;
      v9 = 4;
      while (1)
      {
        v10 = write(*(a1 + 104), p_buf, v9);
        if (v10 < 1)
        {
          break;
        }

        p_buf = (p_buf + (v10 & 0x7FFFFFFF));
        v6 = __OFSUB__(v9, v10);
        v9 -= v10;
        if ((v9 < 0) ^ v6 | (v9 == 0))
        {
          v11 = 4;
          sqlite3Randomness(4, (a1 + 196));
          __buf = bswap32(*(a1 + 196));
          v12 = &__buf;
          while (1)
          {
            v13 = write(*(a1 + 104), v12, v11);
            if (v13 < 1)
            {
              break;
            }

            v12 = (v12 + (v13 & 0x7FFFFFFF));
            v6 = __OFSUB__(v11, v13);
            v11 -= v13;
            if ((v11 < 0) ^ v6 | (v11 == 0))
            {
              __buf = bswap32(*(a1 + 168));
              v14 = &__buf;
              v15 = 4;
              while (1)
              {
                v16 = write(*(a1 + 104), v14, v15);
                if (v16 < 1)
                {
                  break;
                }

                v14 = (v14 + (v16 & 0x7FFFFFFF));
                v6 = __OFSUB__(v15, v16);
                v15 -= v16;
                if ((v15 < 0) ^ v6 | (v15 == 0))
                {
                  __buf = bswap32(*(a1 + 408));
                  v17 = &__buf;
                  v18 = 4;
                  while (1)
                  {
                    v19 = write(*(a1 + 104), v17, v18);
                    if (v19 < 1)
                    {
                      break;
                    }

                    v17 = (v17 + (v19 & 0x7FFFFFFF));
                    v6 = __OFSUB__(v18, v19);
                    v18 -= v19;
                    if ((v18 < 0) ^ v6 | (v18 == 0))
                    {
                      lseek(*(a1 + 104), *(a1 + 376) - 1, 0);
                      v20 = &byte_1C2C00804;
                      v21 = 1;
                      while (1)
                      {
                        v22 = write(*(a1 + 104), v20, v21);
                        if (v22 < 1)
                        {
                          break;
                        }

                        result = 0;
                        v20 += v22 & 0x7FFFFFFF;
                        v6 = __OFSUB__(v21, v22);
                        v21 -= v22;
                        if ((v21 < 0) ^ v6 | (v21 == 0))
                        {
                          return result;
                        }
                      }

                      return 13;
                    }
                  }

                  return 13;
                }
              }

              return 13;
            }
          }

          return 13;
        }
      }

      return 13;
    }
  }

  return 13;
}

uint64_t pager_write_pagelist(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *result;
  result = pager_wait_on_lock(*result, 4);
  if (result)
  {
    return result;
  }

  while (1)
  {
    lseek(v2[14], (*(v1 + 8) - 1) * v2[56], 0);
    if (*(v1 + 8) <= v2[42])
    {
      break;
    }

LABEL_10:
    *(v1 + 74) = 0;
    v1 = *(v1 + 80);
    if (!v1)
    {
      return 0;
    }
  }

  v3 = v2[56];
  if (v3 < 1)
  {
LABEL_9:
    ++v2[65];
    goto LABEL_10;
  }

  v4 = (v1 + 88);
  while (1)
  {
    v5 = write(v2[14], v4, v3);
    if (v5 < 1)
    {
      break;
    }

    v4 += v5 & 0x7FFFFFFF;
    v6 = __OFSUB__(v3, v5);
    v3 -= v5;
    if ((v3 < 0) ^ v6 | (v3 == 0))
    {
      goto LABEL_9;
    }
  }

  ++v2[65];
  return 13;
}

uint64_t sqlite3pager_unref(uint64_t result)
{
  v1 = *(result - 10) - 1;
  *(result - 10) = v1;
  if (!v1)
  {
    v2 = result - 88;
    v3 = *(result - 88);
    v4 = *(v3 + 344);
    *(result - 56) = 0;
    *(result - 48) = v4;
    *(v3 + 344) = result - 88;
    if (v4)
    {
      v5 = (v4 + 32);
    }

    else
    {
      v5 = (v3 + 336);
    }

    *v5 = v2;
    if (!*(result - 13) && !*(v3 + 352))
    {
      *(v3 + 352) = v2;
    }

    v6 = *(v3 + 208);
    if (v6)
    {
      v7 = *(v3 + 224);
      result = v6();
    }

    v8 = *(v3 + 236) - 1;
    *(v3 + 236) = v8;
    if (!v8 && !*(v3 + 296))
    {
      v9 = *(v3 + 360);
      if (v9)
      {
        do
        {
          v10 = v9[6];
          free(v9);
          v9 = v10;
        }

        while (v10);
      }

      *(v3 + 336) = 0u;
      *(v3 + 352) = 0u;
      bzero((v3 + 416), 0x4000uLL);
      *(v3 + 232) = 0;
      if (*(v3 + 289) >= 2u)
      {
        sqlite3pager_rollback(v3);
      }

      result = sqlite3OsUnlock(v3 + 24, 0);
      *(v3 + 289) = 0;
      *(v3 + 168) = -1;
      *(v3 + 236) = 0;
    }
  }

  return result;
}

uint64_t sqlite3pager_begin(uint64_t a1)
{
  if (*(a1 + 289) != 1)
  {
    return 0;
  }

  if (*(a1 + 296))
  {
    result = 0;
    *(a1 + 289) = 4;
    *(a1 + 172) = *(a1 + 168);
    return result;
  }

  result = sqlite3OsLock(a1 + 24, 2);
  if (!result)
  {
    *(a1 + 289) = 2;
    *(a1 + 294) = 0;
    if (!*(a1 + 282) || *(a1 + 291))
    {
      return 0;
    }

    return pager_open_journal(a1);
  }

  return result;
}

uint64_t pager_open_journal(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  sqlite3pager_pagecount(a1);
  v2 = sqlite3Malloc(*(a1 + 168) / 8 + 1);
  *(a1 + 304) = v2;
  if (!v2)
  {
    v4 = 7;
LABEL_6:
    *(a1 + 304) = 0;
    sqlite3OsUnlock(a1 + 24, 0);
    *(a1 + 289) = 0;
    goto LABEL_7;
  }

  v3 = sqlite3OsOpenExclusive(*(a1 + 8), a1 + 72, *(a1 + 291));
  *(a1 + 320) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 304);
    if (v5)
    {
      free(v5);
    }

    goto LABEL_6;
  }

  *(a1 + 280) = 1;
  *(a1 + 293) = 0;
  *(a1 + 295) = 0;
  *(a1 + 192) = 0;
  v8 = *(a1 + 290);
  if (*(a1 + 290))
  {
    v9 = (v8 << 29 >> 31) & 0xF;
    if ((v8 & 0x10) != 0)
    {
      v9 = 10;
    }

    if (v8)
    {
      v9 = 13;
    }

    if ((v8 & 2) != 0)
    {
      v9 = 7;
    }

    if ((v8 & 8) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = v9;
    }
  }

  else
  {
    *(a1 + 172) = *(a1 + 168);
    v10 = writeJournalHdr(a1);
    v11 = v10;
    if (*(a1 + 286) && !v10)
    {
      if (*(a1 + 296))
      {
        v11 = 0;
        *(a1 + 285) = 1;
        *(a1 + 176) = *(a1 + 168);
      }

      else if (*(a1 + 280))
      {
        v13 = sqlite3Malloc(*(a1 + 168) / 8 + 1);
        *(a1 + 312) = v13;
        if (v13)
        {
          *(a1 + 184) = *(a1 + 376);
          *(a1 + 176) = *(a1 + 168);
          v14 = *(a1 + 196);
          *(a1 + 392) = 0;
          *(a1 + 400) = v14;
          if (*(a1 + 284))
          {
LABEL_52:
            v11 = 0;
            *(a1 + 285) = 1;
          }

          else
          {
            v15 = 8;
            while (1)
            {
              memset(&v23, 0, sizeof(v23));
              v16 = &sqlite3OsTempFileName_azDirs;
              v17 = 5;
              sqlite3OsTempFileName_azDirs = 0;
              while (!*v16 || md_stat_real(*v16, &v23) || (v23.st_mode & 0xF000) != 0x4000 || access(*v16, 7))
              {
                ++v16;
                if (!--v17)
                {
                  v18 = ".";
                  goto LABEL_38;
                }
              }

              v18 = *v16;
              do
              {
LABEL_38:
                sprintf(__s, "%s/sqlite_", v18);
                v19 = strlen(__s);
                v20 = 15;
                sqlite3Randomness(15, &__s[v19]);
                do
                {
                  __s[v19] = sqlite3OsTempFileName_zChars[(__s[v19] - 62 * ((133 * (__s[v19] >> 1)) >> 12))];
                  ++v19;
                  --v20;
                }

                while (v20);
                __s[v19] = 0;
              }

              while (!access(__s, 0));
              v21 = sqlite3OsOpenExclusive(__s, a1 + 120, 1);
              v11 = v21;
              if (v15 < 2)
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_51;
              }

              --v15;
              if (v21 == 7)
              {
                goto LABEL_49;
              }
            }

            if (!v21)
            {
LABEL_51:
              *(a1 + 284) = 1;
              *(a1 + 200) = 0;
              goto LABEL_52;
            }

LABEL_49:
            v22 = *(a1 + 312);
            if (v22)
            {
              free(v22);
              *(a1 + 312) = 0;
            }
          }
        }

        else
        {
          sqlite3OsLock(a1 + 24, 1);
          v11 = 7;
        }
      }

      else
      {
        v11 = 0;
        *(a1 + 286) = 1;
      }
    }

    if (v11)
    {
      v12 = pager_unwritelock(a1);
      if (v12)
      {
        v4 = v12;
      }

      else
      {
        v4 = 13;
      }
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_7:
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sqlite3pager_write(void *a1)
{
  v2 = (a1 - 11);
  v1 = *(a1 - 11);
  v3 = *(v1 + 290);
  if (!*(v1 + 290))
  {
    if (*(v1 + 292))
    {
      return 3;
    }

    *(a1 - 14) = 1;
    if (*(a1 - 16) && (*(a1 - 15) || !*(v1 + 285)))
    {
      *(v1 + 294) = 1;
    }

    else
    {
      v8 = sqlite3pager_begin(v1);
      if (v8)
      {
        return v8;
      }

      if (!*(v1 + 280))
      {
        if (*(v1 + 282))
        {
          v8 = pager_open_journal(v1);
          if (v8)
          {
            return v8;
          }
        }
      }

      *(v1 + 294) = 1;
      if (!*(a1 - 16) && (*(v1 + 282) || *(v1 + 296)))
      {
        if (*(a1 - 20) <= *(v1 + 172))
        {
          if (*(v1 + 296))
          {
            v11 = *(v1 + 204) + *(v1 + 228);
            v12 = sqlite3MallocRaw(*(v1 + 224));
            *(a1 + v11) = v12;
            if (v12)
            {
              memcpy(v12, a1, *(v1 + 224));
            }
          }

          else
          {
            v16 = *(v1 + 196);
            v17 = *(v1 + 224);
            if (v17 >= 201)
            {
              v18 = v17 + 200;
              do
              {
                v16 += *(a1 + v18 - 400);
                v18 -= 200;
              }

              while (v18 > 0x190);
            }

            v19 = *(a1 + *(v1 + 228));
            *(a1 + v17) = bswap32(v16);
            v20 = *(v1 + 224) + 8;
            *(a1 - 1) = bswap32(*(a1 - 20));
            v21 = sqlite3OsWrite(v1 + 72, a1 - 4, v20);
            *(v1 + 376) += v20;
            *(a1 + *(v1 + 228)) = v19;
            if (v21)
            {
              goto LABEL_59;
            }

            ++*(v1 + 192);
            *(*(v1 + 304) + (*(a1 - 20) >> 3)) |= 1 << (*(a1 - 10) & 7);
            *(a1 - 13) = *(v1 + 287) == 0;
            if (*(v1 + 285))
            {
              *(*(v1 + 312) + (*(a1 - 20) >> 3)) |= 1 << (*(a1 - 10) & 7);
              if (!*(a1 - 15))
              {
                v22 = *(a1 - 11);
                *(a1 - 3) = 0;
                v23 = *(v22 + 368);
                if (v23)
                {
                  *(v23 + 64) = v2;
                }

                *(a1 - 4) = v23;
                *(v22 + 368) = v2;
                *(a1 - 15) = 1;
              }
            }
          }
        }

        else
        {
          if (*(v1 + 281))
          {
            v10 = 0;
          }

          else
          {
            v10 = *(v1 + 287) == 0;
          }

          *(a1 - 13) = v10;
        }

        if (*(a1 - 13))
        {
          *(v1 + 293) = 1;
        }

        *(a1 - 16) = 1;
      }

      if (*(v1 + 285))
      {
        if (!*(a1 - 15))
        {
          v13 = *(a1 - 20);
          if (v13 <= *(v1 + 176))
          {
            if (*(v1 + 296))
            {
              v14 = a1 + *(v1 + 204) + *(v1 + 228);
              v15 = sqlite3MallocRaw(*(v1 + 224));
              *(v14 + 1) = v15;
              if (v15)
              {
                memcpy(v15, a1, *(v1 + 224));
              }

              goto LABEL_61;
            }

            *(a1 - 1) = bswap32(v13);
            v21 = sqlite3OsWrite(v1 + 120, a1 - 4, (*(v1 + 224) + 4));
            if (!v21)
            {
              ++*(v1 + 200);
              *(*(v1 + 312) + (*(a1 - 20) >> 3)) |= 1 << (*(a1 - 10) & 7);
LABEL_61:
              if (!*(a1 - 15))
              {
                v24 = *(a1 - 11);
                *(a1 - 3) = 0;
                v25 = *(v24 + 368);
                if (v25)
                {
                  *(v25 + 64) = v2;
                }

                *(a1 - 4) = v25;
                *(v24 + 368) = v2;
                *(a1 - 15) = 1;
              }

              goto LABEL_16;
            }

LABEL_59:
            v5 = v21;
            sqlite3pager_rollback(v1);
            *(v1 + 290) |= 1u;
            return v5;
          }
        }
      }
    }

LABEL_16:
    v7 = *(a1 - 20);
    if (*(v1 + 168) >= v7)
    {
      return 0;
    }

    *(v1 + 168) = v7;
    if (*(v1 + 296) || v7 != 0x40000000 / *(v1 + 224))
    {
      return 0;
    }

    v5 = 0;
    *(v1 + 168) = v7 + 1;
    return v5;
  }

  v4 = (v3 << 29 >> 31) & 0xF;
  if ((v3 & 0x10) != 0)
  {
    v4 = 10;
  }

  if (v3)
  {
    v4 = 13;
  }

  if ((v3 & 2) != 0)
  {
    v4 = 7;
  }

  if ((v3 & 8) != 0)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

uint64_t sqlite3pager_dont_write(uint64_t result, int a2)
{
  if (!*(result + 296))
  {
    v2 = result + 8 * (a2 & 0x7FF) + 416;
    do
    {
      v3 = *v2;
      v4 = *(*v2 + 8);
      v2 = *v2 + 16;
    }

    while (v4 != a2);
    *(v3 + 76) = 1;
    if (*(v3 + 74))
    {
      if (*(result + 168) != a2 || *(result + 172) >= a2)
      {
        *(v3 + 74) = 0;
      }
    }
  }

  return result;
}

uint64_t sqlite3pager_sync(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 289) == 5 || *(a1 + 296) || !*(a1 + 294))
  {
    return 0;
  }

  if (!*(a1 + 320))
  {
    v16 = 0;
    v8 = sqlite3pager_get(a1, 1, &v16);
    if (v8)
    {
      return v8;
    }

    v9 = v16;
    v8 = sqlite3pager_write(v16);
    if (v8)
    {
      return v8;
    }

    *(v9 + 6) = bswap32(bswap32(*(v9 + 6)) + 1);
    sqlite3pager_unref(v9);
    if (a2)
    {
      v16 = 0;
      v10 = a2 + 1;
      v11 = *(a1 + 172);
      while (v10 <= v11)
      {
        if (((*(*(a1 + 304) + (v10 >> 3)) >> (v10 & 7)) & 1) == 0)
        {
          v8 = sqlite3pager_get(a1, v10, &v16);
          if (v8)
          {
            return v8;
          }

          v12 = v16;
          v3 = sqlite3pager_write(v16);
          sqlite3pager_unref(v12);
          if (v3)
          {
            return v3;
          }

          v11 = *(a1 + 172);
        }

        ++v10;
      }
    }

    v8 = syncJournal(a1);
    if (v8)
    {
      return v8;
    }
  }

  if (a2)
  {
    sqlite3pager_pagecount(a1);
    v6 = *(a1 + 290);
    if (*(a1 + 290))
    {
      v7 = (v6 << 29 >> 31) & 0xF;
      if ((v6 & 0x10) != 0)
      {
        v7 = 10;
      }

      if (v6)
      {
        v7 = 13;
      }

      if ((v6 & 2) != 0)
      {
        v3 = 7;
      }

      else
      {
        v3 = v7;
      }

      if ((v6 & 8) != 0)
      {
        return 11;
      }

      goto LABEL_17;
    }

    if (*(a1 + 168) > a2)
    {
      if (*(a1 + 296))
      {
        *(a1 + 168) = a2;
        memoryTruncate(a1);
      }

      else
      {
        v8 = syncJournal(a1);
        if (v8)
        {
          return v8;
        }

        v8 = pager_wait_on_lock(a1, 4);
        if (v8)
        {
          return v8;
        }

        v15 = ftruncate(*(a1 + 56), *(a1 + 224) * a2);
        if (v15)
        {
          v3 = 10;
        }

        else
        {
          v3 = 0;
        }

        if (v15)
        {
LABEL_17:
          if (v3)
          {
            return v3;
          }

          goto LABEL_32;
        }

        *(a1 + 168) = a2;
      }
    }
  }

LABEL_32:
  v13 = *(a1 + 360);
  if (v13)
  {
    v14 = 0;
    do
    {
      if (*(v13 + 74))
      {
        *(v13 + 80) = v14;
        v14 = v13;
      }

      v13 = *(v13 + 48);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v8 = pager_write_pagelist(v14);
  if (v8)
  {
    return v8;
  }

  if (*(a1 + 287))
  {
    v3 = 0;
  }

  else
  {
    v3 = sqlite3OsSync(a1 + 24);
  }

  *(a1 + 289) = 5;
  return v3;
}

_DWORD *sqlite3HashFind(_DWORD *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 3))
    {
      v4 = binHash;
      if (*result == 3)
      {
        v4 = strHash_17284;
      }

      v5 = v4(a2, 16);
      result = findElementGivenHash(v2, a2, (*(v2 + 16) - 1) & v5);
      if (result)
      {
        return *(result + 2);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *findElementGivenHash(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v5 = (v3 + 16 * a3);
  v8 = *v5;
  v6 = v5 + 2;
  v7 = v8;
  if (*a1 == 3)
  {
    v9 = strCompare;
  }

  else
  {
    v9 = binCompare;
  }

  do
  {
    result = 0;
    if (!v7)
    {
      break;
    }

    v6 = *v6;
    if (!v6)
    {
      break;
    }

    --v7;
    v11 = (v9)(*(v6 + 3), v6[8], a2, 16);
    result = v6;
  }

  while (v11);
  return result;
}

uint64_t binCompare(const void *a1, int a2, void *__s2, int a4)
{
  if (a2 == a4)
  {
    return memcmp(a1, __s2, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t strCompare(_BYTE *a1, int a2, unsigned __int8 *a3, int a4)
{
  if (a2 != a4)
  {
    return 1;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v4 = a2 + 1;
  while (1)
  {
    v5 = *a1;
    if (!*a1)
    {
      break;
    }

    LODWORD(v5) = sqlite3UpperToLower[v5];
    v6 = sqlite3UpperToLower[*a3];
    if (v5 != v6)
    {
      return (v5 - v6);
    }

    ++a1;
    ++a3;
    if (--v4 <= 1)
    {
      return 0;
    }
  }

  v6 = sqlite3UpperToLower[*a3];
  return (v5 - v6);
}

uint64_t binHash(unsigned __int8 *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a2 + 1;
  do
  {
    v4 = *a1++;
    v2 ^= v4 ^ (8 * v2);
    --v3;
  }

  while (v3 > 1);
  return v2 & 0x7FFFFFFF;
}

uint64_t strHash_17284(char *__s, int a2)
{
  v2 = __s;
  if (a2 <= 0)
  {
    a2 = strlen(__s);
    if (a2 < 1)
    {
      return 0;
    }
  }

  v3 = 0;
  v4 = a2 + 1;
  do
  {
    v5 = *v2++;
    v3 ^= sqlite3UpperToLower[v5] ^ (8 * v3);
    --v4;
  }

  while (v4 > 1);
  return v3 & 0x7FFFFFFF;
}

uint64_t sqlite3HashInsert(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = binHash;
  if (*a1 == 3)
  {
    v6 = strHash_17284;
  }

  v7 = v6(a2, 16);
  v8 = (*(a1 + 16) - 1) & v7;
  ElementGivenHash = findElementGivenHash(a1, a2, v8);
  if (!ElementGivenHash)
  {
    if (!a3)
    {
      return 0;
    }

    v18 = malloc_type_malloc(0x28uLL, 0x82B006DEuLL);
    if (!v18)
    {
      ++sqlite3_malloc_failed;
      return a3;
    }

    v10 = v18;
    v18[4] = 0;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    if (a2 && *(a1 + 1))
    {
      v19 = malloc_type_malloc(0x10uLL, 0xFA05FFB3uLL);
      if (!v19)
      {
        ++sqlite3_malloc_failed;
LABEL_36:
        free(v10);
        return a3;
      }

      v10[3] = v19;
      *v19 = *a2;
    }

    else
    {
      v18[3] = a2;
    }

    *(v10 + 8) = 16;
    v20 = *(a1 + 4) + 1;
    *(a1 + 4) = v20;
    v21 = *(a1 + 16);
    if (v21)
    {
LABEL_30:
      if (v20 > v21)
      {
        rehash(a1, 2 * v21);
        v21 = *(a1 + 16);
      }

      insertElement(a1, *(a1 + 24) + 16 * ((v21 - 1) & v7), v10);
      v11 = 0;
      goto LABEL_33;
    }

    rehash(a1, 8);
    v21 = *(a1 + 16);
    if (v21)
    {
      v20 = *(a1 + 4);
      goto LABEL_30;
    }

    *(a1 + 4) = 0;
    goto LABEL_36;
  }

  v10 = ElementGivenHash;
  v11 = ElementGivenHash[2];
  if (a3)
  {
LABEL_33:
    v10[2] = a3;
    return v11;
  }

  v12 = *ElementGivenHash;
  v13 = ElementGivenHash[1];
  v14 = (a1 + 8);
  if (v13)
  {
    v14 = ElementGivenHash[1];
  }

  *v14 = v12;
  if (v12)
  {
    *(v12 + 8) = v13;
  }

  v15 = *(a1 + 24) + 16 * v8;
  if (*(v15 + 8) == ElementGivenHash)
  {
    *(v15 + 8) = v12;
  }

  if ((*v15)-- <= 1)
  {
    *(v15 + 8) = 0;
  }

  if (*(a1 + 1))
  {
    v17 = ElementGivenHash[3];
    if (v17)
    {
      free(v17);
    }
  }

  free(v10);
  --*(a1 + 4);
  return v11;
}

void rehash(uint64_t a1, int a2)
{
  v4 = sqlite3Malloc(16 * a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 24);
    if (v6)
    {
      free(v6);
    }

    *(a1 + 24) = v5;
    *(a1 + 16) = a2;
    if (*a1 == 3)
    {
      v7 = strHash_17284;
    }

    else
    {
      v7 = binHash;
    }

    v8 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v8)
    {
      v9 = a2 - 1;
      do
      {
        v10 = v7(v8[3], *(v8 + 8));
        v11 = *v8;
        insertElement(a1, v5 + 16 * (v10 & v9), v8);
        v8 = v11;
      }

      while (v11);
    }
  }
}

void *insertElement(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    *a3 = v3;
    v6 = *(v3 + 8);
    v4 = (v3 + 8);
    v5 = v6;
    a3[1] = v6;
    if (!v6)
    {
      v5 = (a1 + 8);
    }

    *v5 = a3;
    result = v4;
  }

  else
  {
    v9 = *(a1 + 8);
    result = (a1 + 8);
    v8 = v9;
    *a3 = v9;
    if (v9)
    {
      *(v8 + 8) = a3;
    }

    a3[1] = 0;
  }

  *result = a3;
  ++*a2;
  *(a2 + 8) = a3;
  return result;
}

void *sqlite3Malloc(int a1)
{
  v2 = a1;
  v3 = malloc_type_malloc(a1, 0x82B006DEuLL);
  v4 = v3;
  if (v3)
  {
    bzero(v3, v2);
  }

  else if (a1 >= 1)
  {
    ++sqlite3_malloc_failed;
  }

  return v4;
}

void *sqlite3MallocRaw(int a1)
{
  result = malloc_type_malloc(a1, 0xFA05FFB3uLL);
  if (a1 >= 1 && !result)
  {
    ++sqlite3_malloc_failed;
  }

  return result;
}

uint64_t sqlite3SetString(uint64_t result, char *__s, int a3, int a4, int a5, int a6, int a7, int a8, char *__sa, uint64_t a10)
{
  if (result)
  {
    v11 = result;
    v12 = strlen(__s) + 1;
    v21 = &a10;
    v13 = __sa;
    if (__sa)
    {
      v14 = __sa;
      do
      {
        v12 += strlen(v14);
        v15 = v21++;
        v14 = *v15;
      }

      while (*v15);
    }

    if (*v11)
    {
      free(*v11);
    }

    result = malloc_type_malloc(v12, 0xFA05FFB3uLL);
    v16 = result;
    if (v12 < 1 || result)
    {
      *v11 = result;
      if (result)
      {
        v17 = strcpy(result, __s);
        result = strlen(v17);
        v22 = &a10;
        if (__sa)
        {
          v18 = (v16 + result);
          do
          {
            v19 = strcpy(v18, v13);
            result = strlen(v19);
            v18 += result;
            v20 = v22++;
            v13 = *v20;
          }

          while (*v20);
        }
      }
    }

    else
    {
      ++sqlite3_malloc_failed;
      *v11 = 0;
    }
  }

  return result;
}

uint64_t sqlite3PutVarint(_BYTE *a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = HIBYTE(a2);
  if (HIBYTE(a2))
  {
    a1[8] = a2;
    v7 = a2 >> 8;
    for (i = 7; i != -1; --i)
    {
      a1[i] = v7 | 0x80;
      v7 >>= 7;
    }

    v2 = 9;
  }

  else
  {
    do
    {
      v3 = v2++;
      v12[v3] = a2 | 0x80;
      v4 = a2 >= 0x7F;
      v5 = a2 == 127;
      a2 >>= 7;
    }

    while (!v5 && v4);
    v12[0] &= ~0x80u;
    v6 = v2;
    do
    {
      *a1++ = v12[v6 - 1];
      --v3;
      --v6;
    }

    while (v3 != -1);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sqlite3Randomness(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v34 = *MEMORY[0x1E69E9840];
  v4 = randomByte_prng[0];
  do
  {
    if (v4)
    {
      v5 = byte_1EC059042;
    }

    else
    {
      *&byte_1EC059041 = 0;
      *v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v6 = open("/dev/urandom", 0);
      if (v6 < 0)
      {
        time(v18);
        result = getpid();
        LODWORD(v18[1]) = result;
      }

      else
      {
        v7 = v6;
        read(v6, v18, 0x100uLL);
        result = close(v7);
      }

      v8 = 0;
      v9 = xmmword_1C2BFA700;
      v10.i64[0] = 0x1010101010101010;
      v10.i64[1] = 0x1010101010101010;
      do
      {
        *&randomByte_prng[v8 + 3] = v9;
        v8 += 16;
        v9 = vaddq_s8(v9, v10);
      }

      while (v8 != 256);
      v11 = 0;
      v5 = byte_1EC059042;
      do
      {
        v12 = byte_1EC059043[v11];
        v5 += v12 + *(v18 + v11);
        v13 = byte_1EC059043[v5];
        byte_1EC059043[v5] = v12;
        byte_1EC059043[v11++] = v13;
      }

      while (v11 != 256);
      v4 = 1;
      randomByte_prng[0] = 1;
    }

    v14 = ++byte_1EC059041;
    v15 = byte_1EC059043[byte_1EC059041];
    v16 = v15 + v5;
    byte_1EC059043[byte_1EC059041] = byte_1EC059043[v16];
    byte_1EC059042 = v16;
    byte_1EC059043[v16] = v15;
    *a2++ = byte_1EC059043[(byte_1EC059043[v14] + v15)];
    --v3;
  }

  while (v3);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x1EEDB7A68](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t std::stringbuf::str()
{
  return MEMORY[0x1EEE639E8]();
}

{
  return MEMORY[0x1EEE63FA0]();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A20](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::string *__cdecl std::string::basic_string(std::string *this, const std::string *__str, std::string::size_type __pos, std::string::size_type __n, std::allocator<char> *__a)
{
  return MEMORY[0x1EEE63CB8](this, __str, __pos, __n, __a);
}

{
  return MEMORY[0x1EEE63CC0](this, __str, __pos, __n, __a);
}

uint64_t std::istream::seekg()
{
  return MEMORY[0x1EEE63DB8]();
}

{
  return MEMORY[0x1EEE63DC0]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63EF8]();
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}