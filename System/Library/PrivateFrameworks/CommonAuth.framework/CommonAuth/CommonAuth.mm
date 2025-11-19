void heim_ntlm_free_buf(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  a1[1] = 0;
}

double heim_ntlm_free_targetinfo(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 8));
  free(*(a1 + 16));
  free(*(a1 + 24));
  free(*(a1 + 32));
  free(*(a1 + 48));
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t heim_ntlm_encode_targetinfo(uint64_t a1, int a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = krb5_storage_emem();
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v8 = 2733221632;
  krb5_storage_set_byteorder(v6, 32);
  if (!*a1 || !encode_ti_string(v7, 1, a2, *a1))
  {
    v9 = *(a1 + 8);
    if (!v9 || !encode_ti_string(v7, 2, a2, v9))
    {
      v10 = *(a1 + 24);
      if (!v10 || !encode_ti_string(v7, 3, a2, v10))
      {
        v11 = *(a1 + 16);
        if (!v11 || !encode_ti_string(v7, 4, a2, v11))
        {
          v12 = *(a1 + 32);
          if ((!v12 || !encode_ti_string(v7, 5, a2, v12)) && (!*(a1 + 40) || !krb5_store_uint16(v7, 6) && !krb5_store_uint16(v7, 4) && !krb5_store_uint32(v7, *(a1 + 40))) && (!*(a1 + 72) || !krb5_store_uint16(v7, 7) && !krb5_store_uint16(v7, 8) && !krb5_store_uint32(v7, *(a1 + 72)) && !krb5_store_uint32(v7, *(a1 + 76))))
          {
            v13 = *(a1 + 48);
            if (!v13 || !encode_ti_string(v7, 9, a2, v13))
            {
              if (!*(a1 + 56) || !krb5_store_uint16(v7, 10) && !krb5_store_uint16(v7, *(a1 + 56)) && (v14 = *(a1 + 56), krb5_storage_write(v7) == v14))
              {
                if (!krb5_store_int16(v7, 0) && !krb5_store_int16(v7, 0))
                {
                  v17 = 0;
                  v18 = 0;
                  v8 = krb5_storage_to_data(v7, &v17);
                  v15 = v18;
                  *a3 = v17;
                  a3[1] = v15;
                }
              }
            }
          }
        }
      }
    }
  }

  krb5_storage_free(v7);
  return v8;
}

uint64_t encode_ti_string(uint64_t a1, __int16 a2, int a3, char *a4)
{
  v7 = 2733221632;
  if (!krb5_store_uint16(a1, a2))
  {
    v8 = len_string(a3, a4);
    if (!krb5_store_uint16(a1, v8))
    {
      if (put_string(a1, a3, a4))
      {
        return 2733221632;
      }

      else
      {
        return 0;
      }
    }
  }

  return v7;
}

uint64_t heim_ntlm_decode_targetinfo(uint64_t *a1, int a2, uint64_t a3)
{
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  if (!*a1)
  {
    return 0;
  }

  v5 = krb5_storage_from_readonly_mem(a1[1], *a1);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  LODWORD(size) = 0;
  krb5_storage_set_byteorder(v5, 32);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (krb5_ret_uint16(v6, &size + 1) || krb5_ret_uint16(v6, &size))
            {
LABEL_37:
              v7 = 2733221632;
              goto LABEL_38;
            }

            v7 = WORD1(size);
            if (WORD1(size) > 4u)
            {
              break;
            }

            if (WORD1(size) <= 2u)
            {
              if (WORD1(size) == 1)
              {
                v10 = size;
                v12 = v6;
                v13 = a2;
                v11 = a3;
                goto LABEL_29;
              }

              if (WORD1(size) != 2)
              {
                goto LABEL_38;
              }

              v10 = size;
              v11 = (a3 + 8);
              goto LABEL_28;
            }

            if (WORD1(size) == 3)
            {
              v10 = size;
              v11 = (a3 + 24);
              goto LABEL_28;
            }

            if (WORD1(size) == 4)
            {
              v10 = size;
              v11 = (a3 + 16);
LABEL_28:
              v12 = v6;
              v13 = a2;
              goto LABEL_29;
            }

LABEL_36:
            krb5_storage_seek(v6);
          }

          if (WORD1(size) > 6u)
          {
            break;
          }

          if (WORD1(size) == 5)
          {
            v10 = size;
            v11 = (a3 + 32);
            goto LABEL_28;
          }

          if (WORD1(size) != 6)
          {
            goto LABEL_36;
          }

          if (krb5_ret_uint32(v6, (a3 + 40)))
          {
            goto LABEL_37;
          }
        }

        if (WORD1(size) != 7)
        {
          break;
        }

        v15 = 0;
        if (krb5_ret_uint32(v6, &v15))
        {
          goto LABEL_37;
        }

        *(a3 + 72) = v15;
        if (krb5_ret_uint32(v6, &v15))
        {
          goto LABEL_37;
        }

        *(a3 + 72) |= v15 << 32;
      }

      if (WORD1(size) != 9)
      {
        break;
      }

      v10 = size;
      v11 = (a3 + 48);
      v12 = v6;
      v13 = 1;
LABEL_29:
      if (ret_string(v12, v13, v10, v11))
      {
        goto LABEL_37;
      }
    }

    if (WORD1(size) != 10)
    {
      goto LABEL_36;
    }

    v8 = malloc_type_malloc(size, 0x9E19562uLL);
    *(a3 + 64) = v8;
    if (!v8)
    {
      break;
    }

    *(a3 + 56) = size;
    v9 = krb5_storage_read(v6);
    if (v9 != size)
    {
      goto LABEL_37;
    }
  }

  v7 = 12;
LABEL_38:
  krb5_storage_free(v6);
  return v7;
}

uint64_t ret_string(uint64_t a1, int a2, unint64_t a3, void **a4)
{
  v8 = malloc_type_malloc(a3 + 1, 0xE131C3E2uLL);
  *a4 = v8;
  if (!v8)
  {
    return 12;
  }

  v9 = 2733221632;
  if (krb5_storage_read(a1) != a3)
  {
    return v9;
  }

  *(*a4 + a3) = 0;
  if (!a2)
  {
    return 0;
  }

  v16 = 1;
  v14 = 0;
  v15 = a3 >> 1;
  v10 = malloc_type_malloc(a3 & 0xFFFFFFFFFFFFFFFELL, 0x1000040BDFB0063uLL);
  v11 = *a4;
  if (!v10)
  {
    free(v11);
    *a4 = 0;
    return 12;
  }

  v9 = wind_ucs2read(v11, a3, &v16, v10, &v15);
  free(*a4);
  *a4 = 0;
  if (!v9)
  {
    if (wind_ucs2utf8_length(v10, v15, &v14))
    {
      v9 = 2733221632;
    }

    else
    {
      v12 = malloc_type_malloc(++v14, 0x1A294D73uLL);
      *a4 = v12;
      v9 = 2733221632;
      if (!wind_ucs2utf8(v10, v15, v12, &v14))
      {
        v9 = 0;
      }
    }
  }

  free(v10);
  return v9;
}

