uint64_t sub_252296A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = *(a3 + 64);
  if (v13)
  {
    v14 = *(v13 + 16);
    if (der_heim_oid_cmp())
    {
      sub_25229126C("internal error passing private key to wrong ops", v15, v16, v17, v18, v19, v20, v21, v42);
    }
  }

  v44 = 0;
  v45 = 0;
  v43 = 0;
  v22 = *(a2 + 32);
  if (a6)
  {
    v23 = *(a2 + 8);
    v24 = sub_25229632C(a6);
    if (v24)
    {
      v25 = v24;
      hx509_clear_error_string(a1);
LABEL_17:
      free_AlgorithmIdentifier(a6);
      return v25;
    }

    v26 = sub_25229444C(a1, 0, v22, a5, 0, &v44);
    if (v26)
    {
      v25 = v26;
      free_AlgorithmIdentifier(a6);
      goto LABEL_17;
    }
  }

  else
  {
    v25 = sub_25229444C(a1, 0, *(a2 + 32), a5, 0, &v44);
    if (v25)
    {
      return v25;
    }
  }

  v27 = *(a3 + 56);
  v28 = sub_2522A6B34();
  *a7 = v28;
  v29 = malloc_type_malloc(v28, 0x851205F1uLL);
  a7[1] = v29;
  if (v29)
  {
    v30 = sub_2522A6B1C(0xFFFFFFFFLL, v45, v44, v29, &v43, *(a3 + 56));
    der_free_octet_string();
    if (v30 == 1)
    {
      if (*a7 < v43)
      {
        sub_25229126C("ECDSA signature prelen longer the output len", v31, v32, v33, v34, v35, v36, v37, v42);
      }

      v25 = 0;
      *a7 = v43;
      return v25;
    }

    v25 = 569888;
    v42 = 32;
    v38 = "ECDSA sign failed: %d";
    v39 = a1;
    v40 = 569888;
  }

  else
  {
    der_free_octet_string();
    v38 = "out of memory";
    v25 = 12;
    v39 = a1;
    v40 = 12;
  }

  hx509_set_error_string(v39, 0, v40, v38, v34, v35, v36, v37, v42);
  if (a6)
  {
    goto LABEL_17;
  }

  return v25;
}

uint64_t sub_252296C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 80);
  if (v10 <= 0x80 && *a6 == v10)
  {
    v15 = *(a2 + 56);
    if (CCDigestCreate())
    {
      v17 = *a5;
      v16 = a5[1];
      CCDigestUpdate();
      CCDigestFinal();
      CCDigestDestroy();
      if (ct_memcmp(v25, *(a6 + 8), v10))
      {
        v12 = 569923;
        hx509_set_error_string(a1, 0, 569923, "Bad %s sigature", v18, v19, v20, v21, *a2);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 12;
    }
  }

  else
  {
    v12 = 569925;
    v24 = *a6;
    hx509_set_error_string(a1, 0, 569925, "%s sigature have wrong length (%lu)", a5, a6, a7, a8, *a2);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_252296D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, size_t *a7)
{
  *a7 = 0;
  a7[1] = 0;
  v11 = *(a2 + 56);
  if (!CCDigestCreate())
  {
    return 12;
  }

  if (!a6 || (v12 = *(a2 + 8), v13 = sub_25229632C(a6), !v13))
  {
    v15 = CCDigestOutputSize();
    *a7 = v15;
    v16 = malloc_type_malloc(v15, 0xE4D990EEuLL);
    a7[1] = v16;
    if (v16)
    {
      v18 = *a5;
      v17 = a5[1];
      CCDigestUpdate();
      v19 = a7[1];
      CCDigestFinal();
      CCDigestDestroy();
      return 0;
    }

    CCDigestDestroy();
    *a7 = 0;
    return 12;
  }

  v14 = v13;
  CCDigestDestroy();
  return v14;
}

uint64_t sub_252296E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  if (*(a2 + 64))
  {
    sub_2522A82A8();
  }

  v4 = a3;
  if (a3)
  {
    v7 = sub_2522A1788(a3);
    *a4 = v7;
    v8 = malloc_type_malloc(v7, 0xB361EC59uLL);
    *(a4 + 8) = v8;
    if (!v8)
    {
      v4 = 12;
      goto LABEL_7;
    }

    v9 = sub_2522A1768(v8 + *a4 - 1, *a4, v4, &v19);
    if (v9)
    {
      v4 = v9;
      free(*(a4 + 8));
      *(a4 + 8) = 0;
LABEL_7:
      hx509_clear_error_string(a1);
      return v4;
    }

    if (v19 != *a4)
    {
      sub_25229126C("Internal asn1 encoder failure", v10, v11, v12, v13, v14, v15, v16, v18);
    }

    return 0;
  }

  return v4;
}

uint64_t sub_252296F2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = sub_2522A1748(a2[1], *a2, a4, 0);
  if (v5)
  {
    hx509_clear_error_string(a1);
  }

  return v5;
}

uint64_t hx509_env_add(uint64_t a1, uint64_t *a2, const char *a3, const char *a4)
{
  v8 = malloc_type_malloc(0x20uLL, 0x1032040EBA6683AuLL);
  if (!v8)
  {
    v19 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory", v9, v10, v11, v12, v21);
    return v19;
  }

  v13 = v8;
  *v8 = 0;
  v8[2] = 0;
  v14 = strdup(a3);
  v13[1] = v14;
  if (!v14)
  {
LABEL_9:
    free(v13);
    return 12;
  }

  v15 = v14;
  v16 = strdup(a4);
  v13[3] = v16;
  if (!v16)
  {
    free(v15);
    goto LABEL_9;
  }

  v17 = *a2;
  if (*a2)
  {
    do
    {
      v18 = v17;
      v17 = *(v17 + 16);
    }

    while (v17);
    v19 = 0;
    *(v18 + 16) = v13;
  }

  else
  {
    v19 = 0;
    *a2 = v13;
  }

  return v19;
}

uint64_t hx509_env_add_binding(uint64_t a1, uint64_t *a2, const char *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x20uLL, 0x1032040EBA6683AuLL);
  if (v8)
  {
    v13 = v8;
    *v8 = 1;
    v8[2] = 0;
    v14 = strdup(a3);
    v13[1] = v14;
    if (v14)
    {
      v13[3] = a4;
      v15 = *a2;
      if (*a2)
      {
        do
        {
          v16 = v15;
          v15 = *(v15 + 16);
        }

        while (v15);
        v17 = 0;
        *(v16 + 16) = v13;
      }

      else
      {
        v17 = 0;
        *a2 = v13;
      }
    }

    else
    {
      free(v13);
      return 12;
    }
  }

  else
  {
    v17 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory", v9, v10, v11, v12, v19);
  }

  return v17;
}

uint64_t hx509_env_lfind(int a1, uint64_t a2, char *__s1, size_t __n)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  while (1)
  {
    v7 = *(v6 + 8);
    if (!strncmp(__s1, v7, __n) && !v7[__n] && !*v6)
    {
      break;
    }

    v6 = *(v6 + 16);
    if (!v6)
    {
      return 0;
    }
  }

  return *(v6 + 24);
}

uint64_t hx509_env_find(int a1, uint64_t a2, char *__s1)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  while (strcmp(__s1, *(v4 + 8)) || *v4)
  {
    v4 = *(v4 + 16);
    if (!v4)
    {
      return 0;
    }
  }

  return *(v4 + 24);
}

uint64_t hx509_env_find_binding(int a1, uint64_t a2, char *__s1)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  while (strcmp(__s1, *(v4 + 8)) || *v4 != 1)
  {
    v4 = *(v4 + 16);
    if (!v4)
    {
      return 0;
    }
  }

  return *(v4 + 24);
}

void hx509_env_free(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_2522972B0(v2);
  }

  *a1 = 0;
}

void sub_2522972B0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1;
      v1 = v1[2];
      if (*v2 == 1)
      {
        sub_2522972B0(*(v2 + 3));
      }

      else if (!*v2)
      {
        free(*(v2 + 3));
      }

      free(*(v2 + 1));
      free(v2);
    }

    while (v1);
  }
}

void hx509_clear_error_string(uint64_t a1)
{
  if (a1)
  {
    heim_release(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

void hx509_set_error_stringv(uint64_t a1, char a2, int a3, const char *a4, va_list a5)
{
  if (a1)
  {
    v7 = heim_error_createv(a3, a4, a5);
    v8 = v7;
    if (v7)
    {
      if (a2)
      {
        heim_error_append(v7, *(a1 + 24));
      }

      heim_release(*(a1 + 24));
    }

    *(a1 + 24) = v8;
  }
}

const __CFString *hx509_get_error_string(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v11 = 0;
  if (v4 && heim_error_get_code(v4) == a2)
  {
    result = heim_error_copy_string(v4);
    if (result)
    {
      v6 = result;
      v7 = heim_string_copy_utf8(result);
      heim_release(v6);
      v8 = *MEMORY[0x277D85DE8];
      return v7;
    }
  }

  else
  {
    v9 = com_right_r(*(a1 + 32), a2, __dst, 0x100uLL);
    if (v9 || (v9 = strerror(a2)) != 0)
    {
      result = strdup(v9);
    }

    else if (asprintf(&v11, "<unknown error: %d>", a2) == -1)
    {
      result = 0;
    }

    else
    {
      result = v11;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void hx509_err(uint64_t a1, int a2, int a3, char *a4, ...)
{
  va_start(va, a4);
  v9[0] = 0;
  va_copy(&v9[1], va);
  vasprintf(v9, a4, va);
  error_string = hx509_get_error_string(a1, a3);
  v8 = "no error";
  if (error_string)
  {
    v8 = error_string;
  }

  errx(a2, "%s: %s", v9[0], v8);
}

uint64_t _hx509_map_file_os(const char *a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  result = rk_undumpdata(a1, &v5, &v6);
  v4 = v5;
  *a2 = v6;
  a2[1] = v4;
  return result;
}

uint64_t hx509_pem_write(uint64_t a1, const char *a2, uint64_t **a3, FILE *a4, uint64_t a5, unint64_t a6)
{
  v22 = 0;
  fprintf(a4, "-----%s %s-----\n", "BEGIN", a2);
  for (; a3; a3 = *a3)
  {
    v12 = a3[2];
    if (*a3)
    {
      v13 = "";
    }

    else
    {
      v13 = "\n";
    }

    fprintf(a4, "%s: %s\n%s", a3[1], a3[2], v13);
  }

  if (a6)
  {
    while (1)
    {
      v14 = a6 >= 0x36 ? 54 : a6;
      if ((base64_encode(a5, v14, &v22) & 0x80000000) != 0)
      {
        break;
      }

      a6 -= v14;
      fprintf(a4, "%s\n", v22);
      a5 += v14;
      free(v22);
      if (!a6)
      {
        goto LABEL_12;
      }
    }

    v19 = 12;
    hx509_set_error_string(a1, 0, 12, "malloc - out of memory", v15, v16, v17, v18, v21);
  }

  else
  {
LABEL_12:
    fprintf(a4, "-----%s %s-----\n", "END", a2);
    return 0;
  }

  return v19;
}

uint64_t hx509_pem_add_header(void *a1, const char *a2, const char *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x30040F310086FuLL);
  if (v6)
  {
    v7 = v6;
    v8 = strdup(a2);
    v7[1] = v8;
    if (v8)
    {
      v9 = v8;
      v10 = strdup(a3);
      v7[2] = v10;
      if (v10)
      {
        result = 0;
        *v7 = *a1;
        *a1 = v7;
        return result;
      }

      free(v9);
    }

    free(v7);
  }

  return 12;
}

void hx509_pem_free_header(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      free(v1[1]);
      free(v1[2]);
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t hx509_pem_find_header(uint64_t result, char *__s1)
{
  if (result)
  {
    v3 = result;
    while (strcmp(__s1, *(v3 + 8)))
    {
      v3 = *v3;
      if (!v3)
      {
        return 0;
      }
    }

    return *(v3 + 16);
  }

  return result;
}

size_t hx509_pem_read(uint64_t a1, FILE *a2, uint64_t (*a3)(uint64_t, char *, void **, char *, size_t, uint64_t), uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = 569965;
  v35 = 0;
  if (!fgets(__s, 1024, a2))
  {
    goto LABEL_49;
  }

  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v34 = 569965;
  do
  {
    v11 = strcspn(__s, "\n");
    v12 = v11;
    if (__s[v11] == 10)
    {
      __s[v11] = 0;
      v12 = v11 - (v11 > 0);
    }

    if (__s[v12] == 13)
    {
      __s[v12] = 0;
      v12 -= v12 > 0;
    }

    if (v7 > 1)
    {
      goto LABEL_10;
    }

    if (v7)
    {
      if (strchr(__s, 58))
      {
        if (!__s[0])
        {
          LODWORD(v7) = 3;
          continue;
        }

        v19 = strchr(__s, 58);
        if (!v19)
        {
          continue;
        }

        v20 = v19;
        *v19 = 0;
        do
        {
          while (1)
          {
            v22 = *++v20;
            v21 = v22;
            if ((v22 & 0x80000000) != 0)
            {
              break;
            }

            if ((*(MEMORY[0x277D85DE0] + 4 * v21 + 60) & 0x4000) == 0)
            {
              goto LABEL_23;
            }
          }
        }

        while (__maskrune(v21, 0x4000uLL));
LABEL_23:
        if (hx509_pem_add_header(&v35, __s, v20))
        {
          abort();
        }
      }

      else
      {
LABEL_10:
        if (*__s == 0x444E452D2D2D2D2DLL && __s[8] == 32)
        {
          v7 = a3(a1, v10, v35, v9, v8, a4);
        }

        else
        {
          v14 = sub_2522871EC(v12, 0xEDB03EE8uLL);
          v15 = base64_decode(__s, v14);
          if ((v15 & 0x80000000) == 0)
          {
            v7 = v15;
            v16 = v10;
            v17 = a3;
            v18 = v8;
            v8 += v15;
            v9 = sub_252287234(v9, v8, 0x55B09584uLL);
            memcpy(&v9[v18], v14, v7);
            free(v14);
            LODWORD(v7) = 3;
            a3 = v17;
            v10 = v16;
            continue;
          }

          free(v14);
          v7 = v34;
        }

        free(v9);
        free(v10);
        hx509_pem_free_header(v35);
        v35 = 0;
        if (v7)
        {
          goto LABEL_49;
        }

        v10 = 0;
        v9 = 0;
        v8 = 0;
      }

      v34 = 0;
      continue;
    }

    v23 = *__s == 0x4745422D2D2D2D2DLL && *&__s[3] == 0x204E494745422D2DLL;
    if (v23 && (v24 = strdup(v37), (v10 = v24) != 0))
    {
      v25 = strchr(v24, 45);
      if (v25)
      {
        *v25 = 0;
      }

      LODWORD(v7) = 1;
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  while (fgets(__s, 1024, a2));
  if (v7)
  {
    hx509_set_error_string(a1, 0, 569965, "File ends before end of PEM end tag", v26, v27, v28, v29, v32);
    v34 = 569965;
  }

  if (v9)
  {
    free(v9);
  }

  if (v10)
  {
    free(v10);
  }

  v7 = v34;
  if (v35)
  {
    hx509_pem_free_header(v35);
  }

LABEL_49:
  v30 = *MEMORY[0x277D85DE8];
  return v7;
}

void *sub_252297BF0(uint64_t a1, char **a2)
{
  result = sub_252297C5C(a1, *a2);
  if (!result)
  {
    result = malloc_type_realloc(*a1, 8 * *(a1 + 8) + 8, 0x2004093837F09uLL);
    if (result)
    {
      v5 = *(a1 + 8);
      result[v5] = a2;
      *a1 = result;
      *(a1 + 8) = v5 + 1;
    }
  }

  return result;
}

const char **sub_252297C5C(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *a1; ; ++i)
  {
    v5 = *i;
    if (!strcasecmp(a2, **i))
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t hx509_certs_init(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __s;
  *a5 = 0;
  v10 = strchr(__s, 58);
  if (v10)
  {
    v11 = v10;
    v12 = v10 - v8;
    v13 = malloc_type_malloc(v10 - v8 + 1, 0xE5CFE2C2uLL);
    v14 = v13;
    if (v13)
    {
      strlcpy(v13, v8, v12 + 1);
    }

    v16 = v11[1];
    v15 = v11 + 1;
    if (v16)
    {
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = strdup("MEMORY");
    if (!v14)
    {
LABEL_14:
      hx509_clear_error_string(a1);
      return 12;
    }
  }

  v17 = sub_252297C5C(a1, v14);
  if (!v17)
  {
    v30 = 2;
    hx509_set_error_string(a1, 0, 2, "Keyset type %s is not supported", v18, v19, v20, v21, v14);
    free(v14);
    return v30;
  }

  v22 = v17;
  free(v14);
  v28 = heim_uniq_alloc(0x30uLL, "hx509-certs", sub_252297E38, v23, v24, v25, v26, v27);
  if (!v28)
  {
    goto LABEL_14;
  }

  v29 = v28;
  *(v28 + 32) = v22;
  v30 = (v22[2])(a1, v28, v28 + 40, a3, v8, a4);
  if (v30)
  {
    heim_release(v29);
  }

  else
  {
    *a5 = v29;
  }

  return v30;
}

uint64_t hx509_certs_store(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 32);
  v10 = v9[3];
  if (v10)
  {
    v13 = *(a2 + 40);

    return v10(a1, a2, v13, a3, a4);
  }

  else
  {
    hx509_set_error_string(a1, 0, 569966, "keystore if type %s doesn't support store operation", a5, v10, a7, a8, *v9);
    return 569966;
  }
}

void hx509_certs_free(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      heim_release(v2);
      *a1 = 0;
    }
  }
}

uint64_t hx509_certs_start_seq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 32);
  v10 = v9[7];
  if (v10)
  {
    v12 = *(a2 + 40);

    return v10(a1, a2, v12, a3);
  }

  else
  {
    hx509_set_error_string(a1, 0, 569966, "Keyset type %s doesn't support iteration", v10, a6, a7, a8, *v9);
    return 569966;
  }
}

uint64_t hx509_certs_iter_f(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  started = hx509_certs_start_seq(a1, a2, &v16, a4, a5, a6, a7, a8);
  if (!started)
  {
    while (1)
    {
      v15 = 0;
      v13 = (*(*(a2 + 32) + 64))(a1, a2, *(a2 + 40), v16, &v15);
      if (v13)
      {
        started = v13;
        goto LABEL_8;
      }

      if (!v15)
      {
        break;
      }

      started = a3(a1, a4);
      hx509_cert_free(v15);
      if (started)
      {
        goto LABEL_8;
      }
    }

    started = 0;
LABEL_8:
    (*(*(a2 + 32) + 72))(a1, a2, *(a2 + 40), v16);
  }

  return started;
}

uint64_t hx509_ci_print_names(uint64_t a1, FILE *a2, uint64_t a3)
{
  v8 = 0;
  v6 = 0;
  v7 = 0;
  v4 = sub_25228DE4C(a3);
  hx509_name_from_Name(v4 + 144, &v8);
  hx509_name_to_string(v8, &v7);
  hx509_name_free(&v8);
  hx509_name_from_Name(v4 + 72, &v8);
  hx509_name_to_string(v8, &v6);
  hx509_name_free(&v8);
  fprintf(a2, "subject: %s\nissuer: %s\n", v7, v6);
  free(v7);
  free(v6);
  return 0;
}

uint64_t hx509_certs_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 32);
  v10 = v9[5];
  if (v10)
  {
    v12 = *(a2 + 40);

    return v10(a1, a2, v12, a3);
  }

  else
  {
    hx509_set_error_string(a1, 0, 2, "Keyset type %s doesn't support add operation", v10, a6, a7, a8, *v9);
    return 2;
  }
}

uint64_t hx509_certs_find(uint64_t a1, uint64_t a2, int *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 0;
  v12 = *(*(a2 + 32) + 48);
  if (v12)
  {
    started = v12(a1, a2, *(a2 + 40), a3, a4);
    if (started != 569967)
    {
      return started;
    }
  }

  v20 = 0;
  started = hx509_certs_start_seq(a1, a2, &v20, a4, a5, a6, a7, a8);
  if (started)
  {
    return started;
  }

  while (1)
  {
    v19 = 0;
    v16 = (*(*(a2 + 32) + 64))(a1, a2, *(a2 + 40), v20, &v19);
    v17 = v16 != 0;
    if (v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = v19 == 0;
    }

    if (v18)
    {
      v14 = v16;
      goto LABEL_15;
    }

    if (sub_252290C74(a1, a3, v19))
    {
      break;
    }

    hx509_cert_free(v19);
  }

  v14 = 0;
  v17 = 0;
  *a4 = v19;
LABEL_15:
  (*(*(a2 + 32) + 72))(a1, a2, *(a2 + 40), v20);
  if (!v17)
  {
    if (v19)
    {
      return 0;
    }

    else
    {
      v14 = 569873;
      hx509_clear_error_string(a1);
    }
  }

  return v14;
}

uint64_t hx509_certs_filter(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  v13 = hx509_certs_init(a1, "MEMORY:filter-certs", 0, 0, a4);
  if (v13)
  {
    return v13;
  }

  v30 = 0;
  started = hx509_certs_start_seq(a1, a2, &v30, v8, v9, v10, v11, v12);
  if (started)
  {
    v13 = started;
LABEL_20:
    if (a4 && *a4)
    {
      heim_release(*a4);
      *a4 = 0;
    }

    return v13;
  }

  v29 = 0;
  v16 = (*(*(a2 + 32) + 64))(a1, a2, *(a2 + 40), v30, &v29);
  v17 = v16 != 0;
  v18 = v29;
  if (v16)
  {
    v19 = 1;
  }

  else
  {
    v19 = v29 == 0;
  }

  if (v19)
  {
    v13 = v16;
    v20 = 1;
  }

  else
  {
    v21 = 0;
    do
    {
      if (sub_252290C74(a1, a3, v18))
      {
        hx509_certs_add(a1, *a4, v29, v22, v23, v24, v25, v26);
        v21 = 1;
      }

      hx509_cert_free(v29);
      v29 = 0;
      v27 = (*(*(a2 + 32) + 64))(a1, a2, *(a2 + 40), v30, &v29);
      v17 = v27 != 0;
      v18 = v29;
      if (v27)
      {
        v28 = 1;
      }

      else
      {
        v28 = v29 == 0;
      }
    }

    while (!v28);
    v13 = v27;
    v20 = v21 == 0;
  }

  (*(*(a2 + 32) + 72))(a1, a2, *(a2 + 40), v30);
  if (v17)
  {
    goto LABEL_20;
  }

  if (!v20)
  {
    return 0;
  }

  if (a4 && *a4)
  {
    heim_release(*a4);
    *a4 = 0;
  }

  hx509_clear_error_string(a1);
  return 569873;
}

uint64_t hx509_certs_merge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    return hx509_certs_iter_f(a1, a3, j__hx509_certs_add, a2, a5, a6, a7, a8);
  }

  else
  {
    return 0;
  }
}

uint64_t hx509_certs_append(uint64_t a1, uint64_t a2, uint64_t a3, char *__s)
{
  v13 = 0;
  result = hx509_certs_init(a1, __s, 0, a3, &v13);
  if (!result)
  {
    v11 = v13;
    if (v13)
    {
      v12 = hx509_certs_iter_f(a1, v13, j__hx509_certs_add, a2, v7, v8, v9, v10);
      heim_release(v11);
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t hx509_get_one_cert(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  *a3 = 0;
  result = hx509_certs_start_seq(a1, a2, &v13, a4, a5, a6, a7, a8);
  if (!result)
  {
    v12 = v13;
    *a3 = 0;
    result = (*(*(a2 + 32) + 64))(a1, a2, *(a2 + 40), v12, a3);
    if (!result)
    {
      (*(*(a2 + 32) + 72))(a1, a2, *(a2 + 40), v13);
      return 0;
    }
  }

  return result;
}

uint64_t hx509_certs_info(uint64_t a1, uint64_t a2, uint64_t (*a3)(FILE *a1, const char *a2), FILE *a4)
{
  v6 = a3 | a4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = sub_252298648;
  }

  if (v6)
  {
    v8 = a4;
  }

  else
  {
    v8 = *MEMORY[0x277D85E08];
  }

  v9 = *(*(a2 + 32) + 80);
  if (v9)
  {
    v10 = *(a2 + 40);

    return v9(a1, a2, v10, v7, v8);
  }

  else
  {
    v7(v8, "No info function for certs");
    return 0;
  }
}

uint64_t _hx509_certs_keys_get(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a2 + 32) + 88);
  if (v3)
  {
    return v3(a1, a2, *(a2 + 40), a3);
  }

  *a3 = 0;
  return 0;
}

uint64_t sub_25229869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 32);
  v10 = v9[12];
  if (v10)
  {
    v12 = *(a2 + 40);

    return v10(a1, a2, v12, a3);
  }

  else
  {
    hx509_set_error_string(a1, 0, 22, "keystore if type %s doesn't support key add operation", v10, a6, a7, a8, *v9);
    return 22;
  }
}

