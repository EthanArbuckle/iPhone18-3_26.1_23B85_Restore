uint64_t _get_merged_params()
{
  OUTLINED_FUNCTION_45();
  if (v1)
  {
    v4 = v3;
    v5 = v2;
    if (!*(v1 + 48) || (v6 = *(v1 + 56), !encode_list_merge_dict(v2)))
    {
      if (!v4 || !encode_list_merge_dict(v5))
      {
        encode_list_remove_key(v5, der_key_external_data);
        return 0;
      }
    }
  }

  return v0;
}

uint64_t der_get_sizeof(uint64_t a1)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t der_dict_iterate()
{
  OUTLINED_FUNCTION_24();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        OUTLINED_FUNCTION_31_0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t der_dict_find_value(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_10_0();
    der_dict_iterate();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t der_get_number()
{
  OUTLINED_FUNCTION_28_0();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

__n128 der_utils_decode_implicit_raw_octet_string(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  OUTLINED_FUNCTION_18(a1);
  if (OUTLINED_FUNCTION_33())
  {
    *a4 = v8;
    *a3 = v9 - v8;
    result = v10;
    *v4 = v10;
  }

  return result;
}

uint64_t encode_list_merge_dict(uint64_t a1)
{
  if (a1)
  {
    return der_dict_iterate() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t encode_list_dict(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15 = *(v14 + 1);
                v15 += 16;
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, _qsort_compare);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v27 = v17;
              v28 = &v17[v16];
              v19 = v8 - 1;
              v20 = &v13[-v9 - 8];
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v24 = *(v20 - 1);
                v23 = *v20;
                v25 = ccder_blob_encode_body();
                v20 = v22;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v27 != v28)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t encode_list_add_der()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0)
  {
    v6 = v3;
    if (v3)
    {
      if (v4 && v5)
      {
        if (der_get_sizeof(v4) <= (v5 - v4))
        {
          v7 = *(v6 + 1);
          v8 = ccder_sizeof();
          if (!OUTLINED_FUNCTION_27(v8))
          {
            return 4294967279;
          }

          OUTLINED_FUNCTION_14();
          if (ccder_blob_encode_body())
          {
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_5_0();
            OUTLINED_FUNCTION_13_0();
            OUTLINED_FUNCTION_5_0();
            if (v9 == v1)
            {
              v10 = OUTLINED_FUNCTION_26();
              if (v10)
              {
                return OUTLINED_FUNCTION_3(v10);
              }
            }
          }

          OUTLINED_FUNCTION_12();
          free(v1);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t encode_list_add_data()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v3 && v4)
  {
    v5 = *(v3 + 1);
    ccder_sizeof();
    v6 = OUTLINED_FUNCTION_25_0();
    if (OUTLINED_FUNCTION_27(v6))
    {
      OUTLINED_FUNCTION_14();
      v7 = ccder_blob_encode_body();
      if (v7 && (OUTLINED_FUNCTION_23(v7, v8, v9, v10, v11, v12, v13, v14, v17), ccder_blob_encode_tl()) && (OUTLINED_FUNCTION_7(), OUTLINED_FUNCTION_5_0(), OUTLINED_FUNCTION_13_0(), OUTLINED_FUNCTION_5_0(), v15 == v1) && (v16 = OUTLINED_FUNCTION_26()) != 0)
      {
        return OUTLINED_FUNCTION_3(v16);
      }

      else
      {
        OUTLINED_FUNCTION_12();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_add_number(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v11 = 8;
  }

  else
  {
    v7 = 9;
    v8 = 48;
    v9 = 1;
    while ((v7 - 2) >= 2)
    {
      v10 = a3 >> v8;
      --v7;
      v8 -= 8;
      if (v6 != v10)
      {
        v9 = v7 - 1;
        goto LABEL_8;
      }
    }

    v7 = 2;
LABEL_8:
    if ((((a3 >> (8 * v9 - 8)) ^ v6) & 0x80) != 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  v23[0] = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v13 = a2 + 2;
    v14 = *(a2 + 1);
    ccder_sizeof();
    v15 = ccder_sizeof();
    v16 = calloc(v15, 1uLL);
    if (v16)
    {
      v17 = v16;
      v18 = v11;
      do
      {
        *(v23 + v18 - 1) = v3;
        v3 >>= 8;
        --v18;
      }

      while (v18);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (v19 = v13 + *(a2 + 1), ccder_blob_encode_body(), OUTLINED_FUNCTION_5_0(), OUTLINED_FUNCTION_16_0(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_5_0(), v20 == v17) && OUTLINED_FUNCTION_26())
      {
        result = OUTLINED_FUNCTION_17();
        v21[1] = v17;
        v21[2] = v15;
        *v21 = *a1;
        *a1 = v21;
      }

      else
      {
        memset_s(v17, v15, 0, v15);
        free(v17);
        result = 0xFFFFFFFFLL;
      }
    }

    else
    {
      result = 4294967279;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _qsort_compare(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *a1 + *(a1 + 8);
  __s2 = *a2;
  v5 = *a2 + *(a2 + 8);
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v6 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v6, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t _merge_dict_cb_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_30_0();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s bad 1%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 627, &unk_248917342, &unk_248917342);
}

uint64_t _merge_dict_cb_cold_2()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_30_0();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s fail%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 640, &unk_248917342, &unk_248917342);
}