uint64_t sub_25226F118(_krb5_context *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, const krb5_keyblock *a6)
{
  seed = 0;
  v30 = 0;
  v31 = 0;
  v11 = krb5_storage_from_mem(*(a3 + 8) + *(a2 + 12), *(a2 + 4));
  if (v11)
  {
    v12 = v11;
    v32 = 0;
    krb5_storage_set_flags(v11, 32);
    v13 = krb5_ret_uint32(v12, &v32);
    if (v13)
    {
      v14 = v13;
      krb5_clear_error_message(a1);
LABEL_26:
      krb5_storage_free(v12);
      return v14;
    }

    v16 = v32;
    LODWORD(seed) = v32;
    v17 = *(a2 + 4);
    v18 = krb5_storage_seek(v12);
    v19 = v17 - v18;
    v30 = v17 - v18;
    v20 = malloc_type_malloc(v17 - v18, 0x2C587F59uLL);
    v31 = v20;
    if (!v20)
    {
      v14 = krb5_enomem(a1);
      goto LABEL_26;
    }

    v21 = v20;
    if (krb5_storage_read(v12) == v19)
    {
      if (krb5_checksum_is_keyed(a1, v16))
      {
        if (v16 == -138)
        {
          *ctype = 0;
          v28[0] = 0;
          v28[1] = 0;
          if (sub_25226FF38(a1, a6, a4, a5, ctype) || krb5_data_ct_cmp(v28, &v30))
          {
            v14 = 2529638943;
            krb5_set_error_message(a1, -1765328353, "PAC integrity check failed for hmac-md5 checksum");
          }

          else
          {
            v14 = 0;
          }

          krb5_data_free(v28);
          goto LABEL_24;
        }

        *ctype = 0;
        v24 = krb5_crypto_init(a1, a6, 0, ctype);
        if (!v24)
        {
          v14 = krb5_verify_checksum(a1, ctype[0], 0x11, a4, a5, &seed, v25);
          krb5_crypto_destroy(a1, *ctype);
LABEL_24:
          v23 = v31;
          goto LABEL_25;
        }

        v14 = v24;
        v21 = v31;
        if (!v31)
        {
          goto LABEL_26;
        }

LABEL_19:
        v23 = v21;
LABEL_25:
        free(v23);
        goto LABEL_26;
      }

      v26 = v16;
      v22 = "Checksum type %d not keyed";
    }

    else
    {
      v22 = "PAC checksum missing checksum";
    }

    v14 = 22;
    krb5_set_error_message(a1, 22, v22, v26);
    goto LABEL_19;
  }

  return krb5_enomem(a1);
}

uint64_t krb5_pac_process_credentials_buffer(_krb5_context *a1, void *a2, const krb5_keyblock *a3)
{
  v3 = 2314790736;
  inptr = 0;
  v19 = 0;
  v4 = a2 + 11;
  if (a2[11])
  {
    return 2314790739;
  }

  v7 = a2[10];
  if (!v7)
  {
    return 2314790737;
  }

  v8 = *(v7 + 4);
  if (v8 < 8)
  {
    return 2314790739;
  }

  if (v8 > 0x2710)
  {
    return 2314790741;
  }

  v11 = krb5_storage_from_readonly_mem(a2[6] + *(v7 + 12), v8);
  if (v11)
  {
    v12 = v11;
    krb5_storage_set_flags(v11, 32);
    v13 = krb5_ret_uint32(v12, &v19 + 1);
    if (v13 || (v13 = krb5_ret_int32(v12, &v19), v13))
    {
      v14 = v13;
      krb5_clear_error_message(a1);
      v3 = v14;
    }

    else if (HIDWORD(v19))
    {
      v3 = 2314790738;
      krb5_set_error_message(a1, -1980176558, "unsupport pac credentail version: %d");
    }

    else
    {
      if (v19 <= 0x17 && ((1 << v19) & 0x86000A) != 0)
      {
        if (a3->magic == v19)
        {
          v3 = krb5_crypto_init(a1, a3, 0, &inptr);
          if (!v3)
          {
            v3 = krb5_decrypt(a1, inptr, 0x10, a2[6] + *(a2[10] + 12) + 8, (*(a2[10] + 4) - 8), v4);
          }

          goto LABEL_14;
        }

        magic = a3->magic;
        v17 = v19;
        v15 = "as key (%d) mismatch with PAC enctype (%d)";
      }

      else
      {
        magic = v19;
        v15 = "enctype: %d not support as pac enctype";
      }

      krb5_set_error_message(a1, -1980176560, v15, magic, v17);
    }

LABEL_14:
    krb5_storage_free(v12);
    if (inptr)
    {
      krb5_crypto_destroy(a1, inptr);
    }

    return v3;
  }

  return krb5_enomem(a1);
}