void _hx509_certs_keys_free(int a1, const void **a2)
{
  if (*a2)
  {
    v3 = a2;
    do
    {
      hx509_private_key_free(v3);
      v4 = v3[1];
      ++v3;
    }

    while (v4);
  }

  free(a2);
}

uint64_t sub_252298750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0;
  inited = hx509_cert_init_data(a1, a5, a6, &v15);
  if (!inited)
  {
    inited = sub_252293B18(a1, a3, v15, v8, v9, v10, v11, v12);
    hx509_cert_free(v15);
  }

  return inited;
}

uint64_t sub_2522987C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v10 = sub_25228B844(a5, a6, v13, 0);
  if (!v10)
  {
    v12[0] = a6;
    v12[1] = a5;
    v10 = sub_252293B20(a1, a3, &v13[1] + 8, 0, &v14, v12);
    sub_25228B894(v13);
  }

  return v10;
}

uint64_t sub_252298864(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6, uint64_t a7)
{
  v57 = *MEMORY[0x277D85DE8];
  header = hx509_pem_find_header(a4, "Proc-Type");
  if (!header)
  {
    *__s = a6;
    v56 = a5;
    v26 = sub_252293B20(a1, a3, a7, 0, __s, 0);
    goto LABEL_19;
  }

  v15 = header;
  v16 = sub_252293B10(a3);
  if (!v16)
  {
    v26 = 569866;
    hx509_set_error_string(a1, 0, 569866, "Failed to get password for password protected file %s", v17, v18, v19, v20, a2);
    goto LABEL_19;
  }

  v21 = v16;
  if (!strcmp(v15, "4,ENCRYPTED"))
  {
    v27 = hx509_pem_find_header(a4, "DEK-Info");
    if (v27)
    {
      v32 = strdup(v27);
      if (v32)
      {
        v33 = v32;
        v34 = strchr(v32, 44);
        if (!v34)
        {
          v26 = 569965;
          free(v33);
          v40 = "IV missing";
          goto LABEL_18;
        }

        *v34 = 0;
        v35 = v34 + 1;
        v36 = strlen(v34 + 1);
        v37 = malloc_type_malloc(v36, 0x8E6206F2uLL);
        if (v37)
        {
          v38 = v37;
          cipherbyname = hc_EVP_get_cipherbyname(v33);
          if (cipherbyname)
          {
            v39 = rk_hex_decode(v35, v38, v36);
            free(v33);
            if (v39 < 8 || v39 < hc_EVP_CIPHER_iv_length(cipherbyname))
            {
              v26 = 569965;
              free(v38);
              v40 = "Salt have wrong length in private key file";
LABEL_18:
              hx509_set_error_string(a1, 0, 569965, v40, v28, v29, v30, v31, size);
              goto LABEL_19;
            }

            v48 = nullsub_4(v21);
            if (v48 && (v49 = v48, *v48))
            {
              v50 = 0;
              while (1)
              {
                v51 = strlen(*(v49[1] + 8 * v50));
                if (!sub_252298C40(a1, a3, a7, cipherbyname, v38, *(v49[1] + 8 * v50), v51, a5, a6))
                {
                  break;
                }

                if (++v50 >= *v49)
                {
                  goto LABEL_28;
                }
              }

              v26 = 0;
            }

            else
            {
LABEL_28:
              v26 = hx509_lock_prompt(v21);
              if (!v26)
              {
                v52 = strlen(__s);
                v26 = sub_252298C40(a1, a3, a7, cipherbyname, v38, __s, v52, a5, a6);
              }
            }

            v47 = v38;
          }

          else
          {
            free(v38);
            v26 = 569866;
            hx509_set_error_string(a1, 0, 569866, "Private key encrypted with unsupported cipher: %s", v43, v44, v45, v46, v33);
            v47 = v33;
          }

          free(v47);
          goto LABEL_19;
        }

        hx509_clear_error_string(a1);
        free(v33);
      }

      else
      {
        hx509_clear_error_string(a1);
      }

      v26 = 12;
      goto LABEL_19;
    }

    v26 = 569965;
    v40 = "Encrypted private key missing DEK-Info";
    goto LABEL_18;
  }

  v26 = 569965;
  hx509_set_error_string(a1, 0, 569965, "Private key encrypted in unknown method %s in file %s", v22, v23, v24, v25, v15);
  hx509_clear_error_string(a1);
LABEL_19:
  v41 = *MEMORY[0x277D85DE8];
  return v26;
}

void *sub_252298BE8(uint64_t a1)
{
  sub_252297BF0(a1, &off_280C4E720);
  sub_252297BF0(a1, &off_280C4E5E8);

  return sub_252297BF0(a1, &off_280C4E788);
}

uint64_t sub_252298C40(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5, uint64_t a6, uint64_t a7, int a8, size_t size)
{
  v35 = *MEMORY[0x277D85DE8];
  v16 = hc_EVP_CIPHER_key_length(a4);
  v17 = malloc_type_malloc(v16, 0x448C21F0uLL);
  if (v17)
  {
    v18 = v17;
    v19 = hc_EVP_md5(v17);
    if (sub_2522A4CEC(a4, v19, a5, a6, a7, 1, v18, 0) <= 0)
    {
      v28 = 569920;
      hx509_set_error_string(a1, 0, 569920, "Failed to do string2key for private key", v20, v21, v22, v23, v31);
    }

    else
    {
      v32 = malloc_type_malloc(size, 0xBD4C9958uLL);
      if (v32)
      {
        v31 = size;
        v34 = 0;
        memset(v33, 0, sizeof(v33));
        hc_EVP_CIPHER_CTX_init(v33);
        hc_EVP_CipherInit_ex(v33, a4, 0, v18, a5, 0);
        hc_EVP_Cipher(v33);
        hc_EVP_CIPHER_CTX_cleanup(v33);
        v28 = sub_252293B20(a1, a2, a3, 0, &v31, 0);
        bzero(v32, v31);
        free(v32);
      }

      else
      {
        v28 = 12;
        hx509_set_error_string(a1, 0, 12, "Out of memory to decrypt for private key", v24, v25, v26, v27, v31);
      }

      bzero(v18, v16);
      free(v18);
    }
  }

  else
  {
    hx509_clear_error_string(a1);
    v28 = 12;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t sub_252298E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = fopen(*(a3 + 8), "w");
  v17 = v5;
  if (v5)
  {
    v18 = 0;
    rk_cloexec_file(v5);
    LODWORD(v18) = *(a3 + 16);
    v14 = hx509_certs_iter_f(a1, *a3, sub_2522993B4, &v17, v10, v11, v12, v13);
    fclose(v17);
  }

  else
  {
    v16 = *(a3 + 8);
    v14 = 2;
    hx509_set_error_string(a1, 0, 2, "Failed to open file %s for writing", v6, v7, v8, v9, v16);
  }

  return v14;
}

uint64_t sub_252298F04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    hx509_certs_free(a2);
    free(*(a2 + 8));
    free(a2);
  }

  return 0;
}

uint64_t sub_252298F94(uint64_t a1, uint64_t **a2, unsigned int a3, const char *a4, void *a5, int a6)
{
  v8 = a3;
  v47 = 0;
  v48 = 0;
  v46 = a3;
  *a2 = 0;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = off_27F4D8860;
  }

  v12 = malloc_type_calloc(1uLL, 0x18uLL, 0x10300409B68AA8EuLL);
  if (!v12)
  {
    hx509_clear_error_string(a1);
    return 12;
  }

  v13 = v12;
  *(v12 + 4) = a6;
  v14 = strdup(a4);
  v13[1] = v14;
  if (!v14)
  {
    hx509_clear_error_string(a1);
    v16 = 12;
    goto LABEL_37;
  }

  if (v8)
  {
    v16 = hx509_certs_init(a1, "MEMORY:ks-file-create", 0, v11, v13);
    if (v16)
    {
      goto LABEL_37;
    }

    *a2 = v13;
    return v16;
  }

  v15 = sub_252293A1C(a1, v11, &v47);
  if (v15)
  {
LABEL_8:
    v16 = v15;
    goto LABEL_37;
  }

  v17 = v13[1];
  if (!v17)
  {
LABEL_30:
    v15 = sub_252293CDC(a1, v47, v13);
    if (!v15)
    {
      v15 = sub_252293F4C(a1, v47, &v48);
      if (!v15)
      {
        v34 = v48;
        v35 = *v48;
        if (*v48)
        {
          v36 = 8;
          do
          {
            sub_25229869C(a1, *v13, v35, v29, v30, v31, v32, v33);
            v34 = v48;
            v35 = *(v48 + v36);
            v36 += 8;
          }

          while (v35);
        }

        _hx509_certs_keys_free(a1, v34);
        v16 = 0;
        *a2 = v13;
        goto LABEL_40;
      }
    }

    goto LABEL_8;
  }

  v18 = &qword_280C4E870;
  while (1)
  {
    v19 = strchr(v17, 44);
    v20 = v19;
    if (v19)
    {
      *v19 = 0;
      v20 = v19 + 1;
    }

    v21 = fopen(v17, "r");
    if (!v21)
    {
      v39 = __error();
      strerror(*v39);
      v16 = 2;
      hx509_set_error_string(a1, 0, 2, "Failed to open PEM file %s: %s", v40, v41, v42, v43, v17);
      goto LABEL_37;
    }

    v22 = v21;
    rk_cloexec_file(v21);
    v16 = hx509_pem_read(a1, v22, sub_2522992A0, &v46);
    fclose(v22);
    if (v16)
    {
      break;
    }

LABEL_29:
    v17 = v20;
    if (!v20)
    {
      goto LABEL_30;
    }
  }

  if (v16 != 569965)
  {
    goto LABEL_37;
  }

  v44 = 0;
  v45 = 0;
  v23 = rk_undumpdata(v17, &v44, &v45);
  if (!v23)
  {
    v24 = v18;
    v25 = v18;
    v26 = 4;
    while (1)
    {
      v27 = *v25 ? (*v25)() : 0;
      v28 = (*(v25 - 1))(a1, v17, v47, 0, v44, v45, v27);
      if (!v28)
      {
        break;
      }

      v16 = v28;
      v25 += 3;
      if (!--v26)
      {
        j__free(v44);
        goto LABEL_36;
      }
    }

    j__free(v44);
    v18 = v24;
    goto LABEL_29;
  }

  v16 = v23;
LABEL_36:
  hx509_clear_error_string(a1);
LABEL_37:
  v37 = v13[1];
  if (v37)
  {
    free(v37);
  }

  free(v13);
LABEL_40:
  if (v47)
  {
    sub_252294050(v47);
  }

  return v16;
}

uint64_t sub_2522992A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 4;
  for (i = &off_280C4E868; strcasecmp(a2, *(i - 1)); i += 3)
  {
    if (!--v12)
    {
      v18 = 569966;
      hx509_set_error_string(a1, 0, 569966, "Found no matching PEM format for %s", v14, v15, v16, v17, a2);
      return v18;
    }
  }

  v19 = i[1];
  if (v19)
  {
    v20 = v19();
  }

  else
  {
    v20 = 0;
  }

  v18 = (*i)(a1, 0, *(a6 + 8), a3, a4, a5, v20);
  if (v18)
  {
    if ((*a6 & 2) != 0)
    {
      hx509_set_error_string(a1, 1, v18, "Failed parseing PEM format %s", v21, v22, v23, v24, a2);
    }

    else
    {
      return 0;
    }
  }

  return v18;
}

uint64_t sub_2522993B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v6 = hx509_cert_binary(a1, a3, &v11);
  if (!v6)
  {
    v8 = *(a2 + 8);
    if (v8)
    {
      if (v8 != 1)
      {
        return v6;
      }

      fwrite(v12, v11, 1uLL, *a2);
    }

    else
    {
      hx509_pem_write(a1, "CERTIFICATE", 0, *a2, v12, v11);
      free(v12);
      if (!sub_25228F244(a3))
      {
        return v6;
      }

      v9 = _hx509_cert_private_key(a3);
      if (sub_252294E7C(a1, v9))
      {
        return v6;
      }

      v10 = sub_252294D68(v9);
      hx509_pem_write(a1, v10, 0, *a2, v12, v11);
    }

    free(v12);
  }

  return v6;
}

uint64_t sub_2522994CC(int a1, const UInt8 *a2, void *a3, uint64_t a4, int a5)
{
  v9 = sub_2522A5204(a4);
  if (a5 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(v9 + 8);
  v11 = sub_2522995D0(*v9, *(v9 + 16));
  v12 = CFDataCreate(*MEMORY[0x277CBECE8], a2, a1);
  DecryptedData = SecKeyCreateDecryptedData(v11, *MEMORY[0x277CDC368], v12, 0);
  v14 = DecryptedData;
  if (DecryptedData)
  {
    Length = CFDataGetLength(DecryptedData);
    if (Length <= v10)
    {
      v16 = Length;
      BytePtr = CFDataGetBytePtr(v14);
      memcpy(a3, BytePtr, v16);
      if (!v11)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  v16 = 0xFFFFFFFFLL;
  if (v11)
  {
LABEL_5:
    CFRelease(v11);
  }

LABEL_6:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v16;
}

uint64_t sub_2522995D0(uint64_t a1, const void *a2)
{
  Duplicate = SecKeyCreateDuplicate();
  if (!a2)
  {
    goto LABEL_4;
  }

  v4 = CFGetTypeID(a2);
  if (v4 != CFBooleanGetTypeID())
  {
    v7 = *MEMORY[0x277CDC5A0];
    goto LABEL_6;
  }

  if (!CFBooleanGetValue(a2))
  {
LABEL_4:
    v5 = *MEMORY[0x277CDC5A8];
    v6 = *MEMORY[0x277CDC5B0];
LABEL_6:
    SecKeySetParameter();
  }

  return Duplicate;
}

uint64_t sub_252299688(uint64_t a1)
{
  v1 = sub_2522A6B14(a1);
  if (v1)
  {
    v2 = v1;
    CFRelease(*v1);
    v3 = v2[2];
    if (v3)
    {
      CFRelease(v3);
    }

    free(v2);
  }

  return 1;
}

uint64_t sub_2522996D0(uint64_t a1, const UInt8 *a2, unsigned int a3, void *a4, _DWORD *a5, uint64_t a6)
{
  v10 = sub_2522A6B14(a6);
  v12 = v10[1];
  v11 = v10[2];
  v13 = *v10;
  error = 0;
  v14 = *MEMORY[0x277CDC2B8];
  v15 = sub_2522995D0(v13, v11);
  v16 = CFDataCreate(*MEMORY[0x277CBECE8], a2, a3);
  v17 = SecKeyCreateSignature(v15, v14, v16, &error);
  v18 = v17;
  if (!v17 || (Length = CFDataGetLength(v17), Length > v12))
  {
    v20 = 0xFFFFFFFFLL;
    if (!v15)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v22 = Length;
  *a5 = Length;
  BytePtr = CFDataGetBytePtr(v18);
  memcpy(a4, BytePtr, v22);
  v20 = 1;
  if (v15)
  {
LABEL_4:
    CFRelease(v15);
  }

LABEL_5:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (error)
  {
    CFRelease(error);
  }

  return v20;
}

uint64_t sub_2522997F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v8 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v8)
  {
    if (a5 && *a5)
    {
      free(v8);
      v15 = a5;
      v9 = 2;
      hx509_set_error_string(a1, 0, 2, "Unknown subtype %s", v10, v11, v12, v13, v15);
    }

    else
    {
      v9 = 0;
      *a3 = v8;
    }
  }

  else
  {
    hx509_clear_error_string(a1);
    return 12;
  }

  return v9;
}

uint64_t sub_25229989C(int a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
    free(a2);
  }

  return 0;
}

uint64_t sub_2522998C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, void *a5)
{
  v5 = 569873;
  v29 = 0;
  result = 0;
  if ((*a4 & 0x1000040) == 0)
  {
    return 569967;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10 = *a4;
  if ((~*a4 & 0x40040) == 0 && !strcmp(*(a4 + 9), "O=System Identity,CN=com.apple.kerberos.kdc"))
  {
    v12 = 0;
    *a4 = v10 & 0xFFFFFFBF;
    v11 = MEMORY[0x277CDC230];
  }

  else
  {
    v11 = MEMORY[0x277CDC230];
    if ((v10 & 0x1000000) == 0)
    {
      v11 = MEMORY[0x277CDC240];
    }

    v12 = 1;
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *v11);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC568], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  if (*(a4 + 3))
  {
    v13 = CFDataCreateWithBytesNoCopy(0, *(*(a4 + 16) + 8), **(a4 + 16), *MEMORY[0x277CBED00]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5F0], v13);
    CFRelease(v13);
  }

  v14 = SecItemCopyMatching(Mutable, &result);
  CFRelease(Mutable);
  if (v14 || !result)
  {
    goto LABEL_22;
  }

  TypeID = CFArrayGetTypeID();
  v16 = CFGetTypeID(result);
  if (TypeID != v16)
  {
    sub_2522A82D4(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  Count = CFArrayGetCount(result);
  if (Count < 1)
  {
LABEL_18:
    if (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v25 = Count;
  v26 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(result, v26);
    if (!hx509_cert_init_SecFrameworkAuth(a1, ValueAtIndex, &v29, 0))
    {
      break;
    }

LABEL_17:
    if (v25 == ++v26)
    {
      goto LABEL_18;
    }
  }

  if (!sub_252290C74(a1, a4, v29))
  {
    hx509_cert_free(v29);
    goto LABEL_17;
  }

  *a5 = v29;
  if ((v12 & 1) == 0)
  {
LABEL_19:
    *a4 |= 0x40u;
  }

LABEL_20:
  CFRelease(result);
  if (!*a5)
  {
LABEL_22:
    hx509_clear_error_string(a1);
    return v5;
  }

  return 0;
}

uint64_t sub_252299B3C(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef **a4)
{
  keys[3] = *MEMORY[0x277D85DE8];
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10E00401B1F1DBBuLL);
  if (v6)
  {
    v11 = v6;
    v12 = *MEMORY[0x277CDC568];
    keys[0] = *MEMORY[0x277CDC228];
    keys[1] = v12;
    keys[2] = *MEMORY[0x277CDC428];
    v13 = *MEMORY[0x277CBED28];
    values[0] = *MEMORY[0x277CDC230];
    values[1] = v13;
    values[2] = *MEMORY[0x277CDC430];
    v14 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v15 = SecItemCopyMatching(v14, v11 + 2);
    CFRelease(v14);
    if (v15)
    {
      free(v11);
      v16 = 12;
    }

    else
    {
      v16 = 0;
      *a4 = v11;
    }
  }

  else
  {
    v16 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory", v7, v8, v9, v10, v19);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_252299C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a4;
  if (*a4)
  {
    v9 = *(a4 + 8);

    return hx509_certs_next_cert(a1, v8, v9, a5);
  }

  else
  {
    *a5 = 0;
    v11 = *(a4 + 24);
    if (v11 >= CFArrayGetCount(*(a4 + 16)))
    {
      inited = 0;
    }

    else
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a4 + 16), *(a4 + 24));
        inited = hx509_cert_init_SecFrameworkAuth(a1, ValueAtIndex, a5, 0);
        v14 = *(a4 + 24) + 1;
        *(a4 + 24) = v14;
      }

      while (inited && v14 < CFArrayGetCount(*(a4 + 16)));
    }

    v15 = *(a4 + 24);
    if (v15 == CFArrayGetCount(*(a4 + 16)))
    {
      return 0;
    }

    else
    {
      return inited;
    }
  }
}

uint64_t sub_252299D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a4)
  {
    hx509_certs_end_seq(a1, *a4, *(a4 + 8));
    hx509_certs_free(a4);
  }

  else
  {
    CFRelease(*(a4 + 16));
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  free(a4);
  return 0;
}

uint64_t hx509_cert_init_SecFrameworkAuth(uint64_t a1, CFTypeRef cf, uint64_t *a3, const void *a4)
{
  v6 = cf;
  v76 = *MEMORY[0x277D85DE8];
  v8 = CFGetTypeID(cf);
  privateKeyRef = 0;
  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  certificateRef = 0;
  v68 = 0;
  if (CFDataGetTypeID() == v8)
  {
    v9 = *MEMORY[0x277CDC568];
    keys[0] = *MEMORY[0x277CDC228];
    keys[1] = v9;
    v10 = *MEMORY[0x277CDC5F0];
    *&v75[0] = *MEMORY[0x277CDC428];
    *(&v75[0] + 1) = v10;
    v11 = *MEMORY[0x277CBED28];
    values[0] = *MEMORY[0x277CDC240];
    values[1] = v11;
    values[2] = *MEMORY[0x277CDC438];
    values[3] = v6;
    v12 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v13 = SecItemCopyMatching(v12, &result);
    CFRelease(v12);
    if (v13 || !result)
    {
      inited = 569969;
      hx509_set_error_string(a1, 0, 569969, "Failed to turn persistent reference into a certifiate: %d", v14, v15, v16, v17, v13);
      goto LABEL_23;
    }

    v8 = CFGetTypeID(result);
    v6 = result;
  }

  if (SecIdentityGetTypeID() == v8)
  {
    v18 = SecIdentityCopyCertificate(v6, &certificateRef);
    if (v18)
    {
      v23 = v18;
      if (result)
      {
        CFRelease(result);
      }

      inited = 569969;
      hx509_set_error_string(a1, 0, 569969, "Failed to convert the identity to a certificate: %d", v19, v20, v21, v22, v23);
      goto LABEL_23;
    }
  }

  else
  {
    if (SecCertificateGetTypeID() != v8)
    {
      if (result)
      {
        CFRelease(result);
      }

      inited = 569969;
      hx509_set_error_string(a1, 0, 569969, "Data from persistent ref not a identity or certificate", v25, v26, v27, v28, v67);
      goto LABEL_23;
    }

    certificateRef = v6;
    CFRetain(v6);
  }

  v29 = SecCertificateCopyData(certificateRef);
  if (v29)
  {
    v30 = v29;
    BytePtr = CFDataGetBytePtr(v29);
    Length = CFDataGetLength(v30);
    inited = hx509_cert_init_data(a1, BytePtr, Length, &v68);
    CFRelease(v30);
    if (inited)
    {
      if (result)
      {
        CFRelease(result);
      }

      CFRelease(certificateRef);
      goto LABEL_23;
    }

    if (SecIdentityGetTypeID() != v8)
    {
      goto LABEL_45;
    }

    SecIdentityCopyPrivateKey(v6, &privateKeyRef);
    if (!privateKeyRef)
    {
      goto LABEL_45;
    }

    v35 = SecCertificateCopyKey(certificateRef);
    if (v35)
    {
      v41 = v35;
      v42 = SecKeyCopyAttributes(v35);
      CFRelease(v41);
      if (v42)
      {
        Value = CFDictionaryGetValue(v42, *MEMORY[0x277CDC028]);
        if (Value)
        {
          v44 = Value;
          CFRetain(Value);
          CFRelease(v42);
          v45 = CFEqual(v44, *MEMORY[0x277CDC040]);
          CFRelease(v44);
          if (v45)
          {
            sub_25229A270(a1, v68, privateKeyRef, a4, v37, v38, v39, v40);
LABEL_44:
            CFRelease(privateKeyRef);
LABEL_45:
            sub_25228E118(v68, sub_25229A3C0, certificateRef);
            if (result)
            {
              CFRelease(result);
            }

            inited = 0;
            if (a3)
            {
              *a3 = v68;
            }

            goto LABEL_23;
          }
        }

        else
        {
          CFRelease(v42);
        }
      }
    }

    v46 = v68;
    v47 = privateKeyRef;
    memset(v75, 0, sizeof(v75));
    *keys = 0u;
    v72 = 0;
    values[0] = 0;
    if (!sub_252294948(values, 0, 0, v36, v37, v38, v39, v40))
    {
      v48 = malloc_type_calloc(1uLL, 0x18uLL, 0x10E004027590099uLL);
      if (!v48)
      {
        goto LABEL_49;
      }

      v56 = v48;
      CFRetain(v47);
      *v56 = v47;
      if (a4)
      {
        CFRetain(a4);
        v56[2] = a4;
      }

      v57 = sub_2522A4FE4();
      if (!v57)
      {
LABEL_49:
        sub_25229126C("out of memory", v49, v50, v51, v52, v53, v54, v55, v67);
      }

      v58 = v57;
      sub_2522A51A4(v57, &off_286473250);
      if (sub_2522A51F8(v58, v56) != 1)
      {
        sub_25229126C("RSA_set_app_data", v59, v60, v61, v62, v63, v64, v65, v67);
      }

      v66 = sub_25228DE4C(v46);
      if (sub_2522A22A8(*(v66 + 216), *(v66 + 208) >> 3, keys, &v72))
      {
        sub_2522A50B0(v58);
      }

      else
      {
        *(v58 + 32) = sub_2522940D4(keys);
        *(v58 + 40) = sub_2522940D4(v75 + 1);
        sub_2522A22F8(keys);
        v56[1] = sub_2522A3D4C(*(v58 + 32));
        sub_252294D74(values[0], v58);
        _hx509_cert_set_key(v46, values[0]);
        hx509_private_key_free(values);
      }
    }

    goto LABEL_44;
  }

  if (result)
  {
    CFRelease(result);
  }

  CFRelease(certificateRef);
  inited = 12;
LABEL_23:
  v33 = *MEMORY[0x277D85DE8];
  return inited;
}

