uint64_t sub_252253880(_krb5_context *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5)
{
  v10 = *(a2 + 40);
  v11 = sub_252252624(a1, a3);
  if (v11)
  {
    return v11;
  }

  v12 = *(a2 + 16);
  v13 = 8 * v12;
  v14 = *(v10 + 2) + 8 * v12 - 1;
  v21 = v14 / (8 * v12);
  v15 = malloc_type_malloc(v21 * v12, 0x87DC00B9uLL);
  if (!v15)
  {
    v11 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    goto LABEL_6;
  }

  v16 = sub_25226E0FC(a4, a5, v15, *(a2 + 16));
  if (v16)
  {
    v11 = v16;
    krb5_set_error_message(a1, v16, "malloc: out of memory");
LABEL_6:
    v17 = v21;
    goto LABEL_7;
  }

  v17 = v21;
  if (v13 <= v14)
  {
    v19 = 0;
    do
    {
      if (v19)
      {
        memcpy(&v15[*(a2 + 16) * v19], &v15[*(a2 + 16) * (v19 - 1)], *(a2 + 16));
      }

      (*(a2 + 72))(a1, a3, &v15[*(a2 + 16) * v19++], *(a2 + 16), 1, 0, 0);
    }

    while (v19 < v21);
  }

  v20 = *v10;
  if ((*v10 - 17) < 2)
  {
    memcpy(*(*a3 + 16), v15, *(*a3 + 8));
  }

  else
  {
    if (v20 != 16 && v20 != 7)
    {
      v11 = 2529639090;
      krb5_set_error_message(a1, -1765328206, "derive_key() called with unknown keytype (%d)", *v10);
      goto LABEL_7;
    }

    sub_2522845C4(a1, *a3, v15, *(a2 + 16) * v21);
  }

  v11 = 0;
LABEL_7:
  if (*(a3 + 8))
  {
    sub_252253A7C(a1, a3, a2);
    *(a3 + 8) = 0;
  }

  if (v15)
  {
    bzero(v15, *(a2 + 16) * v17);
    free(v15);
  }

  return v11;
}

void sub_252253A7C(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) + 72);
  if (v5)
  {
    v5(a1, a2);
  }

  bzero(*(*(a2 + 8) + 8), **(a2 + 8));
  v6 = *(a2 + 8);

  krb5_free_data(a1, v6);
}

uint64_t krb5_derive_key(krb5_context a1, const krb5_keyblock *a2, krb5_keyblock *a3, const void *a4, size_t a5, krb5_keyblock **a6)
{
  *a6 = 0;
  v7 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
LABEL_5:

    return sub_252250F9C(a1, a3);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v11 = &off_27F4D6670;
    while (1)
    {
      v12 = *v11;
      if (**v11 == a3)
      {
        break;
      }

      ++v11;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    v14 = krb5_copy_keyblock(a1, a2, &v15);
    if (!v14)
    {
      v16 = 0;
      v14 = sub_252253880(a1, v12, &v15, a4, a5);
      if (!v14)
      {
        v14 = krb5_copy_keyblock(a1, v15, a6);
      }

      sub_252253BF0(a1, &v15, v12);
    }

    return v14;
  }
}

void sub_252253BF0(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  krb5_free_keyblock(a1, *a2);
  if (*(a2 + 8))
  {
    sub_252253A7C(a1, a2, a3);
    *(a2 + 8) = 0;
  }
}

uint64_t krb5_crypto_init(_krb5_context *a1, const krb5_keyblock *a2, char *magic, krb5_keyblock ***a4)
{
  v8 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A0040CBDFC28DuLL);
  *a4 = v8;
  if (!v8)
  {
    v14 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v14;
  }

  if (!magic)
  {
    magic = a2->magic;
  }

  v9 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
LABEL_8:
    v11 = 0;
  }

  else
  {
    v10 = &off_27F4D6670;
    while (1)
    {
      v11 = *v10;
      if ((*v10)->magic == magic)
      {
        break;
      }

      ++v10;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }
  }

  *v8 = v11;
  v12 = *a4;
  v13 = **a4;
  if (v13 && (v13[2].contents & 0x40) == 0)
  {
    if (*(v13[1].contents + 3) == *&a2->length)
    {
      v14 = krb5_copy_keyblock(a1, a2, v12 + 1);
      v15 = *a4;
      if (v14)
      {
        free(v15);
        *a4 = 0;
      }

      else
      {
        v15[2] = 0;
        v17 = *a4;
        *(v17 + 6) = 0;
        v17[4] = 0;
        pthread_mutex_init((*a4 + 5), 0);
      }
    }

    else
    {
      v14 = 2529639101;
      free(v12);
      *a4 = 0;
      krb5_set_error_message(a1, -1765328195, "encryption key has bad length");
    }

    return v14;
  }

  free(v12);
  *a4 = 0;

  return sub_252250F9C(a1, magic);
}

uint64_t krb5_crypto_destroy(_krb5_context *a1, uint64_t a2)
{
  if (a2)
  {
    pthread_mutex_destroy((a2 + 40));
    if (*(a2 + 24) >= 1)
    {
      v4 = 0;
      do
      {
        v5 = *(*(a2 + 32) + 8 * v4);
        sub_252253BF0(a1, v5 + 8, *a2);
        free(v5);
        ++v4;
      }

      while (v4 < *(a2 + 24));
    }

    free(*(a2 + 32));
    sub_252253BF0(a1, a2 + 8, *a2);
    free(a2);
  }

  return 0;
}

uint64_t krb5_enctype_disable(_krb5_context *a1, int a2)
{
  v2 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
LABEL_5:
    v4 = 2529639062;
    if (a1)
    {
      krb5_set_error_message(a1, -1765328234, "encryption type %d not supported", a2);
    }
  }

  else
  {
    v3 = &off_27F4D6670;
    while (**v3 != a2)
    {
      ++v3;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    v4 = 0;
    *(*v3 + 16) |= 0x40u;
  }

  return v4;
}

uint64_t krb5_enctype_enable(_krb5_context *a1, int a2)
{
  v2 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
LABEL_5:
    v4 = 2529639062;
    if (a1)
    {
      krb5_set_error_message(a1, -1765328234, "encryption type %d not supported", a2);
    }
  }

  else
  {
    v3 = &off_27F4D6670;
    while (**v3 != a2)
    {
      ++v3;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    v4 = 0;
    *(*v3 + 16) &= ~0x40u;
  }

  return v4;
}