uint64_t _krb5_pac_sign(_krb5_context *a1, void *a2, uint64_t a3, const krb5_principal_data *a4, const krb5_keyblock *a5, const krb5_keyblock *a6, _OWORD *a7)
{
  v71 = 0;
  v72 = 0;
  v69[1] = 0;
  v70 = 0;
  v69[0] = 0;
  v68 = 0uLL;
  krb5_data_zero(v69);
  if (a4)
  {
    v14 = a2[9] == 0;
    if (!a5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = 0;
    if (!a5)
    {
      goto LABEL_5;
    }
  }

  if (!a2[7])
  {
    ++v14;
  }

LABEL_5:
  if (a6 && !a2[8])
  {
    ++v14;
  }

  else if (!v14)
  {
    goto LABEL_8;
  }

  v19 = a2[4];
  if (__CFADD__(v14, *v19))
  {
    v20 = "integer overrun";
LABEL_23:
    v18 = 22;
    krb5_set_error_message(a1, 22, v20);
    goto LABEL_41;
  }

  v21 = *v19 + v14;
  if (v21 > 0x3E8)
  {
    v20 = "PAC has too many buffers";
    goto LABEL_23;
  }

  v22 = malloc_type_realloc(v19, (16 * v21) | 8, 0xA5093EFEuLL);
  if (!v22)
  {
    return krb5_enomem(a1);
  }

  a2[4] = v22;
  if (a4 && !a2[9])
  {
    v23 = *v22;
    v24 = &v22[4 * v23];
    *v22 = v23 + 1;
    a2[9] = v24 + 2;
    *(v24 + 1) = 0;
    *(v24 + 2) = 0;
    *a2[9] = 10;
  }

  if (a5 && !a2[7])
  {
    v25 = a2[4];
    v26 = *v25;
    v27 = &v25[4 * v26];
    *v25 = v26 + 1;
    a2[7] = v27 + 2;
    *(v27 + 1) = 0;
    *(v27 + 2) = 0;
    *a2[7] = 6;
  }

  if (a6 && !a2[8])
  {
    v28 = a2[4];
    v29 = *v28;
    v30 = &v28[4 * v29];
    *v28 = v29 + 1;
    a2[8] = v30 + 2;
    *(v30 + 1) = 0;
    *(v30 + 2) = 0;
    *a2[8] = 7;
  }

LABEL_8:
  if (!a4)
  {
    goto LABEL_35;
  }

  krb5_data_zero(v69);
  v15 = krb5_storage_emem();
  if (!v15)
  {
    v18 = krb5_enomem(a1);
    if (!v18)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  v16 = v15;
  __s = 0;
  krb5_storage_set_flags(v15, 32);
  v17 = krb5_store_uint32(v16, 10000000 * a3 + 116444736000000000);
  if (v17)
  {
    goto LABEL_12;
  }

  v17 = krb5_store_uint32(v16, (10000000 * a3 + 116444736000000000) >> 32);
  if (v17)
  {
    goto LABEL_12;
  }

  v38 = krb5_unparse_name_flags(a1, a4, 2, &__s);
  if (v38)
  {
    goto LABEL_52;
  }

  v39 = strlen(__s);
  v40 = 2 * v39;
  v17 = krb5_store_uint16(v16, 2 * v39);
  if (v17)
  {
LABEL_12:
    v18 = v17;
    krb5_clear_error_message(a1);
    goto LABEL_13;
  }

  v41 = malloc_type_malloc(v40, 0x1A272DC8uLL);
  if (!v41)
  {
    v18 = krb5_enomem(a1);
    free(__s);
LABEL_13:
    krb5_storage_free(v16);
    if (!v18)
    {
LABEL_35:
      if (!a5)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_41:
    krb5_data_free(v69);
    return v18;
  }

  v42 = v41;
  if (v39)
  {
    v43 = 0;
    v44 = v41 + 1;
    do
    {
      *(v44 - 1) = __s[v43];
      v44 += 2;
      ++v43;
    }

    while (v39 != v43);
  }

  free(__s);
  v45 = krb5_storage_write(v16);
  free(v42);
  if (v45 < 0 || v45 != v40)
  {
    v38 = krb5_enomem(a1);
    goto LABEL_52;
  }

  v38 = krb5_storage_to_data(v16, v69);
  if (v38)
  {
LABEL_52:
    v18 = v38;
    goto LABEL_13;
  }

  krb5_storage_free(v16);
  if (!a5)
  {
    goto LABEL_37;
  }

LABEL_36:
  v31 = sub_25226FCD4(a1, a5, &v70 + 1, &v72);
  if (v31)
  {
LABEL_40:
    v18 = v31;
    goto LABEL_41;
  }

LABEL_37:
  if (a6)
  {
    if (a2[7])
    {
      v31 = sub_25226FCD4(a1, a6, &v70, &v71);
      if (v31)
      {
        goto LABEL_40;
      }
    }
  }

  v33 = krb5_storage_emem();
  if (!v33)
  {
    return krb5_enomem(a1);
  }

  v34 = v33;
  krb5_storage_set_flags(v33, 32);
  v35 = krb5_storage_emem();
  if (!v35)
  {
    krb5_storage_free(v34);
    return krb5_enomem(a1);
  }

  v36 = v35;
  krb5_storage_set_flags(v35, 32);
  v37 = krb5_store_uint32(v34, *a2[4]);
  if (v37 || (v37 = krb5_store_uint32(v34, *(a2[4] + 4)), v37))
  {
LABEL_47:
    v18 = v37;
    krb5_clear_error_message(a1);
    goto LABEL_48;
  }

  v46 = a2[4];
  v47 = *v46;
  if (*v46 >= 0x3E9)
  {
    v48 = "PAC has too many buffers";
    goto LABEL_65;
  }

  v49 = 0;
  if (v47)
  {
    v50 = 0;
    v64 = 0;
    v63 = __PAIR64__(v70, HIDWORD(v70));
    v66 = (16 * v47) | 8;
    while (1)
    {
      v51 = *(v46 + v49 + 8);
      v65 = v50;
      switch(v51)
      {
        case 10:
          v53 = krb5_storage_write(v36);
          if (v69[0] != v53)
          {
            v18 = 22;
            goto LABEL_48;
          }

          break;
        case 7:
          v52 = v71;
          if (v71 > 0xFFFFFFFB)
          {
            goto LABEL_101;
          }

          v37 = krb5_store_uint32(v36, HIDWORD(v63));
          if (v37)
          {
            goto LABEL_47;
          }

          v37 = sub_25226FD94(a1, v36, v71);
          if (v37)
          {
            goto LABEL_47;
          }

          HIDWORD(v64) = v66 + 4;
          goto LABEL_79;
        case 6:
          v52 = v72;
          if (v72 > 0xFFFFFFFB)
          {
            goto LABEL_101;
          }

          v37 = krb5_store_uint32(v36, v63);
          if (v37)
          {
            goto LABEL_47;
          }

          v37 = sub_25226FD94(a1, v36, v72);
          if (v37)
          {
            goto LABEL_47;
          }

          LODWORD(v64) = v66 + 4;
LABEL_79:
          v53 = v52 + 4;
          break;
        default:
          v54 = v46 + v49;
          v53 = *(v54 + 3);
          v55 = a2[6];
          v56 = *(v54 + 5);
          if (krb5_storage_write(v36) != v53)
          {
            goto LABEL_100;
          }

          break;
      }

      v37 = krb5_store_uint32(v34, *(a2[4] + v49 + 8));
      if (v37)
      {
        goto LABEL_47;
      }

      v37 = krb5_store_uint32(v34, v53);
      if (v37)
      {
        goto LABEL_47;
      }

      v37 = krb5_store_uint32(v34, v66);
      if (v37)
      {
        goto LABEL_47;
      }

      v37 = krb5_store_uint32(v34, 0);
      if (v37)
      {
        goto LABEL_47;
      }

      if (0xFFFFFFFFLL - v53 < v66 || (v57 = v66 + v53, v66 + v53 >= 0xFFFFFFF9))
      {
LABEL_101:
        v48 = "integer overrun";
LABEL_65:
        v18 = 22;
        krb5_set_error_message(a1, 22, v48, v63);
LABEL_48:
        krb5_data_free(v69);
        krb5_storage_free(v34);
        krb5_storage_free(v36);
        return v18;
      }

      v66 = (v57 + 7) & 0xFFFFFFF8;
      if (v66 != v57)
      {
        v37 = sub_25226FD94(a1, v36, v66 - v57);
        if (v37)
        {
          goto LABEL_47;
        }
      }

      v46 = a2[4];
      v49 += 16;
      v50 = v65 + 1;
      if (v65 + 1 >= *v46)
      {
        v49 = v64;
        v58 = HIDWORD(v64);
        goto LABEL_95;
      }
    }
  }

  v58 = 0;
LABEL_95:
  v59 = krb5_storage_to_data(v36, &v68);
  if (v59)
  {
    v18 = v59;
    krb5_set_error_message(a1, v59, "malloc: out of memory", v63);
    goto LABEL_48;
  }

  v67 = v58;
  v60 = krb5_storage_write(v34);
  v61 = v68;
  krb5_data_free(&v68);
  if (v60 != v61 || krb5_storage_to_data(v34, &v68))
  {
LABEL_100:
    v18 = krb5_enomem(a1);
    goto LABEL_48;
  }

  if (a5 && (v62 = sub_25226FE2C(a1, a5, SHIDWORD(v70), *(&v68 + 1), v68, (*(&v68 + 1) + v49), v72), v62) || a6 && a2[7] && (v62 = sub_25226FE2C(a1, a6, v70, *(&v68 + 1) + v49, v72, (*(&v68 + 1) + v67), v71), v62))
  {
    v18 = v62;
    krb5_data_free(&v68);
    goto LABEL_48;
  }

  *a7 = v68;
  krb5_data_free(v69);
  krb5_storage_free(v34);
  krb5_storage_free(v36);
  return 0;
}

uint64_t sub_25226FCD4(_krb5_context *a1, const krb5_keyblock *a2, _DWORD *a3, void *a4)
{
  v11 = 0;
  v10 = 0;
  v7 = krb5_crypto_init(a1, a2, 0, &v10);
  if (v7)
  {
    return v7;
  }

  checksum_type = krb5_crypto_get_checksum_type(a1, v10, &v11);
  krb5_crypto_destroy(a1, v10);
  if (!checksum_type)
  {
    if (!krb5_checksum_is_keyed(a1, v11))
    {
      *a3 = -138;
      *a4 = 16;
    }

    checksum_type = krb5_checksumsize(a1, v11, a4);
    if (!checksum_type)
    {
      *a3 = v11;
    }
  }

  return checksum_type;
}

uint64_t sub_25226FD94(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v6 = krb5_storage_write(a2);
    if (v6 <= 0)
    {
      break;
    }

    v3 -= v6;
    if (!v3)
    {
      return 0;
    }
  }

  return krb5_enomem(a1);
}

uint64_t sub_25226FE2C(_krb5_context *a1, const krb5_keyblock *a2, int a3, uint64_t a4, uint64_t a5, void *a6, size_t a7)
{
  __src = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  if (a3 != -138)
  {
    v12 = krb5_crypto_init(a1, a2, 0, &v18);
    if (!v12)
    {
      checksum = krb5_create_checksum(a1, v18, 0x11u, 0, a4, a5, &v15);
      krb5_crypto_destroy(a1, v18);
      if (checksum)
      {
        return checksum;
      }

      goto LABEL_7;
    }

    return v12;
  }

  v12 = sub_25226FF38(a1, a2, a4, a5, &v15);
  if (v12)
  {
    return v12;
  }

LABEL_7:
  if (v16 == a7)
  {
    memcpy(a6, __src, a7);
    checksum = 0;
  }

  else
  {
    checksum = 22;
    krb5_set_error_message(a1, 22, "pac checksum wrong length", v15);
  }

  sub_25228AB34(&v15);
  return checksum;
}

uint64_t sub_25226FF38(_krb5_context *a1, const krb5_keyblock *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = 0;
  v11[1] = 0;
  v9 = krb5_copy_keyblock(a1, a2, v11);
  if (!v9)
  {
    v9 = krb5_data_alloc((a5 + 8), 0x10uLL);
    if (!v9)
    {
      *a5 = -138;
      v9 = sub_252283CC0(a1, v11, a3, a4, 17, a5);
      if (v9)
      {
        krb5_data_free((a5 + 8));
      }
    }

    krb5_free_keyblock(a1, v11[0]);
  }

  return v9;
}

_DWORD *krb5_find_padata(uint64_t a1, int a2, int a3, int *a4)
{
  v4 = *a4;
  if (a2 <= *a4)
  {
    return 0;
  }

  result = (a1 + 24 * v4);
  v6 = a2 - v4;
  v7 = v4 + 1;
  while (*result != a3)
  {
    *a4 = v7;
    result += 6;
    ++v7;
    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t krb5_padata_add(_krb5_context *a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_realloc(*(a2 + 1), 24 * (*a2 + 1), 0x10800404ACF7207uLL);
  if (v10)
  {
    v11 = 0;
    *(a2 + 1) = v10;
    v12 = *a2;
    v13 = &v10[24 * *a2];
    *v13 = a3;
    *(v13 + 1) = a5;
    *(v13 + 2) = a4;
    *a2 = v12 + 1;
  }

  else
  {
    v11 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v11;
}

uint64_t _krb5_pk_find_cert(uint64_t *a1, int a2, uint64_t a3, int *a4, void *a5)
{
  v20[9] = *MEMORY[0x277D85DE8];
  v20[0] = 0x2522AFE58;
  v20[2] = "PKINIT EKU";
  v20[4] = 0x2522AFE70;
  v19[0] = xmmword_2522A9F80;
  v19[1] = unk_2522A9F90;
  v18[0] = 8;
  v18[1] = v19;
  v20[1] = v18;
  v20[3] = &unk_2797028A0;
  v9 = 2 * (a2 == 0);
  v20[5] = &unk_2797028F0;
  v20[6] = "any (or no)";
  v20[7] = 0;
  while (1)
  {
    match_eku = hx509_query_match_eku(a4, v20[v9 + 1]);
    if (match_eku)
    {
      break;
    }

    v15 = hx509_certs_find(a1[47], a3, a4, a5, v11, v12, v13, v14);
    if (v15)
    {
      sub_252270248(a1, v15, "Failed finding certificate with %s OID", v20[v9]);
      v9 += 2;
      if (v9 != 8)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v15 = match_eku;
  sub_252270248(a1, match_eku, "Failed setting %s OID", v20[v9]);
LABEL_7:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_252270248(uint64_t *a1, int a2, char *a3, ...)
{
  va_start(va, a3);
  v8[0] = 0;
  va_copy(&v8[1], va);
  if (vasprintf(v8, a3, va) == -1 || v8[0] == 0)
  {
    krb5_clear_error_message(a1);
  }

  else
  {
    error_string = hx509_get_error_string(a1[47], a2);
    if (error_string)
    {
      v7 = error_string;
      krb5_set_error_message(a1, a2, "%s: %s", v8[0], error_string);
      sub_25226B748(a1, 5, "%s: %s: %d", v8[0], v7, a2);
      free(v7);
    }

    else
    {
      krb5_clear_error_message(a1);
    }

    free(v8[0]);
  }
}

uint64_t _krb5_pk_mk_ContentInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = der_copy_oid();
  if (!result)
  {
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    *(a4 + 16) = v7;
    if (v7 && (v8 = malloc_type_malloc(*a2, 0x5CC1066BuLL), (*(*(a4 + 16) + 8) = v8) != 0))
    {
      memcpy(v8, *(a2 + 8), *a2);
      result = 0;
      **(a4 + 16) = *a2;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t sub_2522703B8(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8)
{
  v9 = a6;
  if (*(*a2 + 16) || (*(a2 + 52) & 0x20) != 0)
  {
    v15 = (a5 + 16);
    v98 = *(a5 + 16);
    if (krb5_config_get_BOOL_default(a1, 0, a4, a4, a5, a6, a7, a8, "realms"))
    {
      v99 = *v15;
      v21 = 1;
      *(a2 + 52) = *(a2 + 52) & 0xFE | krb5_config_get_BOOL_default(a1, 0, 1, v16, v17, v18, v19, v20, "realms");
    }

    else
    {
      v21 = 2;
    }

    *(a2 + 48) = v21;
    v100 = *v15;
    *(a2 + 52) = (2 * krb5_config_get_BOOL_default(a1, 0, 1, v16, v17, v18, v19, v20, "realms")) | *(a2 + 52) & 0xFD;
    v101 = *v15;
    *(a2 + 52) = (4 * krb5_config_get_BOOL_default(a1, 0, 1, v22, v23, v24, v25, v26, "realms")) | *(a2 + 52) & 0xFB;
    v102 = *v15;
    *(a2 + 52) = (8 * krb5_config_get_BOOL_default(a1, 0, 0, v27, v28, v29, v30, v31, "realms")) | *(a2 + 52) & 0xF7;
    v103 = *v15;
    BOOL_default = krb5_config_get_BOOL_default(a1, 0, 1, v32, v33, v34, v35, v36, "realms");
    v38 = *(a2 + 52) & 0xEF | (16 * BOOL_default);
    if ((a3 & 8) != 0)
    {
      v38 = *(a2 + 52) & 0xED | (16 * BOOL_default);
    }

    if ((a3 & 0x40) != 0)
    {
      v38 &= ~4u;
    }

    *(a2 + 52) = v38;
    if (*(*a2 + 48))
    {
      *(a2 + 52) = v38 & 0xE9;
    }

    v112[1] = 0;
    v113 = 0;
    v111[1] = 0;
    v112[0] = 0;
    v111[0] = 0;
    krb5_data_zero(v112);
    krb5_data_zero(v111);
    memset(v114, 0, sizeof(v114));
    v39 = *(a2 + 48);
    if (v39 != 2)
    {
      if (v39 != 1)
      {
        goto LABEL_83;
      }

      *v106 = 0;
      v125[0] = 0;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v40 = *(a5 + 24);
      v41 = sub_25228A708();
      if (v41 || (v41 = sub_25228A694(), v41))
      {
        checksum = v41;
        sub_25228BC74(&v116);
        krb5_clear_error_message(a1);
LABEL_109:
        free_ContentInfo(v114);
        return checksum;
      }

      krb5_us_timeofday(a1, v106, v125);
      *(&v118 + 1) = *v106;
      LODWORD(v118) = v125[0];
      LODWORD(v119) = v9;
      v112[0] = sub_25228BC64(&v116);
      v65 = malloc_type_malloc(v112[0], 0x50AB7927uLL);
      v112[1] = v65;
      if (!v65)
      {
        checksum = 12;
        goto LABEL_45;
      }

      v66 = sub_25228BC44((v65 + v112[0]) - 1, v112[0], &v116, &v113);
      if (v66)
      {
        checksum = v66;
        free(v112[1]);
        v112[1] = 0;
LABEL_45:
        sub_25228BC74(&v116);
        krb5_set_error_message(a1, checksum, "Failed encoding AuthPackWin: %d");
        goto LABEL_109;
      }

      sub_25228BC74(&v116);
      v67 = v112[0];
      if (v112[0] == v113)
      {
        v68 = &asn1_oid_id_pkcs7_data;
        goto LABEL_48;
      }

      goto LABEL_115;
    }

    v109 = 0u;
    *v110 = 0u;
    *&v107 = 0;
    v108 = 0u;
    *v106 = 0u;
    *v129 = 0;
    v130 = 0;
    v128 = 0;
    krb5_clear_error_message(a1);
    *v125 = 0;
    v126 = 0;
    v127 = 0;
    krb5_us_timeofday(a1, v129, &v128);
    *(&v107 + 1) = *v129;
    LODWORD(v108) = v9;
    v42 = sub_25228AC90(a5);
    v43 = malloc_type_malloc(v42, 0x88B32295uLL);
    if (!v43)
    {
      goto LABEL_107;
    }

    v44 = v43;
    v45 = sub_25228AC70(v43 + v42 - 1, v42, a5, &v130);
    if (v45)
    {
      checksum = v45;
      free(v44);
      goto LABEL_108;
    }

    if (v42 != v130)
    {
      krb5_abortx(a1, "internal error in ASN.1 encoder");
    }

    checksum = krb5_create_checksum(a1, 0, 0, 14, v44, v42, v125);
    free(v44);
    if (checksum)
    {
      goto LABEL_108;
    }

    v46 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    *(&v108 + 1) = v46;
    if (!v46)
    {
      checksum = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      goto LABEL_108;
    }

    checksum = krb5_data_copy(v46, v127, v126);
    sub_25228AB34(v125);
    if (checksum)
    {
LABEL_108:
      sub_25228BB44(v106);
      goto LABEL_109;
    }

    if ((*(a2 + 8) - 1) > 1)
    {
LABEL_100:
      v90 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
      *(&v109 + 1) = v90;
      if (v90)
      {
        v59 = hx509_crypto_available(a1[47], 0, *(*a2 + 16), v90 + 1, v90, v91, v92, v93);
        goto LABEL_102;
      }

LABEL_107:
      checksum = 12;
      goto LABEL_108;
    }

    v123 = 0;
    v124 = 0;
    v122 = 0;
    krb5_data_zero(&v123);
    krb5_config_get_string(a1, 0, v47, v48, v49, v50, v51, v52, "libdefaults");
    int_default = krb5_config_get_int_default(a1, 0, 0, v53, v54, v55, v56, v57, "libdefaults");
    v59 = _krb5_parse_moduli();
    if (v59)
    {
      goto LABEL_102;
    }

    v60 = sub_2522A40BC();
    *(a2 + 16) = v60;
    if (v60)
    {
      v59 = sub_252272FD0(a1, v60, int_default, *(a2 + 32));
      if (v59)
      {
        goto LABEL_102;
      }

      if (sub_2522A43E4(*(a2 + 16)) == 1)
      {
        v61 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
        v110[0] = v61;
        if (!v61)
        {
          krb5_clear_error_message(a1);
          goto LABEL_81;
        }

        krb5_data_alloc(v61, 0x28uLL);
        krb5_generate_random_block(v110[0]->data, *v110[0]);
        v59 = krb5_copy_data(a1, v110[0], (a2 + 24));
        if (!v59)
        {
          *&v109 = malloc_type_calloc(1uLL, 0x28uLL, 0x10B00401602C2DDuLL);
          if (v109)
          {
            v62 = *(a2 + 8);
            if (v62 == 2)
            {
              checksum = 22;
              goto LABEL_103;
            }

            if (v62 != 1)
            {
              krb5_abortx(a1, "internal error");
            }

            v63 = *(a2 + 16);
            memset(v115, 0, sizeof(v115));
            v59 = der_copy_oid();
            if (v59)
            {
              goto LABEL_102;
            }

            v121 = 0;
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v116 = 0u;
            v64 = sub_2522730B0(a1, v63[1], &v116);
            if (v64 || (v64 = sub_2522730B0(a1, v63[2], &v117 + 8), v64) || (v64 = sub_2522730B0(a1, v63[8], &v119), v64))
            {
              checksum = v64;
LABEL_40:
              free_DomainParameters(&v116);
              goto LABEL_103;
            }

            *(&v120 + 1) = 0;
            v121 = 0;
            v81 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
            *(v109 + 16) = v81;
            if (!v81)
            {
              free_DomainParameters(&v116);
              checksum = 0;
              goto LABEL_103;
            }

            v82 = sub_2522A1D14(&v116);
            **(v109 + 16) = v82;
            v83 = malloc_type_malloc(v82, 0x6DBB323DuLL);
            v84 = *(v109 + 16);
            v84[1] = v83;
            if (!v83)
            {
              checksum = 12;
              goto LABEL_40;
            }

            v85 = sub_2522A1CF4(v83 + *v84 - 1, *v84, &v116, &v122);
            if (v85)
            {
              checksum = v85;
              free(*(*(v109 + 16) + 8));
              *(*(v109 + 16) + 8) = 0;
              goto LABEL_40;
            }

            free_DomainParameters(&v116);
            if (v122 != **(v109 + 16))
            {
              goto LABEL_116;
            }

            v59 = sub_2522730B0(a1, v63[4], v115);
            if (v59)
            {
              goto LABEL_102;
            }

            v123 = length_DHPublicKey(v115);
            v86 = malloc_type_malloc(v123, 0x84AA06C5uLL);
            v124 = v86;
            if (!v86)
            {
              checksum = 12;
              goto LABEL_97;
            }

            v87 = encode_DHPublicKey(v86 + v123 - 1, v123, v115, &v122);
            if (v87)
            {
              checksum = v87;
              free(v124);
              v124 = 0;
LABEL_97:
              der_free_heim_integer();
              goto LABEL_103;
            }

            der_free_heim_integer();
            if (v122 != v123)
            {
              krb5_abortx(a1, "asn1 internal error");
            }

            v88 = v109;
            v89 = v124;
            *(v109 + 24) = 8 * v122;
            *(v88 + 32) = v89;
            goto LABEL_100;
          }

LABEL_81:
          checksum = 12;
          goto LABEL_103;
        }

LABEL_102:
        checksum = v59;
LABEL_103:
        if (!checksum)
        {
          v112[0] = sub_25228BB34(v106);
          v94 = malloc_type_malloc(v112[0], 0xABC15B93uLL);
          v112[1] = v94;
          if (v94)
          {
            v95 = sub_25228BB14((v94 + v112[0]) - 1, v112[0], v106, &v113);
            if (!v95)
            {
              sub_25228BB44(v106);
              v67 = v112[0];
              if (v112[0] == v113)
              {
                v68 = &unk_279702880;
LABEL_48:
                signed_1 = hx509_cms_create_signed_1(a1[47], 4 * (*(*a2 + 16) == 0), v68, v112[1], v67, 0, *(*a2 + 16), *(a2 + 40), 0, *(*a2 + 32), v111);
                if (signed_1)
                {
                  checksum = signed_1;
                  sub_252270248(a1, signed_1, "Create CMS signedData");
                  krb5_data_free(v112);
                  goto LABEL_109;
                }

                krb5_data_free(v112);
                checksum = hx509_cms_wrap_ContentInfo(&asn1_oid_id_pkcs7_signedData, v111, v112);
                krb5_data_free(v111);
                if (checksum)
                {
                  krb5_set_error_message(a1, checksum, "ContentInfo wrapping of signedData failed", v97, v104, v105, 0, *v106, *&v106[2], v107, v108, v109, v110[0], v110[1]);
                  goto LABEL_109;
                }

                v70 = *(a2 + 48);
                if (v70 != 2)
                {
                  if (v70 == 1)
                  {
                    v117 = 0uLL;
                    *&v118 = 0;
                    v116 = *v112;
                    v112[0] = sub_25228BCA4(&v116);
                    v71 = malloc_type_malloc(v112[0], 0x8FA74BC5uLL);
                    v112[1] = v71;
                    if (v71)
                    {
                      checksum = sub_25228BC84((v71 + v112[0]) - 1, v112[0], &v116, &v113);
                      if (checksum)
                      {
                        free(v112[1]);
                        v112[1] = 0;
                      }
                    }

                    else
                    {
                      checksum = 12;
                    }

                    sub_25228BCB4(&v116);
                    v80 = 15;
LABEL_70:
                    if (checksum)
                    {
                      krb5_set_error_message(a1, checksum, "PA-PK-AS-REQ %d");
                      goto LABEL_109;
                    }

                    if (v112[0] == v113)
                    {
                      checksum = krb5_padata_add(a1, a7, v80, v112[1], v112[0]);
                      if (checksum)
                      {
                        free(v112[1]);
                      }

                      else
                      {
                        krb5_padata_add(a1, a7, 132, 0, 0);
                      }

                      goto LABEL_109;
                    }

LABEL_116:
                    krb5_abortx(a1, "Internal ASN1 encoder error");
                  }

LABEL_83:
                  krb5_abortx(a1, "internal pkinit error");
                }

                v117 = 0uLL;
                v116 = *v112;
                if ((*(a2 + 52) & 0x10) == 0)
                {
LABEL_59:
                  *(&v117 + 1) = 0;
                  v112[0] = sub_25228BAF4(&v116);
                  v72 = malloc_type_malloc(v112[0], 0xF239DFA4uLL);
                  v112[1] = v72;
                  if (v72)
                  {
                    checksum = sub_25228BAD4((v72 + v112[0]) - 1, v112[0], &v116, &v113);
                    if (checksum)
                    {
                      free(v112[1]);
                      v112[1] = 0;
                    }
                  }

                  else
                  {
                    checksum = 12;
                  }

                  sub_25228BB04(&v116);
                  v80 = 16;
                  goto LABEL_70;
                }

                v74 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
                *&v117 = v74;
                if (v74)
                {
                  v79 = hx509_certs_iter_f(a1[47], *(*a2 + 24), sub_2522731B0, v74, v75, v76, v77, v78);
                  if (!v79)
                  {
                    goto LABEL_59;
                  }

                  checksum = v79;
                  krb5_set_error_message(a1, v79, "pk-init: failed to build trustedCertifiers");
                }

                else
                {
                  checksum = 12;
                  krb5_set_error_message(a1, 12, "malloc: out of memory");
                }

                sub_25228BB04(&v116);
                goto LABEL_109;
              }

LABEL_115:
              krb5_abortx(a1, "internal ASN1 encoder error");
            }

            checksum = v95;
            free(v112[1]);
            v112[1] = 0;
          }

          else
          {
            checksum = 12;
          }

          sub_25228BB44(v106);
          krb5_set_error_message(a1, checksum, "Failed encoding AuthPack: %d", checksum);
          goto LABEL_109;
        }

        goto LABEL_108;
      }

      v73 = "pkinit: failed to generate DH key";
    }

    else
    {
      v73 = "malloc: out of memory";
    }

    checksum = 12;
    krb5_set_error_message(a1, 12, v73);
    goto LABEL_103;
  }

  checksum = 2314790721;
  krb5_set_error_message(a1, -1980176575, "PKINIT: No user certificate given");
  return checksum;
}

uint64_t sub_252270F68(uint64_t *a1, char *a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void **a9)
{
  v37 = 0;
  v16 = *(a3 + 48);
  if (v16 != 1)
  {
    if (v16 == 2)
    {
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      v32 = 0;
      v33 = 0;
      v31[0] = 0;
      v31[1] = 0;
      if (*a8 == 17)
      {
        v18 = sub_25228BBB4(*(a8 + 16), *(a8 + 8), v35, &v37);
        if (v18)
        {
          v19 = v18;
          v20 = "Failed to decode pkinit AS rep";
LABEL_22:
          v22 = a1;
          v23 = v19;
          goto LABEL_23;
        }

        if (LODWORD(v35[0]) == 2)
        {
          sub_25226B748(a1, 5, "krb5_get_init_creds: using kinit enc reply key");
          goto LABEL_19;
        }

        if (LODWORD(v35[0]) == 1)
        {
          sub_25226B748(a1, 5, "krb5_get_init_creds: using pkinit dh");
LABEL_19:
          v34 = *(v35 + 8);
          v24 = hx509_cms_unwrap_ContentInfo(&v34, v31, &v32, 0);
          if (v24)
          {
            v19 = v24;
            sub_25228BBD4(v35);
            goto LABEL_21;
          }

          if (LODWORD(v35[0]) == 2)
          {
            v26 = sub_2522716F0(a1, 2, &v32, v31, a2, a3, a5, a6, a7, a9);
          }

          else
          {
            if (LODWORD(v35[0]) != 1)
            {
              krb5_abortx(a1, "pk-init as-rep case not possible to happen");
            }

            v26 = sub_2522712CC(a1, &v32, v31, a2, a3, a4, a5, *(a3 + 24), *(&v35[1] + 1), a6, a9);
          }

          v19 = v26;
          der_free_octet_string();
          der_free_oid();
          sub_25228BBD4(v35);
          return v19;
        }

        v29 = 0;
        v30 = 0;
        sub_25228BBD4(v35);
        v36 = 0;
        memset(v35, 0, sizeof(v35));
        sub_25226B748(a1, 5, "krb5_get_init_creds: using BTMM kinit enc reply key");
        if (sub_25228BD24(*(a8 + 16), *(a8 + 8), &v29, &v37))
        {
          v20 = "PKINIT: -27 reply invalid content type";
        }

        else
        {
          if (!v29)
          {
            v27 = v30;
            if (v30)
            {
              LODWORD(v35[0]) = 2;
              *&v35[1] = v30[1];
              *(&v35[0] + 1) = *v30;
              *v30 = 0;
              v27[1] = 0;
              sub_25228BD44(&v29);
              goto LABEL_19;
            }
          }

          sub_25228BD44(&v29);
          v20 = "DH mode not supported for BTMM mode";
        }
      }

      else
      {
        v20 = "PKINIT: wrong padata recv";
      }
    }

    else
    {
      v20 = "PKINIT: unknown reply type";
    }

LABEL_17:
    v19 = 22;
    v22 = a1;
    v23 = 22;
LABEL_23:
    krb5_set_error_message(v22, v23, v20, v28);
    return v19;
  }

  memset(v35, 0, 24);
  v21 = sub_25228BCC4(*(a8 + 16), *(a8 + 8), v35, &v37);
  if (v21)
  {
    v19 = v21;
    v28 = v21;
    v20 = "PKINIT: Failed decoding windows pkinit reply %d";
    goto LABEL_22;
  }

  krb5_clear_error_message(a1);
  if (LODWORD(v35[0]) != 2)
  {
    sub_25228BCE4(v35);
    v20 = "PKINIT: win2k reply invalid content type";
    goto LABEL_17;
  }

  v34 = 0uLL;
  v32 = 0;
  v33 = 0;
  v19 = hx509_cms_unwrap_ContentInfo(v35 + 1, &v32, &v34, 0);
  sub_25228BCE4(v35);
  if (v19)
  {
LABEL_21:
    v20 = "PKINIT: failed to unwrap CI";
    goto LABEL_22;
  }

  v19 = sub_2522716F0(a1, 1, &v34, &v32, a2, a3, a5, a6, a7, a9);
  der_free_octet_string();
  der_free_oid();
  return v19;
}

uint64_t sub_2522712CC(_krb5_context *a1, uint64_t *a2, uint64_t a3, char *a4, uint64_t a5, int a6, uint64_t a7, uint64_t *a8, uint64_t *a9, int a10, void **a11)
{
  v43 = 0;
  v40[0] = 0;
  v40[1] = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  krb5_data_zero(&v38);
  v41 = 0u;
  v42 = 0u;
  if (der_heim_oid_cmp())
  {
    v18 = 22;
    krb5_set_error_message(a1, 22, "PKINIT: Invalid content type");
    return v18;
  }

  v19 = sub_252273400(a1, a2[1], *a2, *a5, v40, &v38, &v43);
  v20 = v43;
  if (!v19)
  {
    v19 = sub_25227350C(a1, a4, a7, a5, v43);
    if (!v19)
    {
      if (der_heim_oid_cmp())
      {
        v18 = 2529638952;
        v22 = "pkinit - dh reply contains wrong oid";
LABEL_20:
        v24 = a1;
        v25 = v18;
LABEL_21:
        krb5_set_error_message(v24, v25, v22);
        goto LABEL_6;
      }

      v23 = sub_25228BBE4(v39, v38, &v41, &v37);
      if (v23)
      {
        v18 = v23;
        v22 = "pkinit - failed to decode KDC DH Key Info";
        goto LABEL_20;
      }

      if (v42 != a10)
      {
        v18 = 2529638953;
        v22 = "PKINIT: DH nonce is wrong";
        goto LABEL_20;
      }

      if (*(&v42 + 1))
      {
        if (!a9)
        {
          v18 = 2529638972;
          v22 = "pkinit; got key expiration without server nonce";
          goto LABEL_25;
        }

        if (!a8)
        {
          v18 = 2529638972;
          v22 = "pkinit; got DH reuse but no client nonce";
LABEL_25:
          v24 = a1;
          v25 = -1765328324;
          goto LABEL_21;
        }
      }

      else
      {
        if (a9)
        {
          v18 = 2529638972;
          v22 = "pkinit: got server nonce without key expiration";
          goto LABEL_25;
        }

        a8 = 0;
      }

      v37 = (v41 + 7) >> 3;
      if (*(a5 + 8) != 1)
      {
        v18 = 22;
        goto LABEL_6;
      }

      memset(v36, 0, sizeof(v36));
      v26 = decode_DHPublicKey(*(&v41 + 1), (v41 + 7) >> 3, v36, 0);
      if (v26)
      {
        v18 = v26;
        v22 = "pkinit: can't decode without key expiration";
        goto LABEL_20;
      }

      v27 = sub_252273134(a1, "DHPublicKey", v36);
      sub_2522A1DC4(v36);
      if (!v27)
      {
        v18 = 12;
        goto LABEL_6;
      }

      v37 = sub_2522A426C(*(a5 + 16));
      v28 = malloc_type_malloc(v37, 0x6EA2BF32uLL);
      if (!v28)
      {
        v18 = 12;
        krb5_set_error_message(a1, 12, "malloc: out of memory");
        sub_2522A3C3C(v27);
        goto LABEL_6;
      }

      v29 = *(a5 + 16);
      v30 = v28;
      v31 = sub_2522A43F0(v28, v27, v29);
      if (v31 < 1 || v31 < v37 >> 1)
      {
        v18 = 2529638972;
        krb5_set_error_message(a1, -1765328324, "PKINIT: Can't compute Diffie-Hellman key");
        sub_2522A3C3C(v27);
        v32 = 0;
LABEL_47:
        bzero(v30, v32);
        free(v30);
        goto LABEL_6;
      }

      if (v31 >= v37)
      {
        v34 = v31;
      }

      else
      {
        v33 = v37 - v31;
        memmove(&v30[v33], v30, v31);
        bzero(v30, v33);
        v34 = v37;
        if (v37 <= 0)
        {
          v18 = 22;
          krb5_set_error_message(a1, 22, "PKINIT: resulting DH key <= 0");
          v34 = 0;
LABEL_46:
          sub_2522A3C3C(v27);
          v32 = v34;
          goto LABEL_47;
        }
      }

      v35 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
      *a11 = v35;
      if (v35)
      {
        v18 = _krb5_pk_octetstring2key(a1, a6, v30, v34, a8, a9, v35);
        if (v18)
        {
          krb5_set_error_message(a1, v18, "PKINIT: can't create key from DH key");
          free(*a11);
          *a11 = 0;
        }
      }

      else
      {
        v18 = 12;
        krb5_set_error_message(a1, 12, "malloc: out of memory");
      }

      goto LABEL_46;
    }
  }

  v18 = v19;
LABEL_6:
  hx509_cert_free(v20);
  if (v39)
  {
    krb5_data_free(&v38);
  }

  der_free_oid();
  sub_25228BC04(&v41);
  return v18;
}

uint64_t sub_2522716F0(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4, char *a5, _DWORD *a6, uint64_t a7, int a8, uint64_t a9, void **a10)
{
  v34 = 0;
  v31[0] = 0;
  v31[1] = 0;
  if (!der_heim_oid_cmp())
  {
    v32 = 0;
    v33 = 0;
    if (a6[12] == 1)
    {
      v18 = 3;
    }

    else
    {
      v18 = 1;
    }

    v19 = hx509_cms_unenvelope(a1[47], *(*a6 + 8), v18, a3[1], *a3, 0, 0, v31, &v32);
    if (v19)
    {
      v17 = v19;
      sub_252270248(a1, v19, "Failed to unenvelope CMS data in PK-INIT reply");
      return v17;
    }

    der_free_oid();
    if (a2 == 1)
    {
      v30[0] = 0;
      v30[1] = 0;
      v28 = 0;
      v29 = 0;
      if (hx509_cms_unwrap_ContentInfo(&v32, v30, &v28, 0))
      {
        v20 = der_length_len() + 1;
        v21 = malloc_type_malloc(v32 + v20, 0x4806BD3uLL);
        memcpy(&v21[v20], v33, v32);
        v22 = der_put_length_and_tag();
        if (v22)
        {
          return v22;
        }

        free(v33);
        v32 += v20;
        v33 = v21;
        v23 = hx509_cms_unwrap_ContentInfo(&v32, v30, &v28, 0);
        if (v23)
        {
          v17 = v23;
LABEL_18:
          v24 = 0;
          goto LABEL_22;
        }
      }

      if (der_heim_oid_cmp())
      {
        v17 = 22;
        krb5_set_error_message(a1, 22, "PKINIT: Invalid content type");
        der_free_oid();
        der_free_octet_string();
        goto LABEL_18;
      }

      der_free_oid();
      krb5_data_free(&v32);
      v17 = krb5_data_copy(&v32, v29, v28);
      der_free_octet_string();
      if (v17)
      {
        krb5_set_error_message(a1, v17, "malloc: out of memory");
        goto LABEL_18;
      }
    }

    v25 = sub_252273400(a1, v33, v32, *a6, v31, &v32, &v34);
    v24 = v34;
    if (!v25)
    {
      v25 = sub_25227350C(a1, a5, a7, a6, v34);
      if (!v25)
      {
        v27 = sub_252273654(a1, &v32, a9, a10);
        v17 = v27;
        if (a2 != 1 || !v27 || (a6[13] & 1) != 0)
        {
          goto LABEL_22;
        }

        v25 = sub_2522737EC(a1, &v32, a8, a10);
      }
    }

    v17 = v25;
LABEL_22:
    hx509_cert_free(v24);
    der_free_oid();
    krb5_data_free(&v32);
    return v17;
  }

  v17 = 22;
  krb5_set_error_message(a1, 22, "PKINIT: Invalid content type");
  return v17;
}

uint64_t sub_2522719D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(*a2 + 16);
  if (v6)
  {
    hx509_cert_free(v6);
  }

  v7 = hx509_cert_ref(a3);
  v8 = *a2;
  *(v8 + 16) = v7;
  if (*(v8 + 8))
  {
    hx509_certs_free((v8 + 8));
    v8 = *a2;
    v7 = *(*a2 + 16);
  }

  if (!v7)
  {
    return 0;
  }

  v14 = hx509_certs_init(*(a1 + 376), "MEMORY:pkinit-set-user-id", 0, 0, (v8 + 8));
  if (!v14)
  {
    hx509_certs_add(*(a1 + 376), *(*a2 + 8), a3, v9, v10, v11, v12, v13);
    if (*(*a2 + 16) && _krb5_have_debug(a1))
    {
      v21 = 0;
      v20 = 0;
      subject = hx509_cert_get_subject(*(*a2 + 16), &v21);
      if (subject)
      {
        return subject;
      }

      v14 = hx509_name_to_string(v21, &v20);
      hx509_name_free(&v21);
      if (v14)
      {
        return v14;
      }

      serialnumber = hx509_cert_get_serialnumber(*(*a2 + 16));
      if (serialnumber)
      {
        v14 = serialnumber;
        v18 = &v20;
      }

      else
      {
        v14 = der_print_hex_heim_integer();
        der_free_heim_integer();
        if (!v14)
        {
          sub_25226B748(a1, 2, "using cert: subject: %s sn: %s", v20, 0);
          free(v20);
          v19 = 0;
          goto LABEL_19;
        }

        v18 = &v21;
      }

      v19 = *v18;
LABEL_19:
      free(v19);
      return v14;
    }

    return 0;
  }

  return v14;
}

uint64_t _krb5_pk_load_id(uint64_t *a1, void *a2, char *a3, char *a4, char **a5, char **a6, uint64_t a7, uint64_t a8, char *__s1)
{
  *a2 = 0;
  if (a4)
  {
    v17 = malloc_type_calloc(1uLL, 0x38uLL, 0x1020040DD5A6BABuLL);
    if (v17)
    {
      v18 = v17;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      if (a3)
      {
        *v39 = 0;
        v19 = hx509_lock_init(a1[47], v39);
        if (v19)
        {
          inited = v19;
          sub_252270248(a1, v19, "Failed init lock");
          goto LABEL_33;
        }

        if (__s1 && *__s1)
        {
          hx509_lock_add_password(*v39, __s1);
        }

        if (a7)
        {
          v40 = a1;
          v41 = a7;
          v42 = a8;
          v22 = hx509_lock_set_prompter(*v39, sub_252271E80, &v40);
          if (v22)
          {
            inited = v22;
            hx509_lock_free(*v39);
            goto LABEL_33;
          }
        }

        inited = hx509_certs_init(a1[47], a3, 0, *v39, v18 + 1);
        hx509_lock_free(*v39);
        if (inited)
        {
          sub_252270248(a1, inited, "Failed to init cert certs");
          goto LABEL_33;
        }
      }

      else
      {
        v17[1] = 0;
      }

      v21 = hx509_certs_init(a1[47], a4, 0, 0, v18 + 3);
      if (v21)
      {
        inited = v21;
        sub_252270248(a1, v21, "Failed to init anchors");
      }

      else
      {
        v23 = hx509_certs_init(a1[47], "MEMORY:pkinit-cert-chain", 0, 0, v18 + 4);
        if (!v23)
        {
          if (a5)
          {
            v25 = *a5;
            if (*a5)
            {
              v30 = a5 + 1;
              do
              {
                if (hx509_certs_append(a1[47], v18[4], 0, v25))
                {
                  sub_25226B748(a1, 5, "Failed to load cert pool: %s", *(v30 - 1));
                }

                v31 = *v30++;
                v25 = v31;
              }

              while (v31);
            }
          }

          v32 = a1[47];
          if (a6)
          {
            v33 = hx509_revoke_init(v32, v18 + 5, v24, v25, v26, v27, v28, v29);
            if (v33)
            {
              inited = v33;
              sub_252270248(a1, v33, "Failed init revoke list");
              goto LABEL_33;
            }

            v35 = *a6;
            if (*a6)
            {
              v36 = a6 + 1;
              while (1)
              {
                v37 = hx509_revoke_add_crl(a1[47], v18[5], v35);
                if (v37)
                {
                  break;
                }

                v38 = *v36++;
                v35 = v38;
                if (!v38)
                {
                  goto LABEL_31;
                }
              }

              inited = v37;
              sub_252270248(a1, v37, "Failed load revoke list");
              goto LABEL_33;
            }
          }

          else
          {
            hx509_context_set_missing_revoke(v32, 1);
          }

LABEL_31:
          inited = hx509_verify_init_ctx(a1[47], v18);
          if (!inited)
          {
            hx509_verify_attach_anchors(*v18, v18[3]);
            hx509_verify_attach_revoke(*v18, v18[5]);
            *a2 = v18;
            return inited;
          }

          sub_252270248(a1, inited, "Failed init verify context");
          goto LABEL_33;
        }

        inited = v23;
        sub_252270248(a1, v23, "Failed to init chain");
      }

LABEL_33:
      hx509_verify_destroy_ctx(*v18);
      hx509_certs_free(v18 + 1);
      hx509_certs_free(v18 + 3);
      hx509_certs_free(v18 + 4);
      hx509_revoke_free(v18 + 5);
      free(v18);
      return inited;
    }

    inited = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  else
  {
    inited = 2314790722;
    krb5_set_error_message(a1, -1980176574, "PKINIT: No anchor given");
  }

  return inited;
}

uint64_t sub_252271E80(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v12 = 0;
  v4 = a2[3];
  v8[0] = a2[2];
  v8[1] = v4;
  v9 = *a2;
  v10 = 0;
  LODWORD(v10) = hx509_prompt_hidden(*(a2 + 2));
  v11 = v8;
  v5 = *(a2 + 2);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 4)
    {
      goto LABEL_6;
    }

    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  LODWORD(v12) = v6;
LABEL_6:
  result = (*(a1 + 8))(*a1, *(a1 + 16), 0, 0, 1, &v9);
  if (result)
  {
    bzero(a2[3], a2[2]);
    return 1;
  }

  return result;
}

uint64_t sub_252271F28(_krb5_context *a1, uint64_t a2, uint64_t a3, char *a4, void ***a5)
{
  v6 = a4;
  __stringp = a4;
  *a5 = 0;
  v10 = malloc_type_calloc(1uLL, 0x58uLL, 0x109004044CB81CDuLL);
  if (!v10)
  {
    v17 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v17;
  }

  v11 = v10;
  v12 = __stringp;
  v13 = MEMORY[0x277D85DE0];
  do
  {
    v14 = v12;
    v15 = *v6;
    if (v15 < 0)
    {
      v16 = __maskrune(*v6, 0x4000uLL);
    }

    else
    {
      v16 = *(v13 + 4 * v15 + 60) & 0x4000;
    }

    v12 = ++v6;
  }

  while (v16);
  __stringp = v14;
  if (v15 != 35)
  {
    v18 = strsep(&__stringp, " \t");
    if (v18)
    {
      v19 = strdup(v18);
      *v11 = v19;
      if (!v19)
      {
        v17 = 12;
        krb5_set_error_message(a1, 12, "malloc: out of memeory");
LABEL_22:
        free(*v11);
        der_free_heim_integer();
        der_free_heim_integer();
        der_free_heim_integer();
        free(v11);
        return v17;
      }

      v20 = strsep(&__stringp, " \t");
      if (v20)
      {
        v21 = atoi(v20);
        v11[1] = v21;
        if (v21)
        {
          v22 = sub_25227216C(a1, &__stringp);
          if (v22 || (v22 = sub_25227216C(a1, &__stringp), v22))
          {
            v17 = v22;
          }

          else
          {
            v17 = sub_25227216C(a1, &__stringp);
            if (!v17)
            {
              *a5 = v11;
              return v17;
            }
          }

          goto LABEL_22;
        }

        v25 = a2;
        v26 = a3;
        v23 = "moduli file %s have un-parsable bits on line %d";
      }

      else
      {
        v25 = a2;
        v26 = a3;
        v23 = "moduli file %s missing bits on line %d";
      }
    }

    else
    {
      v25 = a2;
      v26 = a3;
      v23 = "moduli file %s missing name on line %d";
    }

    v17 = 22;
    krb5_set_error_message(a1, 22, v23, v25, v26);
    goto LABEL_22;
  }

  free(v11);
  return 0;
}

uint64_t sub_25227216C(_krb5_context *a1, char **__stringp)
{
  if (strsep(__stringp, " \t"))
  {
    v3 = der_parse_hex_heim_integer();
    if (v3)
    {
      krb5_set_error_message(a1, v3, "moduli file %s failed parsing %s on line %d");
    }
  }

  else
  {
    v3 = 22;
    krb5_set_error_message(a1, 22, "moduli file %s missing %s on line %d");
  }

  return v3;
}

void sub_25227221C(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1;
    do
    {
      free(*v2);
      v4 = *v3;
      der_free_heim_integer();
      v5 = *v3;
      der_free_heim_integer();
      v6 = *v3;
      der_free_heim_integer();
      free(*v3);
      v7 = v3[1];
      ++v3;
      v2 = v7;
    }

    while (v7);
  }

  free(a1);
}

uint64_t _krb5_parse_moduli()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v18 = *MEMORY[0x277D85DE8];
  *v1 = 0;
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x2004093837F09uLL);
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  __strlcpy_chk();
  v8 = sub_252271F28(v5, "builtin", 1, __s, v7);
  if (!v8)
  {
    __strlcpy_chk();
    v8 = sub_252271F28(v5, "builtin", 1, __s, v7 + 1);
    if (!v8)
    {
      if (!v4)
      {
        v4 = "/etc/krb5.moduli";
      }

      __filename = 0;
      if (_krb5_expand_default_cc_name_0(v5, v4, &__filename) || (v10 = fopen(__filename, "r"), krb5_xfree(__filename), !v10) || (rk_cloexec_file(v10), !fgets(__s, 4096, v10)))
      {
LABEL_8:
        v9 = 0;
        *v2 = v7;
        goto LABEL_20;
      }

      LODWORD(v11) = 2;
      v12 = 1;
      while (1)
      {
        __filename = 0;
        __s[strcspn(__s, "\n")] = 0;
        v13 = malloc_type_realloc(v7, 8 * v11 + 16, 0x2004093837F09uLL);
        if (!v13)
        {
          break;
        }

        v7 = v13;
        v13[v11] = 0;
        v8 = sub_252271F28(v5, v4, v12, __s, &__filename);
        if (v8)
        {
          goto LABEL_4;
        }

        if (__filename)
        {
          v7[v11] = __filename;
          v11 = v11 + 1;
          v7[v11] = 0;
        }

        v12 = (v12 + 1);
        if (!fgets(__s, 4096, v10))
        {
          goto LABEL_8;
        }
      }

      sub_25227221C(v7);
LABEL_19:
      v9 = 12;
      krb5_set_error_message(v5, 12, "malloc: out of memory");
      goto LABEL_20;
    }
  }

LABEL_4:
  v9 = v8;
  sub_25227221C(v7);
LABEL_20:
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t _krb5_dh_group_ok(krb5_context a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char ***a6, char **a7)
{
  v8 = a6;
  if (a7)
  {
    *a7 = 0;
  }

  if (*a6)
  {
    while (1)
    {
      if (!der_heim_integer_cmp())
      {
        v12 = *v8;
        if (!der_heim_integer_cmp())
        {
          if (!a5)
          {
            break;
          }

          v13 = *v8;
          if (!der_heim_integer_cmp())
          {
            break;
          }
        }
      }

      v14 = v8[1];
      ++v8;
      if (!v14)
      {
        goto LABEL_9;
      }
    }

    if (a2 && (v17 = *v8, (*v8)[1] < a2))
    {
      v15 = 2529638977;
      v19 = *v17;
      krb5_set_error_message(a1, -1765328319, "PKINIT: DH group parameter %s no accepted, not enough bits generated");
    }

    else if (a7)
    {
      v18 = strdup(**v8);
      v15 = 0;
      *a7 = v18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_9:
    v15 = 2529638977;
    krb5_set_error_message(a1, -1765328319, "PKINIT: DH group parameter no ok");
  }

  return v15;
}

void sub_25227262C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      if (*(v2 + 8) == 1)
      {
        v4 = *(v2 + 16);
        if (v4)
        {
          sub_2522A4188(v4);
        }
      }

      if (*v2)
      {
        hx509_verify_destroy_ctx(**v2);
        hx509_certs_free((*v2 + 8));
        hx509_cert_free(*(*v2 + 16));
        hx509_certs_free((*v2 + 24));
        hx509_certs_free((*v2 + 32));
        v5 = *(v2 + 24);
        if (v5)
        {
          krb5_free_data(0, v5);
          *(v2 + 24) = 0;
        }

        v6 = *(v2 + 32);
        if (v6)
        {
          sub_25227221C(v6);
        }

        free(*v2);
        *v2 = 0;
      }

      free(*(*(a1 + 88) + 32));
      *(*(a1 + 88) + 32) = 0;
    }
  }
}

uint64_t krb5_get_init_creds_opt_set_pkinit(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, char *a5, char **strings, char **a7, char a8, uint64_t a9, uint64_t a10, char *__s1)
{
  ret_value = 0;
  if (!*(a2 + 88))
  {
    v30 = "PKINIT: on non extendable opt";
LABEL_16:
    v29 = 22;
    v31 = a1;
    v32 = 22;
LABEL_18:
    krb5_set_error_message(v31, v32, v30);
    return v29;
  }

  v19 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A004070047ECAuLL);
  *(*(a2 + 88) + 32) = v19;
  if (!v19)
  {
    v30 = "malloc: out of memory";
    v29 = 12;
    v31 = a1;
    v32 = 12;
    goto LABEL_18;
  }

  v19[52] &= ~1u;
  *(*(*(a2 + 88) + 32) + 52) |= 2u;
  *(*(*(a2 + 88) + 32) + 52) |= 4u;
  *(*(*(a2 + 88) + 32) + 40) = 0;
  if (!strings)
  {
    strings = krb5_config_get_strings(a1, 0, v20, v21, v22, v23, v24, v25, "appdefaults");
  }

  if (!strings)
  {
    strings = &off_27F4D65A8;
  }

  if (!a7)
  {
    a7 = krb5_config_get_strings(a1, 0, v20, v21, v22, v23, v24, v25, "appdefaults");
  }

  if (!a5)
  {
    realm = krb5_principal_get_realm(a1, a3);
    krb5_appdefault_string(a1, "kinit", realm, "pkinit_anchors", 0, &ret_value);
    a5 = ret_value;
  }

  v27 = *(a2 + 88);
  if ((a8 & 4) != 0)
  {
    *(*(v27 + 32) + 52) |= 0x20u;
    v27 = *(a2 + 88);
  }

  id = _krb5_pk_load_id(a1, *(v27 + 32), a4, a5, strings, a7, a9, a10, __s1);
  if (!id)
  {
    if ((a8 & 8) != 0)
    {
      v34 = **(*(a2 + 88) + 32);
      *(v34 + 48) |= 1u;
    }

    if (a3)
    {
      is_lkdc = krb5_principal_is_lkdc(a1, a3);
      v36 = *(a2 + 88);
      if (is_lkdc)
      {
        *(**(v36 + 32) + 48) |= 1u;
      }
    }

    else
    {
      v36 = *(a2 + 88);
    }

    v37 = *(v36 + 32);
    v38 = *(*v37 + 8);
    if (v38)
    {
      v44 = j__heim_retain(v38);
      v53[0] = 0;
      v55 = 0;
      v45 = *v37;
      if (*(*v37 + 8))
      {
        hx509_certs_free((*v37 + 8));
        v45 = *v37;
      }

      v46 = *(v45 + 16);
      if (v46)
      {
        hx509_cert_free(v46);
        v45 = *v37;
        *(*v37 + 16) = 0;
      }

      hx509_certs_merge(a1[47], *(v45 + 32), v44, v39, v40, v41, v42, v43);
      *(*v37 + 8) = v44;
      *(v37 + 52) &= ~0x20u;
      alloc = hx509_query_alloc(a1[47], v53);
      if (alloc)
      {
        sub_252270248(a1, alloc, "Allocate query to find signing certificate");
      }

      else
      {
        hx509_query_match_option(v53[0], 1);
        hx509_query_match_option(v53[0], 3);
        cert = _krb5_pk_find_cert(a1, *(*v37 + 48) & 1, *(*v37 + 8), v53[0], &v55);
        hx509_query_free(a1[47], v53[0]);
        if (!cert)
        {
          sub_2522719D8(a1, v37, v55);
          hx509_cert_free(v55);
        }
      }
    }

    else
    {
      *(*v37 + 16) = 0;
    }

    if ((a8 & 2) == 0)
    {
      v49 = a1[47];
      v50 = *(*(a2 + 88) + 32);
      v51 = *(*v50 + 16);
      v50[2] = 1;
      if (v51)
      {
        memset(v53, 0, sizeof(v53));
        if (!sub_25228F1E8(v49, v51))
        {
          if (!der_heim_oid_cmp())
          {
            *(*(*(a2 + 88) + 32) + 8) = 2;
          }

          free_AlgorithmIdentifier(v53);
        }
      }

      return 0;
    }

    v52 = *(*(a2 + 88) + 32);
    v52[2] = 0;
    if (*(*v52 + 8))
    {
      return 0;
    }

    v30 = "No anonymous pkinit support in RSA mode";
    goto LABEL_16;
  }

  v29 = id;
  free(*(*(a2 + 88) + 32));
  *(*(a2 + 88) + 32) = 0;
  return v29;
}

uint64_t krb5_get_init_creds_opt_set_pkinit_user_cert(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 88);
  if (!v3)
  {
    v6 = "PKINIT: on non extendable opt";
LABEL_6:
    v5 = 22;
    krb5_set_error_message(a1, 22, v6);
    return v5;
  }

  v4 = *(v3 + 32);
  if (!v4)
  {
    v6 = "PKINIT: on pkinit context";
    goto LABEL_6;
  }

  sub_2522719D8(a1, v4, a3);
  return 0;
}

uint64_t krb5_pk_enterprise_cert(uint64_t *a1, char *a2, char *a3, _DWORD **a4, void *a5)
{
  v25 = 0;
  *a4 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    v26 = 0;
    v27 = 0;
    v23 = 0;
    v24 = 0;
    v9 = hx509_certs_init(a1[47], a2, 0, 0, &v27);
    if (v9)
    {
      v10 = v9;
      v11 = "Failed to init cert certs";
LABEL_6:
      sub_252270248(a1, v10, v11);
      goto LABEL_11;
    }

    v13 = hx509_query_alloc(a1[47], &v24);
    if (v13)
    {
      krb5_set_error_message(a1, v13, "out of memory");
      hx509_certs_free(&v27);
      goto LABEL_11;
    }

    hx509_query_match_option(v24, 1);
    hx509_query_match_option(v24, 3);
    hx509_query_match_eku(v24, &unk_2797028F0);
    hx509_query_match_cmp_func(v24, sub_252272DA8, 0);
    v12 = hx509_certs_filter(a1[47], v27, v24, &v26);
    hx509_query_free(a1[47], v24);
    hx509_certs_free(&v27);
    if (v12)
    {
      sub_252270248(a1, v12, "Failed to find PKINIT certificate");
      return v12;
    }

    one_cert = hx509_get_one_cert(a1[47], v26, &v25, v15, v16, v17, v18, v19);
    hx509_certs_free(&v26);
    if (one_cert)
    {
      sub_252270248(a1, one_cert, "Failed to get one cert");
      goto LABEL_11;
    }

    v21 = sub_252272DEC(a1[47], v25, &v23);
    if (v21)
    {
      v10 = v21;
      v11 = "Failed to get MS SAN";
      goto LABEL_6;
    }

    principal = krb5_make_principal(a1, a4, a3, v23, 0);
    free(v23);
    if (principal)
    {
LABEL_11:
      v12 = 2529638983;
      hx509_cert_free(v25);
      krb5_set_error_message(a1, -1765328313, "PK-INIT cert didn't contain principal SAN");
      return v12;
    }

    krb5_principal_set_type(a1, *a4, 10);
    if (a5)
    {
      *a5 = hx509_cert_ref(v25);
    }

    hx509_cert_free(v25);
    return 0;
  }

  else
  {
    v12 = 2;
    krb5_set_error_message(a1, 2, "no user id");
  }

  return v12;
}

uint64_t sub_252272DA8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_252272DEC(a1, a2, &v4);
  if (!v2)
  {
    free(v4);
  }

  return v2;
}

uint64_t sub_252272DEC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0;
  v7 = 0;
  *a3 = 0;
  if (hx509_cert_find_subjectAltName_otherName(a1, a2, &unk_279702900, &v6))
  {
    return 0;
  }

  if (v6 && *v7)
  {
    v4 = sub_25228BAA4(v7[1], *v7, a3, 0);
  }

  else
  {
    v4 = 1;
  }

  hx509_free_octet_string_list(&v6);
  return v4;
}