void sub_25229A270(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  hx509_set_error_string(a1, 0, 12, "kc4", a5, a6, a7, a8, v36);
  v12 = sub_252294114();
  if (v12)
  {
    v38 = 0;
    if (!sub_252294948(&v38, v12, 0, v13, v14, v15, v16, v17))
    {
      v18 = malloc_type_calloc(1uLL, 0x18uLL, 0x10E004027590099uLL);
      if (!v18)
      {
        goto LABEL_13;
      }

      v26 = v18;
      CFRetain(a3);
      *v26 = a3;
      v26[1] = 72;
      if (a4)
      {
        CFRetain(a4);
        v26[2] = a4;
      }

      v27 = sub_2522A6960();
      if (!v27)
      {
LABEL_13:
        sub_25229126C("out of memory", v19, v20, v21, v22, v23, v24, v25, v37);
      }

      v28 = v27;
      sub_2522A6AB4(v27, &off_2864732C0);
      if (sub_2522A6B08(v28, v26) != 1)
      {
        sub_25229126C("ECDSA_set_app_data", v29, v30, v31, v32, v33, v34, v35, v37);
      }

      sub_25228DE4C(a2);
      sub_252294DC4(v38, v28);
      _hx509_cert_set_key(a2, v38);
      hx509_private_key_free(&v38);
    }
  }

  else
  {

    hx509_clear_error_string(a1);
  }
}

uint64_t sub_25229A3E0(int a1, const UInt8 *a2, void *a3, uint64_t a4, int a5)
{
  v9 = sub_2522A5204(a4);
  if (a5 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(v9 + 8);
  v11 = sub_2522995D0(*v9, *(v9 + 16));
  v12 = CFDataCreate(*MEMORY[0x277CBECE8], a2, a1);
  Signature = SecKeyCreateSignature(v11, *MEMORY[0x277CDC3D8], v12, 0);
  v14 = Signature;
  if (Signature)
  {
    Length = CFDataGetLength(Signature);
    if (Length <= v10)
    {
      v16 = Length;
      BytePtr = CFDataGetBytePtr(v14);
      memcpy(a3, BytePtr, v16);
      if (!v11)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  v16 = 0xFFFFFFFFLL;
  if (v11)
  {
LABEL_5:
    CFRelease(v11);
  }

LABEL_6:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v16;
}

uint64_t sub_25229A4EC(uint64_t a1)
{
  v1 = sub_2522A5204(a1);
  if (v1)
  {
    v2 = v1;
    CFRelease(*v1);
    v3 = v2[2];
    if (v3)
    {
      CFRelease(v3);
    }

    free(v2);
  }

  return 1;
}

uint64_t sub_25229A534(int a1, const UInt8 *a2, unsigned int a3, void *a4, _DWORD *a5, uint64_t a6)
{
  v11 = sub_2522A5204(a6);
  v12 = a1 - 2;
  if ((a1 - 2) > 5 || ((0x3Du >> v12) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = *(v11 + 8);
  v14 = **(&unk_279703820 + v12);
  v15 = sub_2522995D0(*v11, *(v11 + 16));
  v16 = CFDataCreate(*MEMORY[0x277CBECE8], a2, a3);
  Signature = SecKeyCreateSignature(v15, v14, v16, 0);
  v18 = Signature;
  if (Signature)
  {
    Length = CFDataGetLength(Signature);
    if (Length <= v13)
    {
      v22 = Length;
      *a5 = Length;
      BytePtr = CFDataGetBytePtr(v18);
      memcpy(a4, BytePtr, v22);
      v20 = 1;
      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v20 = 0xFFFFFFFFLL;
  if (v15)
  {
LABEL_6:
    CFRelease(v15);
  }

LABEL_7:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v20;
}

uint64_t sub_25229A674(uint64_t a1, uint64_t a2, char ***a3, uint64_t a4, const char *a5)
{
  v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x10900401DE5F086uLL);
  if (v7)
  {
    v8 = v7;
    if (!a5 || !*a5)
    {
      a5 = "anonymous";
    }

    v9 = strdup(a5);
    *v8 = v9;
    if (v9)
    {
      result = 0;
      *a3 = v8;
      return result;
    }

    free(v8);
  }

  return 12;
}

uint64_t sub_25229A700(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = 0;
    do
    {
      hx509_cert_free(*(*(a2 + 16) + 8 * v3++));
    }

    while (v3 < *(a2 + 8));
  }

  free(*(a2 + 16));
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = 0;
    do
    {
      if (!*&v4[v5])
      {
        break;
      }

      hx509_private_key_free(&v4[v5]);
      v4 = *(a2 + 24);
      v5 += 8;
    }

    while (v4);
  }

  free(v4);
  free(*a2);
  free(a2);
  return 0;
}

uint64_t sub_25229A790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = malloc_type_realloc(*(a3 + 16), 8 * *(a3 + 8) + 8, 0x2004093837F09uLL);
  if (!v6)
  {
    return 12;
  }

  *(a3 + 16) = v6;
  v7 = hx509_cert_ref(a4);
  result = 0;
  v9 = *(a3 + 8);
  *(*(a3 + 16) + 8 * v9) = v7;
  *(a3 + 8) = v9 + 1;
  return result;
}

uint64_t sub_25229A804(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  result = 0;
  *v6 = 0;
  *a4 = v6;
  return result;
}

uint64_t sub_25229A858(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  if (*a4 >= *(a3 + 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = hx509_cert_ref(*(*(a3 + 16) + 8 * *a4));
    ++*a4;
  }

  *a5 = v7;
  return 0;
}

uint64_t sub_25229A8D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a3 + 24);
  if (v7)
  {
    v8 = 0;
      ;
    }

    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  v11 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  *a4 = v11;
  v12 = *(a3 + 24);
  if (v12 && (v12 = *v12) != 0)
  {
    v13 = 0;
    while (1)
    {
      v14 = v13;
      *(*a4 + 8 * v13) = _hx509_private_key_ref(v12);
      v11 = *a4;
      if (!*(*a4 + 8 * v14))
      {
        break;
      }

      v19 = *(a3 + 24);
      if (v19)
      {
        v12 = *(v19 + 8 * v14 + 8);
        v13 = v14 + 1;
        if (v12)
        {
          continue;
        }
      }

      v12 = (v14 + 1);
      goto LABEL_13;
    }

    if (v14)
    {
      v22 = v14 + 1;
      do
      {
        hx509_private_key_free((*a4 + 8 * (v22-- - 2)));
      }

      while (v22 > 1);
    }

    v20 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory", v15, v16, v17, v18, v23);
  }

  else
  {
LABEL_13:
    v20 = 0;
    v11[v12] = 0;
  }

  return v20;
}

uint64_t sub_25229A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 24);
  if (v7)
  {
    v8 = -1;
    v9 = *(a3 + 24);
    do
    {
      v10 = *v9++;
      ++v8;
    }

    while (v10);
  }

  else
  {
    v8 = 0;
  }

  v11 = malloc_type_realloc(v7, 8 * (v8 + 2), 0x2004093837F09uLL);
  if (v11)
  {
    *(a3 + 24) = v11;
    v16 = _hx509_private_key_ref(a4);
    v17 = 0;
    *(*(a3 + 24) + 8 * v8) = v16;
    *(*(a3 + 24) + 8 * v8 + 8) = 0;
  }

  else
  {
    v17 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory", v12, v13, v14, v15, v19);
  }

  return v17;
}

uint64_t sub_25229AAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v15 = 0;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v9 = sub_25229AF90(a5);
  v10 = sub_25228B844(a3, a4, v13, 0);
  if (!v10)
  {
    if (v9)
    {
      v11 = (v9 + 4);
    }

    else
    {
      v11 = 0;
    }

    sub_252293B20(a1, a2, &v13[1] + 8, 0, &v14, v11);
    sub_25228B894(v13);
  }

  return v10;
}

uint64_t sub_25229AB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v15 = 0;
  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v8 = sub_25228B8A4(a3, a4, &v17, 0);
  if (v8)
  {
    return v8;
  }

  v10 = sub_252293B10(a2);
  v9 = sub_252295718(a1, v10, &v17, &v18 + 8, &v15, v11, v12, v13);
  sub_25228B8C4(&v17);
  if (!v9)
  {
    v9 = sub_25229AAA0(a1, a2, v16, v15, a5);
    der_free_octet_string();
  }

  return v9;
}

uint64_t sub_25229AC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v8 = sub_25228B9F4(a3, a4, &v21, 0);
  if (v8)
  {
    return v8;
  }

  if (der_heim_oid_cmp())
  {
    sub_25228BA44(&v21);
    return 0;
  }

  inited = sub_25228BA54(*(&v22 + 1), v22, &v24, 0);
  sub_25228BA44(&v21);
  if (!inited)
  {
    inited = hx509_cert_init_data(a1, v25, v24, &v23);
    der_free_octet_string();
    if (!inited)
    {
      v15 = sub_252293B18(a1, a2, v23, v10, v11, v12, v13, v14);
      if (v15)
      {
        inited = v15;
        hx509_cert_free(v23);
        return inited;
      }

      v17 = 0;
      v18 = 1;
      do
      {
        v19 = v18;
        v20 = *(&off_279703850 + v17);
        if (sub_25229AF90(a5))
        {
          sub_252290590(a1, v23);
        }

        v18 = 0;
        v17 = 1;
      }

      while ((v19 & 1) != 0);
      hx509_cert_free(v23);
      return 0;
    }
  }

  return inited;
}

uint64_t sub_25229AD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v6 = sub_25228BA54(a3, a4, &v8, 0);
  if (!v6)
  {
    v6 = sub_25229B00C(a1, a2, v9, v8);
    der_free_octet_string();
  }

  return v6;
}

uint64_t sub_25229ADEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v8 = sub_252293B10(a2);
  v9 = hx509_cms_decrypt_encrypted(a1, v8, a3, a4, v11, &v12);
  if (!v9)
  {
    if (der_heim_oid_cmp())
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_25229B00C(a1, a2, v13, v12);
    }

    der_free_octet_string();
    der_free_oid();
  }

  return v9;
}

uint64_t sub_25229AEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v8 = sub_252293B10(a2);
  v9 = sub_25228E2B0(v8);
  v10 = hx509_cms_unenvelope(a1, v9, 0, a3, a4, 0, 0, v18, &v19);
  if (v10)
  {
    v15 = v10;
    hx509_set_error_string(a1, 1, v10, "PKCS12 failed to unenvelope", v11, v12, v13, v14, v17);
  }

  else
  {
    if (der_heim_oid_cmp())
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_25229B00C(a1, a2, v20, v19);
    }

    der_free_octet_string();
    der_free_oid();
  }

  return v15;
}

unsigned int *sub_25229AF90(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      v2 = 0;
      v3 = 0;
      while (1)
      {
        v4 = *(v1 + 1);
        if (!der_heim_oid_cmp())
        {
          break;
        }

        ++v3;
        v2 += 32;
        if (v3 >= *v1)
        {
          return 0;
        }
      }

      return (*(v1 + 1) + v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25229B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  result = sub_25228B9C4(a3, a4, &v9, 0);
  if (!result)
  {
    if (v9)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        sub_25229B0AC(a1, a2, v10 + v7, *(v10 + v7 + 24), *(v10 + v7 + 16), *(v10 + v7 + 32));
        ++v8;
        v7 += 40;
      }

      while (v8 < v9);
    }

    sub_25228B9E4(&v9);
    return 0;
  }

  return result;
}

uint64_t sub_25229B0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 6;
  v12 = &off_280C4EC78;
  do
  {
    v13 = *(v12 - 1);
    result = der_heim_oid_cmp();
    if (!result)
    {
      result = (*v12)(a1, a2, a4, a5, a6);
    }

    v12 += 2;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t sub_25229B13C(uint64_t a1, uint64_t a2, uint64_t **a3, char a4, const char *a5, void *a6)
{
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v38 = 0u;
  memset(v37, 0, sizeof(v37));
  v35 = 0;
  v36 = 0;
  v34 = 0;
  *a3 = 0;
  if (a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = off_27F4D8860;
  }

  v11 = sub_252293A1C(a1, v10, &v34);
  if (v11)
  {
    return v11;
  }

  v16 = malloc_type_calloc(1uLL, 0x10uLL, 0x30040E4270A41uLL);
  if (!v16 || (v17 = strdup(a5), (v16[1] = v17) == 0))
  {
    v19 = "out of memory";
    v11 = 12;
    v20 = a1;
    v21 = 12;
LABEL_12:
    hx509_set_error_string(v20, 0, v21, v19, v12, v13, v14, v15, v31);
    goto LABEL_13;
  }

  if (a4)
  {
    v24 = hx509_certs_init(a1, "MEMORY:ks-file-create", 0, v10, v16);
    goto LABEL_22;
  }

  v18 = rk_undumpdata(a5, &v40, &v41);
  if (!v18)
  {
    v11 = sub_25228B904(v40, v41, v37, 0);
    j__free(v40);
    if (v11)
    {
      hx509_set_error_string(a1, 0, v11, "Failed to decode the PFX in %s", v25, v26, v27, v28, a5);
      goto LABEL_13;
    }

    if (der_heim_oid_cmp())
    {
      sub_25228B954(v37);
      v19 = "PKCS PFX isn't a pkcs7-data container";
LABEL_28:
      v11 = 22;
      v20 = a1;
      v21 = 22;
      goto LABEL_12;
    }

    if (!*(&v38 + 1))
    {
      sub_25228B954(v37);
      v19 = "PKCS PFX missing data";
      goto LABEL_28;
    }

    v32 = 0;
    v33 = 0;
    v11 = sub_25228BA54(*(*(&v38 + 1) + 8), **(&v38 + 1), &v32, 0);
    sub_25228B954(v37);
    if (v11)
    {
      goto LABEL_10;
    }

    v11 = sub_25228B964(v33, v32, &v35, 0);
    der_free_octet_string();
    if (v11)
    {
      goto LABEL_10;
    }

    if (v35)
    {
      v29 = 0;
      v30 = 16;
      do
      {
        sub_25229B0AC(a1, v34, v36 + v30 - 16, *(*(v36 + v30) + 8), **(v36 + v30), 0);
        ++v29;
        v30 += 24;
      }

      while (v29 < v35);
    }

    sub_25228B9B4(&v35);
    v24 = sub_252293CDC(a1, v34, v16);
LABEL_22:
    v11 = v24;
    if (!v24)
    {
      *a3 = v16;
    }

    goto LABEL_13;
  }

  v11 = v18;
LABEL_10:
  hx509_clear_error_string(a1);
LABEL_13:
  sub_252294050(v34);
  if (v16 && v11)
  {
    v22 = v16[1];
    if (v22)
    {
      free(v22);
    }

    if (*v16)
    {
      hx509_certs_free(v16);
    }

    free(v16);
  }

  return v11;
}

uint64_t sub_25229B3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v26[0] = 0;
  v26[1] = 0;
  memset(v27, 0, sizeof(v27));
  v28 = 0u;
  v29 = 0;
  v9 = hx509_certs_iter_f(a1, *a3, sub_25229B67C, v26, a5, a6, a7, a8);
  if (v9)
  {
    goto LABEL_2;
  }

  v11 = sub_25228B9A4(v26);
  v24 = v11;
  v12 = malloc_type_malloc(v11, 0x1F48403DuLL);
  v25 = v12;
  if (!v12)
  {
    v10 = 12;
    goto LABEL_8;
  }

  v13 = v12;
  v14 = sub_25228B984(v12 + v11 - 1, v11, v26, &v23);
  if (v14)
  {
    v10 = v14;
    free(v13);
LABEL_8:
    sub_25228B9B4(v26);
    return v10;
  }

  sub_25228B9B4(v26);
  v16 = der_parse_hex_heim_integer();
  if (v16)
  {
    v10 = v16;
    v17 = v13;
LABEL_17:
    free(v17);
    goto LABEL_3;
  }

  *(&v28 + 1) = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  v18 = sub_25228BA94(&v24);
  **(&v28 + 1) = v18;
  v19 = malloc_type_malloc(v18, 0xD1F4FD1DuLL);
  v20 = *(&v28 + 1);
  *(*(&v28 + 1) + 8) = v19;
  if (!v19)
  {
    v10 = 12;
    goto LABEL_16;
  }

  v21 = sub_25228BA74(v19 + *v20 - 1, *v20, &v24, &v23);
  if (v21)
  {
    v10 = v21;
    free(*(*(&v28 + 1) + 8));
    *(*(&v28 + 1) + 8) = 0;
LABEL_16:
    v17 = v25;
    goto LABEL_17;
  }

  free(v25);
  v9 = der_copy_oid();
  if (!v9)
  {
    v24 = sub_25228B944(v27);
    v22 = malloc_type_malloc(v24, 0x769A67F7uLL);
    v25 = v22;
    if (!v22)
    {
      v10 = 12;
      goto LABEL_3;
    }

    v10 = sub_25228B924(v22 + v24 - 1, v24, v27, &v23);
    if (v10)
    {
      free(v25);
      v25 = 0;
      goto LABEL_3;
    }

    rk_dumpdata(*(a3 + 8), v25, v24);
    goto LABEL_16;
  }

LABEL_2:
  v10 = v9;
LABEL_3:
  sub_25228B9B4(v26);
  sub_25228B954(v27);
  return v10;
}

uint64_t sub_25229B60C(uint64_t a1, uint64_t a2)
{
  hx509_certs_free(a2);
  free(*(a2 + 8));
  free(a2);
  return 0;
}

uint64_t sub_25229B67C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v23 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  v26 = 0;
  v6 = hx509_cert_binary(a1, a3, &v25);
  if (v6)
  {
    return v6;
  }

  v8 = sub_25228BA94(&v25);
  v24[2] = v8;
  v9 = malloc_type_malloc(v8, 0x61AFBEB8uLL);
  v24[3] = v9;
  if (!v9)
  {
    v7 = 12;
    goto LABEL_7;
  }

  v10 = v9;
  v11 = sub_25228BA74(v9 + v8 - 1, v8, &v25, &v23);
  if (v11)
  {
    v7 = v11;
    free(v10);
LABEL_7:
    free(v26);
    return v7;
  }

  free(v26);
  v12 = der_copy_oid();
  if (v12)
  {
    v7 = v12;
LABEL_10:
    sub_25228BA44(v24);
    return v7;
  }

  v25 = sub_25228BA34(v24);
  v14 = malloc_type_malloc(v25, 0x9D08F5BEuLL);
  v26 = v14;
  if (!v14)
  {
    v7 = 12;
    goto LABEL_10;
  }

  v15 = sub_25228BA14(v14 + v25 - 1, v25, v24, &v23);
  if (v15)
  {
    v7 = v15;
    free(v26);
    v26 = 0;
    goto LABEL_10;
  }

  sub_25228BA44(v24);
  v7 = sub_25229B8F4(a1, a2, &unk_279702550, v26, v25);
  if (sub_25228F244(a3))
  {
    v16 = _hx509_cert_private_key(a3);
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v7 = der_parse_hex_heim_integer();
    if (!v7)
    {
      v17 = sub_252294E14(a1, v16);
      if (v17 || (v18 = _hx509_cert_private_key(a3), v17 = sub_252294E7C(a1, v18), v17))
      {
        v7 = v17;
      }

      else
      {
        v25 = sub_25228B884(v21);
        v19 = malloc_type_malloc(v25, 0x6BBF1404uLL);
        v26 = v19;
        if (v19)
        {
          v20 = sub_25228B864(v19 + v25 - 1, v25, v21, &v23);
          if (!v20)
          {
            sub_25228B894(v21);
            return sub_25229B8F4(a1, a2, &unk_279702530, v26, v25);
          }

          v7 = v20;
          free(v26);
          v26 = 0;
        }

        else
        {
          v7 = 12;
        }
      }

      sub_25228B894(v21);
    }
  }

  return v7;
}

uint64_t sub_25229B8F4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = malloc_type_realloc(*(a2 + 1), 24 * (*a2 + 1), 0x10300406712BA52uLL);
  if (!v9)
  {
    v17 = "out of memory";
LABEL_5:
    v16 = 12;
    v18 = a1;
    v19 = 12;
    goto LABEL_6;
  }

  *(a2 + 1) = v9;
  v14 = *a2;
  v15 = der_copy_oid();
  if (!v15)
  {
    v21 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    v22 = *a2;
    *(*(a2 + 1) + 24 * *a2 + 16) = v21;
    if (v21)
    {
      v16 = 0;
      *v21 = a5;
      v21[1] = a4;
      *a2 = v22 + 1;
      return v16;
    }

    der_free_oid();
    v17 = "malloc out of memory";
    goto LABEL_5;
  }

  v16 = v15;
  v17 = "out of memory";
  v18 = a1;
  v19 = v16;
LABEL_6:
  hx509_set_error_string(v18, 0, v19, v17, v10, v11, v12, v13, v23);
  return v16;
}

uint64_t hx509_lock_init(uint64_t a1, void *a2)
{
  *a2 = 0;
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A00405C9B045DuLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v6 = hx509_certs_init(a1, "MEMORY:locks-internal", 0, 0, v4 + 2);
  if (v6)
  {
    free(v5);
  }

  else
  {
    *a2 = v5;
  }

  return v6;
}

uint64_t hx509_lock_add_password(uint64_t *a1, char *__s1)
{
  v3 = strdup(__s1);
  if (v3)
  {
    v4 = v3;
    v5 = malloc_type_realloc(a1[1], 8 * *a1 + 8, 0x10040436913F5uLL);
    if (v5)
    {
      v6 = v5;
      result = 0;
      v8 = *a1;
      v9 = *a1 + 1;
      a1[1] = v6;
      v6[v8] = v4;
      *a1 = v9;
      return result;
    }

    free(v4);
  }

  return 12;
}