uint64_t sub_252253FEC(uint64_t a1, int a2)
{
  v2 = dword_27F4D66A0;
  if (dword_27F4D66A0 >= 1)
  {
    v3 = &off_27F4D6670;
    do
    {
      v4 = *(*v3 + 16);
      if ((v4 & 0x80) != 0)
      {
        *(*v3 + 16) = v4 & 0xFFFFFFBF | ((a2 == 0) << 6);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t krb5_enctype_warning(uint64_t a1, int a2)
{
  v2 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
    return 1;
  }

  for (i = &off_27F4D6670; **i != a2; ++i)
  {
    if (!--v2)
    {
      return 1;
    }
  }

  return (*(*i + 16) >> 8) & 1;
}

unint64_t krb5_get_wrapped_length(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(*a2 + 24);
  if ((*(*a2 + 64) & 4) == 0)
  {
    return (v4 + a3 + v3[4] + *(v3[6] + 24) - 1) / v4 * v4;
  }

  v6 = v3[7];
  if (!v6)
  {
    v6 = v3[6];
  }

  return *(v6 + 24) + (v4 + a3 + v3[4] - 1) / v4 * v4;
}

uint64_t krb5_random_to_key(krb5_context a1, int a2, const void *a3, unint64_t a4, uint64_t a5)
{
  v7 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
LABEL_5:
    v13 = 2529639062;
    krb5_set_error_message(a1, -1765328234, "encryption type %d not supported");
  }

  else
  {
    v11 = &off_27F4D6670;
    while (1)
    {
      v12 = *v11;
      if (**v11 == a2)
      {
        break;
      }

      ++v11;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v12 + 5);
    if (a4 >= (*(v15 + 16) + 7) >> 3)
    {
      v13 = krb5_data_alloc((a5 + 8), *(v15 + 24));
      if (!v13)
      {
        *a5 = a2;
        v16 = *(v12 + 5);
        v17 = *(v16 + 64);
        if (v17)
        {
          v17(a1, a5, a3, a4);
        }

        else
        {
          memcpy(*(a5 + 16), a3, *(v16 + 24));
        }

        return 0;
      }
    }

    else
    {
      v13 = 2529639062;
      v18 = *(v12 + 1);
      v19 = *(v15 + 24);
      krb5_set_error_message(a1, -1765328234, "encryption key %s needs %d bytes of random to make an encryption key out of it");
    }
  }

  return v13;
}

uint64_t krb5_crypto_prf_length(_krb5_context *a1, int a2, void *a3)
{
  v3 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
LABEL_5:
    v5 = 2529639062;
    krb5_set_error_message(a1, -1765328234, "encryption type %d not supported");
  }

  else
  {
    v4 = &off_27F4D6670;
    while (**v4 != a2)
    {
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v7 = *(*v4 + 10);
    if (v7)
    {
      v5 = 0;
      *a3 = v7;
    }

    else
    {
      v5 = 2314790690;
      krb5_set_error_message(a1, -1980176606, "encryption type %d not supported");
    }
  }

  return v5;
}

uint64_t krb5_crypto_prf(_krb5_context *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = *a2;
  krb5_data_zero(a4);
  v9 = *(v8 + 88);
  if (v9)
  {

    return v9(a1, a2, a3, a4);
  }

  else
  {
    krb5_set_error_message(a1, -1980176606, "kerberos prf for %s not supported", *(v8 + 8));
    return 2314790690;
  }
}

uint64_t krb5_crypto_fx_cf2(_krb5_context *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, void *a7)
{
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  a7[1] = 0;
  a7[2] = 0;
  *a7 = 0;
  krb5_data_zero(&v25);
  krb5_data_zero(&v23);
  v14 = krb5_enctype_keysize(a1, a6, &v22);
  if (!v14)
  {
    v15 = v22;
    v16 = sub_2522544C4(a1, a2, a4, v22, &v25);
    if (!v16)
    {
      v16 = sub_2522544C4(a1, a3, a5, v15, &v23);
      if (!v16)
      {
        v17 = v26;
        if (v15)
        {
          v18 = v24;
          v19 = v15;
          do
          {
            v20 = *v18++;
            *v17++ ^= v20;
            --v19;
          }

          while (v19);
          v17 = v26;
        }

        v16 = krb5_random_to_key(a1, a6, v17, v15, a7);
      }
    }

    v14 = v16;
    krb5_data_free(&v25);
    krb5_data_free(&v23);
  }

  return v14;
}

uint64_t sub_2522544C4(_krb5_context *a1, uint64_t *a2, uint64_t a3, size_t a4, size_t *a5)
{
  v19 = 0;
  v20 = 0;
  krb5_data_zero(&v19);
  krb5_data_zero(a5);
  krb5_clear_error_message(a1);
  v10 = krb5_data_alloc(a5, a4);
  if (!v10)
  {
    v10 = krb5_data_alloc(&v19, *a3 + 1);
    if (!v10)
    {
      krb5_clear_error_message(a1);
      memcpy(v20 + 1, *(a3 + 8), *a3);
      if (!a4)
      {
LABEL_12:
        krb5_data_free(&v19);
        return 0;
      }

      v13 = a5[1];
      v14 = 1;
      while (1)
      {
        v17 = 0;
        v18 = 0;
        *v20 = v14;
        v10 = krb5_crypto_prf(a1, a2, &v19, &v17);
        if (v10)
        {
          break;
        }

        v15 = v17;
        v16 = a4 - v17;
        if (a4 <= v17)
        {
          memcpy(v13, v18, a4);
          krb5_data_free(&v17);
          goto LABEL_12;
        }

        ++v14;
        memcpy(v13, v18, v17);
        v13 += v15;
        krb5_data_free(&v17);
        a4 = v16;
        if (!v16)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v11 = v10;
  krb5_data_free(&v19);
  krb5_data_free(a5);
  return v11;
}

void _krb5_debug_keyblock(uint64_t a1, int a2, const char *a3, uint64_t a4)
{
  if (_krb5_have_debug(a1))
  {
    __s = 0;
    if (*(a4 + 8) >= 4uLL)
    {
      v8 = 4;
    }

    else
    {
      v8 = *(a4 + 8);
    }

    if ((rk_hex_encode(*(a4 + 16), v8, &__s) & 0x8000000000000000) == 0)
    {
      sub_25226B748(a1, a2, "%s %d/%s", a3, *a4, __s);
      v9 = strlen(__s);
      bzero(__s, v9);
      free(__s);
    }
  }
}

uint64_t sub_2522546B4(_krb5_context *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5)
{
  pthread_mutex_lock((a2 + 40));
  v10 = *(a4 + 32);
  if ((v10 & 4) == 0)
  {
    if ((v10 & 8) != 0)
    {
      v14 = sub_2522547D4(a2, 255);
      *a5 = v14;
      if (!v14)
      {
        v12 = 12;
        krb5_set_error_message(a1, 12, "malloc: out of memory");
        goto LABEL_7;
      }

      v12 = krb5_copy_keyblock(a1, *(a2 + 8), v14);
      if (v12)
      {
LABEL_7:
        pthread_mutex_unlock((a2 + 40));
        return v12;
      }

      v11 = *a5;
      v15 = **a5;
      if (*(v15 + 8))
      {
        v16 = 0;
        do
        {
          *(*(v15 + 16) + v16++) ^= 0xF0u;
          v11 = *a5;
          v15 = **a5;
        }

        while (v16 < *(v15 + 8));
      }
    }

    else
    {
      v11 = (a2 + 8);
      *a5 = a2 + 8;
    }

LABEL_6:
    v12 = sub_252252624(a1, v11);
    goto LABEL_7;
  }

  v12 = sub_252252528(a1, a2, a3, a5);
  if (!v12)
  {
    v11 = *a5;
    goto LABEL_6;
  }

  return v12;
}

char *sub_2522547D4(uint64_t a1, int a2)
{
  v4 = malloc_type_realloc(*(a1 + 32), 8 * *(a1 + 24) + 8, 0x2004093837F09uLL);
  if (!v4)
  {
    return 0;
  }

  *(a1 + 32) = v4;
  v5 = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
  v6 = *(a1 + 24);
  *(*(a1 + 32) + 8 * v6) = v5;
  if (!v5)
  {
    return 0;
  }

  *(a1 + 24) = v6 + 1;
  *(v5 + 12) = 0;
  *(v5 + 4) = 0;
  *(v5 + 5) = 0;
  v7 = v5 + 8;
  *v5 = a2;
  return v7;
}

void *krb5_data_zero(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
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

void krb5_free_data(krb5_context a1, krb5_data *a2)
{
  data = a2->data;
  if (data)
  {
    free(data);
  }

  free(a2);
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

uint64_t krb5_data_realloc(uint64_t a1, size_t a2)
{
  v4 = malloc_type_realloc(*(a1 + 8), a2, 0xC3DE5CEFuLL);
  v5 = v4;
  if (a2 && !v4)
  {
    return 12;
  }

  result = 0;
  *a1 = a2;
  *(a1 + 8) = v5;
  return result;
}

uint64_t krb5_data_copy(void *a1, const void *a2, size_t size)
{
  if (!size)
  {
    a1[1] = 0;
    goto LABEL_5;
  }

  v6 = malloc_type_calloc(1uLL, size, 0x61CD87FCuLL);
  a1[1] = v6;
  if (v6)
  {
    *a1 = size;
    memmove(v6, a2, size);
LABEL_5:
    result = 0;
    *a1 = size;
    return result;
  }

  return 12;
}

krb5_error_code krb5_copy_data(krb5_context a1, const krb5_data *a2, krb5_data **a3)
{
  v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  *a3 = v5;
  if (v5)
  {
    v6 = der_copy_octet_string();
    if (v6)
    {
      krb5_clear_error_message(a1);
      free(*a3);
      *a3 = 0;
    }
  }

  else
  {
    v6 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v6;
}

uint64_t krb5_data_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    return memcmp(*(a1 + 8), *(a2 + 8), v2);
  }

  else
  {
    return v2 - *a2;
  }
}

uint64_t sub_252254AC4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13[0] = 0;
  v13[1] = &a9;
  v10 = vasprintf(v13, a2, &a9);
  v11 = v13[0];
  result = 12;
  if (v13[0])
  {
    if ((v10 & 0x80000000) == 0)
    {
      result = 0;
      *a1 = v10;
      a1[1] = v11;
    }
  }

  return result;
}

uint64_t krb5_data_ct_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    return ct_memcmp(*(a1 + 8), *(a2 + 8), v2);
  }

  else
  {
    return v2 - *a2;
  }
}

char *krb5_get_error_string(uint64_t a1)
{
  pthread_mutex_lock(*(a1 + 328));
  v2 = *(a1 + 280);
  if (v2)
  {
    v3 = strdup(v2);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock(*(a1 + 328));
  return v3;
}

uint64_t _krb5_xcc_get_initial_ticket(_krb5_context *a1, uint64_t a2, int a3, const krb5_principal_data *a4, char *__s)
{
  keys[7] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 16);
  v9 = strlen(__s);
  v10 = CFDataCreateWithBytesNoCopy(0, __s, v9, *MEMORY[0x277CBED00]);
  if (v10)
  {
    v11 = v10;
    if (a4)
    {
      a4 = sub_252254DD0(a1, a4);
    }

    keys[0] = @"kHEIMObjectType";
    keys[1] = @"kHEIMAttrType";
    keys[2] = @"kHEIMAttrParentCredential";
    keys[3] = @"kHEIMAttrClientName";
    keys[4] = @"kHEIMAttrData";
    keys[5] = @"kHEIMAttrCredential";
    keys[6] = @"kHEIMAttrServerName";
    values[0] = @"kHEIMObjectKerberosAcquireCred";
    values[1] = @"kHEIMTypeKerberosAcquireCred";
    values[2] = *v8;
    values[3] = *(v8 + 16);
    values[4] = v11;
    values[5] = *MEMORY[0x277CBED28];
    values[6] = a4;
    if (a4)
    {
      v12 = 7;
    }

    else
    {
      v12 = 6;
    }

    v13 = CFDictionaryCreate(0, keys, values, v12, 0, 0);
    if (!v13)
    {
      sub_2522A7C20(0, v14, v15, v16, v17, v18, v19, v20);
    }

    v21 = v13;
    v22 = HeimCredCreate(v13, 0);
    if (v22)
    {
      CFRelease(v22);
      v23 = 0;
      if (!a4)
      {
LABEL_11:
        CFRelease(v21);
        CFRelease(v11);
        v24 = *MEMORY[0x277D85DE8];
        return v23;
      }
    }

    else
    {
      sub_25226B748(a1, 5, "failed to add initial ticket request to %s\n", *(v8 + 32));
      v27 = *(v8 + 32);
      v23 = 22;
      krb5_set_error_message(a1, 22, "failed to store initial ticket request to %s", v27);
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    CFRelease(a4);
    goto LABEL_11;
  }

  v26 = *MEMORY[0x277D85DE8];

  return krb5_enomem(a1);
}

CFStringRef sub_252254DD0(_krb5_context *a1, const krb5_principal_data *a2)
{
  cStr = 0;
  v2 = 0;
  if (!krb5_unparse_name(a1, a2, &cStr))
  {
    v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    krb5_xfree(cStr);
  }

  return v2;
}

uint64_t sub_252254E38(_krb5_context *a1, uint64_t a2, char *in)
{
  memset(uu, 0, sizeof(uu));
  if (uuid_parse(in, uu))
  {
    v5 = 2529639054;
    krb5_set_error_message(a1, -1765328242, "failed to parse uuid: %s");
  }

  else
  {
    v7 = CFUUIDCreateFromUUIDBytes(0, *uu);
    if (v7)
    {
      v8 = v7;
      v9 = sub_2522560B4(a1, a2);
      if (v9)
      {
        v5 = v9;
        CFRelease(v8);
      }

      else
      {
        v10 = *(*a2 + 16);
        *v10 = v8;
        sub_252256134(v10);
        sub_252256198(a1, v10);
        return 0;
      }
    }

    else
    {
      v5 = 2529639054;
      krb5_set_error_message(a1, -1765328242, "failed to create uuid from: %s");
    }
  }

  return v5;
}

CFIndex sub_252254F28(_krb5_context *a1, uint64_t a2)
{
  result = sub_2522560B4(a1, a2);
  if (!result)
  {
    v5 = *(*a2 + 16);
    v6 = **a2 == &krb5_xcc_temp_api_ops;

    return sub_2522562F8(a1, v5, 0, v6);
  }

  return result;
}

uint64_t sub_252254F94(krb5_context a1, void *a2, krb5_const_principal a3)
{
  keys[2] = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  v7 = *(v6 + 24);
  if (v7)
  {
    krb5_free_principal(a1, v7);
  }

  v8 = krb5_copy_principal(a1, a3, (v6 + 24));
  if (v8)
  {
    goto LABEL_4;
  }

  v12 = *(v6 + 16);
  if (v12)
  {
    CFRelease(v12);
    *(v6 + 16) = 0;
  }

  v13 = sub_252254DD0(a1, a3);
  *(v6 + 16) = v13;
  if (v13)
  {
    if (*(v6 + 8))
    {
      keys[0] = @"kHEIMAttrType";
      keys[1] = @"kHEIMAttrParentCredential";
      values[0] = @"kHEIMTypeKerberos";
      values[1] = *v6;
      v14 = CFDictionaryCreate(0, keys, values, 2, 0, 0);
      if (!v14)
      {
        sub_2522A7C20(0, v15, v16, v17, v18, v19, v20, v21);
      }

      v22 = v14;
      HeimCredDeleteQuery(v14, 0);
      CFRelease(v22);
    }

    else
    {
      v8 = sub_2522562F8(a1, v6, *v6, *a2 == &krb5_xcc_temp_api_ops);
      if (v8)
      {
LABEL_4:
        v9 = v8;
LABEL_5:
        v10 = *MEMORY[0x277D85DE8];
        return v9;
      }
    }

    if (HeimCredSetAttribute(*(v6 + 8), @"kHEIMAttrClientName", *(v6 + 16), 0))
    {
      v9 = 0;
    }

    else
    {
      v9 = 22;
      krb5_set_error_message(a1, 22, "failed to store credential to %s", *(v6 + 32));
    }

    goto LABEL_5;
  }

  v23 = *MEMORY[0x277D85DE8];

  return krb5_enomem(a1);
}

uint64_t sub_252255184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*v2)
  {
    HeimCredDeleteByUUID(*v2);
  }

  v3 = *(v2 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(v2 + 8) = 0;
  }

  return 0;
}

uint64_t sub_2522551C4(krb5_context a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*v4)
  {
    CFRelease(*v4);
    *v4 = 0;
  }

  v5 = *(v4 + 8);
  if (v5)
  {
    CFRelease(v5);
    *(v4 + 8) = 0;
  }

  v6 = *(v4 + 16);
  if (v6)
  {
    CFRelease(v6);
    *(v4 + 16) = 0;
  }

  krb5_free_principal(a1, *(v4 + 24));
  free(*(v4 + 32));
  krb5_data_free((a2 + 8));
  return 0;
}

uint64_t sub_252255244(_krb5_context *a1, uint64_t a2, uint64_t *a3)
{
  keys[9] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  v39 = 0;
  v40 = 0;
  krb5_data_zero(&v39);
  v6 = a3[6];
  v7 = MEMORY[0x277CBECD0];
  if (v6 || (v6 = a3[5]) != 0)
  {
    Current = v6 - *MEMORY[0x277CBECD0];
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v9 = CFDateCreate(0, Current);
  if (!v9)
  {
    v13 = krb5_enomem(a1);
    goto LABEL_40;
  }

  v10 = v9;
  v11 = a3[7];
  if (v11)
  {
    v12 = CFDateCreate(0, v11 - *v7);
  }

  else
  {
    v12 = 0;
  }

  v14 = a3[8];
  if (v14)
  {
    v15 = CFDateCreate(0, v14 - *v7);
  }

  else
  {
    v15 = 0;
  }

  v16 = krb5_storage_emem();
  if (v16)
  {
    v17 = v16;
    v13 = krb5_store_creds(v16, a3);
    if (!v13)
    {
      krb5_storage_to_data(v17, &v39);
      v18 = CFDataCreateWithBytesNoCopy(0, v40, v39, *MEMORY[0x277CBED00]);
      if (v18)
      {
        v19 = v18;
        is_root_krbtgt = krb5_principal_is_root_krbtgt(a1, a3[1]);
        v21 = sub_252254DD0(a1, a3[1]);
        if (v21)
        {
          v22 = v21;
          v23 = *MEMORY[0x277CBED10];
          if (is_root_krbtgt)
          {
            v23 = *MEMORY[0x277CBED28];
          }

          keys[0] = @"kHEIMObjectType";
          keys[1] = @"kHEIMAttrType";
          keys[2] = @"kHEIMAttrClientName";
          keys[3] = @"kHEIMAttrServerName";
          keys[4] = @"kHEIMAttrData";
          keys[5] = @"kHEIMAttrParentCredential";
          keys[6] = @"kHEIMAttrLeadCredential";
          keys[7] = @"kHEIMAttrAuthTime";
          keys[8] = @"kHEIMAttrRenewTill";
          values[0] = @"kHEIMObjectKerberos";
          values[1] = @"kHEIMTypeKerberos";
          values[2] = *(v5 + 16);
          values[3] = v21;
          values[4] = v19;
          values[5] = *v5;
          values[6] = v23;
          if (v15)
          {
            v24 = 9;
          }

          else
          {
            v24 = 8;
          }

          values[7] = v10;
          values[8] = v15;
          v25 = CFDictionaryCreate(0, keys, values, v24, 0, 0);
          if (!v25)
          {
            sub_2522A7C20(0, v26, v27, v28, v29, v30, v31, v32);
          }

          v33 = v25;
          if (v12)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v25);
            CFDictionarySetValue(MutableCopy, @"kHEIMAttrExpire", v12);
            CFRelease(v33);
            v33 = MutableCopy;
          }

          v35 = HeimCredCreate(v33, 0);
          if (v35)
          {
            CFRelease(v35);
            v13 = 0;
          }

          else
          {
            sub_25226B748(a1, 5, "failed to add credential to %s\n", *(v5 + 32));
            v13 = 22;
            krb5_set_error_message(a1, 22, "failed to store credential to %s", *(v5 + 32));
          }

          krb5_storage_free(v17);
          if (v33)
          {
            CFRelease(v33);
          }

          CFRelease(v19);
          v36 = v22;
        }

        else
        {
          v13 = krb5_enomem(a1);
          krb5_storage_free(v17);
          v36 = v19;
        }

        CFRelease(v36);
        goto LABEL_36;
      }

      v13 = krb5_enomem(a1);
    }

    krb5_storage_free(v17);
  }

  else
  {
    v13 = krb5_enomem(a1);
  }

LABEL_36:
  CFRelease(v10);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_40:
  krb5_data_free(&v39);
  v37 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_252255600(_krb5_context *a1, uint64_t a2, krb5_principal *a3)
{
  v5 = *(a2 + 16);
  result = sub_252256198(a1, v5);
  if (!result)
  {
    v7 = v5[3];

    return krb5_copy_principal(a1, v7, a3);
  }

  return result;
}

uint64_t sub_252255668(_krb5_context *a1, uint64_t a2, const void ***a3)
{
  keys[2] = *MEMORY[0x277D85DE8];
  v3 = 2529639054;
  v4 = **(a2 + 16);
  if (!v4)
  {
LABEL_10:
    v20 = *MEMORY[0x277D85DE8];
    return v3;
  }

  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x1060040C2E02434uLL);
  if (v7)
  {
    v8 = v7;
    keys[0] = @"kHEIMAttrParentCredential";
    keys[1] = @"kHEIMAttrType";
    values[0] = v4;
    values[1] = @"kHEIMTypeKerberos";
    v9 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v9)
    {
      sub_2522A7C38(0, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = v9;
    *v8 = HeimCredCopyQuery();
    CFRelease(v17);
    if (*v8)
    {
      v3 = 0;
      *a3 = v8;
    }

    else
    {
      sub_252256488(v8);
    }

    goto LABEL_10;
  }

  v18 = *MEMORY[0x277D85DE8];

  return krb5_enomem(a1);
}

uint64_t sub_2522557D8(uint64_t a1, uint64_t a2, const __CFArray ***a3, uint64_t a4)
{
  v4 = 2529639054;
  v5 = *a3;
  if (**a3)
  {
    while (1)
    {
      v7 = v5[1];
      if (v7 >= CFArrayGetCount(*v5))
      {
        break;
      }

      v8 = *v5;
      v9 = v5[1];
      v5[1] = (v9 + 1);
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
      if (!ValueAtIndex)
      {
        break;
      }

      v11 = HeimCredCopyAttribute(ValueAtIndex, @"kHEIMAttrData");
      if (v11)
      {
        v12 = v11;
        BytePtr = CFDataGetBytePtr(v11);
        Length = CFDataGetLength(v12);
        v15 = krb5_storage_from_readonly_mem(BytePtr, Length);
        if (v15)
        {
          v16 = v15;
          v4 = krb5_ret_creds(v15, a4);
          krb5_storage_free(v16);
        }

        CFRelease(v12);
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_2522558A0(uint64_t a1, uint64_t a2, const void ***a3)
{
  sub_252256488(*a3);
  *a3 = 0;
  return 0;
}

uint64_t sub_2522558D0(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  keys[3] = *MEMORY[0x277D85DE8];
  v5 = 2529639053;
  v6 = *(a2 + 16);
  v7 = sub_252254DD0(a1, *(a4 + 8));
  if (v7)
  {
    v8 = v7;
    keys[0] = @"kHEIMAttrParentCredential";
    keys[1] = @"kHEIMAttrType";
    keys[2] = @"kHEIMAttrServerName";
    values[0] = *v6;
    values[1] = @"kHEIMTypeKerberos";
    values[2] = v7;
    v9 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v9)
    {
      sub_2522A7C20(0, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = v9;
    CFRelease(v8);
    v18 = HeimCredDeleteQuery(v17, 0);
    CFRelease(v17);
    if (v18)
    {
      v5 = 0;
    }

    else
    {
      krb5_set_error_message(a1, -1765328243, "Deleted credential not found");
    }
  }

  else
  {
    v5 = 2529639054;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_252255A1C(_krb5_context *a1, const void ***a2)
{
  keys[2] = *MEMORY[0x277D85DE8];
  keys[0] = @"kHEIMAttrType";
  keys[1] = @"kHEIMAttrServerName";
  v4 = *MEMORY[0x277CBEEE8];
  v19[0] = @"kHEIMTypeKerberos";
  v19[1] = v4;
  v19[2] = *MEMORY[0x277CBED10];
  v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x1060040C2E02434uLL);
  if (v5)
  {
    v6 = v5;
    v7 = CFDictionaryCreate(0, keys, v19, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v7)
    {
      sub_2522A7C20(0, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = v7;
    *v6 = HeimCredCopyQuery();
    CFRelease(v15);
    if (*v6)
    {
      result = 0;
      *a2 = v6;
    }

    else
    {
      sub_252256488(v6);
      result = 2529639054;
    }

    v18 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v17 = *MEMORY[0x277D85DE8];

    return krb5_enomem(a1);
  }

  return result;
}

uint64_t sub_252255BB8(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  if (!HeimCredMove(*v5, *v6))
  {
    return 2529639054;
  }

  if (*v5)
  {
    HeimCredDeleteByUUID(*v5);
    if (*v5)
    {
      CFRelease(*v5);
      *v5 = 0;
    }
  }

  v7 = *(v6 + 8);
  if (v7)
  {
    CFRelease(v7);
    *(v6 + 8) = 0;
  }

  v8 = *(v5 + 8);
  if (v8)
  {
    CFRelease(v8);
    *(v5 + 8) = 0;
  }

  v9 = *(v6 + 16);
  if (v9)
  {
    CFRelease(v9);
    *(v6 + 16) = 0;
  }

  *(v6 + 16) = *(v5 + 16);
  *(v5 + 16) = 0;
  v10 = *(v6 + 24);
  if (v10)
  {
    krb5_free_principal(a1, v10);
  }

  *(v6 + 24) = *(v5 + 24);
  *(v5 + 24) = 0;
  free(*(v6 + 32));
  *(v6 + 32) = 0;
  sub_252256134(v6);
  free(*(v5 + 32));
  krb5_data_free((a2 + 8));
  return 0;
}

uint64_t sub_252255CBC(_krb5_context *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = v3[1];
  if (!v4)
  {
    v4 = HeimCredCopyFromUUID(*v3);
    v3[1] = v4;
    if (!v4)
    {
      return 2529639054;
    }
  }

  if (HeimCredSetAttribute(v4, @"kHEIMAttrDefaultCredential", *MEMORY[0x277CBED28], 0))
  {
    return 0;
  }

  v5 = 22;
  krb5_set_error_message(a1, 22, "XCACHE couldn't set default credential");
  return v5;
}

uint64_t sub_252255D58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = v2[1];
  if (!v3)
  {
    v3 = HeimCredCopyFromUUID(*v2);
    v2[1] = v3;
    if (!v3)
    {
      return 2529639053;
    }
  }

  HeimCredRetainTransient(v3);
  return 0;
}

uint64_t sub_252255DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = v2[1];
  if (!v3)
  {
    v3 = HeimCredCopyFromUUID(*v2);
    v2[1] = v3;
    if (!v3)
    {
      return 2529639053;
    }
  }

  HeimCredReleaseTransient(v3);
  return 0;
}

uint64_t sub_252255E28(_krb5_context *a1, uint64_t a2, char *cStr, void *a4)
{
  v7 = *(a2 + 16);
  if (!v7[1])
  {
    v8 = HeimCredCopyFromUUID(*v7);
    v7[1] = v8;
    if (!v8)
    {
      return 2529639054;
    }
  }

  v9 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v9)
  {
    v10 = v9;
    v11 = HeimCredSetAttribute(v7[1], v9, a4, 0);
    CFRelease(v10);
    if (v11)
    {
      return 0;
    }

    else
    {
      return 2529639054;
    }
  }

  else
  {

    return krb5_enomem(a1);
  }
}

uint64_t sub_252255EF0(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 16);
  *a4 = 0;
  v7 = v6[1];
  if (!v7)
  {
    v7 = HeimCredCopyFromUUID(*v6);
    v6[1] = v7;
    if (!v7)
    {
      return 2529639054;
    }
  }

  v8 = HeimCredCopyAttributes(v7, 0, 0);
  *a4 = v8;
  if (v8)
  {
    return 0;
  }

  v9 = 2529639054;
  krb5_set_error_message(a1, -1765328242, "Credential have no attributes");
  return v9;
}

uint64_t sub_252255FB8(_krb5_context *a1, uint64_t a2, void *a3)
{
  v4 = 2529639054;
  if (*a2)
  {
    v7 = *(a2 + 8);
    if (v7 < CFArrayGetCount(*a2))
    {
      v8 = *a2;
      v9 = *(a2 + 8);
      *(a2 + 8) = v9 + 1;
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
      if (ValueAtIndex)
      {
        v11 = ValueAtIndex;
        v4 = sub_25224B218(a1, &krb5_xcc_api_ops, a3);
        if (!v4)
        {
          sub_2522560B4(a1, a3);
          v12 = *(*a3 + 16);
          UUID = HeimCredGetUUID(v11);
          *v12 = UUID;
          CFRetain(UUID);
          v12[1] = v11;
          CFRetain(v11);
          sub_252256134(v12);
        }
      }
    }
  }

  return v4;
}

uint64_t sub_2522560B4(_krb5_context *a1, uint64_t a2)
{
  *(*a2 + 16) = malloc_type_calloc(1uLL, 0x28uLL, 0x700403DF0E5C8uLL);
  if (*(*a2 + 16))
  {
    *(*a2 + 8) = 40;
    return 0;
  }

  else
  {

    return krb5_enomem(a1);
  }
}

void sub_252256134(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v6 = v1;
    v7 = v2;
    v5 = CFUUIDGetUUIDBytes(*a1);
    v4 = malloc_type_malloc(0x25uLL, 0x95BA823FuLL);
    *(a1 + 32) = v4;
    uuid_unparse(&v5.byte0, v4);
  }
}

uint64_t sub_252256198(_krb5_context *a1, uint64_t *a2)
{
  v4 = a2[1];
  if (!v4)
  {
    v5 = HeimCredCopyFromUUID(*a2);
    v6 = HeimCredCopyAttributes(v5, 0, 0);
    if (v6)
    {
      a2[1] = v5;
      CFRetain(v5);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v4 = a2[1];
    if (!v4)
    {
      v8 = 2529639053;
      v12 = a2[4];
      krb5_set_error_message(a1, -1765328243, "no credential for %s");
      return v8;
    }
  }

  v7 = a2[2];
  if (!v7)
  {
    v7 = HeimCredCopyAttribute(v4, @"kHEIMAttrClientName");
    a2[2] = v7;
    if (!v7)
    {
      v8 = 2529639053;
      v13 = a2[4];
      krb5_set_error_message(a1, -1765328243, "no cache for %s");
      return v8;
    }
  }

  if (!a2[3])
  {
    v16 = 0;
    v9 = rk_cfstring2cstring(v7);
    if (v9)
    {
      v10 = v9;
      krb5_parse_name(a1, v9, &v16);
      free(v10);
      v11 = v16;
      a2[3] = v16;
      if (v11)
      {
        return 0;
      }
    }

    else
    {
      a2[3] = 0;
    }

    v8 = 2529639053;
    v14 = a2[4];
    krb5_set_error_message(a1, -1765328243, "no principal for %s");
    return v8;
  }

  return 0;
}

CFIndex sub_2522562F8(_krb5_context *a1, void *a2, void *a3, int a4)
{
  keys[4] = *MEMORY[0x277D85DE8];
  keys[0] = @"kHEIMObjectType";
  keys[1] = @"kHEIMAttrType";
  keys[2] = @"kHEIMAttrTemporaryCache";
  keys[3] = @"kHEIMAttrUUID";
  values[0] = @"kHEIMObjectKerberos";
  values[1] = @"kHEIMTypeKerberos";
  v7 = MEMORY[0x277CBED10];
  if (a4)
  {
    v7 = MEMORY[0x277CBED28];
  }

  values[2] = *v7;
  values[3] = a3;
  if (a3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  cf = 0;
  v9 = CFDictionaryCreate(0, keys, values, v8, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v9)
  {
    sub_2522A7C80(0, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = v9;
  a2[1] = HeimCredCreate(v9, &cf);
  CFRelease(v17);
  v25 = a2[1];
  if (v25)
  {
    if (!a3)
    {
      if (*a2)
      {
        sub_2522A7C50(v25, v18, v19, v20, v21, v22, v23, v24);
      }

      UUID = HeimCredGetUUID(v25);
      *a2 = UUID;
      if (!UUID)
      {
        sub_2522A7C68(0, v27, v28, v29, v30, v31, v32, v33);
      }

      CFRetain(UUID);
    }

    sub_252256134(a2);
    v34 = 0;
  }

  else
  {
    v34 = sub_252256C30(a1, 12, cf, "no reply from GSSCred", v21, v22, v23, v24, cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

void sub_252256488(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t sub_2522564C8(int a1, uint64_t a2, char *a3, char **a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = HeimCredCopyDefaultCredential(@"kHEIMTypeKerberos", 0);
  if (v8)
  {
    v9 = v8;
    uu = CFUUIDGetUUIDBytes(v8);
    uuid_unparse(&uu.byte0, out);
    CFRelease(v9);
    asprintf(a4, "%s:%s", *(a2 + 8), out);
    v10 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];

    return _krb5_expand_default_cc_name(a1, a3);
  }
}

uint64_t sub_2522565DC(_krb5_context *a1, uint64_t a2, CFUUIDBytes *a3)
{
  v10 = a2;
  v5 = CFUUIDCreateFromUUIDBytes(0, *a3);
  if (v5)
  {
    v6 = v5;
    v7 = sub_2522560B4(a1, &v10);
    if (v7)
    {
      CFRelease(v6);
    }

    else
    {
      v8 = *(a2 + 16);
      *v8 = v6;
      sub_252256134(v8);
    }
  }

  else
  {
    v7 = 2529639054;
    krb5_set_error_message(a1, -1765328242, "failed to create uuid");
  }

  return v7;
}

uint64_t krb5_eai_to_heim_errno(uint64_t a1, uint64_t a2)
{
  if (a1 <= 5)
  {
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          return a1;
        case 1:
          return 2314790785;
        case 2:
          return 2314790786;
      }

      return 2314790784;
    }

    if (a1 == 3)
    {
      return 2314790787;
    }

    if (a1 == 4)
    {
      return 2314790788;
    }

    v2 = 5;
    return v2 | 0x89F8E780;
  }

  if (a1 > 8)
  {
    switch(a1)
    {
      case 9:
        v2 = 9;
        break;
      case 0xA:
        v2 = 10;
        break;
      case 0xB:
        return a2;
      default:
        return 2314790784;
    }

    return v2 | 0x89F8E780;
  }

  if (a1 == 6)
  {
    return 2314790790;
  }

  if (a1 == 7)
  {
    return 2314790791;
  }

  return 2314790792;
}

uint64_t krb5_h_errno_to_heim_errno(unsigned int a1)
{
  if (a1 > 4)
  {
    return 2314790784;
  }

  else
  {
    return dword_2522A9EC0[a1];
  }
}

void krb5_clear_error_message(krb5_context a1)
{
  pthread_mutex_lock(*(a1 + 41));
  v2 = *(a1 + 35);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 72) = 0;
  *(a1 + 35) = 0;
  v3 = *(a1 + 41);

  pthread_mutex_unlock(v3);
}

void krb5_vset_error_message(krb5_context a1, krb5_error_code a2, const char *a3, va_list a4)
{
  if (a1)
  {
    pthread_mutex_lock(*(a1 + 41));
    v8 = *(a1 + 35);
    if (v8)
    {
      free(v8);
      *(a1 + 35) = 0;
    }

    *(a1 + 72) = a2;
    if (vasprintf(a1 + 35, a3, a4) < 0)
    {
      *(a1 + 35) = 0;
    }

    pthread_mutex_unlock(*(a1 + 41));
    v9 = *(a1 + 35);
    if (v9)
    {
      sub_25226B748(a1, 100, "set-error: %d: %s", a2, v9);
    }
  }
}

const char *__cdecl krb5_get_error_message(krb5_context a1, krb5_error_code a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = a1;
  if (a2)
  {
    if (a1)
    {
      pthread_mutex_lock(*(a1 + 41));
      v4 = *(a1 + 35);
      if (v4 && ((v5 = *(a1 + 72), v5 == a2) || !v5))
      {
        v13 = strdup(v4);
        v15 = v13;
        pthread_mutex_unlock(*(a1 + 41));
        if (v13)
        {
LABEL_23:
          v14 = *MEMORY[0x277D85DE8];
          return v13;
        }
      }

      else
      {
        pthread_mutex_unlock(*(a1 + 41));
      }

      v6 = com_right_r(*(a1 + 18), a2, __dst, 0x80uLL);
      if (!v6)
      {
        goto LABEL_21;
      }

LABEL_15:
      v12 = v6;
LABEL_22:
      v13 = strdup(v12);
      goto LABEL_23;
    }

    inited = krb5_init_context(&v16);
    v10 = inited;
    if (v16)
    {
      v11 = com_right_r(*(v16 + 18), a2, __dst, 0x80uLL);
      v6 = v11;
      if (v10)
      {
        if (v11)
        {
          goto LABEL_15;
        }

LABEL_21:
        v12 = error_message(a2);
        if (!v12)
        {
          if (asprintf(&v15, "<unknown error: %d>", a2) == -1)
          {
            v13 = 0;
          }

          else
          {
            v13 = v15;
          }

          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (inited)
      {
        goto LABEL_21;
      }

      v6 = 0;
    }

    krb5_free_context(v16);
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v7 = *MEMORY[0x277D85DE8];

  return strdup("Success");
}

void krb5_free_error_message(krb5_context a1, const char *a2)
{
  if (a2)
  {
    free(a2);
  }
}

const char *krb5_get_err_text(uint64_t a1, int __errnum)
{
  if (!a1 || (result = com_right(*(a1 + 144), __errnum)) == 0)
  {
    result = strerror(__errnum);
  }

  if (!result)
  {
    return "Unknown error";
  }

  return result;
}

CFIndex sub_252256ADC(_krb5_context *a1, CFIndex Code, CFErrorRef err, char *a4, va_list a5)
{
  v19 = 0;
  if (err)
  {
    v10 = CFErrorCopyDescription(err);
    if (v10)
    {
      v11 = v10;
      v12 = rk_cfstring2cstring(v10);
      CFRelease(v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = CFErrorCopyUserInfo(err);
    if (v13)
    {
      v14 = v13;
      Value = CFDictionaryGetValue(v13, @"CommonErrorCode");
      if (Value)
      {
        v16 = Value;
        v17 = CFGetTypeID(Value);
        if (v17 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v16))
          {
            Code = CFErrorGetCode(err);
          }
        }
      }

      CFRelease(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((vasprintf(&v19, a4, a5) & 0x80000000) == 0 && v19)
  {
    if (v12)
    {
      krb5_set_error_message(a1, Code, "%s: %s", v19, v12);
      free(v12);
    }

    else
    {
      krb5_set_error_message(a1, Code, "%s", v19);
    }

    v12 = v19;
  }

  free(v12);
  return Code;
}

uint64_t krb5_expand_hostname(_krb5_context *a1, char *__s1, unsigned __int8 **a3)
{
  if (*(a1 + 360))
  {
    v12 = 0;
    memset(&v11, 0, sizeof(v11));
    v11.ai_flags = 2;
    if (!getaddrinfo(__s1, 0, &v11, &v12))
    {
      v7 = v12;
      if (v12)
      {
        v8 = v12;
        while (1)
        {
          ai_canonname = v8->ai_canonname;
          if (ai_canonname)
          {
            break;
          }

          v8 = v8->ai_next;
          if (!v8)
          {
            goto LABEL_10;
          }
        }

        *a3 = strdup(ai_canonname);
        freeaddrinfo(v7);
        if (*a3)
        {
          return 0;
        }

        v10 = 12;
        krb5_set_error_message(a1, 12, "malloc: out of memory");
        return v10;
      }

LABEL_10:
      freeaddrinfo(v12);
    }

    return sub_252256D74(a1, __s1, a3);
  }

  return sub_252256D74(a1, __s1, a3);
}

uint64_t sub_252256D74(_krb5_context *a1, char *__s1, unsigned __int8 **a3)
{
  v5 = strdup(__s1);
  *a3 = v5;
  if (v5)
  {
    rk_strlwr(v5);
    return 0;
  }

  else
  {
    v6 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v6;
}

uint64_t krb5_expand_hostname_realms(_krb5_context *a1, char *a2, unsigned __int8 **a3, char ***a4)
{
  if ((*(a1 + 360) & 1) == 0)
  {

    return sub_252256F1C(a1, a2, a3, a4);
  }

  v15 = 0;
  memset(&v14, 0, sizeof(v14));
  v14.ai_flags = 2;
  if (getaddrinfo(a2, 0, &v14, &v15))
  {
    return sub_252256F1C(a1, a2, a3, a4);
  }

  v9 = v15;
  if (!v15)
  {
    v12 = 0;
LABEL_14:
    freeaddrinfo(v12);
    return sub_252256F1C(a1, a2, a3, a4);
  }

  while (1)
  {
    ai_canonname = v9->ai_canonname;
    if (ai_canonname)
    {
      break;
    }

LABEL_11:
    v9 = v9->ai_next;
    if (!v9)
    {
      v12 = v15;
      goto LABEL_14;
    }
  }

  v11 = sub_252256D74(a1, ai_canonname, a3);
  if (v11)
  {
    v13 = v11;
    freeaddrinfo(v15);
    return v13;
  }

  rk_strlwr(*a3);
  if (krb5_get_host_realm(a1, *a3, a4))
  {
    free(*a3);
    goto LABEL_11;
  }

  freeaddrinfo(v15);
  return 0;
}

uint64_t sub_252256F1C(_krb5_context *a1, char *a2, unsigned __int8 **a3, char ***a4)
{
  host_realm = sub_252256D74(a1, a2, a3);
  if (!host_realm)
  {
    rk_strlwr(*a3);
    host_realm = krb5_get_host_realm(a1, *a3, a4);
    if (host_realm)
    {
      free(*a3);
    }
  }

  return host_realm;
}

uint64_t sub_252256F84(_krb5_context *a1, int a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v10[1] = 0;
  v11 = 0;
  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  v10[0] = 0;
  WORD2(v11) = v4;
  v5 = fcntl(a2, 9, v10);
  if ((v5 & 0x80000000) != 0)
  {
    v5 = *__error();
  }

  if (v5 == 13)
  {
    v6 = 35;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = v6 == 22;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v5 = 0;
  }

  else if (v6 == 35)
  {
    v5 = 35;
    krb5_set_error_message(a1, 35, "timed out locking cache file %s");
  }

  else
  {
    strerror_r(v6, __strerrbuf, 0x80uLL);
    krb5_set_error_message(a1, v6, "error locking cache file %s: %s");
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_25225709C(_krb5_context *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[1] = 0;
  v6[2] = 0x200000000;
  v6[0] = 0;
  v3 = fcntl(a2, 9, v6);
  if ((v3 & 0x80000000) != 0)
  {
    v3 = *__error();
  }

  result = 0;
  if (v3 && v3 != 22)
  {
    strerror_r(v3, __strerrbuf, 0x80uLL);
    krb5_set_error_message(a1, v3, "Failed to unlock file: %s", __strerrbuf);
    result = v3;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25225716C(_krb5_context *a1, char *a2)
{
  memset(&v12, 0, sizeof(v12));
  memset(&v11, 0, sizeof(v11));
  if (lstat(a2, &v12) < 0)
  {
    return *__error();
  }

  v4 = open(a2, 2);
  if (v4 < 0)
  {
    if (*__error() == 2)
    {
      return 0;
    }

    return *__error();
  }

  v5 = v4;
  sub_252287100(v4);
  v6 = sub_252256F84(a1, v5, 1);
  if (v6)
  {
    v7 = v6;
    close(v5);
    return v7;
  }

  if (unlink(a2) < 0 || fstat(v5, &v11) < 0)
  {
    sub_25225709C(a1, v5);
    close(v5);
    return *__error();
  }

  if (v12.st_dev != v11.st_dev || v12.st_ino != v11.st_ino)
  {
    sub_25225709C(a1, v5);
    close(v5);
    return 1;
  }

  if (v11.st_nlink)
  {
    sub_25225709C(a1, v5);
    close(v5);
    return 0;
  }

  v9 = sub_252257300(v5);
  v10 = sub_25225709C(a1, v5);
  close(v5);
  if (v9)
  {
    return v9;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_252257300(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = lseek(a1, 0, 2);
  if (v2 < 0 || (v3 = v2, lseek(a1, 0, 0) < 0))
  {
LABEL_10:
    result = *__error();
    goto LABEL_11;
  }

  memset(v8, 0, sizeof(v8));
  if (v3)
  {
    do
    {
      v4 = v3 >= 0x80 ? 128 : v3;
      v5 = write(a1, v8, v4);
      if (v5 < 0)
      {
        goto LABEL_10;
      }

      v3 -= v5;
    }

    while (v3 >= 1);
  }

  fsync(a1);
  result = 0;
LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2522573DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2522573F4(_krb5_context *a1, uint64_t a2, const char *a3)
{
  v6 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
  if (!v6)
  {
    v9 = 2529639110;
LABEL_6:
    krb5_set_error_message(a1, -1765328186, "malloc: out of memory");
    return v9;
  }

  v7 = v6;
  v8 = strdup(a3);
  *v7 = v8;
  if (!v8)
  {
    v9 = 2529639110;
    free(v7);
    goto LABEL_6;
  }

  v9 = 0;
  v7[2] = 0;
  *(*a2 + 16) = v7;
  *(*a2 + 8) = 16;
  return v9;
}

uint64_t sub_2522574AC(_krb5_context *a1, uint64_t a2)
{
  v10 = 0;
  __s1 = 0;
  v4 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
  if (!v4)
  {
    v6 = 2529639110;
LABEL_9:
    krb5_set_error_message(a1, -1765328186, "malloc: out of memory");
    return v6;
  }

  v5 = v4;
  if (asprintf(&__s1, "%sXXXXXX", "%{TEMP}/krb5cc_") < 0 || !__s1)
  {
    v6 = 2529639110;
    free(v5);
    goto LABEL_9;
  }

  v6 = _krb5_expand_default_cc_name_0(a1, __s1, &v10);
  free(__s1);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    __s1 = v10;
    v9 = mkstemp(v10);
    if ((v9 & 0x80000000) == 0)
    {
      close(v9);
      v6 = 0;
      *v5 = v10;
      v5[2] = 0;
      *(*a2 + 16) = v5;
      *(*a2 + 8) = 16;
      return v6;
    }

    v6 = *__error();
    krb5_set_error_message(a1, v6, "mkstemp %s failed", v10);
    free(v5);
    v7 = v10;
  }

  free(v7);
  return v6;
}

uint64_t sub_2522575FC(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  if (v4)
  {
    v23 = 0;
    unlink(*v4);
    v7 = sub_2522585B4(a1, a2, "initialize", &v23, 2, 384);
    if (!v7)
    {
      v8 = krb5_storage_emem();
      krb5_storage_set_eof_code(v8, -1765328242);
      v9 = a1[63];
      if (!v9)
      {
        v9 = 4;
      }

      *(v4 + 8) = v9;
      v10 = krb5_store_int8(v8, 5);
      v11 = krb5_store_int8(v8, *(v4 + 8)) | v10;
      sub_25225872C(a1, v8, *(v4 + 8));
      if (*(v4 + 8) == 4 && v11 == 0)
      {
        if (a1[27])
        {
          v13 = krb5_store_int16(v8, 0xCu);
          v14 = krb5_store_int16(v8, 1u) | v13;
          v15 = v14 | krb5_store_int16(v8, 8u);
          v16 = v15 | krb5_store_int32(v8, a1[27]);
          v11 = v16 | krb5_store_int32(v8, a1[28]);
        }

        else
        {
          v11 = krb5_store_int16(v8, 0);
        }
      }

      v19 = krb5_store_principal(v8, a3);
      v20 = v23;
      v7 = v19 | sub_25225877C(a1, v8, v23) | v11;
      krb5_storage_free(v8);
      sub_25225709C(a1, v20);
      if (close(v20) < 0 && !v7)
      {
        v21 = __error();
        v7 = *v21;
        strerror_r(*v21, __strerrbuf, 0x80uLL);
        krb5_set_error_message(a1, v7, "close %s: %s", **(a2 + 16), __strerrbuf);
      }
    }

    v22 = *MEMORY[0x277D85DE8];
    return v7;
  }

  else
  {
    v17 = *MEMORY[0x277D85DE8];

    return sub_25226D0E0();
  }
}

uint64_t sub_25225785C(_krb5_context *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    sub_25225716C(a1, *v3);
    return 0;
  }

  else
  {

    return sub_25226D0E0();
  }
}

uint64_t sub_2522578A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    free(*v3);
    krb5_data_free((a2 + 8));
    return 0;
  }

  else
  {

    return sub_25226D0E0();
  }
}

uint64_t sub_2522578F8(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v6 = sub_2522585B4(a1, a2, "store", &v16, 9, 0);
  if (!v6)
  {
    v7 = krb5_storage_emem();
    krb5_storage_set_eof_code(v7, -1765328242);
    sub_25225872C(a1, v7, *(*(a2 + 16) + 8));
    if (!krb5_config_get_BOOL_default(a1, 0, 1, v8, v9, v10, v11, v12, "libdefaults"))
    {
      krb5_storage_set_flags(v7, 128);
    }

    v6 = krb5_store_creds(v7, a3);
    v13 = v16;
    if (!v6)
    {
      v6 = sub_25225877C(a1, v7, v16);
    }

    krb5_storage_free(v7);
    sub_25225709C(a1, v13);
    if (close(v13) < 0 && !v6)
    {
      strerror_r(0, __strerrbuf, 0x80uLL);
      v6 = *__error();
      krb5_set_error_message(a1, v6, "close %s: %s", **(a2 + 16), __strerrbuf);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_252257A7C(unsigned int *a1, uint64_t a2, void *a3)
{
  v10 = 0;
  v9 = 0;
  v5 = sub_252258824(a1, a2, "get-pricipal", &v9, &v10, 0);
  if (!v5)
  {
    v6 = v9;
    v5 = krb5_ret_principal(v9, a3);
    if (v5)
    {
      krb5_clear_error_message(a1);
    }

    krb5_storage_free(v6);
    v7 = v10;
    sub_25225709C(a1, v10);
    close(v7);
  }

  return v5;
}

uint64_t sub_252257B1C(unsigned int *a1, uint64_t a2, int **a3)
{
  if (*(a2 + 16))
  {
    v6 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
    *a3 = v6;
    if (v6)
    {
      *v6 = 0;
      *(v6 + 1) = 0;
      v7 = sub_252258824(a1, a2, "get-frist", *a3 + 1, *a3, 0);
      if (v7)
      {
        v8 = v7;
        free(*a3);
        *a3 = 0;
      }

      else
      {
        v10 = 0;
        v8 = krb5_ret_principal(*(*a3 + 1), &v10);
        if (v8)
        {
          krb5_clear_error_message(a1);
          sub_252257D34(a1, a2, a3);
        }

        else
        {
          krb5_free_principal(a1, v10);
          sub_25225709C(a1, **a3);
        }
      }
    }

    else
    {
      v8 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
    }

    return v8;
  }

  else
  {

    return sub_25226D0E0();
  }
}

uint64_t sub_252257C60(_krb5_context *a1, uint64_t a2, int **a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (v5 && *a3)
  {
    v8 = *v5;
    v9 = sub_252256F84(a1, **a3, 0);
    if (!v9)
    {
      v9 = krb5_ret_creds(*(*a3 + 1), a4);
      if (v9)
      {
        krb5_clear_error_message(a1);
      }

      sub_25225709C(a1, **a3);
    }

    return v9;
  }

  else
  {

    return sub_25226D0E0();
  }
}

uint64_t sub_252257D34(uint64_t a1, uint64_t a2, int **a3)
{
  if (*(a2 + 16) && *a3)
  {
    krb5_storage_free(*(*a3 + 1));
    close(**a3);
    free(*a3);
    *a3 = 0;
    return 0;
  }

  else
  {

    return sub_25226D0E0();
  }
}

uint64_t sub_252257DC0(krb5_context context, uint64_t a2, krb5_flags a3, krb5_creds *a4)
{
  v17 = 0;
  if (*(a2 + 16))
  {
    cache = 0;
    id = 0;
    v8 = krb5_cc_new_unique(context, krb5_cc_type_memory[0], 0, &id);
    if (v8)
    {
      return v8;
    }

    v9 = krb5_cc_copy_cache(context, a2, id);
    v10 = id;
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v12 = krb5_cc_remove_cred(context, id, a3, a4);
      if (v12)
      {
        v8 = v12;
      }

      else
      {
        if (asprintf(&v17, "FILE:%s.XXXXXX", **(a2 + 16)) < 0 || !v17)
        {
          krb5_cc_destroy(context, id);
          return 12;
        }

        v13 = mkstemp(v17 + 5);
        if (v13 < 0)
        {
          v8 = *__error();
        }

        else
        {
          close(v13);
          v14 = krb5_cc_resolve(context, v17, &cache);
          if (!v14)
          {
            v8 = krb5_cc_copy_cache(context, id, cache);
            krb5_cc_destroy(context, id);
            if (!v8)
            {
              rename((v17 + 5), **(a2 + 16), v15);
              if (v16)
              {
                v8 = *__error();
              }

              else
              {
                v8 = 0;
              }

              free(v17);
              krb5_cc_close(context, cache);
              return v8;
            }

            free(v17);
            v10 = cache;
            goto LABEL_11;
          }

          v8 = v14;
          unlink(v17 + 5);
          free(v17);
        }
      }

      v10 = id;
    }

LABEL_11:
    krb5_cc_destroy(context, v10);
    return v8;
  }

  return sub_25226D0E0();
}

uint64_t sub_252257FAC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_25226D0E0();
  }
}

uint64_t sub_252257FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_252257FE4(_krb5_context *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4)
  {
    v5 = 0;
    *v4 = 1;
    *a2 = v4;
  }

  else
  {
    v5 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v5;
}

uint64_t sub_252258060(const char **a1, _DWORD *a2, krb5_ccache *a3)
{
  v9 = 0;
  if (a2)
  {
    if (*a2)
    {
      *a2 = 0;
      v5 = a1[38];
      if (v5 && !strncasecmp(a1[38], "FILE:", 5uLL))
      {
        goto LABEL_7;
      }

      v6 = _krb5_expand_default_cc_name(a1, "FILE:%{TEMP}/krb5cc_%{uid}");
      if (!v6)
      {
        v5 = v9;
LABEL_7:
        if (!strncasecmp(v5, "FILE:", 5uLL) && (memset(&v8, 0, sizeof(v8)), stat(v5 + 5, &v8)))
        {
          v6 = 2529639054;
        }

        else
        {
          v6 = krb5_cc_resolve(a1, v5, a3);
        }

        if (v9)
        {
          free(v9);
        }
      }
    }

    else
    {
      v6 = 2529639054;
      krb5_clear_error_message(a1);
    }

    return v6;
  }

  return sub_25226D0E0();
}

uint64_t sub_2522581A0(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
    return 0;
  }

  else
  {

    return sub_25226D0E0();
  }
}

uint64_t sub_2522581E0(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  __buf[128] = *MEMORY[0x277D85DE8];
  rename(**(a2 + 16), **(a3 + 16), a3);
  if (v6)
  {
    if (*__error() != 18)
    {
      v12 = __error();
      v7 = *v12;
      strerror_r(*v12, __buf, 0x80uLL);
      krb5_set_error_message(a1, v7, "Rename of file from %s to %s failed: %s", **(a2 + 16), **(a3 + 16), __buf);
      goto LABEL_23;
    }

    if (*__error() == 18)
    {
      *v16 = 0;
      v7 = sub_2522585B4(a1, a2, "move/from", &v16[1], 0, 0);
      if (v7)
      {
        goto LABEL_23;
      }

      unlink(**(a3 + 16));
      v7 = sub_2522585B4(a1, a3, "move/to", v16, 1, 384);
      v8 = v16[1];
      if (!v7)
      {
        v9 = v16[0];
        v10 = "Failed to write data from one file credential cache to the other";
        while (1)
        {
          v11 = read(v8, __buf, 0x400uLL);
          if (v11 < 1)
          {
            break;
          }

          if (v11 != write(v9, __buf, v11))
          {
            goto LABEL_14;
          }
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          v7 = 0;
          goto LABEL_15;
        }

        v10 = "Failed to read data from one file credential cache to the other";
LABEL_14:
        v7 = 5;
        krb5_set_error_message(a1, 5, v10);
LABEL_15:
        sub_25225709C(a1, v9);
        close(v9);
      }

      sub_25225709C(a1, v8);
      close(v8);
      sub_25225716C(a1, **(a2 + 16));
      if (v7)
      {
        sub_25225716C(a1, **(a3 + 16));
        goto LABEL_23;
      }
    }
  }

  __buf[0] = 0;
  v16[1] = 0;
  v7 = sub_252258824(a1, a3, "move", __buf, &v16[1], 0);
  if (!v7)
  {
    if (__buf[0])
    {
      krb5_storage_free(__buf[0]);
    }

    v13 = v16[1];
    sub_25225709C(a1, v16[1]);
    close(v13);
  }

  sub_2522578A0(a1, a2);
LABEL_23:
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_252258470(_krb5_context *a1, uint64_t a2, __darwin_time_t *a3)
{
  memset(&v10, 0, sizeof(v10));
  v9 = 0;
  v5 = sub_2522585B4(a1, a2, "lastchange", &v9, 0, 0);
  if (!v5)
  {
    v6 = v9;
    v7 = fstat(v9, &v10);
    close(v6);
    if (v7)
    {
      v5 = *__error();
      krb5_set_error_message(a1, v5, "Failed to stat cache file");
    }

    else
    {
      v5 = 0;
      *a3 = v10.st_mtimespec.tv_sec;
    }
  }

  return v5;
}

uint64_t sub_252258538(unsigned int *a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v7 = 0;
  v4 = sub_252258824(a1, a2, "get-kdc-offset", &v8, &v7, a3);
  if (v8)
  {
    krb5_storage_free(v8);
  }

  v5 = v7;
  sub_25225709C(a1, v7);
  close(v5);
  return v4;
}

uint64_t sub_2522585B4(_krb5_context *a1, uint64_t a2, const char *a3, int *a4, char a5, uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = (a5 & 3) != 0;
  v8 = *(a2 + 16);
  if (v8)
  {
    v12 = *v8;
    v13 = open(*v8, a5, a6);
    if (v13 < 0)
    {
      v19 = __error();
      v20 = *v19;
      strerror_r(*v19, __strerrbuf, 0x80uLL);
      krb5_set_error_message(a1, v20, "%s open(%s): %s", a3, v12, __strerrbuf);
    }

    else
    {
      v14 = v13;
      sub_252287100(v13);
      v15 = *(a2 + 16);
      if (v15)
      {
        v16 = *v15;
      }

      v20 = sub_252256F84(a1, v14, v7);
      if (v20)
      {
        close(v14);
      }

      else
      {
        *a4 = v14;
      }
    }

    v21 = *MEMORY[0x277D85DE8];
    return v20;
  }

  else
  {
    v17 = *MEMORY[0x277D85DE8];

    return sub_25226D0E0();
  }
}

uint64_t sub_25225872C(_krb5_context *a1, uint64_t a2, int a3)
{
  if ((a3 - 1) >= 4)
  {
    krb5_abortx(a1, "storage_set_flags called with bad vno (%x)", a3);
  }

  v5 = dword_2522A9ED4[a3 - 1];

  return krb5_storage_set_flags(a2, v5);
}

uint64_t sub_25225877C(_krb5_context *a1, uint64_t a2, int a3)
{
  v10 = 0;
  v11 = 0;
  v5 = krb5_storage_to_data(a2, &v10);
  if (v5)
  {
    v6 = v5;
    krb5_set_error_message(a1, v5, "malloc: out of memory");
  }

  else
  {
    v7 = write(a3, v11, v10);
    v8 = v10;
    krb5_data_free(&v10);
    if (v7 == v8)
    {
      return 0;
    }

    else
    {
      v6 = *__error();
      krb5_set_error_message(a1, v6, "Failed to write FILE credential data");
    }
  }

  return v6;
}

uint64_t sub_252258824(unsigned int *a1, uint64_t a2, const char *a3, uint64_t *a4, int *a5, void *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v34 = 0;
  v33 = 0;
  v11 = sub_2522585B4(a1, a2, a3, &v34, 0, 0);
  if (v11)
  {
    return v11;
  }

  v12 = v34;
  v13 = krb5_storage_from_fd(v34);
  if (!v13)
  {
    krb5_clear_error_message(a1);
    v11 = 12;
    goto LABEL_18;
  }

  v14 = v13;
  v11 = 2529639111;
  krb5_storage_set_eof_code(v13, -1765328242);
  v15 = krb5_ret_int8(v14, &v33 + 1);
  if (v15)
  {
    v16 = v15;
    if (v15 == -1765328242)
    {
      v17 = **(a2 + 16);
      v11 = 2;
      krb5_set_error_message(a1, 2, "Empty credential cache file: %s");
    }

    else
    {
      krb5_set_error_message(a1, v15, "Error reading pvno in cache file: %s", **(a2 + 16));
      v11 = v16;
    }

    goto LABEL_17;
  }

  if (HIBYTE(v33) != 5)
  {
    v11 = 2529639124;
    v27 = **(a2 + 16);
    v18 = "Bad version number in credential cache file: %s";
LABEL_15:
    v19 = a1;
    v20 = -1765328172;
    goto LABEL_16;
  }

  if (krb5_ret_int8(v14, &v33))
  {
    v27 = **(a2 + 16);
    v18 = "Error reading tag in cache file: %s";
    goto LABEL_12;
  }

  v22 = v33;
  *(*(a2 + 16) + 8) = v33;
  sub_25225872C(a1, v14, v22);
  if (v33 - 1 < 3)
  {
LABEL_21:
    v11 = 0;
    *a4 = v14;
    *a5 = v12;
    return v11;
  }

  if (v33 != 4)
  {
    v11 = 2529639124;
    v27 = v33;
    v28 = **(a2 + 16);
    v18 = "Unknown version number (%d) in credential cache file: %s";
    goto LABEL_15;
  }

  v32 = 0;
  if (krb5_ret_int16(v14, &v32))
  {
    v27 = **(a2 + 16);
    v18 = "Error reading tag length in cache file: %s";
    goto LABEL_12;
  }

  if (v32 < 1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v31 = 0;
    v30 = 0;
    if (krb5_ret_int16(v14, &v31 + 1))
    {
      v27 = **(a2 + 16);
      v18 = "Error reading dtag in cache file: %s";
      goto LABEL_12;
    }

    if (krb5_ret_int16(v14, &v31))
    {
      v27 = **(a2 + 16);
      v18 = "Error reading dlength in cache file: %s";
      goto LABEL_12;
    }

    if (HIWORD(v31) != 1)
    {
      break;
    }

    v29 = 0;
    v23 = krb5_ret_int32(v14, &v29);
    if (krb5_ret_int32(v14, a1 + 28) | v23)
    {
      v27 = **(a2 + 16);
      v18 = "Error reading kdc_sec in cache file: %s";
      goto LABEL_12;
    }

    v24 = v29;
    a1[27] = v29;
    if (a6)
    {
      *a6 = v24;
    }

    v25 = v31;
LABEL_38:
    v32 = v32 - v25 - 4;
    if (v32 <= 0)
    {
      goto LABEL_21;
    }
  }

  v25 = v31;
  if (v31 < 1)
  {
    goto LABEL_38;
  }

  v26 = 0;
  while (!krb5_ret_int8(v14, &v30))
  {
    ++v26;
    v25 = v31;
    if (v26 >= v31)
    {
      goto LABEL_38;
    }
  }

  v27 = **(a2 + 16);
  v18 = "Error reading unknown tag in cache file: %s";
LABEL_12:
  v19 = a1;
  v20 = -1765328185;
LABEL_16:
  krb5_set_error_message(v19, v20, v18, v27, v28);
LABEL_17:
  krb5_storage_free(v14);
LABEL_18:
  sub_25225709C(a1, v12);
  close(v12);
  return v11;
}

krb5_error_code krb5_free_host_realm(krb5_context a1, char *const *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2 + 1;
      do
      {
        free(v3);
        v5 = *v4++;
        v3 = v5;
      }

      while (v5);
    }

    free(a2);
  }

  return 0;
}

uint64_t krb5_free_kdc_rep(uint64_t a1, _OWORD *a2)
{
  sub_25228AF18(a2);
  sub_25228AFEC(a2 + 152);
  sub_25228B34C(a2 + 296);
  a2[23] = 0u;
  a2[24] = 0u;
  a2[21] = 0u;
  a2[22] = 0u;
  a2[19] = 0u;
  a2[20] = 0u;
  a2[17] = 0u;
  a2[18] = 0u;
  a2[15] = 0u;
  a2[16] = 0u;
  a2[13] = 0u;
  a2[14] = 0u;
  a2[11] = 0u;
  a2[12] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return 0;
}

uint64_t krb5_generate_seq_number(_krb5_context *a1, uint64_t a2, int *a3)
{
  v5 = *MEMORY[0x277D85C28];
  result = CCRandomCopyBytes();
  if (result)
  {
    krb5_abortx(a1, "Failed to generate random block");
  }

  if ((*a3 & 0x3FFFFFFE) != 0)
  {
    v7 = *a3 & 0x3FFFFFFF;
  }

  else
  {
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t krb5_generate_subkey_extended(_krb5_context *a1, unsigned int *a2, char *a3, void **a4)
{
  v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
  *a4 = v8;
  if (v8)
  {
    if (!a3)
    {
      a3 = *a2;
    }

    random_keyblock = krb5_generate_random_keyblock(a1, a3, v8);
    if (random_keyblock)
    {
      free(*a4);
      *a4 = 0;
    }
  }

  else
  {
    random_keyblock = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return random_keyblock;
}

uint64_t krb5_get_all_client_addrs(_krb5_context *a1, uint64_t a2)
{
  if (*(a1 + 60))
  {
    v2 = 14;
  }

  else
  {
    v2 = 6;
  }

  return sub_252258D90(a1, a2, v2);
}

uint64_t sub_252258D90(_krb5_context *a1, uint64_t a2, char a3)
{
  v16[32] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  if ((a3 & 8) != 0 && (sub_2522591C0(a1, a2, a3) || !*a2))
  {
    if (gethostname(v16, 0x100uLL))
    {
      v7 = __error();
      appended = *v7;
      strerror(*v7);
      krb5_set_error_message(a1, appended, "gethostname: %s");
      goto LABEL_7;
    }

    v9 = sub_252288EC4(v16);
    if (!v9)
    {
      v13 = __error();
      appended = *v13;
      strerror(*v13);
      krb5_set_error_message(a1, appended, "gethostbyname %s: %s");
LABEL_7:
      if (appended)
      {
        goto LABEL_22;
      }

      goto LABEL_2;
    }

    v10 = v9;
    *a2 = 1;
    v11 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
    *(a2 + 8) = v11;
    if (!v11)
    {
      appended = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      goto LABEL_22;
    }

    *v11 = *(v10 + 4);
    v11[2] = 0;
    v11[1] = 0;
    v12 = krb5_data_copy(v11 + 1, *v10[3], *(v10 + 5));
    if (v12)
    {
      appended = v12;
      free(*(a2 + 8));
      goto LABEL_22;
    }
  }

LABEL_2:
  if ((a3 & 4) == 0)
  {
    appended = 0;
    goto LABEL_22;
  }

  v16[0] = 0;
  v16[1] = 0;
  extra_addresses = krb5_get_extra_addresses(a1, v16);
  if (extra_addresses)
  {
    appended = extra_addresses;
LABEL_18:
    krb5_free_addresses(a1, a2);
    goto LABEL_24;
  }

  appended = krb5_append_addresses(a1, a2, v16);
  if (appended)
  {
    goto LABEL_18;
  }

  krb5_free_addresses(a1, v16);
LABEL_22:
  if (!*a2)
  {
    free(*(a2 + 8));
    *(a2 + 8) = 0;
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return appended;
}

uint64_t krb5_get_all_any_addrs(_krb5_context *a1, uint64_t a2)
{
  v4 = 0;
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v11, 0, sizeof(v11));
  *a2 = 0;
  v5 = 1;
  *(a2 + 8) = 0;
  do
  {
    v6 = v5;
    v10 = 128;
    if (!krb5_anyaddr(a1, dword_2522A9EE8[v4], v14, &v10, 0) && !krb5_sockaddr2address(a1, v14, v11))
    {
      v13 = v11;
      LODWORD(v12) = 1;
      appended = krb5_append_addresses(a1, a2, &v12);
      krb5_free_address(a1, v11);
      if (appended)
      {
        krb5_free_addresses(a1, a2);
        goto LABEL_10;
      }
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  if (*a2)
  {
    appended = 0;
  }

  else
  {
    appended = 6;
    krb5_set_error_message(a1, 6, "no addresses found");
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return appended;
}

uint64_t sub_2522590FC(_krb5_context *a1)
{
  v9 = 0;
  v10 = 0;
  if (sub_2522591C0(a1, &v9, 8))
  {
    return 0;
  }

  if (v9)
  {
    v3 = 0;
    v2 = 0;
    do
    {
      v4 = 0;
      v5 = 1;
      while (1)
      {
        v6 = v5;
        v7 = &dword_2522A9EF0[2 * v4];
        if (*(v10 + 24 * v3) == *v7)
        {
          break;
        }

        v5 = 0;
        v4 = 1;
        if ((v6 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v2 = v7[1] | v2;
LABEL_10:
      ++v3;
    }

    while (v3 != v9);
  }

  else
  {
    v2 = 0;
  }

  krb5_free_addresses(a1, &v9);
  return v2;
}

uint64_t sub_2522591C0(_krb5_context *a1, uint64_t a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  if (getifaddrs(&v23) == -1)
  {
    v9 = __error();
    ignore_addresses = *v9;
    strerror(*v9);
    krb5_set_error_message(a1, ignore_addresses, "getifaddrs: %s");
    goto LABEL_32;
  }

  v24 = 0;
  v25 = 0;
  v6 = &v23;
  LODWORD(v7) = -1;
  do
  {
    v6 = *v6;
    v7 = (v7 + 1);
  }

  while (v6);
  if (!v7)
  {
    MEMORY[0x25309DE30](v23);
    ignore_addresses = 6;
    krb5_set_error_message(a1, 6, "no addresses found");
    goto LABEL_32;
  }

  if ((a3 & 4) != 0)
  {
    ignore_addresses = krb5_get_ignore_addresses(a1, v22);
    if (ignore_addresses)
    {
      goto LABEL_32;
    }
  }

  else
  {
    ignore_addresses = 6;
  }

  v10 = malloc_type_calloc(v7, 0x18uLL, 0x10800404ACF7207uLL);
  *(a2 + 8) = v10;
  if (!v10)
  {
    krb5_free_addresses(a1, v22);
    MEMORY[0x25309DE30](v23);
    ignore_addresses = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    goto LABEL_32;
  }

  v11 = v23;
  if (v23)
  {
    v12 = 0;
    do
    {
      if (v11->ifa_flags)
      {
        ifa_addr = v11->ifa_addr;
        if (ifa_addr)
        {
          v14 = *&ifa_addr->sa_len == v24 && *&ifa_addr->sa_data[6] == v25;
          if (!v14 && !krb5_sockaddr_uninteresting(ifa_addr) && (!sub_2522482B8(v11->ifa_addr) || (a3 & 1) != 0))
          {
            v15 = krb5_sockaddr2address(a1, v11->ifa_addr, *(a2 + 8) + 24 * v12);
            if (v15)
            {
              ignore_addresses = v15;
            }

            else if ((a3 & 4) != 0 && krb5_address_search(a1, (*(a2 + 8) + 24 * v12), v22))
            {
              krb5_free_address(a1, *(a2 + 8) + 24 * v12);
              ignore_addresses = 0;
              a3 &= ~2u;
            }

            else
            {
              ignore_addresses = 0;
              ++v12;
            }
          }
        }
      }

      v11 = v11->ifa_next;
    }

    while (v11);
    if ((a3 & 2) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_34;
  }

  v12 = 0;
  if ((a3 & 2) != 0)
  {
LABEL_34:
    if (!v12)
    {
      v18 = v23;
      if (v23)
      {
        v12 = 0;
        do
        {
          if (v18->ifa_flags)
          {
            v19 = v18->ifa_addr;
            if (v19)
            {
              v20 = *&v19->sa_len == v24 && *&v19->sa_data[6] == v25;
              if (!v20 && !krb5_sockaddr_uninteresting(v19) && sub_2522482B8(v18->ifa_addr) && (v18->ifa_flags & 8) != 0)
              {
                v21 = krb5_sockaddr2address(a1, v18->ifa_addr, *(a2 + 8) + 24 * v12);
                if (v21)
                {
                  ignore_addresses = v21;
                }

                else if ((a3 & 4) != 0 && krb5_address_search(a1, (*(a2 + 8) + 24 * v12), v22))
                {
                  krb5_free_address(a1, *(a2 + 8) + 24 * v12);
                  ignore_addresses = 0;
                }

                else
                {
                  ignore_addresses = 0;
                  ++v12;
                }
              }
            }
          }

          v18 = v18->ifa_next;
        }

        while (v18);
      }

      else
      {
        v12 = 0;
      }
    }
  }

LABEL_55:
  if ((a3 & 4) != 0)
  {
    krb5_free_addresses(a1, v22);
  }

  MEMORY[0x25309DE30](v23);
  if (ignore_addresses)
  {
    free(*(a2 + 8));
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = v12;
  }

LABEL_32:
  v16 = *MEMORY[0x277D85DE8];
  return ignore_addresses;
}

uint64_t _krb5_get_krbtgt(_krb5_context *a1, _krb5_ccache *a2, char *data, krb5_creds **a4)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *principal = 0u;
  credentials_with_flags = krb5_cc_get_principal(a1, a2, principal);
  if (!credentials_with_flags)
  {
    if (!data)
    {
      data = principal[0]->data;
    }

    v9 = krb5_make_principal(a1, &principal[1], data, "krbtgt", data, 0);
    if (v9)
    {
      credentials_with_flags = v9;
      v10 = principal[0];
    }

    else
    {
      credentials_with_flags = krb5_get_credentials_with_flags(a1, 1, 0, a2, principal, a4);
      krb5_free_principal(a1, principal[0]);
      v10 = principal[1];
    }

    krb5_free_principal(a1, v10);
  }

  return credentials_with_flags;
}

uint64_t krb5_get_kdc_cred(_krb5_context *a1, _krb5_ccache *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7)
{
  v13 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040AAA52FDDuLL);
  *a7 = v13;
  if (v13)
  {
    v17 = 0;
    krbtgt = _krb5_get_krbtgt(a1, a2, *(*(a6 + 8) + 24), &v17);
    if (krbtgt)
    {
      v15 = krbtgt;
LABEL_6:
      free(*a7);
      *a7 = 0;
      return v15;
    }

    v15 = sub_2522596F4(a1, a2, 0, a3, a4, a6, v17, 0, 0, 0, 0, *a7);
    krb5_free_creds(a1, v17);
    if (v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v15;
}

uint64_t sub_2522596F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, _OWORD *a9, char *a10, char *a11, krb5_principal *a12)
{
  v20 = a9;
  v88 = 0;
  v87 = 0u;
  memset(v86, 0, sizeof(v86));
  v84 = 0;
  v85 = 0;
  *&v83.magic = 0;
  v83.data = 0;
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
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v50 = 0;
  krb5_data_zero(&v83);
  krb5_data_zero(&v84);
  v49[1] = 0;
  v49[0] = 0;
  krb5_generate_random_block(&v55, 4);
  if ((a4 & 0x10000000) != 0 && !a9)
  {
    v21 = a4;
    v22 = a1;
    v23 = a3;
    v24 = a8;
    v25 = a7;
    v26 = decode_Ticket(*(a6 + 96), *(a6 + 88), v51, &v53);
    if (v26)
    {
      return v26;
    }

    a7 = v25;
    a8 = v24;
    a3 = v23;
    a1 = v22;
    a4 = v21;
    v20 = v51;
  }

  if (!krb5_cc_get_kdc_offset(a1, a2, &v50))
  {
    *(a1 + 108) = v50;
  }

  v27 = sub_25226895C(a1, a2, a3, a5, a4, a8, v20, a6, a7, v55, v49, &v54, v86);
  if (!v27)
  {
    v46 = a7;
    v84 = sub_25228AD38(v86);
    v29 = malloc_type_malloc(v84, 0x57A5F9uLL);
    v85 = v29;
    if (!v29)
    {
      v26 = 12;
      goto LABEL_9;
    }

    v30 = sub_25228AD18(v29 + v84 - 1, v84, v86, &v53);
    if (v30)
    {
      v26 = v30;
      free(v85);
      v85 = 0;
      goto LABEL_9;
    }

    if (v84 != v53)
    {
      krb5_abortx(a1, "internal error in ASN.1 encoder");
    }

    *&v87 = 0;
    sub_25228AD48(v86);
    *v47 = 0;
    v37 = krb5_sendto_ctx_alloc(a1, v47, v31, v32, v33, v34, v35, v36);
    if (v37)
    {
      return v37;
    }

    krb5_sendto_ctx_set_func(*v47, sub_25227A434, 0);
    if (a10)
    {
      sub_25227A1EC(a1, *v47, a10);
    }

    if (a11)
    {
      sub_25227A244(a1, *v47, a11);
    }

    ImpersonateBundle = HeimCredGetImpersonateBundle();
    if (ImpersonateBundle)
    {
      if ((*(a1 + 360) & 0x10) == 0)
      {
        v39 = ImpersonateBundle;
        MainBundle = CFBundleGetMainBundle();
        if (MainBundle)
        {
          Identifier = CFBundleGetIdentifier(MainBundle);
          v42 = CFStringCreateWithCString(0, v39, 0x8000100u);
          v43 = v42;
          if (v42 && Identifier)
          {
            if (CFEqual(Identifier, v42))
            {
              sub_25226B748(a1, 5, "Bundle identifiers match, not setting delegate");
            }

            else
            {
              krb5_sendto_set_delegated_app(0, *v47, 0, 0, v39);
            }

            a7 = v46;
            goto LABEL_36;
          }

          a7 = v46;
          if (v42)
          {
LABEL_36:
            CFRelease(v43);
          }
        }
      }
    }

    v26 = krb5_sendto_context(a1, *v47, &v84, *(*(*(a7 + 8) + 16) + 8), &v83);
    krb5_sendto_ctx_free(a1, *v47);
    if (!v26)
    {
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
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      if (sub_25228AF58(v83.data, *&v83.magic, &v58, &v53))
      {
        if (krb5_rd_error(a1, &v83, v56))
        {
          v26 = 2529638952;
          if (*&v83.magic && *v83.data == 4)
          {
            krb5_clear_error_message(a1);
            v26 = 2529639131;
          }

          else
          {
            krb5_clear_error_message(a1);
          }
        }

        else
        {
          v26 = krb5_error_from_rd_error(a1, v56, a6);
          krb5_free_error_contents(a1, v56);
        }
      }

      else
      {
        *v47 = 0;
        v48 = 0;
        v44 = sub_252286C38(a1, v55, 0, a3, &v58);
        if (!v44)
        {
          v44 = krb5_copy_principal(a1, *a6, a12);
          if (!v44)
          {
            v44 = krb5_copy_principal(a1, *(a6 + 8), a12 + 1);
            if (!v44)
            {
              a12[7] = *(a6 + 56);
              if (a8)
              {
                v45 = 1;
              }

              else
              {
                v45 = BYTE2(a4) & 1;
              }

              *v47 = v54;
              v48 = a3;
              v44 = sub_252280B7C(a1, &v58, a12, (v46 + 16), 0, (v46 + 120), v55, v45, 0, sub_252269158, v47);
            }
          }
        }

        v26 = v44;
        krb5_free_kdc_rep(a1, &v58);
      }
    }

    goto LABEL_9;
  }

  v26 = v27;
LABEL_9:
  if (v20 == v51)
  {
    free_Ticket(v51);
  }

  sub_25228AC4C(v49);
  krb5_data_free(&v83);
  krb5_data_free(&v84);
  if (v54)
  {
    krb5_free_keyblock(a1, v54);
  }

  return v26;
}

uint64_t sub_252259C30(uint64_t a1, unsigned int a2, krb5_ccache a3, uint64_t a4, __int128 *a5, __int128 *a6, _OWORD *a7, krb5_creds **a8, uint64_t **a9)
{
  *&v49.magic = 0;
  v49.data = 0;
  v50 = 0;
  v16 = 0;
  if (!krb5_cc_get_config(a1, a3, 0, "lkdc-hostname", &v49))
  {
    v17 = malloc_type_malloc(*&v49.magic + 1, 0x1C97CC67uLL);
    if (!v17)
    {
      goto LABEL_22;
    }

    v16 = v17;
    memcpy(v17, v49.data, *&v49.magic);
    v16[*&v49.magic] = 0;
    krb5_data_free(&v49);
  }

  v18 = 0;
  if (krb5_cc_get_config(a1, a3, 0, "sitename", &v49))
  {
    goto LABEL_7;
  }

  v19 = malloc_type_malloc(*&v49.magic + 1, 0x29F28210uLL);
  if (!v19)
  {
LABEL_22:
    v25 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v25;
  }

  v18 = v19;
  memcpy(v19, v49.data, *&v49.magic);
  v18[*&v49.magic] = 0;
  krb5_data_free(&v49);
LABEL_7:
  v45 = a4;
  if (!krb5_cc_get_kdc_offset(a1, a3, &v50))
  {
    *(a1 + 108) = v50;
  }

  v20 = *(a5 + 1);
  v21 = *(v20 + 8);
  v22 = v21 <= 1 && (a2 & 0x8000) == 0;
  v46 = a7;
  v47 = a6;
  if (v22)
  {
    v25 = 2529638940;
    krb5_set_error_message(a1, -1765328356, "Name too short to do referals, skipping referals");
    goto LABEL_18;
  }

  if (v21 && !strcmp(**(v20 + 16), "kadmin"))
  {
    v25 = 2529638940;
    krb5_set_error_message(a1, -1765328356, "Name[0] is kadmin, skipping referrals");
  }

  else
  {
    v65 = 0u;
    memset(v64, 0, sizeof(v64));
    memset(creds, 0, sizeof(creds));
    v54 = 0u;
    *a8 = 0;
    realm = krb5_principal_get_realm(a1, *a5);
    *&v55 = 0;
    principal = krb5_make_principal(a1, &v55, realm, "krbtgt", realm, 0);
    if (principal)
    {
      v25 = principal;
      goto LABEL_18;
    }

    v25 = sub_25225B030(a1, a3, v55, *a9, v64);
    krb5_free_principal(a1, v55);
    if (!v25)
    {
      v27 = a5[7];
      v61 = a5[6];
      v62 = v27;
      v63 = a5[8];
      v28 = a5[3];
      v57 = a5[2];
      v58 = v28;
      v29 = a5[5];
      v59 = a5[4];
      v60 = v29;
      v30 = a5[1];
      v55 = *a5;
      v56 = v30;
      v31 = krb5_copy_principal(a1, v20, &v55 + 1);
      if (v31)
      {
        v25 = v31;
        v32 = v64;
LABEL_27:
        krb5_free_cred_contents(a1, v32);
        goto LABEL_18;
      }

      v33 = krb5_principal_set_realm(a1, *(&v55 + 1), realm);
      if (!v33)
      {
        v35 = (a2 & 0x10000) == 0 && v47 != 0;
        v36 = 1;
        v37 = 0uLL;
        v44 = 1;
        v43 = v35;
        while (1)
        {
          mcreds_48[4] = v37;
          mcreds_48[5] = v37;
          mcreds_48[2] = v37;
          mcreds_48[3] = v37;
          mcreds_48[0] = v37;
          mcreds_48[1] = v37;
          mcreds[1] = v37;
          mcreds[2] = v37;
          mcreds[0] = v37;
          if (v35 || (krb5_cc_clear_mcred(mcreds), *(&mcreds[0] + 1) = *(&v55 + 1), krb5_timeofday(a1, mcreds_48 + 2), krb5_cc_retrieve_cred(a1, a3, 0x2000000, mcreds, creds)))
          {
            v38 = sub_25225B11C(a1, a3, v45, a2 | 0x8000, &v55, v64, v47, v46, v16, v18, creds);
            if (v38)
            {
              goto LABEL_55;
            }
          }

          if (krb5_principal_compare_any_realm(a1, *(&v55 + 1), *&creds[8]))
          {
            goto LABEL_54;
          }

          if (!krb5_principal_is_krbtgt(a1, *&creds[8]))
          {
            break;
          }

          v39 = *(*(*&creds[8] + 16) + 8);
          v40 = *a9;
          krb5_cc_clear_mcred(mcreds);
          *(&mcreds[0] + 1) = *&creds[8];
          if (v40)
          {
            while (1)
            {
              v41 = *v40;
              if (!*v40)
              {
                break;
              }

              ++v40;
              if (krb5_compare_creds(a1, 0x80000000, mcreds, v41))
              {
                v42 = *(*&v64[8] + 24);
                v25 = 2529639135;
                krb5_set_error_message(a1, -1765328161, "Referral from %s loops back to realm %s");
                goto LABEL_56;
              }
            }
          }

          if (v44 && (WORD4(v54) & 0x2000) != 0)
          {
            v44 = 1;
          }

          else
          {
            v44 = 0;
            DWORD2(v54) &= ~0x2000u;
          }

          v38 = sub_25225B22C(a1, creds, a9);
          if (v38)
          {
            goto LABEL_55;
          }

          v25 = krb5_principal_set_realm(a1, *(&v55 + 1), v39);
          krb5_free_cred_contents(a1, v64);
          *&v64[96] = *&creds[96];
          *&v64[112] = *&creds[112];
          v65 = v54;
          *&v64[32] = *&creds[32];
          *&v64[48] = *&creds[48];
          *&v64[64] = *&creds[64];
          *&v64[80] = *&creds[80];
          *v64 = *creds;
          *&v64[16] = *&creds[16];
          v37 = 0uLL;
          v54 = 0u;
          memset(creds, 0, sizeof(creds));
          if (v25)
          {
            goto LABEL_56;
          }

          ++v36;
          v35 = v43;
          if (v36 == 18)
          {
LABEL_54:
            v38 = krb5_copy_creds(a1, creds, a8);
LABEL_55:
            v25 = v38;
            goto LABEL_56;
          }
        }

        v25 = 2529638947;
        krb5_set_error_message(a1, -1765328349, "Got back an non krbtgt ticket referrals");
LABEL_56:
        krb5_free_principal(a1, *(&v55 + 1));
        krb5_free_cred_contents(a1, v64);
        v32 = creds;
        goto LABEL_27;
      }

      v25 = v33;
      krb5_free_cred_contents(a1, v64);
      krb5_free_principal(a1, *(&v55 + 1));
    }
  }

LABEL_18:
  if (v25 && (a2 & 0x8000) == 0)
  {
    v25 = sub_25225A1C4(a1, a2, a3, v45, a5, v47, v46, v16, v18, a8, a9);
  }

  free(v16);
  free(v18);
  return v25;
}

uint64_t sub_25225A1C4(_krb5_context *a1, unsigned int a2, _krb5_ccache *a3, uint64_t a4, uint64_t *a5, __int128 *a6, _OWORD *a7, char *a8, char *a9, krb5_creds **a10, uint64_t **a11)
{
  realm = krb5_principal_get_realm(a1, *a5);
  krb5_principal_get_realm(a1, a5[1]);
  result = sub_25225B2D8(a1, a2, a3, a4, a5, realm, a6, a7, a8, a9, a10, a11);
  if (result == -1765328377)
  {
    string = krb5_config_get_string(a1, 0, v20, v21, v22, v23, v24, v25, "capaths");
    if (string)
    {
      v27 = string;
      v28 = strcmp(string, realm);
      result = 2529638919;
      if (v28)
      {
        return sub_25225B2D8(a1, a2, a3, a4, a5, v27, a6, a7, a8, a9, a10, a11);
      }
    }

    else
    {
      return 2529638919;
    }
  }

  return result;
}

uint64_t krb5_get_credentials_with_flags(uint64_t a1, krb5_flags a2, int a3, _krb5_ccache *a4, uint64_t a5, krb5_creds **a6)
{
  v64.tv_sec = 0;
  *&v64.tv_usec = 0;
  v63.tv_sec = 0;
  *&v63.tv_usec = 0;
  gettimeofday(&v64, 0);
  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = krb5_enctype_valid(a1, v12);
    if (v13)
    {
      return v13;
    }
  }

  *a6 = 0;
  v14 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040AAA52FDDuLL);
  if (!v14)
  {
    v13 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v13;
  }

  v15 = v14;
  if (*(a5 + 16))
  {
    a2 |= 0x40000000u;
  }

  cred = krb5_cc_retrieve_cred(a1, a4, a2, a5, v14);
  if (cred)
  {
    v13 = cred;
    if (cred != -1765328243)
    {
      v18 = v15;
LABEL_16:
      free(v18);
      return v13;
    }

    v17 = a2 & 1;
  }

  else
  {
    *v51 = 0;
    if ((a2 & 4) != 0 || (krb5_timeofday(a1, v51), *&v15->times.endtime > *v51))
    {
      v13 = 0;
      *a6 = v15;
      return v13;
    }

    v17 = a2 & 1;
    if (a2)
    {
      krb5_cc_remove_cred(a1, a4, 0, v15);
    }

    krb5_free_cred_contents(a1, v15);
  }

  free(v15);
  if (v17)
  {
    v13 = 2529639053;
    sub_25225A82C(a1, *(a5 + 8));
    return v13;
  }

  if ((a2 & 0x40000000) != 0)
  {
    goto LABEL_20;
  }

  if (!*(a1 + 352))
  {
    goto LABEL_20;
  }

  memset(v51, 0, sizeof(v51));
  if (krb5_cc_get_config(a1, a4, *(a5 + 8), "negative-cache", v51))
  {
    goto LABEL_20;
  }

  v61 = 0;
  v36 = time(0);
  v60 = -1765328243;
  v48[0] = 0;
  v37 = krb5_storage_from_data(v51);
  if (!v37)
  {
    krb5_data_free(v51);
    return 12;
  }

  v38 = v37;
  v39 = krb5_ret_uint32(v37, &v61 + 1);
  if (v39 || (v39 = krb5_ret_int32(v38, &v60), v39) || (v39 = krb5_ret_string(v38, v48), v39))
  {
    v13 = v39;
    v40 = v36;
  }

  else
  {
    if (krb5_ret_uint32(v38, &v61))
    {
      v47 = 0;
      LODWORD(v61) = 0;
    }

    else
    {
      v47 = v61 << 32;
    }

    v13 = 0;
    v40 = v47 | HIDWORD(v61);
  }

  v41 = v40 - v36;
  v42 = v36 >= v40;
  v43 = v36 - v40;
  if (v43 != 0 && v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = v41;
  }

  krb5_storage_free(v38);
  krb5_data_free(v51);
  if (v13)
  {
    v18 = v48[0];
    goto LABEL_16;
  }

  if (v44 < *(a1 + 352))
  {
    v62 = 0;
    v13 = v60;
    krb5_unparse_name(a1, *(a5 + 8), &v62);
    v45 = v48[0];
    if (!v48[0])
    {
      v45 = "<no cached error string>";
    }

    v46 = v62;
    if (!v62)
    {
      v46 = "unknown";
    }

    krb5_set_error_message(a1, v13, "%s while looking up '%s' (cached result, timeout in %lld sec)", v45, v46, *(a1 + 352) - v44);
    free(v48[0]);
    v18 = v62;
    goto LABEL_16;
  }

  free(v48[0]);
LABEL_20:
  v19 = (a2 << 27) & 0x10000000 | a3;
  v20 = a2 | (v19 >> 25);
  v62 = 0;
  v13 = sub_252259C30(a1, v19, a4, 0, a5, 0, 0, a6, &v62);
  v21 = v62;
  if (v62)
  {
    sub_25225A898(a1, a4, v62);
    free(v21);
  }

  if (v13 | v20 & 8)
  {
    if ((a2 & 0x40000000) == 0 && (v13 & 0xFFFFFFFE) == 0x96C73A06)
    {
      v31 = krb5_storage_emem();
      memset(v51, 0, sizeof(v51));
      if (v31)
      {
        v32 = v31;
        v33 = time(0);
        krb5_store_uint32(v32, v33);
        krb5_store_int32(v32, v13);
        if (*(a1 + 288) == v13)
        {
          v34 = *(a1 + 280);
          if (v34)
          {
            krb5_store_string(v32, v34);
          }
        }

        if (!krb5_storage_to_data(v32, v51))
        {
          krb5_cc_set_config(a1, a4, *(a5 + 8), "negative-cache", v51);
          krb5_data_free(v51);
        }

        krb5_storage_free(v32);
      }
    }
  }

  else
  {
    krb5_cc_store_cred(a1, a4, *a6);
    if (!krb5_principal_compare_any_realm(a1, (*a6)->client, *(a5 + 8)))
    {
      v22 = *a6;
      *v51 = *&(*a6)->magic;
      v23 = *&v22->is_skey;
      v25 = *&v22->server;
      v24 = *&v22->keyblock.length;
      times = v22->times;
      v55 = v23;
      v52 = v25;
      v53 = v24;
      v26 = *&v22[1].client;
      ticket = v22->ticket;
      second_ticket = v22->second_ticket;
      v58 = *&v22->authdata;
      v59 = v26;
      v56 = ticket;
      v57 = second_ticket;
      v29 = *(a5 + 8);
      v30 = *(v29 + 16);
      *v48 = *v29;
      v49 = v30;
      v50 = "";
      *&v51[2] = v48;
      krb5_cc_store_cred(a1, a4, v51);
    }
  }

  gettimeofday(&v63, 0);
  sub_2522A3BC0(&v63, &v64);
  sub_25226B748(a1, 1, "krb5_get_credentials_with_flags: %s wc: %lld.%06d", *(*a5 + 24), v63.tv_sec, v63.tv_usec);
  return v13;
}

void sub_25225A82C(_krb5_context *a1, const krb5_principal_data *a2)
{
  v3 = 0;
  if (krb5_unparse_name(a1, a2, &v3))
  {
    krb5_clear_error_message(a1);
  }

  else
  {
    krb5_set_error_message(a1, -1765328243, "Matching credential (%s) not found", v3);
    free(v3);
  }
}

void sub_25225A898(_krb5_context *a1, _krb5_ccache *a2, krb5_creds **a3)
{
  v3 = *a3;
  if (*a3)
  {
    v7 = a3 + 1;
    do
    {
      client = v3->client;
      if (krb5_principal_is_krbtgt(a1, client) && strcmp(*(*(client + 16) + 8), *(client + 24)))
      {
        krb5_cc_store_cred(a1, a2, *(v7 - 1));
      }

      v9 = *v7++;
      v3 = v9;
    }

    while (v9);
    v10 = *a3;
    if (*a3)
    {
      v11 = a3 + 1;
      do
      {
        krb5_free_creds(a1, v10);
        v12 = *v11++;
        v10 = v12;
      }

      while (v12);
    }
  }
}

uint64_t krb5_get_creds_opt_alloc(_krb5_context *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004014030ADEuLL);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  v5 = 12;
  krb5_set_error_message(a1, 12, "malloc: out of memory");
  return v5;
}

void krb5_get_creds_opt_free(_krb5_context *a1, void *a2)
{
  v3 = *a2;
  if (v3)
  {
    krb5_free_principal(a1, v3);
  }

  v4 = *(a2 + 2);
  if (v4)
  {
    free_Ticket(v4);
    free(*(a2 + 2));
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;

  free(a2);
}

uint64_t krb5_get_creds_opt_set_impersonate(krb5_context a1, krb5_principal *a2, krb5_const_principal a3)
{
  v6 = *a2;
  if (v6)
  {
    krb5_free_principal(a1, v6);
  }

  return krb5_copy_principal(a1, a3, a2);
}

uint64_t krb5_get_creds_opt_set_ticket(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    free_Ticket(v6);
    free(*(a2 + 16));
    *(a2 + 16) = 0;
  }

  if (a3)
  {
    v7 = malloc_type_malloc(0x48uLL, 0x1090040DEC7D988uLL);
    *(a2 + 16) = v7;
    if (!v7)
    {
      a3 = 12;
      goto LABEL_8;
    }

    a3 = sub_25228AA8C();
    if (a3)
    {
      free(*(a2 + 16));
      *(a2 + 16) = 0;
LABEL_8:
      krb5_set_error_message(a1, a3, "malloc: out of memory");
    }
  }

  return a3;
}

uint64_t krb5_get_creds(_krb5_context *a1, uint64_t a2, _krb5_ccache *a3, const krb5_principal_data *a4, krb5_creds **a5)
{
  v10 = 0uLL;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if (!a2 || (v11 = *(a2 + 12), !v11) || (v12 = krb5_enctype_valid(a1, v11), v10 = 0uLL, !v12))
  {
    v33 = v10;
    v31 = v10;
    v32 = v10;
    v29 = v10;
    v30 = v10;
    v27 = v10;
    v28 = v10;
    principal[0] = v10;
    v26 = v10;
    principal[1] = a4;
    if (_krb5_have_debug(a1))
    {
      *v24 = 0;
      if (!krb5_unparse_name(a1, a4, v24))
      {
        if (a2)
        {
          v13 = *(a2 + 8);
        }

        else
        {
          v13 = 0;
        }

        sub_25226B748(a1, 5, "krb5_get_creds: %s: opt: %u", *v24, v13);
        krb5_xfree(*v24);
      }
    }

    v12 = krb5_cc_get_principal(a1, a3, principal);
    if (!v12)
    {
      if (a2)
      {
        v16 = *(a2 + 8);
        *a5 = 0;
        v17 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040AAA52FDDuLL);
        if (v17)
        {
          v18 = v17;
          if (*(a2 + 12))
          {
            LODWORD(v26) = *(a2 + 12);
            v16 |= 0x40000000u;
          }

LABEL_19:
          cred = krb5_cc_retrieve_cred(a1, a3, v16 & 0x40000000, principal, v18);
          if (cred)
          {
            v14 = cred;
            if (cred != -1765328243)
            {
              free(v18);
              krb5_free_principal(a1, principal[0]);
              goto LABEL_38;
            }

            v21 = v16 & 1;
          }

          else
          {
            *v24 = 0;
            if ((v16 & 4) != 0 || (krb5_timeofday(a1, v24), *&v18->times.endtime > *v24))
            {
              *a5 = v18;
              krb5_free_principal(a1, principal[0]);
              goto LABEL_28;
            }

            v21 = v16 & 1;
            if (v16)
            {
              krb5_cc_remove_cred(a1, a3, 0, v18);
            }
          }

          free(v18);
          if (v21)
          {
            krb5_free_principal(a1, principal[0]);
            sub_25225A82C(a1, principal[1]);
            v14 = 2529639053;
LABEL_38:
            sub_252286DEC(a1, v34);
            sub_25226B748(a1, 5, "krb5_get_creds: ret = %d", v14);
            return v14;
          }

          *v24 = 0;
          if (a2)
          {
            v22 = *a2;
          }

          else
          {
            v22 = 0;
          }

          v14 = sub_252259C30(a1, (v16 >> 3) & 2 | ((((v16 & 2) >> 1) & 1) << 28) | (((v16 >> 5) & 1) << 26) | (((v16 >> 6) & 1) << 16) | (((v16 >> 7) & 1) << 15), a3, v34, principal, v22, *(a2 + 16), a5, v24);
          krb5_free_principal(a1, principal[0]);
          v23 = *v24;
          if (*v24)
          {
            sub_25225A898(a1, a3, *v24);
            free(v23);
          }

          if (v14)
          {
            goto LABEL_38;
          }

          if (!((4 * (v16 & 2)) | v16 & 8))
          {
            krb5_cc_store_cred(a1, a3, *a5);
          }

LABEL_28:
          v14 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        *a5 = 0;
        v19 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040AAA52FDDuLL);
        if (v19)
        {
          v18 = v19;
          v16 = 0;
          goto LABEL_19;
        }
      }

      krb5_free_principal(a1, principal[0]);
      v14 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      return v14;
    }
  }

  return v12;
}

krb5_error_code krb5_get_renewed_creds(krb5_context context, krb5_creds *creds, krb5_principal client, krb5_ccache ccache, char *in_tkt_service)
{
  v18 = 0;
  v19 = 0;
  *v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  *&creds->magic = 0u;
  *&creds->server = 0u;
  *&creds->keyblock.length = 0u;
  creds->times = 0u;
  *&creds->is_skey = 0u;
  creds->ticket = 0u;
  creds->second_ticket = 0u;
  *&creds->authdata = 0u;
  *&creds[1].client = 0u;
  v10 = krb5_copy_principal(context, client, v20);
  if (v10)
  {
    return v10;
  }

  if (in_tkt_service)
  {
    principal = krb5_parse_name(context, in_tkt_service, &v20[1]);
    if (principal)
    {
LABEL_5:
      kdc_cred = principal;
      krb5_free_principal(context, v20[0]);
      return kdc_cred;
    }
  }

  else
  {
    realm = krb5_principal_get_realm(context, client);
    principal = krb5_make_principal(context, &v20[1], realm, "krbtgt", realm, 0);
    if (principal)
    {
      goto LABEL_5;
    }
  }

  if (krb5_get_credentials_with_flags(context, 1, 0, ccache, v20, &v19))
  {
    v15 = 1073742080;
  }

  else
  {
    v15 = v19[1].server & 0xA | 0x40000100;
    krb5_free_creds(context, v19);
  }

  kdc_cred = krb5_get_kdc_cred(context, ccache, v15, 0, v14, v20, &v18);
  krb5_free_principal(context, v20[0]);
  krb5_free_principal(context, v20[1]);
  if (!kdc_cred)
  {
    v16 = v18;
    kdc_cred = krb5_copy_creds_contents(context, v18, creds);
    krb5_free_creds(context, v16);
  }

  return kdc_cred;
}

uint64_t sub_25225B030(_krb5_context *a1, _krb5_ccache *a2, const krb5_principal_data *a3, uint64_t *a4, krb5_creds *a5)
{
  memset(v14, 0, sizeof(v14));
  krb5_cc_clear_mcred(v14);
  *&v14[8] = a3;
  krb5_timeofday(a1, &v14[56]);
  result = krb5_cc_retrieve_cred(a1, a2, -2113929216, v14, a5);
  if (result)
  {
    if (a4 && (v11 = *a4) != 0)
    {
      v12 = a4 + 1;
      while (!krb5_compare_creds(a1, 0x80000000, v14, v11))
      {
        v13 = *v12++;
        v11 = v13;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      return krb5_copy_creds_contents(a1, *(v12 - 1), a5);
    }

    else
    {
LABEL_7:
      sub_25225A82C(a1, a3);
      return 2529639053;
    }
  }

  return result;
}

uint64_t sub_25225B11C(krb5_context context, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __int128 *a7, _OWORD *a8, char *a9, char *a10, krb5_principal *a11)
{
  v12 = a7;
  v24[0] = 0;
  v24[1] = 0;
  if (*(a6 + 120))
  {
    ret_value = 0;
    krb5_appdefault_BOOLean(context, 0, *(*(a6 + 8) + 24), "no-addresses", 0, &ret_value);
    v19 = 0;
    if (!ret_value)
    {
      krb5_get_all_client_addrs(context, v24);
      if (LODWORD(v24[0]))
      {
        v19 = v24;
      }

      else
      {
        v19 = 0;
      }
    }

    v12 = a7;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_2522596F4(context, a2, a3, a4, v19, a5, a6, v12, a8, a9, a10, a11);
  krb5_free_addresses(context, v24);
  return v20;
}

uint64_t sub_25225B22C(_krb5_context *a1, const krb5_creds *a2, void **a3)
{
  if (*a3)
  {
    v6 = -1;
    v7 = *a3;
    do
    {
      v8 = *v7++;
      ++v6;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v9 = malloc_type_realloc(*a3, 8 * (v6 + 2), 0x2004093837F09uLL);
  if (v9)
  {
    *a3 = v9;
    v10 = &v9[8 * v6];
    result = krb5_copy_creds(a1, a2, v10);
    v10[1] = 0;
  }

  else
  {
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return 12;
  }

  return result;
}

uint64_t sub_25225B2D8(_krb5_context *a1, unsigned int a2, _krb5_ccache *a3, uint64_t a4, uint64_t *a5, char *a6, __int128 *a7, _OWORD *a8, char *a9, char *a10, krb5_creds **a11, uint64_t **a12)
{
  v47 = 0;
  *a11 = 0;
  realm = krb5_principal_get_realm(a1, *a5);
  v19 = krb5_principal_get_realm(a1, a5[1]);
  *v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v20 = krb5_copy_principal(a1, *a5, v38);
  if (v20)
  {
    return v20;
  }

  principal = krb5_make_principal(a1, &v38[1], a6, "krbtgt", v19, 0);
  if (principal)
  {
    v20 = principal;
LABEL_36:
    krb5_free_principal(a1, v38[0]);
    return v20;
  }

  v37 = 0u;
  memset(v36, 0, sizeof(v36));
  if (!sub_25225B030(a1, a3, v38[1], *a12, v36))
  {
    v22 = (strcmp(a6, realm) || strcmp(a6, v19)) && (BYTE9(v37) & 0x20) == 0;
    v23 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040AAA52FDDuLL);
    *a11 = v23;
    if (!v23)
    {
      v20 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      goto LABEL_34;
    }

    v20 = sub_25225B11C(a1, a3, a4, a2, a5, v36, a7, a8, a9, a10, v23);
    v24 = *a11;
    if (v20)
    {
      free(v24);
    }

    else
    {
      if (krb5_principal_compare_any_realm(a1, v24[1], a5[1]) == 1)
      {
        v20 = 0;
        if (v22)
        {
          LODWORD((*a11)[1].server) &= ~0x2000u;
        }

LABEL_34:
        krb5_free_cred_contents(a1, v36);
LABEL_35:
        krb5_free_principal(a1, v38[1]);
        goto LABEL_36;
      }

      v20 = 2529638919;
      krb5_free_creds(a1, *a11);
    }

    *a11 = 0;
    goto LABEL_34;
  }

  if (krb5_realm_compare(a1, *a5, a5[1]))
  {
    sub_25225A82C(a1, a5[1]);
    return 2529639053;
  }

  v25 = 1;
  while (1)
  {
    v26 = sub_25225A1C4(a1, a2, a3, a4, v38, 0, 0, a9, a10, &v47, a12);
    if (v26 || ((v27 = v47, server = v47[1].server, !v25) || (server & 0x2000) == 0 ? (v25 = 0, LODWORD(v47[1].server) = server & 0xFFFFDFFF) : (v25 = 1), v26 = sub_25225B22C(a1, v27, a12), v26))
    {
LABEL_23:
      v20 = v26;
      goto LABEL_35;
    }

    v29 = *(v47->client->realm.data + 1);
    v30 = strcmp(v29, v19);
    krb5_free_principal(a1, v38[1]);
    if (!v30)
    {
      break;
    }

    v26 = krb5_make_principal(a1, &v38[1], v29, "krbtgt", v19, 0);
    if (!v26)
    {
      krb5_free_creds(a1, v47);
      if (!v26)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

  krb5_free_principal(a1, v38[0]);
  v31 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040AAA52FDDuLL);
  *a11 = v31;
  if (!v31)
  {
    v20 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    goto LABEL_43;
  }

  v20 = sub_25225B11C(a1, a3, a4, a2, a5, v47, a7, a8, a9, a10, v31);
  v32 = *a11;
  if (v20)
  {
    free(v32);
  }

  else
  {
    if (krb5_principal_compare_any_realm(a1, v32->client, a5[1]) == 1)
    {
      v20 = 0;
      goto LABEL_43;
    }

    v20 = 2529638919;
    krb5_free_creds(a1, *a11);
  }

  *a11 = 0;
LABEL_43:
  if (v47)
  {
    krb5_free_creds(a1, v47);
  }

  return v20;
}

uint64_t sub_25225B744(_krb5_context *a1, void *a2)
{
  *a2 = 0;
  v4 = getuid();
  if (v4)
  {
    v5 = getpwuid(v4);
    if (v5)
    {
      pw_name = v5->pw_name;
      if (!pw_name)
      {
LABEL_4:
        krb5_set_error_message(a1, 25, "unable to figure out current principal");
        return 25;
      }
    }

    else
    {
      pw_name = sub_25225B818();
      if (!pw_name)
      {
        pw_name = getlogin();
        if (!pw_name)
        {
          goto LABEL_4;
        }
      }
    }

    return krb5_make_principal(a1, a2, 0, pw_name, 0);
  }

  else
  {
    v8 = getlogin();
    if ((v8 || (v8 = sub_25225B818()) != 0) && (v9 = v8, strcmp(v8, "root")))
    {
      return krb5_make_principal(a1, a2, 0, v9, "root", 0);
    }

    else
    {
      return krb5_make_principal(a1, a2, 0, "root", 0);
    }
  }
}

char *sub_25225B818()
{
  result = getenv("USER");
  if (!result)
  {
    result = getenv("LOGNAME");
    if (!result)
    {

      return getenv("USERNAME");
    }
  }

  return result;
}

uint64_t krb5_get_default_principal(_krb5_context *a1, krb5_principal *a2)
{
  cache = 0;
  *a2 = 0;
  if (krb5_cc_default(a1, &cache))
  {
    return sub_25225B744(a1, a2);
  }

  principal = krb5_cc_get_principal(a1, cache, a2);
  krb5_cc_close(a1, cache);
  if (principal)
  {
    return sub_25225B744(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25225B8EC(_krb5_context *a1, CFArrayRef theArray, char *const **a3)
{
  length = heim_array_get_length(theArray);
  v7 = malloc_type_calloc(length + 1, 8uLL, 0x10040436913F5uLL);
  *a3 = v7;
  if (length)
  {
    v8 = 0;
    while (1)
    {
      v9 = heim_array_copy_value(theArray, v8);
      if (v9)
      {
        v10 = v9;
        (*a3)[v8] = heim_string_copy_utf8(v9);
        heim_release(v10);
      }

      v11 = *a3;
      if (!(*a3)[v8])
      {
        break;
      }

      if (length == ++v8)
      {
        goto LABEL_9;
      }
    }

    krb5_free_host_realm(a1, v11);
    v12 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  else
  {
    v11 = v7;
LABEL_9:
    v12 = 0;
    a3 = &v11[length];
  }

  *a3 = 0;
  return v12;
}

uint64_t krb5_get_default_realms(_krb5_context *a1, char *const **a2)
{
  result = sub_25225BA28(a1);
  if (!result)
  {
    v5 = *(a1 + 9);

    return sub_25225B8EC(a1, v5, a2);
  }

  return result;
}

uint64_t sub_25225BA28(_krb5_context *a1)
{
  v2 = *(a1 + 9);
  if ((!v2 || !heim_array_get_length(v2)) && krb5_set_default_realm(a1, 0))
  {
    return 2529639136;
  }

  v4 = *(a1 + 9);
  if (v4 && heim_array_get_length(v4))
  {
    return 0;
  }

  v3 = 2529639136;
  krb5_set_error_message(a1, -1765328160, "No default realm found");
  return v3;
}

krb5_error_code krb5_get_default_realm(krb5_context a1, char **a2)
{
  v4 = sub_25225BA28(a1);
  if (!v4)
  {
    v5 = heim_array_copy_value(*(a1 + 9), 0);
    if (v5 && (v6 = v5, *a2 = heim_string_copy_utf8(v5), heim_release(v6), *a2))
    {
      return 0;
    }

    else
    {
      v4 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
    }
  }

  return v4;
}

krb5_error_code krb5_fwd_tgt_creds(krb5_context a1, krb5_auth_context a2, char *a3, krb5_principal a4, krb5_principal a5, krb5_ccache a6, int forwardable, krb5_data *a8)
{
  comp_string = a3;
  if (forwardable)
  {
    v14 = 6;
  }

  else
  {
    v14 = 4;
  }

  if (!a3)
  {
    if (krb5_principal_get_type(a1, a5) == 3)
    {
      comp_string = krb5_principal_get_comp_string(a1, a5, 0);
      v16 = krb5_principal_get_comp_string(a1, a5, 1u);
      if (comp_string)
      {
        v17 = v16;
        v18 = strcmp(comp_string, "host");
        comp_string = 0;
        if (!v18)
        {
          if (v17)
          {
            if (krb5_principal_get_comp_string(a1, a5, 2u))
            {
              comp_string = 0;
            }

            else
            {
              comp_string = v17;
            }
          }
        }
      }
    }

    else
    {
      comp_string = 0;
    }
  }

  realm = krb5_principal_get_realm(a1, a4);
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21 = a4;
  result = krb5_make_principal(a1, v22, realm, "krbtgt", realm, 0);
  if (!result)
  {
    return krb5_get_forwarded_creds(a1, a2, a6, v14, comp_string, &v21, &a8->magic);
  }

  return result;
}

uint64_t krb5_get_forwarded_creds(_krb5_context *a1, uint64_t a2, _krb5_ccache *a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t *a7)
{
  v82 = 0;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v68[0] = 0;
  v68[1] = 0;
  v78 = 0u;
  memset(v79, 0, sizeof(v79));
  v77 = 0x1600000005;
  v80 = 0;
  v81 = 0;
  krb5_data_zero(v68);
  if (!*(a2 + 32))
  {
    kdc_cred = 2529638921;
    krb5_set_error_message(a1, -1765328375, "auth context is missing session key");
    return kdc_cred;
  }

  if (krb5_get_credentials(a1, 0, a3, a6, &v69))
  {
    ret_value.magic = 0;
    realm = krb5_principal_get_realm(a1, *a6);
    krb5_appdefault_BOOLean(a1, 0, realm, "no-addresses", 1, &ret_value.magic);
    if (ret_value.magic)
    {
      LOBYTE(magic) = 0;
LABEL_9:
      v20 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    magic = v69[1].magic;
    krb5_free_creds(a1, v69);
    if (!magic)
    {
      goto LABEL_9;
    }
  }

  v17 = getaddrinfo(a5, 0, 0, &v70);
  if (v17)
  {
    v18 = v17;
    v19 = __error();
    kdc_cred = krb5_eai_to_heim_errno(v18, *v19);
    gai_strerror(v18);
    krb5_set_error_message(a1, kdc_cred, "resolving host %s failed: %s");
    return kdc_cred;
  }

  v25 = v70;
  if (v70)
  {
    v26 = 0;
    v27 = v70;
    do
    {
      ++v26;
      v27 = v27->ai_next;
    }

    while (v27);
  }

  else
  {
    v26 = 0;
  }

  v28 = malloc_type_realloc(v81, 24 * (v80 + v26), 0x10800404ACF7207uLL);
  v29 = v80;
  if (v28)
  {
    v30 = 1;
  }

  else
  {
    v30 = v80 == -v26;
  }

  if (v30)
  {
    v81 = v28;
    if (v80 < v80 + v26)
    {
      v31 = 24 * v80;
      do
      {
        v32 = v81;
        *&v81[v31] = 0;
        krb5_data_zero(&v32[v31 + 8]);
        ++v29;
        v31 += 24;
      }

      while (v29 < (v80 + v26));
      LODWORD(v29) = v80;
    }

    for (; v25; v25 = v25->ai_next)
    {
      memset(&ret_value, 0, sizeof(ret_value));
      v33 = krb5_sockaddr2address(a1, v25->ai_addr, &ret_value);
      if (v33 == -1765328170)
      {
        krb5_clear_error_message(a1);
      }

      else
      {
        kdc_cred = v33;
        if (v33)
        {
          goto LABEL_39;
        }

        if (krb5_address_search(a1, &ret_value, &v80))
        {
          krb5_free_address(a1, &ret_value);
        }

        else
        {
          v34 = &v81[24 * v29];
          v35 = *&ret_value.magic;
          *(v34 + 2) = ret_value.contents;
          *v34 = v35;
          LODWORD(v29) = v29 + 1;
        }
      }

      LODWORD(v80) = v29;
    }

    freeaddrinfo(v70);
    v20 = &v80;
    LOBYTE(magic) = 1;
LABEL_10:
    LODWORD(v78) = 1;
    *(&v78 + 1) = malloc_type_calloc(1uLL, 0x48uLL, 0x1090040DEC7D988uLL);
    if (!*(&v78 + 1))
    {
      kdc_cred = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      return kdc_cred;
    }

    v67 = a7;
    if (!v20)
    {
      v21 = *(a6 + 8);
      *&ret_value.magic = 0;
      *&ret_value.length = 0;
      v84[0] = 0;
      krb5_data_zero(&ret_value);
      config = krb5_cc_get_config(a1, a3, v21, "_forward", &ret_value);
      if (config)
      {
        v23 = config;
        krb5_data_free(&ret_value);
LABEL_57:
        sub_25226B794(a1, 1, v23, "_krb5_get_cached_forward_creds");
        goto LABEL_58;
      }

      v36 = krb5_storage_from_data(&ret_value.magic);
      if (v36)
      {
        v37 = v36;
        v23 = krb5_ret_uint32(v36, v84);
        if (!v23)
        {
          if (v84[0] == a4)
          {
            v38 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040AAA52FDDuLL);
            v82 = v38;
            if (v38)
            {
              v39 = krb5_ret_creds(v37, v38);
              if (v39)
              {
                v23 = v39;
                if (v82)
                {
                  krb5_free_creds(a1, v82);
                  v82 = 0;
                }
              }

              else if (*(v82 + 56) >= time(0))
              {
                v23 = 0;
              }

              else
              {
                krb5_cc_set_config(a1, a3, v21, "_forward", 0);
                krb5_free_creds(a1, v82);
                v82 = 0;
                v23 = -1765328352;
              }
            }

            else
            {
              v23 = krb5_enomem(a1);
            }
          }

          else
          {
            v23 = -1765328349;
            krb5_set_error_message(a1, -1765328349, "cached forward credential not same flags");
          }
        }

        krb5_storage_free(v37);
      }

      else
      {
        v23 = krb5_enomem(a1);
      }

      krb5_data_free(&ret_value);
      if (v23)
      {
        goto LABEL_57;
      }
    }

LABEL_58:
    if (!v82)
    {
      v41 = sub_25228A948(a4);
      kdc_cred = krb5_get_kdc_cred(a1, a3, v41, v20, 0, a6, &v82);
      krb5_free_addresses(a1, &v80);
      if (kdc_cred)
      {
        goto LABEL_90;
      }

      if (!v20)
      {
        v42 = sub_25225C748(a1, a3, *(a6 + 8), a4, v82);
        if (v42)
        {
          sub_25226B794(a1, 1, v42, "_krb5_store_cached_forward_creds");
        }
      }
    }

    v40 = decode_Ticket(*(v82 + 80), *(v82 + 72), *(&v78 + 1), &v72);
    if (v40)
    {
      kdc_cred = v40;
      goto LABEL_90;
    }

    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    LODWORD(v73) = 1;
    *(&v73 + 1) = malloc_type_calloc(1uLL, 0x68uLL, 0x10B00407801D9E3uLL);
    if (!*(&v73 + 1))
    {
      goto LABEL_88;
    }

    if (*a2)
    {
      *&ret_value.magic = 0;
      v84[0] = 0;
      krb5_us_timeofday(a1, &ret_value.magic, v84);
      v44 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
      *(&v74 + 1) = v44;
      v43 = v67;
      if (!v44)
      {
        goto LABEL_88;
      }

      *v44 = *&ret_value.magic;
      v45 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
      *&v75 = v45;
      if (!v45)
      {
        goto LABEL_88;
      }

      *v45 = v84[0];
    }

    else
    {
      *(&v74 + 1) = 0;
      *&v75 = 0;
      v43 = v67;
    }

    v46 = *(a2 + 8);
    if (v46)
    {
      v47 = magic ^ 1;
      if (!*(a2 + 24))
      {
        v47 = 1;
      }

      if ((v47 & 1) == 0)
      {
        addrport = krb5_make_addrport(a1, &v75 + 1, v46, *(a2 + 24));
        if (addrport)
        {
          goto LABEL_96;
        }
      }
    }

    if (!*(a2 + 16))
    {
      goto LABEL_79;
    }

    if (*(a2 + 26))
    {
      ret_value.magic = 0;
      v49 = krb5_principal_get_realm(a1, *(v82 + 8));
      krb5_appdefault_BOOLean(a1, 0, v49, "no-addresses", 0, &ret_value.magic);
      if (!ret_value.magic)
      {
        addrport = krb5_make_addrport(a1, &v76, *(a2 + 16), *(a2 + 26));
        if (addrport)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_79;
    }

    v76 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
    if (v76)
    {
      addrport = krb5_copy_address(a1, *(a2 + 16));
      if (addrport)
      {
LABEL_96:
        kdc_cred = addrport;
        goto LABEL_89;
      }

LABEL_79:
      LODWORD(v73) = 1;
      v50 = *(&v73 + 1);
      copy_EncryptionKey();
      v50[3] = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
      v51 = *v82;
      sub_25228A694();
      v50[4] = malloc_type_calloc(1uLL, 0x18uLL, 0x10800407C14B876uLL);
      v52 = *v82;
      sub_25228A708();
      v53 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
      v50[5] = v53;
      *v53 = *(v82 + 136);
      v54 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
      v50[6] = v54;
      *v54 = *(v82 + 40);
      v55 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
      v50[7] = v55;
      *v55 = *(v82 + 48);
      v56 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
      v50[8] = v56;
      *v56 = *(v82 + 56);
      v57 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
      v50[9] = v57;
      *v57 = *(v82 + 64);
      v50[10] = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
      v58 = *(v82 + 8);
      sub_25228A694();
      v50[11] = malloc_type_calloc(1uLL, 0x18uLL, 0x10800407C14B876uLL);
      v59 = *(v82 + 8);
      sub_25228A708();
      v50[12] = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
      sub_25228A7B4();
      krb5_free_creds(a1, v82);
      v60 = sub_25228B2DC(&v73);
      v61 = malloc_type_malloc(v60, 0xF5681FE4uLL);
      if (v61)
      {
        v62 = v61;
        v63 = sub_25228B2BC(v61 + v60 - 1, v60, &v73, &v72);
        if (!v63)
        {
          sub_25228B2EC(&v73);
          if (v60 == v72)
          {
            v64 = krb5_crypto_init(a1, *(a2 + 32), 0, &v71);
            if (v64)
            {
              goto LABEL_94;
            }

            kdc_cred = krb5_encrypt_EncryptedData(a1, v71, 14, v62, v72, 0, v79);
            free(v62);
            krb5_crypto_destroy(a1, v71);
            if (kdc_cred)
            {
              goto LABEL_84;
            }

            v65 = sub_25228B27C(&v77);
            v66 = malloc_type_malloc(v65, 0x5D5E8B7FuLL);
            if (!v66)
            {
              kdc_cred = 12;
              goto LABEL_84;
            }

            v62 = v66;
            v64 = sub_25228B25C(v66 + v65 - 1, v65, &v77, &v72);
            if (v64)
            {
LABEL_94:
              kdc_cred = v64;
              free(v62);
              goto LABEL_84;
            }

            sub_25228B28C(&v77);
            if (v65 == v72)
            {
              kdc_cred = 0;
              *v43 = v65;
              v43[1] = v62;
              return kdc_cred;
            }
          }

          krb5_abortx(a1, "internal error in ASN.1 encoder");
        }

        kdc_cred = v63;
        free(v62);
      }

      else
      {
        kdc_cred = 12;
      }

      sub_25228B2EC(&v73);
LABEL_84:
      sub_25228B28C(&v77);
      return kdc_cred;
    }

LABEL_88:
    kdc_cred = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
LABEL_89:
    sub_25228B2EC(&v73);
LABEL_90:
    sub_25228B28C(&v77);
    if (v82)
    {
      krb5_free_creds(a1, v82);
    }

    return kdc_cred;
  }

  kdc_cred = 12;
  krb5_set_error_message(a1, 12, "malloc: out of memory");
LABEL_39:
  v20 = &v80;
  krb5_free_addresses(a1, &v80);
  freeaddrinfo(v70);
  if (!kdc_cred)
  {
    LOBYTE(magic) = 1;
    goto LABEL_10;
  }

  return kdc_cred;
}

uint64_t sub_25225C748(_krb5_context *a1, _krb5_ccache *a2, const krb5_principal_data *a3, uint64_t a4, uint64_t a5)
{
  *&v15.magic = 0;
  v15.data = 0;
  krb5_data_zero(&v15);
  v10 = krb5_storage_emem();
  if (v10)
  {
    v11 = v10;
    v12 = krb5_store_uint32(v10, a4);
    if (!v12)
    {
      v12 = krb5_store_creds(v11, a5);
      if (!v12)
      {
        v12 = krb5_storage_to_data(v11, &v15);
        if (!v12)
        {
          v12 = krb5_cc_set_config(a1, a2, a3, "_forward", &v15);
        }
      }
    }

    v13 = v12;
    krb5_data_free(&v15);
    krb5_storage_free(v11);
  }

  else
  {
    v13 = krb5_enomem(a1);
    krb5_data_free(&v15);
  }

  return v13;
}

uint64_t _krb5_get_host_realm_int(_krb5_context *a1, char *a2, int a3, unsigned __int8 ***a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  BOOL_default = krb5_config_get_BOOL_default(a1, 0, 0, a4, a5, a6, a7, a8, "libdefaults");
  if (!a2)
  {
LABEL_19:
    v34 = strchr(a2, 46);
    if (!v34)
    {
      v37 = 2529639129;
      krb5_set_error_message(a1, -1765328167, "unable to find realm of host %s");
      return v37;
    }

    v35 = v34;
    v36 = malloc_type_malloc(0x10uLL, 0x10040436913F5uLL);
    *a4 = v36;
    if (v36)
    {
      *v36 = strdup(v35 + 1);
      if (**a4)
      {
        rk_strupr(**a4);
        v37 = 0;
        (*a4)[1] = 0;
        return v37;
      }

      free(*a4);
    }

    v37 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v37;
  }

  if (a3)
  {
    v19 = !BOOL_default;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  v21 = a2;
  while (1)
  {
    strings = krb5_config_get_strings(a1, 0, v13, v14, v15, v16, v17, v18, "domain_realm");
    if (strings)
    {
      break;
    }

    if (v20 && !sub_25225C9FC(a1, v21, a4, v23, v24, v25, v26, v27))
    {
      return 0;
    }

LABEL_18:
    v21 = strchr(v21 + 1, 46);
    if (!v21)
    {
      goto LABEL_19;
    }
  }

  *a4 = strings;
  if (strcasecmp(*strings, "dns_locate"))
  {
    return 0;
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  v33 = a2;
  while (sub_25225C9FC(a1, v33, a4, v28, v29, v30, v31, v32))
  {
    v33 = strchr(v33 + 1, 46);
    if (!v33)
    {
      goto LABEL_18;
    }
  }

  return 0;
}

uint64_t sub_25225C9FC(uint64_t a1, const char *a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x277D85DE8];
  strings = krb5_config_get_strings(a1, 0, a3, a4, a5, a6, a7, a8, "libdefaults");
  v29 = strings;
  if (strings)
  {
    v11 = strings;
  }

  else
  {
    v11 = &off_2796FF418;
  }

  if (*a2 == 46)
  {
    v12 = a2 + 1;
  }

  else
  {
    v12 = a2;
  }

  v13 = *v11;
  if (*v11)
  {
    v14 = 0;
    do
    {
      if (snprintf(__str, 0x100uLL, "%s.%s.", v13, v12) >= 0x100)
      {
        break;
      }

      v15 = sub_2522888AC(__str, "TXT");
      if (v15)
      {
        v16 = v15;
        v17 = *(v15 + 6);
        if (v17)
        {
          LODWORD(v18) = 0;
          v19 = *(v15 + 6);
          do
          {
            if (*(v19 + 8) == 16)
            {
              v18 = (v18 + 1);
            }

            else
            {
              v18 = v18;
            }

            v19 = *(v19 + 32);
          }

          while (v19);
          if (v18)
          {
            v20 = (v18 + 1);
            v21 = malloc_type_malloc(8 * v20, 0x10040436913F5uLL);
            *a3 = v21;
            if (v21)
            {
              if (v20)
              {
                v22 = 0;
                do
                {
                  *(*a3 + v22) = 0;
                  v22 += 8;
                }

                while (8 * v20 != v22);
              }

              v23 = 0;
              while (1)
              {
                if (*(v17 + 8) == 16)
                {
                  v24 = strdup(*(v17 + 24));
                  if (!v24)
                  {
                    for (i = 0; i != v18; ++i)
                    {
                      free(*(*a3 + i));
                    }

                    free(*a3);
                    break;
                  }

                  *(*a3 + v23++) = v24;
                }

                v17 = *(v17 + 32);
                if (!v17)
                {
                  sub_252287F68(v16);
                  v26 = 0;
                  goto LABEL_34;
                }
              }
            }
          }
        }

        sub_252287F68(v16);
      }

      v13 = v11[++v14];
    }

    while (v13);
  }

  v26 = 0xFFFFFFFFLL;
LABEL_34:
  if (v29)
  {
    krb5_config_free_strings(v29);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

krb5_error_code krb5_get_host_realm(krb5_context a1, const char *a2, char ***a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = 0;
  if (a2)
  {
    __strlcpy_chk();
  }

  else
  {
    if (gethostname(__s, 0x100uLL))
    {
      *a3 = 0;
      v23 = *__error();
      goto LABEL_23;
    }

    __s[255] = 0;
  }

  sub_2522653C4(__s);
  v6 = heim_array_create();
  if (!v6)
  {
    v23 = 12;
    goto LABEL_23;
  }

  v13 = v6;
  strings = krb5_config_get_strings(a1, 0, v7, v8, v9, v10, v11, v12, "domain_realm");
  if (strings)
  {
    v15 = strings;
    v26 = strings;
    sub_25225CE24(v13, strings);
    krb5_free_host_realm(a1, v15);
  }

  v27[0] = __s;
  v27[1] = v13;
  krb5_plugin_run_f(a1, "krb5", "krb5_configuration", 1u, 0, v27, sub_25225CE90);
  v16 = strchr(__s, 46) != 0;
  if (!_krb5_get_host_realm_int(a1, __s, v16, &v26, v17, v18, v19, v20))
  {
    v21 = v26;
    if (v26)
    {
      sub_25225CE24(v13, v26);
      krb5_free_host_realm(a1, v21);
    }
  }

  length = heim_array_get_length(v13);
  if (!a2 || length)
  {
    if (!heim_array_get_length(v13))
    {
      v23 = -1765328167;
      krb5_set_error_message(a1, -1765328167, "Unable to find realm of self");
      goto LABEL_23;
    }

    v23 = sub_25225B8EC(a1, v13, a3);
    goto LABEL_22;
  }

  if (!krb5_get_default_realms(a1, a3))
  {
    v23 = 0;
LABEL_22:
    heim_release(v13);
    goto LABEL_23;
  }

  v23 = -1765328167;
  krb5_set_error_message(a1, -1765328167, "Unable to find realm of host %s");
LABEL_23:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

char *sub_25225CE24(__CFArray *a1, char **a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = a2 + 1;
    do
    {
      v5 = heim_string_create(result);
      if (v5)
      {
        v6 = v5;
        if (!sub_2522A7558(a1, v5))
        {
          heim_array_append_value(a1, v6);
        }

        heim_release(v6);
      }

      v7 = *v4++;
      result = v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_25225CE90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    return v4(a1, *a4, a3, a4[1], sub_25225CEBC);
  }

  else
  {
    return 2529639161;
  }
}

void sub_25225CEBC(int a1, __CFArray *a2, char *cStr)
{
  v4 = heim_string_create(cStr);
  if (v4)
  {
    v5 = v4;
    heim_array_append_value(a2, v4);

    heim_release(v5);
  }
}

void sub_25225CF18()
{
  v0 = objc_autoreleasePoolPush();
  AnalyticsSendEventLazy();
  objc_autoreleasePoolPop(v0);
}

uint64_t sub_25225CFCC(uint64_t a1)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6[0] = @"AS_REQ_replykey_et";
  v7[0] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v6[1] = @"AS_REQ_useret_et";
  v7[1] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 44)];
  v6[2] = @"AS_REQ_preauth";
  v2 = [MEMORY[0x277CCACA8] stringWithCString:*(a1 + 32) encoding:4];
  v3 = @"unknown";
  if (v2)
  {
    v3 = v2;
  }

  v7[2] = v3;
  v6[3] = @"AS_REQ_FAST";
  v7[3] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t krb5_getportbyname(int a1, char *a2, char *a3, unsigned int a4)
{
  v5 = getservbyname(a2, a3);
  if (v5)
  {
    return v5->s_port;
  }

  else
  {
    return bswap32(a4) >> 16;
  }
}

uint64_t krb5_process_last_request(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(a2 + 88);
    if (v6)
    {
      if (*(v6 + 48))
      {
        v7 = malloc_type_calloc((*(a3 + 784) + 1), 8uLL, 0x2004093837F09uLL);
        if (!v7)
        {
          v14 = 12;
          krb5_set_error_message(a1, 12, "malloc: out of memory");
          return v14;
        }

        v8 = v7;
        if (*(a3 + 784))
        {
          v9 = 0;
          v10 = 0;
          do
          {
            v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040F7F8B94BuLL);
            v8[v10] = v11;
            if (!v11)
            {
              break;
            }

            v12 = *(a3 + 792) + v9;
            *v11 = *v12;
            v11[1] = *(v12 + 8);
            ++v10;
            v9 += 16;
          }

          while (v10 < *(a3 + 784));
        }

        (*(*(a2 + 88) + 48))(a1, v8, *(*(a2 + 88) + 56));
        if (*(a3 + 784))
        {
          v13 = 0;
          do
          {
            free(v8[v13++]);
          }

          while (v13 < *(a3 + 784));
        }

        free(v8);
      }
    }
  }

  krb5_init_creds_warn_user(a1, a3);
  return 0;
}

uint64_t krb5_init_creds_warn_user(_krb5_context *a1, uint64_t a2)
{
  if (!*(a2 + 904) || *(a2 + 920))
  {
    return 0;
  }

  *v36 = 0;
  *(a2 + 920) = 1;
  krb5_timeofday(a1, v36);
  krb5_principal_get_realm(a1, *(a2 + 8));
  v5 = *v36;
  time = krb5_config_get_time(a1, 0, v6, v7, v8, v9, v10, v11, "realms");
  if (time < 0)
  {
    time = krb5_config_get_time(a1, 0, v13, v14, v15, v16, v17, v18, "libdefaults");
    if (time < 0)
    {
      time = 604800;
    }
  }

  if (*(a2 + 784))
  {
    v19 = 0;
    v20 = 0;
    v21 = time + v5;
    do
    {
      v22 = *(a2 + 792);
      v23 = *(v22 + v19 + 8);
      if (v23 <= v21)
      {
        v24 = *(v22 + v19);
        if (v24 == 6)
        {
          v25 = "Your password will expire at ";
          goto LABEL_14;
        }

        if (v24 == 7)
        {
          v25 = "Your account will expire at ";
LABEL_14:
          sub_25225D480(a1, *(a2 + 904), *(a2 + 912), v25, v23);
        }
      }

      ++v20;
      v19 += 16;
    }

    while (v20 < *(a2 + 784));
  }

  if (krb5_enctype_warning(a1, *(a2 + 1024)))
  {
    v31 = (a2 + 1024);
  }

  else
  {
    v31 = (a2 + 24);
    if (!krb5_enctype_warning(a1, *(a2 + 24)))
    {
      return 0;
    }
  }

  if (*(a2 + 904))
  {
    v32 = *v31;
    if (v32)
    {
      if (!krb5_config_get_BOOL_default(a1, 0, 0, v26, v27, v28, v29, v30, "libdefaults"))
      {
        v34 = 0;
        v35 = 0;
        krb5_enctype_to_string(a1, v32, &v35);
        v33 = v35;
        if (!v35)
        {
          v33 = "unknown";
        }

        asprintf(&v34, "Encryption type %s(%d) used for authentication is weak and will be deprecated", v33, v32);
        if (v34)
        {
          (*(a2 + 904))(a1, *(a2 + 912), 0, v34, 0, 0);
          free(v34);
        }

        free(v35);
      }
    }
  }

  return 0;
}

void sub_25225D480(uint64_t a1, void (*a2)(uint64_t, uint64_t, void, char *, void, void), uint64_t a3, const char *a4, time_t a5)
{
  v10 = 0;
  v11 = a5;
  v9 = ctime(&v11);
  if ((asprintf(&v10, "%s%s", a4, v9) & 0x80000000) == 0)
  {
    if (v10)
    {
      a2(a1, a3, 0, v10, 0, 0);
      free(v10);
    }
  }
}

uint64_t _krb5_make_pa_enc_challange(_krb5_context *a1, _DWORD **a2, uint64_t a3, unsigned int *a4)
{
  *v23 = 0;
  v24 = 0;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  krb5_us_timeofday(a1, v23, &v20);
  v19 = v20;
  v24 = &v19;
  v8 = sub_25228AD98(v23);
  v9 = malloc_type_malloc(v8, 0xCDB4B90BuLL);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  v11 = sub_25228AD78(v9 + v8 - 1, v8, v23, &v22);
  if (!v11)
  {
    if (v8 == v22)
    {
      v12 = krb5_encrypt_EncryptedData(a1, a2, a3, v10, v8, 0, v21);
      free(v10);
      if (v12)
      {
        return v12;
      }

      v14 = sub_25228A998(v21);
      v15 = malloc_type_malloc(v14, 0xB57CC850uLL);
      if (!v15)
      {
        v12 = 12;
        goto LABEL_12;
      }

      v16 = v15;
      v17 = sub_25228A978(v15 + v14 - 1, v14, v21, &v22);
      if (v17)
      {
        v12 = v17;
        free(v16);
LABEL_12:
        sub_25228A9A8(v21);
        return v12;
      }

      sub_25228A9A8(v21);
      if (v14 == v22)
      {
        v12 = krb5_padata_add(a1, a4, 138, v16, v14);
        if (!v12)
        {
          return v12;
        }

        v13 = v16;
        goto LABEL_4;
      }
    }

    krb5_abortx(a1, "internal error in ASN.1 encoder");
  }

  v12 = v11;
  v13 = v10;
LABEL_4:
  free(v13);
  return v12;
}

uint64_t _krb5_validate_pa_enc_challange(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  v15[0] = 0;
  v15[1] = 0;
  *v14 = 0;
  v13 = 0;
  v12 = 0;
  v7 = krb5_decrypt_EncryptedData(a1, a2, a3, a4, &v16);
  if (!v7)
  {
    v8 = sub_25228AD58(v17, v16, v15, &v12);
    krb5_data_free(&v16);
    if (v8)
    {
      v7 = 2529638936;
      sub_25226B748(a1, 5, "Failed to decode PA-ENC-TS_ENC - %s", a5);
    }

    else
    {
      krb5_us_timeofday(a1, v14, &v13);
      if (krb5_time_abs(*v14, v15[0]) <= *(a1 + 10))
      {
        v7 = 0;
      }

      else
      {
        krb5_format_time(a1, v15[0], v18, 0x64uLL, 1);
        v9 = krb5_time_abs(*v14, v15[0]);
        sub_25226B748(a1, 0, "Too large time skew, client time %s is out by %u > %d seconds -- %s", v18, v9, *(a1 + 10), a5);
        v7 = 2529638949;
      }
    }

    sub_25228ADA8(v15);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void *_krb5_srp_validate_group(int a1)
{
  if (a1 == 1)
  {
    return &unk_2864726B0;
  }

  else
  {
    return 0;
  }
}

uint64_t _krb5_srp_pkisize(uint64_t a1)
{
  (*(a1 + 8))();

  return ccdh_ccn_size();
}

void *_krb5_srp_create(uint64_t a1)
{
  v2 = (*(a1 + 16))();
  (*(a1 + 8))();
  v3 = ccdh_ccn_size();
  v4 = malloc_type_malloc(4 * (*v2 + v3) + 48, 0x106004070A5FD05uLL);
  if (v4)
  {
    ccsrp_ctx_init();
  }

  return v4;
}

uint64_t _krb5_srp_create_pa(_krb5_context *a1, uint64_t a2, const krb5_principal_data *a3, const char *a4, uint64_t a5, size_t *a6)
{
  (*(a2 + 8))();
  v12 = ccdh_ccn_size();
  v13 = krb5_data_alloc(a6, v12);
  if (!v13)
  {
    v28[1] = 0;
    v29 = 0;
    v28[0] = 0;
    v14 = krb5_unparse_name_flags(a1, a3, 2, &v29);
    if (v14)
    {
      v13 = v14;
LABEL_7:
      krb5_data_free(a6);
      return v13;
    }

    v15 = (*(a2 + 16))();
    v16 = krb5_data_alloc(v28, *v15);
    if (v16 || ((*(a2 + 16))(), strlen(a4), v17 = *(a5 + 8), v18 = *(a5 + 16), v19 = *(a5 + 24), v20 = *(*(a2 + 16))(), v16 = ccpbkdf2_hmac(), v16))
    {
      v13 = v16;
      free(v29);
      goto LABEL_7;
    }

    v22 = _krb5_srp_create(a2);
    if (v22)
    {
      v23 = v22;
      v24 = *(a5 + 8);
      v25 = *(a5 + 16);
      v26 = a6[1];
      verifier = ccsrp_generate_verifier();
      krb5_data_free(v28);
      krb5_xfree(v23);
      krb5_xfree(v29);
      if (verifier)
      {
        return 22;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      krb5_data_free(a6);
      krb5_data_free(v28);
      krb5_xfree(v29);
      return 12;
    }
  }

  return v13;
}

uint64_t _krb5_srp_reply_key(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = **(a2 + 24);
  v11 = 0;
  return _krb5_pk_kdf(a1, &v10, a4, a5, a6, 0, a3, a7, a8, 0, a9);
}

uint64_t sub_25225DAEC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 376))
  {
    return 0;
  }

  else
  {
    return 2314790669;
  }
}

uint64_t sub_25225DB04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9)
{
  if (a6)
  {
    result = sub_252270F68(a1, *(a5 + 32), *(a2 + 376), *(a6 + 120), a7, *(a2 + 188), a2 + 192, a4, (a2 + 944));
    if (!result)
    {
      *(a2 + 444) |= 4u;
    }
  }

  else
  {
    v11 = *(a2 + 376);
    if (!v11)
    {
      return 2314790668;
    }

    result = sub_2522703B8(a1, v11, *(a2 + 384), 0, a5 + 16, *(a2 + 188), a9, a8);
    if (!result)
    {
      return 2314790668;
    }
  }

  return result;
}

uint64_t sub_25225DBA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9)
{
  if (a6)
  {
    result = sub_252270F68(a1, *(a5 + 32), *(a2 + 376), *(a6 + 120), a7, *(a2 + 188), a2 + 192, a4, (a2 + 944));
    if (!result)
    {
      *(a2 + 444) |= 4u;
    }
  }

  else
  {
    v11 = *(a2 + 376);
    if (!v11)
    {
      return 2314790668;
    }

    result = sub_2522703B8(a1, v11, *(a2 + 384), 1, a5 + 16, *(a2 + 188), a9, a8);
    if (!result)
    {
      return 2314790668;
    }
  }

  return result;
}

uint64_t sub_25225DC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 336))
  {
    return 2314790669;
  }

  result = 0;
  *a3 = 1;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_25225DC60(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned int *a9)
{
  v11 = 2314790669;
  if (!a4)
  {
    sub_25226B748(a1, 0, "KDC didn't return any SRP pa data");
    goto LABEL_14;
  }

  v14 = *a3;
  if (*a3 > 2)
  {
    if (v14 == 3)
    {
      v84 = 0;
      v85[0] = 0;
      v82 = 0;
      v83[0] = 0;
      if (a6)
      {
        if (!sub_25228B814(*(a4 + 16), *(a4 + 8), &v84, &v82))
        {
          if (v84 != *(a3 + 24))
          {
            *a3 = 4;
            sub_25228B834(&v84);
            return v11;
          }

          v33 = *(a3 + 16);
          v34 = ccsrp_client_verify_session();
          sub_25228B834(&v84);
          if (v34)
          {
            v35 = *(a2 + 944);
            if (v35)
            {
              krb5_free_keyblock(a1, v35);
            }

            v36 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
            *(a2 + 944) = v36;
            if (v36)
            {
              v37 = *(a6 + 16);
              v86 = *(a6 + 24);
              *&v87 = *(a6 + 40);
              if (!_krb5_principalname2krb5_principal(a1, v83, &v86, v37))
              {
                v38 = *(a6 + 120);
                v39 = *(a3 + 8);
                v40 = *(a3 + 16);
                v41 = MEMORY[0x25309D8B0](*(v40 + 8));
                v42 = *(a3 + 24);
                v43 = *(a2 + 944);
                v86 = **(v39 + 24);
                *&v87 = 0;
                LODWORD(v38) = _krb5_pk_kdf(a1, &v86, v40 + 32 * v41 + 32, v42, &v83[0]->magic, 0, v38, a2 + 192, a3 + 56, 0, v43);
                krb5_free_principal(a1, v83[0]);
                if (!v38)
                {
                  v11 = 0;
                  *(a2 + 444) |= 4u;
                }
              }
            }
          }

          else
          {
            sub_25226B748(a1, 0, "Failed to validate the KDC");
          }
        }
      }

      else
      {
        sub_25226B748(a1, 0, "KDC didn't return an AS-REP in last step of verifier");
      }

      goto LABEL_14;
    }

    if (v14 == 4)
    {
      return v11;
    }

    goto LABEL_18;
  }

  if (v14 == 1)
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    v83[0] = 0;
    v85[0] = 0;
    v85[1] = 0;
    v84 = 0;
    if (sub_25228B734(*(a4 + 16), *(a4 + 8), &v86, v83))
    {
      goto LABEL_14;
    }

    if (!krb5_data_copy((a3 + 56), *(a4 + 16), *(a4 + 8)))
    {
      v29 = v86;
      if (v86)
      {
        v30 = *(&v86 + 1);
        v31 = v86;
        while (*v30 != 1)
        {
          v30 += 32;
          if (!--v31)
          {
            *(a3 + 8) = 0;
            goto LABEL_26;
          }
        }

        *(a3 + 8) = &unk_2864726B0;
        if (!copy_KRB5_SRP_PA())
        {
          v44 = _krb5_srp_create(*(a3 + 8));
          *(a3 + 16) = v44;
          if (v44)
          {
            *(a3 + 24) = *(*(*(a3 + 8) + 16))();
            (*(*(a3 + 8) + 8))();
            *(a3 + 32) = ccdh_ccn_size();
            if (!krb5_data_alloc((a3 + 40), *(a3 + 24)))
            {
              (*(*(a3 + 8) + 16))();
              strlen(*(a2 + 336));
              v45 = *(v30 + 8);
              v46 = *(v30 + 16);
              v47 = *(v30 + 24);
              v48 = *(a3 + 24);
              v49 = *(a3 + 48);
              v50 = ccpbkdf2_hmac();
              sub_25228B754(&v86);
              if (v50 || krb5_data_alloc(v85, *(a3 + 32)))
              {
                goto LABEL_14;
              }

              v51 = *(a3 + 16);
              LODWORD(v84) = **(a3 + 8);
              ccDRBGGetRngState();
              ccsrp_client_start_authentication();
              v52 = sub_25228B784(&v84);
              v53 = malloc_type_malloc(v52, 0xAB8E836CuLL);
              if (v53)
              {
                v54 = v53;
                if (!sub_25228B764(v52 + v53 - 1, v52, &v84, v83))
                {
                  v72 = sub_25228B794(&v84);
                  if (v52 != v83[0])
                  {
                    sub_2522A7CC8(v72, v73, v74, v75, v76, v77, v78, v79);
                  }

                  if (krb5_padata_add(a1, a9, 250, v54, v52))
                  {
                    goto LABEL_58;
                  }

                  v71 = 2;
                  goto LABEL_60;
                }

                free(v54);
              }

              sub_25228B794(&v84);
LABEL_14:
              *a3 = 4;
              return v11;
            }
          }
        }
      }

      else
      {
LABEL_26:
        sub_25226B748(a1, 0, "KDC didn't send a good SRP group for us, sent %u group(s)", v29);
      }
    }

    *a3 = 4;
    sub_25228B754(&v86);
    return v11;
  }

  if (v14 != 2)
  {
LABEL_18:
    krb5_abortx(a1, "internal state machine error");
  }

  v84 = 0;
  v85[0] = 0;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  v83[0] = 0;
  v83[1] = 0;
  v16 = sub_25228B7A4(*(a4 + 16), *(a4 + 8), &v84, &v80);
  if (v16)
  {
    goto LABEL_14;
  }

  if (v84 != *(a3 + 32))
  {
    goto LABEL_12;
  }

  v24 = *(a5 + 24);
  if (!v24)
  {
    sub_2522A7CB0(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  v25 = *(a5 + 32);
  v26 = *v24;
  *&v87 = *(v24 + 16);
  v86 = v26;
  if (_krb5_principalname2krb5_principal(a1, &v82, &v86, v25))
  {
    goto LABEL_12;
  }

  v27 = krb5_unparse_name_flags(a1, v82, 2, &v81);
  krb5_free_principal(a1, v82);
  if (v27)
  {
    goto LABEL_12;
  }

  if (!krb5_data_alloc(v83, *(a3 + 24)))
  {
    sub_25226B748(a1, 5, "ccsrp client start for user: %s", v81);
    v55 = *(a3 + 16);
    v56 = *(a3 + 40);
    v57 = *(a3 + 48);
    v58 = *(a3 + 80);
    v59 = *(a3 + 88);
    v60 = ccsrp_client_process_challenge();
    sub_25228B7C4(&v84);
    if (v60)
    {
      *a3 = 4;
      sub_25228B804(v83);
      return v11;
    }

    v61 = sub_25228B7F4(v83);
    v62 = malloc_type_malloc(v61, 0xCA8FADC3uLL);
    if (!v62)
    {
      goto LABEL_55;
    }

    v54 = v62;
    if (sub_25228B7D4(v62 + v61 - 1, v61, v83, &v80))
    {
      free(v54);
LABEL_55:
      sub_25228B804(v83);
      goto LABEL_14;
    }

    v63 = sub_25228B804(v83);
    if (v61 != v80)
    {
      sub_2522A7C98(v63, v64, v65, v66, v67, v68, v69, v70);
    }

    if (krb5_padata_add(a1, a9, 250, v54, v61))
    {
LABEL_58:
      free(v54);
      goto LABEL_14;
    }

    v71 = 3;
LABEL_60:
    *a3 = v71;
    return 2314790668;
  }

  free(v81);
LABEL_12:
  *a3 = 4;
  sub_25228B7C4(&v84);
  return v11;
}

uint64_t sub_25225E234(uint64_t a1)
{
  free(*(a1 + 16));
  krb5_data_free((a1 + 56));
  krb5_data_free((a1 + 40));

  return free_KRB5_SRP_PA(a1 + 72);
}

uint64_t sub_25225E280(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9)
{
  v34 = 0;
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  if (a6)
  {
    v13 = *(a6 + 120);
  }

  else
  {
    v13 = 0;
  }

  v14 = 2314790668;
  memset(&v39, 0, sizeof(v39));
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  LODWORD(v40[0]) = v13;
  v15 = sub_252261E04(a1, *(a2 + 8), a5, v40, a8);
  if (!v15)
  {
    sub_25226B748(a1, 5, "no ppaid found");
    return v14;
  }

  v16 = v15;
  v17 = *v15;
  if (!v17)
  {
    return 2314790669;
  }

  if (*(a2 + 944))
  {
    krb5_free_keyblock(a1, *(a2 + 944));
    v17 = *v16;
  }

  v31 = *(v16 + 2);
  v18 = *(v16 + 4);
  v32 = *(v16 + 3);
  v19 = *(a2 + 352);
  v20 = *(a2 + 360);
  v29 = v31;
  *&v30 = v32;
  v21 = v20(a1, v17, v19, &v29, v18, a2 + 944);
  v22 = sub_252261EDC(a1, v40);
  if (v21)
  {
    sub_25226B748(a1, 5, "enc-chal: failed to build key", v22);
    return v21;
  }

  v23 = krb5_crypto_init(a1, *(a2 + 944), 0, &v34);
  if (v23)
  {
    return v23;
  }

  krb5_crypto_getenctype(a1, *(a2 + 984), &v33);
  v24 = "kdcchallengearmor";
  if (!a6)
  {
    v24 = "clientchallengearmor";
  }

  v25 = 20;
  if (a6)
  {
    v25 = 17;
  }

  v37 = v25;
  v38 = v24;
  v35 = 17;
  v36 = "challengelongterm";
  v26 = krb5_crypto_fx_cf2(a1, *(a2 + 984), v34, &v37, &v35, v33, &v39);
  krb5_crypto_destroy(a1, v34);
  if (v26)
  {
    return v26;
  }

  v26 = krb5_crypto_init(a1, &v39, 0, &v34);
  krb5_free_keyblock_contents(a1, &v39);
  if (v26)
  {
    return v26;
  }

  if (a6)
  {
    sub_25226B748(a1, 5, "ENC_CHAL rep key", 0, 0, 0, 0, 0);
    if (!*(a2 + 1016))
    {
      krb5_crypto_destroy(a1, v34);
      sub_25226B748(a1, 5, "ENC_CHAL w/o strengthen_key");
      return 2529639059;
    }

    if (a4)
    {
      if (sub_25228A958(*(a4 + 16), *(a4 + 8), &v29, &v31))
      {
        v14 = 2529638943;
        sub_25226B748(a1, 5, "Failed to decode ENC_CHAL KDC reply");
      }

      else
      {
        v14 = _krb5_validate_pa_enc_challange(a1, v34, 55, &v29, "KDC");
        sub_25228A9A8(&v29);
        krb5_crypto_destroy(a1, v34);
      }

      return v14;
    }

    krb5_crypto_destroy(a1, v34);
    sub_25226B748(a1, 0, "KDC response missing");
    return 2314790669;
  }

  pa_enc_challange = _krb5_make_pa_enc_challange(a1, v34, 54, a9);
  krb5_crypto_destroy(a1, v34);
  if (pa_enc_challange)
  {
    sub_25226B748(a1, 5, "enc-chal: failed build enc challange");
    return pa_enc_challange;
  }

  return v14;
}

uint64_t sub_25225E5B8(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  krb5_free_principal(a1, *(a3 + 8));
  *(a3 + 8) = 0;
  return 0;
}

uint64_t sub_25225E5EC(krb5_context a1, uint64_t a2, krb5_principal *a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned int *a9)
{
  v16 = a3 + 1;
  v15 = a3[1];
  if (v15)
  {
    if (krb5_principal_compare(a1, v15, *(a2 + 8)))
    {
      if (*v16)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a3 = 0;
      krb5_free_principal(a1, a3[1]);
      a3[1] = 0;
    }
  }

  v17 = krb5_copy_principal(a1, *(a2 + 8), v16);
  if (v17)
  {
    return v17;
  }

LABEL_7:
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  if (a6)
  {
    LODWORD(v48[0]) = *(a6 + 120);
    v18 = sub_252261E04(a1, *(a2 + 8), a5, v48, a8);
    if (v18)
    {
LABEL_11:
      v19 = *(a6 + 120);
      *v46 = *(v18 + 2);
      v20 = *(v18 + 4);
      v47 = *(v18 + 3);
      v21 = *(a2 + 352);
      v22 = *(a2 + 360);
      v54 = *v46;
      *&v55 = v47;
      v17 = v22(a1, v19, v21, &v54, v20, a2 + 944);
      sub_252261EDC(a1, v48);
      return v17;
    }

    if (*(a2 + 448))
    {
      v18 = (a2 + 448);
      goto LABEL_11;
    }

    sub_25226B748(a1, 0, "no paid when building key, build a default salt structure ?");
    return 2314790669;
  }

  v23 = sub_252261E04(a1, *(a2 + 8), a5, v48, a8);
  if (!v23)
  {
    v17 = 2314790668;
    sub_25226B748(a1, 5, "TS-ENC: waiting for KDC to set pw-salt/etype_info{,2}");
    return v17;
  }

  v24 = v23;
  if (!*v23)
  {
    sub_252261EDC(a1, v48);
    sub_25226B748(a1, 5, "TS-ENC: kdc proposes enctype NULL ?");
    return 2314790669;
  }

  v25 = *a3;
  if ((*a3 & 8) != 0)
  {
    v26 = 16;
  }

  else
  {
    v26 = 8;
  }

  if ((v26 & v25) == 0)
  {
    *a3 = v26 | v25;
    sub_252261EDC(a1, a2 + 448);
    v29 = *v24;
    v30 = *(v24 + 1);
    *(a2 + 480) = *(v24 + 4);
    *(a2 + 448) = v29;
    *(a2 + 464) = v30;
    if (!*(a2 + 360) || !*(a2 + 352))
    {
      v17 = 2314790668;
      sub_25226B748(a1, 5, "krb5_get_init_creds: no keyproc or keyseed");
      return v17;
    }

    sub_25226B748(a1, 5, "krb5_get_init_creds: pa-info found, using %d", *v24);
    v33 = a2 + 352;
    v31 = *(a2 + 352);
    v32 = *(v33 + 8);
    v34 = *(v24 + 4);
    v50 = 0;
    sub_25226B748(a1, 5, "krb5_get_init_creds: using ENC-TS with enctype %d", *v24);
    v35 = *v24;
    v36 = *(v24 + 2);
    *&v55 = *(v24 + 3);
    v54 = v36;
    if (v32(a1, v35, v31, &v54, v34, &v50))
    {
      return 2314790668;
    }

    v37 = v50;
    memset(v46, 0, sizeof(v46));
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v53 = 0;
    v51 = 0;
    krb5_us_timeofday(a1, v46, &v53);
    v52 = v53;
    *&v46[2] = &v52;
    v38 = sub_25228AD98(v46);
    v39 = malloc_type_malloc(v38, 0x488454C0uLL);
    if (!v39)
    {
LABEL_38:
      v17 = 2314790668;
      krb5_free_keyblock(a1, v50);
      return v17;
    }

    v40 = v39;
    if (sub_25228AD78(v39 + v38 - 1, v38, v46, &v56))
    {
      goto LABEL_36;
    }

    if (v38 == v56)
    {
      if (krb5_crypto_init(a1, v37, 0, &v51))
      {
LABEL_36:
        v41 = v40;
LABEL_37:
        free(v41);
        goto LABEL_38;
      }

      v42 = krb5_encrypt_EncryptedData(a1, v51, 1, v40, v56, 0, &v54);
      free(v40);
      krb5_crypto_destroy(a1, v51);
      if (v42)
      {
        goto LABEL_38;
      }

      v43 = sub_25228A998(&v54);
      v44 = malloc_type_malloc(v43, 0x8A0665B1uLL);
      if (!v44)
      {
LABEL_43:
        sub_25228A9A8(&v54);
        goto LABEL_38;
      }

      v45 = v44;
      if (sub_25228A978(v44 + v43 - 1, v43, &v54, &v56))
      {
        free(v45);
        goto LABEL_43;
      }

      sub_25228A9A8(&v54);
      if (v43 == v56)
      {
        if (!krb5_padata_add(a1, a9, 2, v45, v43))
        {
          krb5_free_keyblock(a1, v50);
          return 2314790668;
        }

        v41 = v45;
        goto LABEL_37;
      }
    }

    krb5_abortx(a1, "internal error in ASN.1 encoder");
  }

  v17 = 2529639135;
  if ((v25 & 8) != 0)
  {
    v27 = "reneg";
  }

  else
  {
    v27 = "info";
  }

  sub_252261EDC(a1, v48);
  krb5_set_error_message(a1, -1765328161, "Already tried ENC-TS-%s, looping", v27);
  return v17;
}

void sub_25225EA74(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    krb5_free_principal(0, v1);
  }
}

uint64_t sub_25225EA88(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9)
{
  v25 = 0;
  v24 = 0;
  result = *(a2 + 368);
  if (result)
  {
    v24 = result == 1;
    v11 = sub_25228ADD8(&v24);
    v12 = malloc_type_malloc(v11, 0x14132748uLL);
    if (v12)
    {
      v13 = v12;
      v14 = sub_25228ADB8(v12 + v11 - 1, v11, &v24, &v25);
      v22 = v14;
      if (v14)
      {
        goto LABEL_6;
      }

      if (v25 != v11)
      {
        sub_2522A7CE0(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v23 = krb5_padata_add(a1, a9, 128, v13, v11);
      v22 = 0;
      result = 0;
      if (v23)
      {
LABEL_6:
        free(v13);
        return v22;
      }
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t sub_25225EB64(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9)
{
  v9 = *(a2 + 1072);
  if (!v9)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v11 = krb5_data_copy(&v13, *(v9 + 8), *v9);
  if (!v11)
  {
    v11 = krb5_padata_add(a1, a9, 148, v14, v13);
    if (v11)
    {
      krb5_data_free(&v13);
    }
  }

  return v11;
}

uint64_t sub_25225EBDC(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9)
{
  if ((*(a2 + 444) & 2) != 0)
  {
    return krb5_padata_add(a1, a9, 149, 0, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25225EC00(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9)
{
  v15 = 0;
  padata = krb5_find_padata(*(a8 + 8), *a8, 133, &v15);
  v11 = padata;
  if (padata)
  {
    v12 = malloc_type_malloc(*(padata + 1), 0x2549AD69uLL);
    if (v12)
    {
      v13 = v12;
      memcpy(v12, *(v11 + 16), *(v11 + 8));
      v11 = krb5_padata_add(a1, a9, 133, v13, *(v11 + 8));
      if (v11)
      {
        free(v13);
      }

      else
      {
        sub_25226B748(a1, 5, "Mirrored FX-COOKIE to KDC");
      }
    }

    else
    {
      return 12;
    }
  }

  return v11;
}

uint64_t sub_25225ECC0(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v9 = sub_25228ABFC(a5[1], *a5, &v27, &v26);
  v10 = v27;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v27 == 0;
  }

  if (!v11)
  {
    v12 = *(a3 + 80);
    if (v12)
    {
      v13 = 0;
      while (!v10)
      {
LABEL_22:
        if (++v13 >= v12)
        {
          goto LABEL_23;
        }
      }

      v14 = 0;
      v15 = 0;
      while (1)
      {
        if (krb5_enctype_valid(a1, *(v28 + v14)))
        {
          goto LABEL_19;
        }

        v16 = v28;
        if (*(*(a3 + 88) + 4 * v13) != *(v28 + v14))
        {
          goto LABEL_19;
        }

        v24 = 0uLL;
        v25 = 0;
        v17 = *(v28 + v14 + 8);
        if (v17)
        {
          break;
        }

        if (!krb5_get_pw_salt(a1, a2, &v24))
        {
          v16 = v28;
          v19 = *(&v24 + 1);
          v18 = v25;
          goto LABEL_13;
        }

        v20 = 0;
LABEL_16:
        if (!*(v28 + v14 + 8))
        {
          v22 = v24;
          v23 = v25;
          krb5_free_salt(a1, &v22);
        }

        if (v20)
        {
          sub_25228AC1C(&v27);
          return a4;
        }

LABEL_19:
        ++v15;
        v10 = v27;
        v14 += 24;
        if (v15 >= v27)
        {
          v12 = *(a3 + 80);
          goto LABEL_22;
        }
      }

      v18 = *v17;
      v25 = v18;
      v19 = strlen(v18);
      *(&v24 + 1) = v19;
LABEL_13:
      v20 = sub_252261F3C(a4, a1, *(v16 + v14), 3, v18, v19, *(v16 + v14 + 16)) == 0;
      goto LABEL_16;
    }
  }

LABEL_23:
  sub_25228AC1C(&v27);
  return 0;
}

uint64_t sub_25225EE70(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v9 = sub_25228ABCC(a5[1], *a5, &v26, &v25);
  v10 = v26;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v26 == 0;
  }

  if (v11 || (v12 = *(a3 + 80), !v12))
  {
LABEL_23:
    sub_25228ABEC(&v26);
    return 0;
  }

  else
  {
    v13 = 0;
    while (!v10)
    {
LABEL_22:
      if (++v13 >= v12)
      {
        goto LABEL_23;
      }
    }

    v14 = 0;
    v15 = 0;
    while (1)
    {
      if (!krb5_enctype_valid(a1, *(v27 + v14)))
      {
        v16 = v27;
        if (*(*(a3 + 88) + 4 * v13) == *(v27 + v14))
        {
          *&v24[16] = 0;
          *v24 = 3u;
          v17 = *(v27 + v14 + 8);
          if (v17)
          {
            *&v24[8] = *v17;
            v18 = 1;
          }

          else
          {
            v18 = krb5_get_pw_salt(a1, a2, v24) == 0;
            v16 = v27;
          }

          v19 = *(v16 + v14 + 16);
          if (v19)
          {
            *v24 = *v19;
          }

          if (v18)
          {
            v20 = sub_252261F3C(a4, a1, *(v16 + v14), *v24, *&v24[16], *&v24[8], 0);
            if (!*(v27 + v14 + 8))
            {
              v22 = *v24;
              v23 = *&v24[16];
              krb5_free_salt(a1, &v22);
            }

            if (!v20)
            {
              break;
            }
          }
        }
      }

      ++v15;
      v10 = v26;
      v14 += 24;
      if (v15 >= v26)
      {
        v12 = *(a3 + 80);
        goto LABEL_22;
      }
    }

    sub_25228ABEC(&v26);
  }

  return a4;
}

int *sub_25225F024(_krb5_context *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v5 = *a4;
  if (!v5)
  {
    return 0;
  }

  if (krb5_enctype_valid(a1, v5))
  {
    return 0;
  }

  if (sub_252261F3C(a4, a1, *a4, a4[2], *(a5 + 8), *a5, 0))
  {
    return 0;
  }

  return a4;
}

uint64_t krb5_init_creds_init(_krb5_context *a1, krb5_principal_data *a2, uint64_t a3, uint64_t a4, uint64_t a5, krb5_get_init_creds_opt *a6, uint64_t *a7)
{
  *a7 = 0;
  v14 = malloc_type_calloc(1uLL, 0x448uLL, 0x10F0040D241B14AuLL);
  if (!v14)
  {
    v25 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v25;
  }

  v15 = v14;
  opt = 0;
  bzero(v14, 0x448uLL);
  if (!a6)
  {
    realm = krb5_principal_get_realm(a1, a2);
    krb5_get_init_creds_opt_alloc(a1, &opt);
    a6 = opt;
    krb5_get_init_creds_opt_set_default_flags(a1, 0, realm, opt, v17, v18, v19, v20);
  }

  v21 = *&a6[1].proxiable;
  if (v21)
  {
    v22 = *(v21 + 8);
    if (v22)
    {
      inited = krb5_init_creds_set_password(a1, v15, v22);
      if (inited)
      {
        goto LABEL_27;
      }

      v21 = *&a6[1].proxiable;
    }

    v24 = *(v21 + 16);
    *(v15 + 360) = v24;
    *(v15 + 368) = *(v21 + 24);
    *(v15 + 376) = *(v21 + 32);
    *(v15 + 384) = *(v21 + 44);
  }

  else
  {
    *(v15 + 368) = 0;
    v24 = *(v15 + 360);
  }

  if (!v24)
  {
    *(v15 + 360) = sub_25226201C;
  }

  if ((*(v15 + 384) & 2) != 0 || krb5_principal_get_type(a1, a2) == 10)
  {
    *v15 |= 0x8000u;
  }

  *(v15 + 152) = 0;
  *(v15 + 160) = 0;
  *(v15 + 168) = 0;
  *v47 = 0;
  krb5_timeofday(a1, v47);
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 88) = 0u;
  *(v15 + 104) = 0u;
  *(v15 + 120) = 0u;
  *(v15 + 136) = 0u;
  if (a2)
  {
    krb5_copy_principal(a1, a2, (v15 + 8));
  }

  else
  {
    default_principal = krb5_get_default_principal(a1, (v15 + 8));
    if (default_principal)
    {
      v25 = default_principal;
      krb5_free_cred_contents(a1, (v15 + 8));
      goto LABEL_63;
    }
  }

  if (a5)
  {
    *(v15 + 56) = *v47 + a5;
  }

  flags = a6->flags;
  if (a6->flags)
  {
    v27 = *&a6->renew_life;
  }

  else
  {
    v27 = 36000;
  }

  v28 = *v47;
  *(v15 + 64) = *v47 + v27;
  if ((flags & 2) != 0)
  {
    v29 = *&a6->proxiable;
    if (v29 >= 1)
    {
      *(v15 + 72) = v29 + v28;
    }
  }

  inited = krb5_init_creds_set_service(a1, v15, 0);
  if (inited)
  {
LABEL_27:
    v25 = inited;
LABEL_63:
    if (opt)
    {
      krb5_get_init_creds_opt_free(a1, opt);
    }

    free(v15);
    return v25;
  }

  if ((a6->flags & 4) != 0)
  {
    *v15 = *v15 & 0xFFFFFFFD | (2 * (a6->etype_list & 1));
    if ((a6->flags & 8) == 0)
    {
LABEL_32:
      if (!a5)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((a6->flags & 8) == 0)
  {
    goto LABEL_32;
  }

  *v15 = *v15 & 0xFFFFFFF7 | (8 * (HIDWORD(a6->etype_list) & 1));
  if (a5)
  {
LABEL_33:
    *v15 |= 0x40u;
  }

LABEL_34:
  if (*(v15 + 72))
  {
    *v15 |= 0x100u;
  }

  v31 = a6->flags;
  if ((a6->flags & 0x20) != 0)
  {
    p_preauth_list_length = &a6->preauth_list_length;
    goto LABEL_44;
  }

  v32 = *&a6[1].proxiable;
  if (v32)
  {
    v33 = *(v32 + 40);
    if (v33 <= 2)
    {
      p_preauth_list_length = (&off_2796FF458 + v33);
LABEL_44:
      *(v15 + 152) = *p_preauth_list_length;
    }
  }

  if ((v31 & 0x10) != 0)
  {
    v35 = *(v15 + 160);
    if (v35)
    {
      free(v35);
    }

    v36 = malloc_type_malloc(4 * SLODWORD(a6->preauth_list) + 4, 0x100004052888210uLL);
    if (!v36)
    {
      goto LABEL_62;
    }

    v37 = v36;
    memcpy(v36, a6->address_list, 4 * SLODWORD(a6->preauth_list));
    v37[SLODWORD(a6->preauth_list)] = 0;
    *(v15 + 160) = v37;
    v31 = a6->flags;
  }

  if ((v31 & 0x40) != 0)
  {
    v38 = malloc_type_malloc(4 * a6[1].flags + 4, 0x100004052888210uLL);
    if (v38)
    {
      v39 = v38;
      memcpy(v38, a6->salt, 4 * a6[1].flags);
      v39[a6[1].flags] = 0;
      *(v15 + 168) = v39;
      v31 = a6->flags;
      goto LABEL_53;
    }

LABEL_62:
    v25 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    goto LABEL_63;
  }

LABEL_53:
  if ((v31 & 0x100) != 0)
  {
    *v15 = *v15 & 0xFFFEFFFF | ((a6->etype_list_length & 1) << 16);
  }

  if (opt)
  {
    krb5_get_init_creds_opt_free(a1, opt);
  }

  krb5_generate_random_block(v15 + 184, 4);
  v40 = *(v15 + 184) & 0x7FFFFFFF;
  *(v15 + 184) = v40;
  *(v15 + 188) = v40;
  *(v15 + 904) = a3;
  *(v15 + 912) = a4;
  v41 = strlen("WELLKNOWN:COM.APPLE.LKDC");
  if (!*(v15 + 392))
  {
    v42 = v41;
    v43 = *(*(v15 + 8) + 24);
    if (!strncmp(v43, "WELLKNOWN:COM.APPLE.LKDC", v41) && v43[v42] == 58)
    {
      v44 = strdup(&v43[v42 + 1]);
      *(v15 + 392) = v44;
      sub_25226B748(a1, 5, "krb5_get_init_creds: setting LKDC hostname to: %s", v44);
    }
  }

  v25 = 0;
  *(v15 + 444) |= 2u;
  *(v15 + 940) |= 0x1000u;
  *a7 = v15;
  return v25;
}

void sub_25225F530(krb5_context a1, uint64_t a2)
{
  v4 = *(a2 + 160);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a2 + 168);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a2 + 176);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a2 + 344);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a2 + 336);
  if (v8)
  {
    v9 = strlen(*(a2 + 336));
    bzero(v8, v9);
    free(*(a2 + 336));
  }

  sub_252286DEC(a1, a2 + 936);
  v10 = *(a2 + 1032);
  if (v10)
  {
    krb5_free_keyblock(a1, v10);
  }

  krb5_data_free((a2 + 192));
  krb5_free_cred_contents(a1, (a2 + 8));
  sub_25228AC4C(a2 + 488);
  sub_25228AF48(a2 + 608);
  sub_25228AF78(a2 + 760);
  sub_25228B34C(a2 + 504);
  sub_25228ACF4(a2 + 208);
  heim_release(*(a2 + 1048));
  heim_release(*(a2 + 1040));
  *(a2 + 1040) = 0;
  v11 = *(a2 + 1064);
  if (v11)
  {
    hx509_cert_free(v11);
  }

  v12 = *(a2 + 1072);
  if (v12)
  {
    krb5_free_data(a1, v12);
  }

  v13 = *(a2 + 392);
  if (v13)
  {
    free(v13);
  }

  v14 = *(a2 + 400);
  if (v14)
  {
    free(v14);
  }

  sub_252261EDC(a1, a2 + 448);

  bzero(a2, 0x448uLL);
}

uint64_t krb5_init_creds_set_kdc_hostname(_krb5_context *a1, uint64_t a2, char *__s1)
{
  v6 = *(a2 + 392);
  if (v6)
  {
    free(v6);
  }

  v7 = strdup(__s1);
  *(a2 + 392) = v7;
  if (v7)
  {
    return 0;
  }

  return krb5_enomem(a1);
}

uint64_t krb5_init_creds_set_sitename(_krb5_context *a1, uint64_t a2, char *__s1)
{
  v6 = *(a2 + 400);
  if (v6)
  {
    free(v6);
  }

  v7 = strdup(__s1);
  *(a2 + 400) = v7;
  if (v7)
  {
    return 0;
  }

  return krb5_enomem(a1);
}

uint64_t krb5_init_creds_set_source_process(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, char *__s1)
{
  *(a2 + 444) |= 8u;
  *(a2 + 408) = *a3;
  v10 = *(a2 + 432);
  if (v10)
  {
    free(v10);
    *(a2 + 432) = 0;
  }

  if (__s1)
  {
    *(a2 + 432) = strdup(__s1);
  }

  sub_25226B748(a1, 5, "krb5_init_creds_set_source_app: %s %d%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", __s1, a4, *a3, a3[1], a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10], a3[11], a3[12], a3[13], a3[14], a3[15]);
  return 0;
}

uint64_t krb5_init_creds_set_service(_krb5_context *a1, uint64_t a2, const char *a3)
{
  v9 = 0;
  realm = krb5_principal_get_realm(a1, *(a2 + 8));
  v7 = realm;
  if (a3)
  {
    result = krb5_parse_name(a1, a3, &v9);
    if (result)
    {
      return result;
    }

    krb5_principal_set_realm(a1, v9, v7);
  }

  else
  {
    result = krb5_make_principal(a1, &v9, realm, "krbtgt", realm, 0);
    if (result)
    {
      return result;
    }
  }

  if (krb5_principal_is_krbtgt(a1, v9))
  {
    krb5_principal_set_type(a1, v9, 2);
  }

  krb5_free_principal(a1, *(a2 + 16));
  result = 0;
  *(a2 + 16) = v9;
  return result;
}

uint64_t krb5_init_creds_set_pkinit_client_cert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 1064))
  {
    hx509_cert_free();
  }

  *(a2 + 1064) = hx509_cert_ref(a3);
  return 0;
}

uint64_t krb5_init_creds_set_password(_krb5_context *a1, uint64_t a2, uint64_t __s1)
{
  v6 = *(a2 + 336);
  if (v6)
  {
    v7 = strlen(*(a2 + 336));
    bzero(v6, v7);
    free(*(a2 + 336));
  }

  if (__s1)
  {
    v8 = strdup(__s1);
    *(a2 + 336) = v8;
    if (v8)
    {
      __s1 = 0;
      *(a2 + 352) = v8;
    }

    else
    {
      __s1 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
    }
  }

  else
  {
    *(a2 + 352) = 0;
    *(a2 + 336) = 0;
  }

  return __s1;
}

uint64_t krb5_init_creds_set_keytab(_krb5_context *a1, uint64_t a2, _krb5_kt *a3)
{
  v6 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  if (!v6)
  {
    v8 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v8;
  }

  v22 = 0;
  memset(&entry, 0, sizeof(entry));
  memset(cursor, 0, sizeof(cursor));
  v7 = *(a2 + 8);
  *v6 = a3;
  v6[1] = v7;
  *(a2 + 344) = v6;
  *(a2 + 352) = v6;
  *(a2 + 360) = sub_25225FCA8;
  v8 = krb5_kt_start_seq_get(a1, a3, cursor);
  if (v8)
  {
    goto LABEL_5;
  }

  if (krb5_kt_next_entry(a1, a3, &entry, cursor))
  {
    v8 = 2529639093;
    krb5_kt_end_seq_get(a1, a3, cursor);
    goto LABEL_5;
  }

  v10 = 0;
  principal = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    if (!krb5_principal_compare(a1, *&entry.magic, *(a2 + 8)))
    {
      goto LABEL_27;
    }

    if (SLODWORD(entry.principal) <= principal)
    {
      if (LODWORD(entry.principal) != principal)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v13)
      {
        free(v13);
        v13 = 0;
      }

      v12 = 0;
      principal = entry.principal;
    }

    if (krb5_enctype_valid(a1, entry.timestamp))
    {
      goto LABEL_16;
    }

    v14 = *(a2 + 160);
    if (v14)
    {
      v15 = 0;
      do
      {
        v16 = *(v14 + 4 * v15++);
        if (v16)
        {
          v17 = v16 == entry.timestamp;
        }

        else
        {
          v17 = 1;
        }
      }

      while (!v17);
      if (!v16)
      {
LABEL_16:
        v10 = 1;
        goto LABEL_27;
      }
    }

    v18 = malloc_type_realloc(v13, 4 * v12 + 8, 0x100004052888210uLL);
    if (!v18)
    {
      free(v13);
      return krb5_enomem(a1);
    }

    v18[v12++] = entry.timestamp;
    v18[v12] = 0;
    v10 = 1;
    v13 = v18;
LABEL_27:
    krb5_kt_free_entry(a1, &entry);
  }

  while (!krb5_kt_next_entry(a1, a3, &entry, cursor));
  krb5_kt_end_seq_get(a1, a3, cursor);
  v19 = *(a2 + 160);
  if (v13)
  {
    if (v19)
    {
      free(v19);
    }

    *(a2 + 160) = v13;
    if (!v10)
    {
      v8 = 2529639093;
      goto LABEL_5;
    }

    return 0;
  }

  v8 = 2529639093;
  if (!v19 && v10)
  {
    return 0;
  }

LABEL_5:
  sub_252264CD0(a1, v8, a3, *(a2 + 8), 0, 0);
  return v8;
}

uint64_t sub_25225FCA8(krb5_context context, krb5_enctype enctype, uint64_t a3, uint64_t a4, uint64_t a5, krb5_keyblock **a6)
{
  v9 = *a3;
  v10 = *(a3 + 8);
  v14 = 0;
  keytab = 0;
  memset(&v13, 0, sizeof(v13));
  if (v9)
  {
    keytab = v9;
    entry = krb5_kt_get_entry(context, v9, v10, 0, enctype, &v13);
    if (!entry)
    {
LABEL_3:
      entry = krb5_copy_keyblock(context, &v13.timestamp, a6);
      krb5_kt_free_entry(context, &v13);
    }
  }

  else
  {
    entry = krb5_kt_default(context, &keytab);
    if (!entry)
    {
      entry = krb5_kt_get_entry(context, keytab, v10, 0, enctype, &v13);
      krb5_kt_close(context, keytab);
      if (!entry)
      {
        goto LABEL_3;
      }
    }
  }

  return entry;
}

uint64_t _krb5_init_creds_set_pku2u(_krb5_context *a1, uint64_t a2, const krb5_data *a3)
{
  *(a2 + 384) |= 0x10u;
  *a2 = sub_25228A948(0);
  v6 = *(a2 + 1072);
  if (v6)
  {
    krb5_free_data(a1, v6);
  }

  v7 = (a2 + 1072);
  if (a3)
  {
    result = krb5_copy_data(a1, a3, v7);
    if (result)
    {
      return result;
    }
  }

  else
  {
    *v7 = 0;
  }

  return 0;
}

uint64_t krb5_init_creds_set_keyblock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 352) = a3;
  *(a2 + 360) = sub_25225FE28;
  return 0;
}

uint64_t krb5_init_creds_set_fast_ccache(_krb5_context *a1, uint64_t a2, _krb5_ccache *a3)
{
  v8.data = 0;
  v9 = 0;
  *&v8.magic = 0;
  krbtgt = _krb5_get_krbtgt(a1, a3, 0, &v9);
  if (!krbtgt)
  {
    krbtgt = krb5_cc_get_config(a1, a3, v9->client, "fast_avail", &v8);
    krb5_free_creds(a1, v9);
    if (krbtgt)
    {
      krbtgt = 22;
      krb5_set_error_message(a1, 22, "FAST not available for the KDC in the armor ccache");
    }

    else
    {
      *(a2 + 952) = a3;
      *(a2 + 940) |= 0x40u;
    }
  }

  return krbtgt;
}

uint64_t krb5_init_creds_step(_krb5_context *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, _DWORD *a7)
{
  v137 = *MEMORY[0x277D85DE8];
  *&v135.tv_usec = 0;
  v135.tv_sec = 0;
  *&v134.tv_usec = 0;
  v134.tv_sec = 0;
  v133[1] = 0;
  v133[0] = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  memset(v129, 0, sizeof(v129));
  gettimeofday(&v135, 0);
  krb5_data_zero(a4);
  krb5_data_zero(v133);
  if (a6)
  {
    *a6 = 0;
  }

  if (*(a2 + 232))
  {
    v14 = 0;
    goto LABEL_5;
  }

  v18 = *(a2 + 376);
  if (v18)
  {
    v19 = *(a2 + 1064);
    if (v19)
    {
      sub_2522719D8(a1, v18, v19);
    }
  }

  v20 = *(a2 + 152);
  v21 = *(a2 + 160);
  v22 = *a2;
  *(a2 + 320) = 0;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 208) = 0xA00000005;
  *(a2 + 224) = v22;
  v23 = malloc_type_malloc(0x18uLL, 0x10800407C14B876uLL);
  *(a2 + 232) = v23;
  if (!v23)
  {
    goto LABEL_144;
  }

  v24 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800407C14B876uLL);
  *(a2 + 248) = v24;
  if (!v24)
  {
    goto LABEL_144;
  }

  v25 = *(a2 + 232);
  v26 = *(a2 + 8);
  inited = _krb5_principal2principalname();
  if (inited)
  {
    goto LABEL_16;
  }

  v28 = *(a2 + 8);
  inited = sub_25228A694();
  if (inited)
  {
    goto LABEL_16;
  }

  v29 = *(a2 + 248);
  v30 = *(a2 + 16);
  inited = _krb5_principal2principalname();
  if (inited)
  {
    goto LABEL_16;
  }

  if (*(a2 + 56))
  {
    v63 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    *(a2 + 256) = v63;
    if (!v63)
    {
      goto LABEL_144;
    }

    *v63 = *(a2 + 56);
  }

  if (*(a2 + 64))
  {
    v64 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
    *(a2 + 264) = v64;
    *v64 = *(a2 + 64);
  }

  if (*(a2 + 72))
  {
    v65 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    *(a2 + 272) = v65;
    if (v65)
    {
      *v65 = *(a2 + 72);
      goto LABEL_58;
    }

LABEL_144:
    v16 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    goto LABEL_145;
  }

LABEL_58:
  *(a2 + 280) = 0;
  inited = _krb5_init_etype(a1, 2, (a2 + 288), (a2 + 296), v21, v31, v32, v33);
  if (inited)
  {
LABEL_16:
    v16 = inited;
LABEL_145:
    sub_25228ACF4(a2 + 208);
    *(a2 + 320) = 0;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 208) = 0u;
    sub_25225F530(a1, a2);
    goto LABEL_146;
  }

  if (!v20)
  {
    v96 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
    *(a2 + 304) = v96;
    if (!v96)
    {
      goto LABEL_144;
    }

    inited = krb5_get_all_client_addrs(a1, v96);
    if (inited)
    {
      goto LABEL_16;
    }

    v97 = (a2 + 304);
    v98 = *(a2 + 304);
    if (*v98)
    {
      goto LABEL_151;
    }

    free(v98);
LABEL_150:
    *v97 = 0;
    goto LABEL_151;
  }

  if (!*v20)
  {
    v97 = (a2 + 304);
    goto LABEL_150;
  }

  v66 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
  *(a2 + 304) = v66;
  if (!v66)
  {
    goto LABEL_144;
  }

  inited = krb5_copy_addresses(a1, v20, v66);
  if (inited)
  {
    goto LABEL_16;
  }

LABEL_151:
  *(a2 + 216) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  v102 = *(a2 + 940);
  if ((v102 & 0x140) == 0)
  {
    *(a2 + 940) = v102 | 0x80;
  }

  *(a2 + 1048) = heim_array_create();
  if (*(a2 + 360) || *(a2 + 352) || *(a2 + 904))
  {
    if (*(a2 + 376))
    {
LABEL_159:
      sub_252262164(a1, a2, 17, v103, v104, v105, v106, v107);
      sub_252262164(a1, a2, 15, v118, v119, v120, v121, v122);
      goto LABEL_160;
    }

    sub_252262164(a1, a2, 250, v103, v104, v105, v106, v107);
    sub_252262164(a1, a2, 138, v108, v109, v110, v111, v112);
    sub_252262164(a1, a2, 2, v113, v114, v115, v116, v117);
  }

  if (*(a2 + 376))
  {
    goto LABEL_159;
  }

LABEL_160:
  v14 = 1;
LABEL_5:
  v15 = *(a2 + 328);
  if (v15 >= 11)
  {
    v16 = 2529639135;
    v123 = *(a2 + 328);
    v17 = "Looping %d times while getting initial credentials";
LABEL_7:
    krb5_set_error_message(a1, v16, v17, v123);
    goto LABEL_146;
  }

  v34 = v15 + 1;
  *(a2 + 328) = v34;
  sub_25226B748(a1, 5, "krb5_get_init_creds: loop %d", v34);
  if (a3 && *a3)
  {
    memset(v128, 0, sizeof(v128));
    memset(v127, 0, sizeof(v127));
    sub_25226B748(a1, 5, "krb5_get_init_creds: processing input");
    if (sub_25228AF28(*(a3 + 8), *a3, v127, &v131))
    {
      sub_25226B748(a1, 5, "krb5_get_init_creds: got an KRB-ERROR from KDC");
      sub_25228B34C(a2 + 504);
      v40 = krb5_rd_error(a1, a3, (a2 + 504));
      if (v40)
      {
        v16 = v40;
        if (*a3)
        {
          if (**(a3 + 8) == 4)
          {
            v16 = 2529639131;
          }

          else
          {
            v16 = v40;
          }
        }

        v41 = "krb5_get_init_creds: failed to read error";
        v42 = a1;
        v43 = 5;
        goto LABEL_26;
      }

      v55 = (a2 + 488);
      sub_25228AC4C(a2 + 488);
      *(a2 + 488) = 0;
      *(a2 + 496) = 0;
      v56 = *(a2 + 600);
      if (v56)
      {
        v57 = sub_25228AC2C(v56[1], *v56, a2 + 488, 0);
        if (v57)
        {
          sub_25226B794(a1, 5, v57, "Failed to decode METHOD-DATA");
        }
      }

      v16 = sub_2522869C8(a1, a2 + 936, a2 + 488, a2 + 504);
      if (v16)
      {
        goto LABEL_146;
      }

      v16 = krb5_error_from_rd_error(a1, a2 + 504, (a2 + 8));
      if (_krb5_have_debug(a1))
      {
        error_message = krb5_get_error_message(a1, v16);
        sub_25226B748(a1, 5, "krb5_get_init_creds: KRB-ERROR %d/%s", v16, error_message);
        krb5_free_error_message(a1, error_message);
      }

      if (v16 <= -1765328360)
      {
        switch(v16)
        {
          case 0x96C73A0E:
            goto LABEL_73;
          case 0x96C73A17:
            if ((*(a2 + 444) & 1) == 0)
            {
              v80 = *(a2 + 904);
              if (v80)
              {
                *(a2 + 444) |= 1u;
                v80(a1, *(a2 + 912), 0, "Password has expired", 0, 0);
                v81 = *(a2 + 176);
                if (v81 && !strcmp(v81, "kadmin/changepw"))
                {
                  v16 = 2529638935;
                  goto LABEL_146;
                }

                gettimeofday(&v134, 0);
                sub_2522A3BC0(&v134, &v135);
                sub_2522A3B60(a2 + 1080, &v134);
                v16 = sub_252261124(a1, *(a2 + 8), *(a2 + 336), __s1, *(a2 + 904), *(a2 + 912), 0);
                if (v16)
                {
                  goto LABEL_146;
                }

                gettimeofday(&v135, 0);
                krb5_init_creds_set_password(a1, a2, __s1);
                goto LABEL_104;
              }
            }

            break;
          case 0x96C73A18:
            if ((*(a2 + 444) & 2) != 0)
            {
              if (!*v55)
              {
                sub_25226B748(a1, 10, "Disable allow_enc_pa_rep and trying again");
                *(a2 + 444) &= ~2u;
LABEL_104:
                v82 = *(a2 + 1040);
                if (v82)
                {
                  v83 = *(*(v82 + 32) + 48);
                  if (v83)
                  {
                    v83(a1, a2, v82 + 48);
                  }
                }

                v14 = 1;
                goto LABEL_108;
              }

              v16 = 2529638936;
              v41 = "Server send PA data with KRB-ERROR, so not a pre 1.7 MIT KDC and wont retry w/o ENC-PA-REQ";
            }

            else
            {
              v67 = *(a2 + 940);
              if ((v67 & 0x80) != 0)
              {
                v16 = 2529638936;
                v41 = "FAST disabled and got preauth failed";
              }

              else
              {
                if ((v67 & 0x200) != 0)
                {
                  sub_25226B748(a1, 10, "preauth failed with Optimistic FAST, trying w/o FAST");
LABEL_103:
                  *(a2 + 940) = *(a2 + 940) & 0xFFFFFD7F | 0x80;
                  goto LABEL_104;
                }

                v16 = 2529638936;
                v41 = "Preauth failed";
              }
            }

            v42 = a1;
            v43 = 10;
LABEL_26:
            sub_25226B748(v42, v43, v41, v123, v124);
            goto LABEL_146;
        }

        goto LABEL_101;
      }

      if (v16 <= -1765328317)
      {
        if (v16 != -1765328359)
        {
          if (v16 == -1765328347 && !*(a1 + 27))
          {
            krb5_set_real_time(a1, *(a2 + 528), -1);
            v59 = *(a1 + 27);
            sub_25226B748(a1, 10, "init_creds: err skew updateing kdc offset to %d", v59);
            if (!v59)
            {
              v16 = 2529638949;
              goto LABEL_146;
            }

            goto LABEL_104;
          }

          goto LABEL_101;
        }

        goto LABEL_73;
      }

      if (v16 != -1765328316)
      {
        if (v16 == -1765328293)
        {
LABEL_73:
          if (!*v55)
          {
            v17 = "Preauth required but no preauth options send by KDC";
            goto LABEL_7;
          }

          goto LABEL_108;
        }

LABEL_101:
        if ((*(a2 + 941) & 2) == 0)
        {
          goto LABEL_146;
        }

        sub_25226B748(a1, 10, "Some other error %d failed with Optimistic FAST, trying w/o FAST");
        goto LABEL_103;
      }

      if ((*(a2 + 1) & 0x80) == 0)
      {
        goto LABEL_101;
      }

      *&__s1[0].magic = 0;
      v76 = *(a2 + 544);
      if (!v76)
      {
        v16 = 2529638980;
        v17 = "Got a client referral, not but no realm";
        goto LABEL_7;
      }

      *&__s1[0].magic = *v76;
      sub_25226B748(a1, 5, "krb5_get_init_creds: referral to realm %s", *&__s1[0].magic);
      if (!krb5_principal_is_krbtgt(a1, *(a2 + 16)))
      {
LABEL_90:
        free(*(a2 + 240));
        v79 = sub_25228A694();
        if (!v79)
        {
          v79 = krb5_principal_set_realm(a1, *(a2 + 8), **(a2 + 544));
          if (!v79)
          {
            if (!krb5_unparse_name(a1, *(a2 + 8), __s1))
            {
              sub_25226B748(a1, 5, "krb5_get_init_creds: got referal to %s", *&__s1[0].magic);
              krb5_xfree(*&__s1[0].magic);
            }

            goto LABEL_104;
          }
        }

LABEL_111:
        v16 = v79;
        goto LABEL_146;
      }

      free(*(*(*(a2 + 16) + 16) + 8));
      *(*(*(a2 + 16) + 16) + 8) = strdup(*&__s1[0].magic);
      if (*(*(*(a2 + 16) + 16) + 8))
      {
        sub_25228A6F8(*(a2 + 248));
        v77 = *(a2 + 248);
        v78 = *(a2 + 16);
        v79 = _krb5_principal2principalname();
        if (v79)
        {
          goto LABEL_111;
        }

        goto LABEL_90;
      }

LABEL_94:
      v16 = 12;
      goto LABEL_146;
    }

    v44 = sub_25228AA6C(v128);
    v126[0] = v44;
    v45 = malloc_type_malloc(v44, 0x8B0CB9B6uLL);
    v126[1] = v45;
    if (!v45)
    {
      goto LABEL_94;
    }

    v46 = v45;
    v47 = sub_25228AA4C(v45 + v44 - 1, v44, v128, &v131);
    if (v47)
    {
      v16 = v47;
      free(v46);
      goto LABEL_146;
    }

    if (v44 != v131)
    {
      sub_2522A7C98(v47, v48, v49, v50, v51, v52, v53, v54);
    }

    v16 = sub_252286C38(a1, *(a2 + 184), v126, a2 + 936, v127);
    krb5_data_free(v126);
    if (v16)
    {
      goto LABEL_146;
    }

    if ((*a2 & 0x8000) != 0)
    {
      v60 = 30;
    }

    else
    {
      v60 = 24;
    }

    v61 = *(a2 + 384);
    v62 = sub_252260D98(a1, a2, (a2 + 8), a2 + 208, v127, a5);
    if (v62)
    {
LABEL_49:
      v16 = v62;
      sub_25228AF48(v127);
      goto LABEL_146;
    }

    v68 = **(a2 + 944);
    if (*(a2 + 1016))
    {
      memset(__s1, 0, 24);
      sub_25226B748(a1, 5, "krb5_get_init_creds: FAST strengthen_key");
      v62 = _krb5_fast_cf2(a1, *(a2 + 1016), "strengthenkey", *(a2 + 944), "replykey", __s1, 0);
      if (v62)
      {
        goto LABEL_49;
      }

      *(a2 + 444) |= 4u;
      krb5_free_keyblock_contents(a1, *(a2 + 944));
      v69 = *(a2 + 944);
      v70 = *&__s1[0].magic;
      *(v69 + 16) = __s1[0].contents;
      *v69 = v70;
    }

    sub_25226B748(a1, 5, "krb5_get_init_creds: extracting ticket");
    v71 = sub_252280B7C(a1, v127, a2 + 8, *(a2 + 944), 3, 0, *(a2 + 184), v60 & 0xFEu | ((v61 & 4) != 0), a2 + 192, 0, 0);
    if (!v71)
    {
      v71 = sub_25228AF88();
      if (!v71)
      {
        v71 = sub_252260ED8(a1, a2, v127, (a2 + 24));
      }
    }

    v16 = v71;
    v72 = **(a2 + 944);
    if (*(a2 + 1056))
    {
      v73 = *(a2 + 1056);
    }

    v74 = *(a2 + 940);
    sub_25225CF18();
    v75 = *(a2 + 944);
    *(a2 + 1024) = v75->magic;
    if ((*(a2 + 444) & 4) != 0)
    {
      *(a2 + 1032) = v75;
    }

    else
    {
      krb5_free_keyblock(a1, v75);
    }

    *(a2 + 944) = 0;
    *(a2 + 384) |= 1u;
    *a7 = 0;
    sub_25228AF48(v127);
    sub_25228AFBC(&v128[6] + 8);
    gettimeofday(&v134, 0);
    sub_2522A3BC0(&v134, &v135);
    sub_2522A3B60(a2 + 1080, &v134);
    v101 = *(a2 + 1080);
    v125 = *(a2 + 1088);
    sub_25226B748(a1, 1, "krb5_get_init_creds: wc: %lld.%06d");
    goto LABEL_146;
  }

LABEL_108:
  v84 = *(a2 + 216);
  if (v84)
  {
    sub_25228AC4C(v84);
    free(*(a2 + 216));
    *(a2 + 216) = 0;
  }

  v79 = sub_252286248(a1, a2 + 936, *(*(a2 + 8) + 24), v35, v36, v37, v38, v39);
  if (v79)
  {
    goto LABEL_111;
  }

  *(a2 + 280) = *(a2 + 184);
  v85 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  *(a2 + 216) = v85;
  if (!v85)
  {
    v16 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory", v123);
    goto LABEL_146;
  }

  *v85 = 0;
  v85[1] = 0;
  sub_25226227C(a1, (a2 + 488));
  if (!v14)
  {
    v86 = sub_25226236C(a1, a2, a2 + 208, 0, 0, a2 + 488, *(a2 + 216));
    if (v86 == -1980176628)
    {
      sub_25226B748(a1, 0, "pamech need more stepping");
    }

    else
    {
      v16 = v86;
      if (v86)
      {
        goto LABEL_146;
      }

      sub_25226B748(a1, 0, "pamech done step");
    }
  }

  v87 = *(a2 + 216);
  v88 = &dword_280C4DEA8;
  v89 = 19;
  do
  {
    if ((v88[4] & 3) != 0)
    {
      v90 = *(v88 + 7);
      if (v90)
      {
        v90(a1, a2, 0, 0, 0, 0, 0, a2 + 488, v87);
      }

      else
      {
        krb5_padata_add(a1, v87, *v88, 0, 0);
      }
    }

    v88 += 18;
    --v89;
  }

  while (v89);
  v91 = *(a2 + 216);
  if (!*v91)
  {
    free(v91);
    *(a2 + 216) = 0;
  }

  v79 = sub_25228AD04();
  if (v79)
  {
    goto LABEL_111;
  }

  v16 = sub_25228653C(a1, a2 + 936, 0, v129);
  krb5_data_free(v133);
  if (v16)
  {
LABEL_129:
    sub_25228ACF4(v129);
    goto LABEL_146;
  }

  krb5_data_free((a2 + 192));
  v92 = sub_25228ACE4(v129);
  *(a2 + 192) = v92;
  v93 = malloc_type_malloc(v92, 0x4EFB1758uLL);
  *(a2 + 200) = v93;
  if (!v93)
  {
    v16 = 12;
    goto LABEL_129;
  }

  v94 = sub_25228ACC4(v93 + *(a2 + 192) - 1, *(a2 + 192), v129, &v132);
  if (v94)
  {
    v16 = v94;
    free(*(a2 + 200));
    *(a2 + 200) = 0;
    goto LABEL_129;
  }

  sub_25228ACF4(v129);
  if (v132 != *(a2 + 192))
  {
    krb5_abortx(a1, "internal error in ASN.1 encoder");
  }

  v95 = *(a2 + 200);
  *a4 = v132;
  a4[1] = v95;
  *a7 = 1;
  if (a6)
  {
    *a6 = *(*(a2 + 8) + 24);
  }

  gettimeofday(&v134, 0);
  sub_2522A3BC0(&v134, &v135);
  sub_2522A3B60(a2 + 1080, &v134);
  v16 = 0;
LABEL_146:
  v99 = *MEMORY[0x277D85DE8];
  return v16;
}