double heim_ntlm_free_type1(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    free(v3);
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t heim_ntlm_decode_type1(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v10 = 0;
  *v11 = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = krb5_storage_from_readonly_mem(a1[1], *a1);
  if (!v3)
  {
    v5 = 12;
    goto LABEL_6;
  }

  v4 = v3;
  krb5_storage_set_byteorder(v3, 32);
  if (krb5_storage_read(v4) == 8 && v13 == 0x5053534D4C544ELL && !krb5_ret_uint32(v4, &v12) && v12 == 1 && !krb5_ret_uint32(v4, a2))
  {
    v8 = *a2;
    if (!ret_sec_buffer(v4, v11) && !ret_sec_buffer(v4, &v10))
    {
      v9 = *a2;
      if ((*a2 & 0x2000000) != 0)
      {
        if (krb5_ret_uint32(v4, (a2 + 24)) || krb5_ret_uint32(v4, (a2 + 28)))
        {
          goto LABEL_4;
        }

        v9 = *a2;
        if ((*a2 & 0x1000) == 0)
        {
          goto LABEL_20;
        }
      }

      else if ((v9 & 0x1000) == 0)
      {
LABEL_20:
        if ((v9 & 0x2000) == 0 || !ret_sec_string(v4, v8 & 1, &v10, (a2 + 16)))
        {
          krb5_storage_free(v4);
          v5 = 0;
          goto LABEL_7;
        }

        goto LABEL_4;
      }

      if (!ret_sec_string(v4, v8 & 1, v11, (a2 + 8)))
      {
        v9 = *a2;
        goto LABEL_20;
      }
    }
  }

LABEL_4:
  krb5_storage_free(v4);
  v5 = 2733221632;
LABEL_6:
  heim_ntlm_free_type1(a2);
LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ret_sec_buffer(uint64_t a1, uint64_t a2)
{
  v4 = 2733221632;
  if (!krb5_ret_uint16(a1, a2) && !krb5_ret_uint16(a1, (a2 + 2)))
  {
    if (krb5_ret_uint32(a1, (a2 + 4)))
    {
      return 2733221632;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t ret_sec_string(uint64_t a1, int a2, unsigned __int16 *a3, void **a4)
{
  v8 = 2733221632;
  v9 = *(a3 + 1);
  if (krb5_storage_seek(a1) == v9)
  {
    if (ret_string(a1, a2, *a3, a4))
    {
      return 2733221632;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t heim_ntlm_encode_type1(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *a1 | 0x1000;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (!v7)
  {
    v5 = *a1;
  }

  if (v6)
  {
    v8 = v5 | 0x2000;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 & 0x2000000;
  if (v7)
  {
    if (v6)
    {
      v10 = 32;
    }

    else
    {
      v10 = 24;
    }

    v11 = v10 + (v9 >> 22);
    v12 = len_string(*a1 & 1, v7);
    v6 = *(a1 + 16);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v27 = v11;
  v26[0] = v12;
  v26[1] = v12;
  if (v6)
  {
    v13 = v11 + v12;
    v14 = len_string(v4 & 1, v6);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v25 = v13;
  v24[0] = v14;
  v24[1] = v14;
  v15 = krb5_storage_emem();
  if (!v15)
  {
    return 12;
  }

  v16 = v15;
  v17 = 2733221632;
  krb5_storage_set_byteorder(v15, 32);
  if (krb5_storage_write(v16) == 8 && !krb5_store_uint32(v16, 1) && !krb5_store_uint32(v16, v8) && !store_sec_buffer(v16, v26) && !store_sec_buffer(v16, v24) && (!v9 || !encode_os_version(v16)))
  {
    v19 = *(a1 + 8);
    if (!v19 || !put_string(v16, v4 & 1, v19))
    {
      v20 = *(a1 + 16);
      if (!v20 || !put_string(v16, v4 & 1, v20))
      {
        v22 = 0;
        v23 = 0;
        v17 = krb5_storage_to_data(v16, &v22);
        v21 = v23;
        *a2 = v22;
        a2[1] = v21;
      }
    }
  }

  krb5_storage_free(v16);
  return v17;
}

size_t len_string(int a1, char *__s)
{
  if (a1)
  {
    v5 = 0;
    if (wind_utf8ucs2_length(__s, &v5))
    {
      v3 = 5 * strlen(__s);
    }

    else
    {
      v3 = v5;
    }

    return 2 * v3;
  }

  else
  {

    return strlen(__s);
  }
}

uint64_t store_sec_buffer(uint64_t a1, uint64_t a2)
{
  v4 = 2733221632;
  if (!krb5_store_uint16(a1, *a2) && !krb5_store_uint16(a1, *(a2 + 2)))
  {
    if (krb5_store_uint32(a1, *(a2 + 4)))
    {
      return 2733221632;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t encode_os_version(uint64_t a1)
{
  v2 = 2733221632;
  if (!krb5_store_uint8(a1, 6) && !krb5_store_uint8(a1, 1) && !krb5_store_uint16(a1, 7600) && !krb5_store_uint8(a1, 0) && !krb5_store_uint8(a1, 0) && !krb5_store_uint8(a1, 0))
  {
    if (krb5_store_uint8(a1, 15))
    {
      return 2733221632;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t put_string(uint64_t a1, int a2, char *__s)
{
  v3 = __s;
  if (a2)
  {
    v9 = 0;
    v10 = 0;
    result = ascii2ucs2le(__s, 0, &v9);
    if (result)
    {
      return result;
    }

    v7 = v9;
    v3 = v10;
  }

  else
  {
    v7 = strlen(__s);
  }

  v8 = krb5_storage_write(a1);
  if (v8 == v7)
  {
    result = 0;
  }

  else
  {
    result = 2733221632;
  }

  if (a2 && v8 == v7)
  {
    if (v3)
    {
      free(v3);
    }

    return 0;
  }

  return result;
}

double heim_ntlm_free_type2(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t heim_ntlm_decode_type2(uint64_t *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v9 = 0;
  *v10 = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  v3 = krb5_storage_from_readonly_mem(a1[1], *a1);
  if (v3)
  {
    v4 = v3;
    krb5_storage_set_byteorder(v3, 32);
    if (krb5_storage_read(v4) == 8 && v14 == 0x5053534D4C544ELL && !krb5_ret_uint32(v4, &v11) && v11 == 2 && !ret_sec_buffer(v4, v10) && !krb5_ret_uint32(v4, a2))
    {
      v8 = *a2;
      if (krb5_storage_read(v4) == 8 && !krb5_ret_uint32(v4, &v12) && !krb5_ret_uint32(v4, &v13) && !ret_sec_buffer(v4, &v9) && ((*(a2 + 3) & 2) == 0 || !krb5_ret_uint32(v4, (a2 + 48)) && !krb5_ret_uint32(v4, (a2 + 52))) && !ret_sec_string(v4, v8 & 1, v10, (a2 + 8)) && !ret_buf(v4, &v9, (a2 + 16)))
      {
        krb5_storage_free(v4);
        v5 = 0;
        goto LABEL_7;
      }
    }

    krb5_storage_free(v4);
    v5 = 2733221632;
  }

  else
  {
    v5 = 12;
  }

  heim_ntlm_free_type2(a2);
LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ret_buf(uint64_t a1, unsigned __int16 *a2, uint64_t *a3)
{
  v6 = 2733221632;
  v7 = malloc_type_malloc(*a2, 0x13C2514DuLL);
  *a3 = *a2;
  a3[1] = v7;
  v8 = *(a2 + 1);
  if (krb5_storage_seek(a1) == v8)
  {
    v10 = *a3;
    v9 = a3[1];
    if (krb5_storage_read(a1) == *a3)
    {
      return 0;
    }

    else
    {
      return 2733221632;
    }
  }

  return v6;
}

uint64_t heim_ntlm_encode_type2(unsigned int *a1, void *a2)
{
  v4 = *a1;
  if ((*a1 & 0x2000000) != 0)
  {
    v5 = 56;
  }

  else
  {
    v5 = 48;
  }

  v17 = v5;
  v16[0] = len_string(v4 & 1, *(a1 + 1));
  v16[1] = v16[0];
  v15 = v5 + v16[0];
  v14[0] = *(a1 + 8);
  v14[1] = v14[0];
  v6 = krb5_storage_emem();
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v8 = 2733221632;
  krb5_storage_set_byteorder(v6, 32);
  if (krb5_storage_write(v7) == 8 && !krb5_store_uint32(v7, 2) && !store_sec_buffer(v7, v16) && !krb5_store_uint32(v7, *a1) && krb5_storage_write(v7) == 8 && !krb5_store_uint32(v7, 0) && !krb5_store_uint32(v7, 0) && !store_sec_buffer(v7, v14) && ((*(a1 + 3) & 2) == 0 || !encode_os_version(v7)) && !put_string(v7, v4 & 1, *(a1 + 1)))
  {
    v9 = *(a1 + 2);
    if (krb5_storage_write(v7) == v9)
    {
      v12 = 0;
      v13 = 0;
      v8 = krb5_storage_to_data(v7, &v12);
      v10 = v13;
      *a2 = v12;
      a2[1] = v10;
    }
  }

  krb5_storage_free(v7);
  return v8;
}

double heim_ntlm_free_type3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(a1 + 48);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    free(v7);
  }

  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t heim_ntlm_decode_type3(uint64_t *a1, int a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  v5 = krb5_storage_from_readonly_mem(a1[1], *a1);
  if (!v5)
  {
    v7 = 12;
    goto LABEL_6;
  }

  v6 = v5;
  krb5_storage_set_byteorder(v5, 32);
  if (krb5_storage_read(v6) == 8 && v27 == 0x5053534D4C544ELL && !krb5_ret_uint32(v6, &v26) && v26 == 3 && !ret_sec_buffer(v6, &v25))
  {
    v10 = WORD1(v25);
    v11 = HIDWORD(v25);
    if (!ret_sec_buffer(v6, &v24))
    {
      if (v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = -1;
      }

      v13 = HIDWORD(v24);
      if (v12 < HIDWORD(v24))
      {
        v13 = v12;
      }

      v14 = WORD1(v24) ? v13 : v12;
      if (!ret_sec_buffer(v6, &v23))
      {
        v15 = HIDWORD(v23);
        if (!ret_sec_buffer(v6, &v22))
        {
          v16 = HIDWORD(v22);
          if (!ret_sec_buffer(v6, &v20))
          {
            if (v14 >= v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = v14;
            }

            if (v17 >= v16)
            {
              v17 = v16;
            }

            v18 = HIDWORD(v20);
            if (v17 < HIDWORD(v20))
            {
              v18 = v17;
            }

            if (WORD1(v20))
            {
              v19 = v18;
            }

            else
            {
              v19 = v17;
            }

            if (v19 < 0x34)
            {
              goto LABEL_44;
            }

            if (ret_sec_buffer(v6, &v21))
            {
              goto LABEL_4;
            }

            if (v19 >= HIDWORD(v21))
            {
              v19 = HIDWORD(v21);
            }

            if (krb5_ret_uint32(v6, a3))
            {
              goto LABEL_4;
            }

            if (v19 < 0x48)
            {
              goto LABEL_44;
            }

            if (krb5_ret_uint32(v6, (a3 + 80)) || krb5_ret_uint32(v6, (a3 + 84)))
            {
              goto LABEL_4;
            }

            if (v19 < 0x58)
            {
LABEL_44:
              *(a3 + 88) = 0;
LABEL_45:
              if (!ret_buf(v6, &v25, (a3 + 24)) && !ret_buf(v6, &v24, (a3 + 40)) && !ret_sec_string(v6, a2, &v23, (a3 + 16)) && !ret_sec_string(v6, a2, &v22, (a3 + 8)) && !ret_sec_string(v6, a2, &v20, (a3 + 72)) && (!HIDWORD(v21) || !ret_buf(v6, &v21, (a3 + 56))))
              {
                krb5_storage_free(v6);
                v7 = 0;
                goto LABEL_7;
              }

              goto LABEL_4;
            }

            *(a3 + 88) = 72;
            if (krb5_storage_read(v6) == 16)
            {
              goto LABEL_45;
            }
          }
        }
      }
    }
  }

LABEL_4:
  krb5_storage_free(v6);
  v7 = 2733221632;
LABEL_6:
  heim_ntlm_free_type3(a3);
LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t heim_ntlm_encode_type3(unsigned int *a1, void *a2, uint64_t *a3)
{
  v6 = *a1;
  if ((*a1 & 0x2000000) != 0)
  {
    v7 = 72;
  }

  else
  {
    v7 = 64;
  }

  if (a3)
  {
    *a3 = v7;
    LODWORD(v7) = v7 | 0x10;
  }

  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20[0] = 0;
  v18 = 0uLL;
  v20[1] = v7;
  LOWORD(v20[0]) = len_string(v6 & 1, *(a1 + 2));
  HIWORD(v20[0]) = v20[0];
  HIDWORD(v19) = v7 + LOWORD(v20[0]);
  LOWORD(v19) = len_string(v6 & 1, *(a1 + 1));
  WORD1(v19) = v19;
  *(&v18 + 4) = HIDWORD(v19) + v19;
  LOWORD(v18) = len_string(v6 & 1, *(a1 + 9));
  WORD1(v18) = v18;
  HIDWORD(v22) = DWORD1(v18) + v18;
  LOWORD(v22) = a1[6];
  WORD1(v22) = v22;
  HIDWORD(v21) = HIDWORD(v22) + v22;
  LOWORD(v21) = a1[10];
  WORD1(v21) = v21;
  HIDWORD(v18) = HIDWORD(v21) + v21;
  WORD4(v18) = *(a1 + 28);
  WORD5(v18) = WORD4(v18);
  v8 = krb5_storage_emem();
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  v10 = 2733221632;
  krb5_storage_set_byteorder(v8, 32);
  if (krb5_storage_write(v9) == 8 && !krb5_store_uint32(v9, 3) && !store_sec_buffer(v9, &v22) && !store_sec_buffer(v9, &v21) && !store_sec_buffer(v9, v20) && !store_sec_buffer(v9, &v19) && !store_sec_buffer(v9, &v18) && !store_sec_buffer(v9, &v18 + 8) && !krb5_store_uint32(v9, *a1) && ((*(a1 + 3) & 2) == 0 || !encode_os_version(v9)) && (!a3 || krb5_storage_write(v9) == 16) && !put_string(v9, v6 & 1, *(a1 + 2)) && !put_string(v9, v6 & 1, *(a1 + 1)) && !put_string(v9, v6 & 1, *(a1 + 9)))
  {
    v12 = *(a1 + 3);
    if (krb5_storage_write(v9) == v12)
    {
      v13 = *(a1 + 5);
      if (krb5_storage_write(v9) == v13)
      {
        v14 = *(a1 + 7);
        if (krb5_storage_write(v9) == v14)
        {
          v16 = 0;
          v17 = 0;
          v10 = krb5_storage_to_data(v9, &v16);
          v15 = v17;
          *a2 = v16;
          a2[1] = v15;
        }
      }
    }
  }

  krb5_storage_free(v9);
  return v10;
}

uint64_t heim_ntlm_nt_key(char *a1, void *a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0xA26DCCA6uLL);
  a2[1] = v4;
  if (!v4)
  {
    return 12;
  }

  v11 = 0;
  v12 = 0;
  *a2 = 16;
  v5 = ascii2ucs2le(a1, 0, &v11);
  if (v5)
  {
    v6 = v5;
    v7 = a2[1];
    if (v7)
    {
      free(v7);
    }

    *a2 = 0;
    a2[1] = 0;
    return v6;
  }

  if (!CCDigestCreate())
  {
    v9 = a2[1];
    if (v9)
    {
      free(v9);
    }

    *a2 = 0;
    a2[1] = 0;
    if (v12)
    {
      free(v12);
    }

    return 12;
  }

  v6 = v12;
  CCDigestUpdate();
  v8 = a2[1];
  CCDigestFinal();
  CCDigestDestroy();
  if (v6)
  {
    free(v6);
    return 0;
  }

  return v6;
}

uint64_t ascii2ucs2le(char *a1, int a2, void *a3)
{
  v20 = 0;
  v6 = wind_utf8ucs2_length(a1, &v20);
  if (!v6)
  {
    if (v20 >> 31)
    {
      return 34;
    }

    v7 = malloc_type_malloc(2 * v20, 0x1000040BDFB0063uLL);
    if (!v7)
    {
      return 12;
    }

    v8 = v7;
    v9 = wind_utf8ucs2(a1, v7, &v20);
    if (v9)
    {
      v6 = v9;
      free(v8);
      return v6;
    }

    v10 = v20;
    if (!v20)
    {
      free(v8);
      v6 = 0;
      *a3 = 0;
      a3[1] = 0;
      return v6;
    }

    if (a2)
    {
      v11 = 0;
      do
      {
        v12 = v8[v11];
        if (v12 <= 0x7F)
        {
          v8[v11] = __toupper(v12);
          v10 = v20;
        }

        ++v11;
      }

      while (v11 < v10);
    }

    *a3 = 2 * v10;
    v13 = malloc_type_malloc(2 * v10, 0x7184B731uLL);
    a3[1] = v13;
    if (!v13 && v20)
    {
      free(v8);
      v14 = a3[1];
      if (v14)
      {
        free(v14);
      }

      *a3 = 0;
      a3[1] = 0;
      return 12;
    }

    if (v20)
    {
      v16 = 0;
      v17 = v13 + 1;
      do
      {
        v18 = &v8[v16];
        *(v17 - 1) = *v18;
        *v17 = *(v18 + 1);
        v17 += 2;
        ++v16;
      }

      while (v16 < v20);
      v19 = 2 * v20;
    }

    else
    {
      v19 = 0;
    }

    bzero(v8, v19);
    free(v8);
    return 0;
  }

  return v6;
}

uint64_t heim_ntlm_calculate_ntlm1(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 == 16)
  {
    v10 = *a1;
    v11 = 0;
    v12 = 0;
    v5 = malloc_type_malloc(0x18uLL, 0xF8EBBC5BuLL);
    a4[1] = v5;
    if (v5)
    {
      *a4 = 24;
      splitandenc(&v10);
      v6 = a4[1];
      splitandenc(&v10 + 7);
      v7 = a4[1];
      splitandenc((&v10 | 0xE));
      result = 0;
    }

    else
    {
      result = 12;
    }
  }

  else
  {
    result = 2733221633;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t splitandenc(_BYTE *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11[0] = *a1;
  HIDWORD(v2) = v11[0];
  LODWORD(v2) = a1[1] << 24;
  v1 = v2 >> 25;
  v3 = a1[2];
  HIDWORD(v2) = a1[1];
  LODWORD(v2) = v3 << 24;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11[1] = v1;
  v11[2] = v2 >> 26;
  v4 = a1[3];
  HIDWORD(v2) = v3;
  LODWORD(v2) = v4 << 24;
  v11[3] = v2 >> 27;
  v5 = a1[4];
  HIDWORD(v2) = v4;
  LODWORD(v2) = v5 << 24;
  v11[4] = v2 >> 28;
  v6 = a1[5];
  HIDWORD(v2) = v5;
  LODWORD(v2) = v6 << 24;
  v11[5] = v2 >> 29;
  v7 = a1[6];
  HIDWORD(v2) = v6;
  LODWORD(v2) = v7 << 24;
  v11[6] = v2 >> 30;
  v11[7] = 2 * v7;
  hc_EVP_CIPHER_CTX_init(v12);
  v8 = hc_EVP_des_cbc();
  hc_EVP_CipherInit_ex(v12, v8, 0, v11, 0, 1);
  hc_EVP_Cipher(v12);
  result = hc_EVP_CIPHER_CTX_cleanup(v12);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t heim_ntlm_v1_base_session(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 16;
  v4 = malloc_type_malloc(0x10uLL, 0xF919AB33uLL);
  a3[1] = v4;
  if (v4)
  {
    if (CCDigestCreate())
    {
      CCDigestUpdate();
      v5 = a3[1];
      CCDigestFinal();
      CCDigestDestroy();
      return 0;
    }

    v7 = a3[1];
    if (v7)
    {
      free(v7);
    }

    a3[1] = 0;
  }

  *a3 = 0;
  return 12;
}

uint64_t heim_ntlm_v2_base_session(const void *a1, size_t a2, uint64_t a3, void *a4)
{
  if (*a3 < 0x11uLL)
  {
    return 2733221633;
  }

  v9 = malloc_type_malloc(0x10uLL, 0xB9B74E85uLL);
  a4[1] = v9;
  if (!v9)
  {
    return 12;
  }

  *a4 = 16;
  CCHmac(1u, a1, a2, *(a3 + 8), 0x10uLL, v9);
  return 0;
}

uint64_t heim_ntlm_keyex_wrap(void *a1, uint64_t *a2, uint64_t *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = 2733221633;
  if (*a1 == 16)
  {
    *a2 = 16;
    v7 = malloc_type_malloc(0x10uLL, 0x1C550317uLL);
    a2[1] = v7;
    if (v7)
    {
      *a3 = 16;
      v8 = malloc_type_malloc(0x10uLL, 0xB881713uLL);
      a3[1] = v8;
      if (v8)
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        hc_EVP_CIPHER_CTX_init(v23);
        v9 = hc_EVP_rc4();
        if (hc_EVP_CipherInit_ex(v23, v9, 0, a1[1], 0, 1) == 1)
        {
          v10 = *MEMORY[0x277D85C28];
          v12 = *a2;
          v11 = a2[1];
          if (CCRandomCopyBytes())
          {
            hc_EVP_CIPHER_CTX_cleanup(v23);
            v13 = a3[1];
            if (v13)
            {
              free(v13);
            }

            *a3 = 0;
            a3[1] = 0;
            v14 = a2[1];
            if (v14)
            {
              free(v14);
            }

            *a2 = 0;
            a2[1] = 0;
            v3 = 2733221635;
          }

          else
          {
            v18 = a2[1];
            v20 = *a3;
            v19 = a3[1];
            hc_EVP_Cipher(v23);
            hc_EVP_CIPHER_CTX_cleanup(v23);
            v3 = 0;
          }
        }

        else
        {
          hc_EVP_CIPHER_CTX_cleanup(v23);
          v16 = a3[1];
          if (v16)
          {
            free(v16);
          }

          *a3 = 0;
          a3[1] = 0;
          v17 = a2[1];
          if (v17)
          {
            free(v17);
          }

          *a2 = 0;
          a2[1] = 0;
          v3 = 2733221634;
        }
      }

      else
      {
        v15 = a2[1];
        if (v15)
        {
          free(v15);
        }

        *a2 = 0;
        a2[1] = 0;
        v3 = 12;
        *a3 = 0;
      }
    }

    else
    {
      *a2 = 0;
      v3 = 12;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t heim_ntlm_build_ntlm1_master(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = 0;
  v9 = 0;
  v6 = heim_ntlm_v1_base_session(a1, a2, &v8);
  if (!v6)
  {
    v6 = heim_ntlm_keyex_wrap(&v8, a3, a4);
    if (v9)
    {
      free(v9);
    }
  }

  return v6;
}

uint64_t heim_ntlm_build_ntlm2_master(const void *a1, size_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = 0;
  v10 = 0;
  v7 = heim_ntlm_v2_base_session(a1, a2, a3, &v9);
  if (!v7)
  {
    v7 = heim_ntlm_keyex_wrap(&v9, a4, a5);
    if (v10)
    {
      free(v10);
    }
  }

  return v7;
}

uint64_t heim_ntlm_keyex_unwrap(void *a1, void *a2, uint64_t *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = 2733221633;
  *a3 = 0;
  a3[1] = 0;
  if (*a2 == 16 && *a1 == 16)
  {
    *a3 = 16;
    v7 = malloc_type_malloc(0x10uLL, 0xCD1D2584uLL);
    a3[1] = v7;
    if (v7)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      hc_EVP_CIPHER_CTX_init(v15);
      v8 = hc_EVP_rc4();
      if (hc_EVP_CipherInit_ex(v15, v8, 0, a1[1], 0, 0) == 1)
      {
        v9 = a2[1];
        v11 = *a3;
        v10 = a3[1];
        hc_EVP_Cipher(v15);
        hc_EVP_CIPHER_CTX_cleanup(v15);
        v3 = 0;
      }

      else
      {
        hc_EVP_CIPHER_CTX_cleanup(v15);
        v12 = a3[1];
        if (v12)
        {
          free(v12);
        }

        *a3 = 0;
        a3[1] = 0;
        v3 = 2733221634;
      }
    }

    else
    {
      *a3 = 0;
      v3 = 12;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t heim_ntlm_ntlmv2_key(void *key, size_t keyLength, char *a3, char *a4, int a5, void *a6)
{
  memset(&ctx, 0, sizeof(ctx));
  CCHmacInit(&ctx, 1u, key, keyLength);
  v13 = 0;
  v14 = 0;
  result = ascii2ucs2le(a3, 1, &v13);
  if (!result)
  {
    v11 = v14;
    CCHmacUpdate(&ctx, v14, v13);
    free(v11);
    result = ascii2ucs2le(a4, a5, &v13);
    if (!result)
    {
      v12 = v14;
      CCHmacUpdate(&ctx, v14, v13);
      free(v12);
      CCHmacFinal(&ctx, a6);
      return 0;
    }
  }

  return result;
}

uint64_t heim_ntlm_calculate_lm2(void *a1, size_t a2, char *a3, char *a4, const void *a5, void *a6, void *a7)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277D85C28];
  if (CCRandomCopyBytes())
  {
    result = 2733221635;
  }

  else
  {
    heim_ntlm_ntlmv2_key(a1, a2, a3, a4, 0, a6);
    v16 = malloc_type_malloc(0x18uLL, 0xD57CA6CAuLL);
    a7[1] = v16;
    if (v16)
    {
      *a7 = 24;
      heim_ntlm_derive_ntlm2_sess(a6, v18, 8uLL, a5, v16);
      result = 0;
      *(a7[1] + 16) = v18[0];
    }

    else
    {
      result = 12;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void heim_ntlm_derive_ntlm2_sess(void *key, const void *a2, size_t a3, const void *a4, void *a5)
{
  memset(&v9, 0, sizeof(v9));
  CCHmacInit(&v9, 1u, key, 0x10uLL);
  CCHmacUpdate(&v9, a4, 8uLL);
  CCHmacUpdate(&v9, a2, a3);
  CCHmacFinal(&v9, a5);
}

uint64_t heim_ntlm_calculate_ntlm2(void *a1, size_t a2, char *a3, char *a4, const void *a5, uint64_t *a6, void *a7, void *a8)
{
  v32 = *MEMORY[0x277D85DE8];
  v16 = 2733221632;
  v29 = 0;
  v30 = 0;
  v17 = time(0);
  v18 = *MEMORY[0x277D85C28];
  if (!CCRandomCopyBytes())
  {
    heim_ntlm_ntlmv2_key(a1, a2, a3, a4, 0, a7);
    v19 = krb5_storage_emem();
    if (v19)
    {
      v20 = v19;
      krb5_storage_set_flags(v19, 32);
      if (krb5_store_uint32(v20, 257) || krb5_store_uint32(v20, 0) || (v21 = 10000000 * v17 + 116444736000000000, krb5_store_uint32(v20, v21)) || krb5_store_uint32(v20, HIDWORD(v21)) || krb5_storage_write(v20) != 8 || krb5_store_uint32(v20, 0) || (v23 = *a6, v22 = a6[1], krb5_storage_write(v20) != *a6) || krb5_store_uint32(v20, 0) || krb5_storage_to_data(v20, &v29))
      {
LABEL_13:
        krb5_storage_free(v20);
        goto LABEL_21;
      }

      krb5_storage_free(v20);
      heim_ntlm_derive_ntlm2_sess(a7, v30, v29, a5, v31);
      v24 = krb5_storage_emem();
      if (v24)
      {
        v20 = v24;
        if (krb5_storage_write(v24) == 16)
        {
          v25 = krb5_storage_write(v20);
          if (v25 == v29)
          {
            krb5_data_free(&v29);
            if (!krb5_storage_to_data(v20, &v29))
            {
              krb5_storage_free(v20);
              v16 = 0;
              v26 = v30;
              *a8 = v29;
              a8[1] = v26;
              goto LABEL_21;
            }
          }
        }

        goto LABEL_13;
      }

      krb5_data_free(&v29);
    }

    v16 = 12;
    goto LABEL_21;
  }

  v16 = 2733221635;
LABEL_21:
  v27 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t heim_ntlm_verify_ntlm2(void *a1, size_t a2, char *a3, char *a4, uint64_t a5, const void *a6, uint64_t *a7, size_t *a8, void *a9)
{
  if (verify_ntlm2(a1, a2, a3, a4, 0, a5, a6, a7, a8, a9) && verify_ntlm2(a1, a2, a3, a4, 1, a5, a6, a7, a8, a9))
  {
    return verify_ntlm2(a1, a2, a3, "", 0, a5, a6, a7, a8, a9);
  }

  else
  {
    return 0;
  }
}

uint64_t verify_ntlm2(void *key, size_t keyLength, char *a3, char *a4, int a5, uint64_t a6, const void *a7, uint64_t *a8, size_t *a9, void *a10)
{
  v34[5] = *MEMORY[0x277D85DE8];
  v10 = 2733221632;
  *a9 = 0;
  a9[1] = 0;
  if (*a8 < 0x10)
  {
    v10 = 2733221633;
    goto LABEL_29;
  }

  v12 = a6;
  if (!a6)
  {
    v12 = time(0);
  }

  heim_ntlm_ntlmv2_key(key, keyLength, a3, a4, a5, a10);
  v18 = krb5_storage_from_readonly_mem(a8[1], *a8);
  if (!v18)
  {
    v10 = 12;
    goto LABEL_29;
  }

  v19 = v18;
  v33 = 0;
  krb5_storage_set_flags(v18, 32);
  if (krb5_storage_read(v19) == 16 && !krb5_ret_uint32(v19, &v33) && v33 == 257)
  {
    v20 = krb5_ret_uint32(v19, &v33);
    if (!(v20 | v33) && !krb5_ret_uint32(v19, &v33))
    {
      v21 = v33;
      if (!krb5_ret_uint32(v19, &v33))
      {
        v22 = ((v21 | (v33 << 32)) - 116444736000000000) / 0x989680 - v12;
        if (v22 < 0)
        {
          v22 = v12 - ((v21 | (v33 << 32)) - 116444736000000000) / 0x989680;
        }

        if (v22 <= 0x1C20)
        {
          if (krb5_storage_read(v19) == 8 && !krb5_ret_uint32(v19, &v33))
          {
            v23 = *a8;
            v24 = v23 - krb5_storage_seek(v19);
            *a9 = v24;
            if (v24 >= 4)
            {
              v25 = malloc_type_malloc(v24, 0x491FF607uLL);
              a9[1] = v25;
              if (!v25)
              {
                *a9 = 0;
                a9[1] = 0;
                v10 = 12;
LABEL_28:
                krb5_storage_free(v19);
                goto LABEL_29;
              }

              v26 = *a9;
              if (krb5_storage_read(v19) != *a9)
              {
                goto LABEL_25;
              }

              krb5_storage_free(v19);
              if (*a8 >= 0x10)
              {
                heim_ntlm_derive_ntlm2_sess(a10, (a8[1] + 16), *a8 - 16, a7, v34);
                if (v34[0] == v34[3] && v34[1] == v34[4])
                {
                  v10 = 0;
                }

                else
                {
                  v31 = a9[1];
                  if (v31)
                  {
                    free(v31);
                  }

                  *a9 = 0;
                  a9[1] = 0;
                  v10 = 2733221636;
                }

                goto LABEL_29;
              }

              v19 = 0;
            }

            v10 = 2733221633;
          }
        }

        else
        {
          v10 = 2733221637;
        }
      }
    }
  }

LABEL_25:
  v27 = a9[1];
  if (v27)
  {
    free(v27);
  }

  *a9 = 0;
  a9[1] = 0;
  if (v19)
  {
    goto LABEL_28;
  }

LABEL_29:
  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t heim_ntlm_calculate_ntlm2_sess(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5)
{
  v18[1] = *MEMORY[0x277D85DE8];
  result = heim_ntlm_calculate_ntlm2_sess_hash(a1, a2, v18);
  if (!result)
  {
    v10 = malloc_type_malloc(0x18uLL, 0x3C18CD75uLL);
    *(a4 + 8) = v10;
    if (v10)
    {
      *a4 = 24;
      v11 = malloc_type_malloc(0x18uLL, 0x16AF1063uLL);
      a5[1] = v11;
      if (v11)
      {
        *a5 = 24;
        v12 = *(a4 + 8);
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        **(a4 + 8) = *a1;
        v16 = 0;
        v17 = 0;
        v15 = *a3;
        v13 = a5[1];
        splitandenc(&v15);
        splitandenc(&v15 + 7);
        splitandenc((&v15 | 0xE));
        result = 0;
        goto LABEL_7;
      }

      free(*(a4 + 8));
      *(a4 + 8) = 0;
    }

    result = 12;
  }

LABEL_7:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t heim_ntlm_calculate_ntlm2_sess_hash(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (CCDigestCreate())
  {
    CCDigestUpdate();
    CCDigestUpdate();
    CCDigestFinal();
    CCDigestDestroy();
    result = 0;
    *a3 = v6;
  }

  else
  {
    result = 12;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t heim_ntlm_mppe_getmasterkey()
{
  if (!CCDigestCreate())
  {
    return 12;
  }

  CCDigestUpdate();
  CCDigestUpdate();
  CCDigestUpdate();
  CCDigestFinal();
  CCDigestDestroy();
  return 0;
}

uint64_t heim_ntlm_mppe_getasymmetricstartkey(uint64_t a1, void *a2, size_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3 <= 0x14)
  {
    if (CCDigestCreate())
    {
      CCDigestUpdate();
      CCDigestUpdate();
      CCDigestUpdate();
      CCDigestUpdate();
      CCDigestFinal();
      CCDigestDestroy();
      memcpy(a2, __src, a3);
      result = 0;
    }

    else
    {
      result = 12;
    }
  }

  else
  {
    result = 22;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t heim_ntlm_mppe_getsessionkey(const void *a1, uint64_t a2, uint64_t a3, size_t a4, void *a5, void *a6)
{
  v14 = *MEMORY[0x277D85DE8];
  CC_MD4(a1, 0x10u, md);
  result = heim_ntlm_mppe_getmasterkey();
  *md = 0;
  v13 = 0;
  if (!result)
  {
    result = heim_ntlm_mppe_getasymmetricstartkey(v11, a5, a4);
    if (!result)
    {
      result = heim_ntlm_mppe_getasymmetricstartkey(v11, a6, a4);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t krb5_storage_free(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v2(a1);
  }

  free(*a1);
  free(a1);
  return 0;
}

uint64_t krb5_storage_to_data(uint64_t a1, size_t *a2)
{
  v4 = 2314790665;
  v5 = (*(a1 + 24))(a1, 0, 1);
  if (v5 < 0)
  {
    return 2314790664;
  }

  v6 = v5;
  v7 = (*(a1 + 24))(a1, 0, 2);
  if (v7 <= 102400)
  {
    v8 = v7;
    v9 = *(a1 + 56);
    if (!v9 || v9 >= v7)
    {
      v4 = krb5_data_alloc(a2, v7);
      if (!v4)
      {
        if (!v8)
        {
          return 0;
        }

        (*(a1 + 24))(a1, 0, 0);
        (*(a1 + 8))(a1, a2[1], *a2);
        v4 = 0;
      }

      (*(a1 + 24))(a1, v6, 0);
    }
  }

  return v4;
}

uint64_t krb5_store_int32(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 48) & 0x60) != 0x40 && (*(a1 + 48) & 1) == 0)
  {
    if ((*(a1 + 48) & 0x60) == 0x20)
    {
      a2 = rk_bswap32(a2);
    }
  }

  else
  {
    a2 = bswap32(a2);
  }

  return krb5_store_int(a1, a2, 4);
}

uint64_t krb5_store_int(uint64_t a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  _krb5_put_int(v9, a2, a3);
  v5 = (*(a1 + 16))(a1, v9, a3);
  if (v5 < 0)
  {
    v7 = __error();
LABEL_6:
    result = *v7;
    goto LABEL_7;
  }

  if (v5 != a3)
  {
    v7 = (a1 + 52);
    goto LABEL_6;
  }

  result = 0;
LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t krb5_ret_int32(uint64_t a1, unsigned int *a2)
{
  v4 = krb5_ret_int(a1, a2, 4);
  if (!v4)
  {
    if (*(a1 + 48) & 0x60) == 0x40 || (*(a1 + 48))
    {
      v6 = bswap32(*a2);
LABEL_9:
      *a2 = v6;
      return v4;
    }

    if ((*(a1 + 48) & 0x60) == 0x20)
    {
      v6 = rk_bswap32(*a2);
      goto LABEL_9;
    }
  }

  return v4;
}

uint64_t krb5_ret_int(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v8 = 0;
  v6 = (*(a1 + 8))(a1, v9);
  if (v6 < 0)
  {
    return *__error();
  }

  if (v6 != a3)
  {
    return *(a1 + 52);
  }

  _krb5_get_int(v9, &v8, a3);
  result = 0;
  *a2 = v8;
  return result;
}

uint64_t krb5_ret_uint32(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = krb5_ret_int32(a1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t krb5_store_int16(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 48) & 0x60) != 0x40 && (*(a1 + 48) & 1) == 0)
  {
    if ((*(a1 + 48) & 0x60) == 0x20)
    {
      LOWORD(a2) = rk_bswap16(a2);
    }
  }

  else
  {
    a2 = bswap32(a2) >> 16;
  }

  return krb5_store_int(a1, a2, 2);
}

uint64_t krb5_ret_int16(uint64_t a1, _WORD *a2)
{
  v9 = 0;
  v4 = krb5_ret_int(a1, &v9, 2);
  if (!v4)
  {
    v5 = v9;
    *a2 = v9;
    if (*(a1 + 48) & 0x60) == 0x40 || (*(a1 + 48))
    {
      v7 = bswap32(v5) >> 16;
LABEL_9:
      *a2 = v7;
      return v4;
    }

    if ((*(a1 + 48) & 0x60) == 0x20)
    {
      LOWORD(v7) = rk_bswap16(v5);
      goto LABEL_9;
    }
  }

  return v4;
}

uint64_t krb5_ret_uint16(uint64_t a1, _WORD *a2)
{
  v4 = 0;
  result = krb5_ret_int16(a1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t krb5_store_int8(uint64_t a1, char a2)
{
  v6 = a2;
  v3 = (*(a1 + 16))(a1, &v6, 1);
  if (v3 == 1)
  {
    return 0;
  }

  if (v3 < 0)
  {
    v5 = __error();
  }

  else
  {
    v5 = (a1 + 52);
  }

  return *v5;
}

void *krb5_storage_emem()
{
  v0 = malloc_type_malloc(0x40uLL, 0x10800405C5E1C9BuLL);
  if (v0)
  {
    v1 = malloc_type_malloc(0x20uLL, 0x101004038BDA701uLL);
    if (v1)
    {
      v2 = v1;
      *v0 = v1;
      v0[6] = 0x89F8E70500000000;
      v1[1] = 1024;
      v3 = malloc_type_malloc(0x400uLL, 0xA5AAB35AuLL);
      *v2 = v3;
      if (v3)
      {
        v2[2] = 0;
        v2[3] = v3;
        v0[1] = emem_fetch;
        v0[2] = emem_store;
        v0[3] = emem_seek;
        v0[4] = emem_trunc;
        v0[5] = emem_free;
        v0[7] = 0x1FFFFFFFLL;
        return v0;
      }

      free(v0);
      v4 = v2;
    }

    else
    {
      v4 = v0;
    }

    free(v4);
    return 0;
  }

  return v0;
}

size_t emem_fetch(void **a1, void *__dst, size_t a3)
{
  v5 = (*a1)[3];
  if (**a1 + (*a1)[2] - v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = **a1 + (*a1)[2] - v5;
  }

  memmove(__dst, v5, v6);
  (a1[3])(a1, v6, 1);
  return v6;
}

size_t emem_store(void ***a1, void *__src, size_t __len)
{
  v3 = __len;
  v6 = *a1;
  v7 = **a1;
  v8 = v6[3];
  if (v6[1] + v7 - v8 < __len)
  {
    v9 = v8 - v7;
    v10 = (v8 - v7 + __len) << (v8 - v7 + __len < 0x1000);
    v11 = malloc_type_realloc(v7, v10, 0xF8A29809uLL);
    if (!v11)
    {
      return -1;
    }

    *v6 = v11;
    v6[1] = v10;
    v8 = &v11[v9];
    v6[3] = &v11[v9];
  }

  memmove(v8, __src, v3);
  (a1[3])(a1, v3, 1);
  return v3;
}

uint64_t emem_seek(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *a1;
  switch(a3)
  {
    case 2:
      v6 = *(a1 + 24);
      v8 = v3[2] + a2;
      goto LABEL_10;
    case 1:
      v6 = *(a1 + 24);
      v7 = v3[3] + a2 - *v3;
LABEL_10:
      v6();
      return v3[3] - *v3;
    case 0:
      v4 = v3[1];
      if (v4 >= a2)
      {
        v4 = a2;
      }

      v5 = v4 & ~(v4 >> 63);
      v3[3] = *v3 + v5;
      if (v5 > v3[2])
      {
        v3[2] = v5;
      }

      return v3[3] - *v3;
  }

  *__error() = 22;
  return -1;
}

uint64_t emem_trunc(void ***a1, size_t size)
{
  v3 = *a1;
  if (size)
  {
    v5 = *v3;
    v4 = v3[1];
    v6 = v3[3];
    if (v4 < size || v4 >> 1 > size)
    {
      v8 = malloc_type_realloc(*v3, size, 0x654D941FuLL);
      if (!v8)
      {
        return 12;
      }

      v11 = v8;
      v9 = v6 - v5;
      v10 = v3[1];
      if (size > v10)
      {
        bzero(&v10[v8], size - v10);
      }

      *v3 = v11;
      v3[1] = size;
      v6 = &v11[v9];
      v3[3] = &v11[v9];
    }

    else
    {
      v11 = *v3;
    }
  }

  else
  {
    free(*v3);
    v11 = 0;
    v6 = 0;
    v3[3] = 0;
    *v3 = 0;
    v3[1] = 0;
  }

  v3[2] = size;
  result = 0;
  if (v6 - v11 > size)
  {
    v3[3] = &v11[size];
  }

  return result;
}

void emem_free(void ***a1)
{
  v1 = *a1;
  bzero(**a1, (*a1)[2]);
  v2 = *v1;

  free(v2);
}

size_t mem_fetch(void **a1, void *__dst, size_t a3)
{
  v5 = (*a1)[2];
  if (**a1 + (*a1)[1] - v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = **a1 + (*a1)[1] - v5;
  }

  memmove(__dst, v5, v6);
  (a1[3])(a1, v6, 1);
  return v6;
}

uint64_t mem_seek(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *a1;
  if (a3 == 2)
  {
    v7 = *(a1 + 24);
    v9 = v4[1] + a2;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        *__error() = 22;
        return -1;
      }

      else
      {
        v5 = v4[1];
        if (v5 >= a2)
        {
          v5 = a2;
        }

        result = v5 & ~(v5 >> 63);
        v4[2] = *v4 + result;
      }

      return result;
    }

    v7 = *(a1 + 24);
    v8 = v4[2] + a2 - *v4;
  }

  return v7();
}

void *krb5_storage_from_readonly_mem(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x40uLL, 0x10800405C5E1C9BuLL);
  if (v4)
  {
    v5 = malloc_type_malloc(0x18uLL, 0x10100406AB5462FuLL);
    if (v5)
    {
      *v4 = v5;
      v4[6] = 0x89F8E70500000000;
      *v5 = a1;
      v5[1] = a2;
      v5[2] = a1;
      v4[1] = mem_fetch;
      v4[2] = mem_no_store;
      v4[3] = mem_seek;
      v4[4] = mem_no_trunc;
      v4[5] = 0;
      v4[7] = 0x1FFFFFFFLL;
    }

    else
    {
      free(v4);
      return 0;
    }
  }

  return v4;
}

void krb5_data_free(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  a1[1] = 0;
}

uint64_t krb5_data_alloc(size_t *a1, size_t a2)
{
  v4 = malloc_type_calloc(1uLL, a2, 0x61CD87FCuLL);
  a1[1] = v4;
  if (a2 && !v4)
  {
    return 12;
  }

  result = 0;
  *a1 = a2;
  return result;
}

uint64_t heim_apop_create(const char *a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  memset(&v8, 0, sizeof(v8));
  CC_MD5_Init(&v8);
  v4 = strlen(a1);
  CC_MD5_Update(&v8, a1, v4);
  v5 = strlen(a2);
  CC_MD5_Update(&v8, a2, v5);
  CC_MD5_Final(md, &v8);
  rk_hex_encode_lower(md, 16, &v9);
  result = v9;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t heim_apop_verify(const char *a1, const char *a2, const char *a3)
{
  v4 = heim_apop_create(a1, a2);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v6 = strcasecmp(v4, a3);
  free(v5);
  if (v6)
  {
    return 2733221641;
  }

  else
  {
    return 0;
  }
}

int8x16_t heim_cram_md5_export(const char *a1, int8x16_t *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = strlen(a1);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  if (v4 < 0x41)
  {
    __memcpy_chk();
    *&v6 = 0x3636363636363636;
    *(&v6 + 1) = 0x3636363636363636;
    data = v6;
    v23 = v6;
    v24 = v6;
    v25 = v6;
    if (!v4)
    {
      v8 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    CC_MD5(a1, v4, md);
    *&v5 = 0x3636363636363636;
    *(&v5 + 1) = 0x3636363636363636;
    data = v5;
    v23 = v5;
    v24 = v5;
    v25 = v5;
    v4 = 8;
  }

  for (i = 0; i != v4; ++i)
  {
    *(&data + i) ^= md[i];
  }

  v8 = 0;
LABEL_7:
  CC_MD5_Init(v16);
  CC_MD5_Init(&v16[92]);
  CC_MD5_Update(v16, &data, 0x40u);
  *&v9 = 0x5C5C5C5C5C5C5C5CLL;
  *(&v9 + 1) = 0x5C5C5C5C5C5C5C5CLL;
  data = v9;
  v23 = v9;
  v24 = v9;
  v25 = v9;
  if ((v8 & 1) == 0)
  {
    p_data = &data;
    v11 = md;
    do
    {
      v12 = *v11++;
      *p_data ^= v12;
      p_data = (p_data + 1);
      --v4;
    }

    while (v4);
  }

  CC_MD5_Update(&v16[92], &data, 0x40u);
  result = vrev32q_s8(*v16);
  v14 = vrev32q_s8(*&v16[92]);
  *a2 = result;
  a2[1] = v14;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

char *heim_cram_md5_import(int8x16_t *a1, uint64_t a2)
{
  if (a2 != 32)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0xB8uLL, 0x10000400D840072uLL);
  if (result)
  {
    v4 = a1[1];
    *result = vrev32q_s8(*a1);
    *(result + 92) = vrev32q_s8(v4);
    *(result + 108) = 512;
    *(result + 2) = 512;
    *(result + 45) = 0;
    *(result + 22) = 0;
  }

  return result;
}

uint64_t heim_cram_md5_verify_ctx(CC_MD5_CTX *a1, char *__s, const char *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v6 = strlen(__s);
  CC_MD5_Update(a1, __s, v6);
  CC_MD5_Final(md, a1);
  CC_MD5_Update(a1 + 1, md, 0x10u);
  CC_MD5_Final(md, a1 + 1);
  rk_hex_encode_lower(md, 16, &v14);
  v7 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

  v8 = 2733221642;
  if (strlen(a3) != 32)
  {
    goto LABEL_9;
  }

  v9 = strdup(a3);
  if (!v9)
  {
    free(v7);
LABEL_8:
    v8 = 12;
    goto LABEL_9;
  }

  v10 = v9;
  rk_strlwr(v9);
  v11 = ct_memcmp(v14, v10, 32);
  free(v10);
  free(v14);
  if (v11)
  {
    v8 = 2733221642;
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

void heim_cram_md5_free(void *a1)
{
  *(a1 + 22) = 0;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  free(a1);
}

uint64_t heim_cram_md5_create(const char *a1, char *__s)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(&ctx, 0, sizeof(ctx));
  v8 = 0;
  v4 = strlen(__s);
  CCHmacInit(&ctx, 1u, __s, v4);
  v5 = strlen(a1);
  CCHmacUpdate(&ctx, a1, v5);
  CCHmacFinal(&ctx, macOut);
  memset(&ctx, 0, sizeof(ctx));
  rk_hex_encode_lower(macOut, 16, &v8);
  result = v8;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t heim_cram_md5_verify(const char *a1, char *a2, char *a3)
{
  v4 = heim_cram_md5_create(a1, a2);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v6 = strlen(v4);
  if (v6 != strlen(a3))
  {
    v10 = 2733221642;
    free(v5);
    return v10;
  }

  v7 = strdup(a3);
  if (!v7)
  {
    free(v5);
    return 12;
  }

  v8 = v7;
  rk_strlwr(v7);
  v9 = ct_memcmp(v5, a3, v6);
  free(v8);
  free(v5);
  if (v9)
  {
    return 2733221642;
  }

  else
  {
    return 0;
  }
}

_DWORD *heim_digest_create(uint64_t a1, int a2)
{
  result = malloc_type_calloc(1uLL, 0xA8uLL, 0x1010040E60783F7uLL);
  if (result)
  {
    *result |= 1u;
    result[1] = a2;
  }

  return result;
}

uint64_t heim_digest_generate_challenge(uint64_t a1)
{
  v9 = 0;
  if (!*(a1 + 32))
  {
    return 0;
  }

  if (*(a1 + 24) || (result = generate_nonce(), (*(a1 + 24) = result) != 0))
  {
    if (*(a1 + 40) || (result = strdup("auth"), (*(a1 + 40) = result) != 0))
    {
      if (*(a1 + 56) || (result = strdup("65536"), (*(a1 + 56) = result) != 0))
      {
        v3 = *(a1 + 4);
        if (v3 <= 1)
        {
          if (v3)
          {
            if (v3 == 1)
            {
              v5 = *(a1 + 32);
              asprintf(&v9, "realm=%s,nonce=%s");
            }

            goto LABEL_20;
          }

          *(a1 + 4) = 8;
        }

        else if (v3 != 8)
        {
          if (v3 == 4)
          {
            v6 = *(a1 + 32);
            asprintf(&v9, "realm=%s,nonce=%s,algorithm=md5-sess,qop=%s");
          }

          else if (v3 == 2)
          {
            v4 = *(a1 + 32);
            asprintf(&v9, "realm=%s,nonce=%s,algorithm=md5,qop=%s");
          }

          goto LABEL_20;
        }

        v7 = *(a1 + 32);
        asprintf(&v9, "realm=%s,nonce=%s,qop=%s,algorithm=md5-sess,charset=utf-8,maxbuf=%s");
LABEL_20:
        v8 = *(a1 + 144);
        if (v8)
        {
          free(v8);
        }

        result = v9;
        *(a1 + 144) = v9;
      }
    }
  }

  return result;
}

uint64_t generate_nonce()
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v0 = *MEMORY[0x277D85C28];
  v1 = CCRandomCopyBytes();
  result = 0;
  if (!v1)
  {
    if (rk_hex_encode(v5, 8, &v4) >= 0)
    {
      result = v4;
    }

    else
    {
      result = 0;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t heim_digest_parse_challenge(uint64_t a1, const char *a2)
{
  v2 = a2;
  v14 = 0;
  if (!strncasecmp("Digest ", a2, 7uLL))
  {
    v2 += 6;
    do
    {
      v4 = *++v2;
    }

    while (v4 == 32);
    *a1 |= 8u;
  }

  v5 = parse_values(v2, &v14);
  if (v5)
  {
    goto LABEL_18;
  }

  v6 = values_find(&v14, "nonce");
  *(a1 + 24) = v6;
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = values_find(&v14, "realm");
  *(a1 + 32) = v7;
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = values_find(&v14, "algorithm");
  *(a1 + 128) = v8;
  if (v8)
  {
    v9 = v8;
    if (strcasecmp(v8, "md5"))
    {
      if (!strcasecmp(v9, "md5-sess"))
      {
        v10 = 12;
        goto LABEL_13;
      }

LABEL_17:
      v5 = 1;
LABEL_18:
      free_values(v14);
      clear_context();
      return v5;
    }
  }

  v10 = 2;
LABEL_13:
  v11 = values_find(&v14, "qop");
  *(a1 + 40) = v11;
  if (!v11)
  {
    v10 = 1;
  }

  *(a1 + 64) = values_find(&v14, "opaque");
  v12 = *(a1 + 4);
  if (v12 && (v12 & v10) == 0)
  {
    goto LABEL_17;
  }

  if (!v12)
  {
    *(a1 + 4) = v10;
  }

  free_values(v14);
  return 0;
}

uint64_t parse_values(const char *a1, void ***a2)
{
  *a2 = 0;
  v3 = strdup(a1);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  v5 = strlen(v3);
  v6 = v4;
  while (v6 - v4 < v5)
  {
    v7 = strspn(v6, " \t\n\r,");
    v8 = &v6[v7];
    if (!v6[v7])
    {
      break;
    }

    v9 = strcspn(&v6[v7], " \t\n\r=");
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = v9;
    v11 = &v8[v9];
    if (!v8[v9])
    {
      goto LABEL_26;
    }

    v12 = malloc_type_malloc(0x18uLL, 0x30040254F79A5uLL);
    if (!v12)
    {
      goto LABEL_31;
    }

    v13 = v12;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = *a2;
    *a2 = v12;
    v14 = malloc_type_malloc(v10 + 1, 0xBF890AA3uLL);
    *v13 = v14;
    if (!v14)
    {
      goto LABEL_31;
    }

    strncpy(v14, v8, v10);
    (*v13)[v10] = 0;
    v15 = &v11[strspn(v11, " \t\n\r")];
    if (*v15 != 61)
    {
      goto LABEL_26;
    }

    v16 = v15 + 1;
    v17 = strspn(v15 + 1, " \t\n\r");
    v18 = &v16[v17];
    if (v16[v17] == 34)
    {
      v19 = v18 + 1;
      while (1)
      {
        v22 = strchr(v18 + 1, 34);
        if (!v22)
        {
          goto LABEL_26;
        }

        v18 = v22;
        if (!*v22)
        {
          goto LABEL_26;
        }

        if (*(v22 - 1) != 92 || *v22 != 34)
        {
          goto LABEL_13;
        }
      }
    }

    if (!v16[v17])
    {
      goto LABEL_26;
    }

    v19 = &v16[v17];
    v18 += strcspn(&v16[v17], " \t\n\r=,");
LABEL_13:
    v20 = malloc_type_malloc(v18 - v19 + 1, 0x332F5230uLL);
    v13[1] = v20;
    if (!v20)
    {
LABEL_31:
      v21 = 12;
      goto LABEL_27;
    }

    strncpy(v20, v19, v18 - v19);
    v13[1][v18 - v19] = 0;
    v21 = *v18;
    if (v21 == 34)
    {
      ++v18;
    }

    else if (!*v18)
    {
      goto LABEL_28;
    }

    v6 = &v18[strspn(v18, " \t\n\r")];
    v21 = *v6;
    if (v21 != 44)
    {
      if (!*v6)
      {
        goto LABEL_28;
      }

LABEL_26:
      v21 = 22;
LABEL_27:
      free_values(*a2);
      *a2 = 0;
      goto LABEL_28;
    }
  }

  v21 = 0;
LABEL_28:
  free(v4);
  return v21;
}

uint64_t values_find(void *a1, char *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = a1;
  if (strcasecmp(a2, *v2))
  {
    while (1)
    {
      v5 = v2;
      v2 = *(v2 + 16);
      if (!v2)
      {
        return 0;
      }

      if (!strcasecmp(a2, *v2))
      {
        v4 = (v5 + 16);
        break;
      }
    }
  }

  *v4 = *(v2 + 16);
  v6 = *(v2 + 8);
  free(*v2);
  free(v2);
  return v6;
}

void free_values(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1[2];
      if (*v1)
      {
        free(*v1);
      }

      v3 = v1[1];
      if (v3)
      {
        free(v3);
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void clear_context(void)
{
  v1 = v0;
  v2 = *(v0 + 8);
  if (v2)
  {
    v3 = strlen(*(v0 + 8));
    bzero(v2, v3);
    free(*(v1 + 8));
    *(v1 + 8) = 0;
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    free(v4);
    *(v1 + 16) = 0;
  }

  *v1 &= 0xFFFFFFF9;
  v5 = *(v1 + 24);
  if (v5)
  {
    free(v5);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    free(v6);
    *(v1 + 32) = 0;
  }

  v7 = *(v1 + 40);
  if (v7)
  {
    free(v7);
    *(v1 + 40) = 0;
  }

  v8 = *(v1 + 48);
  if (v8)
  {
    free(v8);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 56);
  if (v9)
  {
    free(v9);
    *(v1 + 56) = 0;
  }

  v10 = *(v1 + 64);
  if (v10)
  {
    free(v10);
    *(v1 + 64) = 0;
  }

  v11 = *(v1 + 72);
  if (v11)
  {
    free(v11);
    *(v1 + 72) = 0;
  }

  v12 = *(v1 + 80);
  if (v12)
  {
    free(v12);
    *(v1 + 80) = 0;
  }

  v13 = *(v1 + 88);
  if (v13)
  {
    free(v13);
    *(v1 + 88) = 0;
  }

  v14 = *(v1 + 96);
  if (v14)
  {
    free(v14);
    *(v1 + 96) = 0;
  }

  v15 = *(v1 + 104);
  if (v15)
  {
    free(v15);
    *(v1 + 104) = 0;
  }

  v16 = *(v1 + 112);
  if (v16)
  {
    free(v16);
    *(v1 + 112) = 0;
  }

  v17 = *(v1 + 120);
  if (v17)
  {
    free(v17);
    *(v1 + 120) = 0;
  }

  v18 = *(v1 + 128);
  if (v18)
  {
    free(v18);
    *(v1 + 128) = 0;
  }

  v19 = *(v1 + 136);
  if (v19)
  {
    free(v19);
    *(v1 + 136) = 0;
  }

  v20 = *(v1 + 144);
  if (v20)
  {
    free(v20);
    *(v1 + 144) = 0;
  }

  v21 = *(v1 + 152);
  if (v21)
  {
    free(v21);
    *(v1 + 152) = 0;
  }

  v22 = *(v1 + 160);
  if (v22)
  {
    free(v22);
    *(v1 + 160) = 0;
  }
}

uint64_t heim_digest_parse_response(uint64_t a1, const char *a2)
{
  v2 = a2;
  v28 = 0;
  if (!strncasecmp("Digest ", a2, 7uLL))
  {
    v2 += 6;
    do
    {
      v4 = *++v2;
    }

    while (v4 == 32);
    *a1 |= 8u;
  }

  v5 = parse_values(v2, &v28);
  if (v5)
  {
    goto LABEL_24;
  }

  v6 = *(a1 + 4);
  if (!v6)
  {
    goto LABEL_23;
  }

  if (v6 == 8)
  {
    v7 = "digest-uri";
  }

  else
  {
    v7 = "uri";
    if (v6 == 12)
    {
      v8 = values_find(&v28, "uri");
      *(a1 + 88) = v8;
      if (v8)
      {
        *(a1 + 4) = 4;
      }

      else
      {
        v17 = values_find(&v28, "digest-uri");
        *(a1 + 88) = v17;
        *(a1 + 4) = 8;
        if (!v17)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_13;
    }
  }

  v9 = values_find(&v28, v7);
  *(a1 + 88) = v9;
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_13:
  v10 = values_find(&v28, "username");
  *(a1 + 72) = v10;
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = values_find(&v28, "realm");
  *(a1 + 96) = v11;
  if (v11)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      if (strcmp(v11, v12))
      {
        goto LABEL_23;
      }
    }
  }

  v13 = values_find(&v28, "response");
  *(a1 + 80) = v13;
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = values_find(&v28, "nonce");
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  v16 = strcmp(v14, *(a1 + 24));
  free(v15);
  if (v16)
  {
    goto LABEL_23;
  }

  if (*(a1 + 4) == 1)
  {
    goto LABEL_21;
  }

  v19 = values_find(&v28, "qop");
  *(a1 + 112) = v19;
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = *(a1 + 40);
  if (!v20)
  {
LABEL_36:
    v26 = values_find(&v28, "nc");
    *(a1 + 120) = v26;
    if (!v26)
    {
      goto LABEL_23;
    }

    v27 = values_find(&v28, "cnonce");
    *(a1 + 104) = v27;
    if (!v27)
    {
      goto LABEL_23;
    }

LABEL_21:
    set_auth_method(a1);
    v5 = 0;
    goto LABEL_24;
  }

  v21 = v19;
  v22 = strlen(v19);
  do
  {
    while (1)
    {
      v23 = v20;
      v24 = strchr(v20, 44);
      if (!v24)
      {
        break;
      }

      v20 = v24 + 1;
      if (v22 == v24 - v23)
      {
        goto LABEL_33;
      }
    }

    if (v22 != strlen(v20))
    {
      goto LABEL_23;
    }

    v20 = 0;
LABEL_33:
    v25 = strncmp(v23, v21, v22);
  }

  while (v20 && v25);
  if (!v25)
  {
    goto LABEL_36;
  }

LABEL_23:
  v5 = 1;
LABEL_24:
  free_values(v28);
  return v5;
}

char *set_auth_method(char *result)
{
  if (!*(result + 6))
  {
    v1 = result;
    if (*(result + 1) == 8)
    {
      v2 = "AUTHENTICATE";
    }

    else
    {
      v2 = "GET";
    }

    result = strdup(v2);
    *(v1 + 6) = result;
  }

  return result;
}

unsigned __int8 *heim_digest_userhash(const char *a1, const char *a2, const char *a3)
{
  memset(&v10, 0, sizeof(v10));
  CC_MD5_Init(&v10);
  v6 = strlen(a1);
  CC_MD5_Update(&v10, a1, v6);
  CC_MD5_Update(&v10, ":", 1u);
  v7 = strlen(a2);
  CC_MD5_Update(&v10, a2, v7);
  CC_MD5_Update(&v10, ":", 1u);
  v8 = strlen(a3);
  CC_MD5_Update(&v10, a3, v8);
  return MD5_Final_hex(&v10);
}

unsigned __int8 *MD5_Final_hex(CC_MD5_CTX *c)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 0;
  CC_MD5_Final(md, c);
  rk_hex_encode(md, 16, &v4);
  *md = 0;
  v6 = 0;
  *&c->A = 0u;
  *&c->Nl = 0u;
  *&c->data[2] = 0u;
  *&c->data[6] = 0u;
  *&c->data[10] = 0u;
  *&c->data[13] = 0u;
  result = v4;
  if (v4)
  {
    rk_strlwr(v4);
    result = v4;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

char *heim_digest_create_response(uint64_t a1, void *a2)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  if (a2)
  {
    *a2 = 0;
  }

  if (!*(a1 + 72) || !*(a1 + 88))
  {
    return 0;
  }

  if (!*(a1 + 96))
  {
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }

    result = strdup(result);
    *(a1 + 96) = result;
    if (!result)
    {
      return result;
    }
  }

  if (*(a1 + 4) != 1)
  {
    if (!*(a1 + 120))
    {
      result = strdup("00000001");
      *(a1 + 120) = result;
      if (!result)
      {
        return result;
      }
    }

    if (!*(a1 + 104))
    {
      result = generate_nonce();
      *(a1 + 104) = result;
      if (!result)
      {
        return result;
      }
    }

    if (!*(a1 + 112))
    {
      v18 = *(a1 + 40);
      if (!v18)
      {
        return 0;
      }

      v19 = strchr(*(a1 + 40), 44);
      if (v19)
      {
        v20 = v19 - v18;
        result = malloc_type_malloc(v20 + 1, 0xED89F9D8uLL);
        *(a1 + 112) = result;
        if (!result)
        {
          return result;
        }

        strlcpy(result, *(a1 + 40), v20 + 1);
      }

      else
      {
        result = strdup(v18);
        *(a1 + 112) = result;
        if (!result)
        {
          return result;
        }
      }
    }
  }

  set_auth_method(a1);
  result = build_A1_hash(a1, 0);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = build_digest(a1, result, *(a1 + 48));
  if (!v6)
  {
    v17 = strlen(v5);
    bzero(v5, v17);
    free(v5);
    return 0;
  }

  v7 = v6;
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = strlen(*(a1 + 80));
    bzero(v8, v9);
    free(*(a1 + 80));
  }

  *(a1 + 80) = v7;
  v10 = *(a1 + 88);
  if (v10)
  {
    if (*(a1 + 4) == 8)
    {
      v11 = "digest-uri";
    }

    else
    {
      v11 = "uri";
    }

    asprintf(&v22, ",%s=%s", v11, v10);
  }

  if (*(a1 + 64))
  {
    asprintf(&v23, ",opaque=%s", *(a1 + 64));
  }

  if (*(a1 + 104))
  {
    asprintf(&v24, ",cnonce=%s", *(a1 + 104));
  }

  v12 = *(a1 + 120);
  if (v12)
  {
    asprintf(&v21, ",nc=%s", *(a1 + 120));
    v12 = v21;
  }

  v13 = v22;
  v14 = "";
  if (!v22)
  {
    v13 = "";
  }

  v15 = v24;
  if (!v24)
  {
    v15 = "";
  }

  if (!v12)
  {
    v12 = "";
  }

  if (v23)
  {
    v14 = v23;
  }

  asprintf((a1 + 152), "username=%s,realm=%s,nonce=%s,qop=%s%s%s%s,response=%s%s", *(a1 + 72), *(a1 + 96), *(a1 + 24), *(a1 + 112), v13, v15, v12, *(a1 + 80), v14);
  build_server_response(a1, v5, a2);
  v16 = strlen(v5);
  bzero(v5, v16);
  free(v5);
  if (v22)
  {
    free(v22);
    v22 = 0;
  }

  if (v23)
  {
    free(v23);
    v23 = 0;
  }

  if (v24)
  {
    free(v24);
    v24 = 0;
  }

  if (v21)
  {
    free(v21);
  }

  return *(a1 + 152);
}

unsigned __int8 *build_A1_hash(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((*a1 & 6) != 0)
  {
    v4 = strdup(*(a1 + 16));
  }

  else
  {
    v10 = *(a1 + 8);
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = *(a1 + 72);
    if (!v11)
    {
      goto LABEL_27;
    }

    v12 = *(a1 + 32);
    if (!v12)
    {
      goto LABEL_27;
    }

    v4 = heim_digest_userhash(v11, v12, v10);
  }

  v5 = v4;
  if (!v4)
  {
    goto LABEL_28;
  }

  v6 = *(a1 + 4);
  v7 = v6 == 8 || v6 == 4;
  if (!v7 || (*a1 & 4) != 0)
  {
    goto LABEL_28;
  }

  if (!*(a1 + 24))
  {
LABEL_26:
    v18 = strlen(v5);
    bzero(v5, v18);
    free(v5);
LABEL_27:
    v5 = 0;
    goto LABEL_28;
  }

  memset(&v21, 0, sizeof(v21));
  CC_MD5_Init(&v21);
  if (a2 || *(a1 + 4) == 8)
  {
    if (rk_hex_decode(v5, data, 0x10uLL) == 16)
    {
      v9 = data;
      v8 = 16;
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  v8 = strlen(v5);
  v9 = v5;
LABEL_20:
  CC_MD5_Update(&v21, v9, v8);
  v13 = strlen(v5);
  bzero(v5, v13);
  free(v5);
  CC_MD5_Update(&v21, ":", 1u);
  v14 = strlen(*(a1 + 24));
  CC_MD5_Update(&v21, *(a1 + 24), v14);
  if (*(a1 + 104))
  {
    CC_MD5_Update(&v21, ":", 1u);
    v15 = strlen(*(a1 + 104));
    CC_MD5_Update(&v21, *(a1 + 104), v15);
  }

  if (*(a1 + 4) == 8 && *(a1 + 136))
  {
    CC_MD5_Update(&v21, ":", 1u);
    v16 = *(a1 + 136);
    v17 = strlen(v16);
    CC_MD5_Update(&v21, v16, v17);
  }

  v5 = MD5_Final_hex(&v21);
LABEL_28:
  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

unsigned __int8 *build_digest(uint64_t a1, const char *a2, const char *a3)
{
  memset(&v20, 0, sizeof(v20));
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  if (a3)
  {
    v6 = strlen(a3);
    CC_MD5_Update(&c, a3, v6);
  }

  CC_MD5_Update(&c, ":", 1u);
  v7 = strlen(*(a1 + 88));
  CC_MD5_Update(&c, *(a1 + 88), v7);
  v8 = *(a1 + 112);
  if (*(a1 + 4) == 8)
  {
    if (!strcasecmp(*(a1 + 112), "auth-int") || !strcasecmp(v8, "auth-conf"))
    {
      CC_MD5_Update(&c, build_A2_hash_conf_zeros, 0x21u);
    }
  }

  else if (v8 && strcasecmp(*(a1 + 112), "auth"))
  {
    return 0;
  }

  v9 = MD5_Final_hex(&c);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  CC_MD5_Init(&v20);
  v11 = strlen(a2);
  CC_MD5_Update(&v20, a2, v11);
  CC_MD5_Update(&v20, ":", 1u);
  v12 = strlen(*(a1 + 24));
  CC_MD5_Update(&v20, *(a1 + 24), v12);
  if (*(a1 + 4) != 1)
  {
    CC_MD5_Update(&v20, ":", 1u);
    v13 = strlen(*(a1 + 120));
    CC_MD5_Update(&v20, *(a1 + 120), v13);
    CC_MD5_Update(&v20, ":", 1u);
    v14 = strlen(*(a1 + 104));
    CC_MD5_Update(&v20, *(a1 + 104), v14);
    CC_MD5_Update(&v20, ":", 1u);
    v15 = *(a1 + 112);
    v16 = strlen(v15);
    CC_MD5_Update(&v20, v15, v16);
  }

  CC_MD5_Update(&v20, ":", 1u);
  v17 = strlen(v10);
  CC_MD5_Update(&v20, v10, v17);
  v18 = MD5_Final_hex(&v20);
  free(v10);
  return v18;
}

void build_server_response(uint64_t a1, const char *a2, void *a3)
{
  v5 = build_digest(a1, a2, 0);
  if (v5)
  {
    v6 = v5;
    v8 = (a1 + 160);
    v7 = *(a1 + 160);
    if (v7)
    {
      free(v7);
      *v8 = 0;
    }

    if ((*a1 & 8) != 0)
    {
      v9 = "Digest ";
    }

    else
    {
      v9 = "";
    }

    asprintf((a1 + 160), "%srspauth=%s", v9, v6);
    free(v6);
    if (a3)
    {
      *a3 = *v8;
    }
  }
}

uint64_t heim_digest_verify(uint64_t a1, char **a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  set_auth_method(a1);
  v4 = build_A1_hash(a1, 0);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v6 = build_digest(a1, v4, *(a1 + 48));
  if (!v6)
  {
LABEL_12:
    v16 = strlen(v5);
    bzero(v5, v16);
    free(v5);
    return 12;
  }

  v7 = v6;
  v8 = strcmp(v6, *(a1 + 80));
  free(v7);
  if (v8)
  {
    v9 = strlen(v5);
    bzero(v5, v9);
    free(v5);
    if (*(a1 + 4) != 4)
    {
      return 22;
    }

    v10 = build_A1_hash(a1, 1);
    if (!v10)
    {
      return 12;
    }

    v5 = v10;
    v11 = build_digest(a1, v10, *(a1 + 48));
    if (v11)
    {
      v12 = v11;
      v13 = strcmp(v11, *(a1 + 80));
      free(v12);
      if (v13)
      {
        v14 = strlen(v5);
        bzero(v5, v14);
        free(v5);
        return 22;
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_14:
  build_server_response(a1, v5, a2);
  v17 = strlen(v5);
  bzero(v5, v17);
  free(v5);
  if (!a2)
  {
    return 0;
  }

  v18 = strdup(*a2);
  result = 0;
  *a2 = v18;
  return result;
}

unsigned __int8 *heim_digest_server_response(void *a1)
{
  if (!a1[3])
  {
    return 0;
  }

  if (!a1[11])
  {
    return 0;
  }

  result = build_A1_hash(a1, 0);
  if (result)
  {
    v3 = result;
    build_server_response(a1, result, 0);
    v4 = strlen(v3);
    bzero(v3, v4);
    free(v3);
    return a1[20];
  }

  return result;
}

void heim_digest_release(void *a1)
{
  clear_context();

  free(a1);
}

uint64_t heim_digest_get_key(uint64_t a1, char *a2)
{
  v4 = 18;
  for (i = &qword_27EDA75C0; strcasecmp(a2, *(i - 1)); i += 2)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  return *(a1 + *i);
}

uint64_t heim_digest_set_key(uint64_t a1, char *__s1, const char *a3)
{
  if (!strcmp(__s1, "password"))
  {
    v15 = *(a1 + 8);
    if (v15)
    {
      free(v15);
      *(a1 + 8) = 0;
    }

    v16 = strdup(a3);
    *(a1 + 8) = v16;
    if (!v16)
    {
      return 12;
    }

    v14 = *a1 & 0xFFFFFFFD;
    goto LABEL_20;
  }

  if (!strcmp(__s1, "userhash") || !strcmp(__s1, "H(A1)"))
  {
    v9 = *(a1 + 8);
    if (v9)
    {
      free(v9);
      *(a1 + 8) = 0;
    }

    if (strlen(a3) != 32)
    {
      return 12;
    }

    v10 = strdup(a3);
    *(a1 + 16) = v10;
    if (!v10)
    {
      return 12;
    }

    v11 = strcmp(__s1, "userhash");
    v12 = *a1 & 0xFFFFFFF9;
    v13 = v12 | 4;
    v14 = v12 | 2;
    if (v11)
    {
      v14 = v13;
    }

LABEL_20:
    *a1 = v14;
    return 0;
  }

  if (strcmp(__s1, "method"))
  {
    v6 = &qword_27EDA75C0;
    v7 = 18;
    while (strcasecmp(__s1, *(v6 - 1)))
    {
      v6 += 2;
      if (!--v7)
      {
        return 2;
      }
    }

    v19 = *v6;
    v20 = *(a1 + *v6);
    if (v20)
    {
      free(v20);
      *(a1 + v19) = 0;
    }

    v21 = strdup(a3);
    *(a1 + v19) = v21;
    if (!v21)
    {
      return 12;
    }

    return 0;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    free(v17);
    *(a1 + 48) = 0;
  }

  v18 = strdup(a3);
  *(a1 + 48) = v18;
  if (v18)
  {
    return 0;
  }

  return 12;
}

uint64_t _krb5_put_int(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 - 1 >= 0)
  {
    v3 = a3;
    do
    {
      *(a1 - 1 + v3) = a2;
      a2 >>= 8;
      --v3;
    }

    while (v3);
  }

  return a3;
}

uint64_t _krb5_get_int(unsigned __int8 *a1, unint64_t *a2, uint64_t a3)
{
  v3 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      v5 = *a1++;
      v3 = v5 | (v3 << 8);
      --v4;
    }

    while (v4);
  }

  *a2 = v3;
  return a3;
}

void *initialize_error_table_r(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v7 = result;
  while (1)
  {
    v8 = *v7;
    if (!*v7)
    {
      break;
    }

    v7 = *v7;
    if (*v8[1] == a2)
    {
      return result;
    }
  }

  result = malloc_type_malloc(0x28uLL, 0x10E00406AA87185uLL);
  if (result)
  {
    result[2] = a2;
    *(result + 8) = a3;
    result[3] = a4;
    *result = 0;
    result[1] = result + 2;
    *v7 = result;
  }

  return result;
}

double hc_EVP_CIPHER_CTX_init(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t hc_EVP_CIPHER_CTX_cleanup(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(v1 + 48);
    v4 = a1[15];
    v5 = *(v1 + 40);
    if (v5)
    {
      v5(a1);
    }

    if (v4)
    {
      bzero(v4, v3);
      free(v4);
    }

    a1[20] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return 1;
}

uint64_t hc_EVP_CipherInit_ex(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, void *__src, uint64_t a6)
{
  *(a1 + 20) = 0;
  if (a6 == -1)
  {
    v10 = *(a1 + 16);
  }

  else
  {
    v10 = a6;
    *(a1 + 16) = a6 != 0;
  }

  v11 = *a1;
  if (a2)
  {
    if (v11 != a2)
    {
      hc_EVP_CIPHER_CTX_cleanup(a1);
      *a1 = a2;
      *(a1 + 104) = a2[2];
      v12 = malloc_type_calloc(1uLL, a2[12], 0xA7CC8DFCuLL);
      *(a1 + 120) = v12;
      if (!v12 && a2[12])
      {
        return 0;
      }

      *(a1 + 132) = a2[1] - 1;
      v11 = *a1;
    }
  }

  else if (!v11)
  {
    return 0;
  }

  v13 = *(v11 + 16) & 7;
  if (v13)
  {
    v14 = v13 == 4;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    if (v13 == 2)
    {
      v15 = *(v11 + 12);
      if (v15 >= 0x11)
      {
        hc_EVP_CipherInit_ex_cold_1();
      }

      if (__src)
      {
        memcpy((a1 + 24), __src, v15);
        v15 = *(v11 + 12);
      }

      v16 = (a1 + 40);
      v17 = (a1 + 24);
      goto LABEL_21;
    }

    return 0;
  }

  if (!__src)
  {
    goto LABEL_22;
  }

  v15 = *(v11 + 12);
  v16 = (a1 + 40);
  v17 = __src;
LABEL_21:
  memcpy(v16, v17, v15);
LABEL_22:
  if (a4 || (*(v11 + 16) & 0x20) != 0)
  {
    (*(v11 + 24))(a1, a4, __src, v10);
  }

  return 1;
}

void *hc_EVP_rc4()
{
  hc_hcrypto_validate();

  return hc_EVP_cc_rc4();
}

void *hc_EVP_des_cbc()
{
  hc_hcrypto_validate();

  return hc_EVP_cc_des_cbc();
}

BOOL cc_do_cipher(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  v6 = *(a1 + 120);
  dataOutMoved = 0;
  v7 = __n;
  memcpy(__dst, __src, __n);
  return !CCCryptorUpdate(*v6, __src, v7, __dst, v7, &dataOutMoved) && dataOutMoved == v7;
}

uint64_t cc_cleanup(uint64_t a1)
{
  v1 = **(a1 + 120);
  if (v1)
  {
    CCCryptorRelease(v1);
  }

  return 1;
}

BOOL init_cc_key(int a1, CCAlgorithm alg, CCOptions options, void *key, size_t keyLength, void *iv, CCCryptorRef *cryptorRef)
{
  v13 = a1 == 0;
  v14 = *cryptorRef;
  if (*cryptorRef)
  {
    if (!key && iv)
    {
      CCCryptorReset(v14, iv);
      return 1;
    }

    CCCryptorRelease(v14);
  }

  return CCCryptorCreate(v13, alg, options, key, keyLength, iv, cryptorRef) == 0;
}

uint64_t encode_hex(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v6 = a2;
  v8 = malloc_type_malloc((2 * a2) | 1, 0x7F214C42uLL);
  if (!v8)
  {
LABEL_8:
    v9 = -1;
    goto LABEL_11;
  }

  if (v6)
  {
    v9 = 2 * v6;
    v10 = v8 + 1;
    do
    {
      *(v10 - 1) = *(a3 + (*a1 >> 4));
      v11 = *a1++;
      *v10 = *(a3 + (v11 & 0xF));
      v10 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v9 = 0;
  }

  v8[v9] = 0;
LABEL_11:
  *a4 = v8;
  return v9;
}

uint64_t rk_hex_decode(const char *a1, _BYTE *a2, size_t a3)
{
  v5 = a1;
  v6 = strlen(a1);
  v7 = v6 & 1;
  if (v7 + (v6 >> 1) > a3)
  {
    return -1;
  }

  v9 = v6;
  if (v6)
  {
    v10 = *v5++;
    *a2++ = pos(v10);
  }

  if (v9 >= 2)
  {
    v11 = v9 >> 1;
    v12 = v5 + 1;
    v13 = v11;
    do
    {
      v14 = pos(*(v12 - 1));
      *a2++ = pos(*v12) | (16 * v14);
      v12 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
    v11 = 0;
  }

  return v11 + v7;
}

uint64_t pos(unsigned __int8 a1)
{
  v1 = __toupper(a1);
  result = 0;
  LOBYTE(v3) = 48;
  while (v1 != v3)
  {
    v3 = hexchar_upper[++result];
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t unparse_something(uint64_t a1, uint64_t a2, char *__str, size_t __size, uint64_t (*a5)(char *, size_t, uint64_t, void, uint64_t), uint64_t (*a6)(uint64_t), const char *a7)
{
  v7 = __size;
  v8 = __str;
  if (!a1)
  {
    return snprintf(__str, __size, "%s", a7);
  }

  v9 = a1;
  if (a1 < 1)
  {
    return 0;
  }

  v13 = 0;
  while (*a2)
  {
    v14 = *(a2 + 8);
    if (v14 <= v9)
    {
      v15 = v9 / v14;
      v9 = a6(v9);
      v16 = a5(v8, v7, v15, *a2, v9);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      v17 = v16 <= v7;
      if (v16 <= v7)
      {
        v7 -= v16;
      }

      else
      {
        v7 = 0;
      }

      if (v17)
      {
        v8 += v16;
      }

      else
      {
        v8 = 0;
      }

      v13 = (v16 + v13);
    }

    a2 += 16;
    if (v9 <= 0)
    {
      return v13;
    }
  }

  return v13;
}

uint64_t print_flag(char *a1, size_t a2, uint64_t a3, const char *a4, int a5)
{
  v5 = "";
  if (a5 > 0)
  {
    v5 = ", ";
  }

  return snprintf(a1, a2, "%s%s", a4, v5);
}

unsigned __int8 *rk_strlwr(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1 + 1;
    do
    {
      *(v3 - 1) = __tolower(v2);
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  return a1;
}

BOOL ct_memcmp(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v5 = *a1++;
    v4 = v5;
    v6 = *a2++;
    v3 |= v6 ^ v4;
    --a3;
  }

  while (a3);
  return v3 != 0;
}

uint64_t utf8toutf32(char **a1, int *a2)
{
  v2 = *a1;
  v3 = **a1;
  if ((**a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = 3325697542;
  if ((v3 & 0xE0) == 0xC0)
  {
    v7 = *++v2;
    v6 = v7;
    if ((v7 & 0xC0) != 0x80)
    {
      return v4;
    }

    v3 = v6 & 0x3F | ((v3 & 0x1F) << 6);
    goto LABEL_2;
  }

  if ((v3 & 0xF0) == 0xE0)
  {
    v8 = v2[1];
    if ((v8 & 0xC0) == 0x80)
    {
      v10 = v2[2];
      v2 += 2;
      v9 = v10;
      if ((v10 & 0xC0) == 0x80)
      {
        v3 = ((v3 & 0xF) << 12) | ((v8 & 0x3F) << 6) | v9 & 0x3F;
LABEL_2:
        v4 = 0;
        *a2 = v3;
        *a1 = v2;
      }
    }
  }

  else if ((v3 & 0xF8) == 0xF0)
  {
    v11 = v2[1];
    if ((v11 & 0xC0) == 0x80)
    {
      v12 = v2[2];
      if ((v12 & 0xC0) == 0x80)
      {
        v14 = v2[3];
        v2 += 3;
        v13 = v14;
        if ((v14 & 0xC0) == 0x80)
        {
          v3 = ((v3 & 7) << 18) | ((v11 & 0x3F) << 12) | ((v12 & 0x3F) << 6) | v13 & 0x3F;
          goto LABEL_2;
        }
      }
    }
  }

  return v4;
}

uint64_t wind_ucs2read(unsigned __int16 *a1, uint64_t a2, unsigned int *a3, _WORD *a4, uint64_t *a5)
{
  if (!a2)
  {
    v15 = 0;
LABEL_30:
    result = 0;
    *a5 = v15;
    return result;
  }

  result = 3325697538;
  if (a2)
  {
    return 3325697540;
  }

  v7 = *a3;
  v8 = *a3 & 1;
  v9 = *a5;
  v10 = *a5;
  if ((*a3 & 4) == 0)
  {
    goto LABEL_21;
  }

  v11 = __rev16(*a1);
  if (v11 == 65279 || v11 == 65534)
  {
    v8 = v11 == 65534;
    v13 = v7 & 0xFFFFFFF8;
    if (v11 == 65534)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    *a3 = v14 | v13;
    a2 -= 2;
    if (a2)
    {
      ++a1;
      goto LABEL_21;
    }

LABEL_29:
    v15 = v9 - v10;
    goto LABEL_30;
  }

  if ((v7 & 3) == 0)
  {
    return 3325697545;
  }

  v16 = v7 & 0xFFFFFFF8;
  if (v8)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  *a3 = v17 | v16;
LABEL_21:
  while (v10)
  {
    if (v8)
    {
      v18 = a1;
    }

    else
    {
      v18 = a1 + 1;
    }

    if (v8)
    {
      v19 = a1 + 1;
    }

    else
    {
      v19 = a1;
    }

    *a4++ = *v18 | (*v19 << 8);
    ++a1;
    --v10;
    a2 -= 2;
    if (!a2)
    {
      goto LABEL_29;
    }
  }

  return result;
}

uint64_t wind_utf8ucs2(char *a1, uint64_t a2, unint64_t *a3)
{
  v11 = a1;
  if (*a1)
  {
    v5 = 0;
    v6 = 3325697538;
    while (1)
    {
      v10 = 0;
      v7 = utf8toutf32(&v11, &v10);
      if (v7)
      {
        return v7;
      }

      if (HIWORD(v10))
      {
        return 3325697546;
      }

      if (a2)
      {
        if (v5 >= *a3)
        {
          return v6;
        }

        *(a2 + 2 * v5) = v10;
      }

      ++v5;
      if (!*++v11)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v5 = 0;
LABEL_11:
    v6 = 0;
    *a3 = v5;
  }

  return v6;
}

uint64_t wind_ucs2utf8(unsigned __int16 *a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  for (i = 0; a2; --a2)
  {
    v6 = *a1++;
    v5 = v6;
    if (v6 < 0x800)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    if (v5 < 0x80)
    {
      v7 = 1;
    }

    i += v7;
    if (a3)
    {
      if (i >= *a4)
      {
        return 3325697538;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
          v8 = v5 & 0x3F | 0x80;
          LOBYTE(v5) = 0;
          a3[2] = v8;
        }

        a3[1] = v5 & 0x3F | 0x80;
        LOBYTE(v5) = v5 << 6;
      }

      *a3 = first_char[v7 - 1] | v5;
      a3 += v7;
    }
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  if (i < *a4)
  {
    *a3 = 0;
LABEL_18:
    result = 0;
    *a4 = i;
    return result;
  }

  return 3325697538;
}