void hx509_lock_reset_passwords(uint64_t a1)
{
  if (*a1)
  {
    v2 = 0;
    do
    {
      free(*(*(a1 + 8) + 8 * v2++));
    }

    while (v2 < *a1);
  }

  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void hx509_lock_reset_certs(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 16);
  v3 = *(a2 + 16);
  v4 = v3;
  if (hx509_certs_init(a1, "MEMORY:locks-internal", 0, 0, (a2 + 16)))
  {
    *v2 = v3;
  }

  else
  {
    hx509_certs_free(&v4);
  }
}

uint64_t hx509_lock_set_prompter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  return 0;
}

uint64_t hx509_lock_reset_promper(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t hx509_lock_prompt(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return 569927;
  }
}

void hx509_lock_free(const void **a1)
{
  if (a1)
  {
    hx509_certs_free(a1 + 2);
    hx509_lock_reset_passwords(a1);
    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;

    free(a1);
  }
}

uint64_t hx509_lock_command_string(uint64_t *a1, char *a2)
{
  if (!strncasecmp(a2, "PASS:", 5uLL))
  {
    hx509_lock_add_password(a1, a2 + 5);
    return 0;
  }

  else
  {
    result = strcasecmp(a2, "PROMPT");
    if (result)
    {
      return 569874;
    }

    else
    {
      a1[3] = sub_25229BD00;
      a1[4] = 0;
    }
  }

  return result;
}

uint64_t sub_25229BD00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (*(a2 + 8) == 1)
  {
    if (!hc_UI_UTIL_read_pw_string(v3, *(a2 + 16), *a2, 0))
    {
      return 0;
    }
  }

  else
  {
    v4 = MEMORY[0x277D85E08];
    fputs(*a2, *MEMORY[0x277D85E08]);
    fflush(*v4);
    if (fgets(*(a2 + 24), *(a2 + 16), *MEMORY[0x277D85E00]))
    {
      v3[strcspn(v3, "\n")] = 0;
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25229BDB0(uint64_t a1, void **a2)
{
  v45 = 0;
  v4 = strdup("");
  *a2 = v4;
  if (!v4)
  {
    return 12;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    while (1)
    {
      --v5;
      v6 = *(a1 + 32);
      v7 = 16 * v5;
      if (*(v6 + 16 * v5))
      {
        break;
      }

LABEL_38:
      if (!v5)
      {
        return 0;
      }

      sub_25229C0E8(a2, &v45, ",", 1uLL, 0);
    }

    v8 = 0;
    v9 = 0;
    v44 = v5;
    while (1)
    {
      v10 = *(v6 + 16 * v5 + 8) + 40 * v8;
      v11 = &off_279703868;
      v12 = 13;
      do
      {
        v13 = *v11;
        if (!der_heim_oid_cmp())
        {
          v21 = strdup(*(v11 - 1));
          goto LABEL_12;
        }

        v11 += 3;
        --v12;
      }

      while (v12);
      v46 = 0;
      v21 = der_print_heim_oid() ? 0 : v46;
LABEL_12:
      v22 = 0;
      v23 = *(v10 + 16);
      if (v23 <= 3)
      {
        break;
      }

      switch(v23)
      {
        case 4:
          v36 = *(v10 + 24);
          v37 = *(v10 + 32);
          v46 = 0;
          v26 = sub_25228A2F4(v37, v36, &v46);
          if (v26)
          {
            return v26;
          }

          v38 = malloc_type_malloc(++v46, 0x2D47F4DuLL);
          if (!v38)
          {
            goto LABEL_45;
          }

          v22 = v38;
          v35 = wind_ucs4utf8(v37, v36, v38, &v46);
          if (v35)
          {
LABEL_43:
            v41 = v35;
            free(v22);
            return v41;
          }

          goto LABEL_29;
        case 5:
          goto LABEL_23;
        case 6:
          v25 = *(v10 + 24);
          v24 = *(v10 + 32);
          v46 = 0;
          v26 = wind_ucs2utf8_length(v24, v25, &v46);
          if (v26)
          {
            return v26;
          }

          v27 = malloc_type_malloc(v46 + 1, 0x94A3718uLL);
          if (!v27)
          {
LABEL_45:
            sub_25229126C("allocation failure", v28, v29, v30, v31, v32, v33, v34, v43);
          }

          v22 = v27;
          v35 = wind_ucs2utf8(v24, v25, v27, &v46);
          if (v35)
          {
            goto LABEL_43;
          }

LABEL_29:
          *(v22 + v46) = 0;
          v9 = v46;
          v5 = v44;
          break;
      }

LABEL_30:
      v39 = strlen(v21);
      sub_25229C0E8(a2, &v45, v21, v39, 0);
      free(v21);
      sub_25229C0E8(a2, &v45, "=", 1uLL, 0);
      sub_25229C0E8(a2, &v45, v22, v9, 1);
      if ((*(v10 + 16) | 2) == 6)
      {
        free(v22);
      }

      ++v8;
      v6 = *(a1 + 32);
      v40 = *(v6 + v7);
      if (v8 < v40)
      {
        sub_25229C0E8(a2, &v45, "+", 1uLL, 0);
        v6 = *(a1 + 32);
        v40 = *(v6 + v7);
      }

      if (v8 >= v40)
      {
        goto LABEL_38;
      }
    }

    if (v23 <= 1)
    {
      if (v23 != 1)
      {
        if (!v23)
        {
          sub_25229126C("unknown directory type: %u", v14, v15, v16, v17, v18, v19, v20, 0);
        }

        goto LABEL_30;
      }

LABEL_25:
      v9 = *(v10 + 24);
      v22 = *(v10 + 32);
      goto LABEL_30;
    }

    if (v23 != 2)
    {
      goto LABEL_25;
    }

LABEL_23:
    v22 = *(v10 + 24);
    v9 = strlen(v22);
    goto LABEL_30;
  }

  return 0;
}

void sub_25229C0E8(void **a1, void *a2, char *a3, size_t a4, int a5)
{
  v5 = a4;
  if (a5)
  {
    v9 = malloc_type_malloc(3 * a4 + 1, 0xE9339C0AuLL);
    if (v9)
    {
      v29 = 3 * v5 + 1;
      if (v5)
      {
        v10 = 0;
        v11 = 0;
        while (1)
        {
          v12 = a3[v10];
          v13 = byte_27F4D8868[v12];
          if (v10 || (byte_27F4D8868[v12] & 4) == 0)
          {
            v15 = v10 + 1;
            if (v10 + 1 == v5 && (byte_27F4D8868[v12] & 8) != 0)
            {
              v18 = &v9[v11];
              *v18 = 92;
              v11 += 2;
              v18[1] = a3[v10];
              goto LABEL_21;
            }

            if ((byte_27F4D8868[v12] & 0x10) == 0)
            {
              if ((byte_27F4D8868[v12] & 0x20) != 0)
              {
                v16 = snprintf(&v9[v11], 3 * v5 - v11, "#%02x", a3[v10]);
              }

              else
              {
                v9[v11] = v12;
                v16 = 1;
              }

              goto LABEL_15;
            }

            v17 = &v9[v11];
            *v17 = 92;
            v17[1] = a3[v10];
          }

          else
          {
            v14 = &v9[v11];
            *v14 = 92;
            v14[1] = *a3;
            v15 = 1;
          }

          v16 = 2;
LABEL_15:
          v11 += v16;
          v10 = v15;
          if (v15 == v5)
          {
            goto LABEL_21;
          }
        }
      }

      v11 = 0;
LABEL_21:
      v9[v11] = 0;
      v5 = v11;
      if (v11 >= v29)
      {
        sub_2522A82EC();
      }
    }
  }

  else
  {
    v9 = a3;
  }

  v19 = malloc_type_realloc(*a1, v5 + *a2 + 1, 0xB144B85BuLL);
  if (!v19)
  {
    sub_25229126C("allocation failure", v20, v21, v22, v23, v24, v25, v26, v28);
  }

  v27 = v19;
  memcpy(&v19[*a2], v9, v5);
  if (v9 != a3)
  {
    free(v9);
  }

  v27[*a2 + v5] = 0;
  *a1 = v27;
  *a2 += v5;
}

uint64_t sub_25229C2C0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = 0;
  v25 = 0;
  v15 = sub_25229C394(a1, &v27, &v25, a4, a5, a6, a7, a8);
  if (!v15)
  {
    v26 = 0;
    v24 = 0;
    v16 = sub_25229C394(a2, &v26, &v24, v10, v11, v12, v13, v14);
    if (v16)
    {
      v15 = v16;
      v17 = v27;
    }

    else
    {
      if (v25 == v24)
      {
        v17 = v26;
        v18 = v27;
        if (v25)
        {
          v19 = 0;
          v20 = v25 - 1;
          do
          {
            v21 = v18[v19] - v17[v19];
            *a3 = v21;
            if (v21)
            {
              v22 = 1;
            }

            else
            {
              v22 = v20 == v19;
            }

            ++v19;
          }

          while (!v22);
        }
      }

      else
      {
        *a3 = v25 - v24;
        v17 = v26;
        v18 = v27;
      }

      free(v18);
      v15 = 0;
    }

    free(v17);
  }

  return v15;
}

uint64_t sub_25229C394(uint64_t a1, void **a2, size_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  v29 = 0;
  *a2 = 0;
  *a3 = 0;
  v12 = *a1;
  if (*a1 <= 3)
  {
    if (v12 <= 1)
    {
      if (v12 == 1)
      {
        v11 = *(a1 + 8);
        v29 = v11;
        v18 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
        if (!v18)
        {
          return 12;
        }

        v13 = v18;
        if (v11)
        {
          for (i = 0; i != v11; ++i)
          {
            *(v18 + i) = *(*(a1 + 16) + i);
          }
        }
      }

      else
      {
        v13 = 0;
        if (!v12)
        {
          sub_25229126C("unknown directory type: %u", a2, a3, a4, a5, a6, a7, a8, 0);
        }
      }
    }

    else if (v12 == 2)
    {
      v11 = strlen(*(a1 + 8));
      v29 = v11;
      v20 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
      if (!v20)
      {
        return 12;
      }

      v13 = v20;
      if (v11)
      {
        for (j = 0; j != v11; ++j)
        {
          *(v20 + j) = *(*(a1 + 8) + j);
        }
      }
    }

    else
    {
      v13 = 0;
      if (v12 == 3)
      {
        v11 = *(a1 + 8);
        v29 = v11;
        v14 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
        if (!v14)
        {
          return 12;
        }

        v13 = v14;
        if (v11)
        {
          for (k = 0; k != v11; ++k)
          {
            *(v14 + k) = *(*(a1 + 16) + k);
          }
        }
      }
    }

LABEL_41:
    *a3 = v11;
    v27 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
    *a2 = v27;
    if (v27)
    {
      memcpy(v27, v13, 4 * v29);
      *a3 = v29;
      free(v13);
      return 0;
    }

    free(v13);
    if (*a2)
    {
      free(*a2);
    }

    *a2 = 0;
    *a3 = 0;
    return 12;
  }

  if (v12 == 4)
  {
    v11 = *(a1 + 8);
    v29 = v11;
    v22 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
    if (!v22)
    {
      return 12;
    }

    v13 = v22;
    if (v11)
    {
      for (m = 0; m != v11; ++m)
      {
        *(v22 + m) = *(*(a1 + 16) + 4 * m);
      }
    }

    goto LABEL_41;
  }

  if (v12 != 5)
  {
    v13 = 0;
    if (v12 == 6)
    {
      v11 = *(a1 + 8);
      v29 = v11;
      v16 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
      if (!v16)
      {
        return 12;
      }

      v13 = v16;
      if (v11)
      {
        for (n = 0; n != v11; ++n)
        {
          *(v16 + n) = *(*(a1 + 16) + 2 * n);
        }
      }
    }

    goto LABEL_41;
  }

  v24 = sub_25228A130(*(a1 + 8), &v29);
  if (!v24)
  {
    v25 = malloc_type_malloc(4 * v29, 0x100004052888210uLL);
    if (!v25)
    {
      return 12;
    }

    v13 = v25;
    v26 = wind_utf8ucs4(*(a1 + 8), v25, &v29);
    if (!v26)
    {
      v11 = v29;
      goto LABEL_41;
    }

    v24 = v26;
    free(v13);
  }

  return v24;
}

uint64_t sub_25229C654(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *(a1 + 24) - *(a2 + 24);
  *a3 = v3;
  if (v3)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    v7 = 0;
    v8 = *(a1 + 32);
    while (1)
    {
      v9 = *(v8 + 16 * v7) - *(*(a2 + 32) + 16 * v7);
      *a3 = v9;
      if (v9)
      {
        return 0;
      }

      v8 = *(a1 + 32);
      if (*(v8 + 16 * v7))
      {
        v10 = 0;
        v11 = 16;
        do
        {
          v12 = *(v8 + 16 * v7 + 8) + v11;
          v13 = der_heim_oid_cmp();
          *a3 = v13;
          if (v13)
          {
            return 0;
          }

          result = sub_25229C2C0(*(*(a1 + 32) + 16 * v7 + 8) + v11, *(*(a2 + 32) + 16 * v7 + 8) + v11, a3, v14, v15, v16, v17, v18);
          if (result)
          {
            return result;
          }

          if (*a3)
          {
            return 0;
          }

          ++v10;
          v8 = *(a1 + 32);
          v11 += 40;
        }

        while (v10 < *(v8 + 16 * v7));
      }

      if (++v7 >= *(a1 + 24))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t hx509_name_cmp(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  LODWORD(result) = sub_25229C654(a1, a2, &v3);
  if (result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25229C7B4(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4, void **a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (*(a1 + 24) <= a2)
  {
    return 34;
  }

  v8 = 569879;
  v26 = 0;
  v9 = *a4;
  v10 = *(a1 + 32);
  if (v9 >= *(v10 + 16 * a2))
  {
LABEL_8:
    if (a5)
    {
      return 569879;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = a2;
    v12 = 40 * v9;
    v13 = 16 * a2;
    while (1)
    {
      v14 = *(v10 + 16 * v11 + 8);
      if (!der_heim_oid_cmp())
      {
        break;
      }

      ++v9;
      v10 = *(a1 + 32);
      v12 += 40;
      if (v9 >= *(v10 + v13))
      {
        goto LABEL_8;
      }
    }

    *a4 = v9 + 1;
    if (a5)
    {
      v27 = 0;
      v25 = 0;
      v8 = sub_25229C394(*(*(a1 + 32) + 16 * v11 + 8) + v12 + 16, &v25, &v27, v15, v16, v17, v18, v19);
      if (!v8)
      {
        v21 = v25;
        v22 = v27;
        v23 = sub_25228A2F4(v25, v27, &v26);
        if (v23)
        {
          v8 = v23;
          free(v21);
        }

        else
        {
          v24 = malloc_type_malloc(++v26, 0xA8FC7825uLL);
          *a5 = v24;
          v8 = wind_ucs4utf8(v21, v22, v24, &v26);
          free(v21);
          if (v8)
          {
            free(*a5);
            *a5 = 0;
          }
        }
      }
    }
  }

  return v8;
}

uint64_t hx509_name_from_Name(uint64_t a1, void **a2)
{
  v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040F20C3E80uLL);
  *a2 = v3;
  if (!v3)
  {
    return 12;
  }

  v4 = hx509_name_to_Name_0();
  if (v4)
  {
    free(*a2);
    *a2 = 0;
  }

  return v4;
}

uint64_t sub_25229C9C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v9 = malloc_type_realloc(*(a2 + 32), 16 * (*(a2 + 24) + 1), 0x1020040D5A9D86FuLL);
  if (v9)
  {
    *(a2 + 32) = v9;
    if (a3)
    {
      v14 = &v9[16 * *(a2 + 24)];
    }

    else
    {
      memmove(v9 + 16, v9, 16 * *(a2 + 24));
      v14 = *(a2 + 32);
    }

    v16 = malloc_type_malloc(0x28uLL, 0x1092040826AA3E3uLL);
    *(v14 + 1) = v16;
    if (!v16)
    {
      return 12;
    }

    *v14 = 1;
    v15 = der_copy_oid();
    if (!v15)
    {
      v17 = *(v14 + 1);
      *(v17 + 16) = 5;
      *(v17 + 24) = strdup(a5);
      if (*(*(v14 + 1) + 24))
      {
        v15 = 0;
        ++*(a2 + 24);
        return v15;
      }

      return 12;
    }
  }

  else
  {
    v15 = 12;
    hx509_set_error_string(a1, 0, 12, "Out of memory", v10, v11, v12, v13, v19);
  }

  return v15;
}

uint64_t hx509_parse_name(uint64_t a1, const char *a2, void *a3)
{
  *a3 = 0;
  v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040F20C3E80uLL);
  if (v6)
  {
    v11 = v6;
    *(v6 + 4) = 1;
    v12 = strdup(a2);
    if (v12)
    {
      v13 = v12;
      v43 = a3;
      v14 = &v12[strlen(v12)];
      v44 = v13;
      v15 = v13;
      while (1)
      {
        v16 = *v15;
        if (!*v15)
        {
          free(v44);
          v37 = 0;
          *v43 = v11;
          return v37;
        }

        v17 = 0;
        v45 = 0;
        v46 = 0;
        for (i = ~v15; ; --i)
        {
          if (v16 == 92)
          {
            if (v15[v17 + 1])
            {
              memmove(&v15[v17], &v15[v17 + 1], &v14[i]);
              *--v14 = 0;
            }

            goto LABEL_12;
          }

          if (!v16)
          {
            break;
          }

          if (v16 == 44)
          {
            v19 = 1;
            goto LABEL_14;
          }

LABEL_12:
          v16 = v15[++v17];
        }

        v17 = strlen(v15);
        v19 = 0;
LABEL_14:
        v20 = strchr(v15, 61);
        if (!v20)
        {
          v42 = v15;
          v38 = "missing = in %s";
          goto LABEL_36;
        }

        v25 = v20 - v15;
        if (v20 == v15)
        {
          v42 = v15;
          v38 = "missing name before = in %s";
          goto LABEL_36;
        }

        v26 = v17 - v25;
        if (v17 < v25)
        {
          v42 = v15;
          v38 = " = after , in %s";
LABEL_36:
          v39 = a1;
          v40 = 569968;
LABEL_37:
          hx509_set_error_string(v39, 0, v40, v38, v21, v22, v23, v24, v42);
          goto LABEL_38;
        }

        v45 = 0;
        v46 = 0;
        v27 = &off_279703868;
        v28 = 13;
        while (strncasecmp(*(v27 - 1), v15, v25))
        {
          v27 += 3;
          if (!--v28)
          {
            v29 = malloc_type_malloc(v25 + 1, 0xCA85E25BuLL);
            if (!v29)
            {
              goto LABEL_31;
            }

            v30 = v29;
            memcpy(v29, v15, v25);
            v30[v25] = 0;
            v31 = der_parse_heim_oid();
            free(v30);
            if (v31)
            {
              goto LABEL_31;
            }

            goto LABEL_24;
          }
        }

        v32 = *v27;
        if (der_copy_oid())
        {
LABEL_31:
          v42 = v25;
          v38 = "unknown type: %.*s";
          goto LABEL_36;
        }

LABEL_24:
        v33 = malloc_type_malloc(v17 - v25, 0x762D3BEAuLL);
        if (!v33)
        {
          der_free_oid();
          v38 = "out of memory";
          v39 = a1;
          v40 = 12;
          goto LABEL_37;
        }

        v34 = v33;
        memcpy(v33, &v15[v25 + 1], v26 - 1);
        v34[v26 - 1] = 0;
        v35 = sub_25229C9C0(a1, v11, 0, &v45, v34);
        free(v34);
        der_free_oid();
        v36 = v19 + v17;
        if (v35)
        {
          v36 = 0;
        }

        v15 += v36;
        if (v35)
        {
LABEL_38:
          free(v44);
          sub_2522A1A20(v11);
          free(v11);
          return 569879;
        }
      }
    }

    free(v11);
  }

  v37 = 12;
  hx509_set_error_string(a1, 0, 12, "out of memory", v7, v8, v9, v10, v42);
  return v37;
}

void hx509_name_free(uint64_t *a1)
{
  sub_2522A1A20(*a1);
  v2 = *a1;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  free(*a1);
  *a1 = 0;
}

uint64_t hx509_name_copy(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040F20C3E80uLL);
  *a3 = v4;
  if (v4)
  {
    result = hx509_name_to_Name_0();
    if (!result)
    {
      return result;
    }

    free(*a3);
    *a3 = 0;
  }

  return 12;
}

uint64_t hx509_name_expand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  if (*(a2 + 16) == 1)
  {
    v10 = *(a2 + 24);
    if (v10)
    {
      v12 = 0;
      v13 = *(a2 + 32);
      while (!*(v13 + 16 * v12))
      {
LABEL_24:
        v35 = 0;
        if (++v12 >= v10)
        {
          return v35;
        }
      }

      v14 = 0;
      while (1)
      {
        v15 = *(v13 + 16 * v12 + 8) + 40 * v14;
        v17 = *(v15 + 16);
        v16 = v15 + 16;
        if (v17 != 5)
        {
          break;
        }

        v42 = v14;
        v18 = *(v16 + 8);
        v19 = strstr(v18, "${");
        v20 = v19;
        if (v19)
        {
          v21 = rk_strpoolprintf(0, "%.*s", v19 - v18, v18);
          if (v21)
          {
            while (1)
            {
              if (!v20)
              {
                goto LABEL_20;
              }

              v22 = strchr(v20, 125);
              if (!v22)
              {
                break;
              }

              v27 = v22;
              v28 = v20 + 2;
              v29 = v22 - v28;
              v30 = hx509_env_lfind(a1, a3, v28, v22 - v28);
              if (!v30)
              {
                v40 = "variable %.*s missing";
                v41 = v29;
                goto LABEL_34;
              }

              v31 = rk_strpoolprintf(v21, "%s", v30);
              if (v31)
              {
                v32 = v31;
                v20 = strstr(v27 + 1, "${");
                v33 = v20 ? rk_strpoolprintf(v32, "%.*s") : rk_strpoolprintf(v32, "%s");
                v21 = v33;
                if (v33)
                {
                  continue;
                }
              }

              goto LABEL_29;
            }

            v40 = "missing }";
LABEL_34:
            v35 = 22;
            hx509_set_error_string(a1, 0, 22, v40, v23, v24, v25, v26, v41);
            sub_252287D38(v21);
            return v35;
          }

LABEL_29:
          v36 = "out of memory";
          v35 = 12;
          v37 = a1;
          v38 = 12;
          goto LABEL_30;
        }

        v21 = 0;
LABEL_20:
        if (v21)
        {
          free(*(v16 + 8));
          v34 = rk_strpoolcollect(v21);
          *(v16 + 8) = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        v14 = v42 + 1;
        v13 = *(a2 + 32);
        if (v42 + 1 >= *(v13 + 16 * v12))
        {
          v10 = *(a2 + 24);
          goto LABEL_24;
        }
      }

      v36 = "unsupported type";
      goto LABEL_28;
    }

    return 0;
  }

  v36 = "RDN not of supported type";
LABEL_28:
  v35 = 22;
  v37 = a1;
  v38 = 22;
LABEL_30:
  hx509_set_error_string(v37, 0, v38, v36, a5, a6, a7, a8, v41);
  return v35;
}

uint64_t hx509_unparse_der_name(uint64_t a1, uint64_t a2, void **a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  *a3 = 0;
  v4 = sub_2522A19D0(a1, a2, v6, 0);
  if (!v4)
  {
    v4 = sub_25229BDB0(v6, a3);
    sub_2522A1A20(v6);
  }

  return v4;
}

uint64_t hx509_name_binary(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v4 = sub_2522A1A10(a1);
  *a2 = v4;
  v5 = malloc_type_malloc(v4, 0x56069294uLL);
  *(a2 + 8) = v5;
  if (!v5)
  {
    return 12;
  }

  v6 = sub_2522A19F0(v5 + *a2 - 1, *a2, a1, &v17);
  if (v6)
  {
    v14 = v6;
    free(*(a2 + 8));
    *(a2 + 8) = 0;
  }

  else
  {
    if (*a2 != v17)
    {
      sub_25229126C("internal ASN.1 encoder error", v7, v8, v9, v10, v11, v12, v13, v16);
    }

    return 0;
  }

  return v14;
}

uint64_t sub_25229D234(uint64_t a1, void **a2)
{
  v6 = 0;
  result = hx509_name_from_Name(a1, &v6);
  if (!result)
  {
    v4 = v6;
    v5 = sub_25229BDB0(v6, a2);
    sub_2522A1A20(v4);
    v4[4] = 0;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    free(v4);
    return v5;
  }

  return result;
}

uint64_t hx509_general_name_unparse(uint64_t a1, char **a2)
{
  *a2 = 0;
  v4 = *a1;
  if (*a1 <= 3)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        return 22;
      }

      if (v4 != 1)
      {
        return 12;
      }

LABEL_5:
      hx509_oid_sprint();
      return 12;
    }

    v20 = *(a1 + 8);
    v23 = *(a1 + 16);
    if (v4 == 2)
    {
      v5 = rk_strpoolprintf(0, "rfc822Name: %.*s\n");
    }

    else
    {
      v5 = rk_strpoolprintf(0, "dNSName: %.*s\n");
    }

    goto LABEL_19;
  }

  if (v4 > 5)
  {
    if (v4 != 6)
    {
      if (v4 != 7)
      {
        return 12;
      }

      goto LABEL_5;
    }

    v10 = *(a1 + 16);
    v11 = rk_strpoolprintf(0, "IPAddress: ");
    if (!v11)
    {
      return 12;
    }

    v12 = *(a1 + 8);
    if (v12 == 16)
    {
      v14 = v10[11];
      v15 = v10[12];
      v16 = v10[13];
      v17 = v10[14];
      v18 = v10[15];
      v32 = v10[10];
      v30 = v10[8];
      v31 = v10[9];
      v28 = v10[6];
      v29 = v10[7];
      v27 = v10[5];
      v5 = rk_strpoolprintf(v11, "%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X", *v10, v10[1], v10[2], v10[3], v10[4]);
    }

    else if (v12 == 4)
    {
      v13 = *v10;
      v25 = v10[2];
      v26 = v10[3];
      v24 = v10[1];
      v5 = rk_strpoolprintf(v11, "%d.%d.%d.%d");
    }

    else
    {
      v21 = *(a1 + 8);
      v5 = rk_strpoolprintf(v11, "unknown IP address of length %lu");
    }

    goto LABEL_19;
  }

  if (v4 != 4)
  {
    v19 = *(a1 + 8);
    v22 = *(a1 + 16);
    v5 = rk_strpoolprintf(0, "URI: %.*s");
LABEL_19:
    v8 = v5;
    if (!v5)
    {
      return 12;
    }

LABEL_20:
    v9 = rk_strpoolcollect(v8);
    result = 0;
    *a2 = v9;
    return result;
  }

  v33 = 0;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  LODWORD(v35) = *(a1 + 8);
  v36 = *(a1 + 16);
  result = sub_25229D234(v34, &v33);
  if (result)
  {
    return result;
  }

  v7 = v33;
  v8 = rk_strpoolprintf(0, "directoryName: %s", v33);
  free(v7);
  if (v8)
  {
    goto LABEL_20;
  }

  return 12;
}