uint64_t _krb5_pk_match_cert(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v16 = 0;
  v17 = 0;
  subjectAltName_otherName = hx509_cert_find_subjectAltName_otherName(a1[47], a3, &xmmword_2797028E0, &v16);
  if (subjectAltName_otherName)
  {
    v8 = subjectAltName_otherName;
    krb5_set_error_message(a1, subjectAltName_otherName, "Failed to find the PK-INIT subjectAltName in the certificate");
  }

  else
  {
    if (v16)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        *__s1 = 0u;
        v15 = 0u;
        v11 = sub_25228BB54(*(v17 + 16 * v9 + 8), *(v17 + 16 * v9), __s1, 0);
        if (v11)
        {
          v8 = v11;
          krb5_set_error_message(a1, v11, "Failed to decode the PK-INIT subjectAltName in the KDC certificate");
          goto LABEL_16;
        }

        v12 = !sub_2522756DC(a1, a2, &__s1[1]) || a4 && strcmp(__s1[0], *(a2 + 24));
        sub_25228BBA4(__s1);
        if (!v12)
        {
          break;
        }

        v9 = v10++;
      }

      while (v16 > v9);
      if (v12)
      {
        goto LABEL_14;
      }

      v8 = 0;
    }

    else
    {
LABEL_14:
      v8 = 2529638983;
      krb5_set_error_message(a1, -1765328313, "PK-INIT cert didn't contain principal SAN");
    }

LABEL_16:
    hx509_free_octet_string_list(&v16);
  }

  return v8;
}

