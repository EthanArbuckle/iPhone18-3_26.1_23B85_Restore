uint64_t firebloom_export_pub_key(uint64_t *a1, void *a2, unint64_t *a3)
{
  v6 = *a1;
  v7 = cczp_bitlen();
  v8 = calloc(((v7 + 7) >> 2) | 1, 1uLL);
  if (!v8)
  {
    return 4294967279;
  }

  v9 = v8;
  v10 = *a1;
  v11 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v9;
  *a3 = v11;
  return result;
}

BOOL firebloom_ec_import(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x22AA486A0](a1, a3, a4, a2))
  {
    return 0;
  }

  v6 = *a1;
  v7 = &a2[3 * **a2];
  return ccn_read_uint() == 0;
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
  OUTLINED_FUNCTION_24_0();
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
        OUTLINED_FUNCTION_31_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
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
    OUTLINED_FUNCTION_10_3();
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

uint64_t der_dict_get_number(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    OUTLINED_FUNCTION_11_1();
    der_dict_iterate();
    return 0;
  }

  return result;
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

uint64_t der_dict_get_data(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_11_1();
    der_dict_iterate();
    return 0;
  }

  return result;
}

__n128 der_utils_decode_implicit_raw_octet_string(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  OUTLINED_FUNCTION_18_2(a1);
  if (OUTLINED_FUNCTION_33_1())
  {
    *a4 = v8;
    *a3 = v9 - v8;
    result = v10;
    *v4 = v10;
  }

  return result;
}