uint64_t hx509_peer_info_alloc(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  v9 = 12;
  hx509_set_error_string(a1, 0, 12, "out of memory", v5, v6, v7, v8, v11);
  return v9;
}

void hx509_peer_info_free(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      hx509_cert_free(v2);
    }

    sub_25229D5F4(a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;

    free(a1);
  }
}

void sub_25229D5F4(uint64_t a1)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*(a1 + 16))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        free_AlgorithmIdentifier(*(a1 + 8) + v4);
        ++v5;
        v4 += 24;
      }

      while (v5 < *(a1 + 16));
      v2 = *v3;
    }

    free(v2);
    *v3 = 0;
    *(v3 + 8) = 0;
  }
}

uint64_t hx509_peer_info_set_cert(void *a1, uint64_t a2)
{
  if (*a1)
  {
    hx509_cert_free();
  }

  *a1 = hx509_cert_ref(a2);
  return 0;
}

uint64_t hx509_peer_info_add_cms_alg(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_realloc(*(a2 + 8), 24 * *(a2 + 16) + 24, 0x10300406712BA52uLL);
  if (v4)
  {
    *(a2 + 8) = v4;
    v9 = *(a2 + 16);
    v10 = copy_AlgorithmIdentifier();
    if (!v10)
    {
      ++*(a2 + 16);
      return v10;
    }

    v11 = a1;
    v12 = v10;
  }

  else
  {
    v10 = 12;
    v11 = a1;
    v12 = 12;
  }

  hx509_set_error_string(v11, 0, v12, "out of memory", v5, v6, v7, v8, v14);
  return v10;
}

uint64_t hx509_peer_info_set_cms_algs(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  sub_25229D5F4(a2);
  v7 = malloc_type_calloc(a4, 0x18uLL, 0x10300406712BA52uLL);
  *(a2 + 8) = v7;
  if (v7)
  {
    *(a2 + 16) = a4;
    if (a4)
    {
      for (i = 0; ; i += 24)
      {
        v13 = *(a2 + 8);
        v14 = copy_AlgorithmIdentifier();
        if (v14)
        {
          break;
        }

        if (!--a4)
        {
          return 0;
        }
      }

      v15 = v14;
      hx509_clear_error_string(a1);
      sub_25229D5F4(a2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a2 + 16) = 0;
    v15 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory", v8, v9, v10, v11, v17);
  }

  return v15;
}

uint64_t hx509_print_stdout(FILE *a1, const char *a2, va_list a3)
{
  v3 = *MEMORY[0x277D85E08];
  if (!a1)
  {
    a1 = *MEMORY[0x277D85E08];
  }

  return vfprintf(a1, a2, a3);
}

void hx509_oid_print(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t *), uint64_t a3)
{
  der_print_heim_oid();
  sub_25229D8C0(a2, a3, "%s", v5, v6, v7, v8, v9, 0);
  free(0);
}

uint64_t hx509_bitstring_print(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_25229D8C0(a2, a3, "\tlength: %d\n\t", a4, a5, a6, a7, a8, *a1);
  if ((*a1 + 7) >= 8)
  {
    v17 = 0;
    do
    {
      result = sub_25229D8C0(a2, a3, "%02x%s%s", v12, v13, v14, v15, v16, *(a1[1] + v17++));
    }

    while (v17 < (*a1 + 7) >> 3);
  }

  return result;
}

uint64_t hx509_cert_keyusage_print(uint64_t a1, uint64_t a2, char **a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  *a3 = 0;
  v5 = sub_2522910D4(a1, a2, &v15);
  if (!v5)
  {
    v6 = sub_2522A1F78(v15);
    unparse_flags(v6, off_27F4D8E38, __s1, 0x100uLL);
    v7 = strdup(__s1);
    *a3 = v7;
    if (v7)
    {
      v5 = 0;
    }

    else
    {
      v5 = 12;
      hx509_set_error_string(a1, 0, 12, "out of memory", v8, v9, v10, v11, v14);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_25229DAFC(uint64_t a1, uint64_t *a2)
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0;
  v4 = sub_25228BB54(a2[1], *a2, &v22, &v21);
  if (v4)
  {
    v20 = v4;
    v10 = "Decoding kerberos name in SAN failed: %d";
LABEL_11:
    v18 = 1;
    sub_25229EAD4(a1, 1, v10, v5, v6, v7, v8, v9, v20);
    return v18;
  }

  if (v21 != *a2)
  {
    v10 = "Decoding kerberos name have extra bits on the end";
    goto LABEL_11;
  }

  if (v23)
  {
    v11 = 0;
    do
    {
      sub_25229EAD4(a1, 2, "%s", v5, v6, v7, v8, v9, *(*(&v23 + 1) + 8 * v11++));
      v12 = v23;
      if (v11 < v23)
      {
        sub_25229EAD4(a1, 2, "/", v5, v6, v7, v8, v9, v20);
        v12 = v23;
      }
    }

    while (v11 < v12);
  }

  sub_25229EAD4(a1, 2, "@", v5, v6, v7, v8, v9, v20);
  sub_25229EAD4(a1, 2, "%s", v13, v14, v15, v16, v17, v22);
  sub_25228BBA4(&v22);
  return 0;
}

uint64_t sub_25229DC30(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v12 = 0;
  v3 = sub_2522A24E0(a2[1], *a2, &v12, &v11);
  if (v3)
  {
    v9 = 1;
    sub_25229EAD4(a1, 1, "Decoding JID in SAN failed: %d", v4, v5, v6, v7, v8, v3);
  }

  else
  {
    sub_25229EAD4(a1, 2, "%s", v4, v5, v6, v7, v8, v12);
    sub_2522A2530(&v12);
    return 0;
  }

  return v9;
}

uint64_t sub_25229DCC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (!*(a4 + 16))
      {
        v9 = "\tCritical not set on MUST\n";
        goto LABEL_14;
      }
    }

    else if (a3 == 4 && *(a4 + 16))
    {
      v9 = "\tCritical set on MUST NOT\n";
      goto LABEL_14;
    }
  }

  else if (a3 == 1)
  {
    if (!*(a4 + 16))
    {
      v9 = "\tCritical not set on SHOULD\n";
      goto LABEL_14;
    }
  }

  else if (a3 == 2 && *(a4 + 16))
  {
    v9 = "\tCritical set on SHOULD NOT\n";
LABEL_14:
    sub_25229EAD4(a1, 1, v9, a4, a5, a6, a7, a8, v8);
  }

  return 0;
}

uint64_t sub_25229DD5C(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = 0;
  v29 = 0;
  v27 = 0;
  *a2 |= 0x20u;
  sub_25229DCC4(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = sub_2522A1FE0(*(a4 + 32), *(a4 + 24), &v28, &v27);
  if (v10)
  {
    v25 = v10;
    v16 = "Decoding SubjectKeyIdentifier failed: %d";
LABEL_12:
    v23 = 1;
    sub_25229EAD4(a1, 1, v16, v11, v12, v13, v14, v15, v25);
    return v23;
  }

  if (v27 != *(a4 + 24))
  {
    v16 = "Decoding SKI ahve extra bits on the end";
    goto LABEL_12;
  }

  v17 = v28;
  if (!v28)
  {
    sub_25229EAD4(a1, 1, "SKI is too short (0 bytes)", v11, v12, v13, v14, v15, v25);
    v17 = v28;
  }

  if (v17 >= 0x15)
  {
    sub_25229EAD4(a1, 1, "SKI is too long", v11, v12, v13, v14, v15, v25);
    v17 = v28;
  }

  v26 = 0;
  rk_hex_encode(v29, v17, &v26);
  if (v26)
  {
    sub_25229EAD4(a1, 2, "\tsubject key id: %s\n", v18, v19, v20, v21, v22, v26);
    free(v26);
  }

  sub_2522A2030(&v28);
  return 0;
}

uint64_t sub_25229DEB8(uint64_t a1, _BYTE *a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = 0;
  v27 = 0;
  v25 = 0;
  sub_25229DCC4(a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = sub_2522A2054(a4[4], a4[3], &v26, &v25);
  if (v11)
  {
    printf("\tret = %d while decoding BasicConstraints\n", v11);
  }

  else
  {
    if (v25 != a4[3])
    {
      puts("\tlength of der data isn't same as extension");
    }

    v17 = "NOT ";
    if (v26 && *v26)
    {
      v17 = "";
    }

    sub_25229EAD4(a1, 2, "\tis %sa CA\n", v12, v13, v14, v15, v16, v17);
    if (v27)
    {
      sub_25229EAD4(a1, 2, "\tpathLenConstraint: %d\n", v18, v19, v20, v21, v22, *v27);
    }

    if (v26)
    {
      if (*v26)
      {
        if (!a4[2])
        {
          sub_25229EAD4(a1, 1, "Is a CA and not BasicConstraints CRITICAL\n", v18, v19, v20, v21, v22, v24);
        }

        *a2 |= 2u;
      }

      else
      {
        sub_25229EAD4(a1, 1, "cA is FALSE, not allowed to be\n", v18, v19, v20, v21, v22, v24);
      }
    }

    sub_2522A20A4(&v26);
  }

  return 0;
}

uint64_t sub_25229DFFC(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = 0;
  v47 = 0;
  v45 = 0;
  sub_25229DCC4(a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = sub_2522A21C8(*(a4 + 32), *(a4 + 24), &v46, &v45);
  if (!v11)
  {
    sub_25229EAD4(a1, 2, "CRL Distribution Points:\n", v12, v13, v14, v15, v16, v39);
    v18 = v46;
    if (!v46)
    {
LABEL_26:
      sub_2522A2218(&v46);
      v17 = 0;
      *a2 |= 0x80u;
      return v17;
    }

    v19 = 0;
    while (1)
    {
      v20 = (v47 + 24 * v19);
      if (*v20)
      {
        break;
      }

LABEL_25:
      if (++v19 >= v18)
      {
        goto LABEL_26;
      }
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    v21 = sub_2522A2158((*v20)[1], **v20, &v42, 0);
    if (v21)
    {
      sub_25229EAD4(a1, 1, "Failed to parse CRL Distribution Point Name: %d\n", v22, v23, v24, v25, v26, v21);
LABEL_24:
      v18 = v46;
      goto LABEL_25;
    }

    if (v42)
    {
      if (v42 != 2)
      {
        if (v42 == 1)
        {
          sub_25229EAD4(a1, 2, "Fullname:\n", v22, v23, v24, v25, v26, v40);
          if (v43)
          {
            v27 = 0;
            v28 = 0;
            do
            {
              v41 = 0;
              if (hx509_general_name_unparse(v44 + v27, &v41))
              {
                v34 = 1;
              }

              else
              {
                v34 = v41 == 0;
              }

              if (!v34)
              {
                sub_25229EAD4(a1, 2, "   %s\n", v29, v30, v31, v32, v33, v41);
                free(v41);
              }

              ++v28;
              v27 += 40;
            }

            while (v28 < v43);
          }
        }

        goto LABEL_23;
      }

      v35 = a1;
      v36 = 2;
      v37 = "Unknown nameRelativeToCRLIssuer";
    }

    else
    {
      v35 = a1;
      v36 = 1;
      v37 = "Unknown DistributionPointName";
    }

    sub_25229EAD4(v35, v36, v37, v22, v23, v24, v25, v26, v40);
LABEL_23:
    sub_2522A21A8(&v42);
    goto LABEL_24;
  }

  v17 = 1;
  sub_25229EAD4(a1, 1, "Decoding CRL Distribution Points failed: %d\n", v12, v13, v14, v15, v16, v11);
  return v17;
}

uint64_t sub_25229E200(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v27, 0, sizeof(v27));
  v26 = 0;
  *a2 |= 0x40u;
  sub_25229DCC4(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = sub_2522A1F80(*(a4 + 32), *(a4 + 24), v27, &v26);
  if (v10)
  {
    v24 = v10;
    v16 = "Decoding AuthorityKeyIdentifier failed: %d";
LABEL_9:
    v22 = 1;
    sub_25229EAD4(a1, 1, v16, v11, v12, v13, v14, v15, v24);
    return v22;
  }

  if (v26 != *(a4 + 24))
  {
    v16 = "Decoding SKI ahve extra bits on the end";
    goto LABEL_9;
  }

  if (v27[0])
  {
    v25 = 0;
    rk_hex_encode(*(v27[0] + 8), *v27[0], &v25);
    if (v25)
    {
      sub_25229EAD4(a1, 2, "\tauthority key id: %s\n", v17, v18, v19, v20, v21, v25);
      free(v25);
    }
  }

  return 0;
}

uint64_t sub_25229E2E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = 0;
  v24[1] = 0;
  v23 = 0;
  sub_25229DCC4(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = sub_2522A20F8(*(a4 + 32), *(a4 + 24), v24, &v23);
  if (!v10)
  {
    if (v23 == *(a4 + 24))
    {
      if (!LODWORD(v24[0]))
      {
        v16 = "ExtKeyUsage length is 0";
        goto LABEL_3;
      }

      v18 = 0;
      v19 = 0;
      while (!der_print_heim_oid())
      {
        sub_25229EAD4(a1, 2, "\teku-%d: %s\n", v11, v12, v13, v14, v15, v19);
        free(0);
        ++v19;
        v18 += 16;
        if (v19 >= LODWORD(v24[0]))
        {
          sub_2522A2148(v24);
          return 0;
        }
      }

      v22 = v19;
      v20 = "\tEKU: failed to print oid %d";
    }

    else
    {
      v20 = "Padding data in EKU";
    }

    v17 = 1;
    sub_25229EAD4(a1, 1, v20, v11, v12, v13, v14, v15, v22);
    sub_2522A2148(v24);
    return v17;
  }

  v22 = v10;
  v16 = "Decoding ExtKeyUsage failed: %d";
LABEL_3:
  v17 = 1;
  sub_25229EAD4(a1, 1, v16, v11, v12, v13, v14, v15, v22);
  return v17;
}

uint64_t sub_25229E41C(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_25229DCC4(a1, a2, a3, a4, a5, a6, a7, a8);
  *a2 |= 4u;
  return 0;
}

uint64_t sub_25229E450(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = 0;
  v28 = 0;
  v26 = 0;
  sub_25229DCC4(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = sub_2522A2540(*(a4 + 32), *(a4 + 24), &v27, &v26);
  if (v10)
  {
    printf("\tret = %d while decoding AuthorityInfoAccessSyntax\n", v10);
  }

  else
  {
    if (v27)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v25 = 0;
        sub_25229EAD4(a1, 2, "\ttype: ", v11, v12, v13, v14, v15, v24);
        hx509_oid_print(v28 + v16, sub_25229EB9C, a1);
        hx509_general_name_unparse(v28 + v16 + 16, &v25);
        sub_25229EAD4(a1, 2, "\n\tdirname: %s\n", v18, v19, v20, v21, v22, v25);
        free(v25);
        ++v17;
        v16 += 56;
      }

      while (v17 < v27);
    }

    sub_2522A2560(&v27);
  }

  return 0;
}

uint64_t hx509_validate_ctx_init(uint64_t a1, void *a2)
{
  v3 = malloc_type_malloc(0x18uLL, 0x1080040C4643742uLL);
  *a2 = v3;
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  return result;
}

uint64_t hx509_validate_ctx_set_print(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t hx509_validate_cert(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = sub_25228DE4C(a3);
  v82 = 0;
  if (sub_25228DE54(v5) != 3)
  {
    sub_25229EAD4(a2, 2, "Not version 3 certificate\n", v6, v7, v8, v9, v10, v77);
  }

  v84 = 0;
  v85 = 0;
  v83 = 0;
  v11 = v5[2];
  if ((!v11 || *v11 <= 1u) && v5[30])
  {
    sub_25229EAD4(a2, 1, "Not version 3 certificate with extensions\n", v6, v7, v8, v9, v10, v77);
  }

  if (sub_25228DE54(v5) >= 3 && !v5[30])
  {
    sub_25229EAD4(a2, 1, "Version 3 certificate without extensions\n", v12, v13, v14, v15, v16, v77);
  }

  if (hx509_cert_get_subject(a3, &v84) || (hx509_name_to_string(v84, &v83), sub_25229EAD4(a2, 2, "subject name: %s\n", v17, v18, v19, v20, v21, v83), free(v83), hx509_cert_get_issuer(a3, &v85)))
  {
    abort();
  }

  hx509_name_to_string(v85, &v83);
  sub_25229EAD4(a2, 2, "issuer name: %s\n", v22, v23, v24, v25, v26, v83);
  free(v83);
  if (!hx509_name_cmp(v84, v85))
  {
    LOBYTE(v82) = v82 | 1;
    sub_25229EAD4(a2, 2, "\tis a self-signed certificate\n", v27, v28, v29, v30, v31, v78);
  }

  sub_25229EAD4(a2, 2, "Validity:\n", v27, v28, v29, v30, v31, v78);
  sub_25229EB24((v5 + 14), &v83);
  sub_25229EAD4(a2, 2, "\tnotBefore %s\n", v32, v33, v34, v35, v36, v83);
  free(v83);
  sub_25229EB24((v5 + 16), &v83);
  sub_25229EAD4(a2, 2, "\tnotAfter  %s\n", v37, v38, v39, v40, v41, v83);
  free(v83);
  v47 = v5[30];
  if (v47)
  {
    if (*v47 || (sub_25229EAD4(a2, 3, "The empty extensions list is not allowed by PKIX\n", v42, v43, v44, v45, v46, v79), *v5[30]))
    {
      v48 = 0;
      do
      {
        if (!qword_280C4E910)
        {
          goto LABEL_25;
        }

        v49 = &off_280C4E920;
        while (1)
        {
          v50 = *(v49 - 1);
          v51 = *(v5[30] + 8);
          if (!der_heim_oid_cmp())
          {
            break;
          }

          v52 = v49[2];
          v49 += 4;
          if (!v52)
          {
            goto LABEL_25;
          }
        }

        if (*(v49 - 2))
        {
          sub_25229EAD4(a2, 3, "checking extention: %s\n", v42, v43, v44, v45, v46, *(v49 - 2));
          (*v49)(a2, &v82, *(v49 + 2), *(v5[30] + 8) + 40 * v48);
        }

        else
        {
LABEL_25:
          if (*(*(v5[30] + 8) + 40 * v48 + 16))
          {
            v53 = 3;
          }

          else
          {
            v53 = 2;
          }

          sub_25229EAD4(a2, v53, "don't know what ", v42, v43, v44, v45, v46, v79);
          if (*(*(v5[30] + 8) + 40 * v48 + 16))
          {
            sub_25229EAD4(a2, v53, "and is CRITICAL ", v54, v55, v56, v57, v58, v80);
          }

          if ((*a2 & v53) != 0)
          {
            hx509_oid_print(*(v5[30] + 8) + 40 * v48, sub_25229EB9C, a2);
          }

          sub_25229EAD4(a2, v53, " is\n", v54, v55, v56, v57, v58, v80);
        }

        ++v48;
      }

      while (v48 < *v5[30]);
    }
  }

  else
  {
    sub_25229EAD4(a2, 2, "no extentions\n", v42, v43, v44, v45, v46, v79);
  }

  if ((v82 & 2) != 0)
  {
    if ((v82 & 0x20) != 0)
    {
      goto LABEL_42;
    }

    v59 = "CA certificate have no SubjectKeyIdentifier\n";
  }

  else
  {
    if ((v82 & 0x40) != 0)
    {
      goto LABEL_42;
    }

    v59 = "Is not CA and doesn't have AuthorityKeyIdentifier\n";
  }

  sub_25229EAD4(a2, 1, v59, v42, v43, v44, v45, v46, v79);
LABEL_42:
  v60 = v82;
  if ((v82 & 0x20) == 0)
  {
    sub_25229EAD4(a2, 1, "Doesn't have SubjectKeyIdentifier\n", v42, v43, v44, v45, v46, v79);
    v60 = v82;
  }

  if ((~v60 & 6) == 0)
  {
    sub_25229EAD4(a2, 1, "Proxy and CA at the same time!\n", v42, v43, v44, v45, v46, v79);
    LOBYTE(v60) = v82;
  }

  if ((v60 & 4) != 0)
  {
    if ((v60 & 8) != 0)
    {
      sub_25229EAD4(a2, 1, "Proxy and have SAN\n", v42, v43, v44, v45, v46, v79);
      LOBYTE(v60) = v82;
    }

    if ((v60 & 0x10) != 0)
    {
      sub_25229EAD4(a2, 1, "Proxy and have IAN\n", v42, v43, v44, v45, v46, v79);
    }
  }

  is_null_p = hx509_name_is_null_p(v84);
  v67 = v82;
  if (is_null_p && (v82 & 8) == 0)
  {
    sub_25229EAD4(a2, 1, "NULL subject DN and doesn't have a SAN\n", v62, v63, v64, v65, v66, v79);
    v67 = v82;
  }

  if ((v67 & 0xFFFFFF81) != 0)
  {
    if ((v67 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    sub_25229EAD4(a2, 1, "Not a CA nor PROXY and doesn't haveCRL Dist Point\n", v62, v63, v64, v65, v66, v79);
    if ((v82 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  if (sub_2522902E0(a1, a3, (v5 + 31), v5, v5 + 34, v64, v65, v66))
  {
    v73 = "Could NOT verify self-signed certificate self-signature!\n";
    v74 = a2;
    v75 = 1;
  }

  else
  {
    v73 = "Self-signed certificate was self-signed\n";
    v74 = a2;
    v75 = 2;
  }

  sub_25229EAD4(v74, v75, v73, v68, v69, v70, v71, v72, v79);
LABEL_62:
  hx509_name_free(&v84);
  hx509_name_free(&v85);
  return 0;
}

uint64_t sub_25229EAD4(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((*result & a2) != 0)
  {
    v9 = *(result + 8);
    if (v9)
    {
      return v9(*(result + 16), a3, &a9);
    }
  }

  return result;
}

char *sub_25229EB24(uint64_t a1, char **a2)
{
  *a2 = 0;
  v6 = sub_25228F150(a1);
  v3 = gmtime(&v6);
  result = malloc_type_malloc(0x1EuLL, 0x2744231FuLL);
  if (result)
  {
    v5 = result;
    result = strftime(result, 0x1EuLL, "%Y-%m-%d %H:%M:%S", v3);
    *a2 = v5;
  }

  return result;
}

uint64_t sub_25229EB9C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    return v1(*(result + 16));
  }

  return result;
}

uint64_t sub_25229EBB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_25229DCC4(a1, a2, a4, a5, a5, a6, a7, a8);
  v16 = *(a5 + 24);
  if (v16)
  {
    v47 = 0;
    v48 = 0;
    v46 = 0;
    v17 = sub_2522A1E48(*(a5 + 32), v16, &v47, &v46);
    if (v17)
    {
      v42 = v17;
      v18 = "\tret = %d while decoding %s GeneralNames\n";
    }

    else
    {
      if (v47)
      {
        v21 = 0;
        while (1)
        {
          v22 = (v48 + 40 * v21);
          if ((*v22 - 2) >= 6)
          {
            if (*v22 == 1)
            {
              sub_25229EAD4(a1, 2, "%sAltName otherName ", v11, v12, v13, v14, v15, a3);
              v24 = 5;
              v25 = &off_280C4ECE0;
              while (1)
              {
                v26 = *(v25 - 1);
                if (!der_heim_oid_cmp())
                {
                  break;
                }

                v25 += 3;
                if (!--v24)
                {
                  hx509_oid_print(v48 + 40 * v21 + 8, sub_25229EB9C, a1);
                  sub_25229EAD4(a1, 2, " unknown", v32, v33, v34, v35, v36, v43);
                  goto LABEL_20;
                }
              }

              sub_25229EAD4(a1, 2, "%s: ", v27, v28, v29, v30, v31, *(v25 - 2));
              (*v25)(a1, v48 + 40 * v21 + 24);
LABEL_20:
              sub_25229EAD4(a1, 2, "\n", v37, v38, v39, v40, v41, v44);
            }
          }

          else
          {
            v45 = 0;
            v23 = hx509_general_name_unparse(v22, &v45);
            if (v23)
            {
              v42 = v23;
              v18 = "ret = %d unparsing GeneralName\n";
              goto LABEL_5;
            }

            sub_25229EAD4(a1, 2, "%s\n", v11, v12, v13, v14, v15, v45);
            free(v45);
          }

          if (++v21 >= v47)
          {
            sub_2522A1E98(&v47);
            return 0;
          }
        }
      }

      v42 = a3;
      v18 = "%sAltName generalName empty, not allowed\n";
    }
  }

  else
  {
    v42 = a3;
    v18 = "%sAltName empty, not allowed";
  }

LABEL_5:
  v19 = 1;
  sub_25229EAD4(a1, 1, v18, v11, v12, v13, v14, v15, v42);
  return v19;
}

uint64_t hx509_request_init(uint64_t a1, void *a2)
{
  v3 = malloc_type_calloc(1uLL, 0x50uLL, 0x10B0040751154FDuLL);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

void hx509_request_free(void **a1)
{
  v2 = *a1;
  if (*v2)
  {
    hx509_name_free(v2);
    v2 = *a1;
  }

  free_SubjectPublicKeyInfo((v2 + 1));
  sub_2522A2148(*a1 + 48);
  sub_2522A1E98(*a1 + 64);
  v3 = *a1;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  free(*a1);
  *a1 = 0;
}

uint64_t hx509_request_set_name(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    hx509_name_free(a2);
  }

  if (!a3)
  {
    return 0;
  }

  result = hx509_name_copy(a1, a3, a2);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t hx509_request_get_name(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  if (v10)
  {

    return hx509_name_copy(a1, v10, a3);
  }

  else
  {
    hx509_set_error_string(a1, v10, 22, "Request have no name", a5, a6, a7, a8, v8);
    return 22;
  }
}

uint64_t hx509_request_set_SubjectPublicKeyInfo(uint64_t a1, uint64_t a2)
{
  free_SubjectPublicKeyInfo(a2 + 8);

  return copy_SubjectPublicKeyInfo();
}

uint64_t _hx509_request_to_pkcs10(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = 0;
  if (!*a2)
  {
    v13 = 22;
    hx509_set_error_string(a1, 0, 22, "PKCS10 needs to have a subject", a5, a6, a7, a8, v22);
    return v13;
  }

  v26[0] = 0;
  v26[1] = 0;
  v24 = 0;
  v25 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  *a4 = 0;
  a4[1] = 0;
  LODWORD(v28) = 0;
  v11 = *a2;
  v12 = hx509_name_to_Name_0();
  if (!v12)
  {
    v12 = copy_SubjectPublicKeyInfo();
    if (!v12)
    {
      *(&v33 + 1) = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
      if (*(&v33 + 1))
      {
        v15 = sub_2522A1868(&v27);
        v26[0] = v15;
        v16 = malloc_type_malloc(v15, 0xB649793DuLL);
        v26[1] = v16;
        if (v16)
        {
          v17 = v16;
          v18 = sub_2522A1848(v15 + v16 - 1, v15, &v27, &v23);
          if (v18)
          {
            v13 = v18;
            v19 = v17;
LABEL_12:
            free(v19);
            v26[1] = 0;
            goto LABEL_5;
          }

          if (v15 != v23)
          {
LABEL_21:
            abort();
          }

          v13 = sub_25229444C(a1, a3, off_27F4D8848, v26, &v34, &v24);
          free(v26[1]);
          if (v13)
          {
            goto LABEL_5;
          }

          *(&v35 + 1) = 8 * v24;
          v36 = v25;
          v26[0] = sub_2522A18B8(&v27);
          v20 = malloc_type_malloc(v26[0], 0xACB5AD0BuLL);
          v26[1] = v20;
          if (v20)
          {
            v21 = sub_2522A1898((v20 + v26[0]) - 1, v26[0], &v27, &v23);
            if (v21)
            {
              v13 = v21;
              v19 = v26[1];
              goto LABEL_12;
            }

            if (v26[0] == v23)
            {
              v13 = 0;
              *a4 = *v26;
              goto LABEL_5;
            }

            goto LABEL_21;
          }
        }
      }

      v13 = 12;
      goto LABEL_5;
    }
  }

  v13 = v12;
LABEL_5:
  sub_2522A18C8(&v27);
  return v13;
}

uint64_t _hx509_request_parse(uint64_t a1, char *__s1, uint64_t **a3)
{
  if (strncmp(__s1, "PKCS10:", 7uLL))
  {
    v10 = 569966;
    hx509_set_error_string(a1, 0, 569966, "unsupport type in %s", v6, v7, v8, v9, __s1);
    return v10;
  }

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v11 = __s1 + 7;
  v12 = rk_undumpdata(v11, &v22, &v24);
  if (v12)
  {
    v10 = v12;
    v21 = v11;
    v17 = "Failed to map file %s";
LABEL_7:
    hx509_set_error_string(a1, 0, v10, v17, v13, v14, v15, v16, v21);
    return v10;
  }

  v10 = sub_2522A1878(v22, v24, v26, &v23);
  j__free(v22);
  if (v10)
  {
    v21 = v11;
    v17 = "Failed to decode %s";
    goto LABEL_7;
  }

  v19 = malloc_type_calloc(1uLL, 0x50uLL, 0x10B0040751154FDuLL);
  *a3 = v19;
  if (v19)
  {
    free_SubjectPublicKeyInfo((v19 + 1));
    v20 = copy_SubjectPublicKeyInfo();
    if (v20 || (v20 = hx509_name_from_Name(&v26[1] + 8, &v25), v20))
    {
      v10 = v20;
      sub_2522A18C8(v26);
    }

    else
    {
      v10 = hx509_request_set_name(a1, *a3, v25);
      hx509_name_free(&v25);
      sub_2522A18C8(v26);
      if (!v10)
      {
        return v10;
      }
    }

    hx509_request_free(a3);
  }

  else
  {
    sub_2522A18C8(v26);
    return 12;
  }

  return v10;
}

uint64_t _hx509_request_print(uint64_t a1, uint64_t *a2, FILE *a3)
{
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v13 = 0;
  v10 = hx509_name_to_string(v4, &v13);
  if (v10)
  {
    hx509_set_error_string(a1, 0, v10, "Failed to print name", v6, v7, v8, v9, v12);
  }

  else
  {
    fprintf(a3, "name: %s\n", v13);
    free(v13);
  }

  return v10;
}

uint64_t hx509_revoke_init(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = heim_uniq_alloc(0x40uLL, "hx509-revoke", sub_25229F518, a4, a5, a6, a7, a8);
  *a2 = v9;
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  result = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  v12 = *a2;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  return result;
}

void sub_25229F518(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      free(*(*(a1 + 32) + v2));
      sub_2522A245C(*(a1 + 32) + v2 + 16);
      ++v3;
      v2 += 192;
    }

    while (v3 < *(a1 + 40));
  }

  if (*(a1 + 56))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      sub_2522A0A84(*(a1 + 48) + v4);
      ++v5;
      v4 += 184;
    }

    while (v5 < *(a1 + 56));
  }

  free(*(a1 + 48));
  v6 = *(a1 + 32);

  free(v6);
}

void hx509_revoke_free(CFTypeRef *a1)
{
  if (a1)
  {
    heim_release(*a1);
    *a1 = 0;
  }
}

uint64_t hx509_revoke_add_ocsp(uint64_t a1, uint64_t a2, char *__s1)
{
  if (!strncmp(__s1, "FILE:", 5uLL))
  {
    v11 = *(a2 + 48);
    v12 = *(a2 + 56);
    if (v12 && !strcmp(*v11, __s1 + 5))
    {
      return 0;
    }

    else
    {
      v13 = malloc_type_realloc(v11, 184 * v12 + 184, 0x10B0040DF19FAC3uLL);
      if (!v13)
      {
        goto LABEL_9;
      }

      *(a2 + 48) = v13;
      v14 = &v13[184 * *(a2 + 56)];
      *(v14 + 22) = 0;
      *(v14 + 9) = 0u;
      *(v14 + 10) = 0u;
      *(v14 + 7) = 0u;
      *(v14 + 8) = 0u;
      *(v14 + 5) = 0u;
      *(v14 + 6) = 0u;
      *(v14 + 3) = 0u;
      *(v14 + 4) = 0u;
      *(v14 + 1) = 0u;
      *(v14 + 2) = 0u;
      *v14 = 0u;
      v15 = strdup(__s1 + 5);
      v16 = (*(a2 + 48) + 184 * *(a2 + 56));
      *v16 = v15;
      if (v15)
      {
        v10 = sub_25229F75C(a1, v16);
        if (v10)
        {
          free(*(*(a2 + 48) + 184 * *(a2 + 56)));
        }

        else
        {
          ++*(a2 + 56);
        }
      }

      else
      {
LABEL_9:
        hx509_clear_error_string(a1);
        return 12;
      }
    }
  }

  else
  {
    v10 = 569966;
    hx509_set_error_string(a1, 0, 569966, "unsupport type in %s", v6, v7, v8, v9, __s1);
  }

  return v10;
}

uint64_t sub_25229F75C(uint64_t a1, uint64_t a2)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v27 = 0;
  v28 = 0;
  memset(&v26, 0, sizeof(v26));
  v25 = 0;
  v4 = rk_undumpdata(*a2, &v25, &v27);
  if (!v4)
  {
    if (stat(*a2, &v26))
    {
      return *__error();
    }

    else
    {
      v4 = sub_2522A0D40(v25, v27, &v29);
      j__free(v25);
      if (!v4)
      {
        if (v38)
        {
          v9 = hx509_certs_init(a1, "MEMORY:ocsp-certs", 0, 0, &v28);
          if (v9)
          {
            v4 = v9;
            sub_2522A1838(&v29);
            return v4;
          }

          v15 = v38;
          if (*v38)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              v24 = 0;
              if (!hx509_cert_init(a1, *(v15 + 1) + v16, &v24, v10, v11, v12, v13, v14))
              {
                hx509_certs_add(a1, v28, v24, v10, v11, v12, v13, v14);
                hx509_cert_free(v24);
              }

              ++v17;
              v15 = v38;
              v16 += 288;
            }

            while (v17 < *v38);
          }
        }

        *(a2 + 8) = v26.st_mtimespec.tv_sec;
        sub_2522A1838(a2 + 16);
        hx509_certs_free((a2 + 168));
        hx509_cert_free(*(a2 + 176));
        v4 = 0;
        v18 = v28;
        *(a2 + 160) = v38;
        *(a2 + 168) = v18;
        v19 = v36;
        *(a2 + 112) = v35;
        *(a2 + 128) = v19;
        *(a2 + 144) = v37;
        v20 = v32;
        *(a2 + 48) = v31;
        *(a2 + 64) = v20;
        v21 = v34;
        *(a2 + 80) = v33;
        *(a2 + 96) = v21;
        v22 = v30;
        *(a2 + 16) = v29;
        *(a2 + 32) = v22;
        *(a2 + 176) = 0;
        return v4;
      }

      hx509_set_error_string(a1, 0, v4, "Failed to parse OCSP response", v5, v6, v7, v8, v24);
    }
  }

  return v4;
}