uint64_t sub_252272FD0(krb5_context a1, void *a2, unint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  if (a3)
  {
    if (!v6)
    {
LABEL_6:
      v9 = 22;
      krb5_set_error_message(a1, 22, "Did not find a DH group parameter matching requirement of %lu bits", a3);
      return v9;
    }

    v7 = a4 + 1;
    while (*(v6 + 8) <= a3)
    {
      v8 = *v7++;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  v10 = sub_252273134(a1, "p", (v6 + 16));
  a2[1] = v10;
  if (!v10)
  {
    return 12;
  }

  v11 = sub_252273134(a1, "g", (v6 + 40));
  a2[2] = v11;
  v9 = 12;
  if (v11)
  {
    v12 = sub_252273134(a1, "q", (v6 + 64));
    a2[8] = v12;
    if (v12)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return v9;
}

uint64_t sub_2522730B0(_krb5_context *a1, unsigned int *a2, uint64_t a3)
{
  v6 = sub_2522A3D4C(a2);
  *a3 = v6;
  v7 = malloc_type_malloc(v6, 0xF7BBE1BAuLL);
  *(a3 + 8) = v7;
  if (v7)
  {
    sub_2522A3E20(a2, v7);
    v8 = sub_2522A3E68(a2);
    result = 0;
    *(a3 + 16) = v8;
  }

  else
  {
    krb5_clear_error_message(a1);
    return 12;
  }

  return result;
}

void *sub_252273134(_krb5_context *a1, const char *a2, const void **a3)
{
  v6 = sub_2522A3D54(a3[1], *a3, 0);
  v7 = v6;
  if (v6)
  {
    sub_2522A3E54(v6, *(a3 + 4));
  }

  else
  {
    krb5_set_error_message(a1, 12, "PKINIT: parsing BN failed %s", a2);
  }

  return v7;
}

uint64_t sub_2522731B0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v20 = 0;
  if (*a2 <= 0xA)
  {
    v21 = 0uLL;
    v22 = 0;
    subject = hx509_cert_get_subject(a3, &v20);
    if (subject)
    {
      return subject;
    }

    if (hx509_name_is_null_p(v20))
    {
      v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
      *&v21 = v6;
      if (!v6)
      {
        hx509_name_free(&v20);
        goto LABEL_12;
      }

      v7 = hx509_name_binary(v20, v6);
      if (v7)
      {
        subject = v7;
        hx509_name_free(&v20);
LABEL_16:
        sub_25228BAC4(&v21);
        return subject;
      }
    }

    hx509_name_free(&v20);
    *(&v21 + 1) = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    if (*(&v21 + 1))
    {
      v17 = 0;
      v18 = 0;
      memset(v19, 0, sizeof(v19));
      issuer = hx509_cert_get_issuer(a3, &v18);
      if (issuer)
      {
        subject = issuer;
        goto LABEL_16;
      }

      subject = hx509_name_to_Name();
      hx509_name_free(&v18);
      if (subject)
      {
        goto LABEL_16;
      }

      subject = hx509_cert_get_serialnumber(a3);
      if (subject)
      {
LABEL_15:
        free_IssuerAndSerialNumber(v19);
        goto LABEL_16;
      }

      v10 = length_IssuerAndSerialNumber(v19);
      **(&v21 + 1) = v10;
      v11 = malloc_type_malloc(v10, 0xA6721C2AuLL);
      v12 = *(&v21 + 1);
      *(*(&v21 + 1) + 8) = v11;
      if (!v11)
      {
        subject = 12;
        goto LABEL_15;
      }

      v13 = encode_IssuerAndSerialNumber(v11 + *v12 - 1, *v12, v19, &v17);
      if (v13)
      {
        subject = v13;
        free(*(*(&v21 + 1) + 8));
        *(*(&v21 + 1) + 8) = 0;
        goto LABEL_15;
      }

      free_IssuerAndSerialNumber(v19);
      if (**(&v21 + 1) != v17)
      {
        abort();
      }

      v22 = 0;
      v14 = malloc_type_realloc(*(a2 + 1), 24 * (*a2 + 1), 0x20040960023A9uLL);
      if (v14)
      {
        subject = 0;
        *(a2 + 1) = v14;
        v15 = &v14[24 * *a2];
        v16 = v21;
        *(v15 + 2) = v22;
        *v15 = v16;
        ++*a2;
        return subject;
      }
    }

LABEL_12:
    sub_25228BAC4(&v21);
    return 12;
  }

  return 0;
}

uint64_t sub_252273400(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, void *a7)
{
  theArray = 0;
  v9 = (*(a4 + 48) << 31) >> 31;
  *a7 = 0;
  v10 = hx509_cms_verify_signed(a1[47], *a4, v9 & 0xB, a2, a3, 0, *(a4 + 32), a5, a6, &theArray);
  if (!v10)
  {
    if (theArray)
    {
      v11 = 2529638982;
      if (!heim_array_get_length(theArray))
      {
        v13 = 0;
        goto LABEL_12;
      }

      v12 = heim_array_copy_value(theArray, 0);
      v13 = v12;
      if (!v12)
      {
        goto LABEL_12;
      }

      if (!hx509_evaluate_get_length(v12))
      {
        goto LABEL_12;
      }

      cert = hx509_evaluate_get_cert(v13, 0);
      *a7 = cert;
      if (!cert)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

    v11 = 0;
LABEL_12:
    heim_release(theArray);
    heim_release(v13);
    return v11;
  }

  v11 = v10;
  sub_252270248(a1, v10, "CMS verify signed failed");
  return v11;
}

uint64_t sub_25227350C(_krb5_context *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 52);
  if ((v10 & 2) != 0)
  {
    v11 = hx509_cert_check_eku(*(a1 + 47), a5);
    if (v11)
    {
      principal = v11;
      v13 = "No PK-INIT KDC EKU in kdc certificate";
LABEL_9:
      krb5_set_error_message(a1, principal, v13);
      return principal;
    }

    v10 = *(a4 + 52);
  }

  if ((v10 & 4) != 0)
  {
    v16 = 0;
    principal = krb5_make_principal(a1, &v16, a2, "krbtgt", a2, 0);
    if (principal)
    {
      return principal;
    }

    matched = _krb5_pk_match_cert(a1, v16, a5, 1);
    krb5_free_principal(a1, v16);
    if (matched)
    {
      principal = 2529638983;
      krb5_set_error_message(a1, -1765328313, "KDC have wrong realm name in the certificate");
      return principal;
    }
  }

  if (!a3)
  {
    return 0;
  }

  principal = hx509_verify_hostname(*(a1 + 47), a5, (*(a4 + 52) & 8) != 0, 0, (a3 + 48), *(*(a3 + 8) + 32), *(*(a3 + 8) + 16));
  if (principal)
  {
    v13 = "Address mismatch in the KDC certificate";
    goto LABEL_9;
  }

  return principal;
}

uint64_t sub_252273654(_krb5_context *a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12 = 0;
  v7 = sub_25228BC14(a2[1], *a2, &v13, &v12);
  if (v7)
  {
    v8 = v7;
    krb5_set_error_message(a1, v7, "PKINIT decoding reply key failed");
LABEL_11:
    sub_25228BC34(&v13);
    return v8;
  }

  v9 = krb5_enctype_valid(a1, v13);
  if (v9)
  {
    v8 = v9;
    goto LABEL_11;
  }

  v8 = sub_252273920(a1, &v13, &v14 + 8, a3);
  if (v8 && DWORD2(v14) == 12 && v13 == 18 && v15 == 20)
  {
    DWORD2(v14) = 16;
    *&v15 = 12;
    v8 = sub_252273920(a1, &v13, &v14 + 8, a3);
  }

  if (v8)
  {
    goto LABEL_11;
  }

  v11 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
  *a4 = v11;
  if (v11)
  {
    v8 = copy_EncryptionKey();
    sub_25228BC34(&v13);
    if (v8)
    {
      krb5_set_error_message(a1, v8, "PKINIT failed copying reply key");
      free(*a4);
      *a4 = 0;
    }
  }

  else
  {
    sub_25228BC34(&v13);
    v8 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v8;
}

uint64_t sub_2522737EC(_krb5_context *a1, uint64_t *a2, int a3, void **a4)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  v7 = sub_25228BCF4(a2[1], *a2, &v12, &v11);
  if (v7)
  {
    v8 = v7;
    krb5_set_error_message(a1, v7, "PKINIT decoding reply key failed");
    sub_25228BD14(&v12);
  }

  else if (DWORD2(v13) == a3)
  {
    v9 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
    *a4 = v9;
    if (v9)
    {
      v8 = copy_EncryptionKey();
      sub_25228BD14(&v12);
      if (v8)
      {
        krb5_set_error_message(a1, v8, "PKINIT failed copying reply key");
        free(*a4);
        *a4 = 0;
      }
    }

    else
    {
      sub_25228BD14(&v12);
      v8 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
    }
  }

  else
  {
    krb5_set_error_message(a1, 0, "PKINIT enckey nonce is wrong");
    sub_25228BD14(&v12);
    return 2529638953;
  }

  return v8;
}

uint64_t sub_252273920(_krb5_context *a1, const krb5_keyblock *a2, const void *a3, uint64_t a4)
{
  *ctype = 0;
  v8 = krb5_crypto_init(a1, a2, 0, ctype);
  if (!v8)
  {
    v8 = krb5_verify_checksum(a1, ctype[0], 6, *(a4 + 8), *a4, a3, v7);
    krb5_crypto_destroy(a1, *ctype);
  }

  return v8;
}

uint64_t _krb5_plugin_find(_krb5_context *a1, int a2, const char *a3, void *a4)
{
  *a4 = 0;
  pthread_mutex_lock(&stru_280C4F1A0);
  if ((byte_27F4D9580 & 1) == 0)
  {
    v44 = a2;
    __s2 = 0;
    byte_27F4D9580 = 1;
    strings = krb5_config_get_strings(a1, 0, v8, v9, v10, v11, v12, v13, "libdefaults");
    if (strings)
    {
      v15 = strings;
    }

    else
    {
      v15 = off_27F4D65B8;
    }

    v16 = *v15;
    if (*v15)
    {
      v17 = v15;
      v43 = v15;
      while (1)
      {
        __s = v16;
        if (!_krb5_expand_default_cc_name_0(a1, *v17, &__s))
        {
          v18 = __s;
          v19 = strlen(__s);
          if (v19)
          {
            v20 = __s - 1;
            do
            {
              if (v20[v19] != 47)
              {
                break;
              }

              v20[v19--] = 0;
            }

            while (v19);
            v18 = __s;
          }

          v21 = opendir(v18);
          if (v21)
          {
            break;
          }
        }

LABEL_44:
        if (__s != *v17)
        {
          free(__s);
        }

        v34 = v17[1];
        ++v17;
        v16 = v34;
        if (!v34)
        {
          goto LABEL_47;
        }
      }

      v22 = v21;
      sub_252287174(v21);
      while (1)
      {
        do
        {
          v23 = readdir(v22);
          if (!v23)
          {
            closedir(v22);
            v15 = v43;
            goto LABEL_44;
          }

          d_name = v23->d_name;
        }

        while (v23->d_name[0] == 46 && (!v23->d_name[1] || v23->d_name[1] == 46 && !v23->d_name[2]));
        __s2 = 0;
        v25 = strlen(v23->d_name);
        if (v25 < 8)
        {
          goto LABEL_22;
        }

        v26 = v25 - 7;
        if (strcmp(&d_name[v25 - 7], ".bundle"))
        {
          goto LABEL_22;
        }

        v33 = asprintf(&__s2, "%s/%s/%.*s", __s, d_name, v26, d_name);
        v28 = __s2;
        if (v33)
        {
          if (v33 < 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (access(__s2, 1))
          {
            __error();
            free(__s2);
            __s2 = 0;
LABEL_22:
            v27 = asprintf(&__s2, "%s/%s", __s, d_name);
            v28 = __s2;
            if (v27 < 0)
            {
              goto LABEL_49;
            }

            goto LABEL_23;
          }

          v28 = __s2;
        }

        if (!v28)
        {
          goto LABEL_22;
        }

LABEL_23:
        if (!v28)
        {
LABEL_49:
          krb5_set_error_message(a1, 12, "malloc: out of memory");
          a2 = v44;
          goto LABEL_50;
        }

        v29 = qword_27F4D9578;
        if (qword_27F4D9578)
        {
          while (*v29 || strcmp(*(v29 + 8), v28))
          {
            v29 = *(v29 + 32);
            if (!v29)
            {
              goto LABEL_28;
            }
          }

LABEL_29:
          free(v28);
        }

        else
        {
LABEL_28:
          v47 = 0;
          if (csops())
          {
            goto LABEL_29;
          }

          if ((v47 & 0x2810) == 0x800 && !sub_252273EB0(a1, v28))
          {
            sub_25226B748(a1, 2, "Since binary is restricted skipping plugin %s ", v28);
            goto LABEL_29;
          }

          v30 = malloc_type_calloc(1uLL, 0x28uLL, 0x10B204067CB9950uLL);
          if (!v30)
          {
            krb5_set_error_message(a1, 12, "malloc: out of memory");
            goto LABEL_29;
          }

          v31 = v30;
          *v30 = 0;
          v32 = dlopen(v28, 5);
          v31[1] = v28;
          v31[2] = v32;
          v31[4] = qword_27F4D9578;
          qword_27F4D9578 = v31;
        }
      }
    }

LABEL_47:
    a2 = v44;
    if (v15 != off_27F4D65B8)
    {
      krb5_config_free_strings(v15);
    }
  }

LABEL_50:
  v35 = qword_27F4D9578;
  if (qword_27F4D9578)
  {
    v36 = 0;
    while (*v35 != 1)
    {
      if (*v35)
      {
        goto LABEL_61;
      }

      v37 = *(v35 + 16);
      if (v37)
      {
        v38 = dlsym(v37, a3);
        if (v38)
        {
          v39 = v38;
          goto LABEL_60;
        }

        goto LABEL_61;
      }

LABEL_65:
      v35 = *(v35 + 32);
      if (!v35)
      {
        pthread_mutex_unlock(&stru_280C4F1A0);
        if (!v36)
        {
          goto LABEL_69;
        }

        return v36;
      }
    }

    if (!strcmp(*(v35 + 16), a3) && *(v35 + 8) == a2)
    {
      v39 = *(v35 + 24);
LABEL_60:
      v36 = sub_252273DF8(a1, a4, v39);
    }

LABEL_61:
    if (v36)
    {
      v40 = *a4;
      if (*a4)
      {
        do
        {
          v41 = v40[1];
          free(v40);
          v40 = v41;
        }

        while (v41);
      }

      *a4 = 0;
    }

    goto LABEL_65;
  }

  pthread_mutex_unlock(&stru_280C4F1A0);
LABEL_69:
  if (*a4)
  {
    return 0;
  }

  v36 = 2;
  krb5_set_error_message(a1, 2, "Did not find a plugin for %s", a3);
  return v36;
}

uint64_t sub_252273DF8(_krb5_context *a1, void *a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040BD48D6D6uLL);
  if (v6)
  {
    v7 = 0;
    *v6 = a3;
    v6[1] = *a2;
    *a2 = v6;
  }

  else
  {
    v7 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v7;
}

void *_krb5_plugin_free(void *result)
{
  if (result)
  {
    do
    {
      v1 = result[1];
      free(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_252273EB0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  requirement = 0;
  staticCode = 0;
  if (!a2)
  {
    sub_25226B748(a1, 2, "path cannot be null %s", 0);
    goto LABEL_23;
  }

  v4 = SecRequirementCreateWithString(@"anchor apple", 0, &requirement);
  if (v4 || !requirement)
  {
    sub_25226B748(a1, 2, "Error creating requirement %d ", v4);
    v2 = 0;
    goto LABEL_23;
  }

  v5 = CFStringCreateWithCString(0, v2, 0x8000100u);
  v6 = CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, 0);
  if (SecStaticCodeCreateWithPath(v6, 0, &staticCode) || !staticCode)
  {
    sub_25226B748(a1, 2, "Error creating static code for %s: %d ");
  }

  else
  {
    if (!SecStaticCodeCheckValidity(staticCode, 0x15u, requirement))
    {
      v2 = 1;
      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    sub_25226B748(a1, 2, "Error checking requirement for %s: %d ");
  }

  v2 = 0;
  if (v6)
  {
LABEL_12:
    PathComponent = CFURLCopyLastPathComponent(v6);
    CStringPtr = CFStringGetCStringPtr(PathComponent, 0x8000100u);
    v9 = "is not";
    if (v2)
    {
      v9 = "is";
    }

    sub_25226B748(a1, 2, "Plugin %s %s signed by Apple", CStringPtr, v9);
    if (PathComponent)
    {
      CFRelease(PathComponent);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v10 = v6;
    goto LABEL_22;
  }

LABEL_20:
  if (!v5)
  {
    goto LABEL_23;
  }

  v10 = v5;
LABEL_22:
  CFRelease(v10);
LABEL_23:
  if (staticCode)
  {
    CFRelease(staticCode);
  }

  if (requirement)
  {
    CFRelease(requirement);
  }

  return v2;
}

void krb5_load_plugins(_krb5_context *a1, char *cStr, char **a3)
{
  v5 = heim_string_create(cStr);
  pthread_mutex_lock(&stru_280C4F1A0);
  v6 = qword_280C4F240;
  if (qword_280C4F240 || (v6 = heim_dict_create(), (qword_280C4F240 = v6) != 0))
  {
    v7 = heim_dict_copy_value(v6, v5);
    if (!v7)
    {
      v8 = heim_dict_create();
      if (!v8)
      {
        pthread_mutex_unlock(&stru_280C4F1A0);

        heim_release(v5);
        return;
      }

      v7 = v8;
      heim_dict_set_value(qword_280C4F240, v5, v8);
    }

    heim_release(v5);
    v35 = 0;
    if (!csops())
    {
      v9 = *a3;
      if (*a3)
      {
        while (1)
        {
          __s = 0;
          if (!_krb5_expand_default_cc_name_0(a1, v9, &__s))
          {
            v10 = __s;
            v11 = strlen(__s);
            if (v11)
            {
              v12 = __s - 1;
              do
              {
                if (v12[v11] != 47)
                {
                  break;
                }

                v12[v11--] = 0;
              }

              while (v11);
              v10 = __s;
            }

            v13 = opendir(v10);
            if (v13)
            {
              break;
            }
          }

LABEL_46:
          if (__s)
          {
            free(__s);
          }

          v32 = a3[1];
          ++a3;
          v9 = v32;
          if (!v32)
          {
            goto LABEL_49;
          }
        }

        v14 = v13;
        sub_252287174(v13);
        while (1)
        {
          do
          {
            v15 = readdir(v14);
            if (!v15)
            {
LABEL_45:
              closedir(v14);
              goto LABEL_46;
            }

            d_name = v15->d_name;
            v16 = v15->d_name[0];
            __path = 0;
          }

          while (v16 == 46 && (!v15->d_name[1] || v15->d_name[1] == 46 && !v15->d_name[2]));
          v18 = strlen(v15->d_name);
          if (v18 < 8)
          {
            break;
          }

          v19 = v18 - 7;
          if (strcmp(&d_name[v18 - 7], ".bundle"))
          {
            break;
          }

          v21 = asprintf(&__path, "%s/%s/%.*s", __s, d_name, v19, d_name);
          if (!v21)
          {
            v20 = __path;
            goto LABEL_24;
          }

LABEL_28:
          if (!__path)
          {
            goto LABEL_35;
          }

          if ((v35 & 0x2810) == 0x800)
          {
            if (sub_252273EB0(a1, __path))
            {
              v22 = __path == 0;
              if ((v21 & 0x80000000) == 0)
              {
                goto LABEL_34;
              }

              goto LABEL_35;
            }
          }

          else
          {
            v22 = 0;
            if ((v21 & 0x80000000) == 0)
            {
LABEL_34:
              if (!v22)
              {
                goto LABEL_37;
              }
            }

LABEL_35:
            if (asprintf(&__path, "%s/%s", __s, d_name) < 0 || !__path)
            {
              goto LABEL_45;
            }

LABEL_37:
            v23 = heim_string_create(d_name);
            if (!v23)
            {
              free(__path);
              goto LABEL_45;
            }

            v24 = v23;
            v30 = heim_dict_copy_value(v7, v23);
            if (!v30)
            {
              v30 = heim_uniq_alloc(0x38uLL, "krb5-plugin", sub_252274430, v25, v26, v27, v28, v29);
              if (v30)
              {
                v31 = dlopen(__path, 5);
                v30[5] = v31;
                if (v31)
                {
                  v30[4] = heim_retain(v24);
                  v30[6] = heim_dict_create();
                  heim_dict_set_value(v7, v24, v30);
                }
              }
            }

            heim_release(v24);
            heim_release(v30);
            free(__path);
          }
        }

        v20 = 0;
LABEL_24:
        if (access(v20, 1))
        {
          __error();
          free(__path);
          __path = 0;
          goto LABEL_35;
        }

        v21 = 0;
        goto LABEL_28;
      }

LABEL_49:
      heim_release(v7);
      pthread_mutex_unlock(&stru_280C4F1A0);
    }
  }

  else
  {

    pthread_mutex_unlock(&stru_280C4F1A0);
  }
}

void *sub_252274430(uint64_t a1)
{
  heim_release(*(a1 + 32));
  heim_release(*(a1 + 48));
  result = *(a1 + 40);
  if (result)
  {

    return dlclose(result);
  }

  return result;
}

uint64_t krb5_plugin_register_module(_krb5_context *a1, char *a2, int a3, char *a4, const void *a5)
{
  pthread_mutex_lock(&stru_280C4F1A0);
  if (!a2)
  {
    goto LABEL_11;
  }

  if (!qword_280C4F240)
  {
    qword_280C4F240 = heim_dict_create();
    if (!qword_280C4F240)
    {
      pthread_mutex_unlock(&stru_280C4F1A0);
      return 1;
    }
  }

  v10 = heim_string_create(a2);
  v11 = heim_dict_copy_value(qword_280C4F240, v10);
  if (v11)
  {
    goto LABEL_7;
  }

  v12 = heim_dict_create();
  if (!v12)
  {
    pthread_mutex_unlock(&stru_280C4F1A0);
    heim_release(v10);
    return 1;
  }

  v11 = v12;
  heim_dict_set_value(qword_280C4F240, v10, v12);
LABEL_7:
  heim_release(v10);
  cStr = 0;
  asprintf(&cStr, "%p", a5);
  v13 = heim_string_create(cStr);
  v19 = heim_dict_copy_value(v11, v13);
  if (!v19)
  {
    v19 = heim_uniq_alloc(0x38uLL, "krb5-plugin", sub_252274430, v14, v15, v16, v17, v18);
    if (v19)
    {
      v19[6] = heim_dict_create();
      heim_dict_set_value(v11, v13, v19);
      v25 = heim_uniq_alloc(0x30uLL, "struct-plug", sub_252274720, v20, v21, v22, v23, v24);
      v25[4] = a5;
      v26 = v19[6];
      v27 = heim_string_create(a4);
      heim_dict_set_value(v26, v27, v25);
    }
  }

  heim_release(v19);
LABEL_11:
  v28 = qword_27F4D9578;
  if (qword_27F4D9578)
  {
    while (*v28 != 1 || strcmp(*(v28 + 16), a4) || *(v28 + 8) != a3 || *(v28 + 24) != a5)
    {
      v28 = *(v28 + 32);
      if (!v28)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_20;
  }

LABEL_17:
  v29 = malloc_type_calloc(1uLL, 0x28uLL, 0x10B204067CB9950uLL);
  if (!v29)
  {
    pthread_mutex_unlock(&stru_280C4F1A0);
LABEL_23:
    v33 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v33;
  }

  v30 = v29;
  *v29 = 1;
  v29[2] = a3;
  v31 = strdup(a4);
  v30[2] = v31;
  if (!v31)
  {
    pthread_mutex_unlock(&stru_280C4F1A0);
    free(v30);
    goto LABEL_23;
  }

  v32 = qword_27F4D9578;
  v30[3] = a5;
  v30[4] = v32;
  qword_27F4D9578 = v30;
LABEL_20:
  pthread_mutex_unlock(&stru_280C4F1A0);
  return 0;
}

uint64_t sub_252274720(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    return (*(v1 + 16))(*(result + 40));
  }

  return result;
}

uint64_t krb5_plugin_run_f(uint64_t a1, char *cStr, char *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = 2529639161;
  v13 = heim_string_create(cStr);
  pthread_mutex_lock(&stru_280C4F1A0);
  v14 = heim_dict_copy_value(qword_280C4F240, v13);
  heim_release(v13);
  if (v14)
  {
    v23 = 0;
    v16 = a1;
    v18 = a3;
    v17 = heim_string_create(a3);
    v19 = a4;
    v20 = heim_array_create();
    v21 = a7;
    v22 = a6;
    sub_2522A761C(v14, &v16, sub_252274888);
    heim_release(v14);
    pthread_mutex_unlock(&stru_280C4F1A0);
    LODWORD(v23) = -1765328135;
    heim_array_iterate_f(v20, &v16, sub_252274988);
    heim_release(v20);
    heim_release(v17);
    return v23;
  }

  else
  {
    pthread_mutex_unlock(&stru_280C4F1A0);
  }

  return v12;
}

void sub_252274888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = heim_dict_copy_value(*(a2 + 48), *(a3 + 8));
  if (v5)
  {
    v11 = v5;
    v12 = v5[4];
    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (*v12 >= *(a3 + 24))
    {
      heim_array_append_value(*(a3 + 32), v11);
    }

    goto LABEL_11;
  }

  if (!*(a2 + 40))
  {
    return;
  }

  v11 = heim_uniq_alloc(0x30uLL, "struct-plug", sub_252274720, v6, v7, v8, v9, v10);
  v13 = dlsym(*(a2 + 40), *(a3 + 16));
  v12 = v13;
  v11[4] = v13;
  if (v13 && (*(v13 + 1))(*a3, v11 + 5))
  {
    v12 = 0;
    v11[4] = 0;
  }

  heim_dict_set_value(*(a2 + 48), *(a3 + 8), v11);
  if (v12)
  {
    goto LABEL_9;
  }

LABEL_11:

  heim_release(v11);
}

uint64_t sub_252274988(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = (*(a3 + 40))(*a3, *(a1 + 32), *(a1 + 40), *(a3 + 48));
  *(a3 + 56) = result;
  if (result != -1765328135)
  {
    *a2 = 1;
  }

  return result;
}

void krb5_free_principal(krb5_context a1, krb5_principal a2)
{
  if (a2)
  {
    free_Principal(a2);

    free(a2);
  }
}

uint64_t krb5_principal_get_comp_string(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8) <= a3)
  {
    return 0;
  }

  else
  {
    return *(*(a2 + 16) + 8 * a3);
  }
}

krb5_error_code krb5_parse_name_flags(krb5_context a1, const char *a2, int a3, krb5_principal *a4)
{
  v61 = 0;
  *a4 = 0;
  if ((~a3 & 3) == 0)
  {
    v5 = -1765328138;
    krb5_set_error_message(a1, -1765328138, "Can't require both realm and no realm at the same time");
    return v5;
  }

  if ((a3 & 4) != 0)
  {
    v9 = 1;
    goto LABEL_17;
  }

  v10 = 1;
  for (i = a2; ; ++i)
  {
    v12 = *i;
    if (v12 > 0x3F)
    {
      break;
    }

    if (v12 == 47)
    {
      ++v10;
    }

    else if (!*i)
    {
      goto LABEL_16;
    }

LABEL_15:
    ;
  }

  if (v12 == 92)
  {
    if (!*++i)
    {
      v5 = -1765328250;
      krb5_set_error_message(a1, -1765328250, "trailing \\ in principal name");
      return v5;
    }

    goto LABEL_15;
  }

  if (v12 != 64)
  {
    goto LABEL_15;
  }

LABEL_16:
  v9 = v10;
LABEL_17:
  v14 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
  if (!v14)
  {
LABEL_53:
    v5 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v5;
  }

  v15 = v14;
  v16 = strdup(a2);
  if (!v16)
  {
    free(v15);
    goto LABEL_53;
  }

  v52 = a4;
  v59 = a1;
  v60 = v16;
  v17 = *v16;
  if (!*v16)
  {
    LODWORD(v27) = 0;
    v24 = v16;
    v22 = v16;
LABEL_56:
    if ((a3 & 2) != 0)
    {
      v5 = -1765328250;
      v35 = "realm NOT found in principal expected to be with one";
LABEL_61:
      v39 = v59;
      v40 = -1765328250;
      goto LABEL_79;
    }

    v37 = v59;
    if (a3)
    {
      v61 = 0;
    }

    else
    {
      default_realm = krb5_get_default_realm(v59, &v61);
      if (default_realm)
      {
        v5 = default_realm;
        goto LABEL_80;
      }
    }

    v45 = malloc_type_malloc(v22 - v24 + 1, 0x1CA93CEuLL);
    *&v15[8 * v27] = v45;
    if (v45)
    {
      memcpy(v45, v24, v22 - v24);
      *(*&v15[8 * v27] + v22 - v24) = 0;
      LODWORD(v27) = v27 + 1;
      goto LABEL_73;
    }

    goto LABEL_78;
  }

  v18 = 0;
  v19 = 0;
  v20 = 1;
  v21 = v16;
  v22 = v16;
  v23 = v16;
  v58 = v15;
  while (2)
  {
    while (2)
    {
      v56 = v17;
      v57 = v20;
      v24 = v21;
      v25 = v20 & (a3 >> 2);
      v26 = &v15[8 * v19];
      ++v23;
      v54 = v19;
      v55 = v18;
      v27 = v19;
      v28 = v17;
      v53 = v21;
      while (v28 != 92)
      {
        if (v25)
        {
          v18 = v55;
          v33 = v56;
          v20 = v56 != 64;
          v27 = v54;
          v24 = v53;
          v15 = v58;
          goto LABEL_38;
        }

        v29 = v28;
        v30 = (a3 >> 2) & 1;
        if (v29 != 47)
        {
          LOBYTE(v30) = 1;
        }

        if (v29 != 64 && (v30 & 1) != 0)
        {
          v33 = v29;
          v15 = v58;
          v20 = v57;
          goto LABEL_38;
        }

        if (v18)
        {
          v5 = -1765328250;
          krb5_set_error_message(v59, -1765328250, "part after realm in principal name", v52);
LABEL_64:
          v15 = v58;
          goto LABEL_80;
        }

        v31 = malloc_type_malloc(v22 - v24 + 1, 0x6B42778EuLL);
        *v26 = v31;
        if (!v31)
        {
          v5 = 12;
          krb5_set_error_message(v59, 12, "malloc: out of memory", v52);
          goto LABEL_64;
        }

        v18 = v29 == 64;
        memcpy(v31, v24, v22 - v24);
        v32 = *v26;
        v26 += 8;
        *(v32 + v22 - v24) = 0;
        LODWORD(v32) = *v23++;
        v28 = v32;
        v27 = (v27 + 1);
        v24 = v22;
        if (!v32)
        {
          v24 = v22;
          v41 = v29 == 64;
          v15 = v58;
          if (!v41)
          {
            goto LABEL_56;
          }

          goto LABEL_67;
        }
      }

      v34 = *v23++;
      v33 = v34;
      if (v34 > 109)
      {
        v15 = v58;
        v20 = v57;
        if (v33 == 116)
        {
          v33 = 9;
        }

        else if (v33 == 110)
        {
          v33 = 10;
        }
      }

      else
      {
        v15 = v58;
        v20 = v57;
        switch(v33)
        {
          case 48:
            v33 = 0;
            break;
          case 98:
            v33 = 8;
            break;
          case 0:
            v5 = -1765328250;
            v35 = "trailing \\ in principal name";
            goto LABEL_61;
        }
      }

LABEL_38:
      if (!v18)
      {
        *v22++ = v33;
        v17 = *v23;
        v19 = v27;
        v21 = v24;
        if (*v23)
        {
          continue;
        }

        goto LABEL_56;
      }

      break;
    }

    if (v33 == 47 || !v33)
    {
      v5 = -1765328250;
      v35 = "part after realm in principal name";
      goto LABEL_61;
    }

    *v22++ = v33;
    v17 = *v23;
    v19 = v27;
    v21 = v24;
    if (*v23)
    {
      continue;
    }

    break;
  }

LABEL_67:
  if (a3)
  {
    v5 = -1765328250;
    v35 = "realm found in 'short' principal expected to be without one";
    goto LABEL_61;
  }

  v42 = v22 - v24;
  v43 = malloc_type_malloc(v22 - v24 + 1, 0x81CA5037uLL);
  v61 = v43;
  v37 = v59;
  if (!v43)
  {
    goto LABEL_78;
  }

  v44 = v43;
  memcpy(v43, v24, v42);
  v44[v42] = 0;
LABEL_73:
  v46 = malloc_type_malloc(0x20uLL, 0x10900408A8AD7E9uLL);
  *v52 = v46;
  if (v46)
  {
    if ((a3 & 4) != 0)
    {
      v47 = 10;
    }

    else
    {
      v47 = 1;
    }

    v46->magic = v47;
    v46->realm.data = v15;
    v48 = *v52;
    v48->realm.magic = v27;
    v48->data = v61;
    free(v60);
    return 0;
  }

LABEL_78:
  v35 = "malloc: out of memory";
  v5 = 12;
  v39 = v37;
  v40 = 12;
LABEL_79:
  krb5_set_error_message(v39, v40, v35, v52);
LABEL_80:
  if (v27 >= 1)
  {
    v49 = v27 + 1;
    v50 = &v15[8 * v27 - 8];
    do
    {
      v51 = *v50--;
      free(v51);
      --v49;
    }

    while (v49 > 1);
  }

  free(v15);
  free(v61);
  free(v60);
  return v5;
}

uint64_t sub_252274F70(_krb5_context *a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  if ((a5 & 2) == 0 && !*(a2 + 24))
  {
    v16 = "Realm missing from principal, can't unparse";
LABEL_24:
    v14 = 34;
    krb5_set_error_message(a1, 34, v16);
    return v14;
  }

  if (*(a2 + 8))
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (v11 && v10 < a4)
      {
        *(a3 + v10++) = 47;
      }

      v12 = sub_252275CEC(*(*(a2 + 16) + 8 * v11), a3, v10, a4, (a5 >> 2) & 1);
      if (v12 == a4)
      {
        break;
      }

      v10 = v12;
      if (++v11 >= *(a2 + 8))
      {
        goto LABEL_12;
      }
    }

    v16 = "Out of space printing principal";
    goto LABEL_24;
  }

  v10 = 0;
LABEL_12:
  if ((a5 & 3) != 1)
  {
    v15 = a5 & 1;
    goto LABEL_19;
  }

  __s2 = 0;
  default_realm = krb5_get_default_realm(a1, &__s2);
  if (!default_realm)
  {
    v17 = __s2;
    v15 = strcmp(*(a2 + 24), __s2) == 0;
    free(v17);
LABEL_19:
    if (v15 | a5 & 2)
    {
      return 0;
    }

    if (v10 < a4)
    {
      *(a3 + v10++) = 64;
    }

    if (sub_252275CEC(*(a2 + 24), a3, v10, a4, (a5 >> 2) & 1) != a4)
    {
      return 0;
    }

    v16 = "Out of space printing realm of principal";
    goto LABEL_24;
  }

  return default_realm;
}

uint64_t sub_252275130(_krb5_context *a1, uint64_t a2, void **a3, unsigned int a4)
{
  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = strlen(*(a2 + 24));
    v10 = (v9 << (strcspn(v8, " \n\t\b\\/@") != v9)) + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    v12 = *(a2 + 16);
    do
    {
      v13 = *v12++;
      v14 = strlen(v13);
      v10 += (v14 << (strcspn(v13, " \n\t\b\\/@") != v14)) + 1;
      --v11;
    }

    while (v11);
  }

  v15 = malloc_type_malloc(v10 + 1, 0xF03F18D8uLL);
  *a3 = v15;
  if (v15)
  {
    v16 = sub_252274F70(a1, a2, v15, v10 + 1, a4);
    if (v16)
    {
      free(*a3);
      *a3 = 0;
    }
  }

  else
  {
    v16 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v16;
}

uint64_t krb5_principal_set_realm(_krb5_context *a1, uint64_t a2, char *__s1)
{
  v6 = *(a2 + 24);
  if (v6)
  {
    free(v6);
  }

  v7 = strdup(__s1);
  *(a2 + 24) = v7;
  if (v7)
  {
    return 0;
  }

  v8 = 12;
  krb5_set_error_message(a1, 12, "malloc: out of memory");
  return v8;
}

uint64_t krb5_make_principal(krb5_context a1, void *a2, char *a3, ...)
{
  va_start(va, a3);
  v7 = 0;
  if (!a3)
  {
    default_realm = krb5_get_default_realm(a1, &v7);
    if (default_realm)
    {
      return default_realm;
    }

    a3 = v7;
  }

  default_realm = sub_2522753E0(a1, a2, a3, sub_2522754A4, va);
  if (v7)
  {
    free(v7);
  }

  return default_realm;
}

uint64_t sub_2522753E0(_krb5_context *a1, void *a2, const char *a3, void (*a4)(_krb5_context *, void *, uint64_t), uint64_t a5)
{
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0x10900408A8AD7E9uLL);
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v10;
  *v10 = 1;
  v12 = strdup(a3);
  v11[3] = v12;
  if (!v12)
  {
    free(v11);
LABEL_5:
    v13 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v13;
  }

  a4(a1, v11, a5);
  v13 = 0;
  *a2 = v11;
  return v13;
}

void sub_2522754A4(_krb5_context *a1, uint64_t a2, const char **a3)
{
  v8 = a3 + 1;
  v3 = *a3;
  if (*a3)
  {
    do
    {
      v6 = strlen(v3);
      sub_252275DE8(a1, a2, v3, v6);
      v7 = v8++;
      v3 = *v7;
    }

    while (*v7);
  }
}

void sub_252275530(_krb5_context *a1, uint64_t a2, _DWORD *a3)
{
  v7 = (a3 + 2);
  for (i = *a3; i; i = *v6)
  {
    sub_252275DE8(a1, a2, *v7, i);
    v6 = (v7 + 1);
    v7 += 2;
  }
}

krb5_error_code krb5_copy_principal(krb5_context a1, krb5_const_principal a2, krb5_principal *a3)
{
  v5 = malloc_type_malloc(0x20uLL, 0x10900408A8AD7E9uLL);
  if (v5)
  {
    v6 = v5;
    if (!copy_Principal())
    {
      v7 = 0;
      *a3 = v6;
      return v7;
    }

    free(v6);
  }

  v7 = 12;
  krb5_set_error_message(a1, 12, "malloc: out of memory");
  return v7;
}

uint64_t krb5_principal_compare_any_realm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3 == *(a3 + 8))
  {
    if (!v3)
    {
      return 1;
    }

    v4 = *(a2 + 16);
    for (i = *(a3 + 16); !strcmp(*v4, *i); ++i)
    {
      ++v4;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2522756DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3 == *(a3 + 8))
  {
    if (!v3)
    {
      return 1;
    }

    v4 = *(a2 + 16);
    for (i = *(a3 + 16); !strcmp(*v4, *i); ++i)
    {
      ++v4;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

krb5_BOOLean krb5_principal_compare(krb5_context a1, krb5_const_principal a2, krb5_const_principal a3)
{
  v5 = strcmp(a2->data, a3->data);
  if (v5)
  {
    return 0;
  }

  return krb5_principal_compare_any_realm(v5, a2, a3);
}

uint64_t krb5_principal_match(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != *(a3 + 8))
  {
    return 0;
  }

  if (fnmatch(*(a3 + 24), *(a2 + 24), 0))
  {
    return 0;
  }

  if (*(a2 + 8))
  {
    v6 = 0;
    while (!fnmatch(*(*(a3 + 16) + 8 * v6), *(*(a2 + 16) + 8 * v6), 0))
    {
      if (++v6 >= *(a2 + 8))
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

krb5_error_code krb5_sname_to_principal(krb5_context a1, const char *a2, const char *a3, krb5_int32 a4, krb5_principal *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a4 && a4 != 3)
  {
    host_realm = -1765328166;
    krb5_set_error_message(a1, -1765328166, "unsupported name type %d");
    goto LABEL_20;
  }

  v16 = 0;
  if (a2)
  {
    __strlcpy_chk();
  }

  else
  {
    if (gethostname(__s, 0xFFuLL))
    {
      host_realm = *__error();
      krb5_set_error_message(a1, host_realm, "Failed to get local hostname");
      goto LABEL_20;
    }

    __s[255] = 0;
  }

  if (!a3)
  {
    a3 = "host";
  }

  if (a4 == 3)
  {
    v15 = 0;
    v10 = krb5_expand_hostname_realms(a1, __s, &v15, &v16);
    if (v10)
    {
      host_realm = v10;
      goto LABEL_20;
    }

    rk_strlwr(v15);
    __strlcpy_chk();
    free(v15);
  }

  else
  {
    host_realm = krb5_get_host_realm(a1, a2, &v16);
    if (host_realm)
    {
      goto LABEL_20;
    }
  }

  v12 = strlen(__s);
  if (v12 && __s[v12 - 1] == 46)
  {
    __s[v12 - 1] = 0;
  }

  host_realm = krb5_make_principal(a1, a5, *v16, a3, __s, 0);
  krb5_free_host_realm(a1, v16);
LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
  return host_realm;
}

uint64_t krb5_parse_nametype(_krb5_context *a1, const char *a2, _DWORD *a3)
{
  if (!strcasecmp("UNKNOWN", a2))
  {
    v8 = &off_2796FF870;
LABEL_7:
    v10 = 0;
    *a3 = *(v8 + 2);
  }

  else
  {
    v6 = &off_2796FF870;
    v7 = 12;
    while (--v7)
    {
      v8 = v6 + 2;
      v9 = strcasecmp(v6[2], a2);
      v6 = v8;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v10 = 2529639046;
    krb5_set_error_message(a1, -1765328250, "Failed to find name type %s", a2);
  }

  return v10;
}

BOOL krb5_principal_is_null(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a2 == 11 && *(a2 + 8) == 2)
  {
    v2 = *(a2 + 16);
    if (!strcmp(*v2, "WELLKNOWN") && !strcmp(v2[1], "NULL"))
    {
      return 1;
    }
  }

  return result;
}

BOOL krb5_principal_is_root_krbtgt(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 2)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  return !strcmp(*v3, "krbtgt") && strcmp(v3[1], *(a2 + 24)) == 0;
}

unint64_t sub_252275CEC(_BYTE *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v5 = a3;
  v7 = *a1;
  v8 = a3 < a4;
  if (*a1)
  {
    v9 = a3 >= a4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v12 = a1 + 1;
    do
    {
      v13 = memchr(" \n\t\b\\/@", v7, 8uLL);
      if (a5 && v13)
      {
        *(a2 + v5++) = aNtb[v13 - " \n\t\b\\/@"];
        goto LABEL_14;
      }

      v14 = v5 + 1;
      if (v13)
      {
        *(a2 + v5) = 92;
        if (v14 < a4)
        {
          v5 += 2;
          *(a2 + v14) = aNtb[v13 - " \n\t\b\\/@"];
          goto LABEL_14;
        }
      }

      else
      {
        *(a2 + v5) = v7;
      }

      ++v5;
LABEL_14:
      v15 = *v12++;
      v7 = v15;
      v8 = v5 < a4;
    }

    while (v15 && v5 < a4);
  }

  if (v8)
  {
    *(a2 + v5) = 0;
  }

  return v5;
}

void sub_252275DE8(_krb5_context *a1, uint64_t a2, const void *a3, size_t a4)
{
  v8 = *(a2 + 8);
  v9 = malloc_type_realloc(*(a2 + 16), 8 * v8 + 8, 0x10040436913F5uLL);
  if (v9 && (*(a2 + 16) = v9, *(*(a2 + 16) + 8 * v8) = malloc_type_malloc(a4 + 1, 0x5C0032A7uLL), (v10 = *(*(a2 + 16) + 8 * v8)) != 0))
  {
    memcpy(v10, a3, a4);
    *(*(*(a2 + 16) + 8 * v8) + a4) = 0;
    ++*(a2 + 8);
  }

  else
  {

    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }
}

krb5_error_code krb5_prompter_posix(krb5_context context, void *data, const char *name, const char *banner, int num_prompts, krb5_prompt prompts[])
{
  v9 = MEMORY[0x277D85DF8];
  if (name)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s\n", name);
    if (!banner)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (banner)
  {
LABEL_5:
    fprintf(*v9, "%s\n", banner);
LABEL_6:
    fflush(*v9);
  }

  if (num_prompts < 1)
  {
    return 0;
  }

  v10 = num_prompts;
  p_reply = &prompts->reply;
  v12 = MEMORY[0x277D85E08];
  v13 = MEMORY[0x277D85E00];
  while (1)
  {
    v14 = *(*p_reply + 1);
    if (!*(p_reply - 2))
    {
      break;
    }

    if (hc_UI_UTIL_read_pw_string(*(*p_reply + 1), **p_reply, *(p_reply - 2), 0))
    {
      return 1;
    }

LABEL_14:
    p_reply += 4;
    if (!--v10)
    {
      return 0;
    }
  }

  fputs(*(p_reply - 2), *v12);
  fflush(*v12);
  if (fgets(*(*p_reply + 1), **p_reply, *v13))
  {
    v14[strcspn(v14, "\n")] = 0;
    goto LABEL_14;
  }

  return 1;
}

uint64_t krb5_prompter_print_only(uint64_t a1, uint64_t a2, const char *a3, const char *a4, int a5)
{
  v8 = MEMORY[0x277D85DF8];
  if (a3)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s\n", a3);
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else if (!a4)
  {
    goto LABEL_7;
  }

  fprintf(*v8, "%s\n", a4);
LABEL_6:
  fflush(*v8);
LABEL_7:
  if (!a5)
  {
    return 0;
  }

  sub_25226B748(a1, 10, "prompter disabled");
  return 1;
}

krb5_error_code krb5_rd_cred(krb5_context a1, krb5_auth_context a2, krb5_data *a3, krb5_creds ***a4, krb5_replay_data *a5)
{
  v61 = 0;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  krb5_data_zero(&v51);
  if (!a5 && (*a2 & 0xA) != 0)
  {
    return -1765328169;
  }

  *a4 = 0;
  v11 = sub_25228B23C(a3->data, *&a3->magic, &v57, &v61);
  if (v11)
  {
    v10 = v11;
    krb5_clear_error_message(a1);
    return v10;
  }

  if (v57 != 5)
  {
    krb5_clear_error_message(a1);
    v10 = -1765328345;
    goto LABEL_18;
  }

  if (DWORD1(v57) != 22)
  {
    krb5_clear_error_message(a1);
    v10 = -1765328344;
    goto LABEL_18;
  }

  if (DWORD2(v58))
  {
    addrport = krb5_crypto_init(a1, *(a2 + 4), 0, &v50);
    if (addrport)
    {
LABEL_10:
      v10 = addrport;
      goto LABEL_18;
    }

    v10 = krb5_decrypt_EncryptedData(a1, v50, 14, &v58 + 8, &v51);
    krb5_crypto_destroy(a1, v50);
    if (v10)
    {
      v17 = *(a2 + 6);
      if (!v17)
      {
        goto LABEL_18;
      }

      addrport = krb5_crypto_init(a1, v17, 0, &v50);
      if (addrport)
      {
        goto LABEL_10;
      }

      v10 = krb5_decrypt_EncryptedData(a1, v50, 14, &v58 + 8, &v51);
      krb5_crypto_destroy(a1, v50);
      if (v10)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v51 = *(&v59 + 1);
    v52 = v60;
  }

  v10 = sub_25228B29C(v52, v51, &v53, &v61);
  if (v52 != v60)
  {
    krb5_data_free(&v51);
  }

  if (v10)
  {
    krb5_set_error_message(a1, v10, "Failed to decode encrypte credential part");
    goto LABEL_18;
  }

  if (*(&v55 + 1))
  {
    v18 = *(a2 + 2);
    if (v18)
    {
      v19 = *(a2 + 13);
      if (v19)
      {
        v48[0] = 0;
        addrport = krb5_make_addrport(a1, v48, v18, v19);
        if (addrport)
        {
          goto LABEL_10;
        }

        v10 = sub_2522766A8(a1, v48[0], *(&v55 + 1), "sender address is wrong in received creds");
        krb5_free_address(a1, v48[0]);
        free(v48[0]);
        if (v10)
        {
          goto LABEL_18;
        }
      }
    }
  }

  if (!v56)
  {
    goto LABEL_42;
  }

  v20 = *(a2 + 1);
  if (!v20)
  {
    goto LABEL_42;
  }

  v21 = *(a2 + 12);
  if (!v21 || v56->magic != 256)
  {
    addrport = sub_2522766A8(a1, *(a2 + 1), v56, "receiver address is wrong in received creds");
    if (addrport)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

  v48[0] = 0;
  addrport = krb5_make_addrport(a1, v48, v20, v21);
  if (addrport)
  {
    goto LABEL_10;
  }

  v10 = sub_2522766A8(a1, v48[0], v56, "receiver address is wrong in received creds");
  krb5_free_address(a1, v48[0]);
  free(v48[0]);
  if (v10)
  {
LABEL_18:
    sub_25228B2EC(&v53);
    sub_25228B28C(&v57);
    v13 = *a4;
    if (*a4)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = 1;
        do
        {
          krb5_free_creds(a1, v14);
          v13 = *a4;
          v14 = (*a4)[v15++];
        }

        while (v14);
      }

      free(v13);
      *a4 = 0;
    }

    return v10;
  }

LABEL_42:
  v22 = *a2;
  if (*a2)
  {
    v48[0] = 0;
    krb5_timeofday(a1, v48);
    if (!*(&v54 + 1) || !v55 || krb5_time_abs(**(&v54 + 1), v48[0]) > *(a1 + 10))
    {
      krb5_clear_error_message(a1);
      v10 = -1765328347;
      goto LABEL_18;
    }

    v22 = *a2;
  }

  if ((v22 & 0xA) != 0)
  {
    *&a5->timestamp = 0;
    *&a5->seq = 0;
    if (*(&v54 + 1))
    {
      *&a5->timestamp = **(&v54 + 1);
    }

    if (v55)
    {
      a5->seq = *v55;
    }

    if (v54)
    {
      a5[1].timestamp = *v54;
    }
  }

  v23 = malloc_type_calloc((v53 + 1), 8uLL, 0x2004093837F09uLL);
  *a4 = v23;
  if (!v23)
  {
LABEL_81:
    v10 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    goto LABEL_18;
  }

  if (v53)
  {
    v24 = 0;
    v25 = 0;
    v26 = 96;
    while (1)
    {
      v27 = *(&v53 + 1);
      v28 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040AAA52FDDuLL);
      if (!v28)
      {
        goto LABEL_81;
      }

      v29 = v28;
      v30 = sub_25228AA6C(v58 + v24);
      v29[9] = v30;
      v31 = malloc_type_malloc(v30, 0xBD8DBBE0uLL);
      v29[10] = v31;
      if (!v31)
      {
        break;
      }

      v32 = sub_25228AA4C(v31 + v29[9] - 1, v29[9], v58 + v24, &v61);
      if (v32)
      {
        v10 = v32;
        free(v29[10]);
        v29[10] = 0;
        goto LABEL_87;
      }

      if (v29[9] != v61)
      {
        krb5_abortx(a1, "internal error in ASN.1 encoder");
      }

      copy_EncryptionKey();
      v33 = v27 + v26;
      v34 = *(v27 + v26 - 72);
      if (v34)
      {
        v35 = *(v33 - 64);
        if (v35)
        {
          v36 = *v34;
          v37 = *v35;
          v49 = *(v35 + 2);
          *v48 = v37;
          _krb5_principalname2krb5_principal(a1, v29, v48, v36);
        }
      }

      v38 = *(v33 - 56);
      if (v38)
      {
        *(v29 + 34) = *v38;
      }

      v39 = *(v27 + v26 - 48);
      if (v39)
      {
        v29[5] = *v39;
      }

      v40 = *(v27 + v26 - 40);
      if (v40)
      {
        v29[6] = *v40;
      }

      v41 = *(v27 + v26 - 32);
      if (v41)
      {
        v29[7] = *v41;
      }

      v42 = *(v27 + v26 - 24);
      if (v42)
      {
        v29[8] = *v42;
      }

      v43 = *(v27 + v26 - 16);
      if (v43)
      {
        v44 = *(v27 + v26 - 8);
        if (v44)
        {
          v45 = *v43;
          v46 = *v44;
          v49 = *(v44 + 2);
          *v48 = v46;
          _krb5_principalname2krb5_principal(a1, v29 + 1, v48, v45);
        }
      }

      v47 = *(v27 + v26);
      if (v47)
      {
        krb5_copy_addresses(a1, v47, v29 + 15);
      }

      (*a4)[v25++] = v29;
      v24 += 72;
      v26 += 104;
      if (v25 >= v53)
      {
        v23 = *a4;
        goto LABEL_83;
      }
    }

    v10 = 12;
LABEL_87:
    free(v29);
    goto LABEL_18;
  }

  v25 = 0;
LABEL_83:
  v23[v25] = 0;
  sub_25228B28C(&v57);
  sub_25228B2EC(&v53);
  return 0;
}

uint64_t sub_2522766A8(_krb5_context *a1, const krb5_address *a2, const krb5_address *a3, const char *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (krb5_address_compare(a1, a2, a3))
  {
    v8 = 0;
  }

  else
  {
    v8 = 2529638950;
    v11 = 0;
    krb5_print_address(a2, __str, 0x40uLL, &v11);
    krb5_print_address(a3, v12, 0x40uLL, &v11);
    krb5_set_error_message(a1, -1765328346, "%s: %s != %s", a4, v12, __str);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t krb5_rd_cred2(_krb5_context *a1, _krb5_auth_context *a2, _krb5_ccache *a3, krb5_data *a4)
{
  v11 = 0;
  result = krb5_rd_cred(a1, a2, a4, &v11, 0);
  if (!result)
  {
    v7 = v11;
    if (v11)
    {
      v8 = *v11;
      if (*v11)
      {
        v9 = v11 + 1;
        do
        {
          krb5_cc_store_cred(a1, a3, v8);
          krb5_free_creds(a1, *(v9 - 1));
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }
    }

    free(v7);
    return 0;
  }

  return result;
}

krb5_error_code krb5_rd_error(krb5_context a1, const krb5_data *a2, krb5_error **a3)
{
  v7 = 0;
  v5 = sub_25228B2FC(a2->data, *&a2->magic, a3, &v7);
  if (v5)
  {
    krb5_clear_error_message(a1);
  }

  else
  {
    *(a3 + 9) -= 1765328384;
  }

  return v5;
}

double krb5_free_error_contents(uint64_t a1, uint64_t a2)
{
  sub_25228B34C(a2);
  *(a2 + 96) = 0;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void krb5_free_error(krb5_context a1, krb5_error *a2)
{
  sub_25228B34C(a2);
  a2[1].client = 0;
  *&a2->e_data.data = 0u;
  *&a2[1].cusec = 0u;
  *&a2->server = 0u;
  *&a2->text.data = 0u;
  *&a2->magic = 0u;
  *&a2->stime = 0u;

  free(a2);
}

uint64_t krb5_error_from_rd_error(krb5_context a1, uint64_t a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 36);
  v5 = *(a2 + 88);
  if (!v5)
  {
    if (a3)
    {
      krb5_unparse_name_fixed(a1, *a3, v11, 0x100uLL);
      krb5_unparse_name_fixed(a1, a3[1], v10, 0x100uLL);
    }

    if (v4 > -1765328379)
    {
      if (v4 == -1765328378)
      {
        krb5_set_error_message(a1, -1765328378, "Client %s%s%s unknown");
        goto LABEL_15;
      }

      if (v4 == -1765328377)
      {
        krb5_set_error_message(a1, -1765328377, "Server %s%s%s unknown");
        goto LABEL_15;
      }
    }

    else
    {
      if (v4 == -1765328383)
      {
        krb5_set_error_message(a1, -1765328383, "Client %s%s%s expired");
        goto LABEL_15;
      }

      if (v4 == -1765328382)
      {
        krb5_set_error_message(a1, -1765328382, "Server %s%s%s expired");
        goto LABEL_15;
      }
    }

    krb5_clear_error_message(a1);
    goto LABEL_15;
  }

  v9 = *v5;
  krb5_set_error_message(a1, v4, "Error from KDC: %s");
LABEL_15:
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

krb5_error_code krb5_rd_priv(krb5_context a1, krb5_auth_context a2, const krb5_data *a3, krb5_data *a4, krb5_replay_data *a5)
{
  krb5_data_zero(a4);
  if ((*a2 & 0xA) == 0)
  {
LABEL_4:
    v26 = 0;
    v24 = 0u;
    *v25 = 0u;
    v23 = 0u;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    memset(v27, 0, sizeof(v27));
    v28 = 0;
    v10 = sub_25228B17C(a3->data, *&a3->magic, v27, &v22);
    if (v10)
    {
      v11 = v10;
      goto LABEL_6;
    }

    if (LODWORD(v27[0]) != 5)
    {
      krb5_clear_error_message(a1);
      v11 = -1765328345;
      goto LABEL_17;
    }

    if (DWORD1(v27[0]) != 21)
    {
      krb5_clear_error_message(a1);
      v11 = -1765328344;
      goto LABEL_17;
    }

    v12 = *(a2 + 6);
    if (!v12)
    {
      v12 = *(a2 + 5);
      if (!v12)
      {
        v12 = *(a2 + 4);
      }
    }

    v13 = krb5_crypto_init(a1, v12, 0, &v19);
    if (v13)
    {
      v11 = v13;
      goto LABEL_17;
    }

    v11 = krb5_decrypt_EncryptedData(a1, v19, 13, v27 + 8, &v20);
    krb5_crypto_destroy(a1, v19);
    if (v11)
    {
      goto LABEL_17;
    }

    v11 = sub_25228B1DC(v21, v20, &v23, &v22);
    krb5_data_free(&v20);
    if (v11)
    {
LABEL_6:
      krb5_clear_error_message(a1);
LABEL_17:
      sub_25228B1CC(v27);
      return v11;
    }

    if (v25[1] && (v15 = *(a2 + 2)) != 0 && !krb5_address_compare(a1, v15, v25[1]) || v26 && (v16 = *(a2 + 1)) != 0 && !krb5_address_compare(a1, v16, v26))
    {
      v11 = -1765328346;
      krb5_clear_error_message(a1);
      goto LABEL_49;
    }

    if (*a2)
    {
      *v18 = 0;
      krb5_timeofday(a1, v18);
      if (!v24 || !*(&v24 + 1) || krb5_time_abs(*v24, *v18) > *(a1 + 10))
      {
        krb5_clear_error_message(a1);
        v11 = -1765328347;
        goto LABEL_49;
      }

      if ((*a2 & 4) == 0)
      {
LABEL_38:
        v11 = krb5_data_copy(a4, *(&v23 + 1), v23);
        if (!v11)
        {
          if ((*a2 & 0xA) == 0)
          {
            goto LABEL_48;
          }

          if (v24)
          {
            *&a5->timestamp = *v24;
          }

          if (*(&v24 + 1))
          {
            a5->seq = **(&v24 + 1);
          }

          if (v25[0])
          {
            v11 = 0;
            a5[1].timestamp = v25[0]->magic;
          }

          else
          {
LABEL_48:
            v11 = 0;
          }
        }

        goto LABEL_49;
      }
    }

    else if ((*a2 & 4) == 0)
    {
      goto LABEL_38;
    }

    if (v25[0])
    {
      magic = v25[0]->magic;
      if (v25[0]->magic == *(a2 + 15))
      {
LABEL_31:
        *(a2 + 15) = magic + 1;
        goto LABEL_38;
      }
    }

    else
    {
      magic = *(a2 + 15);
      if (!magic)
      {
        goto LABEL_31;
      }
    }

    krb5_clear_error_message(a1);
    v11 = -1765328342;
LABEL_49:
    sub_25228B22C(&v23);
    goto LABEL_17;
  }

  if (a5)
  {
    *&a5->timestamp = 0;
    *&a5->seq = 0;
    goto LABEL_4;
  }

  krb5_clear_error_message(a1);
  return -1765328169;
}

uint64_t sub_252276E50(_krb5_context *a1, uint64_t a2, const char *a3, __int128 *a4, void *a5)
{
  v37 = 0;
  v38 = a2;
  v33 = 0;
  v35 = *a4;
  v36 = &v38;
  v8 = length_KDC_PROXY_MESSAGE(&v35);
  v34[0] = v8;
  v9 = malloc_type_malloc(v8, 0xDD339AAAuLL);
  v34[1] = v9;
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  v11 = encode_KDC_PROXY_MESSAGE(v9 + v8 - 1, v8, &v35, &v33);
  if (v11)
  {
    v19 = v11;
    free(v10);
  }

  else
  {
    if (v8 != v33)
    {
      sub_2522A7E84(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    memset(v51, 0, sizeof(v51));
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v46 = 0;
    v20 = objc_autoreleasePoolPush();
    v40 = 0;
    v41 = &v40;
    v42 = 0x3052000000;
    v43 = sub_252277210;
    v44 = sub_252277220;
    v45 = 0;
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    sub_25226B748(a1, 5, "kkdcp request to url: %s", [v21 UTF8String]);
    v22 = [MEMORY[0x277CBEBC0] URLWithString:v21];
    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v10 length:v8];
      v24 = [MEMORY[0x277CCAB70] requestWithURL:v22];
      [v24 setHTTPMethod:@"POST"];
      [v24 setHTTPBody:v23];
      [v24 addValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
      [v24 addValue:@"Heimdal 1.5.1apple1" forHTTPHeaderField:@"X-Kerberos-Client"];
      _CFURLRequestSetAllowedProtocolTypes();
      v25 = dispatch_semaphore_create(0);
      v26 = [MEMORY[0x277CCAD30] sessionWithConfiguration:{objc_msgSend(MEMORY[0x277CCAD38], "ephemeralSessionConfiguration")}];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_25227722C;
      v39[3] = &unk_2796FF948;
      v39[6] = &v40;
      v39[7] = a1;
      v39[4] = v25;
      v39[5] = &v47;
      [objc_msgSend(v26 dataTaskWithRequest:v24 completionHandler:{v39), "resume"}];
      dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
      v27 = [v41[5] bytes];
      v28 = decode_KDC_PROXY_MESSAGE(v27, [v41[5] length], v51, &v46);
      *(v48 + 6) = v28;
      if (v28)
      {
        krb5_set_error_message(a1, v28, "failed to decode KDC_PROXY_MESSAGE");
        v29 = 0;
      }

      else
      {
        v29 = 1;
      }
    }

    else
    {
      v29 = 0;
      *(v48 + 6) = 12;
    }

    _Block_object_dispose(&v40, 8);
    objc_autoreleasePoolPop(v20);
    if (v29)
    {
      v30 = krb5_data_copy(a5, v51[1], v51[0]);
      *(v48 + 6) = v30;
      sub_25228B670(v51);
    }

    v31 = *(v48 + 6);
    if (v31)
    {
      sub_25226B794(a1, 10, v31, "kkdcp to url (%s) failed", a3);
      v19 = *(v48 + 6);
    }

    else
    {
      v19 = 0;
    }

    _Block_object_dispose(&v47, 8);
    krb5_data_free(v34);
  }

  return v19;
}

intptr_t sub_25227722C(void *a1, void *a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    sub_25226B748(a1[7], 5, "kkdcp response error: %s", [objc_msgSend(a4 "localizedDescription")]);
    *(*(a1[5] + 8) + 24) = -1980176635;
    sub_252256C30(a1[7], *(*(a1[5] + 8) + 24), a4, "Failure during kkdcp stream", v7, v8, v9, v10, v13);
  }

  if (a2)
  {
    *(*(a1[6] + 8) + 40) = [a2 copy];
    sub_25226B748(a1[7], 5, "kkdcp response received: %lu", [a2 length]);
  }

  v11 = a1[4];

  return dispatch_semaphore_signal(v11);
}

krb5_error_code krb5_rd_rep(krb5_context a1, krb5_auth_context a2, const krb5_data *a3, krb5_ap_rep_enc_part **a4)
{
  v31 = 0u;
  memset(v30, 0, sizeof(v30));
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  krb5_data_zero(&v27);
  v13 = sub_25228B05C(a3->data, *&a3->magic, v30, &v29);
  if (!v13)
  {
    if (LODWORD(v30[0]) == 5)
    {
      if (DWORD1(v30[0]) == 15)
      {
        if (*(&v31 + 1) && *(a2 + 13))
        {
          v14 = sub_25227E374(a1, a2, v30, v8, v9, v10, v11, v12);
          if (v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_25227D5D0(a1, a2);
        }

        v14 = krb5_crypto_init(a1, *(a2 + 4), 0, &v26);
        if (!v14)
        {
          v13 = krb5_decrypt_EncryptedData(a1, v26, 12, v30 + 8, &v27);
          krb5_crypto_destroy(a1, v26);
          if (v13)
          {
            goto LABEL_13;
          }

          v16 = malloc_type_malloc(0x20uLL, 0x103004059AAC8DEuLL);
          *a4 = v16;
          if (!v16)
          {
            v13 = 12;
            krb5_set_error_message(a1, 12, "malloc: out of memory");
            goto LABEL_13;
          }

          v17 = sub_25228B0BC(v28, v27, v16, &v29);
          if (v17)
          {
            v13 = v17;
            krb5_set_error_message(a1, v17, "Failed to decode EncAPRepPart");
            return v13;
          }

          v22 = *a4;
          if (*a2)
          {
            v25 = *(a2 + 8);
            if (*&v22->magic != *(v25 + 56) || v22->cusec != *(v25 + 48))
            {
              sub_25228B10C(*a4);
              free(v22);
              *a4 = 0;
              krb5_clear_error_message(a1);
              v13 = -1765328338;
              goto LABEL_13;
            }
          }

          v23 = *&v22->seq_number;
          if (v23)
          {
            krb5_auth_con_setremoteseqnumber(a1, a2, *v23);
            v22 = *a4;
          }

          subkey = v22->subkey;
          if (subkey)
          {
            if (*(&v31 + 1) && *(a2 + 13))
            {
              v14 = sub_25227D650(a1, a2, "server key", subkey, v18, v19, v20, v21);
              if (v14)
              {
                goto LABEL_12;
              }
            }

            else
            {
              sub_25226B748(a1, 10, "krb5_rd_rep not using PFS", v26);
            }

            krb5_auth_con_setremotesubkey(a1, a2, (*a4)->subkey);
          }

          v13 = 0;
          goto LABEL_13;
        }

LABEL_12:
        v13 = v14;
        goto LABEL_13;
      }

      krb5_clear_error_message(a1);
      v13 = -1765328344;
    }

    else
    {
      v13 = -1765328345;
      krb5_clear_error_message(a1);
    }

LABEL_13:
    sub_25227D5D0(a1, a2);
    krb5_data_free(&v27);
    sub_25228B0AC(v30);
  }

  return v13;
}

void krb5_free_ap_rep_enc_part(krb5_context a1, krb5_ap_rep_enc_part *a2)
{
  if (a2)
  {
    sub_25228B10C(a2);

    free(a2);
  }
}

uint64_t krb5_decode_ap_req(_krb5_context *a1, uint64_t *a2, _DWORD *a3)
{
  v7 = 0;
  v5 = sub_25228AFFC(a2[1], *a2, a3, &v7);
  if (!v5)
  {
    v5 = 2529638951;
    if (*a3 == 5)
    {
      if (a3[1] == 14)
      {
        if (a3[4] == 5)
        {
          return 0;
        }
      }

      else
      {
        v5 = 2529638952;
      }
    }

    sub_25228B04C(a3);
    krb5_clear_error_message(a1);
  }

  return v5;
}

uint64_t krb5_decrypt_ticket(_krb5_context *a1, uint64_t a2, const krb5_keyblock *a3, uint64_t a4, char a5)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  *v32 = 0;
  v9 = krb5_crypto_init(a1, a3, 0, &v31);
  if (v9)
  {
    return v9;
  }

  v10 = krb5_decrypt_EncryptedData(a1, v31, 2, a2 + 40, &v33);
  krb5_crypto_destroy(a1, v31);
  if (v10)
  {
    return v10;
  }

  v11 = sub_25228AAA0(v34, v33, &v22, v32);
  if (v11)
  {
    v10 = v11;
    krb5_set_error_message(a1, v11, "Failed to decode encrypted ticket part");
    krb5_data_free(&v33);
    return v10;
  }

  krb5_data_free(&v33);
  *v32 = 0;
  v12 = *(&v27 + 1);
  krb5_timeofday(a1, v32);
  if (v28)
  {
    v12 = *v28;
  }

  v13 = *(a1 + 10);
  if (v12 - *v32 > v13 || (a5 & 1) == 0 && (v22 & 0x80) != 0)
  {
    sub_25228AAC0(&v22);
    krb5_clear_error_message(a1);
    return 2529638945;
  }

  if (*v32 - *(&v28 + 1) > v13)
  {
    sub_25228AAC0(&v22);
    krb5_clear_error_message(a1);
    return 2529638944;
  }

  if ((v22 & 0x1000) == 0)
  {
    if (v26 == 1)
    {
      if (!*(&v26 + 1))
      {
        goto LABEL_27;
      }

      v33 = 0;
      LODWORD(v31) = 0;
      v10 = krb5_domain_x500_decode(a1, *(&v26 + 1), v27, &v33, &v31, v24, *(a2 + 8));
      if (!v10)
      {
        v10 = krb5_check_transited(a1, v24, *(a2 + 8), v33, v31, 0, v15, v16);
        if (v31)
        {
          v17 = 0;
          do
          {
            free(v33[v17++]);
          }

          while (v17 < v31);
        }

        free(v33);
        if (!v10)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v10 = 2529638929;
      if (!v26 && !*(&v26 + 1))
      {
        goto LABEL_27;
      }
    }

    sub_25228AAC0(&v22);
    return v10;
  }

LABEL_27:
  if (a4)
  {
    v10 = 0;
    *(a4 + 128) = v30;
    v18 = v29;
    *(a4 + 96) = v28;
    *(a4 + 112) = v18;
    v19 = v25;
    *(a4 + 32) = v24;
    *(a4 + 48) = v19;
    v20 = v27;
    *(a4 + 64) = v26;
    *(a4 + 80) = v20;
    v21 = v23;
    *a4 = v22;
    *(a4 + 16) = v21;
  }

  else
  {
    sub_25228AAC0(&v22);
    return 0;
  }

  return v10;
}

uint64_t krb5_verify_authenticator_checksum(_krb5_context *a1, _krb5_auth_context *a2, const void *a3, size_t a4)
{
  *&v13.magic = 0;
  v13.client = 0;
  v12 = 0;
  v8 = krb5_auth_con_getauthenticator(a1, a2, &v13);
  if (!v8)
  {
    if (*(*&v13.magic + 40))
    {
      v10 = krb5_auth_con_getkey(a1, a2, &v13.client);
      if (v10)
      {
        v8 = v10;
        krb5_free_authenticator(a1, &v13);
      }

      else
      {
        v8 = krb5_crypto_init(a1, v13.client, 0, &v12);
        if (!v8)
        {
          v8 = krb5_verify_checksum(a1, v12, 0xA, a3, a4, *(*&v13.magic + 40), v11);
          krb5_crypto_destroy(a1, v12);
        }

        krb5_free_authenticator(a1, &v13);
        krb5_free_keyblock(a1, v13.client);
      }
    }

    else
    {
      krb5_free_authenticator(a1, &v13);
      return 4294967279;
    }
  }

  return v8;
}

uint64_t krb5_verify_ap_req2(krb5_context a1, krb5_auth_context *a2, uint64_t a3, int a4, const krb5_keyblock *a5, char a6, int *a7, void *a8, unsigned int a9)
{
  v44 = 0;
  v45 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  v46 = 0;
  if (a2 && *a2)
  {
    v46 = *a2;
  }

  else
  {
    v16 = krb5_auth_con_init(a1, &v46);
    if (v16)
    {
      return v16;
    }
  }

  v17 = malloc_type_calloc(1uLL, 0x98uLL, 0x10B0040764A81A9uLL);
  if (!v17)
  {
    krb5_clear_error_message(a1);
    sub_25228B40C(&v44);
    v16 = 12;
    if (!a2)
    {
LABEL_20:
      krb5_auth_con_free(a1, v46);
      return v16;
    }

    goto LABEL_19;
  }

  v18 = v17;
  if ((*(a3 + 8) & 2) != 0 && (v19 = *(v46 + 4)) != 0)
  {
    v16 = krb5_decrypt_ticket(a1, a3 + 16, v19, v17, a6);
    krb5_free_keyblock(a1, *(v46 + 4));
    *(v46 + 4) = 0;
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = krb5_decrypt_ticket(a1, a3 + 16, a5, v17, a6);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  v20 = *(a3 + 24);
  *v42 = *(a3 + 32);
  v43 = *(a3 + 48);
  v21 = _krb5_principalname2krb5_principal(a1, v18 + 18, v42, v20);
  if (v21)
  {
    goto LABEL_15;
  }

  v22 = *(v18 + 4);
  *v42 = *(v18 + 40);
  v43 = *(v18 + 7);
  v21 = _krb5_principalname2krb5_principal(a1, v18 + 17, v42, v22);
  if (v21)
  {
    goto LABEL_15;
  }

  v24 = *(v46 + 8);
  memset(v42, 0, sizeof(v42));
  v47 = 0;
  v48 = 0;
  v16 = krb5_crypto_init(a1, (v18 + 8), 0, &v47);
  if (!v16)
  {
    v25 = krb5_decrypt_EncryptedData(a1, v47, a9, a3 + 88, v42);
    v16 = v25;
    if (a9 == 7 && v25)
    {
      v16 = krb5_decrypt_EncryptedData(a1, v47, 11, a3 + 88, v42);
    }

    krb5_crypto_destroy(a1, v47);
    if (!v16)
    {
      v16 = sub_25228AB58(*&v42[2], *v42, v24, &v48);
      krb5_data_free(v42);
      if (!v16)
      {
        v47 = 0;
        v48 = 0;
        v26 = *(v46 + 8);
        v27 = *(v26 + 8);
        *v42 = *(v26 + 16);
        v43 = *(v26 + 32);
        _krb5_principalname2krb5_principal(a1, &v48, v42, v27);
        v28 = *(v18 + 4);
        *v42 = *(v18 + 40);
        v43 = *(v18 + 7);
        _krb5_principalname2krb5_principal(a1, &v47, v42, v28);
        v29 = krb5_principal_compare(a1, v48, v47);
        krb5_free_principal(a1, v48);
        krb5_free_principal(a1, v47);
        if (v29)
        {
          v30 = *(v18 + 15);
          if (!v30 || (v31 = *(v46 + 2)) == 0 || krb5_address_search(a1, v31, v30))
          {
            *v42 = 0;
            krb5_timeofday(a1, v42);
            if (krb5_time_abs(*(*(v46 + 8) + 56), *v42) > *(a1 + 10))
            {
              krb5_clear_error_message(a1);
              v16 = 2529638949;
              goto LABEL_16;
            }

            v32 = v46;
            if (*(v46 + 10))
            {
              v33 = *(v46 + 8);
              v21 = krb5_rc_store(a1, *(v46 + 10));
              if (v21)
              {
                goto LABEL_15;
              }

              v32 = v46;
            }

            v34 = *(v32 + 8);
            v35 = *(v34 + 72);
            if (v35)
            {
              krb5_auth_con_setremoteseqnumber(a1, v32, *v35);
              v32 = v46;
              v34 = *(v46 + 8);
            }

            v36 = *(v34 + 64);
            if (!v36)
            {
              goto LABEL_43;
            }

            v21 = krb5_auth_con_setremotesubkey(a1, v32, v36);
            if (!v21)
            {
              v32 = v46;
LABEL_43:
              v21 = sub_252277F30(a1, v32, &v44);
              if (!v21)
              {
                v37 = v45;
                *(v46 + 22) = 0;
                if (v37 && v44)
                {
                  v38 = 0;
                  while (krb5_enctype_valid(a1, *(v45 + 4 * v38)))
                  {
                    if (++v38 >= v44)
                    {
                      goto LABEL_52;
                    }
                  }

                  v39 = *(v45 + 4 * v38);
                  *(v46 + 22) = v39;
                  sub_25226B748(a1, 10, "ap_req2: upgrading to enctype: %d", v39);
                }

LABEL_52:
                v21 = krb5_copy_keyblock(a1, (v18 + 8), v46 + 4);
                if (!v21)
                {
                  if (a7)
                  {
                    *a7 = 0;
                    v40 = 4 * (*(v46 + 22) != 0);
                    *a7 = v40;
                    v41 = *(a3 + 8);
                    if ((v41 & 2) != 0)
                    {
                      v40 |= 1u;
                      *a7 = v40;
                      v41 = *(a3 + 8);
                    }

                    if ((v41 & 4) != 0)
                    {
                      *a7 = v40 | 2;
                    }
                  }

                  if (a8)
                  {
                    *a8 = v18;
                  }

                  else
                  {
                    krb5_free_ticket(a1, v18);
                  }

                  if (a2)
                  {
                    if (!*a2)
                    {
                      *a2 = v46;
                    }
                  }

                  else
                  {
                    krb5_auth_con_free(a1, v46);
                  }

                  sub_25228B40C(&v44);
                  return 0;
                }
              }
            }

LABEL_15:
            v16 = v21;
            goto LABEL_16;
          }

          krb5_clear_error_message(a1);
          v16 = 2529638950;
        }

        else
        {
          v16 = 2529638948;
          krb5_clear_error_message(a1);
        }
      }
    }
  }

LABEL_16:
  sub_25228B40C(&v44);
  krb5_free_ticket(a1, v18);
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_19:
  if (!*a2)
  {
    goto LABEL_20;
  }

  return v16;
}

uint64_t sub_252277F30(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  if (_krb5_get_ad(a1, *(*(a2 + 64) + 80), 0, 129, &v7))
  {
    return 0;
  }

  v5 = sub_25228B3BC(v8, v7, a3, 0);
  krb5_data_free(&v7);
  if (v5)
  {
    krb5_clear_error_message(a1);
  }

  return v5;
}

uint64_t krb5_rd_req_in_ctx_alloc(_krb5_context *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040261BCE2DuLL);
  *a2 = v4;
  if (v4)
  {
    v5 = 0;
    v4[4] = (*(a1 + 90) >> 1) & 1;
  }

  else
  {
    v5 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v5;
}

void krb5_rd_req_out_ctx_free(krb5_context a1, krb5_keyblock **a2)
{
  v4 = a2[2];
  if (v4)
  {
    krb5_free_ticket(a1, v4);
  }

  if (*a2)
  {
    krb5_free_keyblock(a1, *a2);
  }

  v5 = a2[3];
  if (v5)
  {
    krb5_free_principal(a1, v5);
  }

  v6 = a2[4];
  if (v6)
  {
    krb5_pac_free(a1, v6);
  }

  free(a2);
}

krb5_error_code krb5_rd_req(krb5_context a1, krb5_auth_context *a2, const krb5_data *a3, krb5_const_principal a4, krb5_keytab a5, krb5_flags *a6, krb5_ticket **a7)
{
  v20 = 0;
  v14 = krb5_rd_req_in_ctx_alloc(a1, &v20);
  if (v14)
  {
    return v14;
  }

  v19 = 0;
  v16 = v20;
  *v20 = a5;
  v15 = krb5_rd_req_ctx(a1, a2, &a3->magic, a4, v16, &v19);
  free(v16);
  if (!v15)
  {
    v17 = v19;
    if (a6)
    {
      *a6 = *(v19 + 12);
    }

    if (a7)
    {
      v15 = krb5_copy_ticket(a1, *(v17 + 16), a7);
    }

    else
    {
      v15 = 0;
    }

    krb5_rd_req_out_ctx_free(a1, v17);
  }

  return v15;
}

uint64_t krb5_rd_req_ctx(_krb5_context *a1, krb5_auth_context *a2, uint64_t *a3, const krb5_principal_data *a4, uint64_t a5, void *a6)
{
  v34 = 0;
  keytab = 0;
  *a6 = 0;
  v12 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200404A1ECDA0uLL);
  if (!v12)
  {
    v17 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v17;
  }

  v13 = v12;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  if (!*a2)
  {
    v14 = krb5_auth_con_init(a1, a2);
    if (v14)
    {
      goto LABEL_14;
    }
  }

  v14 = krb5_decode_ap_req(a1, a3, &v36);
  if (v14)
  {
    goto LABEL_14;
  }

  *&entry.magic = v38;
  *&entry.timestamp = v39;
  v14 = _krb5_principalname2krb5_principal(a1, v13 + 3, &entry, *(&v37 + 1));
  if (v14)
  {
    goto LABEL_14;
  }

  if ((BYTE8(v36) & 2) != 0 && !*(*a2 + 4))
  {
    v17 = 2529638957;
    krb5_set_error_message(a1, -1765328339, "krb5_rd_req: user to user auth without session key given");
    goto LABEL_15;
  }

  if (a5)
  {
    v15 = *a5;
    v16 = *(*a2 + 4);
    if (!v16)
    {
      v16 = *(a5 + 8);
      if (!v16)
      {
        if (v15)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

LABEL_23:
    v14 = krb5_copy_keyblock(a1, v16, v13);
    if (v14)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  v16 = *(*a2 + 4);
  if (v16)
  {
    v15 = 0;
    goto LABEL_23;
  }

LABEL_39:
  krb5_kt_default(a1, &keytab);
  v15 = keytab;
  if (!keytab)
  {
LABEL_47:
    v17 = 0;
    *a6 = v13;
    goto LABEL_16;
  }

LABEL_40:
  if (!a4)
  {
    *&entry.magic = v38;
    *&entry.timestamp = v39;
    v14 = _krb5_principalname2krb5_principal(a1, &v34, &entry, *(&v37 + 1));
    if (v14)
    {
      goto LABEL_14;
    }

    a4 = v34;
  }

  v14 = sub_252278818(a1, &v36, a4, v15, v13);
  if (v14)
  {
    if (!v34 && (*(a1 + 360) & 0x10) == 0)
    {
      goto LABEL_14;
    }

    *v13 = 0;
    goto LABEL_45;
  }

LABEL_24:
  if (*v13)
  {
    v14 = krb5_verify_ap_req2(a1, a2, &v36, v19, *v13, 0, v13 + 3, v13 + 2, 0xBu);
    if (v14)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_45:
  v33 = 0;
  memset(&entry, 0, sizeof(entry));
  memset(cursor, 0, sizeof(cursor));
  if (v40)
  {
    v25 = *v40;
  }

  else
  {
    v25 = 0;
  }

  v17 = krb5_kt_start_seq_get(a1, v15, cursor);
  if (v17)
  {
    goto LABEL_15;
  }

  v30 = 0;
  v26 = krb5_kt_next_entry(a1, v15, &entry, cursor);
  if (v26)
  {
LABEL_55:
    v17 = v26;
    sub_252264CD0(a1, v26, v15, v13[3], DWORD2(v39), v25);
    goto LABEL_56;
  }

  while (1)
  {
    if (entry.timestamp != DWORD2(v39))
    {
      goto LABEL_54;
    }

    v28 = krb5_verify_ap_req2(a1, a2, &v36, v27, &entry.timestamp, 0, v13 + 3, v13 + 2, 0xBu);
    if (!v28)
    {
      break;
    }

    if (v28 == -1765328221)
    {
      krb5_kt_end_seq_get(a1, v15, cursor);
      krb5_kt_free_entry(a1, &entry);
      v17 = 2529639075;
      goto LABEL_15;
    }

LABEL_54:
    krb5_kt_free_entry(a1, &entry);
    v30 = 0;
    v26 = krb5_kt_next_entry(a1, v15, &entry, cursor);
    if (v26)
    {
      goto LABEL_55;
    }
  }

  v29 = krb5_copy_keyblock(a1, &entry.timestamp, v13);
  if (!v29)
  {
    v29 = krb5_copy_principal(a1, *&entry.magic, &v30);
    if (!v29)
    {
      krb5_free_principal(a1, *(v13[2] + 18));
      *(v13[2] + 18) = v30;
      krb5_kt_free_entry(a1, &entry);
      krb5_kt_end_seq_get(a1, v15, cursor);
LABEL_26:
      v14 = sub_25227DAA8(a1, *a2);
      if (!v14)
      {
        sub_25226B748(a1, 15, "krb5_rd_req: used enctype %d from keytab", **v13);
        if (!a5 || *(a5 + 16))
        {
          cursor[0] = 0;
          *&entry.magic = 0;
          entry.principal = 0;
          if (!krb5_ticket_get_authorization_data_type(a1, v13[2], 128, &entry))
          {
            v17 = krb5_pac_parse(a1, entry.principal, *&entry.magic, cursor, v20, v21, v22, v23);
            krb5_data_free(&entry);
            if (v17)
            {
              goto LABEL_15;
            }

            if (!krb5_pac_verify(a1, cursor[0], *(v13[2] + 11), *(v13[2] + 17), *v13, 0))
            {
              *(v13 + 2) |= 1u;
              v13[4] = heim_retain(cursor[0]);
            }

            if (v13[1])
            {
              v24 = *(a5 + 24);
              if (v24)
              {
                if (!krb5_pac_process_credentials_buffer(a1, cursor[0], v24))
                {
                  *(v13 + 2) |= 2u;
                }
              }
            }

            krb5_pac_free(a1, cursor[0]);
          }
        }

        goto LABEL_47;
      }

LABEL_14:
      v17 = v14;
      goto LABEL_15;
    }
  }

  v17 = v29;
  krb5_kt_free_entry(a1, &entry);
LABEL_56:
  krb5_kt_end_seq_get(a1, v15, cursor);
LABEL_15:
  krb5_rd_req_out_ctx_free(a1, v13);
LABEL_16:
  sub_25228B04C(&v36);
  if (v34)
  {
    krb5_free_principal(a1, v34);
  }

  if (keytab)
  {
    krb5_kt_close(a1, keytab);
  }

  return v17;
}

uint64_t krb5_rd_req_with_keyblock(_krb5_context *a1, krb5_auth_context *a2, uint64_t *a3, const krb5_principal_data *a4, uint64_t a5, _DWORD *a6, krb5_ticket **a7)
{
  v20 = 0;
  v14 = krb5_rd_req_in_ctx_alloc(a1, &v20);
  if (v14)
  {
    return v14;
  }

  v19 = 0;
  v16 = v20;
  v20[1] = a5;
  v15 = krb5_rd_req_ctx(a1, a2, a3, a4, v16, &v19);
  free(v16);
  if (!v15)
  {
    v17 = v19;
    if (a6)
    {
      *a6 = *(v19 + 12);
    }

    if (a7)
    {
      v15 = krb5_copy_ticket(a1, *(v17 + 16), a7);
    }

    else
    {
      v15 = 0;
    }

    krb5_rd_req_out_ctx_free(a1, v17);
  }

  return v15;
}

uint64_t sub_252278818(krb5_context context, uint64_t a2, const krb5_principal_data *a3, krb5_keytab keytab, krb5_keyblock **a5)
{
  v13 = 0;
  memset(&v12, 0, sizeof(v12));
  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  entry = krb5_kt_get_entry(context, keytab, a3, v9, *(a2 + 56), &v12);
  if (!entry)
  {
    entry = krb5_copy_keyblock(context, &v12.timestamp, a5);
    krb5_kt_free_entry(context, &v12);
  }

  return entry;
}

krb5_error_code krb5_rd_safe(krb5_context a1, krb5_auth_context a2, const krb5_data *a3, krb5_data *a4, krb5_replay_data *a5)
{
  krb5_data_zero(a4);
  if ((*a2 & 0xA) != 0)
  {
    if (!a5)
    {
      v10 = -1765328169;
      krb5_set_error_message(a1, -1765328169, "rd_safe: need outdata to return data");
      return v10;
    }

    *&a5->timestamp = 0;
    *&a5->seq = 0;
  }

  v25 = 0;
  *v23 = 0u;
  v24 = 0u;
  *__src = 0u;
  v22 = 0u;
  *size = 0u;
  v19 = 0;
  v10 = sub_25228B11C(a3->data, *&a3->magic, size, &v19);
  if (!v10)
  {
    if (LODWORD(size[0]) == 5)
    {
      if (HIDWORD(size[0]) == 20)
      {
        if (krb5_checksum_is_keyed(a1, v24) && krb5_checksum_is_collision_proof(a1, v24))
        {
          if (v23[0] && (v11 = *(a2 + 2)) != 0 && !krb5_address_compare(a1, v11, v23[0]) || v23[1] && (v12 = *(a2 + 1)) != 0 && !krb5_address_compare(a1, v12, v23[1]))
          {
            v10 = -1765328346;
            krb5_clear_error_message(a1);
            goto LABEL_24;
          }

          if (*a2)
          {
            v18 = 0;
            krb5_timeofday(a1, &v18);
            if (!__src[1] || !v22 || krb5_time_abs(*__src[1], v18) > *(a1 + 10))
            {
              krb5_clear_error_message(a1);
              v10 = -1765328347;
              goto LABEL_24;
            }

            if ((*a2 & 4) == 0)
            {
LABEL_32:
              v10 = sub_252278BA8(a1, a2, size);
              if (!v10)
              {
                v15 = size[1];
                *&a4->magic = size[1];
                v16 = malloc_type_malloc(v15, 0xFE5025D4uLL);
                a4->data = v16;
                v17 = *&a4->magic;
                if (v16 || !v17)
                {
                  memcpy(v16, __src[0], v17);
                  if ((*a2 & 0xA) == 0)
                  {
                    goto LABEL_45;
                  }

                  if (__src[1])
                  {
                    *&a5->timestamp = *__src[1];
                  }

                  if (v22)
                  {
                    a5->seq = *v22;
                  }

                  if (*(&v22 + 1))
                  {
                    v10 = 0;
                    a5[1].timestamp = **(&v22 + 1);
                  }

                  else
                  {
LABEL_45:
                    v10 = 0;
                  }
                }

                else
                {
                  v10 = 12;
                  krb5_set_error_message(a1, 12, "malloc: out of memory");
                  krb5_data_zero(a4);
                }
              }

              goto LABEL_24;
            }
          }

          else if ((*a2 & 4) == 0)
          {
            goto LABEL_32;
          }

          if (*(&v22 + 1))
          {
            v13 = **(&v22 + 1);
            if (**(&v22 + 1) == *(a2 + 15))
            {
LABEL_19:
              *(a2 + 15) = v13 + 1;
              goto LABEL_32;
            }
          }

          else
          {
            v13 = *(a2 + 15);
            if (!v13)
            {
              goto LABEL_19;
            }
          }

          krb5_clear_error_message(a1);
          v10 = -1765328342;
        }

        else
        {
          krb5_clear_error_message(a1);
          v10 = -1765328334;
        }
      }

      else
      {
        krb5_clear_error_message(a1);
        v10 = -1765328344;
      }
    }

    else
    {
      krb5_clear_error_message(a1);
      v10 = -1765328345;
    }

LABEL_24:
    sub_25228B16C(size);
  }

  return v10;
}

uint64_t sub_252278BA8(_krb5_context *a1, void *a2, uint64_t a3)
{
  seed = *(a3 + 64);
  v16 = *(a3 + 80);
  in_length = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  v6 = sub_25228B15C(a3);
  v7 = malloc_type_malloc(v6, 0x60DBF4D6uLL);
  if (!v7)
  {
    return 12;
  }

  v8 = v7;
  *ctype = 0;
  v9 = &v7[v6];
  v10 = sub_25228B13C(&v7[v6 - 1], v6, a3, &in_length);
  if (!v10)
  {
    if (v6 != in_length)
    {
      krb5_abortx(a1, "internal error in ASN.1 encoder");
    }

    v11 = a2[6];
    if (!v11)
    {
      v11 = a2[5];
      if (!v11)
      {
        v11 = a2[4];
      }
    }

    v10 = krb5_crypto_init(a1, v11, 0, ctype);
    if (!v10)
    {
      v10 = krb5_verify_checksum(a1, ctype[0], 0xF, &v9[-in_length], in_length, &seed, v12);
      krb5_crypto_destroy(a1, *ctype);
    }

    *(a3 + 64) = seed;
    *(a3 + 80) = v16;
  }

  free(v8);
  return v10;
}

uint64_t krb5_read_message(_krb5_context *a1, int *a2, uint64_t a3)
{
  krb5_data_zero(a3);
  v6 = krb5_net_read(a1, a2, v11, 4uLL);
  if (v6 == -1)
  {
    v7 = *__error();
    goto LABEL_12;
  }

  if (v6 > 3)
  {
    if (v11[0] >= 0x10uLL)
    {
      v7 = 34;
      krb5_set_error_message(a1, 34, "packet to large");
      return v7;
    }

    v8 = (v11[0] << 24) | (v11[1] << 16) | v11[3] | (v11[2] << 8);
    v9 = krb5_data_alloc(a3, v8);
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      if (krb5_net_read(a1, a2, *(a3 + 8), v8) == v8)
      {
        return 0;
      }

      v7 = *__error();
      krb5_data_free(a3);
    }

LABEL_12:
    krb5_clear_error_message(a1);
    return v7;
  }

  krb5_clear_error_message(a1);
  return 2314790661;
}

uint64_t krb5_read_priv_message(_krb5_context *a1, _krb5_auth_context *a2, int *a3, krb5_data *a4)
{
  *&v9.magic = 0;
  v9.data = 0;
  message = krb5_read_message(a1, a3, &v9);
  if (!message)
  {
    message = krb5_rd_priv(a1, a2, &v9, a4, 0);
    krb5_data_free(&v9);
  }

  return message;
}

uint64_t krb5_read_safe_message(_krb5_context *a1, _krb5_auth_context *a2, int *a3, krb5_data *a4)
{
  *&v9.magic = 0;
  v9.data = 0;
  message = krb5_read_message(a1, a3, &v9);
  if (!message)
  {
    message = krb5_rd_safe(a1, a2, &v9, a4, 0);
    krb5_data_free(&v9);
  }

  return message;
}

uint64_t krb5_recvauth_match_version(krb5_context a1, krb5_auth_context *a2, int *a3, unsigned int (*a4)(uint64_t, char *), uint64_t a5, const krb5_principal_data *a6, char a7, _krb5_kt *a8, krb5_ticket **a9)
{
  v46 = *MEMORY[0x277D85DE8];
  v17 = *a2;
  if (!v17)
  {
    v18 = krb5_auth_con_init(a1, a2);
    if (v18)
    {
      goto LABEL_11;
    }

    v17 = *a2;
  }

  v18 = krb5_auth_con_setaddrs_from_fd(a1, v17, a3);
  if (v18)
  {
LABEL_11:
    v22 = v18;
    goto LABEL_30;
  }

  v44 = 0;
  __buf = 0;
  *&v42.magic = 0;
  v42.data = 0;
  v41 = 0;
  if (a7)
  {
    goto LABEL_12;
  }

  v19 = krb5_net_read(a1, a3, &v44, 4uLL);
  if (v19 < 0)
  {
    goto LABEL_17;
  }

  if (!v19)
  {
    v22 = 2529639116;
    krb5_set_error_message(a1, -1765328180, "Failed to receive sendauth data");
    goto LABEL_30;
  }

  v20 = v44;
  v44 = bswap32(v44);
  if (v20 == 318767104)
  {
    v21 = krb5_net_read(a1, a3, v45, 0x13uLL);
    if (v21 == v44 && !strncmp("KRB5_SENDAUTH_V1.0", v45, v21))
    {
LABEL_12:
      v23 = krb5_net_read(a1, a3, &v44, 4uLL);
      if ((v23 & 0x8000000000000000) == 0)
      {
        if (!v23)
        {
          krb5_clear_error_message(a1);
          v22 = 2529639117;
          goto LABEL_30;
        }

        v24 = bswap32(v44);
        v44 = v24;
        if (v24 >> 28)
        {
          v22 = 34;
          krb5_set_error_message(a1, 34, "packet to large");
          goto LABEL_30;
        }

        v29 = malloc_type_malloc(v24, 0x64888799uLL);
        if (!v29)
        {
          __buf = 2;
          krb5_net_write(a1, a3, &__buf, 1uLL);
          v26 = "malloc: out of memory";
          v22 = 12;
          v27 = a1;
          v28 = 12;
          goto LABEL_29;
        }

        v30 = v29;
        v31 = krb5_net_read(a1, a3, v29, v44);
        if (v31 != v44 || !a4(a5, v30))
        {
          __buf = 2;
          krb5_net_write(a1, a3, &__buf, 1uLL);
          v22 = 2529639117;
          krb5_set_error_message(a1, -1765328179, "wrong sendauth version (%s)", v30);
          free(v30);
          goto LABEL_30;
        }

        free(v30);
        __buf = 0;
        if (krb5_net_write(a1, a3, &__buf, 1uLL) != 1)
        {
          v35 = __error();
          v22 = *v35;
          v39 = strerror(*v35);
          v26 = "write: %s";
          goto LABEL_18;
        }

        krb5_data_zero(&v42);
        message = krb5_read_message(a1, a3, &v42);
        if (message)
        {
          v22 = message;
          v26 = "krb5_recvauth: client closed connection";
          goto LABEL_18;
        }

        v22 = krb5_rd_req(a1, a2, &v42, a6, a8, &v41, a9);
        krb5_data_free(&v42);
        if (v22)
        {
          v40[0] = 0;
          v40[1] = 0;
          if (krb5_mk_error(a1, v22, 0))
          {
            goto LABEL_30;
          }

          krb5_write_message(a1, a3, v40);
          v36 = v40;
LABEL_35:
          krb5_data_free(v36);
          goto LABEL_30;
        }

        v44 = 0;
        if (krb5_net_write(a1, a3, &v44, 4uLL) == 4)
        {
          if ((v41 & 2) == 0)
          {
            v22 = 0;
            goto LABEL_30;
          }

          v38 = krb5_mk_rep(a1, *a2, &v42);
          if (v38)
          {
            v22 = v38;
          }

          else
          {
            v22 = krb5_write_message(a1, a3, &v42);
            if (!v22)
            {
              v36 = &v42;
              goto LABEL_35;
            }

            krb5_set_error_message(a1, v22, "krb5_recvauth: server closed connection");
          }
        }

        else
        {
          v37 = __error();
          v22 = *v37;
          strerror(*v37);
          krb5_set_error_message(a1, v22, "write: %s");
        }

        krb5_free_ticket(a1, *a9);
        *a9 = 0;
        goto LABEL_30;
      }

LABEL_17:
      v25 = __error();
      v22 = *v25;
      v39 = strerror(*v25);
      v26 = "read: %s";
LABEL_18:
      v27 = a1;
      v28 = v22;
LABEL_29:
      krb5_set_error_message(v27, v28, v26, v39);
      goto LABEL_30;
    }
  }

  v22 = 2529639116;
  __buf = 1;
  krb5_net_write(a1, a3, &__buf, 1uLL);
  krb5_clear_error_message(a1);
LABEL_30:
  v33 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t krb5_rc_resolve(_krb5_context *a1, void *a2, char *__s1, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2[1])
  {
    krb5_abort(a1, 22, "called krb5_rc_resolve more then once", a4, a5, a6, a7, a8, v13);
  }

  a2[1] = strdup(__s1);
  v11 = *(*a2 + 16);

  return v11(a1, __s1, a2);
}

uint64_t krb5_rc_resolve_type(_krb5_context *a1, void *a2, const char *a3)
{
  v6 = 0;
  *a2 = 0;
  for (i = 1; ; i = 0)
  {
    v8 = i;
    v9 = &(&off_280C4DE18)[9 * v6];
    v10 = strlen(*v9);
    if (!strncmp(a3, *v9, v10) && (!a3[v10] || a3[v10] == 58))
    {
      break;
    }

    v6 = 1;
    if ((v8 & 1) == 0)
    {
      v11 = 2529639073;
      krb5_set_error_message(a1, -1765328223, "replay cache type %s not supported", a3);
      return v11;
    }
  }

  v12 = malloc_type_calloc(1uLL, (v9[1] + 16), 0x30040E4270A41uLL);
  *a2 = v12;
  if (v12)
  {
    v11 = 0;
    *v12 = v9;
    return v11;
  }

  return krb5_enomem(a1);
}

uint64_t krb5_rc_resolve_full(_krb5_context *a1, const char ****a2, const char *a3)
{
  *a2 = 0;
  v6 = krb5_rc_resolve_type(a1, a2, a3);
  if (!v6)
  {
    v12 = &a3[strlen(***a2)];
    if (*v12 == 58)
    {
      v6 = krb5_rc_resolve(a1, *a2, v12 + 1, v7, v8, v9, v10, v11);
      if (v6)
      {
        krb5_rc_close(a1, *a2);
        *a2 = 0;
      }
    }

    else
    {
      v6 = 2529639073;
      krb5_set_error_message(a1, -1765328223, "replay have bad name: %s", a3);
    }
  }

  return v6;
}

uint64_t krb5_rc_close(uint64_t a1, void *a2)
{
  (*(*a2 + 64))();
  v3 = a2[1];
  if (v3)
  {
    free(v3);
  }

  free(a2);
  return 0;
}

uint64_t krb5_rc_destroy(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 56))();
  if (!v4)
  {
    krb5_rc_close(a1, a2);
  }

  return v4;
}

uint64_t sub_2522797A0(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = fopen(*(a3 + 8), "w");
  v15 = 0u;
  v14 = 0u;
  if (v6)
  {
    v7 = v6;
    __ptr = a2;
    fwrite(&__ptr, 1uLL, 0x28uLL, v6);
    fclose(v7);
    v8 = 0;
  }

  else
  {
    v9 = __error();
    v8 = *v9;
    strerror_r(*v9, __strerrbuf, 0x80uLL);
    krb5_set_error_message(a1, v8, "open(%s): %s", *(a3 + 8), __strerrbuf);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_252279898(_krb5_context *a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = fopen(*(a2 + 8), "r");
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = fread(v9, 0x28uLL, 1uLL, v5);
  fclose(v5);
  if (v6)
  {
    result = 0;
    *a3 = *&v9[0];
  }

  else
  {
    krb5_clear_error_message(a1);
    result = 2529639083;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25227995C(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v29 = 0u;
  v28 = time(0);
  sub_252279FC0(a3, &v29);
  v6 = fopen(*(a2 + 8), "r");
  if (!v6)
  {
    v16 = __error();
    v14 = *v16;
    strerror_r(*v16, __strerrbuf, 0x80uLL);
    v23 = *(a2 + 8);
    v15 = "open(%s): %s";
    goto LABEL_19;
  }

  v7 = v6;
  v27 = 0;
  __ptr = 0u;
  v26 = 0u;
  rk_cloexec_file(v6);
  fread(&__ptr, 0x28uLL, 1uLL, v7);
  v8 = v28;
  v9 = __ptr;
  if (!fread(&__ptr, 0x28uLL, 1uLL, v7))
  {
LABEL_16:
    if (!ferror(v7))
    {
      fclose(v7);
      v19 = fopen(*(a2 + 8), "a");
      if (v19)
      {
        v20 = v19;
        fwrite(&v28, 1uLL, 0x28uLL, v19);
        fclose(v20);
        v14 = 0;
      }

      else
      {
        v14 = 2529639083;
        v21 = __error();
        strerror_r(*v21, __strerrbuf, 0x80uLL);
        v22 = *(a2 + 8);
        krb5_set_error_message(a1, -1765328213, "open(%s): %s");
      }

      goto LABEL_20;
    }

    v14 = *__error();
    fclose(v7);
    strerror_r(v14, __strerrbuf, 0x80uLL);
    v23 = *(a2 + 8);
    v15 = "%s: %s";
LABEL_19:
    krb5_set_error_message(a1, v14, v15, v23, __strerrbuf);
    goto LABEL_20;
  }

  v10 = v8 - v9;
  while (1)
  {
    if (__ptr >= v10)
    {
      v11 = *(&__ptr + 1) == v29 && v26 == *(&v29 + 1);
      v12 = v11 && *(&v26 + 1) == v30;
      if (v12 && v27 == *(&v30 + 1))
      {
        break;
      }
    }

    if (!fread(&__ptr, 0x28uLL, 1uLL, v7))
    {
      goto LABEL_16;
    }
  }

  fclose(v7);
  krb5_clear_error_message(a1);
  v14 = 2529639075;
LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_252279BC4(_krb5_context *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (remove(*(a2 + 8), a2) < 0)
  {
    v5 = __error();
    v4 = *v5;
    strerror_r(*v5, __strerrbuf, 0x80uLL);
    krb5_set_error_message(a1, v4, "remove(%s): %s", *(a2 + 8), __strerrbuf);
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_252279C80(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&stru_27F4D65F0);
  if (qword_27F4D65D8 != a2)
  {
    qword_27F4D65D8 = a2;
  }

  pthread_mutex_unlock(&stru_27F4D65F0);
  return 0;
}

uint64_t sub_252279CD4(uint64_t a1, uint64_t a2, void *a3)
{
  pthread_mutex_lock(&stru_27F4D65F0);
  *a3 = qword_27F4D65D8;
  pthread_mutex_unlock(&stru_27F4D65F0);
  return 0;
}

uint64_t sub_252279D18(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_malloc(0x38uLL, 0x10A0040E90C3259uLL);
  if (v5)
  {
    v6 = v5;
    *v5 = *(a3 + 56);
    v7 = v5 + 1;
    sub_252279FC0(a3, (v5 + 1));
    v8 = time(0);
    v9 = qword_27F4D65D8;
    pthread_mutex_lock(&stru_27F4D65F0);
    v10 = off_27F4D65E0;
    if (off_27F4D65E0)
    {
      v11 = *(a3 + 56);
      do
      {
        v12 = v10[5];
        if (*v10 == v11)
        {
          v13 = v10[1] == *v7 && v10[2] == v7[1];
          v14 = v13 && v10[3] == v7[2];
          if (v14 && v10[4] == v7[3])
          {
            v21 = 2529639075;
            pthread_mutex_unlock(&stru_27F4D65F0);
            krb5_set_error_message(a1, -1765328221, "replay detected");
            free(v6);
            return v21;
          }
        }

        if (*v10 < v8 - v9)
        {
          v16 = v10[6];
          v17 = v12 + 6;
          if (!v12)
          {
            v17 = &qword_27F4D65E8;
          }

          *v17 = v16;
          *v16 = v12;
        }

        v10 = v12;
      }

      while (v12);
      v18 = off_27F4D65E0;
      v6[5] = off_27F4D65E0;
      v19 = (v6 + 5);
      if (!v18)
      {
        goto LABEL_26;
      }

      v18[6] = v19;
    }

    else
    {
      v6[5] = 0;
      v19 = (v6 + 5);
LABEL_26:
      qword_27F4D65E8 = v19;
    }

    v6[6] = &off_27F4D65E0;
    off_27F4D65E0 = v6;
    pthread_mutex_unlock(&stru_27F4D65F0);
    return 0;
  }

  else
  {

    return krb5_enomem(a1);
  }
}

uint64_t sub_252279ECC()
{
  pthread_mutex_lock(&stru_27F4D65F0);
  v0 = time(0);
  v1 = off_27F4D65E0;
  if (off_27F4D65E0)
  {
    v2 = v0 - qword_27F4D65D8;
    do
    {
      v3 = v1[5];
      if (*v1 < v2)
      {
        v4 = v1[6];
        v5 = v3 + 6;
        if (!v3)
        {
          v5 = &qword_27F4D65E8;
        }

        *v5 = v4;
        *v4 = v3;
      }

      v1 = v3;
    }

    while (v3);
  }

  pthread_mutex_unlock(&stru_27F4D65F0);
  return 0;
}

uint64_t sub_252279F58()
{
  pthread_mutex_lock(&stru_27F4D65F0);
  while (off_27F4D65E0)
  {
    v1 = *(off_27F4D65E0 + 5);
    v0 = *(off_27F4D65E0 + 6);
    v2 = (v1 + 48);
    if (!v1)
    {
      v2 = &qword_27F4D65E8;
    }

    *v2 = v0;
    *v0 = v1;
  }

  pthread_mutex_unlock(&stru_27F4D65F0);
  return 0;
}

uint64_t sub_252279FC0(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = ccsha256_di();
  v5 = (((*(v4 + 8) + *(v4 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v11 - v6;
  ccdigest_init();
  strlen(*(a1 + 8));
  ccdigest_update();
  if (*(a1 + 24))
  {
    v8 = 0;
    do
    {
      strlen(*(*(a1 + 32) + 8 * v8));
      ccdigest_update();
      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  ccdigest_update();
  ccdigest_update();
  result = (*(v4 + 56))(v4, v7, a2);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t krb5_sendto_ctx_alloc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = heim_uniq_alloc(0xF8uLL, "sendto-context", sub_25227A15C, a4, a5, a6, a7, a8);
  *(*a2 + 136) = heim_array_create();
  return 0;
}

void sub_25227A15C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    free(v4);
  }

  heim_release(*(a1 + 136));
  v5 = *(a1 + 104);

  heim_release(v5);
}

uint64_t krb5_sendto_ctx_set_func(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 40) = a2;
  *(result + 48) = a3;
  return result;
}

uint64_t sub_25227A1E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 160) = a2;
  *(result + 168) = a3;
  return result;
}

uint64_t sub_25227A1EC(_krb5_context *a1, uint64_t a2, char *__s1)
{
  v5 = strdup(__s1);
  *(a2 + 56) = v5;
  if (v5)
  {
    return 0;
  }

  return krb5_enomem(a1);
}

uint64_t sub_25227A244(_krb5_context *a1, uint64_t a2, char *__s1)
{
  v5 = strdup(__s1);
  *(a2 + 64) = v5;
  if (v5)
  {
    return 0;
  }

  return krb5_enomem(a1);
}

uint64_t krb5_sendto_set_delegated_app(uint64_t a1, uint64_t a2, _OWORD *a3, int a4, char *__s1)
{
  *(a2 + 156) |= 1u;
  if (a3)
  {
    *(a2 + 72) = *a3;
    v9 = "passed-in";
  }

  else if (__s1)
  {
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    v12 = NEHelperCacheCopyAppUUIDMapping();
    if (v12)
    {
      v13 = v12;
      if (MEMORY[0x25309E810]() == MEMORY[0x277D86440] && xpc_array_get_count(v13))
      {
        *(a2 + 72) = *xpc_array_get_uuid(v13, 0);
        v9 = "NEHelperCacheCopyAppUUIDMapping";
      }

      else
      {
        v9 = "NEHelperCacheCopyAppUUIDMapping-fail";
      }

      xpc_release(v13);
    }

    else
    {
      v9 = "NEHelperCacheCopyAppUUIDMapping-fail";
    }
  }

  else
  {
    v9 = "unknown";
  }

  v10 = *(a2 + 96);
  if (v10)
  {
    free(v10);
    *(a2 + 96) = 0;
  }

  if (__s1)
  {
    *(a2 + 96) = strdup(__s1);
  }

  sub_25226B748(a1, 5, "krb5_sendto_set_delegated_app: %s - %s, %d uuid: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", v9, __s1, a4, *(a2 + 72), *(a2 + 73), *(a2 + 74), *(a2 + 75), *(a2 + 76), *(a2 + 77), *(a2 + 78), *(a2 + 79), *(a2 + 80), *(a2 + 81), *(a2 + 82), *(a2 + 83), *(a2 + 84), *(a2 + 85), *(a2 + 86), *(a2 + 87));
  return 0;
}

uint64_t sub_25227A434(_krb5_context *a1, uint64_t a2, int a3, krb5_data *a4, int *a5)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  if (!krb5_rd_error(a1, a4, v12))
  {
    v8 = krb5_error_from_rd_error(a1, v12, 0);
    krb5_free_error_contents(a1, v12);
    if (v8 == -1765328355)
    {
      v10 = 2;
      goto LABEL_7;
    }

    if (v8 == -1765328332)
    {
      v9 = *(a2 + 32);
      if ((v9 & 2) == 0)
      {
        *(a2 + 32) = v9 | 2;
        v10 = 1;
LABEL_7:
        *a5 = v10;
      }
    }
  }

  return 0;
}

uint64_t krb5_sendto_context(uint64_t a1, uint64_t a2, _DWORD *a3, char *a4, void *a5)
{
  v156 = *MEMORY[0x277D85DE8];
  v8 = 2529639068;
  *v105 = 0;
  krb5_data_zero(a5);
  heim_warn_blocking("krb5_sendto_context", &qword_27F4D9588);
  v14 = a2;
  v15 = -1765328228;
  if (!a2)
  {
    v14 = heim_uniq_alloc(0xF8uLL, "sendto-context", sub_25227A15C, v9, v10, v11, v12, v13);
    v15 = 0;
    *(v14 + 136) = heim_array_create();
  }

  *(v14 + 176) = 0u;
  *(v14 + 208) = 0u;
  *(v14 + 224) = 0u;
  *(v14 + 192) = 0u;
  gettimeofday((v14 + 176), 0);
  *(v14 + 144) = a4;
  v23 = *(a1 + 384);
  *(a1 + 384) = v23 + 1;
  *(v14 + 240) = v23 << 16;
  v95 = *(v14 + 36);
  if (!v95)
  {
    if (*(v14 + 32))
    {
      v24 = 2;
    }

    else if (*(a1 + 224))
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    v95 = v24;
  }

  v94 = a2;
  *(v14 + 112) = a3;
  if (*(a1 + 336) < *a3)
  {
    *(v14 + 32) |= 2u;
  }

  v25 = 4;
  v98 = 0;
  v99 = (v14 + 120);
  v104.tv_sec = 0;
  *&v104.tv_usec = 0;
  v103.tv_sec = 0;
  *&v103.tv_usec = 0;
  v102.tv_sec = 0;
  *&v102.tv_usec = 0;
  v101 = 4;
  while (v25 != 6)
  {
    v100 = 0;
    if (v25 > 3)
    {
      if (v25 != 7)
      {
        if (v25 == 5)
        {
          v101 = 0;
          v30 = *(v14 + 40);
          if (v30)
          {
            if (v30(a1, v14, *(v14 + 48), v99, &v101))
            {
              goto LABEL_141;
            }

            v15 = v101;
            if ((v101 - 1) < 2)
            {
              krb5_data_free(v99);
              goto LABEL_94;
            }

            if (v101)
            {
              krb5_set_error_message(a1, -1765328228, "sendto filter funcation return unsupported state: %d", v101);
LABEL_141:
              gettimeofday(&v102, 0);
              sub_2522A3BC0(&v102, v14 + 176);
LABEL_142:
              krb5_data_free(v99);
              krb5_clear_error_message(a1);
              v88 = "KDCs";
              if (*(v14 + 232) == 1)
              {
                v88 = "KDC";
              }

              krb5_set_error_message(a1, -1765328228, "unable to reach any KDC in realm %s, tried %lu %s", a4, *(v14 + 232), v88);
              goto LABEL_145;
            }
          }

          goto LABEL_95;
        }

        if (v25 != 4)
        {
LABEL_152:
          heim_abort("invalid krb5_sendto_context action: %d", v16, v17, v18, v19, v20, v21, v22, v25);
        }

        v26 = *(a1 + 88);
        *v149 = a4;
        *&v149[16] = v26;
        *&v149[24] = a3;
        *&v149[32] = a5;
        v27 = krb5_plugin_run_f(a1, "krb5", "send_to_kdc", 2u, 0, v149, sub_25227B314);
        if (v27 != -1765328135)
        {
          v15 = v27;
          v101 = 0;
          goto LABEL_95;
        }

        v101 = 7;
        v15 = -1765328135;
      }

      v28 = *(v14 + 104);
      if (v28)
      {
        *v105 = heim_retain(v28);
      }

      else
      {
        if (krb5_krbhst_init_flags(a1, a4, v95, *(v14 + 32), v105))
        {
          goto LABEL_141;
        }

        v32 = *(v14 + 56);
        if (v32)
        {
          if (krb5_krbhst_set_hostname(a1, *v105, v32))
          {
            goto LABEL_141;
          }
        }

        v17 = *(v14 + 64);
        if (v17)
        {
          if (krb5_krbhst_set_sitename(a1, *v105, v17))
          {
            goto LABEL_141;
          }
        }

        if ((*(v14 + 156) & 1) != 0 && (krb5_krbhst_set_delgated_uuid(a1, *v105, (v14 + 72)) || krb5_krbhst_set_delgated_pid(a1, *v105, *(v14 + 88))))
        {
          goto LABEL_141;
        }

        v15 = 0;
      }

      v101 = 3;
    }

    else
    {
      if (v25 == 1)
      {
        sub_25226B748(a1, 5, "krb5_sendto trying over again (reset): %d", v98);
        sub_25227B2D8(v14);
        v16 = *v105;
        if (*v105)
        {
          krb5_krbhst_free(a1, *v105);
          *v105 = 0;
        }

        v15 = 0;
        if (v98 > 1)
        {
          v31 = 6;
        }

        else
        {
          v31 = 7;
        }

        v101 = v31;
        ++v98;
        goto LABEL_95;
      }

      if (v25 == 2)
      {
        v134 = 0;
        v135 = &v134;
        v136 = 0x2000000000;
        v137 = 0;
        *v149 = 0;
        *&v149[8] = v149;
        *&v149[16] = 0x9800000000;
        *__str = 0;
        v139 = __str;
        v140 = 0x9800000000;
        v130 = 0;
        v131 = &v130;
        v132 = 0x2000000000;
        v133 = 0;
        v126 = 0;
        v127 = &v126;
        v128 = 0x2000000000;
        v129 = 0;
        v125.tv_sec = 0;
        *&v125.tv_usec = 0;
        v154 = 0u;
        v155 = 0u;
        memset(&v149[24], 0, 32);
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v148 = 0u;
        v147 = 0u;
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        if (*v99)
        {
          v101 = 5;
          v29 = 1;
LABEL_93:
          _Block_object_dispose(&v126, 8);
          _Block_object_dispose(&v130, 8);
          _Block_object_dispose(__str, 8);
          _Block_object_dispose(v149, 8);
          _Block_object_dispose(&v134, 8);
          if (!v29)
          {
            goto LABEL_141;
          }

LABEL_94:
          v15 = 0;
          goto LABEL_95;
        }

        v37 = time(0);
        v38 = *(v14 + 136);
        v115.tv_sec = MEMORY[0x277D85DD0];
        *&v115.tv_usec = 0x40000000;
        v116 = sub_25227C388;
        v117 = &unk_2796FF998;
        v122 = v37;
        v123 = a1;
        v124 = v14;
        v118 = &v134;
        v119 = v149;
        v120 = __str;
        v121 = &v130;
        heim_array_iterate(v38, &v115);
        if (!*(v131 + 6))
        {
          v55 = v135[3];
          if (v55)
          {
            v56 = (*(v55 + 88) - v37);
            sub_25227B530(a1, v14, v55, v39, v40, v41, v42, v43);
            sub_25227C4DC(v135[3], (*&v149[8] + 24), (v139 + 24), v131 + 6, v57, v58, v59, v60);
            if (v56 >= 1)
            {
              v61 = *(v14 + 136);
              v114[0] = MEMORY[0x277D85DD0];
              v114[1] = 0x40000000;
              v114[2] = sub_25227C5E4;
              v114[3] = &unk_2796FF9B8;
              v114[4] = v56;
              v114[5] = v37;
              heim_array_iterate(v61, v114);
            }
          }
        }

        heim_array_filter(*(v14 + 136), &unk_286474340);
        if (!heim_array_get_length(*(v14 + 136)))
        {
          if (*(v14 + 152))
          {
            v62 = "no more hosts to send/recv packets to/from trying to pulling more hosts";
          }

          else
          {
            v62 = "no more hosts to send/recv packets to/from and no more hosts -> failure";
          }

          if (*(v14 + 152))
          {
            v63 = 6;
          }

          else
          {
            v63 = 3;
          }

          sub_25226B748(a1, 5, v62);
          v101 = v63;
          goto LABEL_92;
        }

        v125.tv_sec = 1;
        v125.tv_usec = 0;
        v44 = select(*(v131 + 6) + 1, (*&v149[8] + 24), (v139 + 24), 0, &v125);
        v45 = v127;
        *(v127 + 6) = v44;
        if (v44 < 0)
        {
          if (*__error() != 35 || *__error() != 4)
          {
            v29 = *__error() == 0;
            goto LABEL_93;
          }

          *(v127 + 6) = 0;
        }

        else if (v44)
        {
          *(v45 + 6) = 0;
          v46 = *(v14 + 136);
          v106.tv_sec = MEMORY[0x277D85DD0];
          *&v106.tv_usec = 0x40000000;
          v107 = sub_25227C624;
          v108 = &unk_2796FFA00;
          v109 = v149;
          v110 = __str;
          v111 = &v126;
          v112 = a1;
          v113 = v14;
          heim_array_iterate(v46, &v106);
          if (*(v127 + 6))
          {
            v47 = 5;
          }

          else
          {
            v47 = 2;
          }

          v101 = v47;
          goto LABEL_92;
        }

        v101 = 3;
LABEL_92:
        v29 = 1;
        goto LABEL_93;
      }

      if (v25 != 3)
      {
        goto LABEL_152;
      }
    }

    if (*(v14 + 152))
    {
      v101 = 2;
    }

    else
    {
      gettimeofday(&v104, 0);
      v15 = krb5_krbhst_next(a1, *v105, &v100);
      gettimeofday(&v103, 0);
      sub_2522A3BC0(&v103, &v104);
      sub_2522A3B60(v14 + 208, &v103);
      v101 = 2;
      if (!v15)
      {
        sub_25226B748(a1, 5, "submissing new requests to new host");
        v33 = v100;
        v115.tv_sec = 0;
        *&v115.tv_usec = 0;
        v106.tv_sec = 0;
        *&v106.tv_usec = 0;
        v114[0] = 0;
        v34 = *(a1 + 88);
        v35 = *(v14 + 112);
        *v149 = 0;
        *&v149[8] = v100;
        *&v149[16] = v34;
        *&v149[24] = v35;
        *&v149[32] = v14 + 120;
        v36 = krb5_plugin_run_f(a1, "krb5", "send_to_kdc", 0, 0, v149, sub_25227B754);
        v93 = a4;
        if (v36 != -1765328135)
        {
          if (v36)
          {
            sub_25226B748(a1, 5, "send via plugin failed %s: %d", (v33 + 48), v36);
            goto LABEL_131;
          }

LABEL_55:
          v15 = 0;
          a4 = v93;
          goto LABEL_95;
        }

        gettimeofday(&v115, 0);
        if (*v33 == 3)
        {
          v114[0] = 0;
        }

        else
        {
          if (*v33 == 2)
          {
            v48 = *(a1 + 184);
            if (v48)
            {
              v49 = strdup(v48);
              if (!v49)
              {
                v85 = 12;
                goto LABEL_135;
              }

              v50 = v49;
              if (!strncmp(v49, "http://", 7uLL))
              {
                v51 = 7;
              }

              else
              {
                v51 = 0;
              }

              v52 = strchr(&v50[v51], 47);
              if (v52)
              {
                *v52 = 0;
              }

              v53 = strchr(&v50[v51], 58);
              if (v53)
              {
                *v53 = 0;
                memset(v149, 0, 48);
                *&v149[8] = 1;
                LODWORD(v134) = 0;
                sscanf(v53 + 1, "%d", &v134);
                v54 = bswap32(v134) >> 16;
              }

              else
              {
                memset(v149, 0, 48);
                v54 = 20480;
                *&v149[8] = 1;
              }

              snprintf(__str, 0x20uLL, "%d", __rev16(v54), v91);
              v86 = getaddrinfo(&v50[v51], __str, v149, v114);
              free(v50);
              if (v86)
              {
                v87 = __error();
                v85 = krb5_eai_to_heim_errno(v86, *v87);
LABEL_135:
                v8 = 2529639068;
                if (!v85)
                {
                  v15 = 0;
                  goto LABEL_95;
                }

                goto LABEL_131;
              }

              v92 = 0;
LABEL_102:
              gettimeofday(&v106, 0);
              sub_2522A3BC0(&v106, &v115);
              v64 = sub_2522A3B60(v14 + 192, &v106);
              ++*(v14 + 232);
              v65 = v114[0];
              if (!v114[0])
              {
                v66 = 0;
LABEL_116:
                if (*v33 == 3)
                {
                  v8 = 2529639068;
                  if (v114[0])
                  {
                    sub_2522A7E9C(v64, v16, v17, v18, v19, v20, v21, v22);
                  }

                  if (socketpair(1, 1, 0, v149) < 0)
                  {
                    goto LABEL_130;
                  }

                  rk_socket_set_nopipe(*v149, 1);
                  rk_socket_set_nopipe(*&v149[4], 1);
                  sub_252288B94(*v149, 1);
                  sub_252288B94(*&v149[4], 1);
                  v82 = sub_25227B344(a1, v14, v33, 0, *v149, v79, v80, v81);
                  if (!v82)
                  {
                    close(*v149);
                    close(*&v149[4]);
LABEL_130:
                    a4 = v93;
LABEL_131:
                    v15 = 0;
                    v101 = 3;
                    goto LABEL_95;
                  }

                  v83 = v82;
                  *(v82 + 68) = *&v149[4];
                  v84 = *(a1 + 88) / *(*(v82 + 72) + 24);
                  if (v84 <= 1)
                  {
                    v84 = 1;
                  }

                  *(v82 + 88) = v84;
                  *(v82 + 88) += time(0);
                  sub_25227B660(a1, v14, v83);
                  ++v66;
                  heim_release(v83);
                }

                else
                {
                  v8 = 2529639068;
                }

                if ((v92 & 1) == 0)
                {
                  freeaddrinfo(v114[0]);
                }

                if (!v66)
                {
                  goto LABEL_130;
                }

                goto LABEL_55;
              }

              v66 = 0;
              while (2)
              {
                v64 = socket(v65->ai_family, v65->ai_socktype, v65->ai_protocol);
                if ((v64 & 0x80000000) == 0)
                {
                  v67 = v64;
                  sub_252287100(v64);
                  rk_socket_set_nopipe(v67, 1);
                  sub_252288B94(v67, 1);
                  if (v67 >= 0x400)
                  {
                    sub_25226B748(a1, 0, "fd too large for select");
                    goto LABEL_110;
                  }

                  v71 = sub_25227B344(a1, v14, v33, v65, v67, v68, v69, v70);
                  if (v71)
                  {
                    v78 = v71;
                    if (v66)
                    {
                      v91 = v66 + 1;
                      sub_25227B628(a1, v72, v71, "Queuing host in future (in %ds), its the %lu address on the same name", v74, v75, v76, v77, *(a1 + 96) * v66);
                      v78[11] = time(0) + *(a1 + 96) * v66++;
                    }

                    else
                    {
                      sub_25227B530(a1, v14, v71, v73, v74, v75, v76, v77);
                      v66 = 1;
                    }

                    heim_release(v78);
                  }

                  else
                  {
LABEL_110:
                    v64 = close(v67);
                  }
                }

                v65 = v65->ai_next;
                if (!v65)
                {
                  goto LABEL_116;
                }

                continue;
              }
            }
          }

          if (krb5_krbhst_get_addrinfo(a1, v33, v114))
          {
            goto LABEL_130;
          }
        }

        v92 = 1;
        goto LABEL_102;
      }

      sub_25226B748(a1, 5, "out of hosts, waiting for replies");
      *(v14 + 152) |= 1u;
    }

LABEL_95:
    v25 = v101;
    if (!v101)
    {
      break;
    }
  }

  gettimeofday(&v102, 0);
  sub_2522A3BC0(&v102, v14 + 176);
  if (v15 || !*v99)
  {
    goto LABEL_142;
  }

  *a5 = *v99;
  krb5_data_zero(v99);
  v8 = 0;
LABEL_145:
  sub_25226B748(a1, 1, "krb5_sendto_context %s done: %d hosts %lu packets %lu wc: %lld.%06d nr: %lld.%06d kh: %lld.%06d tid: %08x", *(v14 + 144), v8, *(v14 + 232), *(v14 + 224), v102.tv_sec, v102.tv_usec, *(v14 + 192), *(v14 + 200), *(v14 + 208), *(v14 + 216), *(v14 + 240));
  if (v94)
  {
    sub_25227B2D8(v14);
  }

  else
  {
    heim_release(v14);
  }

  if (*v105)
  {
    krb5_krbhst_free(a1, *v105);
  }

  v89 = *MEMORY[0x277D85DE8];
  return v8;
}

CFMutableArrayRef sub_25227B2D8(uint64_t a1)
{
  krb5_data_free((a1 + 120));
  heim_release(*(a1 + 136));
  result = heim_array_create();
  *(a1 + 136) = result;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_25227B314(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    return v4(a1, a3, *a4, a4[2], a4[3], a4[4]);
  }

  else
  {
    return 2529639161;
  }
}

uint64_t sub_25227B344(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v13 = heim_uniq_alloc(0x78uLL, "sendto-host", sub_25227B780, a4, a5, a6, a7, a8);
  v14 = v13;
  if (v13)
  {
    *(v13 + 64) = v8;
    *(v13 + 68) = -1;
    *(v13 + 48) = a3;
    *(v13 + 56) = a4;
    *(v13 + 32) = a2;
    v15 = (*(a2 + 240) + 1) | *(a2 + 240) & 0xFFFF0000;
    *(a2 + 240) = v15;
    *(v13 + 112) = v15;
    *(v13 + 40) = 0;
    v16 = *a3;
    if (v16 <= 3)
    {
      *(v13 + 72) = off_2796FFA20[v16];
    }

    if (*(a2 + 156))
    {
      v17 = __error();
      sub_25226B748(a1, 5, "host_create: setting host delegate uuid", *v17);
      if (setsockopt(*(v14 + 64), 0xFFFF, 4360, (a2 + 72), 0x10u))
      {
        v18 = __error();
        sub_25226B748(a1, 5, "host_create: SO_DELEGATED_UUID failed: %d", *v18);
      }

      if (*(a2 + 88))
      {
        v19 = __error();
        sub_25226B748(a1, 5, "host_create: setting host delegate process", *v19);
        if (setsockopt(*(v14 + 64), 0xFFFF, 4359, (a2 + 88), 4u))
        {
          v20 = __error();
          sub_25226B748(a1, 5, "host_create: SO_DELEGATED failed: %d", *v20);
        }
      }
    }

    v21 = strdup((*(v14 + 48) + 48));
    if (v21)
    {
      v22 = v21;
      sub_2522653C4(v21);
      sub_25226B748(a1, 5, "host_create: setting hostname %s", v22);
      v23 = *(v14 + 64);
      ne_session_set_socket_attributes();
      free(v22);
    }

    *(v14 + 80) = *(*(v14 + 72) + 24);
    heim_array_append_value(*(a2 + 136), v14);
  }

  return v14;
}

time_t sub_25227B530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a3 + 56);
  sub_25227B628(a1, a2, a3, "connecting to host", a5, a6, a7, a8, v25);
  if (connect(*(a3 + 64), *(v11 + 32), *(v11 + 16)) < 0)
  {
    if (*__error() == 36)
    {
      sub_25227B628(a1, v12, a3, "connecting to %d (in progress)", v13, v14, v15, v16, *(a3 + 64));
      *(a3 + 40) = 1;
    }

    else
    {
      v17 = __error();
      sub_25227C1FC(a1, a3, "failed to connect: %d", v18, v19, v20, v21, v22, *v17);
    }
  }

  else
  {
    sub_25227B660(a1, a2, a3);
  }

  v23 = *(a1 + 88) / *(*(a3 + 72) + 24);
  if (v23 <= 1)
  {
    v23 = 1;
  }

  *(a3 + 88) = v23;
  result = time(0);
  *(a3 + 88) += result;
  return result;
}

void sub_25227B660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 2;
  if (*(a2 + 160))
  {
    v13[0] = 0;
    v13[1] = 0;
    krb5_data_zero(v13);
    v12 = (*(a2 + 160))(a1, **(a3 + 48), *(a2 + 168), *(a3 + 64), v13);
    if (!v12)
    {
      if (!v13[0])
      {
        sub_25227C1FC(a1, a3, "prexmit function didn't send data", v7, v8, v9, v10, v11, 0);
        return;
      }

      v12 = (**(a3 + 72))(a1, a3, v13);
      krb5_data_free(v13);
    }
  }

  else
  {
    v12 = (**(a3 + 72))(a1, a3, *(a2 + 112));
  }

  if (v12)
  {
    sub_25227B628(a1, v6, a3, "failed to prexmit/prepare", v8, v9, v10, v11, v13[0]);
  }
}

uint64_t sub_25227B754(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    return v4(a1, a3, a4[1], a4[2], a4[3], a4[4]);
  }

  else
  {
    return 2529639161;
  }
}

void sub_25227B780(uint64_t a1)
{
  v2 = *(a1 + 64);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  v3 = *(a1 + 68);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  krb5_data_free((a1 + 96));
  *(a1 + 56) = 0;
}

uint64_t sub_25227B7C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __s = 0;
  v17 = 0;
  if (a2[12])
  {
    sub_2522A7EB4(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if ((base64_encode(*(a3 + 8), *a3, &v17) & 0x80000000) != 0)
  {
    return 12;
  }

  if (*(a1 + 184))
  {
    v10 = a2[6] + 48;
    v11 = asprintf(&__s, "GET http://%s/%s HTTP/1.0\r\n\r\n");
  }

  else
  {
    v11 = asprintf(&__s, "GET /%s HTTP/1.0\r\n\r\n");
  }

  v13 = v11;
  free(v17);
  result = 12;
  if ((v13 & 0x80000000) == 0)
  {
    v14 = __s;
    if (__s)
    {
      a2[13] = __s;
      v15 = strlen(v14);
      result = 0;
      a2[12] = v15;
    }
  }

  return result;
}

uint64_t sub_25227B88C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 96);
  v4 = write(*(a2 + 64), *(a2 + 104), *(a2 + 96));
  if ((v4 & 0x8000000000000000) != 0)
  {
    return *__error();
  }

  v5 = *v3 - v4;
  if (*v3 <= v4)
  {
    krb5_data_free(v3);
    return 0;
  }

  else
  {
    *(a2 + 96) = v5;
    memmove(*(a2 + 104), (*(a2 + 104) + v4), v5 - v4);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_25227B908(int *a1, uint64_t a2, _OWORD *a3)
{
  result = sub_25227B9D0(a1, a2);
  if (!result)
  {
    v6 = *(a2 + 104);
    v7 = strstr(v6, "\r\n\r\n");
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = v7;
    v9 = (v7 + 4);
    v10 = *(a2 + 96) + v6 - v9;
    if (v10 < 4)
    {
      return 2529638973;
    }

    __len = 0;
    _krb5_get_int(v9, &__len, 4);
    if (v10 >= __len)
    {
      memmove(*(a2 + 104), v8 + 8, __len);
      *(a2 + 96) = __len;
      *a3 = *(a2 + 96);
      krb5_data_zero((a2 + 96));
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_25227B9D0(int *a1, uint64_t a2)
{
  LODWORD(v20) = 0;
  if (ioctl(*(a2 + 64), 0x4004667FuLL))
  {
    v9 = 1;
  }

  else
  {
    v9 = v20 <= 0;
  }

  if (v9)
  {
    sub_25227B628(a1, v4, a2, "failed to get nbytes from socket, no bytes there?", v5, v6, v7, v8, &v20);
    return 2314790848;
  }

  else
  {
    v11 = *(a2 + 96);
    if (a1[85] - v11 >= v20)
    {
      v10 = krb5_data_realloc(a2 + 96, v20 + v11 + 1);
      if (!v10)
      {
        v12 = read(*(a2 + 64), (*(a2 + 104) + v11), v20);
        if (v12 <= 0)
        {
          v13 = __error();
          v10 = *v13;
          sub_25227B628(a1, v14, a2, "failed to read bytes from stream: %d", v15, v16, v17, v18, *v13);
        }

        else
        {
          v10 = 0;
          *(a2 + 96) = v12 + v11;
          *(*(a2 + 104) + v12 + v11) = 0;
        }
      }
    }

    else
    {
      v10 = 2529638973;
      krb5_set_error_message(a1, -1765328323, "TCP message from KDC too large %d", v20 + v11);
    }
  }

  return v10;
}

uint64_t sub_25227BB00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a2 + 96);
  if (*(a2 + 96))
  {
    sub_2522A7ECC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (krb5_config_get_BOOL_default(a1, 0, 1, a4, a5, a6, a7, a8, "libdefaults"))
  {
    v10 = krb5_storage_emem();
    if (!v10)
    {
      return 12;
    }

    v11 = v10;
    v12 = krb5_store_data(v10, *a3, a3[1]);
    if (v12)
    {
      v13 = v12;
      krb5_storage_free(v11);
      return v13;
    }

    v17 = krb5_storage_to_data(v11, v8);
    krb5_storage_free(v11);
    return v17;
  }

  else
  {
    v15 = *a3;
    v14 = a3[1];

    return krb5_data_copy(v8, v14, v15);
  }
}

uint64_t sub_25227BBE4(const void *a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v4 = *(*(a2 + 48) + 40);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2800000000;
  v17 = 0;
  v18 = 0;
  global_queue = dispatch_get_global_queue(0, 0);
  heim_retain(a2);
  heim_retain(*(a2 + 32));
  if (*(*(a2 + 48) + 6) == *(*(a2 + 48) + 4))
  {
    asprintf(&v20, "https://%s/%s");
  }

  else
  {
    asprintf(&v20, "https://%s:%d/%s");
  }

  if (v20)
  {
    asprintf(&v19, "kkdcp : (%s)", (*(a2 + 48) + 48));
    *(v15 + 3) = *(a2 + 96);
    krb5_data_zero((a2 + 96));
    sub_25227B628(a1, v6, a2, "sending request to: %s", v7, v8, v9, v10, v20);
    heim_retain(a1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_25227BE70;
    block[3] = &unk_2796FF970;
    block[6] = a2;
    block[7] = v20;
    block[4] = &v14;
    block[5] = a1;
    block[8] = v19;
    dispatch_async(global_queue, block);
    v11 = 0;
  }

  else
  {
    v11 = 12;
  }

  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t sub_25227BD90(int *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  BOOL_default = krb5_config_get_BOOL_default(a1, 0, 1, a4, a5, a6, a7, a8, "libdefaults");
  result = sub_25227B9D0(a1, a2);
  if (!result)
  {
    if (*(a2 + 96) < 4uLL)
    {
      return 0xFFFFFFFFLL;
    }

    v14 = 0;
    if (BOOL_default)
    {
      _krb5_get_int(*(a2 + 104), &v14, 4);
      v13 = *(a2 + 96) - 4;
      if (v14 > v13)
      {
        return 0xFFFFFFFFLL;
      }

      memmove(*(a2 + 104), (*(a2 + 104) + 4), v13);
      *(a2 + 96) -= 4;
    }

    *a3 = *(a2 + 96);
    krb5_data_zero((a2 + 96));
    return 0;
  }

  return result;
}

void sub_25227BE70(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  krb5_data_zero(&v4);
  v2 = sub_252276E50(*(a1 + 40), *(*(*(a1 + 48) + 32) + 144), *(a1 + 56), (*(*(a1 + 32) + 8) + 24), &v4);
  krb5_data_free((*(*(a1 + 32) + 8) + 24));
  if (!v2)
  {
    sub_25226B748(*(a1 + 40), 5, "kkdcp: got %d bytes, feeding them back: %s", v4, *(a1 + 64));
    krb5_net_write_block(*(a1 + 40), (*(a1 + 48) + 68), v5, v4, 2);
    krb5_data_free(&v4);
  }

  free(*(a1 + 56));
  free(*(a1 + 64));
  close(*(*(a1 + 48) + 68));
  v3 = *(a1 + 48);
  *(v3 + 68) = -1;
  heim_release(*(v3 + 32));
  heim_release(*(a1 + 48));
  heim_release(*(a1 + 40));
}

uint64_t sub_25227BF58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a2 + 96);
  if (*(a2 + 96))
  {
    sub_2522A7EE4(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = krb5_storage_emem();
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  v12 = krb5_store_data(v10, *a3, a3[1]);
  if (!v12)
  {
    v12 = krb5_storage_to_data(v11, v8);
  }

  krb5_storage_free(v11);
  return v12;
}

uint64_t sub_25227BFD0(int *a1, uint64_t a2, _OWORD *a3)
{
  result = sub_25227B9D0(a1, a2);
  if (!result)
  {
    if (*(a2 + 96) >= 4uLL && (v7 = 0, _krb5_get_int(*(a2 + 104), &v7, 4), v6 = *(a2 + 96) - 4, v7 <= v6))
    {
      memmove(*(a2 + 104), (*(a2 + 104) + 4), v6);
      *(a2 + 96) -= 4;
      *a3 = *(a2 + 96);
      krb5_data_zero((a2 + 96));
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_25227C088(uint64_t a1, uint64_t a2)
{
  v2 = send(*(a2 + 64), *(a2 + 104), *(a2 + 96), 0);
  result = 0;
  if (v2 < 0)
  {
    return *__error();
  }

  return result;
}

uint64_t sub_25227C0C4(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  ioctl(*(a2 + 64), 0x4004667FuLL);
  sub_25227B628(a1, 0, a2, "failed to get nbytes from socket, no bytes there?", v4, v5, v6, v7, &v9);
  return 2314790848;
}

uint64_t sub_25227C1FC(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  sub_25227C24C(a1, a2, a3, &a9);
  result = close(*(a2 + 64));
  *(a2 + 64) = -1;
  *(a2 + 40) = 4;
  return result;
}

void sub_25227C24C(uint64_t a1, uint64_t a2, const char *a3, va_list a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (_krb5_have_debug(a1) && vasprintf(&v12, a3, a4) != -1 && v12)
  {
    v8 = **(a2 + 48);
    if (v8 > 3)
    {
      v9 = "unknown";
    }

    else
    {
      v9 = off_2796FFA40[v8];
    }

    v10 = *(a2 + 56);
    if (!v10 || getnameinfo(*(v10 + 32), *(v10 + 16), v14, 0x401u, v13, 0x20u, 10))
    {
      v14[0] = 0;
      v13[0] = 0;
    }

    sub_25226B748(a1, 5, "%s: %s %s:%s (%s) tid: %08x", v12, v9, v14, v13, (*(a2 + 48) + 48), *(a2 + 112));
    free(v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void *sub_25227C388(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a2 + 40);
  if (v9 == 4)
  {
    return result;
  }

  v11 = result;
  if (!v9)
  {
    v12 = *(a2 + 88);
    if (v12 >= result[8])
    {
      v20 = *(result[4] + 8);
      v21 = *(v20 + 24);
      if (!v21 || *(v21 + 88) > v12)
      {
        *(v20 + 24) = a2;
      }

      return result;
    }

    result = sub_25227B530(result[9], result[10], a2, a4, a5, a6, a7, a8);
  }

  if (*(a2 + 88) >= v11[8])
  {
LABEL_11:
    v17 = (*(v11[5] + 8) + 24);
    v18 = *(v11[6] + 8) + 24;
    v19 = (*(v11[7] + 8) + 24);

    return sub_25227C4DC(a2, v17, v18, v19, a5, a6, a7, a8);
  }

  v13 = *(a2 + 80);
  if (!v13)
  {
    sub_2522A7EFC(result, a2, a3, a4, a5, a6, a7, a8);
  }

  v14 = v11[9];
  v15 = v13 - 1;
  *(a2 + 80) = v15;
  if (v15)
  {
    sub_25227B628(v14, a2, a2, "retrying sending to", a5, a6, a7, a8, v22);
    v16 = *(v11[9] + 88) / *(*(a2 + 72) + 24);
    if (v16 <= 1)
    {
      v16 = 1;
    }

    *(a2 + 88) = v16;
    *(a2 + 88) += time(0);
    sub_25227B660(v11[9], v11[10], a2);
    goto LABEL_11;
  }

  return sub_25227C1FC(v14, a2, "host timed out", a4, a5, a6, a7, a8, a9);
}

uint64_t sub_25227C4DC(uint64_t result, char *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 64);
  if (v8 >= 1024)
  {
    sub_2522A7F14(result, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = result;
  v12 = *(result + 40);
  if ((v12 - 1) >= 2)
  {
    if (v12 != 3)
    {
      goto LABEL_10;
    }

    result = __darwin_check_fd_set_overflow(*(result + 64), a2, 0);
    v13 = a2;
    if (!result)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = a3;
  if (__darwin_check_fd_set_overflow(*(result + 64), a2, 0))
  {
    *&a2[(v8 >> 3) & 0x1FFFFFFFFFFFFFFCLL] |= 1 << v8;
  }

  v8 = *(v11 + 64);
  result = __darwin_check_fd_set_overflow(v8, v13, 0);
  if (result)
  {
LABEL_9:
    *&v13[(v8 >> 3) & 0x1FFFFFFFFFFFFFFCLL] |= 1 << v8;
  }

LABEL_10:
  v14 = *(v11 + 64);
  if (v14 > *a4)
  {
    *a4 = v14 + 1;
  }

  return result;
}

uint64_t sub_25227C5E4(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 40))
  {
    v2 = *(a2 + 88) - *(result + 32);
    *(a2 + 88) = v2;
    if (v2 <= *(result + 40))
    {
      v2 = *(result + 40);
    }

    *(a2 + 88) = v2;
  }

  return result;
}

void sub_25227C624(void *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 40) == 4)
  {
    sub_2522A7F2C(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = *(a2 + 64);
  if (v9 >= 1024)
  {
    sub_2522A7F14(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v12 = (*(a1[4] + 8) + 24);
  if (__darwin_check_fd_set_overflow(*(a2 + 64), v12, 0))
  {
    v13 = *(v12 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) & (1 << v9);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 64);
  v15 = (*(a1[5] + 8) + 24);
  if (__darwin_check_fd_set_overflow(v14, v15, 0))
  {
    v21 = (*&v15[(v14 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v14) & 1;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = 0;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  if (!v21)
  {
    goto LABEL_28;
  }

LABEL_11:
  v22 = a1[7];
  v23 = a1[8];
  v24 = v21 ^ 1;
  if (*(a2 + 40) != 1)
  {
    v24 = 1;
  }

  if ((v24 & 1) == 0)
  {
    sub_25227B660(a1[7], a1[8], a2);
  }

  if (!v13 || (sub_25227B628(v22, v16, a2, "reading packet", v17, v18, v19, v20, v34), v25 = (*(*(a2 + 72) + 16))(v22, a2, v23 + 120), v25 == -1))
  {
LABEL_20:
    if (v21)
    {
      if (*(a2 + 40) == 2)
      {
        ++*(v23 + 224);
        sub_25227B628(v22, v16, a2, "writing packet", v17, v18, v19, v20, v34);
        v28 = (*(*(a2 + 72) + 8))(v22, a2);
        if (v28 != -1)
        {
          if (!v28)
          {
            v27 = 0;
            *(a2 + 40) = 3;
            goto LABEL_27;
          }

          sub_25227C1FC(v22, a2, "host dead, write failed", v29, v30, v31, v32, v33, v35);
        }
      }
    }

    v27 = 0;
    goto LABEL_27;
  }

  if (v25)
  {
    sub_25227C1FC(v22, a2, "host disconnected", v26, v17, v18, v19, v20, v34);
    goto LABEL_20;
  }

  sub_25227B628(v22, v16, a2, "host completed", v17, v18, v19, v20, v34);
  v27 = 1;
LABEL_27:
  *(*(a1[6] + 8) + 24) |= v27;
LABEL_28:
  if (*(*(a1[6] + 8) + 24))
  {
    *a3 = 1;
  }
}

krb5_error_code krb5_sendauth(krb5_context a1, krb5_auth_context *a2, krb5_pointer a3, char *a4, krb5_principal a5, krb5_principal a6, krb5_flags a7, krb5_data *a8, krb5_creds *a9, krb5_ccache cache, krb5_error **a11, krb5_ap_rep_enc_part **a12, krb5_creds **a13)
{
  v55 = 0;
  *&v54.magic = 0;
  v54.data = 0;
  *&v53.magic = 0;
  v53.data = 0;
  v52 = 0u;
  memset(v51, 0, sizeof(v51));
  v49 = 0;
  principal = 0;
  *__buf = 318767104;
  if (krb5_net_write(a1, a3, __buf, 4uLL) != 4 || krb5_net_write(a1, a3, "KRB5_SENDAUTH_V1.0", 0x13uLL) != 19 || (v21 = strlen(a4), v22 = v21 + 1, *__buf = bswap32(v21 + 1), krb5_net_write(a1, a3, __buf, 4uLL) != 4) || krb5_net_write(a1, a3, a4, v22) != v22)
  {
    v24 = *__error();
    strerror(v24);
    krb5_set_error_message(a1, v24, "write: %s");
    return v24;
  }

  v23 = krb5_net_read(a1, a3, &v55, 1uLL);
  if (v23 < 0)
  {
    v24 = *__error();
    strerror(v24);
    krb5_set_error_message(a1, v24, "read: %s");
    return v24;
  }

  if (v23 != 1)
  {
    v24 = -1765328178;
    goto LABEL_13;
  }

  if (v55)
  {
    krb5_clear_error_message(a1);
    return -1765328177;
  }

  if (!a9)
  {
    v27 = cache;
    v28 = cache;
    if (cache)
    {
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v30 = krb5_cc_default(a1, &cache);
      if (v30)
      {
        return v30;
      }

      v28 = cache;
      if (a5)
      {
        goto LABEL_21;
      }
    }

    credentials = krb5_cc_get_principal(a1, v28, &principal);
    if (credentials)
    {
      goto LABEL_38;
    }

    a5 = principal;
    v28 = cache;
LABEL_21:
    v52 = 0u;
    memset(&v51[16], 0, 112);
    *v51 = a5;
    *&v51[8] = a6;
    credentials = krb5_get_credentials(a1, 0, v28, v51, &v49);
    if (!credentials)
    {
      if (!v27)
      {
        krb5_cc_close(a1, cache);
      }

      goto LABEL_17;
    }

LABEL_38:
    v24 = credentials;
    if (!v27)
    {
      krb5_cc_close(a1, cache);
    }

    return v24;
  }

  if (a9->addresses)
  {
    v49 = a9;
    goto LABEL_17;
  }

  v30 = krb5_get_credentials(a1, 0, cache, a9, &v49);
  if (v30)
  {
    return v30;
  }

LABEL_17:
  v26 = a13;
  v24 = krb5_mk_req_extended(a1, a2, a7, a8, v49, &v54);
  if (v26)
  {
    *v26 = v49;
  }

  else if (v49)
  {
    krb5_free_creds(a1, v49);
  }

  if (principal)
  {
    krb5_free_principal(a1, principal);
  }

  if (!v24)
  {
    message = krb5_write_message(a1, a3, &v54);
    if (message)
    {
      goto LABEL_33;
    }

    krb5_data_free(&v54);
    message = krb5_read_message(a1, a3, &v53);
    if (message)
    {
      goto LABEL_33;
    }

    if (*&v53.magic)
    {
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0;
      v43 = 0u;
      v24 = krb5_rd_error(a1, &v53, &v42);
      krb5_data_free(&v53);
      if (!v24)
      {
        v32 = a11;
        v24 = krb5_error_from_rd_error(a1, &v42, 0);
        if (v32 && (v33 = malloc_type_malloc(0x68uLL, 0x10B00406D2B8025uLL), (*v32 = v33) != 0))
        {
          v34 = v42;
          v35 = v44;
          v33[1] = v43;
          v33[2] = v35;
          *v33 = v34;
          v36 = v45;
          v37 = v46;
          v38 = v47;
          *(v33 + 12) = v48;
          v33[4] = v37;
          v33[5] = v38;
          v33[3] = v36;
        }

        else
        {
          krb5_free_error_contents(a1, &v42);
        }

        return v24;
      }

LABEL_13:
      krb5_clear_error_message(a1);
      return v24;
    }

    krb5_data_free(&v53);
    if ((a7 & 2) == 0)
    {
      return 0;
    }

    *&v42.magic = 0;
    v42.data = 0;
    v41 = 0;
    krb5_data_zero(&v42);
    message = krb5_read_message(a1, a3, &v42);
    if (message)
    {
LABEL_33:
      v24 = message;
      krb5_set_error_message(a1, message, "krb5_sendauth: server closed connection");
      return v24;
    }

    v39 = a12;
    if (a12)
    {
      v40 = a12;
    }

    else
    {
      v40 = &v41;
    }

    v24 = krb5_rd_rep(a1, *a2, &v42, v40);
    krb5_data_free(&v42);
    if (!v24)
    {
      if (!v39)
      {
        krb5_free_ap_rep_enc_part(a1, v41);
      }

      return 0;
    }
  }

  return v24;
}