uint64_t der_array_iterate()
{
  OUTLINED_FUNCTION_24_0();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  OUTLINED_FUNCTION_2_2();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (der_utils_decode_tl(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((der_utils_decode_tl(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t der_utils_decode_tl(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

BOOL der_get_BOOL()
{
  OUTLINED_FUNCTION_28_0();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  OUTLINED_FUNCTION_18_2(a1);
  OUTLINED_FUNCTION_4_3();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_21_1(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return OUTLINED_FUNCTION_6_4(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return OUTLINED_FUNCTION_6_4(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t encode_list_cstr_get_data()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  v13 = *MEMORY[0x277D85DE8];
  v5 = strlen(v4);
  v11 = 0;
  v12 = 0;
  v10[0] = 12;
  v10[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v9 = 0;
    if (encode_list_get_data(v3, v10, 0, &__src, &v9))
    {
      if (v9 == v0)
      {
        memcpy(v1, __src, v0);
        result = 0;
      }

      else
      {
        result = 4294967277;
      }
    }

    else
    {
      result = 4294967293;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
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
  result = OUTLINED_FUNCTION_32_1();
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

          OUTLINED_FUNCTION_14_1();
          if (ccder_blob_encode_body())
          {
            OUTLINED_FUNCTION_7_4();
            OUTLINED_FUNCTION_5_3();
            OUTLINED_FUNCTION_13_2();
            OUTLINED_FUNCTION_5_3();
            if (v9 == v1)
            {
              v10 = OUTLINED_FUNCTION_26_0();
              if (v10)
              {
                return OUTLINED_FUNCTION_3_5(v10);
              }
            }
          }

          OUTLINED_FUNCTION_12_3();
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
  result = OUTLINED_FUNCTION_32_1();
  if (v0 && v3 && v4)
  {
    v5 = *(v3 + 1);
    ccder_sizeof();
    v6 = OUTLINED_FUNCTION_25_1();
    if (OUTLINED_FUNCTION_27(v6))
    {
      OUTLINED_FUNCTION_14_1();
      v7 = ccder_blob_encode_body();
      if (v7 && (OUTLINED_FUNCTION_23_1(v7, v8, v9, v10, v11, v12, v13, v14, v17), ccder_blob_encode_tl()) && (OUTLINED_FUNCTION_7_4(), OUTLINED_FUNCTION_5_3(), OUTLINED_FUNCTION_13_2(), OUTLINED_FUNCTION_5_3(), v15 == v1) && (v16 = OUTLINED_FUNCTION_26_0()) != 0)
      {
        return OUTLINED_FUNCTION_3_5(v16);
      }

      else
      {
        OUTLINED_FUNCTION_12_3();
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

uint64_t encode_list_cstr_add_data()
{
  OUTLINED_FUNCTION_24_0();
  v5 = *MEMORY[0x277D85DE8];
  v2 = strlen(v1);
  result = 4294967285;
  if (v0 && v2 <= 0x10)
  {
    __memcpy_chk();
    result = encode_list_add_data();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t encode_list_add_BOOL()
{
  result = OUTLINED_FUNCTION_32_1();
  if (v0)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v2 + 2;
      v5 = *(v2 + 1);
      ccder_sizeof();
      v6 = OUTLINED_FUNCTION_25_1();
      v7 = OUTLINED_FUNCTION_27(v6);
      if (v7)
      {
        v8 = v7;
        if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (v9 = v4 + *(v3 + 1), ccder_blob_encode_body(), OUTLINED_FUNCTION_8_4(), OUTLINED_FUNCTION_2_2(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_8_4(), v10 == v8) && (v11 = OUTLINED_FUNCTION_26_0()) != 0)
        {
          return OUTLINED_FUNCTION_3_5(v11);
        }

        else
        {
          OUTLINED_FUNCTION_12_3();
          free(v8);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        return 4294967279;
      }
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
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (v19 = v13 + *(a2 + 1), ccder_blob_encode_body(), OUTLINED_FUNCTION_5_3(), OUTLINED_FUNCTION_2_2(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_5_3(), v20 == v17) && OUTLINED_FUNCTION_26_0())
      {
        result = OUTLINED_FUNCTION_17_2();
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

uint64_t encode_list_add_string()
{
  result = OUTLINED_FUNCTION_32_1();
  if (v0)
  {
    v5 = v3;
    if (v3)
    {
      if (v4)
      {
        strlen(v4);
        v6 = *(v5 + 1);
        ccder_sizeof();
        v7 = OUTLINED_FUNCTION_25_1();
        if (OUTLINED_FUNCTION_27(v7))
        {
          OUTLINED_FUNCTION_14_1();
          if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (OUTLINED_FUNCTION_7_4(), OUTLINED_FUNCTION_5_3(), OUTLINED_FUNCTION_13_2(), OUTLINED_FUNCTION_5_3(), v8 == v1) && (v9 = OUTLINED_FUNCTION_26_0()) != 0)
          {
            return OUTLINED_FUNCTION_3_5(v9);
          }

          else
          {
            OUTLINED_FUNCTION_12_3();
            free(v1);
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return result;
}

uint64_t encode_list_add_list(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (encode_list_dict(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v7 = a2 + 2 + *(a2 + 1);
      v8 = ccder_sizeof();
      v9 = OUTLINED_FUNCTION_27(v8);
      v3 = v9;
      if (v9)
      {
        v15 = v9;
        if (!ccder_blob_encode_body())
        {
          goto LABEL_15;
        }

        v18 = v3;
        v19 = v15;
        v10 = a2 + 2 + *(a2 + 1);
        ccder_blob_encode_body();
        OUTLINED_FUNCTION_8_4();
        v18 = v3;
        v19 = v11;
        OUTLINED_FUNCTION_2_2();
        ccder_blob_encode_tl();
        OUTLINED_FUNCTION_8_4();
        if (v12 != v3)
        {
          goto LABEL_15;
        }

        v13 = OUTLINED_FUNCTION_26_0();
        if (v13)
        {
          v4 = 0;
          v13[1] = v3;
          v13[2] = 0;
          *v13 = *a1;
          *a1 = v13;
          v3 = 0;
        }

        else
        {
LABEL_15:
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t der_utils_encode_fv_key(uint64_t a1)
{
  v7 = OUTLINED_FUNCTION_18_2(a1);
  if (v2)
  {
    v3 = v2;
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    v6 = *v3;
    v5 = v3[1];
    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v7;
  return 1;
}

uint64_t der_utils_decode_fv_key(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v37 = *a1;
  if (a2)
  {
    v7 = *a1;
    OUTLINED_FUNCTION_4_3();
    v8 = ccder_blob_decode_range();
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v5 = v38;
    v16 = (v39 - v38);
    OUTLINED_FUNCTION_21_1(v8, v9, v10, v11, v12, v13, v14, v15, v37, *(&v37 + 1), v38, v39, v40);
LABEL_4:
    OUTLINED_FUNCTION_4_3();
    v17 = ccder_blob_decode_range();
    if (v17)
    {
      OUTLINED_FUNCTION_21_1(v17, v18, v19, v20, v21, v22, v23, v24, v37, *(&v37 + 1), v38, v39, v40);
      if (v34 <= 4)
      {
        v35 = *v33;
        *a3 = v5;
        *(a3 + 8) = v16;
        *(a3 + 16) = v35;
        *(a3 + 20) = v6;
        return OUTLINED_FUNCTION_6_4(v25, v26, v27, v28, v29, v30, v31, v32, v37);
      }
    }

    return 0;
  }

  LODWORD(v40) = v4;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v37, 4, v5, &v40);
  if (result)
  {
    v16 = v40;
    goto LABEL_4;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_len(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  OUTLINED_FUNCTION_18_2(a1);
  OUTLINED_FUNCTION_4_3();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_21_1(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return OUTLINED_FUNCTION_6_4(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return OUTLINED_FUNCTION_6_4(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t der_utils_encode_fv_data(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_18_2(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_1(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_1(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_4(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_encode_fv_params(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_18_2(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_1(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_1(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_4(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_decode_fv_params(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_18_2(a1);
  OUTLINED_FUNCTION_4_3();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_1(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return OUTLINED_FUNCTION_6_4(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t encode_extended_state()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0;
  v3 = v2;
  v18 = 0;
  if (encode_list_add_number(&v18, der_key_state_state, *v2) || encode_list_add_number(&v18, der_key_state_lock_state, v3[1]) || encode_list_add_number(&v18, der_key_state_backoff, *(v3 + 1)) || encode_list_add_number(&v18, der_key_state_failed_attempts, v3[4]) || encode_list_add_number(&v18, der_key_state_generation_state, v3[5]) || encode_list_add_number(&v18, der_key_state_recovery_countdown, *(v3 + 26)) || encode_list_add_number(&v18, der_key_state_more_state, *(v3 + 34)) || encode_list_add_number(&v18, der_key_keybag_handle, *(v3 + 42)) || encode_list_add_number(&v18, der_key_config_max_unlock_attempts, *(v3 + 46)) || (v4 = encode_list_add_data(), v4) || v1 && (encode_list_add_number(&v18, der_key_state_assertion_set, *(v3 + 66)) || encode_list_add_number(&v18, der_key_state_grace_period_enabled, *(v3 + 67)) || encode_list_add_number(&v18, der_key_lock_time, *(v3 + 17)) || (v4 = encode_list_add_number(&v18, der_key_cx_window, *(v3 + 19)), v4)) || (v5 = OUTLINED_FUNCTION_19_2(v4), v5))
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
    OUTLINED_FUNCTION_15_1(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);
  }

  encode_list_free(&v18);
  return v13;
}

uint64_t decode_extended_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x54uLL, 0, 0x54uLL);
        bzero(v8, 0x228uLL);
        v8[4] = der_key_state_lock_state;
        v8[9] = der_key_state_backoff;
        v8[14] = der_key_state_failed_attempts;
        v8[19] = der_key_state_generation_state;
        v8[24] = der_key_state_assertion_set;
        v8[29] = der_key_state_grace_period_enabled;
        v8[34] = der_key_state_recovery_countdown;
        v8[39] = der_key_state_more_state;
        v8[44] = der_key_keybag_handle;
        v8[49] = der_key_config_max_unlock_attempts;
        v8[54] = der_key_config_user_uuid;
        v9[2] = der_key_lock_time;
        v9[7] = der_key_cx_window;
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_34_1();
        *v5 = der_get_number();
        *(v5 + 1) = der_get_number();
        *(v5 + 1) = der_get_number();
        *(v5 + 4) = der_get_number();
        *(v5 + 5) = der_get_number();
        *(v5 + 26) = der_get_number();
        *(v5 + 34) = der_get_number();
        *(v5 + 42) = der_get_number();
        *(v5 + 46) = der_get_number();
        der_utils_decode_implicit_raw_octet_string_copy(v9, 4, v5 + 50, 16);
        v5[66] = der_get_number();
        v5[67] = der_get_number();
        *(v5 + 68) = der_get_number();
        der_get_number();
        result = OUTLINED_FUNCTION_17_2();
        *(v5 + 76) = v6;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t decode_memento_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        OUTLINED_FUNCTION_20_2(v3);
        bzero(v8, 0x98uLL);
        v8[4] = der_key_state_failed_attempts;
        v8[9] = der_key_config_max_unlock_attempts;
        v8[14] = der_key_state_state;
        OUTLINED_FUNCTION_0_4();
        if (OUTLINED_FUNCTION_34_1())
        {
          *v5 = der_get_number();
          v5[1] = der_get_number();
          v5[2] = der_get_number();
          der_get_number();
          result = OUTLINED_FUNCTION_17_2();
          v5[3] = v6;
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t decode_primary_identity_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          OUTLINED_FUNCTION_20_2(v3);
          OUTLINED_FUNCTION_20_2(v8);
          v13 = 0;
          v11[0] = 0u;
          v12 = 0u;
          v15 = 0u;
          v16 = 0u;
          v11[1] = der_key_group_uuid;
          v14 = der_key_uuid;
          OUTLINED_FUNCTION_0_4();
          der_dict_iterate();
          if (der_utils_decode_implicit_raw_octet_string_copy(v11, 4, v7, 16) && der_utils_decode_implicit_raw_octet_string_copy(&v12 + 8, 4, v8, 16))
          {
            result = der_utils_decode_implicit_raw_octet_string_copy(&v16, 4, v9, 16) - 1;
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t decode_fv_blob_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x58uLL, 0, 0x58uLL);
        bzero(v9, 0x200uLL);
        v9[4] = der_key_uuid;
        v10[2] = der_key_id;
        v11[2] = der_key_flags;
        v11[7] = der_key_version;
        v11[12] = der_key_state_reserved;
        v13 = der_key_state_failed_attempts;
        v14 = der_key_state_failed_attempts_other;
        v15 = der_key_config_max_unlock_attempts;
        v16 = der_key_state_backoff;
        v17 = der_key_state_backoff_other;
        v18 = der_key_config_capabilities;
        v19 = der_key_state_refcount;
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_34_1();
        *v5 = der_get_number();
        if (!der_utils_decode_implicit_raw_octet_string_copy(v10, 4, v5 + 1, 16) || !der_utils_decode_implicit_raw_octet_string_copy(v11, 4, v5 + 5, 16) || (v5[9] = der_get_number(), v5[10] = der_get_number(), v5[11] = der_get_number(), v5[12] = der_get_number(), v5[15] = der_get_number(), v5[13] = der_get_number(), v5[14] = der_get_number(), !der_utils_decode_implicit_raw_octet_string_copy_partial(&v12)))
        {
          result = 0xFFFFFFFFLL;
          goto LABEL_10;
        }

        v6 = v5[9];
        if ((v6 & 0x400) != 0)
        {
          *(v5 + 9) = der_get_number();
          if ((v5[9] & 0x800) == 0)
          {
            goto LABEL_9;
          }
        }

        else if ((v6 & 0x800) == 0)
        {
LABEL_9:
          result = 0;
          goto LABEL_10;
        }

        der_get_number();
        result = OUTLINED_FUNCTION_17_2();
        v5[20] = v8;
      }
    }
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t encode_pfk_params_public(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = encode_list_cstr_add_data();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = encode_list_cstr_add_data();
      }

      v7 = OUTLINED_FUNCTION_19_2(a1);
      if (!v7)
      {
        v3 = 0;
        OUTLINED_FUNCTION_15_1(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v18);
  return v3;
}

uint64_t decode_pfk_params_internal(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        OUTLINED_FUNCTION_9_4();
        if (der_dict_iterate())
        {
          if (!encode_list_cstr_get_data())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!encode_list_cstr_get_data())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  encode_list_free(&v6);
  return v3;
}

uint64_t encode_icsc_params_internal(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v3 = 4294967285;
  v23 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && (v5 = a1[1], encode_list_add_data()) || a1[2] && (v6 = a1[3], encode_list_add_data()) || a1[4] && (v7 = a1[5], encode_list_add_data()) || a1[6] && (v8 = a1[7], encode_list_add_data()) || a1[8] && (v9 = a1[9], encode_list_add_data()) || a1[10] && (v10 = a1[11], encode_list_add_data()))
    {
      v3 = 4294967273;
    }

    else
    {
      v11 = encode_list_dict(&v23, &v21, &v22);
      if (v11)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        OUTLINED_FUNCTION_15_1(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22);
      }
    }
  }

  encode_list_free(&v23);
  return v3;
}

uint64_t decode_icsc_params_internal(int a1, int a2, void *__s)
{
  v73[29] = *MEMORY[0x277D85DE8];
  if (__s)
  {
    memset_s(__s, 0x60uLL, 0, 0x60uLL);
    bzero(v73, 0xE8uLL);
    v72 = der_key_acm_handle;
    v73[4] = der_key_username;
    v73[9] = der_key_label;
    v73[14] = der_key_data;
    v73[19] = der_key_timestamp;
    v73[24] = der_key_public_key;
    v66 = xmmword_223E5FBE0;
    v67 = 0;
    v68 = &v72;
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_1_5();
    v4 = ccder_blob_decode_range();
    if (v4)
    {
      v12 = OUTLINED_FUNCTION_2_4(v4, v5, v6, v7, v8, v9, v10, v11, 6, 0, 0, &v72, v69, v70, v71);
      *(v13 + 24) = v12;
      *__s = v14;
      __s[1] = v15;
    }

    OUTLINED_FUNCTION_1_5();
    v16 = ccder_blob_decode_range();
    if (v16)
    {
      v24 = OUTLINED_FUNCTION_2_4(v16, v17, v18, v19, v20, v21, v22, v23, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      v25[4] = v24;
      __s[2] = v26;
      __s[3] = v27;
    }

    OUTLINED_FUNCTION_1_5();
    v28 = ccder_blob_decode_range();
    if (v28)
    {
      v36 = OUTLINED_FUNCTION_2_4(v28, v29, v30, v31, v32, v33, v34, v35, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      *(v37 + 104) = v36;
      __s[4] = v38;
      __s[5] = v39;
    }

    OUTLINED_FUNCTION_1_5();
    v40 = ccder_blob_decode_range();
    if (v40)
    {
      v48 = OUTLINED_FUNCTION_2_4(v40, v41, v42, v43, v44, v45, v46, v47, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      v49[9] = v48;
      __s[6] = v50;
      __s[7] = v51;
    }

    OUTLINED_FUNCTION_1_5();
    v52 = ccder_blob_decode_range();
    if (v52)
    {
      v60 = OUTLINED_FUNCTION_2_4(v52, v53, v54, v55, v56, v57, v58, v59, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      *(v61 + 184) = v60;
      __s[8] = v62;
      __s[9] = v63;
    }

    OUTLINED_FUNCTION_1_5();
    if (ccder_blob_decode_range())
    {
      result = 0;
      __s[10] = v69;
      __s[11] = (v70 - v69);
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 4294967285;
  }

  v65 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t encode_fv_params_internal(uint64_t a1, void *a2, _DWORD *a3)
{
  v17 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!encode_list_cstr_add_data())
      {
        v5 = encode_list_cstr_add_data();
        if (!v5)
        {
          v6 = OUTLINED_FUNCTION_19_2(v5);
          if (!v6)
          {
            v3 = 0;
            OUTLINED_FUNCTION_15_1(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v17);
  return v3;
}

uint64_t decode_fv_params_internal(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        OUTLINED_FUNCTION_20_2(a3);
        OUTLINED_FUNCTION_9_4();
        if (der_dict_iterate())
        {
          encode_list_cstr_get_data();
          encode_list_cstr_get_data();
          v3 = 0;
        }
      }
    }
  }

  encode_list_free(&v5);
  return v3;
}

uint64_t ref_key_create_request_to_class(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v5 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_0_4();
    der_dict_iterate();
    v2 = der_get_number() & 0x1F;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t decode_peer_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  bzero(v11, 0xE8uLL);
  v10 = der_key_peer_unlock_token_status;
  v11[4] = der_key_peer_unwrapped_escrow_record_status;
  v11[9] = der_key_peer_wrapped_escrow_record_status;
  v11[14] = der_key_peer_flags;
  v11[19] = der_key_public_key;
  v12[2] = der_key_peer_kcv;
  v7 = xmmword_223E5FBE0;
  v8 = 0;
  v9 = &v10;
  OUTLINED_FUNCTION_0_4();
  der_dict_iterate();
  *a3 = der_get_number();
  *(a3 + 4) = der_get_number();
  *(a3 + 8) = der_get_number();
  *(a3 + 12) = der_get_number();
  v6 = 65;
  if (der_utils_decode_implicit_raw_octet_string_copy_len(v12, 4, (a3 + 16), &v6))
  {
    *(a3 + 88) = v6;
    result = der_utils_decode_implicit_raw_octet_string_copy(v13, 4, (a3 + 96), 3) - 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *ref_key_op_der_to_enum(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v2 = der_key_op;
      if (der_key_op)
      {
        OUTLINED_FUNCTION_10_3();
        der_dict_iterate();
        v2 = 0;
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *der_utils_decode_implicit_raw_octet_string_alloc(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_18_2(a1);
  OUTLINED_FUNCTION_4_3();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  OUTLINED_FUNCTION_21_1(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return OUTLINED_FUNCTION_6_4(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t der_utils_decode_implicit_uint64(__int128 *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = *a1;
  result = OUTLINED_FUNCTION_33_1();
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v7;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t se_derivation_request_serialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_body_tl() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  OUTLINED_FUNCTION_2_2();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t se_derivation_request_deserialize(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v51) = a6;
  *(&v51 + 1) = a6 + a7;
  OUTLINED_FUNCTION_2_2();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = OUTLINED_FUNCTION_31_1(v12, v13, v14, v15, v16, v17, v18, v19, v46, 0, v51);
  v22 = der_utils_decode_implicit_uint64(v20, 0x8000000000000003, v21);
  if (!v22)
  {
    return 4294967277;
  }

  if (a5)
  {
    OUTLINED_FUNCTION_22_1();
    *a5 = v30;
  }

  v31 = OUTLINED_FUNCTION_31_1(v22, v23, v24, v25, v26, v27, v28, v29, v47, v49, v52);
  v33 = der_utils_decode_implicit_uint64(v31, 0x8000000000000002, v32);
  if (!v33)
  {
    return 4294967277;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_22_1();
    *a4 = v41;
  }

  v42 = OUTLINED_FUNCTION_31_1(v33, v34, v35, v36, v37, v38, v39, v40, v48, v50, v53);
  if (!der_utils_decode_implicit_uint64(v42, 0x8000000000000001, v43))
  {
    return 4294967277;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_22_1();
    *a3 = v44;
  }

  OUTLINED_FUNCTION_1_5();
  if (ccder_blob_decode_range())
  {
    v51 = v56;
    if (a1)
    {
      if (a2)
      {
        *a1 = v54;
        *a2 = (v55 - v54);
      }
    }
  }

  if (v51 == *(&v51 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
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
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s bad 1%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 627, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t _merge_dict_cb_cold_2()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s fail%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 640, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_unpack_data(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = (a1 + 1);
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = v11 + 4;
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t stash_stats_deserialize(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000005, a3 + 3) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000004, a3 + 5) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000003, a3 + 2) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000002, a3 + 4) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000001, a3 + 1))
  {
    return 4294967277;
  }

  v4 = der_utils_decode_implicit_uint64(&v6, 0x8000000000000000, a3);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}