uint64_t hx509_revoke_add_crl(uint64_t a1, uint64_t a2, char *__s1)
{
  if (!strncmp(__s1, "FILE:", 5uLL))
  {
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    if (v12 && !strcmp(*v11, __s1 + 5))
    {
      return 0;
    }

    else
    {
      v13 = malloc_type_realloc(v11, 192 * v12 + 192, 0x10B00404ADEA4C8uLL);
      if (!v13)
      {
        goto LABEL_9;
      }

      *(a2 + 32) = v13;
      v14 = &v13[192 * *(a2 + 40)];
      *(v14 + 10) = 0u;
      *(v14 + 11) = 0u;
      *(v14 + 8) = 0u;
      *(v14 + 9) = 0u;
      *(v14 + 6) = 0u;
      *(v14 + 7) = 0u;
      *(v14 + 4) = 0u;
      *(v14 + 5) = 0u;
      *(v14 + 2) = 0u;
      *(v14 + 3) = 0u;
      *v14 = 0u;
      *(v14 + 1) = 0u;
      v15 = strdup(__s1 + 5);
      v16 = (*(a2 + 32) + 192 * *(a2 + 40));
      *v16 = v15;
      if (v15)
      {
        v10 = sub_25229FA98(__s1 + 5, v16 + 1, (v16 + 2));
        if (v10)
        {
          free(*(*(a2 + 32) + 192 * *(a2 + 40)));
        }

        else
        {
          ++*(a2 + 40);
        }
      }

      else
      {
LABEL_9:
        hx509_clear_error_string(a1);
        return 12;
      }
    }
  }

  else
  {
    v10 = 569966;
    hx509_set_error_string(a1, 0, 569966, "unsupport type in %s", v6, v7, v8, v9, __s1);
  }

  return v10;
}

uint64_t sub_25229FA98(const char *a1, __darwin_time_t *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  memset(&v10, 0, sizeof(v10));
  v9 = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0;
  v6 = rk_undumpdata(a1, &v9, &v12);
  if (v6)
  {
    return v6;
  }

  if (stat(a1, &v10))
  {
    return *__error();
  }

  *a2 = v10.st_mtimespec.tv_sec;
  v7 = sub_2522A240C(v9, v12, a3, &v11);
  j__free(v9);
  if (!v7)
  {
    if ((*(a3 + 152) & 7) != 0)
    {
      sub_2522A245C(a3);
      return 569925;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t hx509_revoke_verify(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_25228DE4C(a5);
  v10 = sub_25228DE4C(a6);
  hx509_clear_error_string(a1);
  if (a2[7])
  {
    for (i = 0; i < a2[7]; ++i)
    {
      v16 = a2[6] + 184 * i;
      memset(&v98, 0, sizeof(v98));
      if (!stat(*v16, &v98) && *(v16 + 8) != v98.st_mtimespec.tv_sec && sub_25229F75C(a1, v16))
      {
        continue;
      }

      if (*(v16 + 176))
      {
        goto LABEL_7;
      }

      v104[0] = 0;
      memset(&v102, 0, 136);
      sub_2522908F8(&v102);
      v102.st_dev = 4;
      v102.st_mtimespec.tv_sec = sub_25228DE4C(a6) + 72;
      v26 = *(v16 + 40);
      switch(v26)
      {
        case 0:
          continue;
        case 2:
          v27 = v102.st_dev | 0x100000;
          p_st_size = &v102.st_size;
          break;
        case 1:
          v27 = v102.st_dev | 8;
          p_st_size = &v102.st_mtimespec.tv_nsec;
          break;
        default:
          goto LABEL_28;
      }

      v102.st_dev = v27;
      *p_st_size = v16 + 48;
LABEL_28:
      if (hx509_certs_find(a1, a3, &v102.st_dev, v104, v11, v12, v13, v14))
      {
        v29 = *(v16 + 168);
        if (!v29 || hx509_certs_find(a1, v29, &v102.st_dev, v104, v11, v12, v13, v14))
        {
          goto LABEL_40;
        }
      }

      if (hx509_cert_cmp(v104[0], a6))
      {
        v30 = sub_25228DE4C(a6);
        v31 = sub_25228DE4C(v104[0]);
        if (sub_25228E808(v31, v30, 0))
        {
          v32 = a1;
          v33 = 0;
          v34 = 569859;
          v35 = "Revoke OCSP signer is doesn't have CA as signer certificate";
LABEL_39:
          hx509_set_error_string(v32, v33, v34, v35, v11, v12, v13, v14, v95);
LABEL_40:
          if (v104[0])
          {
            hx509_cert_free(v104[0]);
          }

          continue;
        }

        v36 = sub_2522902E0(a1, a6, v31 + 248, v31, (v31 + 272), v12, v13, v14);
        if (v36)
        {
          v34 = v36;
          v32 = a1;
          v33 = 1;
          v35 = "OCSP signer signature invalid";
          goto LABEL_39;
        }

        if (hx509_cert_check_eku(a1, v104[0]))
        {
          goto LABEL_40;
        }
      }

      v37 = sub_2522902E0(a1, v104[0], v16 + 120, v16 + 16, (v16 + 144), v12, v13, v14);
      if (v37)
      {
        v34 = v37;
        v32 = a1;
        v33 = 1;
        v35 = "OCSP signature invalid";
        goto LABEL_39;
      }

      *(v16 + 176) = v104[0];
LABEL_7:
      if (*(v16 + 96))
      {
        v17 = 0;
        v18 = 0;
        do
        {
          *&v102.st_dev = 0;
          v102.st_ino = 0;
          v19 = *(v16 + 104) + v17;
          if (!der_heim_integer_cmp() && !hx509_verify_signature_0(a1, 0, *(v16 + 104) + (i << 7), v9 + 72, *(v16 + 104) + (i << 7) + 24))
          {
            v20 = *(v10 + 216);
            *&v102.st_dev = *(v10 + 208) >> 3;
            v102.st_ino = v20;
            if (!hx509_verify_signature_0(a1, 0, *(v16 + 104) + v17, &v102, *(v16 + 104) + v17 + 40))
            {
              v21 = *(v16 + 104);
              v22 = *(v21 + v17 + 80);
              if (v22 != 3)
              {
                if (v22 == 2 || v22 == 0)
                {
                  hx509_set_error_string(a1, 0, 569955, "Certificate revoked by issuer in OCSP", v11, v12, v13, v14, v95);
                  return 569955;
                }

                v24 = v21 + v17;
                if (*(v24 + 104) <= *(a1 + 16) + a4)
                {
                  v25 = *(v24 + 112);
                  if (!v25 || *v25 >= a4)
                  {
                    return 0;
                  }
                }
              }
            }
          }

          ++v18;
          v17 += 128;
        }

        while (v18 < *(v16 + 96));
      }
    }
  }

  if (!a2[5])
  {
LABEL_79:
    if ((*(a1 + 12) & 1) == 0)
    {
      v79 = 569956;
      v80 = "No revoke status found for certificates";
      v81 = a1;
      v82 = 1;
      goto LABEL_81;
    }

    return 0;
  }

  v38 = 0;
  while (1)
  {
    v39 = a2[4] + 192 * v38;
    memset(&v102, 0, sizeof(v102));
    v101 = 0;
    v40 = sub_25229C654(v9 + 72, v39 + 64, &v101);
    if (v40 | v101)
    {
      goto LABEL_65;
    }

    if (!stat(*v39, &v102) && *(v39 + 8) != v102.st_mtimespec.tv_sec)
    {
      v100 = 0;
      v99 = 0u;
      memset(&v98, 0, sizeof(v98));
      if (!sub_25229FA98(*v39, (v39 + 8), &v98))
      {
        sub_2522A245C(v39 + 16);
        v41 = *&v98.st_dev;
        st_atimespec = v98.st_atimespec;
        *(v39 + 32) = *&v98.st_uid;
        *(v39 + 48) = st_atimespec;
        *(v39 + 16) = v41;
        st_mtimespec = v98.st_mtimespec;
        st_ctimespec = v98.st_ctimespec;
        v45 = *&v98.st_size;
        *(v39 + 96) = v98.st_birthtimespec;
        *(v39 + 112) = v45;
        *(v39 + 64) = st_mtimespec;
        *(v39 + 80) = st_ctimespec;
        v46 = *&v98.st_blksize;
        v47 = *v98.st_qspare;
        v48 = v99;
        *(v39 + 176) = v100;
        *(v39 + 184) = 0;
        *(v39 + 144) = v47;
        *(v39 + 160) = v48;
        *(v39 + 128) = v46;
      }
    }

    if (*(v39 + 188))
    {
      goto LABEL_65;
    }

    if (*(v39 + 184))
    {
      goto LABEL_85;
    }

    v104[0] = 0;
    memset(&v98, 0, 136);
    if (sub_25228F150(v39 + 104) <= a4)
    {
      break;
    }

    v53 = a1;
    v54 = 0;
    v55 = 569952;
    v56 = "CRL used before time";
LABEL_63:
    hx509_set_error_string(v53, v54, v55, v56, v49, v50, v51, v52, v95);
LABEL_64:
    *(v39 + 188) = 1;
LABEL_65:
    if (++v38 >= a2[5])
    {
      goto LABEL_79;
    }
  }

  v57 = *(v39 + 120);
  if (!v57)
  {
    v53 = a1;
    v54 = 0;
    v55 = 569954;
    v56 = "CRL missing nextUpdate";
    goto LABEL_63;
  }

  if (sub_25228F150(v57) < a4)
  {
    v53 = a1;
    v54 = 0;
    v55 = 569953;
    v56 = "CRL used after time";
    goto LABEL_63;
  }

  sub_2522908F8(&v98);
  if (!sub_25228E68C(a1, a6, 64, 0))
  {
    v64 = hx509_cert_ref(a6);
    v104[0] = v64;
    v62 = a3;
    goto LABEL_69;
  }

  v98.st_dev = 1032;
  v98.st_mtimespec.tv_nsec = v39 + 64;
  v62 = a3;
  v63 = hx509_certs_find(a1, a3, &v98.st_dev, v104, v58, v59, v60, v61);
  if (v63)
  {
    v55 = v63;
    v53 = a1;
    v54 = 1;
    v56 = "Failed to find certificate for CRL";
    goto LABEL_63;
  }

  v64 = v104[0];
LABEL_69:
  v65 = sub_2522902E0(a1, v64, v39 + 144, v39 + 16, (v39 + 168), v50, v51, v52);
  if (v65)
  {
    v70 = v65;
    v71 = a1;
    v72 = "CRL signature invalid";
LABEL_71:
    hx509_set_error_string(v71, 1, v70, v72, v66, v67, v68, v69, v95);
    hx509_cert_free(v104[0]);
    goto LABEL_64;
  }

  if (sub_25228E68C(a1, v104[0], 32, 1))
  {
    while (1)
    {
      v103 = 0;
      sub_2522908F8(&v98);
      v98.st_dev = 1032;
      v98.st_mtimespec.tv_nsec = sub_25228DE4C(v104[0]) + 72;
      v77 = hx509_certs_find(a1, v62, &v98.st_dev, &v103, v73, v74, v75, v76);
      if (v77)
      {
        v70 = v77;
        v71 = a1;
        v72 = "Failed to find parent of CRL signer";
        goto LABEL_71;
      }

      v78 = hx509_revoke_verify(a1, a2, v62, a4, v104[0], v103);
      hx509_cert_free(v104[0]);
      v104[0] = v103;
      v71 = a1;
      if (v78)
      {
        break;
      }

      v62 = a3;
      if (!sub_25228E68C(a1, v103, 32, 1))
      {
        goto LABEL_84;
      }
    }

    v70 = v78;
    v72 = "Failed to verify revoke status of CRL signer";
    goto LABEL_71;
  }

LABEL_84:
  hx509_cert_free(v104[0]);
  *(v39 + 184) = 1;
LABEL_85:
  v84 = *(v39 + 136);
  if (v84)
  {
    v85 = *v84;
    if (v85)
    {
      v86 = (*(v84 + 1) + 16);
      while (!*v86)
      {
        v86 += 5;
        if (!--v85)
        {
          goto LABEL_90;
        }
      }

      v79 = 569957;
      v80 = "Unknown CRL extension";
      v81 = a1;
      v82 = 0;
LABEL_81:
      v83 = v79;
LABEL_82:
      hx509_set_error_string(v81, v82, v83, v80, v11, v12, v13, v14, v95);
      return v79;
    }
  }

LABEL_90:
  v87 = *(v39 + 128);
  if (!v87 || !*v87)
  {
    return 0;
  }

  v88 = 0;
  for (j = 40; ; j += 48)
  {
    v90 = *(v87 + 1) + j;
    if (!der_heim_integer_cmp() && sub_25228F150(*(*(v39 + 128) + 8) + j - 16) <= a4)
    {
      break;
    }

    ++v88;
    v87 = *(v39 + 128);
    if (v88 >= *v87)
    {
      return 0;
    }
  }

  v92 = *(*(*(v39 + 128) + 8) + j);
  v79 = 569955;
  if (!v92 || (v93 = *v92, !v93))
  {
LABEL_104:
    v80 = "Certificate revoked by issuer in CRL";
    v81 = a1;
    v82 = 0;
    v83 = 569955;
    goto LABEL_82;
  }

  v94 = (*(v92 + 1) + 16);
  while (!*v94)
  {
    v94 += 5;
    if (!--v93)
    {
      goto LABEL_104;
    }
  }

  return 569957;
}

uint64_t hx509_ocsp_request(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0u;
  v10 = off_27F4D8850;
  if (a5)
  {
    v10 = a5;
  }

  v31[0] = v34;
  v31[1] = a3;
  v31[2] = v10;
  v32 = 0;
  v11 = hx509_certs_iter_f(a1, a2, sub_2522A05D0, v31, a5, a6, a7, a8);
  hx509_cert_free(v32);
  if (v11)
  {
    goto LABEL_20;
  }

  if (!a7)
  {
    goto LABEL_15;
  }

  v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  *&v35 = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  *v12 = 1;
  v14 = malloc_type_calloc(1uLL, 0x28uLL, 0x1090040B832695BuLL);
  *(v13 + 1) = v14;
  if (!v14)
  {
    *v13 = 0;
    goto LABEL_10;
  }

  v15 = der_copy_oid();
  if (v15)
  {
    v11 = v15;
LABEL_20:
    sub_2522A17D8(v34);
    return v11;
  }

  v16 = malloc_type_malloc(0xAuLL, 0x1838AC75uLL);
  v17 = *(v13 + 1);
  *(v17 + 32) = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

  *(v17 + 24) = 10;
  if (CCRandomGenerateBytes(v16, 0xAuLL))
  {
    v11 = 569920;
    goto LABEL_20;
  }

  v18 = *(v13 + 1);
  if (der_copy_octet_string())
  {
LABEL_10:
    v11 = 12;
    goto LABEL_20;
  }

LABEL_15:
  v19 = sub_2522A17C8(v34);
  *a6 = v19;
  v20 = malloc_type_malloc(v19, 0xF339CBA1uLL);
  *(a6 + 8) = v20;
  if (!v20)
  {
    v11 = 12;
    goto LABEL_19;
  }

  v21 = sub_2522A17A8(v20 + *a6 - 1, *a6, v34, &v33);
  if (v21)
  {
    v11 = v21;
    free(*(a6 + 8));
    *(a6 + 8) = 0;
LABEL_19:
    sub_2522A17D8(v34);
    goto LABEL_20;
  }

  sub_2522A17D8(v34);
  if (v33 != *a6)
  {
    sub_25229126C("internal ASN.1 encoder error", v23, v24, v25, v26, v27, v28, v29, v30);
  }

  return 0;
}

uint64_t sub_2522A05D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v28 = 0;
  v5 = sub_25228DE4C(a3);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v6 = malloc_type_realloc(*(*a2 + 40), 88 * (*(*a2 + 32) + 1), 0x10B0040E743F4D9uLL);
  if (!v6)
  {
    return 12;
  }

  v26 = 0;
  v27 = 0;
  v7 = *a2;
  *(v7 + 40) = v6;
  v8 = v6 + 88 * *(v7 + 32);
  *(v8 + 80) = 0;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *v8 = 0u;
  sub_2522908F8(v24);
  LODWORD(v24[0]) |= 1u;
  *(&v24[0] + 1) = v5;
  v13 = hx509_certs_find(a1, a2[1], v24, &v28, v9, v10, v11, v12);
  if (!v13)
  {
    v16 = a2[3];
    if (v16)
    {
      if (hx509_cert_cmp(v16, v28))
      {
        v14 = 569959;
        hx509_set_error_string(a1, 0, 569959, "Not same parent certifate as last certificate in request", v17, v18, v19, v20, v24[0]);
        goto LABEL_4;
      }
    }

    else
    {
      a2[3] = hx509_cert_ref(v28);
    }

    v21 = sub_25228DE4C(v28);
    v22 = a2[2];
    v13 = copy_AlgorithmIdentifier();
    if (!v13)
    {
      v13 = sub_25229444C(a1, 0, v8, v5 + 72, 0, v8 + 24);
      if (!v13)
      {
        v23 = *(v21 + 216);
        v26 = *(v21 + 208) >> 3;
        v27 = v23;
        v13 = sub_25229444C(a1, 0, v8, &v26, 0, v8 + 40);
        if (!v13)
        {
          v14 = sub_2522A1AA4();
          if (!v14)
          {
            ++*(*a2 + 32);
            hx509_cert_free(v28);
            return v14;
          }

          goto LABEL_4;
        }
      }
    }
  }

  v14 = v13;
LABEL_4:
  hx509_cert_free(v28);
  sub_2522A1798(v8);
  *(v8 + 80) = 0;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *v8 = 0u;
  return v14;
}

uint64_t hx509_revoke_ocsp_print(uint64_t a1, char *__s1, FILE *a3)
{
  v4 = *MEMORY[0x277D85E08];
  v28 = 0u;
  v29 = 0u;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  v36 = 0uLL;
  v37 = 0uLL;
  v38 = 0uLL;
  v27 = strdup(__s1);
  if (v27)
  {
    v6 = sub_25229F75C(a1, &v27);
    if (v6)
    {
LABEL_25:
      sub_2522A0A84(&v27);
      return v6;
    }

    fwrite("signer: ", 8uLL, 1uLL, v5);
    switch(v30)
    {
      case 1:
        v25 = 0;
        v26 = 0;
        hx509_name_from_Name(&v30 + 8, &v26);
        hx509_name_to_string(v26, &v25);
        hx509_name_free(&v26);
        fprintf(v5, " byName: %s\n", v25);
        v14 = v25;
        break;
      case 2:
        v26 = 0;
        rk_hex_encode(v31, *(&v30 + 1), &v26);
        fprintf(v5, " byKey: %s\n", v26);
        v14 = v26;
        break;
      case 0:
        sub_25229126C("choice_OCSPResponderID unknown", v7, v8, v9, v10, v11, v12, v13, v24);
      default:
        goto LABEL_14;
    }

    free(v14);
LABEL_14:
    sub_2522A0AD0(v33);
    fprintf(v5, "producedAt: %s\n", byte_27F4D9758);
    fprintf(v5, "replies: %d\n", DWORD2(v33));
    if (DWORD2(v33))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = *(v34 + v15 + 80);
        if (v17 > 3)
        {
          v18 = 0;
        }

        else
        {
          v18 = off_279703998[v17];
        }

        fprintf(v5, "\t%zu. status: %s\n", v16, v18);
        sub_2522A0AD0(*(v34 + v15 + 104));
        fprintf(v5, "\tthisUpdate: %s\n", byte_27F4D9758);
        if (*(v34 + v15 + 112))
        {
          sub_2522A0AD0(*(v34 + v15 + 104));
          fprintf(v5, "\tproducedAt: %s\n", byte_27F4D9758);
        }

        ++v16;
        v15 += 128;
      }

      while (v16 < DWORD2(v33));
    }

    fwrite("appended certs:\n", 0x10uLL, 1uLL, v5);
    if (v38)
    {
      v6 = hx509_certs_iter_f(a1, v38, hx509_ci_print_names, v5, v19, v20, v21, v22);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_25;
  }

  return 12;
}

uint64_t sub_2522A0A84(uint64_t a1)
{
  free(*a1);
  sub_2522A1838(a1 + 16);
  hx509_certs_free((a1 + 168));
  v2 = *(a1 + 176);

  return hx509_cert_free(v2);
}

uint64_t sub_2522A0AD0(time_t a1)
{
  v2 = a1;
  if (!ctime(&v2))
  {
    return __strlcpy_chk();
  }

  result = __strlcpy_chk();
  byte_27F4D976C = 0;
  return result;
}

uint64_t hx509_ocsp_verify(uint64_t a1, time_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, time_t *a7)
{
  v13 = sub_25228DE4C(a3);
  if (!a2)
  {
    a2 = time(0);
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v35, 0, sizeof(v35));
  *a7 = 0;
  v14 = sub_2522A0D40(a5, a6, v35);
  if (v14)
  {
    v19 = v14;
    hx509_set_error_string(a1, 0, v14, "Failed to parse OCSP response", v15, v16, v17, v18, v32);
  }

  else if (v36)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      if (!der_heim_integer_cmp() && !hx509_verify_signature_0(a1, 0, *(&v36 + 1) + v20, v13 + 72, *(&v36 + 1) + v20 + 24))
      {
        v22 = *(*(&v36 + 1) + v20 + 80);
        v23 = v22 > 3 || v22 == 1;
        if (v23 && *(*(&v36 + 1) + v20 + 104) <= a2 + *(a1 + 16))
        {
          v24 = *(*(&v36 + 1) + v20 + 112);
          if (!v24)
          {
            goto LABEL_19;
          }

          v25 = *v24;
          if (v25 >= a2)
          {
            break;
          }
        }
      }

      ++v21;
      v20 += 128;
      if (v21 >= v36)
      {
        goto LABEL_20;
      }
    }

    a2 = v25;
LABEL_19:
    *a7 = a2;
    sub_2522A1838(v35);
    return 0;
  }

  else
  {
LABEL_20:
    v19 = 569960;
    sub_2522A1838(v35);
    v33 = 0;
    v34 = 0;
    if (hx509_cert_get_subject(a3, &v34) || (v26 = hx509_name_to_string(v34, &v33), hx509_name_free(&v34), v26))
    {
      hx509_clear_error_string(a1);
    }

    else
    {
      hx509_set_error_string(a1, 0, 569960, "Certificate %s not in OCSP response or not good", v27, v28, v29, v30, v33);
      free(v33);
    }
  }

  return v19;
}

uint64_t sub_2522A0D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  v5 = sub_2522A17E8(a1, a2, &v11, &v10);
  if (v5)
  {
    return v5;
  }

  if (v10 != a2)
  {
    v5 = 1859794442;
    goto LABEL_7;
  }

  if (v11 <= 6 && ((1 << v11) & 0x6E) != 0)
  {
    goto LABEL_5;
  }

  if (!v12)
  {
    sub_2522A1808(&v11);
    return 22;
  }

  if (der_heim_oid_cmp())
  {
LABEL_5:
    v5 = 569958;
LABEL_7:
    sub_2522A1808(&v11);
    return v5;
  }

  v7 = sub_2522A1818(*(v12 + 24), *(v12 + 16), a3, &v10);
  if (v7)
  {
    v5 = v7;
    goto LABEL_7;
  }

  v8 = v10;
  v9 = *(v12 + 16);
  sub_2522A1808(&v11);
  if (v8 == v9)
  {
    return 0;
  }

  v5 = 1859794442;
  sub_2522A1838(a3);
  return v5;
}

uint64_t hx509_crl_alloc(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  *a2 = v4;
  if (v4)
  {
    v9 = hx509_certs_init(a1, "MEMORY:crl", 0, 0, v4);
    v10 = *a2;
    if (v9)
    {
      free(v10);
      *a2 = 0;
    }

    else
    {
      v10[1] = 0;
    }
  }

  else
  {
    v9 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory", v5, v6, v7, v8, v12);
  }

  return v9;
}

void hx509_crl_free(uint64_t a1, const void ***a2)
{
  if (*a2)
  {
    hx509_certs_free(*a2);
    v3 = *a2;
    *v3 = 0;
    v3[1] = 0;
    free(*a2);
    *a2 = 0;
  }
}

uint64_t hx509_crl_sign(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = off_27F4D8848;
  v45 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  *v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  v9 = _hx509_cert_private_key(a2);
  if (!v9)
  {
    v17 = 569865;
    v18 = "Private key missing for CRL signing";
    v19 = a1;
    v20 = 569865;
LABEL_9:
    hx509_set_error_string(v19, 0, v20, v18, v10, v11, v12, v13, v44);
    return v17;
  }

  v14 = v9;
  v15 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *&v47 = v15;
  if (!v15)
  {
    v18 = "out of memory";
    v17 = 12;
    v19 = a1;
    v20 = 12;
    goto LABEL_9;
  }

  *v15 = 1;
  v16 = copy_AlgorithmIdentifier();
  if (!v16)
  {
    sub_25228DE4C(a2);
    v16 = hx509_name_to_Name_0();
    if (!v16)
    {
      DWORD2(v51) = 2;
      *&v52 = time(0) - 86400;
      v22 = malloc_type_malloc(0x10uLL, 0x1000040F7F8B94BuLL);
      *(&v52 + 1) = v22;
      if (!v22)
      {
        goto LABEL_21;
      }

      v27 = a3[1];
      if (!v27)
      {
        v27 = time(0) + 31536000;
        v22 = *(&v52 + 1);
      }

      *v22 = 2;
      v22[1] = v27;
      v53[0] = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
      if (!v53[0])
      {
LABEL_21:
        v38 = "out of memory";
        v17 = 12;
        v39 = a1;
        v40 = 12;
LABEL_22:
        hx509_set_error_string(v39, 0, v40, v38, v23, v24, v25, v26, v44);
        goto LABEL_6;
      }

      v53[1] = 0;
      v17 = hx509_certs_iter_f(a1, *a3, sub_2522A131C, &v46, v23, v24, v25, v26);
      if (v17)
      {
        goto LABEL_6;
      }

      if (!*v53[0])
      {
        free(v53[0]);
        v53[0] = 0;
      }

      v28 = sub_2522A23FC(&v46);
      *a4 = v28;
      v29 = malloc_type_malloc(v28, 0x6E867E55uLL);
      *(a4 + 8) = v29;
      if (!v29)
      {
        v17 = 12;
        goto LABEL_24;
      }

      v30 = sub_2522A23DC(v29 + *a4 - 1, *a4, &v46, &v45);
      if (v30)
      {
        v17 = v30;
        free(*(a4 + 8));
        *(a4 + 8) = 0;
LABEL_24:
        v38 = "failed to encode tbsCRL";
LABEL_25:
        v39 = a1;
        v40 = v17;
        goto LABEL_22;
      }

      if (v45 == *a4)
      {
        v17 = sub_252294578(a1, v14, v8, a4, &v54, &v55 + 1);
        free(*(a4 + 8));
        if (v17)
        {
          v38 = "Failed to sign CRL";
          goto LABEL_25;
        }

        v41 = sub_2522A244C(&v46);
        *a4 = v41;
        v42 = malloc_type_malloc(v41, 0x8636AF54uLL);
        *(a4 + 8) = v42;
        if (!v42)
        {
          v17 = 12;
          goto LABEL_33;
        }

        v43 = sub_2522A242C(v42 + *a4 - 1, *a4, &v46, &v45);
        if (v43)
        {
          v17 = v43;
          free(*(a4 + 8));
          *(a4 + 8) = 0;
LABEL_33:
          v38 = "failed to encode CRL";
          goto LABEL_25;
        }

        if (v45 == *a4)
        {
          sub_2522A245C(&v46);
          return 0;
        }
      }

      sub_25229126C("internal ASN.1 encoder error", v31, v32, v33, v34, v35, v36, v37, v44);
    }
  }

  v17 = v16;
  hx509_clear_error_string(a1);
LABEL_6:
  sub_2522A245C(&v46);
  return v17;
}

uint64_t sub_2522A131C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 112);
  v7 = *v6;
  v8 = malloc_type_realloc(v6[1], 48 * (v7 + 1), 0x10A00401C1B0557uLL);
  if (v8)
  {
    *(*(a2 + 112) + 8) = v8;
    serialnumber = hx509_cert_get_serialnumber(a3);
    if (serialnumber)
    {
      hx509_clear_error_string(a1);
    }

    else
    {
      *(*(*(a2 + 112) + 8) + 48 * v7 + 24) = 2;
      *(*(*(a2 + 112) + 8) + 48 * v7 + 32) = time(0) - 86400;
      v10 = *(a2 + 112);
      *(*(v10 + 8) + 48 * v7 + 40) = 0;
      ++*v10;
    }
  }

  else
  {
    hx509_clear_error_string(a1);
    return 12;
  }

  return serialnumber;
}

uint64_t sub_2522A1410(unsigned int *a1)
{
  v2 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0x15575529uLL);
  if (!v2)
  {
    return 12;
  }

  *(a1 + 1) = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t sub_2522A1BB0(unsigned int *a1)
{
  v2 = malloc_type_realloc(*(a1 + 1), 40 * *a1 + 40, 0x17ECC8FFuLL);
  if (!v2)
  {
    return 12;
  }

  *(a1 + 1) = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t sub_2522A1EA8(unsigned int *a1)
{
  v2 = malloc_type_realloc(*(a1 + 1), 40 * *a1 + 40, 0xE21AC655uLL);
  if (!v2)
  {
    return 12;
  }

  *(a1 + 1) = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t sub_2522A2228(unsigned int *a1)
{
  v2 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0x22503647uLL);
  if (!v2)
  {
    return 12;
  }

  *(a1 + 1) = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t sub_2522A25D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  specific = dispatch_get_specific(sub_2522A25D0);
  v13 = specific;
  v16 = 0;
  v17 = 0;
  if (a3)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    if (a7)
    {
      v14 = a7;
      v17 = a6;
    }

    else
    {
      v14 = a5;
      v17 = a4;
    }

    v16 = v14;
  }

  (specific[3])(specific[4], a3, &v16, 0);
  if (a7)
  {
    MEMORY[0x25309E690](*MEMORY[0x277D85F48], a6, a7);
  }

  dispatch_source_cancel(v13[1]);
  return 0;
}

uint64_t sub_2522A2698(const char *a1, uint64_t *a2)
{
  if (qword_27F4D97D8 != -1)
  {
    sub_2522A8318();
  }

  v4 = *MEMORY[0x277D85F18];
  result = bootstrap_look_up2();
  if (!result)
  {
    v6 = malloc_type_malloc(0x10uLL, 0x101004082113244uLL);
    if (v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = strdup(a1);
      *(v7 + 8) = v8;
      if (v8)
      {
        result = 0;
        *a2 = v7;
        return result;
      }

      sub_2522A277C(v7);
    }

    else
    {
      mach_port_mod_refs(*MEMORY[0x277D85F48], 0, 0, -1);
    }

    return 12;
  }

  return result;
}

uint64_t sub_2522A277C(uint64_t a1)
{
  if (*a1)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], *a1);
  }

  free(*(a1 + 8));
  free(a1);
  return 0;
}

uint64_t sub_2522A27C8()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v4 = v0;
  v35 = *MEMORY[0x277D85DE8];
  memset(v34, 0, 512);
  data = 0;
  memset(__src, 0, 512);
  size = 0;
  v29 = -1;
  memset(__n, 0, sizeof(__n));
  v5 = *v1;
  if (*v1 > 0x7FF)
  {
    if (vm_read(*MEMORY[0x277D85F48], v1[1], v5, &data, &size + 1))
    {
LABEL_4:
      v7 = 12;
      goto LABEL_21;
    }

    v20 = v3;
    LODWORD(v5) = 0;
  }

  else
  {
    v20 = v2;
    v6 = v1[1];
    __memcpy_chk();
  }

  v8 = MEMORY[0x277D85DD0];
  v9 = 1;
  while (1)
  {
    v10 = v9;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = 0;
    block[0] = v8;
    block[1] = 0x40000000;
    block[2] = sub_2522A3400;
    block[3] = &unk_279706300;
    block[4] = &v25;
    block[5] = v4;
    dispatch_sync(qword_27F4D97E8, block);
    v11 = sub_2522A3558(*(v26 + 6), v34, v5, data, HIDWORD(size), &v29, __src, &size, &__n[1], __n);
    if (v11 != -308 && v11 != 268435459)
    {
      break;
    }

    v23 = 0;
    v13 = *(v4 + 8);
    v14 = *MEMORY[0x277D85F18];
    v15 = bootstrap_look_up2();
    if (v15)
    {
      v7 = v15;
      goto LABEL_20;
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 0x40000000;
    v21[2] = sub_2522A3414;
    v21[3] = &unk_279706328;
    v21[4] = &v25;
    v21[5] = v4;
    v22 = v23;
    dispatch_sync(qword_27F4D97E8, v21);
    _Block_object_dispose(&v25, 8);
    v9 = 0;
    if ((v10 & 1) == 0)
    {
      v7 = 22;
      goto LABEL_21;
    }
  }

  v7 = v11;
  if (v11)
  {
LABEL_20:
    _Block_object_dispose(&v25, 8);
    goto LABEL_21;
  }

  _Block_object_dispose(&v25, 8);
  v7 = v29;
  if (!v29)
  {
    if (__n[0])
    {
      v18 = malloc_type_malloc(__n[0], 0x42671951uLL);
      v20[1] = v18;
      if (v18)
      {
        memcpy(v18, *&__n[1], __n[0]);
        *v20 = __n[0];
        MEMORY[0x25309E690](*MEMORY[0x277D85F48], *&__n[1]);
        v7 = 0;
        goto LABEL_21;
      }

      MEMORY[0x25309E690](*MEMORY[0x277D85F48], *&__n[1], __n[0]);
    }

    else
    {
      v19 = malloc_type_malloc(size, 0xEBF8A9EEuLL);
      v20[1] = v19;
      if (v19)
      {
        memcpy(v19, __src, size);
        v7 = 0;
        *v20 = size;
        goto LABEL_21;
      }
    }

    goto LABEL_4;
  }

  if (__n[0])
  {
    MEMORY[0x25309E690](*MEMORY[0x277D85F48], *&__n[1]);
    v7 = v29;
  }

LABEL_21:
  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2522A2BFC(uint64_t a1, vm_size_t *a2, NSObject *a3, NSObject *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  data = 0;
  dataCnt = 0;
  v8 = malloc_type_malloc(0x28uLL, 0x10A0040C3F9F442uLL);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = MEMORY[0x277D85F48];
  if (mach_port_allocate(*MEMORY[0x277D85F48], 1u, v8))
  {
    free(v9);
LABEL_4:
    v11 = 22;
    goto LABEL_20;
  }

  memset(v36, 0, 512);
  v12 = dispatch_queue_create("heim-ipc-async-client", 0);
  v9[2] = v12;
  v9[1] = dispatch_source_create(MEMORY[0x277D85D08], *v9, 0, v12);
  dispatch_queue_set_specific(v9[2], sub_2522A25D0, v9, 0);
  v13 = v9[1];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = sub_2522A3488;
  handler[3] = &unk_279706348;
  handler[4] = v9;
  dispatch_source_set_event_handler(v13, handler);
  v14 = v9[1];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 0x40000000;
  v32[2] = sub_2522A34A8;
  v32[3] = &unk_279706368;
  v32[4] = v9;
  dispatch_source_set_cancel_handler(v14, v32);
  v9[3] = a4;
  v9[4] = a3;
  dispatch_resume(v9[1]);
  v15 = *a2;
  if (*a2 <= 0x7FF)
  {
    v16 = a2[1];
    v17 = *a2;
    __memcpy_chk();
    goto LABEL_10;
  }

  if (vm_read(*v10, a2[1], *a2, &data, &dataCnt))
  {
LABEL_8:
    v11 = 12;
    goto LABEL_20;
  }

  LODWORD(v15) = 0;
LABEL_10:
  v18 = MEMORY[0x277D85DD0];
  v19 = 1;
  while (1)
  {
    v20 = v19;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v31 = 0;
    v27[0] = v18;
    v27[1] = 0x40000000;
    v27[2] = sub_2522A3514;
    v27[3] = &unk_279706390;
    v27[4] = &v28;
    v27[5] = a1;
    dispatch_sync(qword_27F4D97E8, v27);
    v21 = sub_2522A3830(*(v29 + 6), *v9, v36, v15, data, dataCnt);
    if (v21 != 268435459)
    {
      break;
    }

    v22 = *(a1 + 8);
    v23 = *MEMORY[0x277D85F18];
    v24 = bootstrap_look_up2();
    if (v24)
    {
      v11 = v24;
      goto LABEL_18;
    }

    mach_port_deallocate(*v10, *a1);
    *a1 = *(v29 + 6);
    _Block_object_dispose(&v28, 8);
    v19 = 0;
    if ((v20 & 1) == 0)
    {
      dispatch_source_cancel(v9[1]);
      goto LABEL_4;
    }
  }

  v11 = v21;
  if (!v21)
  {
    goto LABEL_19;
  }

LABEL_18:
  dispatch_source_cancel(v9[1]);
LABEL_19:
  _Block_object_dispose(&v28, 8);
LABEL_20:
  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_2522A2F94(const char *a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
  if (v4)
  {
    v5 = v4;
    v4[2] = -1;
    asprintf(v4, "/var/run/.heim_%s-%s", a1, "socket");
    *a2 = v5;
    v15 = 0u;
    memset(v16, 0, sizeof(v16));
    v13 = 0u;
    v14 = 0u;
    v11 = 0;
    v12 = 0u;
    v11.sa_family = 1;
    v6 = *v5;
    __strlcpy_chk();
    v7 = socket(1, 1, 0);
    v5[2] = v7;
    if ((v7 & 0x80000000) == 0)
    {
      sub_252287100(v7);
      rk_socket_set_nopipe(v5[2], 1);
      if (!connect(v5[2], &v11, 0x6Au))
      {
        v8 = 0;
        goto LABEL_9;
      }

      close(v5[2]);
      v5[2] = -1;
    }

    v8 = *__error();
    if (v8)
    {
      sub_2522A30E0(*a2);
    }
  }

  else
  {
    v8 = 12;
  }

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2522A30E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  free(*a1);
  free(a1);
  return 0;
}

uint64_t sub_2522A3120(uint64_t a1, uint64_t a2, size_t *a3, void *a4)
{
  __buf = bswap32(*a2);
  if (a4)
  {
    *a4 = 0;
  }

  v12 = 0;
  *a3 = 0;
  a3[1] = 0;
  if (sub_2522874D8(*(a1 + 8), &__buf, 4uLL) != 4 || sub_2522874D8(*(a1 + 8), *(a2 + 8), *a2) != *a2 || sub_252287454(*(a1 + 8), &__buf, 4uLL) != 4 || sub_252287454(*(a1 + 8), &v12, 4uLL) != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v12;
  v8 = bswap32(__buf);
  *a3 = v8;
  if (v8 > 0x20000)
  {
    *a3 = 0;
    return 22;
  }

  v10 = malloc_type_malloc(v8, 0x2CFB3369uLL);
  a3[1] = v10;
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = bswap32(v7);
  if (sub_252287454(*(a1 + 8), v10, *a3) == *a3)
  {
    return v11;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t heim_ipc_init_context(const char *a1, void *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 + 1;
  for (i = 1; ; i = 0)
  {
    v7 = i;
    v8 = &(&off_280C4E7F0)[5 * v3];
    v9 = strlen(*v8);
    if (!strncmp(*v8, a1, v9) && a1[v9] == 58)
    {
      break;
    }

    if (!strncmp("ANY:", a1, 4uLL))
    {
      v4 = 1;
      v9 = 3;
      break;
    }

LABEL_10:
    v3 = 1;
    if ((v7 & 1) == 0)
    {
      return 2;
    }
  }

  v10 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  *v10 = v8;
  v12 = (v8[1])(&v5[v9], v10 + 1);
  if (v12)
  {
    free(v11);
    if (!v4)
    {
      return v12;
    }

    v4 = 1;
    goto LABEL_10;
  }

  *a2 = v11;
  return v12;
}

void heim_ipc_free_context(void *a1)
{
  (*(*a1 + 16))(a1[1]);

  free(a1);
}

uint64_t heim_ipc_call(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return (*(*a1 + 24))(a1[1]);
}

dispatch_queue_t sub_2522A33C0()
{
  qword_27F4D97E0 = dispatch_get_global_queue(0, 0);
  result = dispatch_queue_create("heim-ipc-syncq", 0);
  qword_27F4D97E8 = result;
  return result;
}

uint64_t sub_2522A3414(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = **(a1 + 40);
  v4 = *MEMORY[0x277D85F48];
  if (v2 == v3)
  {
    result = mach_port_deallocate(v4, v2);
    **(a1 + 40) = *(a1 + 48);
  }

  else
  {
    v6 = *(a1 + 48);

    return mach_port_deallocate(v4, v6);
  }

  return result;
}

void sub_2522A34A8(uint64_t a1)
{
  mach_port_mod_refs(*MEMORY[0x277D85F48], **(a1 + 32), 1u, -1);
  dispatch_release(*(*(a1 + 32) + 16));
  dispatch_release(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);

  free(v2);
}

void heim_ipc_free_data(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  a1[1] = 0;
}

uint64_t sub_2522A3558(mach_port_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, _DWORD *a6, void *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v59 = *MEMORY[0x277D85DE8];
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
  *&v30[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v27 = 1;
  v28 = a4;
  v29 = 16777472;
  *v30 = a5;
  *&v30[4] = *MEMORY[0x277D85EF8];
  if (a3 <= 0x800)
  {
    __memcpy_chk();
    *&v30[12] = a3;
    v17 = (a3 + 3) & 0x1FFC;
    *(&reply_port + v17 + 56) = a5;
    v18 = mig_get_reply_port();
    reply_port.msgh_remote_port = a1;
    reply_port.msgh_local_port = v18;
    reply_port.msgh_bits = -2147478253;
    *&reply_port.msgh_voucher_port = 0x100000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v18;
    }

    v20 = mach_msg(&reply_port, 3, v17 + 60, 0x848u, msgh_local_port, 0, 0);
    v10 = v20;
    if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v20)
      {
        if (reply_port.msgh_id == 71)
        {
          v10 = 4294966988;
        }

        else if (reply_port.msgh_id == 101)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v10 = 4294966996;
            if (v27 == 1 && reply_port.msgh_size - 64 <= 0x800 && !reply_port.msgh_remote_port && HIBYTE(v29) == 1)
            {
              v21 = *&v30[16];
              if (*&v30[16] <= 0x800u && reply_port.msgh_size - 64 >= *&v30[16])
              {
                v22 = (*&v30[16] + 3) & 0xFFFFFFFC;
                if (reply_port.msgh_size == v22 + 64)
                {
                  v23 = &reply_port + v22 - 2048;
                  if (*v30 == *(v23 + 527))
                  {
                    *a6 = *&v30[12];
                    memcpy(a7, &v30[20], v21);
                    v10 = 0;
                    *a8 = v21;
                    *a9 = v28;
                    *a10 = *(v23 + 527);
                    goto LABEL_32;
                  }
                }
              }
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v10 = 4294966996;
            if (HIDWORD(v28))
            {
              if (reply_port.msgh_remote_port)
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = HIDWORD(v28);
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }
        }

        else
        {
          v10 = 4294966995;
        }

        mach_msg_destroy(&reply_port);
        goto LABEL_32;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }
  }

  else
  {
    v10 = 4294966989;
  }

LABEL_32:
  v24 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2522A3830(unsigned int a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
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
  v14 = 0u;
  v13 = 0u;
  DWORD1(v14) = 2;
  DWORD2(v14) = a2;
  v15 = 1376256;
  v16 = a5;
  v17 = 16777472;
  LODWORD(v18) = a6;
  *(&v18 + 4) = *MEMORY[0x277D85EF8];
  if (a4 <= 0x800)
  {
    __memcpy_chk();
    v10 = (a4 + 3) & 0x1FFC;
    *(&v12 + v10 + 68) = a6;
    v12 = -2147483629;
    *(&v13 + 4) = a1;
    HIDWORD(v18) = a4;
    HIDWORD(v13) = 0;
    LODWORD(v14) = 2;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&v12);
    }

    result = mach_msg(&v12, 1, v10 + 72, 0, 0, 0, 0);
  }

  else
  {
    result = 4294966989;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2522A39C4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v2 = -304;
  if (*(a1 + 24) != 1)
  {
    goto LABEL_3;
  }

  v4 = *(a1 + 4);
  if ((v4 - 2113) < 0xFFFFF7FF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 39) != 1)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 56);
  if (v5 > 0x800)
  {
LABEL_2:
    v2 = -304;
    goto LABEL_3;
  }

  v2 = -304;
  if (v4 - 64 < v5)
  {
    goto LABEL_3;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 != v6 + 64)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 40);
  if (v7 != *(a1 + v6 + 60))
  {
LABEL_15:
    v2 = -300;
    goto LABEL_3;
  }

  v8 = ((v4 + 3) & 0x1FFC) + a1;
  if (!*v8 && *(v8 + 4) > 0x1Fu)
  {
    v9 = *(a1 + 12);
    v10 = *(a1 + 52);
    v11 = *(a1 + 28);
    v12 = *(v8 + 36);
    v13[0] = *(v8 + 20);
    v13[1] = v12;
    *(a2 + 32) = sub_2522A25D0(v9, v13, v10, a1 + 60, v5, v11, v7);
    mig_deallocate(*(a1 + 28), *(a1 + 40));
    *(a1 + 28) = 0;
    *(a1 + 40) = 0;
    return;
  }

  v2 = -309;
LABEL_3:
  *(a2 + 32) = v2;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

uint64_t sub_2522A3AF0(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (a1[5] == 201)
  {
    sub_2522A39C4(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t sub_2522A3B60(uint64_t result, uint64_t a2)
{
  v2 = *result + *a2;
  *result = v2;
  v3 = *(result + 8) + *(a2 + 8);
  *(result + 8) = v3;
  if (v3 < 0)
  {
    v4 = 1000000;
    v5 = -1;
  }

  else
  {
    if (v3 <= 0xF423F)
    {
      return result;
    }

    v4 = -1000000;
    v5 = 1;
  }

  *result = v5 + v2;
  *(result + 8) = v4 + v3;
  return result;
}

uint64_t sub_2522A3BC0(uint64_t result, uint64_t a2)
{
  v2 = *result - *a2;
  *result = v2;
  v3 = *(result + 8) - *(a2 + 8);
  *(result + 8) = v3;
  if (v3 < 0)
  {
    v4 = 1000000;
    v5 = -1;
  }

  else
  {
    if (v3 <= 0xF423F)
    {
      return result;
    }

    v4 = -1000000;
    v5 = 1;
  }

  *result = v5 + v2;
  *(result + 8) = v4 + v3;
  return result;
}

void sub_2522A3C3C(void *a1)
{
  sub_2522A3C74(a1);

  free(a1);
}

void sub_2522A3C74(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    bzero(v2, *a1);
    free(*(a1 + 8));
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void *sub_2522A3CB4()
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800409070E284uLL);
  if (der_copy_heim_integer())
  {
    sub_2522A3C74(v0);
    free(v0);
    return 0;
  }

  return v0;
}

uint64_t sub_2522A3D1C(uint64_t a1)
{
  if (*a1)
  {
    return byte_2522AACB0[**(a1 + 8)] + 8 * *a1 - 8;
  }

  else
  {
    return 0;
  }
}

void *sub_2522A3D54(const void *a1, size_t size, void *a3)
{
  if ((size & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = size;
  v6 = a3;
  if (a3 || (v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800409070E284uLL)) != 0)
  {
    if (v6[1])
    {
      sub_2522A3C74(v6);
    }

    *(v6 + 4) = 0;
    v7 = malloc_type_malloc(v4, 0x3C1258E4uLL);
    v6[1] = v7;
    if (!v4 || v7)
    {
      *v6 = v4;
      memcpy(v7, a1, v4);
      return v6;
    }

    if (!a3)
    {
      sub_2522A3C74(v6);
      free(v6);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_2522A3E78(unint64_t *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = a2 >> 3;
  if (*a1 <= v2)
  {
    return 0;
  }

  else
  {
    return (byte_2522AADB0[a2 & 7] & *(a1[1] + *a1 + ~v2));
  }
}

BOOL sub_2522A3EBC(void *a1, unint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = -1;
    v3 = a2;
    do
    {
      ++v2;
      v4 = v3 >= 0x100;
      v3 >>= 8;
    }

    while (v4);
    v5 = v2 + 1;
    do
    {
      v9[v2] = a2;
      a2 >>= 8;
      v6 = v2-- + 1;
    }

    while (v6 > 1);
  }

  else
  {
    v5 = 0;
  }

  result = sub_2522A3D54(v9, v5, a1) != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2522A3F64(size_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) && *(a3 + 16))
  {
    return 0;
  }

  if (*a2 >= *a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if (*a2 <= *a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = *a2;
  }

  if (*a2 >= *a3)
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  result = malloc_type_malloc(v6 + 1, 0xC1FA64FuLL);
  if (result)
  {
    v8 = result;
    v9 = *v7;
    v10 = *v5;
    v11 = (result + v6);
    v12 = (v7[1] + *v7 - 1);
    if (*v5 < 1)
    {
      v14 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = v10 + v5[1] - 1;
      do
      {
        v16 = v14 + v12[v13] + *(v15 + v13);
        v11[v13] = v16;
        v14 = v16 > 0xFF;
        --v13;
      }

      while ((v10 + v13 + 1) > 1);
      v9 = *v7;
      v10 = *v5;
      v12 += v13;
      v11 += v13;
    }

    v17 = v9 - v10;
    if (v17 >= 1)
    {
      v18 = v17 + 1;
      do
      {
        v19 = *v12--;
        v20 = v14 + v19;
        *v11-- = v20;
        v14 = v20 > 0xFF;
        --v18;
      }

      while (v18 > 1);
    }

    if (v14)
    {
      *v11 = 1;
      ++v6;
    }

    else
    {
      memmove(v11, v11 + 1, v6);
    }

    sub_2522A3C74(a1);
    *a1 = v6;
    a1[1] = v8;
    result = 1;
    a1[2] = 0;
  }

  return result;
}

void *sub_2522A40C4(_DWORD *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x90uLL, 0x10E00401D4DFF02uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 26) = 1;
    if (a1)
    {
      hc_ENGINE_up_ref(a1);
      v3[17] = a1;
      default_DH = a1;
    }

    else
    {
      default_DH = hc_ENGINE_get_default_DH();
      v3[17] = default_DH;
      if (!default_DH)
      {
        DH = v3[16];
        if (!DH)
        {
          DH = off_27F4D9100[0];
          v3[16] = off_27F4D9100[0];
        }

LABEL_6:
        (DH[4])(v3);
        return v3;
      }
    }

    DH = hc_ENGINE_get_DH(default_DH);
    v3[16] = DH;
    if (!DH)
    {
      hc_ENGINE_finish(a1);
      free(v3);
      return 0;
    }

    goto LABEL_6;
  }

  return v3;
}

void sub_2522A4188(_DWORD *a1)
{
  v1 = a1[26];
  if (v1 <= 0)
  {
    abort();
  }

  v3 = v1 - 1;
  a1[26] = v3;
  if (!v3)
  {
    (*(*(a1 + 16) + 40))(a1);
    v4 = *(a1 + 17);
    if (v4)
    {
      hc_ENGINE_finish(v4);
    }

    v5 = *(a1 + 1);
    if (v5)
    {
      sub_2522A3C3C(v5);
    }

    v6 = *(a1 + 2);
    if (v6)
    {
      sub_2522A3C3C(v6);
    }

    v7 = *(a1 + 4);
    if (v7)
    {
      sub_2522A3C3C(v7);
    }

    v8 = *(a1 + 5);
    if (v8)
    {
      sub_2522A3C3C(v8);
    }

    v9 = *(a1 + 8);
    if (v9)
    {
      sub_2522A3C3C(v9);
    }

    v10 = *(a1 + 9);
    if (v10)
    {
      sub_2522A3C3C(v10);
    }

    v11 = *(a1 + 12);
    if (v11)
    {
      sub_2522A3C3C(v11);
    }

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
}

uint64_t sub_2522A4288(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  *a3 = 0;
  if (sub_2522A3E68(a2))
  {
    return 0;
  }

  v7 = sub_2522A3C20();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (!sub_2522A3EBC(v7, 1uLL))
  {
    goto LABEL_18;
  }

  if ((j__der_heim_integer_cmp() & 0x80000000) == 0)
  {
    *a3 |= 1u;
  }

  v9 = sub_2522A3C20();
  if (v9)
  {
    v10 = v9;
    sub_2522A3F64(v9, a2, v8);
    v11 = *(a1 + 8);
    if ((j__der_heim_integer_cmp() & 0x80000000) == 0)
    {
      *a3 |= 2u;
    }

    if (sub_2522A3EBC(v8, 2uLL))
    {
      v12 = *(a1 + 16);
      if (j__der_heim_integer_cmp())
      {
        goto LABEL_19;
      }

      v13 = sub_2522A3D1C(a2);
      v14 = 0;
      v15 = 0;
      do
      {
        if (sub_2522A3E78(a2, v15))
        {
          ++v14;
        }

        ++v15;
      }

      while (v15 <= v13);
      if (v14 > 1)
      {
LABEL_19:
        v6 = 1;
      }

      else
      {
        v6 = 0;
        *a3 |= 1u;
      }
    }

    else
    {
      v6 = 0;
    }

    sub_2522A3C3C(v8);
  }

  else
  {
LABEL_18:
    v6 = 0;
    v10 = v8;
  }

  sub_2522A3C3C(v10);
  return v6;
}

uint64_t sub_2522A43F0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v8 = 0;
  if (!sub_2522A4288(a3, a2, &v8) || v8)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(*(a3 + 128) + 16);

  return v6(a1, a2, a3);
}

uint64_t sub_2522A4480(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      v3(a1);
    }

    else
    {
      bzero(a1[2], *(v2 + 8));
    }
  }

  *a1 = 0;
  a1[1] = 0;
  free(a1[2]);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return 1;
}

uint64_t sub_2522A44E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    sub_2522A832C();
  }

  v6 = *a1;
  if (*a1 == a2 && a1[1] == a3)
  {
    result = a1[2];
  }

  else
  {
    sub_2522A4480(a1);
    *a1 = a2;
    a1[1] = a3;
    result = malloc_type_calloc(1uLL, *(a2 + 8), 0xDF9BD942uLL);
    a1[2] = result;
    if (!result)
    {
      return result;
    }

    v6 = *a1;
  }

  (*(v6 + 16))(result);
  return 1;
}

void *hc_EVP_md5(uint64_t a1)
{
  nullsub_4(a1);

  return sub_2522A6CC0();
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

uint64_t hc_EVP_CIPHER_CTX_set_key_length(_DWORD *a1, int a2)
{
  result = 0;
  if (a2 >= 1 && (*(*a1 + 16) & 8) != 0)
  {
    a1[26] = a2;
    return 1;
  }

  return result;
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
        sub_2522A8358();
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

uint64_t hc_EVP_CipherUpdate(int *a1, uint64_t a2, _DWORD *a3, char *__src, size_t __n)
{
  v5 = __n;
  v6 = __src;
  v8 = a2;
  *a3 = 0;
  v10 = a1[5];
  if (!v10)
  {
    v15 = *a1;
    if ((a1[33] & __n) == 0)
    {
      v18 = (*(v15 + 32))(a1, a2, __src, __n);
      if (v18 == 1)
      {
        v19 = v5;
      }

      else
      {
        v19 = 0;
      }

      *a3 = v19;
      return v18;
    }

    if (*(v15 + 4))
    {
      if (!__n)
      {
        return 1;
      }

      goto LABEL_8;
    }

LABEL_18:
    sub_2522A8384();
  }

  v11 = *(*a1 + 4);
  if (v11 == v10)
  {
    goto LABEL_18;
  }

  v12 = v11 - v10;
  v13 = a1 + 14;
  v14 = __n - (v11 - v10);
  if (__n < v11 - v10)
  {
    memcpy(v13 + v10, __src, __n);
    a1[5] += v5;
    return 1;
  }

  memcpy(v13 + v10, __src, v11 - v10);
  v18 = (*(*a1 + 32))(a1, v8, a1 + 14, v11);
  bzero(a1 + 14, v11);
  if (v18 == 1)
  {
    *a3 += v11;
    v6 += v12;
    v8 += v11;
    a1[5] = 0;
    v5 = v14;
    if (!v14)
    {
      return 1;
    }

LABEL_8:
    v16 = a1[33];
    a1[5] = v16 & v5;
    v17 = v5 & ~v16;
    v18 = (*(*a1 + 32))(a1, v8, v6, v17);
    if (v18 == 1)
    {
      *a3 += v17;
      memcpy(a1 + 14, &v6[v17], a1[5]);
    }
  }

  return v18;
}

uint64_t hc_EVP_CipherFinal_ex(int *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = a1[5];
  if (!v3)
  {
    return 1;
  }

  v6 = *(*a1 + 4);
  if (v6 <= v3)
  {
    sub_2522A83B0();
  }

  bzero(a1 + v3 + 56, (v6 - v3));
  v8 = (*(*a1 + 32))(a1, a2, a1 + 14, v6);
  bzero(a1 + 14, v6);
  if (v8 == 1)
  {
    *a3 += v6;
  }

  return v8;
}

void *hc_EVP_rc4(uint64_t a1)
{
  nullsub_4(a1);

  return sub_2522A6CD4();
}

void *hc_EVP_des_cbc(uint64_t a1)
{
  nullsub_4(a1);

  return sub_2522A6C44();
}

void *hc_EVP_des_ede3_cbc(uint64_t a1)
{
  nullsub_4(a1);

  return sub_2522A6B6C();
}

void *hc_EVP_aes_128_cbc(uint64_t a1)
{
  nullsub_4(a1);

  return sub_2522A6C74();
}

void *hc_EVP_aes_192_cbc(uint64_t a1)
{
  nullsub_4(a1);

  return sub_2522A6CA8();
}

void *hc_EVP_aes_256_cbc(uint64_t a1)
{
  nullsub_4(a1);

  return sub_2522A6CB4();
}